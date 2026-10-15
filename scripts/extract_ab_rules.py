#!/usr/bin/env python3
"""Read-only extraction of every AbTestHelper predicate's client-side rule.

For each AbTestHelper Is*/Get*/Are* method that reads AbTestHelper.get_Item:
  * the experiment IDs it reads (immediate passed in w1);
  * its truth table, obtained by emulating the original ARM64 bytes with
    Unicorn: get_Item is stubbed to return a chosen group value per ID; every
    other external call returns 0;
  * its direct callers (BL/B immediates across executable PT_LOAD segments).
Also lists direct get_Item calls made outside AbTestHelper.

  <venv>/bin/python scripts/extract_ab_rules.py \
      --binary ../research/rm-reunpack-2026-10-14/native/libil2cpp.so \
      --symbols ../research/rm-reunpack-2026-10-14/native/dump/script.json \
      --dump ../research/rm-reunpack-2026-10-14/native/dump/dump.cs

Limits: parameters other than `this` are passed as 0; behaviour that depends on
other game state read through stubbed calls is reported as the 0-return path.
Virtual, interface, delegate and cached-group consumers are not covered by the
direct-call scan.
"""
import argparse, bisect, hashlib, json, re, struct
from pathlib import Path
import numpy as np
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE, UcError
from unicorn.arm64_const import (UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X30,
                                 UC_ARM64_REG_SP, UC_ARM64_REG_PC, UC_ARM64_REG_W0)

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'site/assets/evidence/ab-tests'
EXPECTED_SHA = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'
PREFIX = 'Royal.Player.Context.Data.Persistent.AbTestHelper$$'
VALUES = list(range(0, 11))
SENTINEL = 0x7FFF0000

p = argparse.ArgumentParser()
p.add_argument('--binary', required=True)
p.add_argument('--symbols', required=True)
p.add_argument('--dump', required=True)
a = p.parse_args()
data = Path(a.binary).read_bytes()
assert hashlib.sha256(data).hexdigest() == EXPECTED_SHA
methods = json.loads(Path(a.symbols).read_text())['ScriptMethod']
groups = {}
for m in methods:
    groups.setdefault(m['Address'], []).append(m['Name'])
starts = sorted(groups)
dump = Path(a.dump).read_text()

def owner(va):
    i = bisect.bisect_right(starts, va) - 1
    return groups[starts[i]][0] if i >= 0 else '?'

def end_of(start):
    return starts[bisect.bisect_right(starts, start)]

e_phoff = struct.unpack_from('<Q', data, 0x20)[0]
phnum = struct.unpack_from('<H', data, 0x38)[0]
loads = []
for i in range(phnum):
    t, f, off, va, _, fs, ms, _ = struct.unpack_from('<IIQQQQQQ', data, e_phoff + i * 56)
    if t == 1:
        loads.append((va, off, fs, ms, f))

# AbTestHelper constants and signatures
cls = dump[dump.index('public class AbTestHelper '):]
cls = cls[:cls.index('\n// Namespace:')]
id_names = {int(v): n for n, v in re.findall(r'const int (\w+) = (\d+);', cls)}
for n, v in re.findall(r'const int (\w*Ab\w*) = (\d+);', dump):
    id_names.setdefault(int(v), n)
signatures = {}
for rva, sig in re.findall(r'// RVA: 0x([0-9A-F]+) .*?\n\t(.+?) \{', cls):
    signatures[int(rva, 16)] = sig.strip()

get_item = next(m['Address'] for m in methods if m['Name'] == PREFIX + 'get_Item')
targets = [(m['Address'], m['Name'][len(PREFIX):]) for m in methods
           if m['Name'].startswith(PREFIX) and re.match(r'(Is|Get|Are)', m['Name'][len(PREFIX):])
           and m['Name'][len(PREFIX):] not in ('GetAbTestData', 'GetUpdatedAbTestKeys', 'GetAbTestStatusesForNotificationTag')]

md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)

def read(va, size):
    for v, o, s, _, _ in loads:
        if v <= va and va + size <= v + s:
            return data[o + va - v:o + va - v + size]
    raise ValueError(hex(va))

def static_ids(start, end):
    ids, prev = [], {}
    for ins in md.disasm(read(start, end - start), start):
        if ins.mnemonic == 'mov' and ins.op_str.startswith('w1, #'):
            prev['w1'] = int(ins.op_str.split('#')[1], 0)
        if ins.mnemonic in ('bl', 'b') and ins.op_str.startswith('#') and int(ins.op_str[1:], 16) == get_item:
            if 'w1' in prev and prev['w1'] not in ids:
                ids.append(prev['w1'])
    return ids

# emulator setup: map every PT_LOAD (page aligned) plus stack and scratch
uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
pages = set()
for v, o, s, msz, _ in loads:
    pages.update(range(v >> 12, (v + msz + 0xFFF) >> 12))
