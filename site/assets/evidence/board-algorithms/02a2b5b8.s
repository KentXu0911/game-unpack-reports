# Royal.Scenes.Game.Levels.Units.FallManager$$ClearTargetItems
# Next metadata method 0x2a2b650, not a proven function boundary.
02a2b5b8: f60f1df8 str      x22, [sp, #-0x30]!
02a2b5bc: f55301a9 stp      x21, x20, [sp, #0x10]
02a2b5c0: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2b5c4: 14400191 add      x20, x0, #0x50
02a2b5c8: f30300aa mov      x19, x0
02a2b5cc: e00314aa mov      x0, x20
02a2b5d0: e1031faa mov      x1, xzr
02a2b5d4: 29740294 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
02a2b5d8: e00314aa mov      x0, x20
02a2b5dc: e1031faa mov      x1, xzr
02a2b5e0: 10740294 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
02a2b5e4: c00200b4 cbz      x0, #0x2a2b63c
02a2b5e8: 753240f9 ldr      x21, [x19, #0x60]
02a2b5ec: 150300b4 cbz      x21, #0x2a2b64c
02a2b5f0: a00a40f9 ldr      x0, [x21, #0x10]
02a2b5f4: c00200b4 cbz      x0, #0x2a2b64c
02a2b5f8: e1031faa mov      x1, xzr
02a2b5fc: 886af497 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
02a2b600: c0fe0736 tbz      w0, #0, #0x2a2b5d8
02a2b604: e00315aa mov      x0, x21
02a2b608: e1031faa mov      x1, xzr
02a2b60c: 1c750294 bl       #0x2ac8a7c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_NextItem
02a2b610: f60300aa mov      x22, x0
02a2b614: e00315aa mov      x0, x21
02a2b618: e1031faa mov      x1, xzr
02a2b61c: 1f750294 bl       #0x2ac8a98 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_TargetItem
02a2b620: df0200eb cmp      x22, x0
02a2b624: a0fdff54 b.eq     #0x2a2b5d8
02a2b628: a00a40f9 ldr      x0, [x21, #0x10]
02a2b62c: 000100b4 cbz      x0, #0x2a2b64c
02a2b630: e1031faa mov      x1, xzr
02a2b634: e169f497 bl       #0x2745db8 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$ClearTargetItem
02a2b638: e8ffff17 b        #0x2a2b5d8
02a2b63c: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2b640: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2b644: f60743f8 ldr      x22, [sp], #0x30
02a2b648: c0035fd6 ret      
02a2b64c: 77179697 bl       #0xfb1428
