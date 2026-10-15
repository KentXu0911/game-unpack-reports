# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$ForceTargetChange
# Next metadata method 0x26a46a4, not a proven function boundary.
026a4668: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
026a466c: 08f840b9 ldr      w8, [x0, #0xf8]
026a4670: f30300aa mov      x19, x0
026a4674: 1f050071 cmp      w8, #1
026a4678: 81000054 b.ne     #0x26a4688
026a467c: e00313aa mov      x0, x19
026a4680: 09000094 bl       #0x26a46a4 ; Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$TargetHasZeroScore
026a4684: c0000036 tbz      w0, #0, #0x26a469c
026a4688: 28008052 mov      w8, #1
026a468c: 09208052 mov      w9, #0x100
026a4690: 68da0339 strb     w8, [x19, #0xf6]
026a4694: 69ea0179 strh     w9, [x19, #0xf4]
026a4698: 7f220439 strb     wzr, [x19, #0x108]
026a469c: f37bc1a8 ldp      x19, x30, [sp], #0x10
026a46a0: c0035fd6 ret      
