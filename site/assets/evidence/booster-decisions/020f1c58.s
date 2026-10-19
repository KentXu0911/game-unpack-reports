# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ShouldAddToTotalScore
# Linear span; next metadata entry is not a proven CFG boundary.
020f1c58: f75bbda9 stp      x23, x22, [sp, #-0x30]!
020f1c5c: f55301a9 stp      x21, x20, [sp, #0x10]
020f1c60: f37b02a9 stp      x19, x30, [sp, #0x20]
020f1c64: 74a40190 adrp     x20, #0x557d000
020f1c68: 88465539 ldrb     w8, [x20, #0x551]
020f1c6c: f50301aa mov      x21, x1
020f1c70: f30300aa mov      x19, x0
020f1c74: c8000037 tbnz     w8, #0, #0x20f1c8c
020f1c78: a08601b0 adrp     x0, #0x51c6000
020f1c7c: 005c45f9 ldr      x0, [x0, #0xab8]
020f1c80: a0fdba97 bl       #0xfb1300
020f1c84: 28008052 mov      w8, #1
020f1c88: 88461539 strb     w8, [x20, #0x551]
020f1c8c: 685240f9 ldr      x8, [x19, #0xa0]
020f1c90: 880b00b4 cbz      x8, #0x20f1e00
020f1c94: 550c00b4 cbz      x21, #0x20f1e1c
020f1c98: a00a40f9 ldr      x0, [x21, #0x10]
020f1c9c: 000c00b4 cbz      x0, #0x20f1e1c
020f1ca0: b78601b0 adrp     x23, #0x51c6000
020f1ca4: b66240f9 ldr      x22, [x21, #0xc0]
020f1ca8: f75e45f9 ldr      x23, [x23, #0xab8]
020f1cac: e1031faa mov      x1, xzr
020f1cb0: 6c501994 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
020f1cb4: e10240f9 ldr      x1, [x23]
020f1cb8: d4fdba97 bl       #0xfb1408
020f1cbc: 200a00b4 cbz      x0, #0x20f1e00
020f1cc0: f60a00b4 cbz      x22, #0x20f1e1c
020f1cc4: f40300aa mov      x20, x0
020f1cc8: e00316aa mov      x0, x22
020f1ccc: e1031faa mov      x1, xzr
020f1cd0: 8e5d2794 bl       #0x2ac9308 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasTouchBlockingItem
020f1cd4: 60090037 tbnz     w0, #0, #0x20f1e00
020f1cd8: e10315aa mov      x1, x21
020f1cdc: db060094 bl       #0x20f3848 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ShouldAddDueToBelowItem
020f1ce0: 00090037 tbnz     w0, #0, #0x20f1e00
020f1ce4: 880240f9 ldr      x8, [x20]
020f1ce8: 752240f9 ldr      x21, [x19, #0x40]
020f1cec: e10240f9 ldr      x1, [x23]
020f1cf0: 09554279 ldrh     w9, [x8, #0x12a]
020f1cf4: 290100b4 cbz      x9, #0x20f1d18
020f1cf8: 0a5940f9 ldr      x10, [x8, #0xb0]
020f1cfc: 4a210091 add      x10, x10, #8
020f1d00: 4b815ff8 ldur     x11, [x10, #-8]
020f1d04: 7f0101eb cmp      x11, x1
020f1d08: 00010054 b.eq     #0x20f1d28
020f1d0c: 290500f1 subs     x9, x9, #1
020f1d10: 4a410091 add      x10, x10, #0x10
020f1d14: 61ffff54 b.ne     #0x20f1d00
020f1d18: e00314aa mov      x0, x20
020f1d1c: e2031f2a mov      w2, wzr
020f1d20: 6d3dba97 bl       #0xf812d4
020f1d24: 04000014 b        #0x20f1d34
020f1d28: 490180b9 ldrsw    x9, [x10]
020f1d2c: 0811098b add      x8, x8, x9, lsl #4
020f1d30: 00e10491 add      x0, x8, #0x138
020f1d34: 080440a9 ldp      x8, x1, [x0]
020f1d38: e00314aa mov      x0, x20
020f1d3c: 00013fd6 blr      x8
020f1d40: f50600b4 cbz      x21, #0x20f1e1c
020f1d44: e103002a mov      w1, w0
020f1d48: e00315aa mov      x0, x21
020f1d4c: e2031f2a mov      w2, wzr
020f1d50: e3031faa mov      x3, xzr
020f1d54: 01f12494 bl       #0x2a2e158 ; Royal.Scenes.Game.Levels.Units.GoalManager$$GetGoalIndex
020f1d58: 4005f837 tbnz     w0, #0x1f, #0x20f1e00
020f1d5c: 880240f9 ldr      x8, [x20]
020f1d60: 762240f9 ldr      x22, [x19, #0x40]
020f1d64: e10240f9 ldr      x1, [x23]
020f1d68: f503002a mov      w21, w0
020f1d6c: 09554279 ldrh     w9, [x8, #0x12a]
020f1d70: 290100b4 cbz      x9, #0x20f1d94
020f1d74: 0a5940f9 ldr      x10, [x8, #0xb0]
020f1d78: 4a210091 add      x10, x10, #8
020f1d7c: 4b815ff8 ldur     x11, [x10, #-8]
020f1d80: 7f0101eb cmp      x11, x1
020f1d84: 00010054 b.eq     #0x20f1da4
020f1d88: 290500f1 subs     x9, x9, #1
020f1d8c: 4a410091 add      x10, x10, #0x10
020f1d90: 61ffff54 b.ne     #0x20f1d7c
020f1d94: e00314aa mov      x0, x20
020f1d98: e2031f2a mov      w2, wzr
020f1d9c: 4e3dba97 bl       #0xf812d4
020f1da0: 04000014 b        #0x20f1db0
020f1da4: 490180b9 ldrsw    x9, [x10]
020f1da8: 0811098b add      x8, x8, x9, lsl #4
020f1dac: 00e10491 add      x0, x8, #0x138
020f1db0: 080440a9 ldp      x8, x1, [x0]
020f1db4: e00314aa mov      x0, x20
020f1db8: 00013fd6 blr      x8
020f1dbc: 160300b4 cbz      x22, #0x20f1e1c
020f1dc0: e103002a mov      w1, w0
020f1dc4: e00316aa mov      x0, x22
020f1dc8: e2031f2a mov      w2, wzr
020f1dcc: e3031faa mov      x3, xzr
020f1dd0: b9f32494 bl       #0x2a2ecb4 ; Royal.Scenes.Game.Levels.Units.GoalManager$$GetGoalLeftCount
020f1dd4: 685240f9 ldr      x8, [x19, #0xa0]
020f1dd8: 280200b4 cbz      x8, #0x20f1e1c
020f1ddc: 091940b9 ldr      w9, [x8, #0x18]
020f1de0: bf02096b cmp      w21, w9
020f1de4: e2010054 b.hs     #0x20f1e20
020f1de8: 08c9358b add      x8, x8, w21, sxtw #2
020f1dec: 090d42b8 ldr      w9, [x8, #0x20]!
020f1df0: 1f00096b cmp      w0, w9
020f1df4: 0d010054 b.le     #0x20f1e14
020f1df8: 29050011 add      w9, w9, #1
020f1dfc: 090100b9 str      w9, [x8]
020f1e00: 20008052 mov      w0, #1
020f1e04: f37b42a9 ldp      x19, x30, [sp, #0x20]
020f1e08: f55341a9 ldp      x21, x20, [sp, #0x10]
020f1e0c: f75bc3a8 ldp      x23, x22, [sp], #0x30
020f1e10: c0035fd6 ret      
020f1e14: e0031f2a mov      w0, wzr
020f1e18: fbffff17 b        #0x20f1e04
020f1e1c: 83fdba97 bl       #0xfb1428
020f1e20: 84fdba97 bl       #0xfb1430
