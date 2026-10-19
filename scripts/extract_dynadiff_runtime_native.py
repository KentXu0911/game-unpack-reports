#!/usr/bin/env python3
"""Read-only original method snapshots for the bounded runtime checks."""
import argparse,json,hashlib,zipfile
from pathlib import Path
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
from elftools.elf.elffile import ELFFile
repo=Path(__file__).resolve().parents[1]
ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--workspace',type=Path,default=repo.parent);args=ap.parse_args()
root=args.workspace.resolve();out=repo/'site/assets/evidence/dynadiff-runtime'
sample=root/'research/rm-reunpack-2026-10-14/native/libil2cpp.so'
index=root/'royal-match-apk-audit-38174/tools/il2cppdumper/output-arm64/script.json'
ms=json.loads(index.read_text())['ScriptMethod']; addresses=sorted(set(m['Address'] for m in ms)); names={}
for m in ms:names.setdefault(m['Address'],[]).append(m['Name'])
targets=[0x2a097f4,0x1c8532c,0x2a30e64,0x2a3116c,0x20e9ca4,0x38e6398,0x20f22e8,0x20ef844,0x20f1e24,0x2d398ac,0x2ac8a28,0x37dff54]
manifest={'sampleSha256':hashlib.sha256(sample.read_bytes()).hexdigest(),'indexSha256':hashlib.sha256(index.read_bytes()).hexdigest(),'boundary':'Linear spans ending at next distinct metadata entry, not complete CFG. Unclassified read uses a separate 128-byte instruction window.','methods':[]}
with sample.open('rb') as f,zipfile.ZipFile(out/'native.zip','w',zipfile.ZIP_DEFLATED) as z:
 e=ELFFile(f);segments=[(s['p_vaddr'],s.data()) for s in e.iter_segments() if s['p_filesz']]
 for start in targets+[0x102f20c]:
  end=addresses[addresses.index(start)+1] if start in addresses else start+128
  seg,buf=next((s,b) for s,b in segments if s<=start< s+len(b));data=buf[start-seg:end-seg]
  stem=f'{start:08x}';z.writestr(stem+'.bin',data)
  asm='\n'.join(f'0x{i.address:x}: {i.mnemonic} {i.op_str}' for i in Cs(CS_ARCH_ARM64,CS_MODE_ARM).disasm(data,start))+'\n';z.writestr(stem+'.asm',asm)
  manifest['methods'].append(dict(address=hex(start),end=hex(end),names=names.get(start,['unclassified native instruction window']),sha256=hashlib.sha256(data).hexdigest(),bytes=len(data)))
(out/'native-manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
print(len(targets),'methods + unclassified read window captured')
