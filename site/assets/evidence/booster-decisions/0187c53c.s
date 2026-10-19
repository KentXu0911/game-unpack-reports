# Royal.Scenes.Game.Mechanics.Items.StaticItems.CeramicItem.CeramicItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
0187c53c: fa0f1bf8 str      x26, [sp, #-0x50]!
0187c540: f96301a9 stp      x25, x24, [sp, #0x10]
0187c544: f75b02a9 stp      x23, x22, [sp, #0x20]
0187c548: f55303a9 stp      x21, x20, [sp, #0x30]
0187c54c: f37b04a9 stp      x19, x30, [sp, #0x40]
0187c550: f4e701d0 adrp     x20, #0x557a000
0187c554: 881e4639 ldrb     w8, [x20, #0x187]
0187c558: f303012a mov      w19, w1
0187c55c: f70300aa mov      x23, x0
0187c560: 48020037 tbnz     w8, #0, #0x187c5a8
0187c564: e0cc01b0 adrp     x0, #0x5219000
0187c568: 00c842f9 ldr      x0, [x0, #0x590]
0187c56c: 65d3dc97 bl       #0xfb1300
0187c570: c0cc01d0 adrp     x0, #0x5216000
0187c574: 005447f9 ldr      x0, [x0, #0xea8]
0187c578: 62d3dc97 bl       #0xfb1300
0187c57c: 00cb01f0 adrp     x0, #0x51df000
0187c580: 00d040f9 ldr      x0, [x0, #0x1a0]
0187c584: 5fd3dc97 bl       #0xfb1300
0187c588: 40ca0190 adrp     x0, #0x51c4000
0187c58c: 001042f9 ldr      x0, [x0, #0x420]
0187c590: 5cd3dc97 bl       #0xfb1300
0187c594: a0c901f0 adrp     x0, #0x51b3000
0187c598: 00a041f9 ldr      x0, [x0, #0x340]
0187c59c: 59d3dc97 bl       #0xfb1300
0187c5a0: 28008052 mov      w8, #1
0187c5a4: 881e0639 strb     w8, [x20, #0x187]
0187c5a8: e80240f9 ldr      x8, [x23]
0187c5ac: e00317aa mov      x0, x23
0187c5b0: 097542f9 ldr      x9, [x8, #0x4e8]
0187c5b4: 017942f9 ldr      x1, [x8, #0x4f0]
0187c5b8: 20013fd6 blr      x9
0187c5bc: e81640f9 ldr      x8, [x23, #0x28]
0187c5c0: 09229f52 mov      w9, #0xf910
0187c5c4: 6a528752 mov      w10, #0x3a93
0187c5c8: 1f040071 cmp      w0, #1
0187c5cc: c900a072 movk     w9, #6, lsl #16
0187c5d0: aa00a072 movk     w10, #5, lsl #16
0187c5d4: 5401891a csel     w20, w10, w9, eq
0187c5d8: c81800b4 cbz      x8, #0x187c8f0
0187c5dc: f603002a mov      w22, w0
0187c5e0: 000940f9 ldr      x0, [x8, #0x10]
0187c5e4: 401900b4 cbz      x0, #0x187c90c
0187c5e8: e1031faa mov      x1, xzr
0187c5ec: 24263b94 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
0187c5f0: 00180036 tbz      w0, #0, #0x187c8f0
0187c5f4: e01640f9 ldr      x0, [x23, #0x28]
0187c5f8: a01800b4 cbz      x0, #0x187c90c
0187c5fc: e1031faa mov      x1, xzr
0187c600: 18314994 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
0187c604: 401800b4 cbz      x0, #0x187c90c
0187c608: 080040f9 ldr      x8, [x0]
0187c60c: b9c901f0 adrp     x25, #0x51b3000
0187c610: 58ca0190 adrp     x24, #0x51c4000
0187c614: f50300aa mov      x21, x0
0187c618: 09ad42f9 ldr      x9, [x8, #0x558]
0187c61c: 01b142f9 ldr      x1, [x8, #0x560]
0187c620: 39a341f9 ldr      x25, [x25, #0x340]
0187c624: 181342f9 ldr      x24, [x24, #0x420]
0187c628: 20013fd6 blr      x9
0187c62c: c0010036 tbz      w0, #0, #0x187c664
0187c630: d6cc01d0 adrp     x22, #0x5216000
0187c634: d65647f9 ldr      x22, [x22, #0xea8]
0187c638: e003132a mov      w0, w19
0187c63c: e1031faa mov      x1, xzr
0187c640: bf206c94 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
0187c644: a90240f9 ldr      x9, [x21]
0187c648: c80240f9 ldr      x8, [x22]
0187c64c: 2bb14439 ldrb     w11, [x9, #0x12c]
0187c650: 0ab14439 ldrb     w10, [x8, #0x12c]
0187c654: 7f010a6b cmp      w11, w10
0187c658: 42030054 b.hs     #0x187c6c0
0187c65c: e1031f2a mov      w1, wzr
0187c660: 1d000014 b        #0x187c6d4
0187c664: facc01b0 adrp     x26, #0x5219000
0187c668: 5acb42f9 ldr      x26, [x26, #0x590]
0187c66c: e00315aa mov      x0, x21
0187c670: 410340f9 ldr      x1, [x26]
0187c674: 65d3dc97 bl       #0xfb1408
0187c678: a00500b4 cbz      x0, #0x187c72c
0187c67c: 080040f9 ldr      x8, [x0]
0187c680: 410340f9 ldr      x1, [x26]
0187c684: f70300aa mov      x23, x0
0187c688: 09554279 ldrh     w9, [x8, #0x12a]
0187c68c: 290100b4 cbz      x9, #0x187c6b0
0187c690: 0a5940f9 ldr      x10, [x8, #0xb0]
0187c694: 4a210091 add      x10, x10, #8
0187c698: 4b815ff8 ldur     x11, [x10, #-8]
0187c69c: 7f0101eb cmp      x11, x1
0187c6a0: 80020054 b.eq     #0x187c6f0
0187c6a4: 290500f1 subs     x9, x9, #1
0187c6a8: 4a410091 add      x10, x10, #0x10
0187c6ac: 61ffff54 b.ne     #0x187c698
0187c6b0: 42008052 mov      w2, #2
0187c6b4: e00317aa mov      x0, x23
0187c6b8: 0713dc97 bl       #0xf812d4
0187c6bc: 11000014 b        #0x187c700
0187c6c0: 296540f9 ldr      x9, [x9, #0xc8]
0187c6c4: 290d0a8b add      x9, x9, x10, lsl #3
0187c6c8: 29815ff8 ldur     x9, [x9, #-8]
0187c6cc: 3f0108eb cmp      x9, x8
0187c6d0: e1179f1a cset     w1, eq
0187c6d4: 02000012 and      w2, w0, #1
0187c6d8: e00317aa mov      x0, x23
0187c6dc: e303142a mov      w3, w20
0187c6e0: e4031faa mov      x4, xzr
0187c6e4: 93c46194 bl       #0x30ed930 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScore
0187c6e8: f403002a mov      w20, w0
0187c6ec: 67000014 b        #0x187c888
0187c6f0: 490140b9 ldr      w9, [x10]
0187c6f4: 29090011 add      w9, w9, #2
0187c6f8: 08d1298b add      x8, x8, w9, sxtw #4
0187c6fc: 00e10491 add      x0, x8, #0x138
0187c700: 080440a9 ldp      x8, x1, [x0]
0187c704: e00317aa mov      x0, x23
0187c708: 00013fd6 blr      x8
0187c70c: 00010036 tbz      w0, #0, #0x187c72c
0187c710: 68dd9c52 mov      w8, #0xe6eb
0187c714: 49178552 mov      w9, #0x28ba
0187c718: df060071 cmp      w22, #1
0187c71c: c800a072 movk     w8, #6, lsl #16
0187c720: a900a072 movk     w9, #5, lsl #16
0187c724: 3401881a csel     w20, w9, w8, eq
0187c728: 58000014 b        #0x187c888
0187c72c: a80240f9 ldr      x8, [x21]
0187c730: e00315aa mov      x0, x21
0187c734: 09a542f9 ldr      x9, [x8, #0x548]
0187c738: 01a942f9 ldr      x1, [x8, #0x550]
0187c73c: 20013fd6 blr      x9
0187c740: 400a0036 tbz      w0, #0, #0x187c888
0187c744: 09cb01f0 adrp     x9, #0x51df000
0187c748: 29d140f9 ldr      x9, [x9, #0x1a0]
0187c74c: a80240f9 ldr      x8, [x21]
0187c750: 210140f9 ldr      x1, [x9]
0187c754: 0ab14439 ldrb     w10, [x8, #0x12c]
0187c758: 29b04439 ldrb     w9, [x1, #0x12c]
0187c75c: 5f01096b cmp      w10, w9
0187c760: 830d0054 b.lo     #0x187c910
0187c764: 086540f9 ldr      x8, [x8, #0xc8]
0187c768: 080d098b add      x8, x8, x9, lsl #3
0187c76c: 08815ff8 ldur     x8, [x8, #-8]
0187c770: 1f0101eb cmp      x8, x1
0187c774: e10c0054 b.ne     #0x187c910
0187c778: e00315aa mov      x0, x21
0187c77c: e1031faa mov      x1, xzr
0187c780: 56551894 bl       #0x1e91cd8 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$IsLastTwoPinkItem
0187c784: 00010036 tbz      w0, #0, #0x187c7a4
0187c788: 487b8c52 mov      w8, #0x63da
0187c78c: 29408a52 mov      w9, #0x5201
0187c790: df060071 cmp      w22, #1
0187c794: e800a072 movk     w8, #7, lsl #16
0187c798: e900a072 movk     w9, #7, lsl #16
0187c79c: 3401881a csel     w20, w9, w8, eq
0187c7a0: 0c000014 b        #0x187c7d0
0187c7a4: e00315aa mov      x0, x21
0187c7a8: e1031faa mov      x1, xzr
0187c7ac: 33561894 bl       #0x1e92078 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$WillCollectMatchItem
0187c7b0: 28408a52 mov      w8, #0x5201
0187c7b4: 898d8952 mov      w9, #0x4c6c
0187c7b8: df060071 cmp      w22, #1
0187c7bc: e800a072 movk     w8, #7, lsl #16
0187c7c0: a900a072 movk     w9, #5, lsl #16
0187c7c4: 2801881a csel     w8, w9, w8, eq
0187c7c8: 1f000072 tst      w0, #1
0187c7cc: 1411941a csel     w20, w8, w20, ne
0187c7d0: 200340f9 ldr      x0, [x25]
0187c7d4: 08e040b9 ldr      w8, [x0, #0xe0]
0187c7d8: 48000035 cbnz     w8, #0x187c7e0
0187c7dc: 0ad3dc97 bl       #0xfb1404
0187c7e0: 010340f9 ldr      x1, [x24]
0187c7e4: 40008052 mov      w0, #2
0187c7e8: df663f94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
0187c7ec: 000900b4 cbz      x0, #0x187c90c
0187c7f0: 61068052 mov      w1, #0x33
0187c7f4: e2031faa mov      x2, xzr
0187c7f8: f60300aa mov      x22, x0
0187c7fc: d4781f94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0187c800: 00020037 tbnz     w0, #0, #0x187c840
0187c804: 01028052 mov      w1, #0x10
0187c808: e00316aa mov      x0, x22
0187c80c: e2031faa mov      x2, xzr
0187c810: cf781f94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0187c814: 60010037 tbnz     w0, #0, #0x187c840
0187c818: 410a8052 mov      w1, #0x52
0187c81c: e00316aa mov      x0, x22
0187c820: e2031faa mov      x2, xzr
0187c824: ca781f94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0187c828: c0000037 tbnz     w0, #0, #0x187c840
0187c82c: 010c8052 mov      w1, #0x60
0187c830: e00316aa mov      x0, x22
0187c834: e2031faa mov      x2, xzr
0187c838: c5781f94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0187c83c: 60020036 tbz      w0, #0, #0x187c888
0187c840: e003132a mov      w0, w19
0187c844: e1031faa mov      x1, xzr
0187c848: 59206c94 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
0187c84c: e0000036 tbz      w0, #0, #0x187c868
0187c850: e00315aa mov      x0, x21
0187c854: e1031faa mov      x1, xzr
0187c858: 8f196c94 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
0187c85c: 800500b4 cbz      x0, #0x187c90c
0187c860: 080c40f9 ldr      x8, [x0, #0x18]
0187c864: a8c202f8 stur     x8, [x21, #0x2c]
0187c868: a80240f9 ldr      x8, [x21]
0187c86c: e00315aa mov      x0, x21
0187c870: e103132a mov      w1, w19
0187c874: 093542f9 ldr      x9, [x8, #0x468]
0187c878: 023942f9 ldr      x2, [x8, #0x470]
0187c87c: 20013fd6 blr      x9
0187c880: 9f02006b cmp      w20, w0
0187c884: 14b0941a csel     w20, w0, w20, lt
0187c888: a80240f9 ldr      x8, [x21]
0187c88c: e00315aa mov      x0, x21
0187c890: 09ad42f9 ldr      x9, [x8, #0x558]
0187c894: 01b142f9 ldr      x1, [x8, #0x560]
0187c898: 20013fd6 blr      x9
0187c89c: a0020037 tbnz     w0, #0, #0x187c8f0
0187c8a0: 200340f9 ldr      x0, [x25]
0187c8a4: 08e040b9 ldr      w8, [x0, #0xe0]
0187c8a8: 48000035 cbnz     w8, #0x187c8b0
0187c8ac: d6d2dc97 bl       #0xfb1404
0187c8b0: 010340f9 ldr      x1, [x24]
0187c8b4: 40008052 mov      w0, #2
0187c8b8: ab663f94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
0187c8bc: 800200b4 cbz      x0, #0x187c90c
0187c8c0: 61068052 mov      w1, #0x33
0187c8c4: e2031faa mov      x2, xzr
0187c8c8: a1781f94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0187c8cc: 20010036 tbz      w0, #0, #0x187c8f0
0187c8d0: a80240f9 ldr      x8, [x21]
0187c8d4: e00315aa mov      x0, x21
0187c8d8: e103132a mov      w1, w19
0187c8dc: 093542f9 ldr      x9, [x8, #0x468]
0187c8e0: 023942f9 ldr      x2, [x8, #0x470]
0187c8e4: 20013fd6 blr      x9
0187c8e8: 1f00146b cmp      w0, w20
0187c8ec: 4c000054 b.gt     #0x187c8f4
0187c8f0: e003142a mov      w0, w20
0187c8f4: f37b44a9 ldp      x19, x30, [sp, #0x40]
0187c8f8: f55343a9 ldp      x21, x20, [sp, #0x30]
0187c8fc: f75b42a9 ldp      x23, x22, [sp, #0x20]
0187c900: f96341a9 ldp      x25, x24, [sp, #0x10]
0187c904: fa0745f8 ldr      x26, [sp], #0x50
0187c908: c0035fd6 ret      
0187c90c: c7d2dc97 bl       #0xfb1428
0187c910: e00315aa mov      x0, x21
0187c914: abd3dc97 bl       #0xfb17c0
