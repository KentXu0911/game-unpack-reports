# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$ForceTargetChangeOnce
# Next metadata method 0x26a4898, not a proven function boundary.
026a4854: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
026a4858: 08d84339 ldrb     w8, [x0, #0xf6]
026a485c: a8010035 cbnz     w8, #0x26a4890
026a4860: 08f840b9 ldr      w8, [x0, #0xf8]
026a4864: f30300aa mov      x19, x0
026a4868: 1f050071 cmp      w8, #1
026a486c: 81000054 b.ne     #0x26a487c
026a4870: e00313aa mov      x0, x19
026a4874: 8cffff97 bl       #0x26a46a4 ; Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$TargetHasZeroScore
026a4878: c0000036 tbz      w0, #0, #0x26a4890
026a487c: 28008052 mov      w8, #1
026a4880: 09208052 mov      w9, #0x100
026a4884: 68da0339 strb     w8, [x19, #0xf6]
026a4888: 69ea0179 strh     w9, [x19, #0xf4]
026a488c: 7f220439 strb     wzr, [x19, #0x108]
026a4890: f37bc1a8 ldp      x19, x30, [sp], #0x10
026a4894: c0035fd6 ret      
