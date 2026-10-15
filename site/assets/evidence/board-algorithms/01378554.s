# Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$SelectItemCreationCell
# Next metadata method 0x1378710, not a proven function boundary.
01378554: e923bb6d stp      d9, d8, [sp, #-0x50]!
01378558: f96301a9 stp      x25, x24, [sp, #0x10]
0137855c: f75b02a9 stp      x23, x22, [sp, #0x20]
01378560: f55303a9 stp      x21, x20, [sp, #0x30]
01378564: f37b04a9 stp      x19, x30, [sp, #0x40]
01378568: 13100290 adrp     x19, #0x5578000
0137856c: b4f40190 adrp     x20, #0x520c000
01378570: 68da4439 ldrb     w8, [x19, #0x136]
01378574: 94de47f9 ldr      x20, [x20, #0xfb8]
01378578: f50300aa mov      x21, x0
0137857c: 88010037 tbnz     w8, #0, #0x13785ac
01378580: 00f501f0 adrp     x0, #0x521b000
01378584: 00e842f9 ldr      x0, [x0, #0x5d0]
01378588: 5ee3f097 bl       #0xfb1300
0137858c: c0f201d0 adrp     x0, #0x51d2000
01378590: 00c045f9 ldr      x0, [x0, #0xb80]
01378594: 5be3f097 bl       #0xfb1300
01378598: a0f40190 adrp     x0, #0x520c000
0137859c: 00dc47f9 ldr      x0, [x0, #0xfb8]
013785a0: 58e3f097 bl       #0xfb1300
013785a4: 28008052 mov      w8, #1
013785a8: 68da0439 strb     w8, [x19, #0x136]
013785ac: 800240f9 ldr      x0, [x20]
013785b0: 08e040b9 ldr      w8, [x0, #0xe0]
013785b4: 48000035 cbnz     w8, #0x13785bc
013785b8: 93e3f097 bl       #0xfb1404
013785bc: 18f501f0 adrp     x24, #0x521b000
013785c0: d9f201d0 adrp     x25, #0x51d2000
013785c4: 18eb42f9 ldr      x24, [x24, #0x5d0]
013785c8: 39c345f9 ldr      x25, [x25, #0xb80]
013785cc: e00315aa mov      x0, x21
013785d0: 50000094 bl       #0x1378710 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ShuffleCells
013785d4: f3031f2a mov      w19, wzr
013785d8: b4220091 add      x20, x21, #8
013785dc: b5220291 add      x21, x21, #0x88
013785e0: e903271e fmov     s9, wzr
013785e4: 000340f9 ldr      x0, [x24]
013785e8: 08e040b9 ldr      w8, [x0, #0xe0]
013785ec: 48000035 cbnz     w8, #0x13785f4
013785f0: 85e3f097 bl       #0xfb1404
013785f4: 880240b9 ldr      w8, [x20]
013785f8: 7f02086b cmp      w19, w8
013785fc: ca070054 b.ge     #0x13786f4
01378600: 000340f9 ldr      x0, [x24]
01378604: 08e040b9 ldr      w8, [x0, #0xe0]
01378608: 48000035 cbnz     w8, #0x1378610
0137860c: 7ee3f097 bl       #0xfb1404
01378610: e00314aa mov      x0, x20
01378614: e103132a mov      w1, w19
01378618: adfcff97 bl       #0x13778cc ; Royal.Scenes.Game.Mechanics.Matches.Cell14$$get_Item
0137861c: 800700b4 cbz      x0, #0x137870c
01378620: f60300aa mov      x22, x0
01378624: 000840f9 ldr      x0, [x0, #0x10]
01378628: 200700b4 cbz      x0, #0x137870c
0137862c: e1031faa mov      x1, xzr
01378630: 0c364f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
01378634: c00600b4 cbz      x0, #0x137870c
01378638: 172040f9 ldr      x23, [x0, #0x40]
0137863c: 970600b4 cbz      x23, #0x137870c
01378640: e80240f9 ldr      x8, [x23]
01378644: 210340f9 ldr      x1, [x25]
01378648: 09554279 ldrh     w9, [x8, #0x12a]
0137864c: 290100b4 cbz      x9, #0x1378670
01378650: 0a5940f9 ldr      x10, [x8, #0xb0]
01378654: 4a210091 add      x10, x10, #8
01378658: 4b815ff8 ldur     x11, [x10, #-8]
0137865c: 7f0101eb cmp      x11, x1
01378660: 00010054 b.eq     #0x1378680
01378664: 290500f1 subs     x9, x9, #1
01378668: 4a410091 add      x10, x10, #0x10
0137866c: 61ffff54 b.ne     #0x1378658
01378670: 62008052 mov      w2, #3
01378674: e00317aa mov      x0, x23
01378678: 1723f097 bl       #0xf812d4
0137867c: 05000014 b        #0x1378690
01378680: 490140b9 ldr      w9, [x10]
01378684: 290d0011 add      w9, w9, #3
01378688: 08d1298b add      x8, x8, w9, sxtw #4
0137868c: 00e10491 add      x0, x8, #0x138
01378690: 080440a9 ldp      x8, x1, [x0]
01378694: e00317aa mov      x0, x23
01378698: 00013fd6 blr      x8
0137869c: c06240f9 ldr      x0, [x22, #0xc0]
013786a0: 600300b4 cbz      x0, #0x137870c
013786a4: c1008052 mov      w1, #6
013786a8: e2031faa mov      x2, xzr
013786ac: 081ca04e mov      v8.16b, v0.16b
013786b0: 174d5d94 bl       #0x2acbb0c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasStaticItem
013786b4: c0010037 tbnz     w0, #0, #0x13786ec
013786b8: 0021291e fcmp     s8, s9
013786bc: ec000054 b.gt     #0x13786d8
013786c0: a80240f9 ldr      x8, [x21]
013786c4: a80000b4 cbz      x8, #0x13786d8
013786c8: c91e40b9 ldr      w9, [x22, #0x1c]
013786cc: 081d40b9 ldr      w8, [x8, #0x1c]
013786d0: 3f01086b cmp      w9, w8
013786d4: cd000054 b.le     #0x13786ec
013786d8: e00315aa mov      x0, x21
013786dc: e10316aa mov      x1, x22
013786e0: b60200f9 str      x22, [x21]
013786e4: f2e2f097 bl       #0xfb12ac
013786e8: 091da84e mov      v9.16b, v8.16b
013786ec: 73060011 add      w19, w19, #1
013786f0: bdffff17 b        #0x13785e4
013786f4: f37b44a9 ldp      x19, x30, [sp, #0x40]
013786f8: f55343a9 ldp      x21, x20, [sp, #0x30]
013786fc: f75b42a9 ldp      x23, x22, [sp, #0x20]
01378700: f96341a9 ldp      x25, x24, [sp, #0x10]
01378704: e923c56c ldp      d9, d8, [sp], #0x50
01378708: c0035fd6 ret
0137870c: 47e3f097 bl       #0xfb1428
