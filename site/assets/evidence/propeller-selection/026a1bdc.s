# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$IsTargetValid
# Next metadata method 0x26a1e14, not a proven function boundary.
026a1bdc: f60f1df8 str      x22, [sp, #-0x30]!
026a1be0: f55301a9 stp      x21, x20, [sp, #0x10]
026a1be4: f37b02a9 stp      x19, x30, [sp, #0x20]
026a1be8: f47601f0 adrp     x20, #0x5580000
026a1bec: 88e64039 ldrb     w8, [x20, #0x39]
026a1bf0: f30300aa mov      x19, x0
026a1bf4: e8010037 tbnz     w8, #0, #0x26a1c30
026a1bf8: a05b01b0 adrp     x0, #0x5216000
026a1bfc: 001c44f9 ldr      x0, [x0, #0x838]
026a1c00: c03da497 bl       #0xfb1300
026a1c04: 205a01b0 adrp     x0, #0x51e6000
026a1c08: 007840f9 ldr      x0, [x0, #0xf0]
026a1c0c: bd3da497 bl       #0xfb1300
026a1c10: a05801f0 adrp     x0, #0x51b8000
026a1c14: 002840f9 ldr      x0, [x0, #0x50]
026a1c18: ba3da497 bl       #0xfb1300
026a1c1c: 405c0190 adrp     x0, #0x5229000
026a1c20: 008040f9 ldr      x0, [x0, #0x100]
026a1c24: b73da497 bl       #0xfb1300
026a1c28: 28008052 mov      w8, #1
026a1c2c: 88e60039 strb     w8, [x20, #0x39]
026a1c30: 68224439 ldrb     w8, [x19, #0x108]
026a1c34: c8000034 cbz      w8, #0x26a1c4c
026a1c38: f37b42a9 ldp      x19, x30, [sp, #0x20]
026a1c3c: f55341a9 ldp      x21, x20, [sp, #0x10]
026a1c40: 20008052 mov      w0, #1
026a1c44: f60743f8 ldr      x22, [sp], #0x30
026a1c48: c0035fd6 ret      
026a1c4c: 74a640f9 ldr      x20, [x19, #0x148]
026a1c50: f40200b4 cbz      x20, #0x26a1cac
026a1c54: 601641b9 ldr      w0, [x19, #0x114]
026a1c58: b65801f0 adrp     x22, #0x51b8000
026a1c5c: d62a40f9 ldr      x22, [x22, #0x50]
026a1c60: e1031faa mov      x1, xzr
026a1c64: 73621a94 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
026a1c68: 880240f9 ldr      x8, [x20]
026a1c6c: c10240f9 ldr      x1, [x22]
026a1c70: f503002a mov      w21, w0
026a1c74: 09554279 ldrh     w9, [x8, #0x12a]
026a1c78: 290100b4 cbz      x9, #0x26a1c9c
026a1c7c: 0a5940f9 ldr      x10, [x8, #0xb0]
026a1c80: 4a210091 add      x10, x10, #8
026a1c84: 4b815ff8 ldur     x11, [x10, #-8]
026a1c88: 7f0101eb cmp      x11, x1
026a1c8c: 80020054 b.eq     #0x26a1cdc
026a1c90: 290500f1 subs     x9, x9, #1
026a1c94: 4a410091 add      x10, x10, #0x10
026a1c98: 61ffff54 b.ne     #0x26a1c84
026a1c9c: 42008052 mov      w2, #2
026a1ca0: e00314aa mov      x0, x20
026a1ca4: 8c7da397 bl       #0xf812d4
026a1ca8: 11000014 b        #0x26a1cec
026a1cac: 485c0190 adrp     x8, #0x5229000
026a1cb0: 088140f9 ldr      x8, [x8, #0x100]
026a1cb4: b55b01b0 adrp     x21, #0x5216000
026a1cb8: 606e40f9 ldr      x0, [x19, #0xd8]
026a1cbc: 140140f9 ldr      x20, [x8]
026a1cc0: b51e44f9 ldr      x21, [x21, #0x838]
026a1cc4: a00200b4 cbz      x0, #0x26a1d18
026a1cc8: 080040f9 ldr      x8, [x0]
026a1ccc: 098556a9 ldp      x9, x1, [x8, #0x168]
026a1cd0: 20013fd6 blr      x9
026a1cd4: e10300aa mov      x1, x0
026a1cd8: 11000014 b        #0x26a1d1c
026a1cdc: 490140b9 ldr      w9, [x10]
026a1ce0: 29090011 add      w9, w9, #2
026a1ce4: 08d1298b add      x8, x8, w9, sxtw #4
026a1ce8: 00e10491 add      x0, x8, #0x138
026a1cec: 080840a9 ldp      x8, x2, [x0]
026a1cf0: e00314aa mov      x0, x20
026a1cf4: e103152a mov      w1, w21
026a1cf8: 00013fd6 blr      x8
026a1cfc: 60000036 tbz      w0, #0, #0x26a1d08
026a1d00: 68d64339 ldrb     w8, [x19, #0xf5]
026a1d04: a8040034 cbz      w8, #0x26a1d98
026a1d08: 68d24339 ldrb     w8, [x19, #0xf4]
026a1d0c: 7fd60339 strb     wzr, [x19, #0xf5]
026a1d10: 48f9ff35 cbnz     w8, #0x26a1c38
026a1d14: 19000014 b        #0x26a1d78
026a1d18: e1031faa mov      x1, xzr
026a1d1c: e00314aa mov      x0, x20
026a1d20: e2031faa mov      x2, xzr
026a1d24: 946dd997 bl       #0x1cfd374 ; System.String$$Concat
026a1d28: a80240f9 ldr      x8, [x21]
026a1d2c: f50300aa mov      x21, x0
026a1d30: e00308aa mov      x0, x8
026a1d34: b93da497 bl       #0xfb1418
026a1d38: c00600b4 cbz      x0, #0x26a1e10
026a1d3c: 365a01b0 adrp     x22, #0x51e6000
026a1d40: d67a40f9 ldr      x22, [x22, #0xf0]
026a1d44: e10315aa mov      x1, x21
026a1d48: e2031faa mov      x2, xzr
026a1d4c: f40300aa mov      x20, x0
026a1d50: 5c16ef97 bl       #0x22676c0 ; System.Exception$$.ctor
026a1d54: c00240f9 ldr      x0, [x22]
026a1d58: 08e040b9 ldr      w8, [x0, #0xe0]
026a1d5c: 48000035 cbnz     w8, #0x26a1d64
026a1d60: a93da497 bl       #0xfb1404
026a1d64: e00314aa mov      x0, x20
026a1d68: e1031f2a mov      w1, wzr
026a1d6c: e2031faa mov      x2, xzr
026a1d70: e3031faa mov      x3, xzr
026a1d74: 9cde1e94 bl       #0x2e597e4 ; Royal.Infrastructure.Services.Remote.FirebaseHelper$$LogException
026a1d78: 680240f9 ldr      x8, [x19]
026a1d7c: e00313aa mov      x0, x19
026a1d80: f37b42a9 ldp      x19, x30, [sp, #0x20]
026a1d84: f55341a9 ldp      x21, x20, [sp, #0x10]
026a1d88: 02c545f9 ldr      x2, [x8, #0xb88]
026a1d8c: 01c945f9 ldr      x1, [x8, #0xb90]
026a1d90: f60743f8 ldr      x22, [sp], #0x30
026a1d94: 40001fd6 br       x2
026a1d98: 74a640f9 ldr      x20, [x19, #0x148]
026a1d9c: b40300b4 cbz      x20, #0x26a1e10
026a1da0: 880240f9 ldr      x8, [x20]
026a1da4: c10240f9 ldr      x1, [x22]
026a1da8: 09554279 ldrh     w9, [x8, #0x12a]
026a1dac: 290100b4 cbz      x9, #0x26a1dd0
026a1db0: 0a5940f9 ldr      x10, [x8, #0xb0]
026a1db4: 4a210091 add      x10, x10, #8
026a1db8: 4b815ff8 ldur     x11, [x10, #-8]
026a1dbc: 7f0101eb cmp      x11, x1
026a1dc0: 00010054 b.eq     #0x26a1de0
026a1dc4: 290500f1 subs     x9, x9, #1
026a1dc8: 4a410091 add      x10, x10, #0x10
026a1dcc: 61ffff54 b.ne     #0x26a1db8
026a1dd0: 62008052 mov      w2, #3
026a1dd4: e00314aa mov      x0, x20
026a1dd8: 3f7da397 bl       #0xf812d4
026a1ddc: 05000014 b        #0x26a1df0
026a1de0: 490140b9 ldr      w9, [x10]
026a1de4: 290d0011 add      w9, w9, #3
026a1de8: 08d1298b add      x8, x8, w9, sxtw #4
026a1dec: 00e10491 add      x0, x8, #0x138
026a1df0: 080440a9 ldp      x8, x1, [x0]
026a1df4: e00314aa mov      x0, x20
026a1df8: 00013fd6 blr      x8
026a1dfc: 600e0cf8 str      x0, [x19, #0xc0]!
026a1e00: e10300aa mov      x1, x0
026a1e04: e00313aa mov      x0, x19
026a1e08: 293da497 bl       #0xfb12ac
026a1e0c: 8bffff17 b        #0x26a1c38
026a1e10: 863da497 bl       #0xfb1428
