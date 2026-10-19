import json,hashlib,zipfile,bisect
from pathlib import Path
from elftools.elf.elffile import ELFFile
from capstone import *
p=Path('game-unpack-reports/site/assets/evidence/dynadiff-replay');p.mkdir(parents=True,exist_ok=True)
binary=Path('research/rm-reunpack-2026-10-14/native/libil2cpp.so');f=binary.open('rb');elf=ELFFile(f);segs=[(s['p_vaddr'],s.data()) for s in elf.iter_segments() if s['p_filesz']];methods=sorted(json.loads(Path('royal-match-apk-audit-38174/tools/il2cppdumper/output-arm64/script.json').read_text())['ScriptMethod'],key=lambda x:x['Address']);starts=sorted(set(x['Address'] for x in methods));c=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
targets=[0x2a30d10,0x2a30dec,0x2a30fe8,0x2a31478,0x276e234,0x350d408,0x20f1fd0,0x2dc0260,0x30baab4,0x137878c,0x2a314a8];manifest=[]
with zipfile.ZipFile(p/'native.zip','w',zipfile.ZIP_DEFLATED) as z:
 for target in targets:
  a=starts[bisect.bisect_right(starts,target)-1];end=starts[bisect.bisect_right(starts,a)];base,data=next((v,b) for v,b in segs if v<=a<v+len(b));raw=data[a-base:end-base];name=hex(a);z.writestr(name+'.bin',raw);z.writestr(name+'.asm','\n'.join(f'{i.address:#x}: {i.mnemonic} {i.op_str}' for i in c.disasm(raw,a)));manifest.append({'start':name,'end':hex(end),'boundary':'next metadata method, not complete CFG guarantee','sha256':hashlib.sha256(raw).hexdigest(),'methods':[x['Name'] for x in methods if x['Address']==a]})
(p/'native-manifest.json').write_text(json.dumps({'binarySha256':hashlib.sha256(binary.read_bytes()).hexdigest(),'functions':manifest},ensure_ascii=False,indent=2)+'\n');print('captured',len(manifest))