pages.update(range(0, 0x10))                # null-pointer reads return 0
runs, run_start, prev = [], None, None
for pg in sorted(pages):
    if run_start is None:
        run_start = prev = pg
    elif pg == prev + 1:
        prev = pg
    else:
        runs.append((run_start, prev)); run_start = prev = pg
runs.append((run_start, prev))
for lo, hi in runs:
    uc.mem_map(lo << 12, (hi - lo + 1) << 12)
for v, o, s, msz, _ in loads:
    uc.mem_write(v, data[o:o + s])
uc.mem_map(0x70000000, 0x100000)            # stack
uc.mem_map(0x71000000, 0x100000)            # fake `this`
uc.mem_map(SENTINEL, 0x1000)
pristine = {v: bytes(uc.mem_read(v & ~0xFFF, ((v + msz + 0xFFF) & ~0xFFF) - (v & ~0xFFF)))
            for v, o, s, msz, f in loads if f & 2}

helper_spans = sorted((addr, end_of(addr)) for addr in starts if groups[addr][0].startswith(PREFIX) and addr != get_item)
helper_starts = [x for x, _ in helper_spans]

def internal(address):
    i = bisect.bisect_right(helper_starts, address) - 1
    return i >= 0 and helper_spans[i][0] <= address < helper_spans[i][1]

state = {}

def hook(uc_, address, size, _):
    lo, hi = state['span']
    if address == get_item:
        gid = uc_.reg_read(UC_ARM64_REG_X1) & 0xFFFFFFFF
        state['reads'].append(gid)
        uc_.reg_write(UC_ARM64_REG_X0, state['table'].get(gid, 0))
        uc_.reg_write(UC_ARM64_REG_PC, uc_.reg_read(UC_ARM64_REG_X30))
        return
    if address == SENTINEL:
        uc_.emu_stop(); return
    if not internal(address):
        # any other external routine: return 0 to the caller
        state['stubs'].add(address)
        uc_.reg_write(UC_ARM64_REG_X0, state['ext'])
        uc_.reg_write(UC_ARM64_REG_PC, uc_.reg_read(UC_ARM64_REG_X30))
        return
    state['steps'] += 1
    if state['steps'] > 4000:
        state['error'] = 'step limit'; uc_.emu_stop()

uc.hook_add(UC_HOOK_CODE, hook)

def run(start, end, table, ext=0):
    for base, blob in pristine.items():
        uc.mem_write(base & ~0xFFF, blob)
    uc.mem_write(0x71000000, b'\0' * 0x1000)
    state.update(span=(start, end), table=table, reads=[], stubs=set(), steps=0, error=None, ext=ext)
    uc.reg_write(UC_ARM64_REG_X0, 0x71000000)
    for r in range(1, 8):
        uc.reg_write(UC_ARM64_REG_X0 + r, 0)
    uc.reg_write(UC_ARM64_REG_SP, 0x70080000)
    uc.reg_write(UC_ARM64_REG_X30, SENTINEL)
    try:
        uc.emu_start(start, SENTINEL, count=20000)
    except UcError as exc:
        state['error'] = str(exc)
    state['lastStubs'] = sorted(state['stubs'])
    return uc.reg_read(UC_ARM64_REG_W0) & 0xFFFFFFFF, state['error'], list(state['reads'])

# direct-call scan
target_addrs = {addr for addr, _ in targets} | {get_item}
callers = {addr: [] for addr in target_addrs}
item_calls = []
for v, o, s, _, f in loads:
    if not f & 1:
        continue
    w = np.frombuffer(data[o:o + s - (s % 4)], dtype='<u4')
    for mask in (0x94000000, 0x14000000):
        idx = np.nonzero((w & 0xFC000000) == mask)[0]
        imm = (w[idx] & 0x03FFFFFF).astype(np.int64)
        imm = np.where(imm & 0x2000000, imm - 0x4000000, imm)
        pc = v + idx.astype(np.int64) * 4
        tg = pc + imm * 4
        hit = np.isin(tg, list(target_addrs))
        for site, t in zip(pc[hit], tg[hit]):
            name = owner(int(site))
            if mask == 0x14000000 and name in groups.get(int(t), []):
                continue
            if int(t) == get_item and not name.startswith(PREFIX):
                back = read(int(site) - 16, 16)
                gid = None
                for ins in md.disasm(back, int(site) - 16):
                    if ins.mnemonic == 'mov' and ins.op_str.startswith('w1, #'):
                        gid = int(ins.op_str.split('#')[1], 0)
                item_calls.append({'site': f'{int(site):#x}', 'caller': name, 'id': gid})
            elif int(t) != get_item:
                callers[int(t)].append(name)

