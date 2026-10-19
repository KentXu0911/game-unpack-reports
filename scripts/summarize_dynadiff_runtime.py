#!/usr/bin/env python3
"""Normalize a private Frida run into public, bounded DynaDiff evidence.

The log is never copied. Account files, absolute pointers and device identifiers
are excluded. This verifies recorded observations; it does not rerun Android.
"""
import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def decode(value):
    raw = (value >> 13) & 31
    return dict(tryCount2=(value >> 1) & 4095, deltaMove=0 if raw == 0 else raw-10,
                section=(value >> 18) & 131071, level=(value >> 35) & 32767)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--log', type=Path, required=True)
    p.add_argument('--crash', type=Path, required=True)
    a = p.parse_args()
    records = [json.loads(line) for line in a.log.read_text().splitlines()]
    events = [r['payload'] for r in records if r.get('type') == 'send']
    def completed(kind, end):
        ends = [i for i, r in enumerate(events) if r.get('kind') == end]
        assert ends, end
        stop = ends[-1]
        rows = [r for r in events[:stop] if r.get('kind') == kind][-5:]
        assert len(rows) == 5 and rows[0]['dyna'] == rows[-1]['dyna'] == 81920
        return rows
    fill = completed('fill-differential', 'controlled-fill-end')
    seeds = completed('seed-differential', 'controlled-seed-end')
    generation = completed('generation-differential', 'controlled-generation-end')
    moves = completed('moves-differential', 'controlled-moves-end')
    planes = completed('plane-differential', 'controlled-plane-end')
    assert all([r['dyna'] for r in rows] == [r['dyna'] for r in fill] for rows in [seeds, generation, moves, planes])
    constructor = [r for r in events if r.get('kind') == 'explode-constructed'][-1]
    assert constructor['trigger'] == 8 and constructor['point'] == [4, 2]
    assert planes[0]['t'] > constructor['t']
    assert len(fill[0]['sequence']) == len(planes[0]['pointsPacked']) == 32
    assert all(r['result'] == 25 for r in moves)
    assert all(r['sequence'] == fill[0]['sequence'] for r in fill)
    assert all(r['pointsPacked'] == planes[0]['pointsPacked'] for r in planes)
    assert all(r['seed'] == seeds[0]['seed'] for r in seeds)
    assert all(r['permutation'] == generation[0]['permutation'] for r in generation)
    assert all(sorted(r['permutation']) == list(range(1000)) for r in generation)
    assert all(r['selected'] == seeds[0]['seed'] for r in generation)
    controlled = [r for r in events if r.get('kind') == 'dyna-read' and r['phase'].startswith('controlled-')]
    assert not controlled, controlled
    hits = [{k: r[k] for k in ['kind', 'phase', 'pc', 'type']}
            for r in events if r.get('kind') == 'dyna-read']
    assert any(r['phase'] == 'positive-control' and r['pc'] == '0x2a097f4' for r in hits)
    assert any(r['phase'] == 'positive-control-after' and r['pc'] == '0x2a097f4' for r in hits)
    permutation = generation[0]['permutation']
    points = [[int(x) & 0xffffffff, int(x) >> 32] if x is not None else None
              for x in planes[0]['pointsPacked']]
    public = dict(
        schemaVersion=1, build=38174,
        sampleSha256='8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd',
        metadataSha256='5440692c2b9f99c6fd1ec2375f73bdd6c5e8638c2029ec4170499da77f9c0639',
        privateInputsSha256=dict(log=sha(a.log), crash=sha(a.crash)),
        environment=dict(device='independent Android emulator', arch='arm64', network='IPv4 and IPv6 egress rejected; loopback retained',
                         frida='16.5.9', level=101, serverResponseObserved=False,
                         accountSource='copied local state; not a live server receipt',
                         localInitialLong=81920, originalDeviceModified=False),
        method='Original functions on initialized live objects, queued on UnityMain; constructed long values and ExplodeData. No gameplay function replacement.',
        randomControl='Before each case restore both System.Random streams: _inext, _inextp and 56 seed-array entries. Seed tests preserve/restore seed-list values, size/version and manager fields; generation sets isGenerated=false before the original ResetDifficultySeed. No final seed is forced.',
        cases=[dict(long=r['dyna'], decoded=decode(r['dyna']), outputMoves=moves[i]['result'],
                    selectedSeed=seeds[i]['seed'], generatedSelectedSeed=generation[i]['selected'],
                    permutationSha256=hashlib.sha256(json.dumps(generation[i]['permutation'], separators=(',', ':')).encode()).hexdigest(),
                    fillSequence=fill[i]['sequence'], planePoints=points)
               for i, r in enumerate(fill)],
        seedPermutation=dict(length=len(permutation), first16=permutation[:16],
                             sha256=hashlib.sha256(json.dumps(permutation, separators=(',', ':')).encode()).hexdigest(),
                             allCasesExactlyEqual=True, coversIntegers0Through999=True),
        watchpoint=dict(address='UserInventory.DynamicDifficultyInventory +0xB0, eight bytes',
                        mode='read', threads='one UnityMain thread; not all process threads',
                        behavior='one-shot: unset on trap; explicitly rearmed at each controlled case',
                        positiveControl='original getter before and after controlled checks',
                        controlledReadHits=len(controlled), observedHits=hits,
                        gap='An unclassified internal read at RVA 0x102F22C disabled the watchpoint before initial Start. Initial-start coverage is therefore incomplete.'),
        naturalGameplay=dict(originalInitialMoves=25, successfulSwaps=2, remainingMoves=23,
                             refillCalls=9, weightedSelectionCalls=9,
                             phase='L101-play', readsObserved=0,
                             note='Nine natural refills were observed before controlled calls. No natural plane flight was tested.'),
        planeScope=dict(entry='ExplodeTargetFinder.FindSingleTargetForCellExploder 0x20F22E8',
                        trigger='Propeller (8)', constructedOrigin=[4, 2], samplesPerCase=32,
                        limitations='Repeated selection on the same live L101 board, without registering incoming hits, flying or applying damage. Not an actual multi-plane sequence, obstacle catalogue, combo test or whole-game test.'),
        excludedAttempts=[
            'First watchpoint control used NativeFunction default exception stealing; corrected to exceptions=propagate before the accepted control.',
            'First fill comparison ended with a string-to-Int64 cleanup error; only the subsequent completed five-case run is accepted.',
            'First plane comparison preceded successful ExplodeData construction; excluded. Accepted run follows constructor trigger=8 confirmation.',
            'After completed checks, UI Try Again caused an access violation and process exit. No successful retry or full-game equivalence is claimed; cause not established.'
        ],
        conclusion='No output difference or difficulty-long read in the completed controlled entries for these inputs. This does not exclude other branches, precomputed consumers, threads, configurations, accounts or versions.',
        wholeGameTestPassed=False, retryTestPassed=False)
    out = ROOT/'site/assets/evidence/dynadiff-runtime/verification.json'
    out.write_text(json.dumps(public, ensure_ascii=False, indent=2)+'\n')
    print(f'Accepted five-case checks: moves, seed selection, seed generation, refill, single-cell target; output: {out}')


if __name__ == '__main__':
    main()
