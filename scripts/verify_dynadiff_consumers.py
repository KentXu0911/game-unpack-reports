#!/usr/bin/env python3
"""Execute intact ARM64 getters/setter and the ordinary move-count branch.

Constructed account objects, not captured server data or a full game session.
Only metadata/class initialization is stubbed; IsLeague executes original bytes.
"""
import hashlib
import json
import struct
from pathlib import Path

from elftools.elf.elffile import ELFFile
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE, UC_HOOK_MEM_READ
from unicorn.arm64_const import (UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2,
                                 UC_ARM64_REG_X3, UC_ARM64_REG_X4,
                                 UC_ARM64_REG_X30, UC_ARM64_REG_SP, UC_ARM64_REG_PC)

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'site/assets/evidence/dynadiff-consumers'
SAMPLE = ROOT.parent / 'research/rm-reunpack-2026-10-14/native/libil2cpp.so'
EXPECTED = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'


def main():
    binary = SAMPLE.read_bytes()
    assert hashlib.sha256(binary).hexdigest() == EXPECTED
    u = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    with SAMPLE.open('rb') as f:
        segments = [s for s in ELFFile(f).iter_segments() if s['p_type'] == 'PT_LOAD']
    pages = set(range(16))
    for s in segments:
        pages.update(range(s['p_vaddr']//4096, (s['p_vaddr']+s['p_memsz']+4095)//4096))
    start = prev = None
    for pg in sorted(pages) + [None]:
        if start is None:
            start = prev = pg
            continue
        if pg == prev + 1:
            prev = pg
            continue
        u.mem_map(start*4096, (prev-start+1)*4096)
        start = prev = pg
    for s in segments:
        u.mem_write(s['p_vaddr'], binary[s['p_offset']:s['p_offset']+s['p_filesz']])
    u.mem_map(0x70000000, 0x100000)
    u.mem_map(0x71000000, 0x10000)
    u.mem_map(0x72000000, 0x10000)
    inv, cell, klass, statics = 0x71000000, 0x71002000, 0x71003000, 0x71004000
    user, session, active, strategy, stop = 0x71005000, 0x71006000, 0x71007000, 0x71008000, 0x72001000

    def put64(address, value):
        u.mem_write(address, struct.pack('<Q', value & ((1 << 64)-1)))

    for address, value in [(0x5208380, cell), (cell, klass), (klass+0xb8, statics),
                           (statics, user), (user+0x20, inv), (user+0x38, session),
                           (session+0x18, active)]:
        put64(address, value)
    # Original IsLeague getter is active+0x2C > 0. Explicit ordinary mainline.
    u.mem_write(active+0x2c, struct.pack('<i', 0))
    stubs = set()
    phase = {'name': None, 'reads': []}

    def code_hook(uc, pc, size, data):
        if pc in (0xfb1300, 0xfb1404):
            stubs.add(hex(pc))
            uc.reg_write(UC_ARM64_REG_PC, uc.reg_read(UC_ARM64_REG_X30))

    def memory_hook(uc, access, address, size, value, data):
        if phase['name'] and address < inv+0xb8 and address+size > inv+0xb0:
            phase['reads'].append(dict(phase=phase['name'], pc=hex(uc.reg_read(UC_ARM64_REG_PC)),
                                       address=hex(address), size=size))

    u.hook_add(UC_HOOK_CODE, code_hook)
    u.hook_add(UC_HOOK_MEM_READ, memory_hook)

    def run(address, *args):
        for i, reg in enumerate([UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2,
                                 UC_ARM64_REG_X3, UC_ARM64_REG_X4]):
            u.reg_write(reg, args[i] if i < len(args) else 0)
        u.reg_write(UC_ARM64_REG_SP, 0x700ff000)
        u.reg_write(UC_ARM64_REG_X30, stop)
        u.emu_start(address, stop, count=20000)
        assert u.reg_read(UC_ARM64_REG_PC) == stop
        return u.reg_read(UC_ARM64_REG_X0)

    def signed32(value):
        value &= 0xffffffff
        return value - (1 << 32) if value & (1 << 31) else value

    rows = []
    for name, state in [('all-zero', 0)] + [(label, (101 << 35) | (21 << 18) | (7 << 1) | (raw << 13))
            for label, raw in [('encoded-zero', 10), ('minus-three', 7),
                               ('plus-three', 13), ('plus-twenty-one', 31)]]:
        run(0x2a097fc, inv, state)  # Intact property setter, no persistence claim.
        assert run(0x2a097f4, inv) == state
        decoded = dict(tryCount2=run(0x2a0e82c, inv),
                       deltaMove=signed32(run(0x2a0e84c, inv)),
                       lastUpdatedSection=run(0x2a0e8a8, inv),
                       currentLevel=run(0x2a0e8f4, inv))
        assert decoded['deltaMove'] == (((state >> 13) & 31)-10 if (state >> 13) & 31 else 0)
        phase.update(name='ordinary-moves', reads=[])
        result = run(0x1c8532c, strategy, 25)
        reads = list(phase['reads'])
        phase['name'] = None
        assert result == 25 and not reads
        assert run(0x2a097f4, inv) == state
        rows.append(dict(name=name, injectedState=str(state), decoded=decoded,
                         inputMoves=25, outputMoves=result, dynaDiffReads=reads))
    # Positive control: prove memory hook sees a real read of this exact field.
    phase.update(name='positive-control', reads=[])
    run(0x2a097f4, inv)
    assert len(phase['reads']) == 1
    receipt = dict(sampleSha256=EXPECTED, cases=rows, positiveControl=phase['reads'],
                   stubs=sorted(stubs), stubMeaning='Metadata/class initialization only; no gameplay getter stub.',
                   bindings=dict(userManagerTypeSlot=hex(0x5208380), inventory=hex(inv),
                                 user=hex(user), activeLevel=hex(active), leagueField=0),
                   methods=dict(propertySet='0x2A097FC', propertyGet='0x2A097F4',
                                tryCount2='0x2A0E82C', deltaMove='0x2A0E84C',
                                section='0x2A0E8A8', currentLevel='0x2A0E8F4',
                                updatedMoves='0x1C8532C', isLeague='0x245B578'),
                   boundary='Injected account state, intact property/accessor and ordinary move-count code. '
                            'Not real server data; no server response, SQL, Unity session, seed/refill or full-game execution tested.')
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / 'verification.json').write_text(json.dumps(receipt, ensure_ascii=False, indent=2)+'\n')
    print(json.dumps(dict(cases=len(rows), results=[(r['decoded']['deltaMove'], r['outputMoves']) for r in rows],
                          positiveControlReads=len(phase['reads']))))


if __name__ == '__main__':
    main()
