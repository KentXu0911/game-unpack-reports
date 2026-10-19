# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$IsReadyForLightball
# Linear span; next metadata entry is not a proven CFG boundary.
0239d290: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
0239d294: a10200b4 cbz      x1, #0x239d2e8
0239d298: 206040f9 ldr      x0, [x1, #0xc0]
0239d29c: f30301aa mov      x19, x1
0239d2a0: 400200b4 cbz      x0, #0x239d2e8
0239d2a4: e1031faa mov      x1, xzr
0239d2a8: 90b91c94 bl       #0x2acb8e8 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasTouchBlockingItemExceptChain
0239d2ac: 60010037 tbnz     w0, #0, #0x239d2d8
0239d2b0: 600a40f9 ldr      x0, [x19, #0x10]
0239d2b4: a00100b4 cbz      x0, #0x239d2e8
0239d2b8: e1031faa mov      x1, xzr
0239d2bc: f0a20e94 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
0239d2c0: c0000036 tbz      w0, #0, #0x239d2d8
0239d2c4: e00313aa mov      x0, x19
0239d2c8: e1031faa mov      x1, xzr
0239d2cc: 38b01c94 bl       #0x2ac93ac ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsReserved
0239d2d0: 08000052 eor      w8, w0, #1
0239d2d4: 02000014 b        #0x239d2dc
0239d2d8: e8031f2a mov      w8, wzr
0239d2dc: 00010012 and      w0, w8, #1
0239d2e0: f37bc1a8 ldp      x19, x30, [sp], #0x10
0239d2e4: c0035fd6 ret      
0239d2e8: 5050b097 bl       #0xfb1428
