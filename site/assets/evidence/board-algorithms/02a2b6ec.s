# Royal.Scenes.Game.Levels.Units.FallManager$$CalculateCrossFalls
# Next metadata method 0x2a2b77c, not a proven function boundary.
02a2b6ec: f553bea9 stp      x21, x20, [sp, #-0x20]!
02a2b6f0: f37b01a9 stp      x19, x30, [sp, #0x10]
02a2b6f4: 14400191 add      x20, x0, #0x50
02a2b6f8: f30300aa mov      x19, x0
02a2b6fc: e00314aa mov      x0, x20
02a2b700: e1031faa mov      x1, xzr
02a2b704: dd730294 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
02a2b708: e00314aa mov      x0, x20
02a2b70c: e1031faa mov      x1, xzr
02a2b710: c4730294 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
02a2b714: c00200b4 cbz      x0, #0x2a2b76c
02a2b718: 753240f9 ldr      x21, [x19, #0x60]
02a2b71c: f50200b4 cbz      x21, #0x2a2b778
02a2b720: e00315aa mov      x0, x21
02a2b724: e1031faa mov      x1, xzr
02a2b728: ff770294 bl       #0x2ac9724 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsNormalCell
02a2b72c: e0fe0736 tbz      w0, #0, #0x2a2b708
02a2b730: a8c24039 ldrb     w8, [x21, #0x30]
02a2b734: a8feff34 cbz      w8, #0x2a2b708
02a2b738: a00a40f9 ldr      x0, [x21, #0x10]
02a2b73c: e00100b4 cbz      x0, #0x2a2b778
02a2b740: e1031faa mov      x1, xzr
02a2b744: 366af497 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
02a2b748: 00fe0737 tbnz     w0, #0, #0x2a2b708
02a2b74c: e00315aa mov      x0, x21
02a2b750: e1031faa mov      x1, xzr
02a2b754: bb760294 bl       #0x2ac9240 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsInBelowBoards
02a2b758: 80fd0737 tbnz     w0, #0, #0x2a2b708
02a2b75c: e00313aa mov      x0, x19
02a2b760: e10315aa mov      x1, x21
02a2b764: 3d020094 bl       #0x2a2c058 ; Royal.Scenes.Game.Levels.Units.FallManager$$FindCrossItem
02a2b768: e8ffff17 b        #0x2a2b708
02a2b76c: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a2b770: f553c2a8 ldp      x21, x20, [sp], #0x20
02a2b774: c0035fd6 ret      
02a2b778: 2c179697 bl       #0xfb1428
