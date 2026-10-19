#!/usr/bin/env python3
"""Read-only extraction from RM38174 ARM64 ELF, metadata and exported TextAssets.
Requires capstone + pyelftools. Writes only this report repository. Native spans
end at the next distinct metadata entry; they are NOT recovered full CFGs.
"""
import argparse, bisect, collections, csv, hashlib, io, json, re, struct, zipfile
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
EXPECTED = '8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd'

def sha(b): return hashlib.sha256(b).hexdigest()
def write_json(p, v): p.write_text(json.dumps(v, ensure_ascii=False, indent=2)+'\n')
def write_csv(p, rows):
    with p.open('w', newline='', encoding='utf-8-sig') as f:
        w=csv.DictWriter(f, fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--workspace', type=Path, default=ROOT.parent);a=ap.parse_args()
    ws=a.workspace.resolve();audit=ws/'royal-match-apk-audit-38174'
    bp=ws/'research/rm-reunpack-2026-10-14/native/libil2cpp.so';data=bp.read_bytes();assert sha(data)==EXPECTED
    sp=audit/'tools/il2cppdumper/output-arm64/script.json';dp=sp.with_name('dump.cs');dump=dp.read_text();symbols=json.loads(sp.read_text())['ScriptMethod']
    methods=collections.defaultdict(list)
    for m in symbols:
        if m['Address']>0: methods[m['Address']].append(m['Name'])
    starts=sorted(methods)
    elf=ELFFile(io.BytesIO(data));loads=[s for s in elf.iter_segments() if s['p_type']=='PT_LOAD']
    def read(va,n):
        s=next(s for s in loads if s['p_vaddr']<=va and va+n<=s['p_vaddr']+s['p_filesz'])
        off=s['p_offset']+va-s['p_vaddr'];return data[off:off+n]
    def owner(va): return methods[starts[bisect.bisect_right(starts,va)-1]][0]
    decoder=Cs(CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN);decoder.skipdata=True
    def capture(addresses, out):
        out.mkdir(parents=True,exist_ok=True);entries=[]
        with zipfile.ZipFile(out/'native.zip','w',zipfile.ZIP_DEFLATED) as z:
            for start in sorted(addresses):
                end=starts[bisect.bisect_right(starts,start)];b=read(start,end-start)
                lines=['# '+' | '.join(methods[start]),'# Linear span to next metadata entry; not a complete CFG.']
                for ins in decoder.disasm(b,start):
                    extra=''
                    if ins.mnemonic in ('b','bl') and ins.op_str.startswith('#0x'):
                        names=methods.get(int(ins.op_str[1:],16),[])
                        if names: extra=' ; '+' | '.join(names)
                    lines.append(f'{ins.address:08x}: {ins.bytes.hex()} {ins.mnemonic:8s} {ins.op_str}{extra}')
                for suffix,body in [('bin',b),('s',('\n'.join(lines)+'\n').encode())]:
                    zi=zipfile.ZipInfo(f'{start:08x}.{suffix}',(2026,10,19,0,0,0));zi.compress_type=zipfile.ZIP_DEFLATED;z.writestr(zi,body)
                entries.append(dict(address=hex(start),end=hex(end),names=methods[start],bytes=len(b),sha256=sha(b)))
        manifest=dict(sampleSha256=EXPECTED,methodIndexSha256=sha(sp.read_bytes()),dumpSha256=sha(dp.read_bytes()),boundary='Linear span to next distinct metadata address; full CFG and full semantic recovery not claimed.',methods=entries,archiveSha256=sha((out/'native.zip').read_bytes()))
        write_json(out/'manifest.json',manifest);return manifest
    plane={m['Address'] for m in symbols if m['Address']>0 and (m['Name'].endswith('$$GetExplodeScore') or any(k in m['Name'] for k in ['.PropellerItem.','.ExplodeTargetFinder$$','.GuidedExploderItemModel$$','.WinCalculationData$$','.ExplodeTargetMediator$$']))}
    plane.update([0x3384988,0x338bab0,0x3384920,0x338493c,0x33849ac,0x30ed930,0x338c910,0x2d3a4b0])
    po=ROOT/'site/assets/evidence/plane-deep';pm=capture(plane,po)
    block=dump[dump.index('public enum ItemType //'):];block=block[:block.index('\n// Namespace:')]
    enum={int(v):n for n,v in re.findall(r'const ItemType (\w+) = (\d+)',block)}
    raw=read(0x3f092ec,115*4);scores=struct.unpack('<115i',raw)
    rows=[dict(itemType=i,name=enum.get(i,'<no named enum>'),baseScore=scores[i-1],tableIndex=i-1) for i in range(1,116)]
    write_csv(po/'base-scores.csv',rows);write_json(po/'base-scores.json',dict(address='0x3f092ec',sha256=sha(raw),index='ItemType - 1; 0 and out of range return 0',limit='Base score only; overrides and cell layers can change final score.',rows=rows))
    overrides=[dict(address=hex(m['Address']),name=m['Name'],semanticStatus='captured; not automatically semantically recovered') for m in symbols if m['Address']>0 and m['Name'].endswith('$$GetExplodeScore')]
    write_json(po/'score-methods.json',overrides)
    do=ROOT/'site/assets/evidence/difficulty-deep';do.mkdir(parents=True,exist_ok=True)
    diff={m['Address'] for m in symbols if m['Address']>0 and ('SemiDynamicDifficulty$$' in m['Name'] or 'BitwiseOperations$$' in m['Name'] or ('.UserInventory$$' in m['Name'] and 0x2a0e5d8<=m['Address']<=0x2a0e940))}
    diff.update([0x2a31474,0x2a31478,0x1f0a340,0x2a0dc20,0x2a0dc40,0x2a0dc7c,0x268b474]);dm=capture(diff,do)
    configs={};provenance=[]
    for kind,pid in [('Easy',15925),('Hard',13895)]:
        cp=audit/f'decoded/config/DynamicDifficulty{kind}.json';tp=audit/f'decoded/text/datapack.unity3d_{pid}_DynamicDifficulty{kind}.bin'
        original=tp.read_bytes();j=json.loads(original);assert j==json.loads(cp.read_text())
        configs[kind]=j['difficultyData'];(do/f'DynamicDifficulty{kind}.json').write_bytes(original)
        provenance.append(dict(file=f'DynamicDifficulty{kind}.json',source=str(tp.relative_to(ws)),bundle='assetpack/assets/bin/Data/datapack.unity3d',pathId=pid,sha256=sha(original),bytes=len(original)))
    assert len(configs['Easy'])==len(configs['Hard'])==43
    rows=[]
    for e,h in zip(configs['Easy'],configs['Hard']):
        assert all(e[k]==h[k] for k in ['level','section','levelStart','levelEnd','minTryCountEasy','maxTryCountEasy'])
        rows.append(dict(h,hardFieldsPresent=h['minTryCountHard']!=-1 or h['maxTryCountHard']!=-1))
    write_csv(do/'thresholds.csv',rows);write_json(do/'thresholds.json',dict(sources=provenance,rows=rows,meaning='hardFieldsPresent is table presence, NOT runtime enabled. -1 sentinel meaning and table consumer unresolved.'))
    # Direct B/BL only. Interface/delegate/indirect calls are outside this scan.
    calls=[]
    for s in loads:
        if not s['p_flags']&1:continue
        b=read(s['p_vaddr'],s['p_filesz']);va=s['p_vaddr']
        for i,(word,) in enumerate(struct.iter_unpack('<I',b[:len(b)//4*4])):
            if word & 0x7c000000 != 0x14000000:continue
            imm=word&0x3ffffff
            if imm&0x2000000:imm-=0x4000000
            address=va+i*4;target=address+imm*4
            if target in diff: calls.append(dict(site=hex(address),kind='bl' if word&0x80000000 else 'b',target=hex(target),callee=methods[target][0],caller=owner(address)))
    write_json(do/'direct-calls.json',dict(limit='Direct B/BL immediates only; no indirect/interface/delegate references.',calls=calls))
    # Preserve class/enum field declarations used to interpret native offsets.
    excerpts={}
    for name in ['SemiDynamicDifficulty','UserInventory','BitwiseOperations','DefaultPropellerPilot','GuidedExploderFlyState','GuidedExploderType','MultipleCellItemModel','CupboardItemModel','ItemType','UserSkill','UserActiveLevelData']:
        match=re.search(r'^public (?:abstract |static |sealed )?(?:class|enum) '+name+r'(?=[ :])',dump,re.M)
        if match:
            end=dump.find('\n// Namespace:',match.start());excerpts[name]=dump[match.start():end]
    write_json(po/'metadata-excerpts.json',dict(dumpSha256=sha(dp.read_bytes()),classes=excerpts))
    tokens=['DynamicDifficultyEasy','DynamicDifficultyHard','difficultyData','minTryCountEasy','maxTryCountEasy','minTryCountHard','maxTryCountHard']
    write_json(do/'consumer-search.json',dict(scope='Exact case-sensitive text in build38174 dump.cs only; absence does not prove no reflective/stripped consumer.',dumpSha256=sha(dp.read_bytes()),hits={t:dump.count(t) for t in tokens}))
    write_json(do/'extraction-summary.json',dict(sampleSha256=EXPECTED,planeMethods=len(pm['methods']),scoreMethodEntries=len(overrides),difficultyMethods=len(dm['methods']),directCallSites=len(calls),configSections=len(rows),sources=provenance))
    print(json.dumps(dict(planeMethods=len(pm['methods']),scoreMethods=len(overrides),difficultyMethods=len(dm['methods']),directCallSites=len(calls)),ensure_ascii=False))
if __name__=='__main__':main()
