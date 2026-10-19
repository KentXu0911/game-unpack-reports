#!/usr/bin/env python3
"""Bounded original ARM64 execution checks (Unicorn + pyelftools).
External calls: metadata/class init no-op; System.Math.Min implemented exactly;
incoming count and virtual item type injected as explicit inputs. No other call
is stubbed. No Unity frame scheduler, live account or game parity is tested.
"""
import hashlib,importlib.util,json,random,struct
from pathlib import Path
from elftools.elf.elffile import ELFFile
from unicorn import Uc,UC_ARCH_ARM64,UC_MODE_ARM,UC_HOOK_CODE
from unicorn.arm64_const import *
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'site/assets/evidence/difficulty-deep'
spec=importlib.util.spec_from_file_location('decoder',OUT/'decode-state.py');decoder=importlib.util.module_from_spec(spec);spec.loader.exec_module(decoder)
bp=ROOT.parent/'research/rm-reunpack-2026-10-14/native/libil2cpp.so';binary=bp.read_bytes();assert hashlib.sha256(binary).hexdigest()=='8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'
u=Uc(UC_ARCH_ARM64,UC_MODE_ARM)
with bp.open('rb') as f:
    segs=[s for s in ELFFile(f).iter_segments() if s['p_type']=='PT_LOAD']
