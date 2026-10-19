#!/usr/bin/env python3
"""Bounded ARM64 checks for colour selection and cell score routing.

Original FindMostCommonItem and CalculateScore bytes execute in Unicorn.
Unity grid, C# containers, metadata init and virtual item predicates/scores are
explicit injected collaborators. This does not execute an original client game.
"""
import hashlib
import io
import json
import struct
from pathlib import Path

from elftools.elf.elffile import ELFFile
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2, UC_ARM64_REG_X3, UC_ARM64_REG_X4, UC_ARM64_REG_X8, UC_ARM64_REG_X19, UC_ARM64_REG_X20, UC_ARM64_REG_X21, UC_ARM64_REG_SP, UC_ARM64_REG_X30, UC_ARM64_REG_PC

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'site/assets/evidence/booster-decisions'
binary = (ROOT.parent / 'research/rm-reunpack-2026-10-14/native/libil2cpp.so').read_bytes()
assert hashlib.sha256(binary).hexdigest() == '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'
u = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
segments = [s for s in ELFFile(io.BytesIO(binary)).iter_segments() if s['p_type'] == 'PT_LOAD']
for s in segments:
    lo = s['p_vaddr'] & ~4095
    hi = (s['p_vaddr'] + s['p_memsz'] + 4095) & ~4095
    # This sample's load segments occupy disjoint pages.
    u.mem_map(lo, hi - lo)
    u.mem_write(s['p_vaddr'], binary[s['p_offset']:s['p_offset'] + s['p_filesz']])
BASE = 0x71000000
STOP = BASE + 0xff000
u.mem_map(BASE, 0x100000)
next_object = BASE
hooks = {}
stubbed = set()
state = {}


def alloc(size=0x1000):
    global next_object
    result = next_object
    next_object += size
    assert next_object < STOP - 0x20000
    return result


def q(p, value):
    u.mem_write(p, struct.pack('<Q', value & ((1 << 64) - 1)))


def w(p, value):
    u.mem_write(p, struct.pack('<I', value & 0xffffffff))


def r(reg):
    return u.reg_read(reg)


def readq(p):
    return struct.unpack('<Q', u.mem_read(p, 8))[0]


def readw(p):
    return struct.unpack('<I', u.mem_read(p, 4))[0]


def callback(uc, pc, size, unused):
    if pc in (0xfb1300, 0xfb1404, 0xfb12ac):
        stubbed.add(hex(pc))
        uc.reg_write(UC_ARM64_REG_PC, r(UC_ARM64_REG_X30))
    elif pc in hooks:
        result = hooks[pc]()
        if result is not None:
            uc.reg_write(UC_ARM64_REG_X0, result)
        stubbed.add(hex(pc))
        uc.reg_write(UC_ARM64_REG_PC, r(UC_ARM64_REG_X30))
    elif pc == 0xfb1428:
        raise AssertionError('Unexpected null in constructed state')


u.hook_add(UC_HOOK_CODE, callback)


def run(va, *args):
    for i, reg in enumerate([UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2, UC_ARM64_REG_X3, UC_ARM64_REG_X4]):
        u.reg_write(reg, args[i] if i < len(args) else 0)
    u.reg_write(UC_ARM64_REG_SP, STOP - 0x1000)
    u.reg_write(UC_ARM64_REG_X30, STOP)
    u.emu_start(va, STOP, count=150000)
    assert r(UC_ARM64_REG_PC) == STOP
    return r(UC_ARM64_REG_X0) & 0xffffffff


# Full colour chooser: keep native grid loops, count increments, eligibility
# branches, running-colour exclusion, strict 'greater than', and return.
strategy, grid, creator, running, match_class, match_slot, hierarchy = [alloc() for _ in range(7)]
q(strategy + 0x20, grid)
q(strategy + 0x30, creator)
q(creator + 0x10, running)
q(0x51df1a0, match_slot)
q(match_slot, match_class)
u.mem_write(match_class + 0x12c, b'\x01')
q(match_class + 0xc8, hierarchy)
q(hierarchy, match_class)
dictionary = alloc()
key_collection = alloc()
hooks[0xfb1418] = lambda: dictionary
hooks[0x36ef6d8] = lambda: state.update(counts={}) or 0
hooks[0x2756fe0] = lambda: len(state['cells'])
hooks[0x2757004] = lambda: 0
hooks[0x2757048] = lambda: 0
hooks[0x2ac8074] = lambda: q(r(UC_ARM64_REG_X0), r(UC_ARM64_REG_X1) | r(UC_ARM64_REG_X2) << 32)
hooks[0x2754510] = lambda: state['cells'][r(UC_ARM64_REG_X1) & 0xffffffff]
hooks[0x239d290] = lambda: state['eligible'][r(UC_ARM64_REG_X1)]
hooks[0x2745e60] = lambda: readq(r(UC_ARM64_REG_X0) + 0x10)
hooks[0x1e92efc] = lambda: state['reserved'][r(UC_ARM64_REG_X0)]


def try_get():
    value = state['counts'].get(r(UC_ARM64_REG_X1))
    w(r(UC_ARM64_REG_X2), value or 0)
    return int(value is not None)


hooks[0x36f1bd4] = try_get
hooks[0x36f0130] = lambda: state['counts'].__setitem__(r(UC_ARM64_REG_X1), r(UC_ARM64_REG_X2))
hooks[0x36f0148] = hooks[0x36f0130]
hooks[0x36efd80] = lambda: key_collection


def get_enumerator():
    state['keys'] = iter(state['counts'])
    u.mem_write(r(UC_ARM64_REG_X8), b'\0' * 24)


def move_next():
    value = next(state['keys'], None)
    if value is None:
        return 0
    w(r(UC_ARM64_REG_X0) + 16, value)
    return 1


