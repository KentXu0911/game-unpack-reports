# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerSpecialItemStrategy$$OnTargetReached
# Linear span; next metadata entry is not a proven CFG boundary.
033a43a0: ffc302d1 sub      sp, sp, #0xb0
033a43a4: f75b08a9 stp      x23, x22, [sp, #0x80]
033a43a8: f55309a9 stp      x21, x20, [sp, #0x90]
033a43ac: f37b0aa9 stp      x19, x30, [sp, #0xa0]
033a43b0: 160f01d0 adrp     x22, #0x5586000
033a43b4: c85a6739 ldrb     w8, [x22, #0x9d6]
033a43b8: f40302aa mov      x20, x2
033a43bc: f50301aa mov      x21, x1
033a43c0: f30300aa mov      x19, x0
033a43c4: c8000037 tbnz     w8, #0, #0x33a43dc
033a43c8: e0ef0090 adrp     x0, #0x51a0000
033a43cc: 00bc46f9 ldr      x0, [x0, #0xd78]
033a43d0: cc337097 bl       #0xfb1300
033a43d4: 28008052 mov      w8, #1
033a43d8: c85a2739 strb     w8, [x22, #0x9d6]
033a43dc: 680240f9 ldr      x8, [x19]
033a43e0: 97524039 ldrb     w23, [x20, #0x14]
033a43e4: e00313aa mov      x0, x19
033a43e8: e10315aa mov      x1, x21
033a43ec: 092541f9 ldr      x9, [x8, #0x248]
033a43f0: 022941f9 ldr      x2, [x8, #0x250]
033a43f4: e8030091 mov      x8, sp
033a43f8: f6020012 and      w22, w23, #1
033a43fc: 20013fd6 blr      x9
033a4400: e81b40f9 ldr      x8, [sp, #0x30]
033a4404: e18340ad ldp      q1, q0, [sp, #0x10]
033a4408: e203c03d ldr      q2, [sp]
033a440c: e83b00f9 str      x8, [sp, #0x70]
033a4410: e18302ad stp      q1, q0, [sp, #0x50]
033a4414: e213803d str      q2, [sp, #0x40]
033a4418: 820600ad stp      q2, q1, [x20]
033a441c: 89524039 ldrb     w9, [x20, #0x14]
033a4420: 881a00f9 str      x8, [x20, #0x30]
033a4424: 800a803d str      q0, [x20, #0x20]
033a4428: 3601162a orr      w22, w9, w22
033a442c: 96520039 strb     w22, [x20, #0x14]
033a4430: 37010037 tbnz     w23, #0, #0x33a4454
033a4434: f50500b4 cbz      x21, #0x33a44f0
033a4438: e00315aa mov      x0, x21
033a443c: e1031f2a mov      w1, wzr
033a4440: e2031faa mov      x2, xzr
033a4444: 569edc97 bl       #0x2acbd9c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellySpreadBlockingItem
033a4448: c802200a bic      w8, w22, w0
033a444c: 08010012 and      w8, w8, #1
033a4450: 88520039 strb     w8, [x20, #0x14]
033a4454: 828240ad ldp      q2, q0, [x20, #0x10]
033a4458: 881a40f9 ldr      x8, [x20, #0x30]
033a445c: 8102c03d ldr      q1, [x20]
033a4460: 601640f9 ldr      x0, [x19, #0x28]
033a4464: e28300ad stp      q2, q0, [sp, #0x10]
033a4468: e81b00f9 str      x8, [sp, #0x30]
033a446c: e103803d str      q1, [sp]
033a4470: 000400b4 cbz      x0, #0x33a44f0
033a4474: 080040f9 ldr      x8, [x0]
033a4478: e00b40ad ldp      q0, q2, [sp]
033a447c: e10bc03d ldr      q1, [sp, #0x20]
033a4480: e91b40f9 ldr      x9, [sp, #0x30]
033a4484: 0a8542f9 ldr      x10, [x8, #0x508]
033a4488: e00b02ad stp      q0, q2, [sp, #0x40]
033a448c: e11b803d str      q1, [sp, #0x60]
033a4490: e93b00f9 str      x9, [sp, #0x70]
033a4494: 028942f9 ldr      x2, [x8, #0x510]
033a4498: f4ef0090 adrp     x20, #0x51a0000
033a449c: 94be46f9 ldr      x20, [x20, #0xd78]
033a44a0: e1030191 add      x1, sp, #0x40
033a44a4: 40013fd6 blr      x10
033a44a8: 00102c1e fmov     s0, #0.50000000
033a44ac: e00313aa mov      x0, x19
033a44b0: 85feff97 bl       #0x33a3ec4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerSpecialItemStrategy$$FinishOperationWithDelay
033a44b4: 880240f9 ldr      x8, [x20]
033a44b8: f30300aa mov      x19, x0
033a44bc: 09e140b9 ldr      w9, [x8, #0xe0]
033a44c0: 69000035 cbnz     w9, #0x33a44cc
033a44c4: e00308aa mov      x0, x8
033a44c8: cf337097 bl       #0xfb1404
033a44cc: e00313aa mov      x0, x19
033a44d0: e1031faa mov      x1, xzr
033a44d4: e2031faa mov      x2, xzr
033a44d8: 8952c297 bl       #0x2438efc ; Royal.Scenes.Game.Context.GameContext$$ManualStartCoroutine
033a44dc: f37b4aa9 ldp      x19, x30, [sp, #0xa0]
033a44e0: f55349a9 ldp      x21, x20, [sp, #0x90]
033a44e4: f75b48a9 ldp      x23, x22, [sp, #0x80]
033a44e8: ffc30291 add      sp, sp, #0xb0
033a44ec: c0035fd6 ret      
033a44f0: ce337097 bl       #0xfb1428
