'use strict';
let mod=null, inv=null, address=null, ready=false, armed=new Map(), seenStarts=new Set();
let hintP=null;
let phase='startup', inject=null, watchEnabled=false, hits=[], counts={}, queue=[], gapCount=0;
const own=Process.getCurrentThreadId();
function emit(kind,data){send(Object.assign({kind,phase,tid:Process.getCurrentThreadId(),time:Date.now()},data||{}));}
function relative(p){const m=Process.findModuleByAddress(p);return m?m.name+'+'+p.sub(m.base):p.toString();}
function str(p){try{let n=p.add(16).readS32();return n>=0&&n<256?p.add(20).readUtf16String(n):null;}catch(_){return null;}}
function roots(){let cell=mod.base.add(0x5208380).readPointer();let type=cell.readPointer();let user=type.add(0xb8).readPointer().readPointer();return {user,inventory:user.add(0x20).readPointer(),basic:user.add(0x18).readPointer()};}
function armThread(t){if(!watchEnabled||!address||t.id===own||/gum-js|gmain|gdbus|pool-frida/.test(t.name||''))return;
 try{t.setHardwareWatchpoint(0,address,8,'r');armed.set(t.id,t);emit('thread-armed',{id:t.id,name:t.name});}catch(e){gapCount++;emit('arm-error',{id:t.id,name:t.name,error:String(e)});}}
