import argparse,json,sys,traceback,time,subprocess
from pathlib import Path
import frida
ap=argparse.ArgumentParser();ap.add_argument('--device',default='emulator-5556');ap.add_argument('--script',default='probe-natural.js');ap.add_argument('--log',default='events.jsonl');ap.add_argument('--spawn',action='store_true');ap.add_argument('--state');ap.add_argument('--watch',action='store_true');a=ap.parse_args()
d=frida.get_device(a.device)
if a.spawn:pid=d.spawn(['com.dreamgames.royalmatch'])
else:
 ps=[p for p in d.enumerate_processes() if p.name=='Royal Match'];assert len(ps)==1,ps;pid=ps[0].pid
s=d.attach(pid);script=s.create_script(Path(a.script).read_text());f=Path(a.log).open('a')
def msg(m,data):
 f.write(json.dumps(m,ensure_ascii=False)+'\n');f.flush()
 if m.get('payload',{}).get('kind') not in ['rng','fill','fill-placement']:print('EVENT '+json.dumps(m,ensure_ascii=False),flush=True)
script.on('message',msg)
try:
 script.load()
 script.exports_sync.configure(a.state,a.watch)
 if a.spawn:d.resume(pid)
 for line in sys.stdin:
  try:
   cmd=json.loads(line)
   if cmd.get('method')=='exit':break
   if cmd['method'] in ['stableplay','stablereplay']:
    def settled():
     previous=None;stableSince=None;deadline=time.time()+45
     while time.time()<deadline:
      snap=script.exports_sync.snapshot()
      key=json.dumps(snap.get('board'),sort_keys=True)
      ok=snap.get('steady')==1 and snap.get('specialOps')==0 and not any(snap.get('operations',[]))
      if snap.get('state') in [2,3,4,5] or snap.get('left',1)<=0:ok=True
      elif not snap.get('hints') or not snap.get('finished'):ok=False
      if not ok:f.write(json.dumps({'unstable':{k:snap.get(k) for k in ['frame','steady','specialOps','operations','left','finished']}})+'\n');f.flush()
      if ok and key==previous:
       if stableSince is None:stableSince=time.time()
       if stableSince is not None and time.time()-stableSince>=1.0:return snap
      else:stableSince=time.time() if ok else None
      previous=key;time.sleep(.25)
     raise RuntimeError('Board did not become stable')
    actions=[]
    source=[json.loads(l)['action'] for l in Path(cmd['source']).read_text().splitlines() if 'action' in json.loads(l)] if cmd.get('source') else []
    for index in range(cmd.get('limit',25)):
     snap=settled()
     if snap.get('left',0)<=0 or snap.get('state') in [2,3,4,5]:break
     if source:
      expected=source[index]
      same=snap['board']==expected['board']
      f.write(json.dumps({'comparison':{'step':index+1,'boardEqual':same,'movesEqual':snap['left']==expected['beforeMoves'],'snapshot':snap}})+'\n');f.flush()
      print('COMPARE',index+1,same,flush=True)
      if not same and cmd.get('stopOnDiff',True):break
      hint=expected['hint']
     else:hint=sorted(snap['hints'],key=lambda h:json.dumps(h))[0]
     script.exports_sync.step(index+1)
     def xy(p):return [round(76+116.4*p[0]),round(1785-116.4*p[1])]
     first=xy(hint[0]);second=xy(hint[1]) if hint[1] else first
     args=['input','tap',*map(str,first)] if first==second else ['input','swipe',*map(str,first),*map(str,second),'160']
     action={'step':index+1,'beforeMoves':snap['left'],'hint':hint,'input':args,'board':snap['board'],'snapshot':snap};actions.append(action)
     f.write(json.dumps({'action':action})+'\n');f.flush()
     subprocess.run(['adb','-s',a.device,'shell',*args],check=True)
     print('ACTION',index+1,snap['left'],hint,flush=True);time.sleep(.5)
    value={'actions':len(actions),'final':settled()}
   else:value=getattr(script.exports_sync,cmd['method'])(*cmd.get('args',[]))
   record={'method':cmd['method'],'result':value};f.write(json.dumps(record,ensure_ascii=False)+'\n');f.flush();print('RESULT '+json.dumps(record,ensure_ascii=False),flush=True)
  except Exception as e: print('ERROR '+str(e),flush=True)
finally:
 script.unload();s.detach();f.close()
