# Royal.Scenes.Game.Mechanics.Items.StaticItems.GrassItem.GrassItemModel$$GetExplodeScore
# Next metadata method 0x1ba836c, not a proven function boundary.
01ba7fe0: f963bca9 stp      x25, x24, [sp, #-0x40]!
01ba7fe4: f75b01a9 stp      x23, x22, [sp, #0x10]
01ba7fe8: f55302a9 stp      x21, x20, [sp, #0x20]
01ba7fec: f37b03a9 stp      x19, x30, [sp, #0x30]
01ba7ff0: b4ce0190 adrp     x20, #0x557b000
01ba7ff4: 88064a39 ldrb     w8, [x20, #0x281]
01ba7ff8: f303012a mov      w19, w1
01ba7ffc: f60300aa mov      x22, x0
01ba8000: 48020037 tbnz     w8, #0, #0x1ba8048
01ba8004: 80b301b0 adrp     x0, #0x5219000
01ba8008: 00c842f9 ldr      x0, [x0, #0x590]
01ba800c: bd24d097 bl       #0xfb1300
01ba8010: 60b301d0 adrp     x0, #0x5216000
01ba8014: 005447f9 ldr      x0, [x0, #0xea8]
01ba8018: ba24d097 bl       #0xfb1300
01ba801c: a0b101f0 adrp     x0, #0x51df000
01ba8020: 00d040f9 ldr      x0, [x0, #0x1a0]
01ba8024: b724d097 bl       #0xfb1300
01ba8028: e0b00190 adrp     x0, #0x51c4000
01ba802c: 001042f9 ldr      x0, [x0, #0x420]
01ba8030: b424d097 bl       #0xfb1300
01ba8034: 40b001f0 adrp     x0, #0x51b3000
01ba8038: 00a041f9 ldr      x0, [x0, #0x340]
01ba803c: b124d097 bl       #0xfb1300
01ba8040: 28008052 mov      w8, #1
01ba8044: 88060a39 strb     w8, [x20, #0x281]
01ba8048: c81640f9 ldr      x8, [x22, #0x28]
01ba804c: 75528752 mov      w21, #0x3a93
01ba8050: b500a072 movk     w21, #5, lsl #16
01ba8054: 480400b4 cbz      x8, #0x1ba80dc
01ba8058: 000940f9 ldr      x0, [x8, #0x10]
01ba805c: 201800b4 cbz      x0, #0x1ba8360
01ba8060: e1031faa mov      x1, xzr
01ba8064: 86772e94 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
01ba8068: a0030036 tbz      w0, #0, #0x1ba80dc
01ba806c: c01640f9 ldr      x0, [x22, #0x28]
01ba8070: 801700b4 cbz      x0, #0x1ba8360
01ba8074: e1031faa mov      x1, xzr
01ba8078: 7a823c94 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
01ba807c: 201700b4 cbz      x0, #0x1ba8360
01ba8080: 080040f9 ldr      x8, [x0]
01ba8084: 58b001f0 adrp     x24, #0x51b3000
01ba8088: f7b00190 adrp     x23, #0x51c4000
01ba808c: f40300aa mov      x20, x0
01ba8090: 09ad42f9 ldr      x9, [x8, #0x558]
01ba8094: 01b142f9 ldr      x1, [x8, #0x560]
01ba8098: 18a341f9 ldr      x24, [x24, #0x340]
01ba809c: f71242f9 ldr      x23, [x23, #0x420]
01ba80a0: 20013fd6 blr      x9
01ba80a4: 20020036 tbz      w0, #0, #0x1ba80e8
01ba80a8: 75b301d0 adrp     x21, #0x5216000
01ba80ac: b55647f9 ldr      x21, [x21, #0xea8]
01ba80b0: e003132a mov      w0, w19
01ba80b4: e1031faa mov      x1, xzr
01ba80b8: 21725f94 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
01ba80bc: 890240f9 ldr      x9, [x20]
01ba80c0: a80240f9 ldr      x8, [x21]
01ba80c4: 2bb14439 ldrb     w11, [x9, #0x12c]
01ba80c8: 0ab14439 ldrb     w10, [x8, #0x12c]
01ba80cc: 7f010a6b cmp      w11, w10
01ba80d0: a2030054 b.hs     #0x1ba8144
01ba80d4: e1031f2a mov      w1, wzr
01ba80d8: 20000014 b        #0x1ba8158
01ba80dc: 60528752 mov      w0, #0x3a93
01ba80e0: a000a072 movk     w0, #5, lsl #16
01ba80e4: 9a000014 b        #0x1ba834c
01ba80e8: 99b301b0 adrp     x25, #0x5219000
01ba80ec: 39cb42f9 ldr      x25, [x25, #0x590]
01ba80f0: e00314aa mov      x0, x20
01ba80f4: 210340f9 ldr      x1, [x25]
01ba80f8: c424d097 bl       #0xfb1408
01ba80fc: 400500b4 cbz      x0, #0x1ba81a4
01ba8100: 080040f9 ldr      x8, [x0]
01ba8104: 210340f9 ldr      x1, [x25]
01ba8108: f60300aa mov      x22, x0
01ba810c: 09554279 ldrh     w9, [x8, #0x12a]
01ba8110: 290100b4 cbz      x9, #0x1ba8134
01ba8114: 0a5940f9 ldr      x10, [x8, #0xb0]
01ba8118: 4a210091 add      x10, x10, #8
01ba811c: 4b815ff8 ldur     x11, [x10, #-8]
01ba8120: 7f0101eb cmp      x11, x1
01ba8124: a0020054 b.eq     #0x1ba8178
01ba8128: 290500f1 subs     x9, x9, #1
01ba812c: 4a410091 add      x10, x10, #0x10
01ba8130: 61ffff54 b.ne     #0x1ba811c
01ba8134: 42008052 mov      w2, #2
01ba8138: e00316aa mov      x0, x22
01ba813c: 6664cf97 bl       #0xf812d4
01ba8140: 12000014 b        #0x1ba8188
01ba8144: 296540f9 ldr      x9, [x9, #0xc8]
01ba8148: 290d0a8b add      x9, x9, x10, lsl #3
01ba814c: 29815ff8 ldur     x9, [x9, #-8]
01ba8150: 3f0108eb cmp      x9, x8
01ba8154: e1179f1a cset     w1, eq
01ba8158: 63528752 mov      w3, #0x3a93
01ba815c: 02000012 and      w2, w0, #1
01ba8160: a300a072 movk     w3, #5, lsl #16
01ba8164: e00316aa mov      x0, x22
01ba8168: e4031faa mov      x4, xzr
01ba816c: f1155594 bl       #0x30ed930 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScore
01ba8170: f503002a mov      w21, w0
01ba8174: 5b000014 b        #0x1ba82e0
01ba8178: 490140b9 ldr      w9, [x10]
01ba817c: 29090011 add      w9, w9, #2
01ba8180: 08d1298b add      x8, x8, w9, sxtw #4
01ba8184: 00e10491 add      x0, x8, #0x138
01ba8188: 080440a9 ldp      x8, x1, [x0]
01ba818c: e00316aa mov      x0, x22
01ba8190: 00013fd6 blr      x8
01ba8194: 80000036 tbz      w0, #0, #0x1ba81a4
01ba8198: 55178552 mov      w21, #0x28ba
01ba819c: b500a072 movk     w21, #5, lsl #16
01ba81a0: 50000014 b        #0x1ba82e0
01ba81a4: 880240f9 ldr      x8, [x20]
01ba81a8: e00314aa mov      x0, x20
01ba81ac: 09a542f9 ldr      x9, [x8, #0x548]
01ba81b0: 01a942f9 ldr      x1, [x8, #0x550]
01ba81b4: 20013fd6 blr      x9
01ba81b8: 40090036 tbz      w0, #0, #0x1ba82e0
01ba81bc: a9b101f0 adrp     x9, #0x51df000
01ba81c0: 29d140f9 ldr      x9, [x9, #0x1a0]
01ba81c4: 880240f9 ldr      x8, [x20]
01ba81c8: 210140f9 ldr      x1, [x9]
01ba81cc: 0ab14439 ldrb     w10, [x8, #0x12c]
01ba81d0: 29b04439 ldrb     w9, [x1, #0x12c]
01ba81d4: 5f01096b cmp      w10, w9
01ba81d8: 630c0054 b.lo     #0x1ba8364
01ba81dc: 086540f9 ldr      x8, [x8, #0xc8]
01ba81e0: 080d098b add      x8, x8, x9, lsl #3
01ba81e4: 08815ff8 ldur     x8, [x8, #-8]
01ba81e8: 1f0101eb cmp      x8, x1
01ba81ec: c10b0054 b.ne     #0x1ba8364
01ba81f0: e00314aa mov      x0, x20
01ba81f4: e1031faa mov      x1, xzr
01ba81f8: b8a60b94 bl       #0x1e91cd8 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$IsLastTwoPinkItem
01ba81fc: 80000036 tbz      w0, #0, #0x1ba820c
01ba8200: 35408a52 mov      w21, #0x5201
01ba8204: f500a072 movk     w21, #7, lsl #16
01ba8208: 08000014 b        #0x1ba8228
01ba820c: e00314aa mov      x0, x20
01ba8210: e1031faa mov      x1, xzr
01ba8214: 99a70b94 bl       #0x1e92078 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$WillCollectMatchItem
01ba8218: 888d8952 mov      w8, #0x4c6c
01ba821c: 1f000072 tst      w0, #1
01ba8220: a800a072 movk     w8, #5, lsl #16
01ba8224: 1511951a csel     w21, w8, w21, ne
01ba8228: 000340f9 ldr      x0, [x24]
01ba822c: 08e040b9 ldr      w8, [x0, #0xe0]
01ba8230: 48000035 cbnz     w8, #0x1ba8238
01ba8234: 7424d097 bl       #0xfb1404
01ba8238: e10240f9 ldr      x1, [x23]
01ba823c: 40008052 mov      w0, #2
01ba8240: 49b83294 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01ba8244: e00800b4 cbz      x0, #0x1ba8360
01ba8248: 61068052 mov      w1, #0x33
01ba824c: e2031faa mov      x2, xzr
01ba8250: f60300aa mov      x22, x0
01ba8254: 3eca1294 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01ba8258: 00020037 tbnz     w0, #0, #0x1ba8298
01ba825c: 01028052 mov      w1, #0x10
01ba8260: e00316aa mov      x0, x22
01ba8264: e2031faa mov      x2, xzr
01ba8268: 39ca1294 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01ba826c: 60010037 tbnz     w0, #0, #0x1ba8298
01ba8270: 410a8052 mov      w1, #0x52
01ba8274: e00316aa mov      x0, x22
01ba8278: e2031faa mov      x2, xzr
01ba827c: 34ca1294 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01ba8280: c0000037 tbnz     w0, #0, #0x1ba8298
01ba8284: 010c8052 mov      w1, #0x60
01ba8288: e00316aa mov      x0, x22
01ba828c: e2031faa mov      x2, xzr
01ba8290: 2fca1294 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01ba8294: 60020036 tbz      w0, #0, #0x1ba82e0
01ba8298: e003132a mov      w0, w19
01ba829c: e1031faa mov      x1, xzr
01ba82a0: c3715f94 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
01ba82a4: e0000036 tbz      w0, #0, #0x1ba82c0
01ba82a8: e00314aa mov      x0, x20
01ba82ac: e1031faa mov      x1, xzr
01ba82b0: f96a5f94 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01ba82b4: 600500b4 cbz      x0, #0x1ba8360
01ba82b8: 080c40f9 ldr      x8, [x0, #0x18]
01ba82bc: 88c202f8 stur     x8, [x20, #0x2c]
01ba82c0: 880240f9 ldr      x8, [x20]
01ba82c4: e00314aa mov      x0, x20
01ba82c8: e103132a mov      w1, w19
01ba82cc: 093542f9 ldr      x9, [x8, #0x468]
01ba82d0: 023942f9 ldr      x2, [x8, #0x470]
01ba82d4: 20013fd6 blr      x9
01ba82d8: bf02006b cmp      w21, w0
01ba82dc: 15b0951a csel     w21, w0, w21, lt
01ba82e0: 880240f9 ldr      x8, [x20]
01ba82e4: e00314aa mov      x0, x20
01ba82e8: 09ad42f9 ldr      x9, [x8, #0x558]
01ba82ec: 01b142f9 ldr      x1, [x8, #0x560]
01ba82f0: 20013fd6 blr      x9
01ba82f4: a0020037 tbnz     w0, #0, #0x1ba8348
01ba82f8: 000340f9 ldr      x0, [x24]
01ba82fc: 08e040b9 ldr      w8, [x0, #0xe0]
01ba8300: 48000035 cbnz     w8, #0x1ba8308
01ba8304: 4024d097 bl       #0xfb1404
01ba8308: e10240f9 ldr      x1, [x23]
01ba830c: 40008052 mov      w0, #2
01ba8310: 15b83294 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01ba8314: 600200b4 cbz      x0, #0x1ba8360
01ba8318: 61068052 mov      w1, #0x33
01ba831c: e2031faa mov      x2, xzr
01ba8320: 0bca1294 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01ba8324: 20010036 tbz      w0, #0, #0x1ba8348
01ba8328: 880240f9 ldr      x8, [x20]
01ba832c: e00314aa mov      x0, x20
01ba8330: e103132a mov      w1, w19
01ba8334: 093542f9 ldr      x9, [x8, #0x468]
01ba8338: 023942f9 ldr      x2, [x8, #0x470]
01ba833c: 20013fd6 blr      x9
01ba8340: 1f00156b cmp      w0, w21
01ba8344: 4c000054 b.gt     #0x1ba834c
01ba8348: e003152a mov      w0, w21
01ba834c: f37b43a9 ldp      x19, x30, [sp, #0x30]
01ba8350: f55342a9 ldp      x21, x20, [sp, #0x20]
01ba8354: f75b41a9 ldp      x23, x22, [sp, #0x10]
01ba8358: f963c4a8 ldp      x25, x24, [sp], #0x40
01ba835c: c0035fd6 ret      
01ba8360: 3224d097 bl       #0xfb1428
01ba8364: e00314aa mov      x0, x20
01ba8368: 1625d097 bl       #0xfb17c0