function armAll(){for(const t of Process.enumerateThreads())if(!armed.has(t.id))armThread(t);}
function unsetAll(){for(const t of armed.values())try{t.unsetHardwareWatchpoint(0);}catch(_){}armed.clear();}
function track(p){if(inv&&inv.equals(p))return;unsetAll();inv=p;address=p.add(0xb0);emit('inventory',{offset:'0xb0'});armAll();}
function getReg(c,r){if(r==='sp')return c.sp;if(r==='xzr'||r==='wzr')return ptr(0);return c[r.replace(/^w/,'x')];}
function setReg(c,r,v){if(r!=='xzr'&&r!=='wzr')c[r.replace(/^w/,'x')]=ptr(v);}
Process.setExceptionHandler(function(d){
 const tid=Process.getCurrentThreadId(), t=armed.get(tid);
 if((d.type!=='breakpoint'&&d.type!=='single-step')||!t)return false;
 t.unsetHardwareWatchpoint(0); // Disabled only while executing the handler, then rearmed before returning.
 try{
  const ins=Instruction.parse(d.context.pc),op=ins.opStr;
  const rec={pc:relative(d.context.pc),instruction:ins.toString(),stack:Thread.backtrace(d.context,Backtracer.ACCURATE).slice(0,24).map(relative)};
  // Emulate the faulting scalar LDR, preserving post-index register update and PC.
  const m=/^(x\d+|w\d+|xzr|wzr), \[(x\d+|sp)(?:, #(-?0x[0-9a-f]+|-?\d+))?\](!)?(?:, #(-?0x[0-9a-f]+|-?\d+))?$/.exec(op);
  if(ins.mnemonic!=='ldr'||!m)throw new Error('unsupported watch instruction '+ins);
  const base=getReg(d.context,m[2]),offset=m[3]?parseInt(m[3]):0;
  const mem=base.add(offset),width=m[1][0]==='x'?8:4;
  if(mem.compare(address.add(8))>=0||mem.add(width).compare(address)<=0)throw new Error('watch address mismatch');
  const v=width===8?mem.readU64().toString():mem.readU32();
  rec.value=String(v);rec.memOffset=mem.sub(address).toInt32();
  if(rec.pc==='libil2cpp.so+0x102f22c'){rec.lower=d.context.x28.toString();rec.upper=d.context.x27.toString();rec.outsideRange=ptr(v).compare(d.context.x28)<0||ptr(v).compare(d.context.x27)>=0;}
  setReg(d.context,m[1],v);
  if(m[4])setReg(d.context,m[2],mem);
  if(m[5])setReg(d.context,m[2],base.add(parseInt(m[5])));
  d.context.pc=ins.next;
  t.setHardwareWatchpoint(0,address,8,'r');hits.push(rec);emit('read',rec);return true;
 }catch(e){armed.delete(tid);gapCount++;emit('watch-gap',{error:String(e),pc:relative(d.context.pc)});return true;}
});
function hook(r,name,enter,leave){Interceptor.attach(mod.base.add(r),{onEnter(args){counts[name]=(counts[name]||0)+1;this.a=args;if(enter)enter.call(this,args);},onLeave(ret){if(leave)leave.call(this,ret);}});}
function setup(){if(ready)return;mod=Process.findModuleByName('libil2cpp.so');if(!mod)return;ready=true;
 hook(0x2a0f7b8,'inventoryCtor',function(a){track(a[0]);emit('constructor');});
 hook(0x2e70158,'getLong',function(a){this.keep=str(a[0])==='DynaDiff';},function(r){if(this.keep){const before=int64(r.toString()).toString();if(inject!==null)r.replace(ptr(inject));emit('restore-state',{before,after:int64(r.toString()).toString(),injected:inject!==null});}});
 hook(0x26849f4,'localRestore',function(){emit('restore-enter');},function(){emit('restore-leave');try{const o=roots();track(o.inventory);const previous=o.basic.add(0x14).readS32();o.basic.add(0x14).writeS32(101);emit('test-level',{previous,level:101});}catch(e){emit('root-error',{error:String(e)});}});
 hook(0x2a0e700,'updateDyna',function(a){track(a[0]);emit('update-state',{value:int64(a[1].toString()).toString()});});
 hook(0x2a097fc,'setDyna',function(a){track(a[0]);emit('set-state',{value:int64(a[1].toString()).toString()});});
 for(const r of [0x2a097f4,0x2a0e82c,0x2a0e84c,0x2a0e8a8,0x2a0e8f4])hook(r,'getter-'+r.toString(16),function(){emit('getter',{rva:'0x'+r.toString(16),caller:relative(this.returnAddress)});});
 hook(0x1c8532c,'moves',function(a){this.moves=a[1].toInt32();},function(r){emit('moves',{input:this.moves,output:r.toInt32()});});
 hook(0x2a313f0,'seed',function(a){emit('seed',{value:a[1].toInt32()});});
 for(const [r,n] of [[0x245bcf8,'start'],[0x245c858,'restart'],[0x245f170,'fail'],[0x245f310,'quit'],[0x245d6f8,'win']])hook(r,n,function(a){emit(n,{level:a[0].add(0x14).readS32(),moves:a[0].add(0x20).readS32()});});
 hook(0x30b954c,'hintUpdate',function(a){hintP=a[0];});
 hook(0x2a31c5c,'makeMove',function(a){this.p=a[0];},function(){emit('move-done',{left:this.p.add(0x20).readS32(),made:this.p.add(0x24).readS32()});});
 hook(0x20e9ca4,'fill',null,function(r){emit('fill',{item:r.toInt32()});});
 hook(0x37dff54,'update',function(){if(queue.length){let f=queue.shift();try{emit('queued-result',{result:f()});}catch(e){emit('queued-error',{error:String(e)});}}});
 emit('installed',{version:Frida.version,observer:typeof Process.attachThreadObserver});
}
const dl=Module.findExportByName(null,'android_dlopen_ext');Interceptor.attach(dl,{onLeave(){setup();}});setup();
const poll=setInterval(()=>{setup();if(watchEnabled)armAll();},250);
rpc.exports={configure(value,watch){inject=value;watchEnabled=watch;armAll();return true;},inspect(){let r={ready,phase,counts,hits:hits.length,gaps:gapCount,armed:[...armed.keys()]};try{let o=roots();r.state=o.inventory.add(0xb0).readS64().toString();r.level=o.basic.add(0x14).readS32();}catch(e){r.error=String(e);}return r;},run(src){return eval(src);},snapshot(){if(!hintP)return {pending:true};const list=hintP.add(0x58).readPointer();const arr=list.add(0x10).readPointer();const n=list.add(0x18).readS32();const hints=[];function point(p){return p.isNull()?null:[p.add(0x18).readS32(),p.add(0x1c).readS32()];}for(let i=0;i<Math.min(n,100);i++){const h=arr.add(0x20+i*0xb0);hints.push([point(h.readPointer()),point(h.add(8).readPointer())]);}const moves=hintP.add(0x30).readPointer();const grid=hintP.add(0x18).readPointer().add(0x40).readPointer();const cells=grid.add(0x10).readPointer();const count=cells.add(0x18).readU32();const board=[];for(let i=0;i<count;i++){const cell=cells.add(0x20+8*i).readPointer();if(cell.isNull())continue;const item=cell.add(0x10).readPointer().add(0x10).readPointer().add(0x18).readPointer();board.push({point:point(cell),type:cell.add(0xa0).readS32(),fill:cell.add(0xa4).readS32(),item:item.isNull()?null:{match:item.add(0x18).readS32(),tiled:item.add(0x1c).readS32(),layer:item.add(0x68).readS32()}});}return {hints,finished:hintP.add(0x54).readU8(),left:moves.add(0x20).readS32(),made:moves.add(0x24).readS32(),board};},mark(s){phase=s;emit('phase');return true;},stopwatch(){watchEnabled=false;unsetAll();return true;}};
emit('ready');
