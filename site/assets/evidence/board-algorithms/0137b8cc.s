# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$SortPossibleMatchGroups
# Next metadata method 0x137b9f8, not a proven function boundary.
0137b8cc: fb6bbba9 stp      x27, x26, [sp, #-0x50]!
0137b8d0: f96301a9 stp      x25, x24, [sp, #0x10]
0137b8d4: f75b02a9 stp      x23, x22, [sp, #0x20]
0137b8d8: f55303a9 stp      x21, x20, [sp, #0x30]
0137b8dc: f37b04a9 stp      x19, x30, [sp, #0x40]
0137b8e0: 087c40b9 ldr      w8, [x0, #0x7c]
0137b8e4: 1f050071 cmp      w8, #1
0137b8e8: 2b070054 b.lt     #0x137b9cc
0137b8ec: f30300aa mov      x19, x0
0137b8f0: f7031f2a mov      w23, wzr
0137b8f4: 1f090071 cmp      w8, #2
0137b8f8: 4b060054 b.lt     #0x137b9c0
0137b8fc: f9031f2a mov      w25, wzr
0137b900: 18048052 mov      w24, #0x20
0137b904: 7b3a40f9 ldr      x27, [x19, #0x70]
0137b908: 1b0700b4 cbz      x27, #0x137b9e8
0137b90c: 691b40b9 ldr      w9, [x27, #0x18]
0137b910: 3f03096b cmp      w25, w9
0137b914: 82060054 b.hs     #0x137b9e4
0137b918: 756b78f8 ldr      x21, [x27, x24]
0137b91c: 750600b4 cbz      x21, #0x137b9e8
0137b920: 3a070011 add      w26, w25, #1
0137b924: 5f03096b cmp      w26, w9
0137b928: e2050054 b.hs     #0x137b9e4
0137b92c: 76cf3a8b add      x22, x27, w26, sxtw #3
0137b930: a91240b9 ldr      w9, [x21, #0x10]
0137b934: d40e42f8 ldr      x20, [x22, #0x20]!
0137b938: 940500b4 cbz      x20, #0x137b9e8
0137b93c: 8a1240b9 ldr      w10, [x20, #0x10]
0137b940: 3f010a6b cmp      w9, w10
0137b944: 4a030054 b.ge     #0x137b9ac
0137b948: 680340f9 ldr      x8, [x27]
0137b94c: e00315aa mov      x0, x21
0137b950: 012140f9 ldr      x1, [x8, #0x40]
0137b954: add6f097 bl       #0xfb1408
0137b958: a00400b4 cbz      x0, #0x137b9ec
0137b95c: 681b40b9 ldr      w8, [x27, #0x18]
0137b960: 5f03086b cmp      w26, w8
0137b964: 02040054 b.hs     #0x137b9e4
0137b968: e00316aa mov      x0, x22
0137b96c: e10315aa mov      x1, x21
0137b970: d50200f9 str      x21, [x22]
0137b974: 4ed6f097 bl       #0xfb12ac
0137b978: 680340f9 ldr      x8, [x27]
0137b97c: e00314aa mov      x0, x20
0137b980: 012140f9 ldr      x1, [x8, #0x40]
0137b984: a1d6f097 bl       #0xfb1408
0137b988: 200300b4 cbz      x0, #0x137b9ec
0137b98c: 681b40b9 ldr      w8, [x27, #0x18]
0137b990: 3f03086b cmp      w25, w8
0137b994: 82020054 b.hs     #0x137b9e4
0137b998: 6003188b add      x0, x27, x24
0137b99c: e10314aa mov      x1, x20
0137b9a0: 140000f9 str      x20, [x0]
0137b9a4: 42d6f097 bl       #0xfb12ac
0137b9a8: 687e40b9 ldr      w8, [x19, #0x7c]
0137b9ac: 09050051 sub      w9, w8, #1
0137b9b0: 5f03096b cmp      w26, w9
0137b9b4: 18230091 add      x24, x24, #8
0137b9b8: f9031a2a mov      w25, w26
0137b9bc: 4bfaff54 b.lt     #0x137b904
0137b9c0: f7060011 add      w23, w23, #1
0137b9c4: ff02086b cmp      w23, w8
0137b9c8: 6bf9ff54 b.lt     #0x137b8f4
0137b9cc: f37b44a9 ldp      x19, x30, [sp, #0x40]
0137b9d0: f55343a9 ldp      x21, x20, [sp, #0x30]
0137b9d4: f75b42a9 ldp      x23, x22, [sp, #0x20]
0137b9d8: f96341a9 ldp      x25, x24, [sp, #0x10]
0137b9dc: fb6bc5a8 ldp      x27, x26, [sp], #0x50
0137b9e0: c0035fd6 ret      
0137b9e4: 93d6f097 bl       #0xfb1430
0137b9e8: 90d6f097 bl       #0xfb1428
0137b9ec: 98d6f097 bl       #0xfb144c
0137b9f0: e1031faa mov      x1, xzr
0137b9f4: 7fd6f097 bl       #0xfb13f0
