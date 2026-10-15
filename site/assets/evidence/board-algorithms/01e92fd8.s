# Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$ShouldWaitForFallingMatchItems
# Next metadata method 0x1e931f8, not a proven function boundary.
01e92fd8: e80f1bfc str      d8, [sp, #-0x50]!
01e92fdc: fa0700f9 str      x26, [sp, #8]
01e92fe0: f96301a9 stp      x25, x24, [sp, #0x10]
01e92fe4: f75b02a9 stp      x23, x22, [sp, #0x20]
01e92fe8: f55303a9 stp      x21, x20, [sp, #0x30]
01e92fec: f37b04a9 stp      x19, x30, [sp, #0x40]
01e92ff0: 769a01b0 adrp     x22, #0x51df000
01e92ff4: 139a0190 adrp     x19, #0x51d2000
01e92ff8: d59b01d0 adrp     x21, #0x520c000
01e92ffc: d6d240f9 ldr      x22, [x22, #0x1a0]
01e93000: 73c245f9 ldr      x19, [x19, #0xb80]
01e93004: 821a0014 b        #0x1e99a0c
01e93008: f40300aa mov      x20, x0
01e9300c: 58b701b0 adrp     x24, #0x557c000
01e93010: 39008052 mov      w25, #1
01e93014: 08df5339 ldrb     w8, [x24, #0x4f7]
01e93018: 08010037 tbnz     w8, #0, #0x1e93038
01e9301c: e00313aa mov      x0, x19
01e93020: b878c497 bl       #0xfb1300
01e93024: e00315aa mov      x0, x21
01e93028: b678c497 bl       #0xfb1300
01e9302c: e00316aa mov      x0, x22
01e93030: b478c497 bl       #0xfb1300
01e93034: 19df1339 strb     w25, [x24, #0x4f7]
01e93038: 801e40f9 ldr      x0, [x20, #0x38]
01e9303c: c00d00b4 cbz      x0, #0x1e931f4
01e93040: e1031faa mov      x1, xzr
01e93044: 12e45394 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
01e93048: 600d00b4 cbz      x0, #0x1e931f4
01e9304c: 001040f9 ldr      x0, [x0, #0x20]
01e93050: 200d00b4 cbz      x0, #0x1e931f4
01e93054: 21008052 mov      w1, #1
01e93058: e2031faa mov      x2, xzr
01e9305c: 36953a94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
01e93060: 600700b4 cbz      x0, #0x1e9314c
01e93064: e1031faa mov      x1, xzr
01e93068: 8cd63094 bl       #0x2ac8a98 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_TargetItem
01e9306c: 000700b4 cbz      x0, #0x1e9314c
01e93070: 090040f9 ldr      x9, [x0]
01e93074: c80240f9 ldr      x8, [x22]
01e93078: 2bb14439 ldrb     w11, [x9, #0x12c]
01e9307c: 0ab14439 ldrb     w10, [x8, #0x12c]
01e93080: 7f010a6b cmp      w11, w10
01e93084: 43060054 b.lo     #0x1e9314c
01e93088: 296540f9 ldr      x9, [x9, #0xc8]
01e9308c: 290d0a8b add      x9, x9, x10, lsl #3
01e93090: 29815ff8 ldur     x9, [x9, #-8]
01e93094: 3f0108eb cmp      x9, x8
01e93098: 1a009f9a csel     x26, x0, xzr, eq
01e9309c: 81050054 b.ne     #0x1e9314c
01e930a0: ba0a00b4 cbz      x26, #0x1e931f4
01e930a4: 481b40b9 ldr      w8, [x26, #0x18]
01e930a8: 891a40b9 ldr      w9, [x20, #0x18]
01e930ac: 1f01096b cmp      w8, w9
01e930b0: e1040054 b.ne     #0x1e9314c
01e930b4: 572340f9 ldr      x23, [x26, #0x40]
01e930b8: f70900b4 cbz      x23, #0x1e931f4
01e930bc: e80240f9 ldr      x8, [x23]
01e930c0: 610240f9 ldr      x1, [x19]
01e930c4: 09554279 ldrh     w9, [x8, #0x12a]
01e930c8: 290100b4 cbz      x9, #0x1e930ec
01e930cc: 0a5940f9 ldr      x10, [x8, #0xb0]
01e930d0: 4a210091 add      x10, x10, #8
01e930d4: 4b815ff8 ldur     x11, [x10, #-8]
01e930d8: 7f0101eb cmp      x11, x1
01e930dc: 00010054 b.eq     #0x1e930fc
01e930e0: 290500f1 subs     x9, x9, #1
01e930e4: 4a410091 add      x10, x10, #0x10
01e930e8: 61ffff54 b.ne     #0x1e930d4
01e930ec: e00317aa mov      x0, x23
01e930f0: e2031f2a mov      w2, wzr
01e930f4: 78b8c397 bl       #0xf812d4
01e930f8: 04000014 b        #0x1e93108
01e930fc: 490180b9 ldrsw    x9, [x10]
01e93100: 0811098b add      x8, x8, x9, lsl #4
01e93104: 00e10491 add      x0, x8, #0x138
01e93108: 080440a9 ldp      x8, x1, [x0]
01e9310c: e00317aa mov      x0, x23
01e93110: 00013fd6 blr      x8
01e93114: e0020036 tbz      w0, #0, #0x1e93170
01e93118: 482b4539 ldrb     w8, [x26, #0x14a]
01e9311c: f4031aaa mov      x20, x26
01e93120: a8f7ff34 cbz      w8, #0x1e93014
01e93124: a00240f9 ldr      x0, [x21]
01e93128: 53e30291 add      x19, x26, #0xb8
01e9312c: 08e040b9 ldr      w8, [x0, #0xe0]
01e93130: 48000035 cbnz     w8, #0x1e93138
01e93134: b478c497 bl       #0xfb1404
01e93138: e00313aa mov      x0, x19
01e9313c: e1031faa mov      x1, xzr
01e93140: b995d397 bl       #0x1378824 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$CanAutoExplode
01e93144: 08000052 eor      w8, w0, #1
01e93148: 02000014 b        #0x1e93150
01e9314c: e8031f2a mov      w8, wzr
01e93150: f37b44a9 ldp      x19, x30, [sp, #0x40]
01e93154: f55343a9 ldp      x21, x20, [sp, #0x30]
01e93158: f75b42a9 ldp      x23, x22, [sp, #0x20]
01e9315c: f96341a9 ldp      x25, x24, [sp, #0x10]
01e93160: fa0740f9 ldr      x26, [sp, #8]
01e93164: 00010012 and      w0, w8, #1
01e93168: e80745fc ldr      d8, [sp], #0x50
01e9316c: c0035fd6 ret      
01e93170: e0031faa mov      x0, xzr
01e93174: adfe2294 bl       #0x2752c28 ; Royal.Scenes.Game.Levels.LevelContext$$get_Time
01e93178: 942240f9 ldr      x20, [x20, #0x40]
01e9317c: d40300b4 cbz      x20, #0x1e931f4
01e93180: 880240f9 ldr      x8, [x20]
01e93184: 610240f9 ldr      x1, [x19]
01e93188: 081ca04e mov      v8.16b, v0.16b
01e9318c: 09554279 ldrh     w9, [x8, #0x12a]
01e93190: 290100b4 cbz      x9, #0x1e931b4
01e93194: 0a5940f9 ldr      x10, [x8, #0xb0]
01e93198: 4a210091 add      x10, x10, #8
01e9319c: 4b815ff8 ldur     x11, [x10, #-8]
01e931a0: 7f0101eb cmp      x11, x1
01e931a4: 00010054 b.eq     #0x1e931c4
01e931a8: 290500f1 subs     x9, x9, #1
01e931ac: 4a410091 add      x10, x10, #0x10
01e931b0: 61ffff54 b.ne     #0x1e9319c
01e931b4: 62008052 mov      w2, #3
01e931b8: e00314aa mov      x0, x20
01e931bc: 46b8c397 bl       #0xf812d4
01e931c0: 05000014 b        #0x1e931d4
01e931c4: 490140b9 ldr      w9, [x10]
01e931c8: 290d0011 add      w9, w9, #3
01e931cc: 08d1298b add      x8, x8, w9, sxtw #4
01e931d0: 00e10491 add      x0, x8, #0x138
01e931d4: 080440a9 ldp      x8, x1, [x0]
01e931d8: e00314aa mov      x0, x20
01e931dc: 00013fd6 blr      x8
01e931e0: 01102a1e fmov     s1, #0.25000000
01e931e4: 0028211e fadd     s0, s0, s1
01e931e8: 0021201e fcmp     s8, s0
01e931ec: e8c79f1a cset     w8, le
01e931f0: d8ffff17 b        #0x1e93150
01e931f4: 8d78c497 bl       #0xfb1428
