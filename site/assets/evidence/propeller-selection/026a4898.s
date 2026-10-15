# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$ForceTargetIfCellWillBeDestroyed
# Next metadata method 0x26a4900, not a proven function boundary.
026a4898: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
026a489c: f30300aa mov      x19, x0
026a48a0: 006040f9 ldr      x0, [x0, #0xc0]
026a48a4: 800200b4 cbz      x0, #0x26a48f4
026a48a8: e1031faa mov      x1, xzr
026a48ac: db9e1094 bl       #0x2acc418 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlockedByAnyDrill
026a48b0: 20020036 tbz      w0, #0, #0x26a48f4
026a48b4: 606240f9 ldr      x0, [x19, #0xc0]
026a48b8: 200200b4 cbz      x0, #0x26a48fc
026a48bc: e1031faa mov      x1, xzr
026a48c0: 329f1094 bl       #0x2acc588 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlockedByAnyLog
026a48c4: 80010036 tbz      w0, #0, #0x26a48f4
026a48c8: 68fa40b9 ldr      w8, [x19, #0xf8]
026a48cc: 1f050071 cmp      w8, #1
026a48d0: 81000054 b.ne     #0x26a48e0
026a48d4: e00313aa mov      x0, x19
026a48d8: 73ffff97 bl       #0x26a46a4 ; Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$TargetHasZeroScore
026a48dc: c0000036 tbz      w0, #0, #0x26a48f4
026a48e0: 28008052 mov      w8, #1
026a48e4: 09208052 mov      w9, #0x100
026a48e8: 68da0339 strb     w8, [x19, #0xf6]
026a48ec: 69ea0179 strh     w9, [x19, #0xf4]
026a48f0: 7f220439 strb     wzr, [x19, #0x108]
026a48f4: f37bc1a8 ldp      x19, x30, [sp], #0x10
026a48f8: c0035fd6 ret      
026a48fc: cb32a497 bl       #0xfb1428
