# Royal.Scenes.Game.Levels.Units.FallManager$$GetNextItemOfCell
# Next metadata method 0x2a2c26c, not a proven function boundary.
02a2c1b4: f553bea9 stp      x21, x20, [sp, #-0x20]!
02a2c1b8: f37b01a9 stp      x19, x30, [sp, #0x10]
02a2c1bc: 610500b4 cbz      x1, #0x2a2c268
02a2c1c0: 330840f9 ldr      x19, [x1, #0x10]
02a2c1c4: f40301aa mov      x20, x1
02a2c1c8: 130500b4 cbz      x19, #0x2a2c268
02a2c1cc: e00313aa mov      x0, x19
02a2c1d0: e1031faa mov      x1, xzr
02a2c1d4: f50302aa mov      x21, x2
02a2c1d8: 8167f497 bl       #0x2745fdc ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasNextItem
02a2c1dc: 40030036 tbz      w0, #0, #0x2a2c244
02a2c1e0: e00313aa mov      x0, x19
02a2c1e4: e1031faa mov      x1, xzr
02a2c1e8: 7667f497 bl       #0x2745fc0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_NextItem
02a2c1ec: e00300b4 cbz      x0, #0x2a2c268
02a2c1f0: 080040f9 ldr      x8, [x0]
02a2c1f4: e10315aa mov      x1, x21
02a2c1f8: 093d42f9 ldr      x9, [x8, #0x478]
02a2c1fc: 024142f9 ldr      x2, [x8, #0x480]
02a2c200: 20013fd6 blr      x9
02a2c204: 00020036 tbz      w0, #0, #0x2a2c244
02a2c208: e00313aa mov      x0, x19
02a2c20c: e1031faa mov      x1, xzr
02a2c210: 6c67f497 bl       #0x2745fc0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_NextItem
02a2c214: a00200b4 cbz      x0, #0x2a2c268
02a2c218: 151c40f9 ldr      x21, [x0, #0x38]
02a2c21c: 750200b4 cbz      x21, #0x2a2c268
02a2c220: e00315aa mov      x0, x21
02a2c224: e1031faa mov      x1, xzr
02a2c228: 64802594 bl       #0x338c3b8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$HasTargetCell
02a2c22c: 40010036 tbz      w0, #0, #0x2a2c254
02a2c230: e00315aa mov      x0, x21
02a2c234: e1031faa mov      x1, xzr
02a2c238: 1f802594 bl       #0x338c2b4 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_TargetCell
02a2c23c: 1f0014eb cmp      x0, x20
02a2c240: a0000054 b.eq     #0x2a2c254
02a2c244: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a2c248: e0031faa mov      x0, xzr
02a2c24c: f553c2a8 ldp      x21, x20, [sp], #0x20
02a2c250: c0035fd6 ret      
02a2c254: e00313aa mov      x0, x19
02a2c258: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a2c25c: e1031faa mov      x1, xzr
02a2c260: f553c2a8 ldp      x21, x20, [sp], #0x20
02a2c264: 5767f417 b        #0x2745fc0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_NextItem
02a2c268: 70149697 bl       #0xfb1428
