# Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsWinningByHitCells
# Next metadata method 0x26a8224, not a proven function boundary.
026a8168: f60f1df8 str      x22, [sp, #-0x30]!
026a816c: f55301a9 stp      x21, x20, [sp, #0x10]
026a8170: f37b02a9 stp      x19, x30, [sp, #0x20]
026a8174: f30300aa mov      x19, x0
026a8178: 001040f9 ldr      x0, [x0, #0x20]
026a817c: 000500b4 cbz      x0, #0x26a821c
026a8180: e1031faa mov      x1, xzr
026a8184: 45170e94 bl       #0x2a2de98 ; Royal.Scenes.Game.Levels.Units.GoalManager$$GetFinalGoals
026a8188: a00400b4 cbz      x0, #0x26a821c
026a818c: 081840b9 ldr      w8, [x0, #0x18]
026a8190: f40300aa mov      x20, x0
026a8194: 1f050071 cmp      w8, #1
026a8198: 4b030054 b.lt     #0x26a8200
026a819c: f6031f2a mov      w22, wzr
026a81a0: df02086b cmp      w22, w8
026a81a4: e2030054 b.hs     #0x26a8220
026a81a8: 88ce368b add      x8, x20, w22, sxtw #3
026a81ac: 151140f9 ldr      x21, [x8, #0x20]
026a81b0: 750300b4 cbz      x21, #0x26a821c
026a81b4: e00315aa mov      x0, x21
026a81b8: e1031faa mov      x1, xzr
026a81bc: 03381a94 bl       #0x2d361c8 ; Royal.Scenes.Game.Mechanics.Goal.GoalTuple$$IsSpecificWinConditionalGoal
026a81c0: 80010037 tbnz     w0, #0, #0x26a81f0
026a81c4: 681a40f9 ldr      x8, [x19, #0x30]
026a81c8: a80200b4 cbz      x8, #0x26a821c
026a81cc: a91280b9 ldrsw    x9, [x21, #0x10]
026a81d0: 0a1940b9 ldr      w10, [x8, #0x18]
026a81d4: 3f010a6b cmp      w9, w10
026a81d8: 42020054 b.hs     #0x26a8220
026a81dc: 0809098b add      x8, x8, x9, lsl #2
026a81e0: 082140b9 ldr      w8, [x8, #0x20]
026a81e4: a91a40b9 ldr      w9, [x21, #0x18]
026a81e8: 3f01086b cmp      w9, w8
026a81ec: ec000054 b.gt     #0x26a8208
026a81f0: 881a40b9 ldr      w8, [x20, #0x18]
026a81f4: d6060011 add      w22, w22, #1
026a81f8: df02086b cmp      w22, w8
026a81fc: 2bfdff54 b.lt     #0x26a81a0
026a8200: 20008052 mov      w0, #1
026a8204: 02000014 b        #0x26a820c
026a8208: e0031f2a mov      w0, wzr
026a820c: f37b42a9 ldp      x19, x30, [sp, #0x20]
026a8210: f55341a9 ldp      x21, x20, [sp, #0x10]
026a8214: f60743f8 ldr      x22, [sp], #0x30
026a8218: c0035fd6 ret      
026a821c: 8324a497 bl       #0xfb1428
026a8220: 8424a497 bl       #0xfb1430
