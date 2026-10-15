# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindSingleTargetCellForExploder
# Next metadata method 0x20f22e8, not a proven function boundary.
020f1e24: ff4307d1 sub      sp, sp, #0x1d0
020f1e28: fc6f17a9 stp      x28, x27, [sp, #0x170]
020f1e2c: fa6718a9 stp      x26, x25, [sp, #0x180]
020f1e30: f85f19a9 stp      x24, x23, [sp, #0x190]
020f1e34: f6571aa9 stp      x22, x21, [sp, #0x1a0]
020f1e38: f44f1ba9 stp      x20, x19, [sp, #0x1b0]
020f1e3c: fd7b1ca9 stp      x29, x30, [sp, #0x1c0]
020f1e40: 76a40190 adrp     x22, #0x557d000
020f1e44: c82a5539 ldrb     w8, [x22, #0x54a]
020f1e48: f40302aa mov      x20, x2
020f1e4c: f50301aa mov      x21, x1
020f1e50: f30300aa mov      x19, x0
020f1e54: e8040037 tbnz     w8, #0, #0x20f1ef0
020f1e58: 808901b0 adrp     x0, #0x5222000
020f1e5c: 00ec42f9 ldr      x0, [x0, #0x5d8]
020f1e60: 28fdba97 bl       #0xfb1300
020f1e64: 208801d0 adrp     x0, #0x51f7000
020f1e68: 00ac47f9 ldr      x0, [x0, #0xf58]
020f1e6c: 25fdba97 bl       #0xfb1300
020f1e70: c0850190 adrp     x0, #0x51a9000
020f1e74: 004846f9 ldr      x0, [x0, #0xc90]
020f1e78: 22fdba97 bl       #0xfb1300
020f1e7c: 408a0190 adrp     x0, #0x5239000
020f1e80: 00ac44f9 ldr      x0, [x0, #0x958]
020f1e84: 1ffdba97 bl       #0xfb1300
020f1e88: e08601d0 adrp     x0, #0x51cf000
020f1e8c: 00a842f9 ldr      x0, [x0, #0x550]
020f1e90: 1cfdba97 bl       #0xfb1300
020f1e94: e0840190 adrp     x0, #0x518d000
020f1e98: 00b844f9 ldr      x0, [x0, #0x970]
020f1e9c: 19fdba97 bl       #0xfb1300
020f1ea0: 808501b0 adrp     x0, #0x51a2000
020f1ea4: 004c45f9 ldr      x0, [x0, #0xa98]
020f1ea8: 16fdba97 bl       #0xfb1300
020f1eac: 208701f0 adrp     x0, #0x51d8000
020f1eb0: 00c842f9 ldr      x0, [x0, #0x590]
020f1eb4: 13fdba97 bl       #0xfb1300
020f1eb8: e08401f0 adrp     x0, #0x5190000
020f1ebc: 00b044f9 ldr      x0, [x0, #0x960]
020f1ec0: 10fdba97 bl       #0xfb1300
020f1ec4: 00880190 adrp     x0, #0x51f1000
020f1ec8: 00a845f9 ldr      x0, [x0, #0xb50]
020f1ecc: 0dfdba97 bl       #0xfb1300
020f1ed0: 208a0190 adrp     x0, #0x5235000
020f1ed4: 00b447f9 ldr      x0, [x0, #0xf68]
020f1ed8: 0afdba97 bl       #0xfb1300
020f1edc: 408701b0 adrp     x0, #0x51da000
020f1ee0: 000846f9 ldr      x0, [x0, #0xc10]
020f1ee4: 07fdba97 bl       #0xfb1300
020f1ee8: 28008052 mov      w8, #1
020f1eec: c82a1539 strb     w8, [x22, #0x54a]
020f1ef0: 00e4006f movi     v0.2d, #0000000000000000
020f1ef4: e0030aad stp      q0, q0, [sp, #0x140]
020f1ef8: e04f803d str      q0, [sp, #0x130]
020f1efc: ff7f12a9 stp      xzr, xzr, [sp, #0x120]
020f1f00: a80a40b9 ldr      w8, [x21, #8]
020f1f04: 1f8d0071 cmp      w8, #0x23
020f1f08: a1010054 b.ne     #0x20f1f3c
020f1f0c: a81a40f9 ldr      x8, [x21, #0x30]
020f1f10: a18240ad ldp      q1, q0, [x21, #0x10]
020f1f14: a202c03d ldr      q2, [x21]
020f1f18: e1830391 add      x1, sp, #0xe0
020f1f1c: e00313aa mov      x0, x19
020f1f20: e20314aa mov      x2, x20
020f1f24: e88b00f9 str      x8, [sp, #0x110]
020f1f28: e18307ad stp      q1, q0, [sp, #0xf0]
020f1f2c: e23b803d str      q2, [sp, #0xe0]
020f1f30: 0c010094 bl       #0x20f2360 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindSingleTargetCellForBoomerang
020f1f34: e00716a9 stp      x0, x1, [sp, #0x160]
020f1f38: 7f000014 b        #0x20f2134
020f1f3c: 603640f9 ldr      x0, [x19, #0x68]
020f1f40: 801700b4 cbz      x0, #0x20f2230
020f1f44: 08880190 adrp     x8, #0x51f1000
020f1f48: 08a945f9 ldr      x8, [x8, #0xb50]
020f1f4c: db850190 adrp     x27, #0x51a9000
020f1f50: 5d8a0190 adrp     x29, #0x5239000
020f1f54: fa8401f0 adrp     x26, #0x5190000
020f1f58: 9c8501b0 adrp     x28, #0x51a2000
020f1f5c: 7b4b46f9 ldr      x27, [x27, #0xc90]
020f1f60: bdaf44f9 ldr      x29, [x29, #0x958]
020f1f64: 5ab344f9 ldr      x26, [x26, #0x960]
020f1f68: 9c4f45f9 ldr      x28, [x28, #0xa98]
020f1f6c: 010140f9 ldr      x1, [x8]
020f1f70: e8830291 add      x8, sp, #0xa0
020f1f74: 63f4d097 bl       #0x152f100 ; System.Collections.Generic.SortedDictionary<int, object>$$GetEnumerator
020f1f78: e10345ad ldp      q1, q0, [sp, #0xa0]
020f1f7c: e233c03d ldr      q2, [sp, #0xc0]
020f1f80: e18309ad stp      q1, q0, [sp, #0x130]
020f1f84: e257803d str      q2, [sp, #0x150]
020f1f88: 610340f9 ldr      x1, [x27]
020f1f8c: e0c30491 add      x0, sp, #0x130
020f1f90: 11953394 bl       #0x2dd73d4 ; System.Collections.Generic.SortedDictionary.Enumerator<int, object>$$MoveNext
020f1f94: 200e0036 tbz      w0, #0, #0x20f2158
020f1f98: a10340f9 ldr      x1, [x29]
020f1f9c: e0c30491 add      x0, sp, #0x130
020f1fa0: 2a953394 bl       #0x2dd7448 ; System.Collections.Generic.SortedDictionary.Enumerator<int, object>$$get_Current
020f1fa4: f60301aa mov      x22, x1
020f1fa8: 540000b4 cbz      x20, #0x20f1fb0
020f1fac: 40120034 cbz      w0, #0x20f21f4
020f1fb0: f61300b4 cbz      x22, #0x20f222c
020f1fb4: c21a40b9 ldr      w2, [x22, #0x18]
020f1fb8: 5f040071 cmp      w2, #1
020f1fbc: 6bfeff54 b.lt     #0x20f1f88
020f1fc0: 601e40f9 ldr      x0, [x19, #0x38]
020f1fc4: c01200b4 cbz      x0, #0x20f221c
020f1fc8: e1031f2a mov      w1, wzr
020f1fcc: e3031faa mov      x3, xzr
020f1fd0: 06fc2494 bl       #0x2a30fe8 ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$Next
020f1fd4: 420340f9 ldr      x2, [x26]
020f1fd8: f703002a mov      w23, w0
020f1fdc: e00316aa mov      x0, x22
020f1fe0: e103172a mov      w1, w23
020f1fe4: 02712394 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
020f1fe8: f80300aa mov      x24, x0
020f1fec: a01100b4 cbz      x0, #0x20f2220
020f1ff0: 080f40f9 ldr      x8, [x24, #0x18]
020f1ff4: a90240b9 ldr      w9, [x21]
020f1ff8: 3f01086b cmp      w9, w8
020f1ffc: 21020054 b.ne     #0x20f2040
020f2000: a90640b9 ldr      w9, [x21, #4]
020f2004: 08fd60d3 lsr      x8, x8, #0x20
020f2008: 3f01086b cmp      w9, w8
020f200c: a1010054 b.ne     #0x20f2040
020f2010: c81a40b9 ldr      w8, [x22, #0x18]
020f2014: 1f090071 cmp      w8, #2
020f2018: 4b010054 b.lt     #0x20f2040
020f201c: 420340f9 ldr      x2, [x26]
020f2020: e8060051 sub      w8, w23, #1
020f2024: ff020071 cmp      w23, #0
020f2028: 17159f1a csinc    w23, w8, wzr, ne
020f202c: e00316aa mov      x0, x22
020f2030: e103172a mov      w1, w23
020f2034: ee702394 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
020f2038: f80300aa mov      x24, x0
020f203c: 600f00b4 cbz      x0, #0x20f2228
020f2040: a28240ad ldp      q2, q0, [x21, #0x10]
020f2044: a81a40f9 ldr      x8, [x21, #0x30]
020f2048: a102c03d ldr      q1, [x21]
020f204c: 005b40f9 ldr      x0, [x24, #0xb0]
020f2050: e28305ad stp      q2, q0, [sp, #0xb0]
020f2054: e86b00f9 str      x8, [sp, #0xd0]
020f2058: e12b803d str      q1, [sp, #0xa0]
020f205c: 400e00b4 cbz      x0, #0x20f2224
020f2060: e10345ad ldp      q1, q0, [sp, #0xa0]
020f2064: e233c03d ldr      q2, [sp, #0xc0]
020f2068: e86b40f9 ldr      x8, [sp, #0xd0]
020f206c: e10303ad stp      q1, q0, [sp, #0x60]
020f2070: e223803d str      q2, [sp, #0x80]
020f2074: e84b00f9 str      x8, [sp, #0x90]
020f2078: e1830191 add      x1, sp, #0x60
020f207c: e2031faa mov      x2, xzr
020f2080: 60752794 bl       #0x2acf600 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$RemainingExplodeCount
020f2084: f903002a mov      w25, w0
020f2088: 1f040071 cmp      w0, #1
020f208c: ec000054 b.gt     #0x20f20a8
020f2090: 820340f9 ldr      x2, [x28]
020f2094: e00316aa mov      x0, x22
020f2098: e103172a mov      w1, w23
020f209c: 5c772394 bl       #0x29cfe0c ; System.Collections.Generic.List<object>$$RemoveAt
020f20a0: 3f070071 cmp      w25, #1
020f20a4: 8bf8ff54 b.lt     #0x20f1fb4
020f20a8: a28240ad ldp      q2, q0, [x21, #0x10]
020f20ac: a81a40f9 ldr      x8, [x21, #0x30]
020f20b0: a102c03d ldr      q1, [x21]
020f20b4: 005b40f9 ldr      x0, [x24, #0xb0]
020f20b8: e28305ad stp      q2, q0, [sp, #0xb0]
020f20bc: e86b00f9 str      x8, [sp, #0xd0]
020f20c0: e12b803d str      q1, [sp, #0xa0]
020f20c4: 800b00b4 cbz      x0, #0x20f2234
020f20c8: e10345ad ldp      q1, q0, [sp, #0xa0]
020f20cc: e233c03d ldr      q2, [sp, #0xc0]
020f20d0: e86b40f9 ldr      x8, [sp, #0xd0]
020f20d4: e10301ad stp      q1, q0, [sp, #0x20]
020f20d8: e213803d str      q2, [sp, #0x40]
020f20dc: e82b00f9 str      x8, [sp, #0x50]
020f20e0: e1830091 add      x1, sp, #0x20
020f20e4: e20316aa mov      x2, x22
020f20e8: e3031faa mov      x3, xzr
020f20ec: 6b762794 bl       #0x2acfa98 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$TryRedirect
020f20f0: 088a01f0 adrp     x8, #0x5235000
020f20f4: 08b547f9 ldr      x8, [x8, #0xf68]
020f20f8: e20300aa mov      x2, x0
020f20fc: ff7f01a9 stp      xzr, xzr, [sp, #0x10]
020f2100: 030140f9 ldr      x3, [x8]
020f2104: e0430091 add      x0, sp, #0x10
020f2108: e1031f2a mov      w1, wzr
020f210c: fdebe297 bl       #0x19ad100 ; System.ValueTuple<bool, object>$$.ctor
020f2110: e007c03d ldr      q0, [sp, #0x10]
020f2114: e04b803d str      q0, [sp, #0x120]
020f2118: 288801b0 adrp     x8, #0x51f7000
020f211c: 08ad47f9 ldr      x8, [x8, #0xf58]
020f2120: e0c30491 add      x0, sp, #0x130
020f2124: 010140f9 ldr      x1, [x8]
020f2128: c7943394 bl       #0x2dd7444 ; System.Collections.Generic.SortedDictionary.Enumerator<int, object>$$Dispose
020f212c: e04bc03d ldr      q0, [sp, #0x120]
020f2130: e05b803d str      q0, [sp, #0x160]
020f2134: e00756a9 ldp      x0, x1, [sp, #0x160]
020f2138: fd7b5ca9 ldp      x29, x30, [sp, #0x1c0]
020f213c: f44f5ba9 ldp      x20, x19, [sp, #0x1b0]
020f2140: f6575aa9 ldp      x22, x21, [sp, #0x1a0]
020f2144: f85f59a9 ldp      x24, x23, [sp, #0x190]
020f2148: fa6758a9 ldp      x26, x25, [sp, #0x180]
020f214c: fc6f57a9 ldp      x28, x27, [sp, #0x170]
020f2150: ff430791 add      sp, sp, #0x1d0
020f2154: c0035fd6 ret      
020f2158: 288801b0 adrp     x8, #0x51f7000
020f215c: 08ad47f9 ldr      x8, [x8, #0xf58]
020f2160: e0c30491 add      x0, sp, #0x130
020f2164: 010140f9 ldr      x1, [x8]
020f2168: b7943394 bl       #0x2dd7444 ; System.Collections.Generic.SortedDictionary.Enumerator<int, object>$$Dispose
020f216c: 88890190 adrp     x8, #0x5222000
020f2170: 08ed42f9 ldr      x8, [x8, #0x5d8]
020f2174: 158a01f0 adrp     x21, #0x5235000
020f2178: 140140f9 ldr      x20, [x8]
020f217c: 881e40f9 ldr      x8, [x20, #0x38]
020f2180: 000140f9 ldr      x0, [x8]
020f2184: 08c84439 ldrb     w8, [x0, #0x132]
020f2188: b5b647f9 ldr      x21, [x21, #0xf68]
020f218c: 48000037 tbnz     w8, #0, #0x20f2194
020f2190: 953bba97 bl       #0xf80fe4
020f2194: 08e040b9 ldr      w8, [x0, #0xe0]
020f2198: 48000035 cbnz     w8, #0x20f21a0
020f219c: 9afcba97 bl       #0xfb1404
020f21a0: 881e40f9 ldr      x8, [x20, #0x38]
020f21a4: 000140f9 ldr      x0, [x8]
020f21a8: 08c84439 ldrb     w8, [x0, #0x132]
020f21ac: 48000037 tbnz     w8, #0, #0x20f21b4
020f21b0: 8d3bba97 bl       #0xf80fe4
020f21b4: 085c40f9 ldr      x8, [x0, #0xb8]
020f21b8: 61018052 mov      w1, #0xb
020f21bc: e00313aa mov      x0, x19
020f21c0: e4031faa mov      x4, xzr
020f21c4: 030140f9 ldr      x3, [x8]
020f21c8: 48870190 adrp     x8, #0x51da000
020f21cc: 080946f9 ldr      x8, [x8, #0xc10]
020f21d0: 020140f9 ldr      x2, [x8]
020f21d4: d3391c94 bl       #0x2800920 ; Royal.Infrastructure.Services.Logs.Log$$Debug
020f21d8: a30240f9 ldr      x3, [x21]
020f21dc: e0830591 add      x0, sp, #0x160
020f21e0: e1031f2a mov      w1, wzr
020f21e4: e2031faa mov      x2, xzr
020f21e8: ff7f16a9 stp      xzr, xzr, [sp, #0x160]
020f21ec: c5ebe297 bl       #0x19ad100 ; System.ValueTuple<bool, object>$$.ctor
020f21f0: d1ffff17 b        #0x20f2134
020f21f4: 088a01f0 adrp     x8, #0x5235000
020f21f8: 08b547f9 ldr      x8, [x8, #0xf68]
020f21fc: ff7f0aa9 stp      xzr, xzr, [sp, #0xa0]
020f2200: 030140f9 ldr      x3, [x8]
020f2204: e0830291 add      x0, sp, #0xa0
020f2208: 21008052 mov      w1, #1
020f220c: e2031faa mov      x2, xzr
020f2210: bcebe297 bl       #0x19ad100 ; System.ValueTuple<bool, object>$$.ctor
020f2214: e02bc03d ldr      q0, [sp, #0xa0]
020f2218: bfffff17 b        #0x20f2114
020f221c: 83fcba97 bl       #0xfb1428
020f2220: 82fcba97 bl       #0xfb1428
020f2224: 81fcba97 bl       #0xfb1428
020f2228: 80fcba97 bl       #0xfb1428
020f222c: 7ffcba97 bl       #0xfb1428
020f2230: 7efcba97 bl       #0xfb1428
020f2234: 7dfcba97 bl       #0xfb1428
020f2238: 0f000014 b        #0x20f2274
020f223c: 0e000014 b        #0x20f2274
020f2240: 0d000014 b        #0x20f2274
020f2244: 0c000014 b        #0x20f2274
020f2248: 0b000014 b        #0x20f2274
020f224c: 0a000014 b        #0x20f2274
020f2250: 09000014 b        #0x20f2274
020f2254: 08000014 b        #0x20f2274
020f2258: 07000014 b        #0x20f2274
020f225c: 06000014 b        #0x20f2274
020f2260: 05000014 b        #0x20f2274
020f2264: 04000014 b        #0x20f2274
020f2268: 03000014 b        #0x20f2274
020f226c: 02000014 b        #0x20f2274
020f2270: 01000014 b        #0x20f2274
020f2274: f40300aa mov      x20, x0
020f2278: 3f040071 cmp      w1, #1
020f227c: a1010054 b.ne     #0x20f22b0
020f2280: e00314aa mov      x0, x20
020f2284: d344af97 bl       #0xcc35d0
020f2288: 150040f9 ldr      x21, [x0]
020f228c: 4d43af97 bl       #0xcc2fc0
020f2290: 288801b0 adrp     x8, #0x51f7000
020f2294: 08ad47f9 ldr      x8, [x8, #0xf58]
020f2298: e0c30491 add      x0, sp, #0x130
020f229c: 010140f9 ldr      x1, [x8]
020f22a0: 69943394 bl       #0x2dd7444 ; System.Collections.Generic.SortedDictionary.Enumerator<int, object>$$Dispose
020f22a4: 55f6ffb4 cbz      x21, #0x20f216c
020f22a8: e00315aa mov      x0, x21
020f22ac: 4bacba97 bl       #0xf9d3d8
020f22b0: f5031faa mov      x21, xzr
020f22b4: 02000014 b        #0x20f22bc
020f22b8: f40300aa mov      x20, x0
020f22bc: 288801b0 adrp     x8, #0x51f7000
020f22c0: 08ad47f9 ldr      x8, [x8, #0xf58]
020f22c4: 010140f9 ldr      x1, [x8]
020f22c8: e0c30491 add      x0, sp, #0x130
020f22cc: 5e943394 bl       #0x2dd7444 ; System.Collections.Generic.SortedDictionary.Enumerator<int, object>$$Dispose
020f22d0: 750000b5 cbnz     x21, #0x20f22dc
020f22d4: e00314aa mov      x0, x20
020f22d8: 0a43af97 bl       #0xcc2f00
020f22dc: e00315aa mov      x0, x21
020f22e0: 3eacba97 bl       #0xf9d3d8
020f22e4: 1959af97 bl       #0xcc8748
