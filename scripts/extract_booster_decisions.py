#!/usr/bin/env python3
"""Read-only RM38174 extraction for lightball colour and propeller decisions.

Requires capstone and pyelftools. Source game/audit folders are never written.
Spans use the next distinct metadata address, not a recovered function CFG.
"""
import argparse
import bisect
import hashlib
import io
import json
import re
import struct
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
EXPECTED = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--workspace', type=Path, default=ROOT.parent)
    args = parser.parse_args()
    ws = args.workspace.resolve()
    bp = ws / 'research/rm-reunpack-2026-10-14/native/libil2cpp.so'
    data = bp.read_bytes()
    digest = lambda b: hashlib.sha256(b).hexdigest()
    assert digest(data) == EXPECTED
    meta = ws / 'royal-match-apk-audit-38174/tools/il2cppdumper/output-arm64/script.json'
    dump_path = meta.with_name('dump.cs')
    dump = dump_path.read_text()
    methods = {}
    for method in json.loads(meta.read_text())['ScriptMethod']:
        if method['Address'] > 0:
            methods.setdefault(method['Address'], []).append(method['Name'])
    starts = sorted(methods)
    loads = [s for s in ELFFile(io.BytesIO(data)).iter_segments() if s['p_type'] == 'PT_LOAD']
    decoder = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    decoder.skipdata = True
    out = ROOT / 'site/assets/evidence/booster-decisions'
    out.mkdir(parents=True, exist_ok=True)
    selected = {
        va for va, names in methods.items() if any(
            ('.LightballItem.Strategy.' in name and any(name.endswith('$$' + suffix) for suffix in [
                'Start', 'FindMostCommonItem', 'FindItemsByType', 'IsReadyForLightball',
                'CanSendRayToItem', 'SelectMatchTypeAndStart', 'GetMatchTypeCount',
                'AddMatchItemToList', 'SingleRayReached', 'ExplodeTouching',
            ])) or ('.PropellerItem.Strategy.' in name and any(name.endswith('$$' + suffix) for suffix in [
                'Start', 'OnTargetReached', 'OnExplode',
            ])) for name in names)
    }
    # Cell score routing, selected obstacle overrides, area dimensions and combo creation.
    selected.update([0x2acf360, 0x3391c90, 0x2dd0558, 0x338c910, 0x3384920, 0x338493c,
                     0x338a898, 0x3397724, 0x33a3af8, 0x33a2e20, 0x33a4760,
                     0x20f12f8, 0x20f16fc, 0x20f1c58, 0x30ed8e4, 0x338bb58])
    selected.update(va for va, names in methods.items() if any(
        name.endswith('$$GetExplodeScore') and any(k in name for k in [
            '.StaticItems.', '.OysterItem.', '.ColorBoxItem.', '.MatchItem.', '.BoxingGloveItem.'
        ]) for name in names))
    entries = []
    for start in sorted(selected):
        end = starts[bisect.bisect_right(starts, start)]
        seg = next(s for s in loads if s['p_vaddr'] <= start and end <= s['p_vaddr'] + s['p_filesz'])
        offset = seg['p_offset'] + start - seg['p_vaddr']
        raw = data[offset:offset + end - start]
        lines = ['# ' + ' | '.join(methods[start]), '# Linear span; next metadata entry is not a proven CFG boundary.']
        for ins in decoder.disasm(raw, start):
            extra = ''
            if ins.mnemonic in ('b', 'bl') and ins.op_str.startswith('#0x'):
                names = methods.get(int(ins.op_str[1:], 16), [])
                if names:
                    extra = ' ; ' + ' | '.join(names)
            lines.append(f'{ins.address:08x}: {ins.bytes.hex()} {ins.mnemonic:8s} {ins.op_str}{extra}')
        (out / f'{start:08x}.bin').write_bytes(raw)
        (out / f'{start:08x}.s').write_text('\n'.join(lines) + '\n')
        entries.append(dict(address=hex(start), end=hex(end), names=methods[start], bytes=len(raw), sha256=digest(raw)))
    classes = {}
    for name in ['LightballStrategy', 'DefaultLightballStrategy', 'LightballSpecialStrategy',
                 'LightballPropellerStrategy', 'LightballRocketStrategy', 'LightballTntStrategy',
                 'PropellerPropellerComboStrategy', 'GuidedExploderType', 'MatchType',
                 'ItemModel', 'StaticItemModel', 'SpecialItemCreator', 'ExplodeTargetFinder']:
        match = re.search(r'^public (?:abstract |static |sealed )?(?:class|enum) ' + name + r'(?=[ :])', dump, re.M)
        if match:
            classes[name] = dump[match.start():dump.find('\n// Namespace:', match.start())]
    def write(name, value):
        (out / name).write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n')
    table_va = 0x3f097ec
    seg = next(s for s in loads if s['p_vaddr'] <= table_va < s['p_vaddr'] + s['p_filesz'])
    offset = seg['p_offset'] + table_va - seg['p_vaddr']
    raw = data[offset:offset + 18 * 4]
    block = dump[dump.index('public enum StaticItemType //'):]
    block = block[:block.index('\n// Namespace:')]
    enum = {int(value): name for name, value in re.findall(r'const StaticItemType (\w+) = (\d+)', block)}
    write('static-scores.json', dict(address=hex(table_va), sha256=digest(raw),
          index='StaticItemType - 1; separate enum from ItemType; base scores only',
          rows=[dict(staticItemType=i, name=enum.get(i, '<unnamed>'), baseScore=score)
                for i, score in enumerate(struct.unpack('<18i', raw), 1)]))
    write('manifest.json', dict(sampleSha256=EXPECTED, methodIndexSha256=digest(meta.read_bytes()),
          dumpSha256=digest(dump_path.read_bytes()), methods=entries,
          boundary='Static original-byte spans, not full semantic recovery or original-client gameplay verification.'))
    write('metadata-excerpts.json', classes)
    print(json.dumps(dict(methods=len(entries), destination=str(out))))


if __name__ == '__main__':
    main()
