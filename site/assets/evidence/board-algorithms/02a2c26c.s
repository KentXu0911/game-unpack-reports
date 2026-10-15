# Royal.Scenes.Game.Levels.Units.FallManager$$IsFallPossibleFromCellToCell
# Next metadata method 0x2a2c2f8, not a proven function boundary.
02a2c26c: f40f1ef8 str      x20, [sp, #-0x20]!
02a2c270: f37b01a9 stp      x19, x30, [sp, #0x10]
02a2c274: 010400b4 cbz      x1, #0x2a2c2f4
02a2c278: f30302aa mov      x19, x2
02a2c27c: f40301aa mov      x20, x1
02a2c280: e00301aa mov      x0, x1
02a2c284: e1031f2a mov      w1, wzr
02a2c288: e2031f2a mov      w2, wzr
02a2c28c: e3031faa mov      x3, xzr
02a2c290: a7760294 bl       #0x2ac9d2c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallBlocked
02a2c294: e803002a mov      w8, w0
02a2c298: e0031f2a mov      w0, wzr
02a2c29c: 68020037 tbnz     w8, #0, #0x2a2c2e8
02a2c2a0: 800a40f9 ldr      x0, [x20, #0x10]
02a2c2a4: 800200b4 cbz      x0, #0x2a2c2f4
02a2c2a8: e1031faa mov      x1, xzr
02a2c2ac: f466f497 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
02a2c2b0: a0010036 tbz      w0, #0, #0x2a2c2e4
02a2c2b4: 800a40f9 ldr      x0, [x20, #0x10]
02a2c2b8: e00100b4 cbz      x0, #0x2a2c2f4
02a2c2bc: e1031faa mov      x1, xzr
02a2c2c0: e866f497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a2c2c4: 800100b4 cbz      x0, #0x2a2c2f4
02a2c2c8: 080040f9 ldr      x8, [x0]
02a2c2cc: e10313aa mov      x1, x19
02a2c2d0: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a2c2d4: 033d42f9 ldr      x3, [x8, #0x478]
02a2c2d8: 024142f9 ldr      x2, [x8, #0x480]
02a2c2dc: f40742f8 ldr      x20, [sp], #0x20
02a2c2e0: 60001fd6 br       x3
02a2c2e4: 20008052 mov      w0, #1
02a2c2e8: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a2c2ec: f40742f8 ldr      x20, [sp], #0x20
02a2c2f0: c0035fd6 ret      
02a2c2f4: 4d149697 bl       #0xfb1428
