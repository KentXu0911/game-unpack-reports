# Royal.Scenes.Game.Mechanics.Items.StaticItems.JellyItem.JellyItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
0135e45c: f80f1cf8 str      x24, [sp, #-0x40]!
0135e460: f75b01a9 stp      x23, x22, [sp, #0x10]
0135e464: f55302a9 stp      x21, x20, [sp, #0x20]
0135e468: f37b03a9 stp      x19, x30, [sp, #0x30]
0135e46c: d41002b0 adrp     x20, #0x5577000
0135e470: 88a67e39 ldrb     w8, [x20, #0xfa9]
0135e474: f303012a mov      w19, w1
0135e478: f60300aa mov      x22, x0
0135e47c: e8010037 tbnz     w8, #0, #0x135e4b8
0135e480: c0f501f0 adrp     x0, #0x5219000
0135e484: 00c842f9 ldr      x0, [x0, #0x590]
0135e488: 9e4bf197 bl       #0xfb1300
0135e48c: c0f50190 adrp     x0, #0x5216000
0135e490: 005447f9 ldr      x0, [x0, #0xea8]
0135e494: 9b4bf197 bl       #0xfb1300
0135e498: 20f301d0 adrp     x0, #0x51c4000
0135e49c: 001042f9 ldr      x0, [x0, #0x420]
0135e4a0: 984bf197 bl       #0xfb1300
0135e4a4: a0f201b0 adrp     x0, #0x51b3000
0135e4a8: 00a041f9 ldr      x0, [x0, #0x340]
0135e4ac: 954bf197 bl       #0xfb1300
0135e4b0: 28008052 mov      w8, #1
0135e4b4: 88a63e39 strb     w8, [x20, #0xfa9]
0135e4b8: c8524239 ldrb     w8, [x22, #0x94]
0135e4bc: 68000034 cbz      w8, #0x135e4c8
0135e4c0: e0031f2a mov      w0, wzr
0135e4c4: 80000014 b        #0x135e6c4
0135e4c8: e003132a mov      w0, w19
0135e4cc: e1031faa mov      x1, xzr
0135e4d0: 1b998094 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
0135e4d4: c0000036 tbz      w0, #0, #0x135e4ec
0135e4d8: c01a40b9 ldr      w0, [x22, #0x18]
0135e4dc: e1031faa mov      x1, xzr
0135e4e0: 9eb58094 bl       #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
0135e4e4: f503002a mov      w21, w0
0135e4e8: 03000014 b        #0x135e4f4
0135e4ec: 75528752 mov      w21, #0x3a93
0135e4f0: b500a072 movk     w21, #5, lsl #16
0135e4f4: c01640f9 ldr      x0, [x22, #0x28]
0135e4f8: 2bfeff97 bl       #0x135dda4 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.JellyItem.JellyItemModel$$IsThereAtLeastOneNeighborWithJelly
0135e4fc: c81640f9 ldr      x8, [x22, #0x28]
0135e500: 1f000072 tst      w0, #1
0135e504: 293b8252 mov      w9, #0x11d9
0135e508: 37119f1a csel     w23, w9, wzr, ne
0135e50c: c80300b4 cbz      x8, #0x135e584
0135e510: 000940f9 ldr      x0, [x8, #0x10]
0135e514: 200e00b4 cbz      x0, #0x135e6d8
0135e518: e1031faa mov      x1, xzr
0135e51c: 589e4f94 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
0135e520: 20030036 tbz      w0, #0, #0x135e584
0135e524: c01640f9 ldr      x0, [x22, #0x28]
0135e528: 800d00b4 cbz      x0, #0x135e6d8
0135e52c: e1031faa mov      x1, xzr
0135e530: 4ca95d94 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
0135e534: 200d00b4 cbz      x0, #0x135e6d8
0135e538: 080040f9 ldr      x8, [x0]
0135e53c: f40300aa mov      x20, x0
0135e540: 09ad42f9 ldr      x9, [x8, #0x558]
0135e544: 01b142f9 ldr      x1, [x8, #0x560]
0135e548: 20013fd6 blr      x9
0135e54c: 00020036 tbz      w0, #0, #0x135e58c
0135e550: d8f50190 adrp     x24, #0x5216000
0135e554: 185747f9 ldr      x24, [x24, #0xea8]
0135e558: e003132a mov      w0, w19
0135e55c: e1031faa mov      x1, xzr
0135e560: f7988094 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
0135e564: 890240f9 ldr      x9, [x20]
0135e568: 080340f9 ldr      x8, [x24]
0135e56c: 2bb14439 ldrb     w11, [x9, #0x12c]
0135e570: 0ab14439 ldrb     w10, [x8, #0x12c]
0135e574: 7f010a6b cmp      w11, w10
0135e578: 82030054 b.hs     #0x135e5e8
0135e57c: e1031f2a mov      w1, wzr
0135e580: 1f000014 b        #0x135e5fc
0135e584: a002174b sub      w0, w21, w23
0135e588: 4f000014 b        #0x135e6c4
0135e58c: d8f501f0 adrp     x24, #0x5219000
0135e590: 18cb42f9 ldr      x24, [x24, #0x590]
0135e594: e00314aa mov      x0, x20
0135e598: 010340f9 ldr      x1, [x24]
0135e59c: 9b4bf197 bl       #0xfb1408
0135e5a0: 200500b4 cbz      x0, #0x135e644
0135e5a4: 080040f9 ldr      x8, [x0]
0135e5a8: 010340f9 ldr      x1, [x24]
0135e5ac: f60300aa mov      x22, x0
0135e5b0: 09554279 ldrh     w9, [x8, #0x12a]
0135e5b4: 290100b4 cbz      x9, #0x135e5d8
0135e5b8: 0a5940f9 ldr      x10, [x8, #0xb0]
0135e5bc: 4a210091 add      x10, x10, #8
0135e5c0: 4b815ff8 ldur     x11, [x10, #-8]
0135e5c4: 7f0101eb cmp      x11, x1
0135e5c8: 80020054 b.eq     #0x135e618
0135e5cc: 290500f1 subs     x9, x9, #1
0135e5d0: 4a410091 add      x10, x10, #0x10
0135e5d4: 61ffff54 b.ne     #0x135e5c0
0135e5d8: 42008052 mov      w2, #2
0135e5dc: e00316aa mov      x0, x22
0135e5e0: 3d8bf097 bl       #0xf812d4
0135e5e4: 11000014 b        #0x135e628
0135e5e8: 296540f9 ldr      x9, [x9, #0xc8]
0135e5ec: 290d0a8b add      x9, x9, x10, lsl #3
0135e5f0: 29815ff8 ldur     x9, [x9, #-8]
0135e5f4: 3f0108eb cmp      x9, x8
0135e5f8: e1179f1a cset     w1, eq
0135e5fc: 02000012 and      w2, w0, #1
0135e600: e00316aa mov      x0, x22
0135e604: e303152a mov      w3, w21
0135e608: e4031faa mov      x4, xzr
0135e60c: c93c7694 bl       #0x30ed930 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScore
0135e610: f503002a mov      w21, w0
0135e614: 0c000014 b        #0x135e644
0135e618: 490140b9 ldr      w9, [x10]
0135e61c: 29090011 add      w9, w9, #2
0135e620: 08d1298b add      x8, x8, w9, sxtw #4
0135e624: 00e10491 add      x0, x8, #0x138
0135e628: 080440a9 ldp      x8, x1, [x0]
0135e62c: e00316aa mov      x0, x22
0135e630: 00013fd6 blr      x8
0135e634: 68dd9c52 mov      w8, #0xe6eb
0135e638: 1f000072 tst      w0, #1
0135e63c: c800a072 movk     w8, #6, lsl #16
0135e640: 1511951a csel     w21, w8, w21, ne
0135e644: 880240f9 ldr      x8, [x20]
0135e648: e00314aa mov      x0, x20
0135e64c: b502174b sub      w21, w21, w23
0135e650: 09ad42f9 ldr      x9, [x8, #0x558]
0135e654: 01b142f9 ldr      x1, [x8, #0x560]
0135e658: 20013fd6 blr      x9
0135e65c: 20030037 tbnz     w0, #0, #0x135e6c0
0135e660: a8f201b0 adrp     x8, #0x51b3000
0135e664: 08a141f9 ldr      x8, [x8, #0x340]
0135e668: 36f301d0 adrp     x22, #0x51c4000
0135e66c: 000140f9 ldr      x0, [x8]
0135e670: 08e040b9 ldr      w8, [x0, #0xe0]
0135e674: d61242f9 ldr      x22, [x22, #0x420]
0135e678: 48000035 cbnz     w8, #0x135e680
0135e67c: 624bf197 bl       #0xfb1404
0135e680: c10240f9 ldr      x1, [x22]
0135e684: 40008052 mov      w0, #2
0135e688: 37df5394 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
0135e68c: 600200b4 cbz      x0, #0x135e6d8
0135e690: 61068052 mov      w1, #0x33
0135e694: e2031faa mov      x2, xzr
0135e698: 2df13394 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0135e69c: 20010036 tbz      w0, #0, #0x135e6c0
0135e6a0: 880240f9 ldr      x8, [x20]
0135e6a4: e00314aa mov      x0, x20
0135e6a8: e103132a mov      w1, w19
0135e6ac: 093542f9 ldr      x9, [x8, #0x468]
0135e6b0: 023942f9 ldr      x2, [x8, #0x470]
0135e6b4: 20013fd6 blr      x9
0135e6b8: 1f00156b cmp      w0, w21
0135e6bc: 4c000054 b.gt     #0x135e6c4
0135e6c0: e003152a mov      w0, w21
0135e6c4: f37b43a9 ldp      x19, x30, [sp, #0x30]
0135e6c8: f55342a9 ldp      x21, x20, [sp, #0x20]
0135e6cc: f75b41a9 ldp      x23, x22, [sp, #0x10]
0135e6d0: f80744f8 ldr      x24, [sp], #0x40
0135e6d4: c0035fd6 ret      
0135e6d8: 544bf197 bl       #0xfb1428
