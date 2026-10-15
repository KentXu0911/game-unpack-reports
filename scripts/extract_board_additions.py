#!/usr/bin/env python3
"""Read-only extraction of the 2026-10-15 board-state-machine evidence additions.

Adds method snapshots, float literals and a direct-call scan to
site/assets/evidence/board-algorithms/. Needs capstone + pyelftools.

  <venv>/bin/python scripts/extract_board_additions.py \
      --binary ../research/rm-reunpack-2026-10-14/native/libil2cpp.so \
      --symbols ../research/rm-reunpack-2026-10-14/native/dump/script.json \
      --dump ../research/rm-reunpack-2026-10-14/native/dump/dump.cs

The call scan only decodes direct BL/B immediates in executable PT_LOAD
segments. Virtual, interface, delegate and register-indirect calls are not covered.
"""
import argparse, bisect, hashlib, json, struct
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'site/assets/evidence/board-algorithms'
EXPECTED_SHA = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'

NEW_METHODS = [0x13784F0, 0x1378554, 0x1378710, 0x2A385FC, 0x2A3A810, 0x2A3BD78,
               0x20EDDE8, 0x1E9759C,
               # hit de-dup, mushroom spread, grass delays, propeller combo waits
               0x338CC74, 0x15571E0, 0x1556D60, 0x2A6522C, 0x26B0D30, 0x26B13B0]
CALL_TARGETS = {
    0x20EDA34: 'SpecialItemCreator.SelectSmartRocket',
    0x13784F0: 'MatchGroup.GetSpecialItemCell',
    0x1378554: 'MatchGroup.SelectItemCreationCell',
    0x2758EC4: 'CellGridManager.ChangeBoard',
    0x2758F3C: 'CellGridManager.ChangeBoard (overload)',
    0x2758F7C: 'CellGridManager.ChangeBoard (overload)',
    0x2756448: 'BoardManager.ChangeBoard',
    0x26B3FE0: 'GridPositioner.AnimateToNextBoard',
    0x2755B48: 'BoardManager.StartChangingBoard',
    0x2A2C350: 'FallManager.ShouldFindCross',
}
LITERALS = {
    '0x3E73808': 'SwapAction.PlayValidSwapAnimation swap move duration (read at 0x2A3AEF8 and 0x2A3B0AC)',
    '0x3EF26A8': 'MatchItemView..cctor 0x1E975D4 copies these two float32 into its statics; SpecialItemCreator..cctor 0x20EDE50 multiplies them once into CreationDelay',
}

p = argparse.ArgumentParser()
p.add_argument('--binary', required=True)
p.add_argument('--symbols', required=True)
p.add_argument('--dump', help='Il2CppDumper dump.cs for enum excerpts')
a = p.parse_args()
data = Path(a.binary).read_bytes()
assert hashlib.sha256(data).hexdigest() == EXPECTED_SHA, 'unexpected binary'
methods = json.loads(Path(a.symbols).read_text())['ScriptMethod']
groups = {}
for m in methods:
    groups.setdefault(m['Address'], []).append(m['Name'])
starts = sorted(groups)

with open(a.binary, 'rb') as f:
    loads = [(s['p_vaddr'], s['p_offset'], s['p_filesz'], s['p_flags'])
             for s in ELFFile(f).iter_segments() if s['p_type'] == 'PT_LOAD']

def read(va, size):
    for v, o, s, _ in loads:
        if v <= va and va + size <= v + s:
            return data[o + va - v:o + va - v + size]
    raise ValueError(hex(va))

def owner(va):
    i = bisect.bisect_right(starts, va) - 1
    return groups[starts[i]][0] if i >= 0 else '?'

md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
manifest_path = OUT / 'manifest.json'
manifest = json.loads(manifest_path.read_text())
known = {int(m['address'], 16) for m in manifest['methods']}
added = []
for start in NEW_METHODS:
    end = starts[bisect.bisect_right(starts, start)]
    raw = read(start, end - start)
    lines = [f'# {groups[start][0]}', f'# Next metadata method {end:#x}, not a proven function boundary.']
    for ins in md.disasm(raw, start):
        text = f'{ins.address:08x}: {ins.bytes.hex()} {ins.mnemonic:<8} {ins.op_str}'.rstrip()
        if ins.mnemonic in ('bl', 'b') and ins.op_str.startswith('#'):
            target = int(ins.op_str[1:], 16)
            if target in groups and not (start <= target < end):
                text += f' ; {groups[target][0]}'
        lines.append(text)
    listing = '\n'.join(lines) + '\n'
    name = f'{start:08x}.s'
    (OUT / name).write_text(listing)
    entry = {'address': f'{start:#x}', 'names': groups[start], 'end': f'{end:#x}',
             'sha256': hashlib.sha256(raw).hexdigest(), 'file': name,
             'listingSha256': hashlib.sha256(listing.encode()).hexdigest()}
    if start in known:
        manifest['methods'] = [entry if int(m['address'], 16) == start else m for m in manifest['methods']]
    else:
        manifest['methods'].append(entry)
    added.append(entry['address'])
