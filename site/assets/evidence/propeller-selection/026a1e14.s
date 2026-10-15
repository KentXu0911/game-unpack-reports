# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$FindNewTarget
# Next metadata method 0x26a22bc, not a proven function boundary.
026a1e14: ff0304d1 sub      sp, sp, #0x100
026a1e18: f86300f9 str      x24, [sp, #0xc0]
026a1e1c: f75b0da9 stp      x23, x22, [sp, #0xd0]
026a1e20: f5530ea9 stp      x21, x20, [sp, #0xe0]
026a1e24: f37b0fa9 stp      x19, x30, [sp, #0xf0]
026a1e28: f47601f0 adrp     x20, #0x5580000
026a1e2c: 88ea4039 ldrb     w8, [x20, #0x3a]
026a1e30: f30300aa mov      x19, x0
026a1e34: 08030037 tbnz     w8, #0, #0x26a1e94
026a1e38: 005c01b0 adrp     x0, #0x5222000
026a1e3c: 00ec42f9 ldr      x0, [x0, #0x5d8]
026a1e40: 303da497 bl       #0xfb1300
026a1e44: a05801f0 adrp     x0, #0x51b8000
026a1e48: 002840f9 ldr      x0, [x0, #0x50]
026a1e4c: 2d3da497 bl       #0xfb1300
026a1e50: 205c01f0 adrp     x0, #0x5228000
026a1e54: 000444f9 ldr      x0, [x0, #0x808]
026a1e58: 2a3da497 bl       #0xfb1300
026a1e5c: 005b01b0 adrp     x0, #0x5202000
026a1e60: 00c041f9 ldr      x0, [x0, #0x380]
026a1e64: 273da497 bl       #0xfb1300
026a1e68: e05801b0 adrp     x0, #0x51be000
026a1e6c: 001845f9 ldr      x0, [x0, #0xa30]
026a1e70: 243da497 bl       #0xfb1300
026a1e74: 205c01f0 adrp     x0, #0x5228000
026a1e78: 007446f9 ldr      x0, [x0, #0xce8]
026a1e7c: 213da497 bl       #0xfb1300
026a1e80: c05c01f0 adrp     x0, #0x523c000
026a1e84: 00c047f9 ldr      x0, [x0, #0xf80]
026a1e88: 1e3da497 bl       #0xfb1300
026a1e8c: 28008052 mov      w8, #1
026a1e90: 88ea0039 strb     w8, [x20, #0x3a]
026a1e94: 606e40f9 ldr      x0, [x19, #0xd8]
026a1e98: 7fd20339 strb     wzr, [x19, #0xf4]
026a1e9c: e02000b4 cbz      x0, #0x26a22b8
026a1ea0: 61008052 mov      w1, #3
026a1ea4: e2031faa mov      x2, xzr
026a1ea8: 6b5e0e94 bl       #0x2a39854 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationFinish
026a1eac: 606e40f9 ldr      x0, [x19, #0xd8]
026a1eb0: 402000b4 cbz      x0, #0x26a22b8
026a1eb4: e1031faa mov      x1, xzr
026a1eb8: d66d0e94 bl       #0x2a3d610 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$FinishSpecialOperation
026a1ebc: 747240f9 ldr      x20, [x19, #0xe0]
026a1ec0: d41f00b4 cbz      x20, #0x26a22b8
026a1ec4: 2a5c01f0 adrp     x10, #0x5228000
026a1ec8: 880240f9 ldr      x8, [x20]
026a1ecc: 4a0544f9 ldr      x10, [x10, #0x808]
026a1ed0: 09554279 ldrh     w9, [x8, #0x12a]
026a1ed4: 410140f9 ldr      x1, [x10]
026a1ed8: 290100b4 cbz      x9, #0x26a1efc
026a1edc: 0a5940f9 ldr      x10, [x8, #0xb0]
026a1ee0: 4a210091 add      x10, x10, #8
026a1ee4: 4b815ff8 ldur     x11, [x10, #-8]
026a1ee8: 7f0101eb cmp      x11, x1
026a1eec: 00010054 b.eq     #0x26a1f0c
026a1ef0: 290500f1 subs     x9, x9, #1
026a1ef4: 4a410091 add      x10, x10, #0x10
026a1ef8: 61ffff54 b.ne     #0x26a1ee4
026a1efc: c2008052 mov      w2, #6
026a1f00: e00314aa mov      x0, x20
026a1f04: f47ca397 bl       #0xf812d4
026a1f08: 05000014 b        #0x26a1f1c
026a1f0c: 490140b9 ldr      w9, [x10]
026a1f10: 29190011 add      w9, w9, #6
026a1f14: 08d1298b add      x8, x8, w9, sxtw #4
026a1f18: 00e10491 add      x0, x8, #0x138
026a1f1c: 080440a9 ldp      x8, x1, [x0]
026a1f20: b65801f0 adrp     x22, #0x51b8000
026a1f24: d62a40f9 ldr      x22, [x22, #0x50]
026a1f28: e00314aa mov      x0, x20
026a1f2c: 00013fd6 blr      x8
026a1f30: 68a640f9 ldr      x8, [x19, #0x148]
026a1f34: 680500b4 cbz      x8, #0x26a1fe0
026a1f38: 085b01b0 adrp     x8, #0x5202000
026a1f3c: 08c141f9 ldr      x8, [x8, #0x380]
026a1f40: 000140f9 ldr      x0, [x8]
026a1f44: 08e040b9 ldr      w8, [x0, #0xe0]
026a1f48: 48000035 cbnz     w8, #0x26a1f50
026a1f4c: 2e3da497 bl       #0xfb1404
026a1f50: e0031faa mov      x0, xzr
026a1f54: e7f7e897 bl       #0x20dfef0 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$get_Current
026a1f58: 001b00b4 cbz      x0, #0x26a22b8
026a1f5c: e1031faa mov      x1, xzr
026a1f60: 52fae897 bl       #0x20e08a8 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$ClearSinglePropellerWinCalculationData
026a1f64: 68320491 add      x8, x19, #0x10c
026a1f68: 028140ad ldp      q2, q0, [x8, #0x10]
026a1f6c: 091940f9 ldr      x9, [x8, #0x30]
026a1f70: 0101c03d ldr      q1, [x8]
026a1f74: 74a640f9 ldr      x20, [x19, #0x148]
026a1f78: e28302ad stp      q2, q0, [sp, #0x50]
026a1f7c: e93b00f9 str      x9, [sp, #0x70]
026a1f80: e113803d str      q1, [sp, #0x40]
026a1f84: b41900b4 cbz      x20, #0x26a22b8
026a1f88: e10342ad ldp      q1, q0, [sp, #0x40]
026a1f8c: e21bc03d ldr      q2, [sp, #0x60]
026a1f90: e83b40f9 ldr      x8, [sp, #0x70]
026a1f94: c10240f9 ldr      x1, [x22]
026a1f98: e10300ad stp      q1, q0, [sp]
026a1f9c: e20b803d str      q2, [sp, #0x20]
026a1fa0: e81b00f9 str      x8, [sp, #0x30]
026a1fa4: 880240f9 ldr      x8, [x20]
026a1fa8: 09554279 ldrh     w9, [x8, #0x12a]
026a1fac: 290100b4 cbz      x9, #0x26a1fd0
026a1fb0: 0a5940f9 ldr      x10, [x8, #0xb0]
026a1fb4: 4a210091 add      x10, x10, #8
026a1fb8: 4b815ff8 ldur     x11, [x10, #-8]
026a1fbc: 7f0101eb cmp      x11, x1
026a1fc0: 40010054 b.eq     #0x26a1fe8
026a1fc4: 290500f1 subs     x9, x9, #1
026a1fc8: 4a410091 add      x10, x10, #0x10
026a1fcc: 61ffff54 b.ne     #0x26a1fb8
026a1fd0: e2008052 mov      w2, #7
026a1fd4: e00314aa mov      x0, x20
026a1fd8: bf7ca397 bl       #0xf812d4
026a1fdc: 07000014 b        #0x26a1ff8
026a1fe0: f8031faa mov      x24, xzr
026a1fe4: 11000014 b        #0x26a2028
026a1fe8: 490140b9 ldr      w9, [x10]
026a1fec: 291d0011 add      w9, w9, #7
026a1ff0: 08d1298b add      x8, x8, w9, sxtw #4
026a1ff4: 00e10491 add      x0, x8, #0x138
026a1ff8: e00b40ad ldp      q0, q2, [sp]
026a1ffc: e10bc03d ldr      q1, [sp, #0x20]
026a2000: e91b40f9 ldr      x9, [sp, #0x30]
026a2004: 080040f9 ldr      x8, [x0]
026a2008: e00b04ad stp      q0, q2, [sp, #0x80]
026a200c: e12b803d str      q1, [sp, #0xa0]
026a2010: e95b00f9 str      x9, [sp, #0xb0]
026a2014: 020440f9 ldr      x2, [x0, #8]
026a2018: e1030291 add      x1, sp, #0x80
026a201c: e00314aa mov      x0, x20
026a2020: 00013fd6 blr      x8
026a2024: 78a640f9 ldr      x24, [x19, #0x148]
026a2028: 680240f9 ldr      x8, [x19]
026a202c: 776240f9 ldr      x23, [x19, #0xc0]
026a2030: e00313aa mov      x0, x19
026a2034: e1031f2a mov      w1, wzr
026a2038: 09ed45f9 ldr      x9, [x8, #0xbd8]
026a203c: 02f145f9 ldr      x2, [x8, #0xbe0]
026a2040: 20013fd6 blr      x9
026a2044: 74a640f9 ldr      x20, [x19, #0x148]
026a2048: f40300b4 cbz      x20, #0x26a20c4
026a204c: 601641b9 ldr      w0, [x19, #0x114]
026a2050: e1031faa mov      x1, xzr
026a2054: 77611a94 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
026a2058: 880240f9 ldr      x8, [x20]
026a205c: c10240f9 ldr      x1, [x22]
026a2060: f503002a mov      w21, w0
026a2064: 09554279 ldrh     w9, [x8, #0x12a]
026a2068: 290100b4 cbz      x9, #0x26a208c
026a206c: 0a5940f9 ldr      x10, [x8, #0xb0]
026a2070: 4a210091 add      x10, x10, #8
026a2074: 4b815ff8 ldur     x11, [x10, #-8]
026a2078: 7f0101eb cmp      x11, x1
026a207c: 00010054 b.eq     #0x26a209c
026a2080: 290500f1 subs     x9, x9, #1
026a2084: 4a410091 add      x10, x10, #0x10
026a2088: 61ffff54 b.ne     #0x26a2074
026a208c: 42008052 mov      w2, #2
026a2090: e00314aa mov      x0, x20
026a2094: 907ca397 bl       #0xf812d4
026a2098: 05000014 b        #0x26a20ac
026a209c: 490140b9 ldr      w9, [x10]
026a20a0: 29090011 add      w9, w9, #2
026a20a4: 08d1298b add      x8, x8, w9, sxtw #4
026a20a8: 00e10491 add      x0, x8, #0x138
026a20ac: 080840a9 ldp      x8, x2, [x0]
026a20b0: e00314aa mov      x0, x20
026a20b4: e103152a mov      w1, w21
026a20b8: 00013fd6 blr      x8
026a20bc: e0020036 tbz      w0, #0, #0x26a2118
026a20c0: 74a640f9 ldr      x20, [x19, #0x148]
026a20c4: 1f0314eb cmp      x24, x20
026a20c8: a00e0054 b.eq     #0x26a229c
026a20cc: 9f0200f1 cmp      x20, #0
026a20d0: f503979a csel     x21, xzr, x23, eq
026a20d4: 540c00b4 cbz      x20, #0x26a225c
026a20d8: 880240f9 ldr      x8, [x20]
026a20dc: c10240f9 ldr      x1, [x22]
026a20e0: 09554279 ldrh     w9, [x8, #0x12a]
026a20e4: 290100b4 cbz      x9, #0x26a2108
026a20e8: 0a5940f9 ldr      x10, [x8, #0xb0]
026a20ec: 4a210091 add      x10, x10, #8
026a20f0: 4b815ff8 ldur     x11, [x10, #-8]
026a20f4: 7f0101eb cmp      x11, x1
026a20f8: 800b0054 b.eq     #0x26a2268
026a20fc: 290500f1 subs     x9, x9, #1
026a2100: 4a410091 add      x10, x10, #0x10
026a2104: 61ffff54 b.ne     #0x26a20f0
026a2108: 62008052 mov      w2, #3
026a210c: e00314aa mov      x0, x20
026a2110: 717ca397 bl       #0xf812d4
026a2114: 59000014 b        #0x26a2278
026a2118: 686240f9 ldr      x8, [x19, #0xc0]
026a211c: a80900b5 cbnz     x8, #0x26a2250
026a2120: 60a640f9 ldr      x0, [x19, #0x148]
026a2124: a00c00b4 cbz      x0, #0x26a22b8
026a2128: e8580190 adrp     x8, #0x51be000
026a212c: 081945f9 ldr      x8, [x8, #0xa30]
026a2130: 090040f9 ldr      x9, [x0]
026a2134: 080140f9 ldr      x8, [x8]
026a2138: 2bb14439 ldrb     w11, [x9, #0x12c]
026a213c: 0ab14439 ldrb     w10, [x8, #0x12c]
026a2140: 7f010a6b cmp      w11, w10
026a2144: c3000054 b.lo     #0x26a215c
026a2148: 296540f9 ldr      x9, [x9, #0xc8]
026a214c: 290d0a8b add      x9, x9, x10, lsl #3
026a2150: 29815ff8 ldur     x9, [x9, #-8]
026a2154: 3f0108eb cmp      x9, x8
026a2158: e0060054 b.eq     #0x26a2234
026a215c: e1031faa mov      x1, xzr
026a2160: 1b47ef97 bl       #0x2273dcc ; System.Object$$GetType
026a2164: a00a00b4 cbz      x0, #0x26a22b8
026a2168: 080040f9 ldr      x8, [x0]
026a216c: 09855ba9 ldp      x9, x1, [x8, #0x1b8]
026a2170: 20013fd6 blr      x9
026a2174: 687240f9 ldr      x8, [x19, #0xe0]
026a2178: 080a00b4 cbz      x8, #0x26a22b8
026a217c: f40300aa mov      x20, x0
026a2180: e00308aa mov      x0, x8
026a2184: e1031faa mov      x1, xzr
026a2188: 1147ef97 bl       #0x2273dcc ; System.Object$$GetType
026a218c: 600900b4 cbz      x0, #0x26a22b8
026a2190: 080040f9 ldr      x8, [x0]
026a2194: d55c01d0 adrp     x21, #0x523c000
026a2198: 365c01d0 adrp     x22, #0x5228000
026a219c: 175c0190 adrp     x23, #0x5222000
026a21a0: 09855ba9 ldp      x9, x1, [x8, #0x1b8]
026a21a4: b5c247f9 ldr      x21, [x21, #0xf80]
026a21a8: d67646f9 ldr      x22, [x22, #0xce8]
026a21ac: f7ee42f9 ldr      x23, [x23, #0x5d8]
026a21b0: 20013fd6 blr      x9
026a21b4: a80240f9 ldr      x8, [x21]
026a21b8: c20240f9 ldr      x2, [x22]
026a21bc: e30300aa mov      x3, x0
026a21c0: e10314aa mov      x1, x20
026a21c4: e00308aa mov      x0, x8
026a21c8: e4031faa mov      x4, xzr
026a21cc: af97d997 bl       #0x1d08088 ; System.String$$Concat
026a21d0: f50240f9 ldr      x21, [x23]
026a21d4: f40300aa mov      x20, x0
026a21d8: a81e40f9 ldr      x8, [x21, #0x38]
026a21dc: 080140f9 ldr      x8, [x8]
026a21e0: 09c94439 ldrb     w9, [x8, #0x132]
026a21e4: 89000037 tbnz     w9, #0, #0x26a21f4
026a21e8: e00308aa mov      x0, x8
026a21ec: 7e7ba397 bl       #0xf80fe4
026a21f0: e80300aa mov      x8, x0
026a21f4: 09e140b9 ldr      w9, [x8, #0xe0]
026a21f8: 69000035 cbnz     w9, #0x26a2204
026a21fc: e00308aa mov      x0, x8
026a2200: 813ca497 bl       #0xfb1404
026a2204: a81e40f9 ldr      x8, [x21, #0x38]
026a2208: 000140f9 ldr      x0, [x8]
026a220c: 08c84439 ldrb     w8, [x0, #0x132]
026a2210: 48000037 tbnz     w8, #0, #0x26a2218
026a2214: 747ba397 bl       #0xf80fe4
026a2218: 085c40f9 ldr      x8, [x0, #0xb8]
026a221c: 61018052 mov      w1, #0xb
026a2220: e00313aa mov      x0, x19
026a2224: e20314aa mov      x2, x20
026a2228: 030140f9 ldr      x3, [x8]
026a222c: e4031faa mov      x4, xzr
026a2230: 7ca70594 bl       #0x280c020 ; Royal.Infrastructure.Services.Logs.Log$$Warning
026a2234: 680240f9 ldr      x8, [x19]
026a2238: e00313aa mov      x0, x19
026a223c: 09cd45f9 ldr      x9, [x8, #0xb98]
026a2240: 01d145f9 ldr      x1, [x8, #0xba0]
026a2244: 20013fd6 blr      x9
026a2248: e00313aa mov      x0, x19
026a224c: 1c000094 bl       #0x26a22bc ; Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$ExplodeSelf
026a2250: 20008052 mov      w0, #1
026a2254: 60d20339 strb     w0, [x19, #0xf4]
026a2258: 12000014 b        #0x26a22a0
026a225c: e0031faa mov      x0, xzr
026a2260: f50317aa mov      x21, x23
026a2264: 08000014 b        #0x26a2284
026a2268: 490140b9 ldr      w9, [x10]
026a226c: 290d0011 add      w9, w9, #3
026a2270: 08d1298b add      x8, x8, w9, sxtw #4
026a2274: 00e10491 add      x0, x8, #0x138
026a2278: 080440a9 ldp      x8, x1, [x0]
026a227c: e00314aa mov      x0, x20
026a2280: 00013fd6 blr      x8
026a2284: bf0200eb cmp      x21, x0
026a2288: a0000054 b.eq     #0x26a229c
026a228c: 606640f9 ldr      x0, [x19, #0xc8]
026a2290: 400100b4 cbz      x0, #0x26a22b8
026a2294: e1031faa mov      x1, xzr
026a2298: be9d3f94 bl       #0x3689990 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.GuidedExploderItemView$$CancelMove
026a229c: e0031f2a mov      w0, wzr
026a22a0: f37b4fa9 ldp      x19, x30, [sp, #0xf0]
026a22a4: f5534ea9 ldp      x21, x20, [sp, #0xe0]
026a22a8: f75b4da9 ldp      x23, x22, [sp, #0xd0]
026a22ac: f86340f9 ldr      x24, [sp, #0xc0]
026a22b0: ff030491 add      sp, sp, #0x100
026a22b4: c0035fd6 ret      
026a22b8: 5c3ca497 bl       #0xfb1428