def short(name):
    return name.replace('Royal.', '').split('$$')[0] + '.' + name.split('$$')[-1] if '$$' in name else name

partner = {}
for gid, nm in id_names.items():
    for x, y in (('NewUser', 'OldUser'), ('OldUser', 'NewUser')):
        if x in nm:
            other = nm.replace(x, y)
            for g2, n2 in id_names.items():
                if n2 == other:
                    partner[gid] = g2

def helper_calls(start, end):
    out = []
    for ins in md.disasm(read(start, end - start), start):
        if ins.mnemonic in ('bl', 'b') and ins.op_str.startswith('#'):
            t = int(ins.op_str[1:], 16)
            if t != get_item and t in groups and groups[t][0].startswith(PREFIX) and not (start <= t < end):
                out.append(groups[t][0][len(PREFIX):])
    return out

rules = []
for start, name in sorted(targets):
    end = end_of(start)
    sig = signatures.get(start, '')
    returns_bool = re.match(r'(public|private|internal) (static )?bool', sig) is not None
    body = read(start, end - start)
    entry = {'method': name, 'rva': f'{start:#x}', 'signature': sig,
             'calls': helper_calls(start, end),
             'callers': sorted({short(c) for c in callers[start]})}
    base, err, reads = run(start, end, {})
    _, _, reads1 = run(start, end, {}, 1)
    ids = list(dict.fromkeys(reads + reads1))
    k = 0
    while k < len(ids):
        gid = ids[k]
        if gid in partner and partner[gid] not in ids:
            ids.append(partner[gid])
        for val, ext in ((2, 0), (3, 0), (4, 0), (5, 0), (2, 1), (3, 1), (4, 1), (5, 1)):
            _, _, more = run(start, end, {gid: val}, ext)
            for m in more:
                if m not in ids:
                    ids.append(m)
        k += 1
    entry['ids'] = ids
    entry['idNames'] = {str(i): id_names.get(i) for i in ids}
    if not ids:
        if body[:8] == bytes.fromhex('e0031f2ac0035fd6'):
            entry['kind'] = 'hardcoded-false'
        elif body[:8] == bytes.fromhex('20008052c0035fd6'):
            entry['kind'] = 'hardcoded-true'
        else:
            entry['kind'] = 'no-ab-read'
        entry['value'] = base & 0xFF if returns_bool else base
        rules.append(entry); continue
    entry['kind'] = 'bool' if returns_bool else 'value'
    errors = set()
    def table(ext):
        per, stubs = {}, set()
        for gid in ids:
            row = {}
            for val in VALUES:
                r, err, _ = run(start, end, {gid: val}, ext)
                stubs.update(state['lastStubs'])
                if err:
                    errors.add(err)
                row[str(val)] = (r & 0xFF) if returns_bool else (r if r < 0x80000000 else r - 0x100000000)
            per[str(gid)] = row
        return per, stubs
    per, stubs = table(0)
    entry['byId'] = per
    if returns_bool:
        entry['trueWhen'] = {g: [int(v) for v, r in row.items() if r] for g, row in per.items()}
    if stubs:
        entry['externalCalls'] = sorted({short(owner(x)) for x in stubs})
        per1, _ = table(1)
        if per1 != per:
            entry['byIdWhenExternalTrue'] = per1
            if returns_bool:
                entry['trueWhenExternalTrue'] = {g: [int(v) for v, r in row.items() if r] for g, row in per1.items()}
    if errors:
        entry['emulationErrors'] = sorted(errors)
    rules.append(entry)

out = {
    'binarySha256': EXPECTED_SHA,
    'method': 'Original ARM64 bytes emulated with Unicorn; get_Item stubbed per ID with group values 0-10 (one ID set at a time, others 0); other external calls return 0; extra parameters 0.',
    'limits': ['Group values above 10 are not probed.',
               'Other AbTestHelper methods are executed; only calls outside AbTestHelper are stubbed.',
               'Only one ID is set per run; combinations of NewUser and OldUser IDs are not enumerated.',
               'Calls outside AbTestHelper are stubbed to return 0; when such calls occur the table is re-run with them returning 1 and both results are kept.',
               'Callers are direct BL/B only.'],
    'rules': rules,
    'directGetItemOutsideHelper': item_calls,
}
(OUT / 'rules.json').write_text(json.dumps(out, ensure_ascii=False, indent=1) + '\n')
manifest = json.loads((OUT / 'manifest.json').read_text())
manifest.setdefault('supplementaryFiles', {})['rules.json'] = hashlib.sha256((OUT / 'rules.json').read_bytes()).hexdigest()
(OUT / 'manifest.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n')
print(len(rules), 'predicates;', sum(1 for r in rules if r.get('emulationErrors')), 'with emulation errors;',
      len(item_calls), 'direct get_Item calls outside helper')
