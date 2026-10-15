# Royal.Scenes.Game.Levels.Units.FallManager$$CalculateStraightFalls
# Next metadata method 0x2a2b6ec, not a proven function boundary.
02a2b650: ffc300d1 sub      sp, sp, #0x30
02a2b654: f55301a9 stp      x21, x20, [sp, #0x10]
02a2b658: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2b65c: 14400191 add      x20, x0, #0x50
02a2b660: f30300aa mov      x19, x0
02a2b664: e00314aa mov      x0, x20
02a2b668: e1031faa mov      x1, xzr
02a2b66c: ff0700f9 str      xzr, [sp, #8]
02a2b670: 02740294 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
02a2b674: e00314aa mov      x0, x20
02a2b678: e1031faa mov      x1, xzr
02a2b67c: e9730294 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
02a2b680: c00200b4 cbz      x0, #0x2a2b6d8
02a2b684: 753240f9 ldr      x21, [x19, #0x60]
02a2b688: 150300b4 cbz      x21, #0x2a2b6e8
02a2b68c: e00315aa mov      x0, x21
02a2b690: e1031faa mov      x1, xzr
02a2b694: eb760294 bl       #0x2ac9240 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsInBelowBoards
02a2b698: e0fe0737 tbnz     w0, #0, #0x2a2b674
02a2b69c: e2230091 add      x2, sp, #8
02a2b6a0: e00313aa mov      x0, x19
02a2b6a4: e10315aa mov      x1, x21
02a2b6a8: d9000094 bl       #0x2a2ba0c ; Royal.Scenes.Game.Levels.Units.FallManager$$FindTargetItemOrFillingCell
02a2b6ac: a00a40f9 ldr      x0, [x21, #0x10]
02a2b6b0: c00100b4 cbz      x0, #0x2a2b6e8
02a2b6b4: e1031faa mov      x1, xzr
02a2b6b8: 596af497 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
02a2b6bc: c0fd0737 tbnz     w0, #0, #0x2a2b674
02a2b6c0: e10740f9 ldr      x1, [sp, #8]
02a2b6c4: 81fdffb4 cbz      x1, #0x2a2b674
02a2b6c8: e00313aa mov      x0, x19
02a2b6cc: e20315aa mov      x2, x21
02a2b6d0: f1010094 bl       #0x2a2be94 ; Royal.Scenes.Game.Levels.Units.FallManager$$CreateItemFromFillingCell
02a2b6d4: e8ffff17 b        #0x2a2b674
02a2b6d8: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2b6dc: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2b6e0: ffc30091 add      sp, sp, #0x30
02a2b6e4: c0035fd6 ret      
02a2b6e8: 50179697 bl       #0xfb1428
