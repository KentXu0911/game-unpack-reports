import argparse,json,sys,traceback,time,subprocess
from pathlib import Path
import frida
ap=argparse.ArgumentParser();ap.add_argument('--device',default='emulator-5556');ap.add_argument('--script',default='probe.js');ap.add_argument('--log',default='events.jsonl');ap.add_argument('--spawn',action='store_true');ap.add_argument('--state');ap.add_argument('--watch',action='store_true');a=ap.parse_args()
d=frida.get_device(a.device)
if a.spawn:pid=d.spawn(['com.dreamgames.royalmatch'])
else:
 ps=[p for p in d.enumerate_processes() if p.name=='Royal Match'];assert len(ps)==1,ps;pid=ps[0].pid
s=d.attach(pid);script=s.create_script(Path(a.script).read_text());f=Path(a.log).open('a')
def msg(m,data):
 f.write(json.dumps(m,ensure_ascii=False)+'\n');f.flush();print('EVENT '+json.dumps(m,ensure_ascii=False),flush=True)
script.on('message',msg)
try:
 script.load()
 script.exports_sync.configure(a.state,a.watch)
 if a.spawn:d.resume(pid)
 for line in sys.stdin:
  try:
   cmd=json.loads(line)
   if cmd.get('method')=='exit':break
   if cmd['method']=='replay':
    source=[json.loads(l)['action'] for l in Path(cmd['source']).read_text().splitlines() if 'action' in json.loads(l)]
    for action in source[:cmd.get('limit',25)]:
     snap=script.exports_sync.snapshot()
     for wait in range(40):
      if snap.get('finished') and snap.get('hints'):break
      time.sleep(.5);snap=script.exports_sync.snapshot()
     record={'replayBefore':snap,'expectedBeforeMoves':action['beforeMoves'],'boardEqual':snap.get('board')==action.get('board'),'input':action['input']}
     f.write(json.dumps(record)+'\n');f.flush();print('REPLAY '+json.dumps({k:v for k,v in record.items() if k!='replayBefore'}),flush=True)
     if not record['boardEqual'] or snap.get('left')!=action['beforeMoves']:raise RuntimeError('Replay diverged before input')
     subprocess.run(['adb','-s',a.device,'shell',*action['input']],check=True)
     time.sleep(1.8)
    value=script.exports_sync.snapshot()
   elif cmd['method']=='play':
    actions=[];last=-1
    for attempt in range(cmd.get('limit',25)):
     snap=script.exports_sync.snapshot()
     for wait in range(20):
      if snap.get('finished') and snap.get('hints'):break
      if snap.get('left',1)<=0:break
      time.sleep(0.5);snap=script.exports_sync.snapshot()
     if not snap.get('hints') or snap.get('left',0)<=0:break
     hint=sorted(snap['hints'],key=lambda h: json.dumps(h))[0]
     def xy(p):return [round(76+116.4*p[0]),round(1785-116.4*p[1])]
     first=xy(hint[0]);second=xy(hint[1]) if hint[1] else first
     args=['input','tap',*map(str,first)] if first==second else ['input','swipe',*map(str,first),*map(str,second),'160']
     subprocess.run(['adb','-s',a.device,'shell',*args],check=True)
     action={'beforeMoves':snap['left'],'hint':hint,'input':args,'board':snap.get('board')};actions.append(action)
     f.write(json.dumps({'action':action})+'\n');f.flush();print('ACTION '+json.dumps({k:v for k,v in action.items() if k!='board'}),flush=True)
     time.sleep(1.8)
    value={'actions':len(actions),'final':script.exports_sync.snapshot()}
   else:value=getattr(script.exports_sync,cmd['method'])(*cmd.get('args',[]))
   record={'method':cmd['method'],'result':value};f.write(json.dumps(record,ensure_ascii=False)+'\n');f.flush();print('RESULT '+json.dumps(record,ensure_ascii=False),flush=True)
  except Exception as e: print('ERROR '+str(e),flush=True)
finally:
 script.unload();s.detach();f.close()
