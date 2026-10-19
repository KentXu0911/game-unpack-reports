# Royal.Scenes.Game.Mechanics.Items.StaticItems.PurpleGrassItem.PurpleGrassItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
0155539c: f963bca9 stp      x25, x24, [sp, #-0x40]!
015553a0: f75b01a9 stp      x23, x22, [sp, #0x10]
015553a4: f55302a9 stp      x21, x20, [sp, #0x20]
015553a8: f37b03a9 stp      x19, x30, [sp, #0x30]
015553ac: 140102f0 adrp     x20, #0x5578000
015553b0: 88fe7639 ldrb     w8, [x20, #0xdbf]
015553b4: f303012a mov      w19, w1
015553b8: f60300aa mov      x22, x0
015553bc: 48020037 tbnz     w8, #0, #0x1555404
015553c0: 20e60190 adrp     x0, #0x5219000
015553c4: 00c842f9 ldr      x0, [x0, #0x590]
015553c8: ce6fe997 bl       #0xfb1300
015553cc: 00e601b0 adrp     x0, #0x5216000
015553d0: 005447f9 ldr      x0, [x0, #0xea8]
015553d4: cb6fe997 bl       #0xfb1300
015553d8: 40e401d0 adrp     x0, #0x51df000
015553dc: 00d040f9 ldr      x0, [x0, #0x1a0]
015553e0: c86fe997 bl       #0xfb1300
015553e4: 60e301f0 adrp     x0, #0x51c4000
015553e8: 001042f9 ldr      x0, [x0, #0x420]
015553ec: c56fe997 bl       #0xfb1300
015553f0: e0e201d0 adrp     x0, #0x51b3000
015553f4: 00a041f9 ldr      x0, [x0, #0x340]
015553f8: c26fe997 bl       #0xfb1300
015553fc: 28008052 mov      w8, #1
01555400: 88fe3639 strb     w8, [x20, #0xdbf]
01555404: c81640f9 ldr      x8, [x22, #0x28]
01555408: 75528752 mov      w21, #0x3a93
0155540c: b500a072 movk     w21, #5, lsl #16
01555410: 480400b4 cbz      x8, #0x1555498
01555414: 000940f9 ldr      x0, [x8, #0x10]
01555418: 201800b4 cbz      x0, #0x155571c
0155541c: e1031faa mov      x1, xzr
01555420: 97c24794 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
01555424: a0030036 tbz      w0, #0, #0x1555498
01555428: c01640f9 ldr      x0, [x22, #0x28]
0155542c: 801700b4 cbz      x0, #0x155571c
01555430: e1031faa mov      x1, xzr
01555434: 8bcd5594 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
01555438: 201700b4 cbz      x0, #0x155571c
0155543c: 080040f9 ldr      x8, [x0]
01555440: f8e201d0 adrp     x24, #0x51b3000
01555444: 77e301f0 adrp     x23, #0x51c4000
01555448: f40300aa mov      x20, x0
0155544c: 09ad42f9 ldr      x9, [x8, #0x558]
01555450: 01b142f9 ldr      x1, [x8, #0x560]
01555454: 18a341f9 ldr      x24, [x24, #0x340]
01555458: f71242f9 ldr      x23, [x23, #0x420]
0155545c: 20013fd6 blr      x9
01555460: 20020036 tbz      w0, #0, #0x15554a4
01555464: 15e601b0 adrp     x21, #0x5216000
01555468: b55647f9 ldr      x21, [x21, #0xea8]
0155546c: e003132a mov      w0, w19
01555470: e1031faa mov      x1, xzr
01555474: 32bd7894 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
01555478: 890240f9 ldr      x9, [x20]
0155547c: a80240f9 ldr      x8, [x21]
01555480: 2bb14439 ldrb     w11, [x9, #0x12c]
01555484: 0ab14439 ldrb     w10, [x8, #0x12c]
01555488: 7f010a6b cmp      w11, w10
0155548c: a2030054 b.hs     #0x1555500
01555490: e1031f2a mov      w1, wzr
01555494: 20000014 b        #0x1555514
01555498: 60528752 mov      w0, #0x3a93
0155549c: a000a072 movk     w0, #5, lsl #16
015554a0: 9a000014 b        #0x1555708
015554a4: 39e60190 adrp     x25, #0x5219000
015554a8: 39cb42f9 ldr      x25, [x25, #0x590]
015554ac: e00314aa mov      x0, x20
015554b0: 210340f9 ldr      x1, [x25]
015554b4: d56fe997 bl       #0xfb1408
015554b8: 400500b4 cbz      x0, #0x1555560
015554bc: 080040f9 ldr      x8, [x0]
015554c0: 210340f9 ldr      x1, [x25]
015554c4: f60300aa mov      x22, x0
015554c8: 09554279 ldrh     w9, [x8, #0x12a]
015554cc: 290100b4 cbz      x9, #0x15554f0
015554d0: 0a5940f9 ldr      x10, [x8, #0xb0]
015554d4: 4a210091 add      x10, x10, #8
015554d8: 4b815ff8 ldur     x11, [x10, #-8]
015554dc: 7f0101eb cmp      x11, x1
015554e0: a0020054 b.eq     #0x1555534
015554e4: 290500f1 subs     x9, x9, #1
015554e8: 4a410091 add      x10, x10, #0x10
015554ec: 61ffff54 b.ne     #0x15554d8
015554f0: 42008052 mov      w2, #2
015554f4: e00316aa mov      x0, x22
015554f8: 77afe897 bl       #0xf812d4
015554fc: 12000014 b        #0x1555544
01555500: 296540f9 ldr      x9, [x9, #0xc8]
01555504: 290d0a8b add      x9, x9, x10, lsl #3
01555508: 29815ff8 ldur     x9, [x9, #-8]
0155550c: 3f0108eb cmp      x9, x8
01555510: e1179f1a cset     w1, eq
01555514: 63528752 mov      w3, #0x3a93
01555518: 02000012 and      w2, w0, #1
0155551c: a300a072 movk     w3, #5, lsl #16
01555520: e00316aa mov      x0, x22
01555524: e4031faa mov      x4, xzr
01555528: 02616e94 bl       #0x30ed930 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScore
0155552c: f503002a mov      w21, w0
01555530: 5b000014 b        #0x155569c
01555534: 490140b9 ldr      w9, [x10]
01555538: 29090011 add      w9, w9, #2
0155553c: 08d1298b add      x8, x8, w9, sxtw #4
01555540: 00e10491 add      x0, x8, #0x138
01555544: 080440a9 ldp      x8, x1, [x0]
01555548: e00316aa mov      x0, x22
0155554c: 00013fd6 blr      x8
01555550: 80000036 tbz      w0, #0, #0x1555560
01555554: 55178552 mov      w21, #0x28ba
01555558: b500a072 movk     w21, #5, lsl #16
0155555c: 50000014 b        #0x155569c
01555560: 880240f9 ldr      x8, [x20]
01555564: e00314aa mov      x0, x20
01555568: 09a542f9 ldr      x9, [x8, #0x548]
0155556c: 01a942f9 ldr      x1, [x8, #0x550]
01555570: 20013fd6 blr      x9
01555574: 40090036 tbz      w0, #0, #0x155569c
01555578: 49e401d0 adrp     x9, #0x51df000
0155557c: 29d140f9 ldr      x9, [x9, #0x1a0]
01555580: 880240f9 ldr      x8, [x20]
01555584: 210140f9 ldr      x1, [x9]
01555588: 0ab14439 ldrb     w10, [x8, #0x12c]
0155558c: 29b04439 ldrb     w9, [x1, #0x12c]
01555590: 5f01096b cmp      w10, w9
01555594: 630c0054 b.lo     #0x1555720
01555598: 086540f9 ldr      x8, [x8, #0xc8]
0155559c: 080d098b add      x8, x8, x9, lsl #3
015555a0: 08815ff8 ldur     x8, [x8, #-8]
015555a4: 1f0101eb cmp      x8, x1
015555a8: c10b0054 b.ne     #0x1555720
015555ac: e00314aa mov      x0, x20
015555b0: e1031faa mov      x1, xzr
015555b4: c9f12494 bl       #0x1e91cd8 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$IsLastTwoPinkItem
015555b8: 80000036 tbz      w0, #0, #0x15555c8
015555bc: 35408a52 mov      w21, #0x5201
015555c0: f500a072 movk     w21, #7, lsl #16
015555c4: 08000014 b        #0x15555e4
015555c8: e00314aa mov      x0, x20
015555cc: e1031faa mov      x1, xzr
015555d0: aaf22494 bl       #0x1e92078 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$WillCollectMatchItem
015555d4: 888d8952 mov      w8, #0x4c6c
015555d8: 1f000072 tst      w0, #1
015555dc: a800a072 movk     w8, #5, lsl #16
015555e0: 1511951a csel     w21, w8, w21, ne
015555e4: 000340f9 ldr      x0, [x24]
015555e8: 08e040b9 ldr      w8, [x0, #0xe0]
015555ec: 48000035 cbnz     w8, #0x15555f4
015555f0: 856fe997 bl       #0xfb1404
015555f4: e10240f9 ldr      x1, [x23]
015555f8: 40008052 mov      w0, #2
015555fc: 5a034c94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01555600: e00800b4 cbz      x0, #0x155571c
01555604: 61068052 mov      w1, #0x33
01555608: e2031faa mov      x2, xzr
0155560c: f60300aa mov      x22, x0
01555610: 4f152c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01555614: 00020037 tbnz     w0, #0, #0x1555654
01555618: 01028052 mov      w1, #0x10
0155561c: e00316aa mov      x0, x22
01555620: e2031faa mov      x2, xzr
01555624: 4a152c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01555628: 60010037 tbnz     w0, #0, #0x1555654
0155562c: 410a8052 mov      w1, #0x52
01555630: e00316aa mov      x0, x22
01555634: e2031faa mov      x2, xzr
01555638: 45152c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
0155563c: c0000037 tbnz     w0, #0, #0x1555654
01555640: 010c8052 mov      w1, #0x60
01555644: e00316aa mov      x0, x22
01555648: e2031faa mov      x2, xzr
0155564c: 40152c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01555650: 60020036 tbz      w0, #0, #0x155569c
01555654: e003132a mov      w0, w19
01555658: e1031faa mov      x1, xzr
0155565c: d4bc7894 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
01555660: e0000036 tbz      w0, #0, #0x155567c
01555664: e00314aa mov      x0, x20
01555668: e1031faa mov      x1, xzr
0155566c: 0ab67894 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01555670: 600500b4 cbz      x0, #0x155571c
01555674: 080c40f9 ldr      x8, [x0, #0x18]
01555678: 88c202f8 stur     x8, [x20, #0x2c]
0155567c: 880240f9 ldr      x8, [x20]
01555680: e00314aa mov      x0, x20
01555684: e103132a mov      w1, w19
01555688: 093542f9 ldr      x9, [x8, #0x468]
0155568c: 023942f9 ldr      x2, [x8, #0x470]
01555690: 20013fd6 blr      x9
01555694: bf02006b cmp      w21, w0
01555698: 15b0951a csel     w21, w0, w21, lt
0155569c: 880240f9 ldr      x8, [x20]
015556a0: e00314aa mov      x0, x20
015556a4: 09ad42f9 ldr      x9, [x8, #0x558]
015556a8: 01b142f9 ldr      x1, [x8, #0x560]
015556ac: 20013fd6 blr      x9
015556b0: a0020037 tbnz     w0, #0, #0x1555704
015556b4: 000340f9 ldr      x0, [x24]
015556b8: 08e040b9 ldr      w8, [x0, #0xe0]
015556bc: 48000035 cbnz     w8, #0x15556c4
015556c0: 516fe997 bl       #0xfb1404
015556c4: e10240f9 ldr      x1, [x23]
015556c8: 40008052 mov      w0, #2
015556cc: 26034c94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
015556d0: 600200b4 cbz      x0, #0x155571c
015556d4: 61068052 mov      w1, #0x33
015556d8: e2031faa mov      x2, xzr
015556dc: 1c152c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
015556e0: 20010036 tbz      w0, #0, #0x1555704
015556e4: 880240f9 ldr      x8, [x20]
015556e8: e00314aa mov      x0, x20
015556ec: e103132a mov      w1, w19
015556f0: 093542f9 ldr      x9, [x8, #0x468]
015556f4: 023942f9 ldr      x2, [x8, #0x470]
015556f8: 20013fd6 blr      x9
015556fc: 1f00156b cmp      w0, w21
01555700: 4c000054 b.gt     #0x1555708
01555704: e003152a mov      w0, w21
01555708: f37b43a9 ldp      x19, x30, [sp, #0x30]
0155570c: f55342a9 ldp      x21, x20, [sp, #0x20]
01555710: f75b41a9 ldp      x23, x22, [sp, #0x10]
01555714: f963c4a8 ldp      x25, x24, [sp], #0x40
01555718: c0035fd6 ret      
0155571c: 436fe997 bl       #0xfb1428
01555720: e00314aa mov      x0, x20
01555724: 2770e997 bl       #0xfb17c0
