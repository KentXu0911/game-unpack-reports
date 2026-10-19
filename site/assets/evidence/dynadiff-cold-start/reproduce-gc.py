import json,bisect,collections,hashlib
from pathlib import Path
from elftools.elf.elffile import ELFFile
from capstone import *
p=Path('research/rm-reunpack-2026-10-14/native/libil2cpp.so');f=p.open('rb');elf=ELFFile(f)
ranges=sorted((e['initial_location'],e['initial_location']+e['address_range']) for e in elf.get_dwarf_info().EH_CFI_entries() if hasattr(e,'header') and 'initial_location' in e.header);starts=[x[0] for x in ranges]
segs=[(s['p_vaddr'],s.data()) for s in elf.iter_segments() if s['p_filesz']]
def owner(a):
 i=bisect.bisect_right(starts,a)-1
 return ranges[i][0] if i>=0 and a<ranges[i][1] else a
def read(a,n):
 v,b=next((v,b) for v,b in segs if v<=a<v+len(b));return b[a-v:a-v+n]
c=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
goal=owner(0x102f22c);queue=collections.deque([(owner(0xfad3b8),[])]);seen=set();result=None
while queue and len(seen)<15000:
 a,path=queue.popleft()
 if a in seen:continue
 seen.add(a)
 if a==goal:result=path;break
 i=bisect.bisect_left(starts,a);end=ranges[i][1] if i<len(ranges) and starts[i]==a else a+4
 for ins in c.disasm(read(a,end-a),a):
  if ins.mnemonic in ['b','bl'] and ins.op_str.startswith('#'):
   target=int(ins.op_str[1:],16);dest=owner(target)
   if dest!=a and 0xf00000<=dest<0x1100000:queue.append((dest,path+[{'from':hex(a),'site':hex(ins.address),'instruction':ins.mnemonic+' '+ins.op_str,'target':hex(target),'function':hex(dest)}]))
out={'binarySha256':hashlib.sha256(p.read_bytes()).hexdigest(),'scanFunction':[hex(goal),hex(ranges[starts.index(goal)][1])],'gcExport':'il2cpp_gc_collect 0xfad3b8','path':result,'visited':len(seen),'referencedString':read(0x439981e,100).split(b'\0')[0].decode()}
Path('gc-path.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
