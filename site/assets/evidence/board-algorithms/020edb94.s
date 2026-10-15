# Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$CalculateVerticalRocketScore
# Next metadata method 0x20edc44, not a proven function boundary.
020edb94: f40f1ef8 str      x20, [sp, #-0x20]!
020edb98: f37b01a9 stp      x19, x30, [sp, #0x10]
020edb9c: 131040f9 ldr      x19, [x0, #0x20]
020edba0: 130500b4 cbz      x19, #0x20edc40
020edba4: f403012a mov      w20, w1
020edba8: e00313aa mov      x0, x19
020edbac: e1031faa mov      x1, xzr
020edbb0: 15a51994 bl       #0x2757004 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardStartY
020edbb4: e203002a mov      w2, w0
020edbb8: e0230091 add      x0, sp, #8
020edbbc: e103142a mov      w1, w20
020edbc0: e3031faa mov      x3, xzr
020edbc4: ff0700f9 str      xzr, [sp, #8]
020edbc8: 2b692794 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
020edbcc: e10740f9 ldr      x1, [sp, #8]
020edbd0: e00313aa mov      x0, x19
020edbd4: e2031faa mov      x2, xzr
020edbd8: 4e9a1994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020edbdc: 800200b4 cbz      x0, #0x20edc2c
020edbe0: f40300aa mov      x20, x0
020edbe4: f3031f2a mov      w19, wzr
020edbe8: 805a40f9 ldr      x0, [x20, #0xb0]
020edbec: a00200b4 cbz      x0, #0x20edc40
020edbf0: 21008052 mov      w1, #1
020edbf4: e2031f2a mov      w2, wzr
020edbf8: e3031faa mov      x3, xzr
020edbfc: e4031faa mov      x4, xzr
020edc00: 79852794 bl       #0x2acf1e4 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$GetScore
020edc04: 881240f9 ldr      x8, [x20, #0x20]
020edc08: c80100b4 cbz      x8, #0x20edc40
020edc0c: 1300130b add      w19, w0, w19
020edc10: 21008052 mov      w1, #1
020edc14: e00308aa mov      x0, x8
020edc18: e2031faa mov      x2, xzr
020edc1c: 462a3194 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
020edc20: f40300aa mov      x20, x0
020edc24: 20feffb5 cbnz     x0, #0x20edbe8
020edc28: 02000014 b        #0x20edc30
020edc2c: f3031f2a mov      w19, wzr
020edc30: e003132a mov      w0, w19
020edc34: f37b41a9 ldp      x19, x30, [sp, #0x10]
020edc38: f40742f8 ldr      x20, [sp], #0x20
020edc3c: c0035fd6 ret      
020edc40: fa0dbb97 bl       #0xfb1428
