# Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$ShouldCalculateSpecificWinConditions
# Next metadata method 0x26a87e8, not a proven function boundary.
026a87a4: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
026a87a8: f30300aa mov      x19, x0
026a87ac: 001440f9 ldr      x0, [x0, #0x28]
026a87b0: a00100b4 cbz      x0, #0x26a87e4
026a87b4: e1031faa mov      x1, xzr
026a87b8: c9c8e697 bl       #0x205aadc ; Royal.Player.Context.Units.LevelManager$$IsThereBottomCollectInLevel
026a87bc: 80000036 tbz      w0, #0, #0x26a87cc
026a87c0: 20008052 mov      w0, #1
026a87c4: f37bc1a8 ldp      x19, x30, [sp], #0x10
026a87c8: c0035fd6 ret      
026a87cc: 601640f9 ldr      x0, [x19, #0x28]
026a87d0: a00000b4 cbz      x0, #0x26a87e4
026a87d4: 410d8052 mov      w1, #0x6a
026a87d8: e2031faa mov      x2, xzr
026a87dc: f37bc1a8 ldp      x19, x30, [sp], #0x10
026a87e0: dbc8e617 b        #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
026a87e4: 1123a497 bl       #0xfb1428
