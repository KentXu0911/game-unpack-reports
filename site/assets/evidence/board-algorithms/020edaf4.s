# Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$CalculateHorizontalRocketScore
# Next metadata method 0x20edb94, not a proven function boundary.
020edaf4: f40f1ef8 str      x20, [sp, #-0x20]!
020edaf8: f37b01a9 stp      x19, x30, [sp, #0x10]
020edafc: 131040f9 ldr      x19, [x0, #0x20]
020edb00: e203012a mov      w2, w1
020edb04: e0230091 add      x0, sp, #8
020edb08: e1031f2a mov      w1, wzr
020edb0c: e3031faa mov      x3, xzr
020edb10: ff0700f9 str      xzr, [sp, #8]
020edb14: 58692794 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
020edb18: d30300b4 cbz      x19, #0x20edb90
020edb1c: e10740f9 ldr      x1, [sp, #8]
020edb20: e00313aa mov      x0, x19
020edb24: e2031faa mov      x2, xzr
020edb28: 7a9a1994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020edb2c: 800200b4 cbz      x0, #0x20edb7c
020edb30: f40300aa mov      x20, x0
020edb34: f3031f2a mov      w19, wzr
020edb38: 805a40f9 ldr      x0, [x20, #0xb0]
020edb3c: a00200b4 cbz      x0, #0x20edb90
020edb40: 41008052 mov      w1, #2
020edb44: e2031f2a mov      w2, wzr
020edb48: e3031faa mov      x3, xzr
020edb4c: e4031faa mov      x4, xzr
020edb50: a5852794 bl       #0x2acf1e4 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$GetScore
020edb54: 881240f9 ldr      x8, [x20, #0x20]
020edb58: c80100b4 cbz      x8, #0x20edb90
020edb5c: 1300130b add      w19, w0, w19
020edb60: 61008052 mov      w1, #3
020edb64: e00308aa mov      x0, x8
020edb68: e2031faa mov      x2, xzr
020edb6c: 722a3194 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
020edb70: f40300aa mov      x20, x0
020edb74: 20feffb5 cbnz     x0, #0x20edb38
020edb78: 02000014 b        #0x20edb80
020edb7c: f3031f2a mov      w19, wzr
020edb80: e003132a mov      w0, w19
020edb84: f37b41a9 ldp      x19, x30, [sp, #0x10]
020edb88: f40742f8 ldr      x20, [sp], #0x20
020edb8c: c0035fd6 ret      
020edb90: 260ebb97 bl       #0xfb1428
