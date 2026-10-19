#!/usr/bin/env python3
"""Bounded offline DynaDiff key/accessor/typed-field tracing on RM38174.
Requires capstone and pyelftools; writes only report evidence. Typed tracing is
linear within metadata spans, not an exhaustive interprocedural alias proof.
"""
import bisect
import collections
import hashlib
import io
import json
import re
import struct
import zipfile
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
WS = ROOT.parent
OUT = ROOT / 'site/assets/evidence/dynadiff-consumers'
EXPECTED = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'


def main():
    binary = (WS / 'research/rm-reunpack-2026-10-14/native/libil2cpp.so').read_bytes()
    assert hashlib.sha256(binary).hexdigest() == EXPECTED
    index = WS / 'royal-match-apk-audit-38174/tools/il2cppdumper/output-arm64/script.json'
    script = json.loads(index.read_text())
    dump = index.with_name('dump.cs').read_text()
    grouped = collections.defaultdict(list)
    records = {}
    for m in script['ScriptMethod']:
        if m['Address'] > 0:
            grouped[m['Address']].append(m['Name'])
            records[m['Address']] = m
    starts = sorted(grouped)
    elf = ELFFile(io.BytesIO(binary))
    segments = [s for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']
    sections = [(s.name, s['sh_addr'], s['sh_size']) for s in elf.iter_sections()]
    decoder = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    decoder.detail = True
    decoder.skipdata = True
    OUT.mkdir(parents=True, exist_ok=True)

    def save(name, value):
        (OUT / name).write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n')

    def owner(va):
        return starts[bisect.bisect_right(starts, va) - 1]

    def read(va, length):
        seg = next(s for s in segments if s['p_vaddr'] <= va and
                   va + length <= s['p_vaddr'] + s['p_filesz'])
        off = seg['p_offset'] + va - seg['p_vaddr']
        return binary[off:off + length]

    def pointer_slots(target):
        hits = []
        for s in segments:
            data = read(s['p_vaddr'], s['p_filesz'])
            pos = data.find(struct.pack('<Q', target))
            while pos >= 0:
                if (s['p_vaddr'] + pos) % 8 == 0:
                    hits.append(s['p_vaddr'] + pos)
                pos = data.find(struct.pack('<Q', target), pos + 1)
        return hits

    literal = next(s['Address'] for s in script['ScriptString'] if s['Value'] == 'DynaDiff')
    literal_slots = pointer_slots(literal)
    type_addresses = {s['Address']: s['Name'].removesuffix('_TypeInfo')
                      for s in script['ScriptMetadata'] if s['Name'] in [
                          'Royal.Player.Context.Units.UserManager_TypeInfo',
                          'Royal.Player.Context.Data.User_TypeInfo',
                          'Royal.Player.Context.Data.Persistent.UserInventory_TypeInfo']}
    type_slots = {slot: name for addr, name in type_addresses.items() for slot in pointer_slots(addr)}
    interesting_pages = {v & ~4095 for v in literal_slots + list(type_slots)}
    fields = {}
    namespace = ''
    classname = None
    for line in dump.splitlines():
        if line.startswith('// Namespace:'):
            namespace = line.split(':', 1)[1].strip()
        match = re.match(r'(?:public|private|internal) (?:sealed |abstract |static )*(?:class|struct) ([\w.<>]+)', line)
        if match:
            classname = namespace + '.' + match[1]
            fields[classname] = {}
        field = re.match(r'\s*(?:public|private|protected|internal) (?:readonly )?(UserInventory|User|UserManager) [^;]+; // (0x[0-9A-F]+)', line)
        if field and classname:
            fields[classname][int(field[2], 16)] = {
                'UserInventory': 'Royal.Player.Context.Data.Persistent.UserInventory',
                'User': 'Royal.Player.Context.Data.User',
                'UserManager': 'Royal.Player.Context.Units.UserManager'}[field[1]]
    inventory = 'Royal.Player.Context.Data.Persistent.UserInventory'
    user = 'Royal.Player.Context.Data.User'
    manager = 'Royal.Player.Context.Units.UserManager'
    # Include tiny accessors outside the older 0x2A0E5D8.. range.
    targets = {a for a in starts if any(inventory + '$$' in n and any(t in n for t in [
        'DynamicDifficulty', 'TryCount2', 'DeltaMove', 'LastUpdatedSection', 'CurrentLevel']) for n in grouped[a])}
    direct_calls = []
    candidate_owners = set(targets)
    raw_field_candidates = 0
    for seg in segments:
        if not seg['p_flags'] & 1:
            continue
        data = read(seg['p_vaddr'], seg['p_filesz'])
        for i, (word,) in enumerate(struct.iter_unpack('<I', data[:len(data)//4*4])):
            va = seg['p_vaddr'] + i*4
            if word & 0x7c000000 == 0x14000000:
                imm = word & 0x3ffffff
                if imm & 0x2000000:
                    imm -= 0x4000000
                target = va + imm*4
                if target in targets:
                    direct_calls.append(dict(site=hex(va), caller=grouped[owner(va)],
                                             target=hex(target), callee=grouped[target]))
                    candidate_owners.add(owner(va))
            # Scalar 64-bit integer unsigned access or ADD at offset B0.
            scalar = (word & 0xffc00000 in (0xf9400000, 0xf9000000) and
                      (word >> 10) & 4095 == 22)
            add = word & 0xffc00000 == 0x91000000 and (word >> 10) & 4095 == 0xb0
            # Integer LDP/STP pair containing B0; catches a preceding A8 access.
            pair = False
            if word & 0x3a000000 == 0x28000000 and word >> 30 == 2:
                imm = (word >> 15) & 127
                if imm & 64:
                    imm -= 128
                pair = imm*8 <= 0xb0 < imm*8 + 16
            if scalar or add or pair:
                raw_field_candidates += 1
                own = owner(va)
                if any(n.startswith('Royal.') for n in grouped[own]):
                    candidate_owners.add(own)
            if word & 0x9f000000 == 0x90000000:
                imm = ((word >> 5) & 0x7ffff) << 2 | ((word >> 29) & 3)
                if imm & (1 << 20):
                    imm -= 1 << 21
                if (va & ~4095) + (imm << 12) in interesting_pages:
                    candidate_owners.add(owner(va))

    key_refs, field_refs = [], []
    # Track typed roots and constant addresses, invalidating all written registers.
    # Branches are not solved; positive field hits require manual instruction review.
    skipped_spans = []
    for start in sorted(candidate_owners):
        next_index = bisect.bisect_right(starts, start)
        if next_index == len(starts):
            skipped_spans.append(hex(start))
            continue
        end = starts[next_index]
        ownname = grouped[start][0].split('$$')[0]
        regs = {}
        if ownname in fields:
            regs['x0'] = ('object', ownname)
        insns = list(decoder.disasm(read(start, end-start), start))
        for i, ins in enumerate(insns):
            if ins.id == 0:
                regs.clear()
                continue
            old = dict(regs)
            _, writes = ins.regs_access()
            for r in writes:
                name = ins.reg_name(r)
                regs.pop('x' + name[1:] if name.startswith('w') else name, None)
            dest = ins.op_str.split(',')[0]
            if ins.mnemonic in ('adrp', 'adr'):
                regs[dest] = ('address', ins.operands[1].imm)
            elif ins.mnemonic == 'mov' and len(ins.operands) == 2 and ins.operands[1].type == 1:
                src = ins.reg_name(ins.operands[1].reg)
                if src in old:
                    regs[dest] = old[src]
            elif ins.mnemonic == 'add' and len(ins.operands) == 3 and ins.operands[2].type == 2:
                src = ins.reg_name(ins.operands[1].reg)
                val = old.get(src)
                if val and val[0] == 'address':
                    regs[dest] = ('address', val[1] + ins.operands[2].imm)
            elif ins.mnemonic in ('ldr', 'ldur', 'str', 'stur', 'ldp', 'stp'):
                mem = next((o.mem for o in ins.operands if o.type == 3), None)
                if mem is not None:
                    base = old.get(ins.reg_name(mem.base))
                    if base and base[0] == 'address':
                        addr = base[1] + mem.disp
                        if addr in literal_slots and ins.mnemonic == 'ldr':
                            key_refs.append(dict(site=hex(ins.address), method=grouped[start],
                                slot=hex(addr), instruction=ins.mnemonic + ' ' + ins.op_str))
                        if addr in type_slots and ins.mnemonic == 'ldr':
                            regs[dest] = ('type-slot', type_slots[addr])
                    elif base and base[0] == 'type-slot' and mem.disp == 0:
                        regs[dest] = ('type-info', base[1])
                    elif base and base[0] == 'type-info' and mem.disp == 0xb8:
                        regs[dest] = ('statics', base[1])
                    elif base and base[0] == 'statics' and base[1] == manager and mem.disp == 0:
                        regs[dest] = ('object', user)
                    elif base and base[0] == 'object':
                        typ = base[1]
                        if typ == inventory and (mem.disp == 0xb0 or
                                ins.mnemonic in ('ldp', 'stp') and mem.disp == 0xa8):
                            field_refs.append(dict(site=hex(ins.address), method=grouped[start],
                                instruction=ins.mnemonic + ' ' + ins.op_str,
                                context=[f'{x.address:x}: {x.mnemonic} {x.op_str}'
                                         for x in insns[max(0, i-8):i+5]]))
                        ftype = fields.get(typ, {}).get(mem.disp)
                        if typ == user and mem.disp == 0x20:
                            ftype = inventory
                        if ins.mnemonic == 'ldr' and ftype:
                            regs[dest] = ('object', ftype)
            if ins.mnemonic in ('bl', 'blr'):
                for r in range(19):
                    regs.pop('x' + str(r), None)
                target = ins.operands[0].imm if ins.mnemonic == 'bl' else None
                if target == 0x268b404:
                    regs['x0'] = ('object', inventory)
                elif target == 0x1f01f5c:
                    regs['x0'] = ('object', user)
    # File pointer scans bound obvious delegate registrations; relative/encoded
    # references and native runtime-built pointers are explicitly outside scope.
    method_pointers = [dict(address=hex(t), methods=grouped[t],
                            alignedSlots=[dict(address=hex(x), section=next(
                                (n for n, a, z in sections if a <= x < a+z), None))
                                for x in pointer_slots(t)]) for t in sorted(targets)]
    save('trace.json', dict(sampleSha256=EXPECTED, indexSha256=hashlib.sha256(index.read_bytes()).hexdigest(),
        keyLiteral=hex(literal), keyLiteralPointerSlots=[hex(x) for x in literal_slots],
        keyReferences=key_refs, typedFieldReferences=field_refs, directCalls=direct_calls,
        targetMethodPointers=method_pointers, candidateMetadataSpans=len(candidate_owners),
        scannedMetadataSpans=len(candidate_owners)-len(skipped_spans),
        rawOffsetCandidates=raw_field_candidates, skippedUnboundedFinalSpans=skipped_spans,
        boundary='Immediate B/BL and aligned pointer scans cover executable/data PT_LOAD. '
                 'Typed tracing is linear register propagation on candidates, includes common '
                 'inlined UserManager.CurrentUser.Inventory roots and typed this fields. '
                 'No complete alias/CFG/indirect/reflection or all load/store encoding proof. '
                 'Same offset on other objects is not DynaDiff. .rela.dyn hits are relocation addends, '
                 'not executable consumers. Positive field/key sites manually reviewed.'))
    captures = targets | {owner(int(x['site'], 16)) for x in key_refs + field_refs} | {
        0x1f0a340, 0x26849f4, 0x2685a18, 0x1c8532c, 0x2a0e9c4,
        0x245b578, 0x2e7012c, 0x2e70158, 0x2e70220, 0x2e60270, 0x2e60374,
        0x2e59ff0}
    entries = []
    with zipfile.ZipFile(OUT / 'native.zip', 'w', zipfile.ZIP_DEFLATED) as z:
        for start in sorted(captures):
            next_index = bisect.bisect_right(starts, start)
            if next_index == len(starts):
                continue
            end = starts[next_index]
            data = read(start, end-start)
            text = ['# ' + ' | '.join(grouped[start]), '# Linear metadata span; not complete CFG.']
            for ins in decoder.disasm(data, start):
                extra = ''
                if ins.mnemonic in ('bl', 'b') and ins.op_str.startswith('#0x'):
                    extra = ' ; ' + ' | '.join(grouped.get(int(ins.op_str[1:], 16), []))
                text.append(f'{ins.address:x}: {ins.mnemonic} {ins.op_str}{extra}')
            for suffix, body in [('bin', data), ('s', ('\n'.join(text)+'\n').encode())]:
                zi = zipfile.ZipInfo(f'{start:08x}.{suffix}', (2026, 10, 19, 0, 0, 0))
                zi.compress_type = zipfile.ZIP_DEFLATED
                z.writestr(zi, body)
            entries.append(dict(address=hex(start), methods=grouped[start], bytes=len(data),
                                sha256=hashlib.sha256(data).hexdigest()))
    save('native-manifest.json', dict(sampleSha256=EXPECTED, methods=entries,
        archiveSha256=hashlib.sha256((OUT / 'native.zip').read_bytes()).hexdigest()))
    print(json.dumps(dict(scannedSpans=len(candidate_owners)-len(skipped_spans), keyReferences=len(key_refs),
                         typedFieldReferences=len(field_refs), capturedSpans=len(entries))))


if __name__ == '__main__':
    main()
