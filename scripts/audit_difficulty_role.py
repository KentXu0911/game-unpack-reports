#!/usr/bin/env python3
"""Offline RM38174 difficulty asset/strategy audit. Sources are read-only.

PYTHONPATH=../royal-match-unity/Tools/.assetdeps:../royal-match-unity/Tools/.deps \
  /usr/bin/python3 scripts/audit_difficulty_role.py --workspace ..
Native spans are linear metadata spans, not complete recovered CFGs.
"""
import argparse
import bisect
import collections
import csv
import hashlib
import io
import json
import re
import struct
import zipfile
from pathlib import Path

import UnityPy
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'site/assets/evidence/difficulty-role'
EXPECTED = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'


def sha(data):
    return hashlib.sha256(data).hexdigest()


def save(name, obj):
    (OUT / name).write_text(json.dumps(obj, ensure_ascii=False, indent=2) + '\n')


def pointers(tree, path='$'):
    if isinstance(tree, dict):
        if 'm_FileID' in tree and 'm_PathID' in tree:
            yield path, tree['m_FileID'], tree['m_PathID']
        for key, value in tree.items():
            yield from pointers(value, path + '.' + key)
    elif isinstance(tree, (list, tuple)):
        for index, value in enumerate(tree):
            yield from pointers(value, f'{path}[{index}]')


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--workspace', type=Path, default=ROOT.parent)
    ws = ap.parse_args().workspace.resolve()
    OUT.mkdir(parents=True, exist_ok=True)
    audit = ws / 'royal-match-apk-audit-38174'
    research = ws / 'research/rm-reunpack-2026-10-14'
    raw = research / 'raw'
    source_files = []
    ref_hits, candidates, failures, targets = [], [], [], []
    object_count = 0
    # Use the complete input manifest: fourteen Unity bundles have no extension.
    bundles = list(csv.DictReader((research / 'resources/bundle_manifest.csv').open()))
    for record in bundles:
        bundle = raw / record['file'].removeprefix('apk/')
        assert sha(bundle.read_bytes()) == record['sha256']
        source_files.append(dict(path=str(bundle.relative_to(ws)), bytes=bundle.stat().st_size,
                                 sha256=sha(bundle.read_bytes())))
        env = UnityPy.load(str(bundle))
        for asset in env.assets:
            ids = [0] if asset.name.lower() == 'resources.assets' else []
            externals = [e.path for e in asset.externals]
            ids += [i + 1 for i, p in enumerate(externals)
                    if p.replace('\\', '/').split('/')[-1].lower() == 'resources.assets']
            for obj in asset.objects.values():
                object_count += 1
                if asset.name.lower() == 'resources.assets' and obj.path_id in (13895, 15925):
                    tree = obj.read_typetree()
                    payload = tree['m_Script'].encode('utf-8', 'surrogateescape')
                    exported = (ROOT / 'site/assets/evidence/difficulty-deep' /
                                (tree['m_Name'] + '.json')).read_bytes()
                    assert payload == exported
                    targets.append(dict(bundle=str(bundle.relative_to(ws)), serialized=asset.name,
                                        pathId=obj.path_id, name=tree['m_Name'],
                                        bytes=len(payload), sha256=sha(payload)))
                if not ids:
                    continue
                data = obj.get_raw_data()
                raw_matches = [(fid, pid) for fid in ids for pid in (13895, 15925)
                               if struct.pack('<iq', fid, pid) in data]
                if not raw_matches:
                    continue
                identity = dict(bundle=str(bundle.relative_to(ws)), serialized=asset.name,
                                pathId=obj.path_id, type=obj.type.name,
                                rawCandidates=raw_matches)
                candidates.append(identity)
                try:
                    tree = obj.read_typetree()
                    for field, fid, pid in pointers(tree):
                        if fid in ids and pid in (13895, 15925):
                            ref_hits.append(dict(identity, field=field, fileId=fid, targetPathId=pid))
                    if obj.type.name == 'ResourceManager':
                        identity['resourceEntries'] = [dict(name=n, pointer=p)
                            for n, p in tree['m_Container']
                            if p['m_FileID'] in ids and p['m_PathID'] in (13895, 15925)]
                except Exception as exc:
                    failures.append(dict(identity, error=str(exc)))
    assert len(targets) == 2
    save('asset-references.json', dict(inputs=source_files, scannedObjects=object_count,
        targets=targets, rawCandidates=candidates, confirmedPointers=ref_hits,
        parseFailures=failures,
        scope='All 24 manifest-listed supplied Unity bundles, including extensionless files; '
              'local and external resources.assets '
              'PPtr <int32 fileId,int64 pathId> candidates verified by typetree. '
              'ResourceManager registration is availability, not a gameplay load. '
              'Name-based/constructed-string loads are outside PPtr analysis.'))

    dumpdir = audit / 'tools/il2cppdumper/output-arm64'
    dp, sp = dumpdir / 'dump.cs', dumpdir / 'script.json'
    dump = dp.read_text()
    methods = json.loads(sp.read_text())['ScriptMethod']
    grouped = collections.defaultdict(list)
    for m in methods:
        if m['Address'] > 0:
            grouped[m['Address']].append(m['Name'])
    starts = sorted(grouped)
    bp = research / 'native/libil2cpp.so'
    binary = bp.read_bytes()
    assert sha(binary) == EXPECTED
    metadata = (research / 'native/global-metadata.dat').read_bytes()
    literals = json.loads((dumpdir / 'stringliteral.json').read_text())
    tokens = ['DynamicDifficultyEasy', 'DynamicDifficultyHard', 'difficultyData',
              'minTryCountEasy', 'maxTryCountEasy', 'minTryCountHard', 'maxTryCountHard']
    searches = {}
    for token in tokens:
        searches[token] = dict(dumpCaseInsensitive=dump.lower().count(token.lower()),
            literalSubstring=[l for l in literals if token.lower() in l['value'].lower()],
            metadataUtf8=metadata.lower().count(token.lower().encode()),
            metadataUtf16LE=metadata.lower().count(token.lower().encode('utf-16le')),
            nativeUtf8=binary.lower().count(token.lower().encode()),
            nativeUtf16LE=binary.lower().count(token.lower().encode('utf-16le')))
    save('consumer-names.json', dict(dumpSha256=sha(dp.read_bytes()),
        metadataSha256=sha(metadata), nativeSha256=EXPECTED, tokens=searches,
        dynamicLiterals=[l for l in literals if 'dynadiff' in l['value'].lower()
                         or 'dynamicdifficulty' in l['value'].lower()],
        strategyDeclarations=re.findall(r'^public class .*ILevelDifficultyStrategy.*$', dump, re.M),
        scope='Negative string results do not exclude constructed names or indirect code.'))
    excerpts = {}
    for name in ['LevelEpisodeHelper.LevelDifficulty', 'LevelEpisodeHelper',
                 'ILevelDifficultyStrategy', 'SemiDynamicDifficulty', 'SyncRequiredKeyValueCounts']:
        match = re.search(r'^(?:public|private) (?:class|enum|interface|struct) ' +
                          re.escape(name) + r'(?=[ :])', dump, re.M)
        assert match, name
        end = dump.find('\n// Namespace:', match.start())
        excerpts[name] = dump[match.start():end]
    save('metadata-excerpts.json', excerpts)

    elf = ELFFile(io.BytesIO(binary))
    segments = [s for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']

    def read(va, count):
        s = next(s for s in segments if s['p_vaddr'] <= va and
                 va + count <= s['p_vaddr'] + s['p_filesz'])
        offset = s['p_offset'] + va - s['p_vaddr']
        return binary[offset:offset + count]

    def owner(va):
        return grouped[starts[bisect.bisect_right(starts, va) - 1]][0]

    strategy = {m['Address'] for m in methods if m['Address'] and any(t in m['Name'] for t in
                ('LevelEpisodeHelper$$', 'SemiDynamicDifficulty$$'))}
    state = {m['Address'] for m in methods if m['Address'] and
             ('.UserInventory$$' in m['Name'] and 0x2a0e5d8 <= m['Address'] <= 0x2a0e940)}
    support = {m['Address'] for m in methods if m['Address'] and any(t in m['Name'] for t in
        ('Resources$$Load', 'TextAsset$$get_text', 'TextAsset$$get_bytes',
         'SyncManager$$GetUpdatedKeyValues',
         'KeyValueTable$$GetSyncRequiredKeyValueCounts', 'SyncRequiredKeyValueCounts$$get_DynaDiff',
         'SyncRequiredKeyValueCounts$$set_DynaDiff', 'UserKeyValue$$GetSyncRequiredKeyValueCounts'))}
    randoms = {m['Address'] for m in methods if m['Address'] and
               'LevelRandomManager$$' in m['Name']}
    targets_native = strategy | state | support | randoms
    calls = []
    for s in segments:
        if not s['p_flags'] & 1:
            continue
        data = read(s['p_vaddr'], s['p_filesz'])
        for i, (word,) in enumerate(struct.iter_unpack('<I', data[:len(data)//4*4])):
            if word & 0x7c000000 != 0x14000000:
                continue
            imm = word & 0x3ffffff
            if imm & 0x2000000:
                imm -= 0x4000000
            site = s['p_vaddr'] + i*4
            target = site + imm*4
            if target in targets_native:
                calls.append(dict(site=hex(site), target=hex(target),
                    caller=owner(site), callee=grouped[target]))
    save('direct-calls.json', dict(calls=calls,
        scope='All executable PT_LOAD ARM64 immediate B/BL sites. '
              'No exhaustive interface/delegate/reflection xrefs claimed.'))
    # Capture text readers as a reviewable bounded loader lane, not all art loads.
    text_callers = {starts[bisect.bisect_right(starts, int(c['site'], 16)) - 1]
                    for c in calls if any('TextAsset$$get_text' in n for n in c['callee'])}
    captures = strategy | state | randoms | text_callers | {0x2685a18, 0x2e64b8c, 0x2e702c0,
                                                          0x2e5e27c, 0x2a0f7b8}
    decoder = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    decoder.skipdata = True
    entries = []
    with zipfile.ZipFile(OUT / 'native.zip', 'w', zipfile.ZIP_DEFLATED) as archive:
        for start in sorted(captures):
            end = starts[bisect.bisect_right(starts, start)]
            data = read(start, end-start)
            lines = ['# ' + ' | '.join(grouped[start]),
                     '# Linear metadata span, not a recovered full CFG.']
            for ins in decoder.disasm(data, start):
                extra = ''
                if ins.mnemonic in ('b', 'bl') and ins.op_str.startswith('#0x'):
                    extra = ' ; ' + ' | '.join(grouped.get(int(ins.op_str[1:], 16), []))
                lines.append(f'{ins.address:08x}: {ins.bytes.hex()} {ins.mnemonic:8s} {ins.op_str}{extra}')
            for suffix, body in [('s', ('\n'.join(lines)+'\n').encode()), ('bin', data)]:
                zi = zipfile.ZipInfo(f'{start:08x}.{suffix}', (2026, 10, 19, 0, 0, 0))
                zi.compress_type = zipfile.ZIP_DEFLATED
                archive.writestr(zi, body)
            entries.append(dict(address=hex(start), names=grouped[start], bytes=len(data), sha256=sha(data)))
    save('native-manifest.json', dict(nativeSha256=EXPECTED, methods=entries,
        archiveSha256=sha((OUT / 'native.zip').read_bytes()),
        boundary='Capture count is not semantic recovery count.'))

    # Public excerpts omit timestamps, addresses and all unrelated account/network data.
    runtime, runs = [], []
    for filename in ['runtime_L101_dynamic_validation_retry.jsonl',
                     'runtime_L101_dynamic_validation_final.jsonl']:
        path = audit / 'outputs' / filename
        rows = [json.loads(l) for l in path.read_text().splitlines() if l.strip()]
        assert not any(r['kind'] in ('error', 'fatal') for r in rows)
        allowed = ['SemiDynamicDifficulty.GetUpdatedMoveCount', 'UserActiveLevelData.Start',
                   'UserActiveLevelData.Restart',
                   'LevelRandomManager.SetDifficultySeed', 'UserInventory.UpdateLevelTryCount',
                   'LevelRandomManager.GetSeed', 'LevelRandomManager.StartGame']
        selected = [dict(line=i+1, **{k: v for k, v in row.items()
                    if k in ['kind', 'method', 'args', 'ret', 'state', 'originalMoves',
                             'forcedMoves', 'level', 'seed', 'levelTryCount', 'key',
                             'levelNumber', 'moves']})
                    for i, row in enumerate(rows) if row.get('method') in allowed
                    or row.get('key') == 'LevelTryCount']
        dynamic = [row for row in rows if any(t in row.get('method', '') for t in
            ['TryCount2', 'DeltaMove', 'DynamicDifficultyInventory', 'DynaDiff'])
            or row.get('key') == 'DynaDiff']
        runtime.append(dict(source=str(path.relative_to(ws)), sha256=sha(path.read_bytes()),
                            lines=len(rows), dynamicMethodEvents=len(dynamic), excerpts=selected))
        attempt, entry, original = None, None, None
        move_calls = [r for r in rows if r.get('method') == 'SemiDynamicDifficulty.GetUpdatedMoveCount']
        assert all(r.get('args') == [25] if r['kind'] == 'enter' else r.get('ret') == 25
                   for r in move_calls)
        for row in rows:
            if row.get('method') in ('UserActiveLevelData.Start', 'UserActiveLevelData.Restart') and row['kind'] == 'enter':
                entry = row['method'].split('.')[-1]
                original = row.get('originalMoves')
            if row.get('key') == 'LevelTryCount' and row['kind'] == 'leave':
                attempt = row['ret']
            if row.get('method') == 'LevelRandomManager.SetDifficultySeed' and row['kind'] == 'enter':
                seed = row['args'][0]
                if 0 <= seed < 1000:
                    runs.append(dict(level=101, entry=entry, levelTryCount=attempt,
                                     seed=seed, originalMoves=original))
    assert [(r['levelTryCount'], r['seed']) for r in runs] == [(18, 895), (19, 429), (20, 174)]
    assert [r['originalMoves'] for r in runs] == [25, None, 25]
    probe = audit / 'tools/frida/rm_difficulty_ego_validation_hook.js'
    save('runtime-l101.json', dict(samples=runtime, runs=runs,
        probe=dict(source=str(probe.relative_to(ws)), sha256=sha(probe.read_bytes())),
        scope='Prior instrumented ordinary L101 observation, not a new live test. '
              'Probe records original moves before forcing 1; three starts, one formal fail, '
              'not a threshold-crossing test; other accounts/builds not excluded.'))
    # Byte assertions used by the concise role finding; no inferred missing policy.
    for va in [0x1c85250, 0x1c85254, 0x1c85324, 0x1c85458, 0x1c854c0, 0x1c854c4]:
        assert read(va, 4).hex() == 'c0035fd6'
    for va in [0x1c854b0, 0x1c854b8]:
        ins = list(decoder.disasm(read(va, 8), va))
        assert [(i.mnemonic, i.op_str) for i in ins] == [('mov', 'w0, wzr'), ('ret', '')]
    assert any(c['site'] == '0x2059a60' and c['target'] == '0x1c854c8' for c in calls)
    # Resolve the relocation slot used by the inlined sync branch to its literal.
    key_address = struct.unpack('<Q', read(0x51bd900, 8))[0]
    strings = json.loads(sp.read_text())['ScriptString']
    assert any(s['Address'] == key_address and s['Value'] == 'DynaDiff' for s in strings)
    save('role-checks.json', dict(assetBundles=len(source_files), objects=object_count,
        confirmedAssetPointers=len(ref_hits), pointerParseFailures=len(failures),
        emptyMethodAddresses=[hex(v) for v in [0x1c85250, 0x1c85254, 0x1c85324,
                                               0x1c85458, 0x1c854c0, 0x1c854c4]],
        constantZeroAddresses=['0x1c854b0', '0x1c854b8'],
        strategyConstructorCall=dict(site='0x2059a60', target='0x1c854c8'),
        syncDynaDiff=dict(method='0x2685a18', countOffset='0x4',
                         inventoryOffset='0xb0', keyRelocation='0x51bd900',
                         literalAddress=hex(key_address), literal='DynaDiff'),
        thresholdTokenHits=sum(v['dumpCaseInsensitive'] + v['metadataUtf8'] +
                               v['metadataUtf16LE'] + v['nativeUtf8'] + v['nativeUtf16LE']
                               for v in searches.values()),
        textReadSites=sum(any('TextAsset$$get_text' in n for n in c['callee']) for c in calls),
        textReadBoundary='Direct calls inventoried and captured; no complete whole-program '
                         'indirect/name-construction exclusion claimed.'))
    print(json.dumps(dict(bundles=len(source_files), objects=object_count,
                          pointerHits=len(ref_hits), parseFailures=len(failures),
                          capturedMethods=len(entries), directCalls=len(calls))))


if __name__ == '__main__':
    main()
