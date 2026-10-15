# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$ForceTargetIfTargetScoreIsZero
# Next metadata method 0x26a492c, not a proven function boundary.
026a4900: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
026a4904: f30300aa mov      x19, x0
026a4908: 67ffff97 bl       #0x26a46a4 ; Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$TargetHasZeroScore
026a490c: c0000036 tbz      w0, #0, #0x26a4924
026a4910: 28008052 mov      w8, #1
026a4914: 09208052 mov      w9, #0x100
026a4918: 68da0339 strb     w8, [x19, #0xf6]
026a491c: 69ea0179 strh     w9, [x19, #0xf4]
026a4920: 7f220439 strb     wzr, [x19, #0x108]
026a4924: f37bc1a8 ldp      x19, x30, [sp], #0x10
026a4928: c0035fd6 ret      
