# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$AddMatchItemToList
# Linear span; next metadata entry is not a proven CFG boundary.
0239b7a4: f553bea9 stp      x21, x20, [sp, #-0x20]!
0239b7a8: f37b01a9 stp      x19, x30, [sp, #0x10]
0239b7ac: 158f01f0 adrp     x21, #0x557e000
0239b7b0: a8226739 ldrb     w8, [x21, #0x9c8]
0239b7b4: f30301aa mov      x19, x1
0239b7b8: f40300aa mov      x20, x0
0239b7bc: c8000037 tbnz     w8, #0, #0x239b7d4
0239b7c0: 60710190 adrp     x0, #0x51c7000
0239b7c4: 005444f9 ldr      x0, [x0, #0x8a8]
0239b7c8: ce56b097 bl       #0xfb1300
0239b7cc: 28008052 mov      w8, #1
0239b7d0: a8222739 strb     w8, [x21, #0x9c8]
0239b7d4: 804240f9 ldr      x0, [x20, #0x80]
0239b7d8: 400400b4 cbz      x0, #0x239b860
0239b7dc: 69710190 adrp     x9, #0x51c7000
0239b7e0: 295544f9 ldr      x9, [x9, #0x8a8]
0239b7e4: 0a1c40b9 ldr      w10, [x0, #0x1c]
0239b7e8: 080840f9 ldr      x8, [x0, #0x10]
0239b7ec: 290140f9 ldr      x9, [x9]
0239b7f0: 4a050011 add      w10, w10, #1
0239b7f4: 0a1c00b9 str      w10, [x0, #0x1c]
0239b7f8: 480300b4 cbz      x8, #0x239b860
0239b7fc: 0a1880b9 ldrsw    x10, [x0, #0x18]
0239b800: 0b1940b9 ldr      w11, [x8, #0x18]
0239b804: 5f010b6b cmp      w10, w11
0239b808: 42010054 b.hs     #0x239b830
0239b80c: 49050011 add      w9, w10, #1
0239b810: 080d0a8b add      x8, x8, x10, lsl #3
0239b814: 091800b9 str      w9, [x0, #0x18]
0239b818: 130d02f8 str      x19, [x8, #0x20]!
0239b81c: e00308aa mov      x0, x8
0239b820: e10313aa mov      x1, x19
0239b824: a256b097 bl       #0xfb12ac
0239b828: 330100b5 cbnz     x19, #0x239b84c
0239b82c: 0d000014 b        #0x239b860
0239b830: 281140f9 ldr      x8, [x9, #0x20]
0239b834: e10313aa mov      x1, x19
0239b838: 086140f9 ldr      x8, [x8, #0xc0]
0239b83c: 022d40f9 ldr      x2, [x8, #0x58]
0239b840: 480440f9 ldr      x8, [x2, #8]
0239b844: 00013fd6 blr      x8
0239b848: d30000b4 cbz      x19, #0x239b860
0239b84c: e00313aa mov      x0, x19
0239b850: f37b41a9 ldp      x19, x30, [sp, #0x10]
0239b854: e1031faa mov      x1, xzr
0239b858: f553c2a8 ldp      x21, x20, [sp], #0x20
0239b85c: a0ddeb17 b        #0x1e92edc ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$Reserve
0239b860: f256b097 bl       #0xfb1428