manifest['methods'].sort(key=lambda m: int(m['address'], 16))
manifest['additions20261015'] = {
    'methods': added,
    'note': 'Special creation cell selection, swap animation and end-of-swap re-search, creation delay static constructors.',
    'callSites': 'call-sites.json', 'literals': 'literals.json'}
manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n')

calls = {name: [] for name in CALL_TARGETS.values()}
for v, o, s, flags in loads:
    if not flags & 1:
        continue
    seg = data[o:o + s - (s % 4)]
    for i in range(0, len(seg), 4):
        w = struct.unpack_from('<I', seg, i)[0]
        top = w & 0xFC000000
        if top not in (0x94000000, 0x14000000):
            continue
        imm = w & 0x03FFFFFF
        if imm & 0x2000000:
            imm -= 0x4000000
        pc = v + i
        target = pc + imm * 4
        if target not in CALL_TARGETS:
            continue
        caller = owner(pc)
        if top == 0x14000000 and caller in groups.get(target, []):
            continue
        calls[CALL_TARGETS[target]].append({'site': f'{pc:#x}', 'kind': 'bl' if top == 0x94000000 else 'b',
                                            'caller': caller})
(OUT / 'call-sites.json').write_text(json.dumps({
    'binarySha256': EXPECTED_SHA,
    'scope': 'Direct BL/B immediates in executable PT_LOAD segments; virtual, interface, delegate and register-indirect calls not covered. Callers named by preceding metadata method start.',
    'targets': {f'{k:#x}': v for k, v in CALL_TARGETS.items()},
    'calls': calls}, ensure_ascii=False, indent=2) + '\n')

lit = {}
for addr, note in LITERALS.items():
    va = int(addr, 16)
    size = 8 if addr == '0x3EF26A8' else 4
    raw = read(va, size)
    vals = [struct.unpack_from('<f', raw, j)[0] for j in range(0, size, 4)]
    lit[addr] = {'bytes': raw.hex(), 'float32': vals, 'use': note}
prod = struct.unpack('<f', struct.pack('<f', lit['0x3EF26A8']['float32'][0] * lit['0x3EF26A8']['float32'][1]))[0]
lit['0x3EF26A8']['float32Product'] = prod
(OUT / 'literals.json').write_text(json.dumps({'binarySha256': EXPECTED_SHA, 'literals': lit},
                                              ensure_ascii=False, indent=2) + '\n')
if a.dump:
    import re
    dump = Path(a.dump).read_text()
    meta_path = OUT / 'metadata-excerpts.json'
    meta = json.loads(meta_path.read_text())
    for key, enum in (('tiledIdSpecials', 'TiledId'), ('staticItemType', 'StaticItemType')):
        block = re.search(r'public enum ' + enum + r' // TypeDefIndex: \d+\n\{.*?\n\}\n', dump, re.S).group(0)
        if enum == 'TiledId':
            keep = [l for l in block.splitlines() if re.search(r'= (0|10|20|30|40|50);', l) or 'enum' in l]
            block = '\n'.join(keep) + '\n// (excerpt: special item ids only)\n'
        else:
            keep = [l for l in block.splitlines() if re.search(r'= [0-9];', l) or 'enum' in l]
            block = '\n'.join(keep) + '\n// (excerpt: values 0-9)\n'
        meta[key] = block
    combo = []
    for m in re.finditer(r'public const float ExtraComboDelay = [0-9.]+;', dump):
        head = dump.rfind('public class ', 0, m.start())
        combo.append(dump[head:dump.find('\n', head)] + '\n\t' + m.group(0))
    meta['extraComboDelay'] = '\n'.join(combo) + '\n'
    meta_path.write_text(json.dumps(meta, ensure_ascii=False, indent=2) + '\n')

print(json.dumps({'methods': added, 'calls': {k: len(v) for k, v in calls.items()}, 'creationDelay': prod}))