pages=set(range(16))
for s in segs:pages.update(range(s['p_vaddr']//4096,(s['p_vaddr']+s['p_memsz']+4095)//4096))
# Map adjacent pages together.
start=prev=None
for pg in sorted(pages)+[None]:
    if start is None:start=prev=pg;continue
    if pg==prev+1:prev=pg;continue
    u.mem_map(start*4096,(prev-start+1)*4096);start=prev=pg
for s in segs:u.mem_write(s['p_vaddr'],binary[s['p_offset']:s['p_offset']+s['p_filesz']])
OBJ=0x71000000;CLASS=OBJ+0x1000;INCOMING=OBJ+0x2000;VTYPE=0x72000000;STOP=VTYPE+0x1000
u.mem_map(0x70000000,0x100000);u.mem_map(OBJ,0x10000);u.mem_map(VTYPE,0x10000)
def put64(p,v):u.mem_write(p,struct.pack('<Q',v&((1<<64)-1)))
def signed32(v):return (v&0xffffffff)-(1<<32) if v&0x80000000 else v&0xffffffff
inputs={};stub_log=set()
def hook(uc,pc,size,unused):
    if pc in (0xfb1300,0xfb1404): pass
    elif pc==0x2598d14:uc.reg_write(UC_ARM64_REG_X0,min(signed32(uc.reg_read(UC_ARM64_REG_X0)),signed32(uc.reg_read(UC_ARM64_REG_X1)))&0xffffffff)
    elif pc==0x2d3a4b0:uc.reg_write(UC_ARM64_REG_X0,inputs['incoming'])
    elif pc==VTYPE:uc.reg_write(UC_ARM64_REG_X0,inputs['itemType'])
    else:return
    stub_log.add(hex(pc));uc.reg_write(UC_ARM64_REG_PC,uc.reg_read(UC_ARM64_REG_X30))
u.hook_add(UC_HOOK_CODE,hook)
# Bind the metadata slot used by UpdateLong to a minimal initialized Math class.
put64(0x5200d18,CLASS+0x3000)
u.mem_write(CLASS+0x3000+0xe0,struct.pack('<I',1))
def run(address,*args):
    for i,reg in enumerate([UC_ARM64_REG_X0,UC_ARM64_REG_X1,UC_ARM64_REG_X2,UC_ARM64_REG_X3,UC_ARM64_REG_X4]):u.reg_write(reg,args[i]&((1<<64)-1) if i<len(args) else 0)
    u.reg_write(UC_ARM64_REG_SP,0x700ff000);u.reg_write(UC_ARM64_REG_X30,STOP)
    u.emu_start(address,STOP,count=20000)
    assert u.reg_read(UC_ARM64_REG_PC)==STOP,hex(u.reg_read(UC_ARM64_REG_PC))
    return u.reg_read(UC_ARM64_REG_X0)
rng=random.Random(38174);checks=0
for lo,hi in decoder.FIELDS.values():
    for _ in range(100):
        state=rng.getrandbits(64);value=rng.randrange(1<<(hi-lo+1))
        assert run(0x32843b8,state,lo,hi)==decoder.extract_long(state,lo,hi)
        assert run(0x32844a8,state,value,lo,hi)==decoder.update_long(state,value,lo,hi);checks+=2
    # Deliberately exercise signed/overwide inputs; native helper spills bits.
    for value in [-1,1<<(hi-lo+1),0x7fffffff,-0x80000000]:
        assert run(0x32844a8,0x123456789abcdef,value,lo,hi)==decoder.update_long(0x123456789abcdef,value,lo,hi);checks+=1
for raw in range(32):
    put64(OBJ+0xb0,raw<<13)
    assert signed32(run(0x2a0e84c,OBJ))== (raw-10 if raw else 0);checks+=1
# Build a MultipleCell object with injected ItemType and incoming count.
put64(OBJ,CLASS);put64(OBJ+0x78,INCOMING);put64(CLASS+0x378,VTYPE);put64(CLASS+0x4c8,0x338c910)
plane_rows=[]
for layer,incoming in [(1,0),(2,0),(3,2),(10,0),(11,0)]:
    u.mem_write(OBJ+0x68,struct.pack('<i',layer));inputs.update(itemType=8,incoming=incoming)
    for strategy in range(9):
        remaining=layer-incoming
        expected=(456976 if 2<=remaining<=10 else 228488) if strategy in (3,6) else ((4*152325+304651) if remaining==1 and strategy in (0,4,5,7) else 456976)
        actual=signed32(run(0x2dd0558,OBJ,strategy));assert actual==expected,(layer,incoming,strategy,actual,expected)
        plane_rows.append(dict(layer=layer,incoming=incoming,strategy=strategy,score=actual))
# Every base table entry executes the actual switch/table-read method.
base=json.loads((ROOT/'site/assets/evidence/plane-deep/base-scores.json').read_text())['rows']
for row in base:assert run(0x3384988,row['itemType'])==row['baseScore']
# All item types through the native freed-cell switch (includes unnamed IDs).
freed=[dict(itemType=i,cellsFreed=run(0x338bab0,i)) for i in range(1,116)]
write=lambda p,v:p.write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
write(ROOT/'site/assets/evidence/plane-deep/freed-cells.json',freed)
constants=[]
for address in [0x33989a4,0x33989ac,0x33989b8,0x33989c0,0x33989c8,0x33989d4,0x33999e0]:
    run(address,OBJ);value=struct.unpack('<f',struct.pack('<I',u.reg_read(UC_ARM64_REG_S0)))[0];constants.append(dict(address=hex(address),value=value))
write(ROOT/'site/assets/evidence/plane-deep/verification.json',dict(method='Execute original ARM64 with explicit incoming-count and ItemType inputs',cupboardCases=plane_rows,baseScoreCases=len(base),freedCellCases=len(freed),flightGetters=constants,limit='Constructed state only. Does not verify the full selector, all overrides, Unity flight or original client gameplay.'))
example=0
for field,value in [('tryCount',7),('deltaRaw',13),('lastUpdatedSection',21),('currentLevel',101)]:example=decoder.update_long(example,value,*decoder.FIELDS[field])
write(OUT/'verification.json',dict(sampleSha256=hashlib.sha256(binary).hexdigest(),bitfieldChecks=checks,metadataBindings={'0x5200d18':'minimal initialized System.Math class at 0x71004000, +0xe0 = 1'},stubs=sorted(stub_log),stubMeaning={'0xfb1300':'metadata init no-op','0xfb1404':'class init no-op','0x2598d14':'signed System.Math.Min','0x2d3a4b0':'explicit incoming count input',hex(VTYPE):'explicit ItemType input'},example=decoder.decode(example),boundary='Bounded native execution only; no live server or Unity scheduler.'))
print(json.dumps(dict(bitfieldChecks=checks,cupboardCases=len(plane_rows),baseScoreCases=len(base),freedCellCases=len(freed),flightGetters=constants,example=decoder.decode(example))))