hooks[0x23b49ec] = get_enumerator
hooks[0x2a61564] = move_next
hooks[0x2a61560] = lambda: 0
hooks[0x2a4af4c] = lambda: int(r(UC_ARM64_REG_X1) in state['running'])
hooks[0x36f0098] = lambda: state['counts'][r(UC_ARM64_REG_X1)]
colour_cases = []
for name, colours, blocked, reserved, running_colours, expected in [
    ('majority', [1, 3, 3, 2, 3], [], [], [], 3),
    ('blocked cells excluded', [1, 3, 3], [1, 2], [], [], 1),
    ('reserved items excluded', [1, 3, 3], [], [1, 2], [], 1),
    ('running majority excluded', [1, 3, 3], [], [], [3], 1),
    ('tie keeps first enumerated colour', [3, 1], [], [], [], 3),
    ('reversed tie order', [1, 3], [], [], [], 1),
    ('no eligible items', [1, 3], [0, 1], [], [], 0),
    ('all colours running', [1, 3], [], [], [1, 3], 0),
]:
    # Reuse a fixed block per case so the receipt is independent of heap growth.
    item_base = BASE + 0x60000
    state.update(cells=[], eligible={}, reserved={}, running=running_colours)
    for i, colour in enumerate(colours):
        cell = item_base + i * 0x400
        mediator, item = cell + 0x100, cell + 0x200
        q(cell + 0x10, mediator)
        q(mediator + 0x10, item)
        q(item, match_class)
        w(item + 0x18, colour)
        state['cells'].append(cell)
        state['eligible'][cell] = int(i not in blocked)
        state['reserved'][item] = int(i in reserved)
    actual = run(0x23982ac, strategy)
    assert actual == expected, (name, actual, expected)
    colour_cases.append(dict(name=name, colours=colours, blockedCellIndexes=blocked,
                             reservedItemIndexes=reserved, runningColours=running_colours,
                             counts=state['counts'], selected=actual))

# Original cell score routing with explicit virtual methods. Distinct scores
# make summation, max-across-layers and routing observably different.
mediator, cell, static, above, below, a_array, b_array, current_med = [alloc() for _ in range(8)]
q(mediator + 0x20, cell)
q(cell + 0xc0, static)
q(cell + 0x10, current_med)
q(static + 0x30, above)
q(static + 0x38, below)
q(above + 0x10, a_array)
q(below + 0x10, b_array)
meta_slot = alloc()
q(0x51f43d0, meta_slot)
hooks[0x29ce3ec] = lambda: readq(readq(r(UC_ARM64_REG_X0) + 0x10) + 0x20 + r(UC_ARM64_REG_X1) * 8)
hooks[0x2745e60] = lambda: state['current']
values = {}
virtual = BASE + 0xf0000


def item(score, remaining=1, blocks=False, obstacle=False, damageable=True):
    obj, cls = alloc(), alloc()
    q(obj, cls)
    values[obj] = dict(score=score, remaining=remaining, blocks=blocks, obstacle=obstacle, damageable=damageable)
    for offset, key in [(0x458, 'score'), (0x468, 'score'), (0x4e8, 'remaining'),
                        (0x418, 'blocks'), (0x758, 'obstacle'), (0x388, 'damageable')]:
        address = virtual + offset
        q(cls + offset, address)
        hooks[address] = lambda key=key: int(values[r(UC_ARM64_REG_X0)][key])
    return obj


cover = item(101)
exhausted_cover = item(102, remaining=0)
blocking_cover = item(103, remaining=0, blocks=True)
box = item(201, obstacle=True)
match = item(202)
floor = item(301)
inert_floor = item(302, damageable=False)
route_cases = []
for name, a, cur, b, expected in [
    ('cover wins over body and floor', [cover], box, [floor], 101),
    ('exhausted cover bypassed', [exhausted_cover], box, [floor], 201),
    ('blocking exhausted cover still routes', [blocking_cover], box, [floor], 103),
    ('obstacle body wins over floor', [], box, [floor], 201),
    ('floor wins over match', [], match, [floor], 301),
    ('undamageable floor skipped', [], match, [inert_floor], 202),
    ('first damageable floor wins', [], match, [floor, cover], 301),
    ('top cover is last in list', [cover, blocking_cover], box, [floor], 103),
    ('empty cell', [], 0, [], 0),
]:
    w(above + 0x18, len(a))
    w(below + 0x18, len(b))
    for i, obj in enumerate(a):
        q(a_array + 0x20 + i * 8, obj)
    for i, obj in enumerate(b):
        q(b_array + 0x20 + i * 8, obj)
    state['current'] = cur
    actual = run(0x2acf360, mediator, 0, 0, 0)
    assert actual == expected, (name, actual, expected)
    route_cases.append(dict(name=name, aboveScores=[values[v] for v in a],
                            body=values.get(cur), belowScores=[values[v] for v in b], score=actual))

receipt = dict(sampleSha256=hashlib.sha256(binary).hexdigest(), colourCases=colour_cases,
               cellRouteCases=route_cases, strategy=0,
               collaborators='Injected grid, Dictionary/HashSet iteration and storage, item readiness/reservation, virtual obstacle predicates/scores; metadata and write-barrier no-op.',
               tieLimit='Tests specify Dictionary enumeration order; they do not establish an unconditional spatial or colour preference.',
               limit='Original decision-method bytes with constructed state and modeled collaborators; not original client gameplay, Unity scheduling, all obstacle overrides or complete combo simulation.',
               interceptedAddresses=sorted(stubbed))
(OUT / 'verification.json').write_text(json.dumps(receipt, ensure_ascii=False, indent=2) + '\n')
print(json.dumps(dict(colourCases=len(colour_cases), cellRouteCases=len(route_cases))))
