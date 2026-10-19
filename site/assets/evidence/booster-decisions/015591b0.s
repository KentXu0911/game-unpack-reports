# Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
015591b0: fa0f1bf8 str      x26, [sp, #-0x50]!
015591b4: f96301a9 stp      x25, x24, [sp, #0x10]
015591b8: f75b02a9 stp      x23, x22, [sp, #0x20]
015591bc: f55303a9 stp      x21, x20, [sp, #0x30]
015591c0: f37b04a9 stp      x19, x30, [sp, #0x40]
015591c4: f40002f0 adrp     x20, #0x5578000
015591c8: 88a27739 ldrb     w8, [x20, #0xde8]
015591cc: f303012a mov      w19, w1
015591d0: f70300aa mov      x23, x0
015591d4: 48020037 tbnz     w8, #0, #0x155921c
015591d8: 00e60190 adrp     x0, #0x5219000
015591dc: 00c842f9 ldr      x0, [x0, #0x590]
015591e0: 4860e997 bl       #0xfb1300
015591e4: e0e501b0 adrp     x0, #0x5216000
015591e8: 005447f9 ldr      x0, [x0, #0xea8]
015591ec: 4560e997 bl       #0xfb1300
015591f0: 20e401d0 adrp     x0, #0x51df000
015591f4: 00d040f9 ldr      x0, [x0, #0x1a0]
015591f8: 4260e997 bl       #0xfb1300
015591fc: 40e301f0 adrp     x0, #0x51c4000
01559200: 001042f9 ldr      x0, [x0, #0x420]
01559204: 3f60e997 bl       #0xfb1300
01559208: c0e201d0 adrp     x0, #0x51b3000
0155920c: 00a041f9 ldr      x0, [x0, #0x340]
01559210: 3c60e997 bl       #0xfb1300
01559214: 28008052 mov      w8, #1
01559218: 88a23739 strb     w8, [x20, #0xde8]
0155921c: e03e40f9 ldr      x0, [x23, #0x78]
01559220: c01800b4 cbz      x0, #0x1559538
01559224: 42feff97 bl       #0x1558b2c ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$GetTotalRemainingExplodeCount
01559228: e81640f9 ldr      x8, [x23, #0x28]
0155922c: 29d18852 mov      w9, #0x4689
01559230: 2a529b52 mov      w10, #0xda91
01559234: 1f040071 cmp      w0, #1
01559238: c900a072 movk     w9, #6, lsl #16
0155923c: 6a01a072 movk     w10, #0xb, lsl #16
01559240: 5401891a csel     w20, w10, w9, eq
01559244: c81600b4 cbz      x8, #0x155951c
01559248: f603002a mov      w22, w0
0155924c: 000940f9 ldr      x0, [x8, #0x10]
01559250: 401700b4 cbz      x0, #0x1559538
01559254: e1031faa mov      x1, xzr
01559258: 09b34794 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
0155925c: 00160036 tbz      w0, #0, #0x155951c
01559260: e01640f9 ldr      x0, [x23, #0x28]
01559264: a01600b4 cbz      x0, #0x1559538
01559268: e1031faa mov      x1, xzr
0155926c: fdbd5594 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
01559270: 401600b4 cbz      x0, #0x1559538
01559274: 080040f9 ldr      x8, [x0]
01559278: d9e201d0 adrp     x25, #0x51b3000
0155927c: 58e301f0 adrp     x24, #0x51c4000
01559280: f50300aa mov      x21, x0
01559284: 09ad42f9 ldr      x9, [x8, #0x558]
01559288: 01b142f9 ldr      x1, [x8, #0x560]
0155928c: 39a341f9 ldr      x25, [x25, #0x340]
01559290: 181342f9 ldr      x24, [x24, #0x420]
01559294: 20013fd6 blr      x9
01559298: c0010036 tbz      w0, #0, #0x15592d0
0155929c: f6e501b0 adrp     x22, #0x5216000
015592a0: d65647f9 ldr      x22, [x22, #0xea8]
015592a4: e003132a mov      w0, w19
015592a8: e1031faa mov      x1, xzr
015592ac: a4ad7894 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
015592b0: a90240f9 ldr      x9, [x21]
015592b4: c80240f9 ldr      x8, [x22]
015592b8: 2bb14439 ldrb     w11, [x9, #0x12c]
015592bc: 0ab14439 ldrb     w10, [x8, #0x12c]
015592c0: 7f010a6b cmp      w11, w10
015592c4: 42030054 b.hs     #0x155932c
015592c8: e1031f2a mov      w1, wzr
015592cc: 1d000014 b        #0x1559340
015592d0: 1ae60190 adrp     x26, #0x5219000
015592d4: 5acb42f9 ldr      x26, [x26, #0x590]
015592d8: e00315aa mov      x0, x21
015592dc: 410340f9 ldr      x1, [x26]
015592e0: 4a60e997 bl       #0xfb1408
015592e4: a00500b4 cbz      x0, #0x1559398
015592e8: 080040f9 ldr      x8, [x0]
015592ec: 410340f9 ldr      x1, [x26]
015592f0: f70300aa mov      x23, x0
015592f4: 09554279 ldrh     w9, [x8, #0x12a]
015592f8: 290100b4 cbz      x9, #0x155931c
015592fc: 0a5940f9 ldr      x10, [x8, #0xb0]
01559300: 4a210091 add      x10, x10, #8
01559304: 4b815ff8 ldur     x11, [x10, #-8]
01559308: 7f0101eb cmp      x11, x1
0155930c: 80020054 b.eq     #0x155935c
01559310: 290500f1 subs     x9, x9, #1
01559314: 4a410091 add      x10, x10, #0x10
01559318: 61ffff54 b.ne     #0x1559304
0155931c: 42008052 mov      w2, #2
01559320: e00317aa mov      x0, x23
01559324: ec9fe897 bl       #0xf812d4
01559328: 11000014 b        #0x155936c
0155932c: 296540f9 ldr      x9, [x9, #0xc8]
01559330: 290d0a8b add      x9, x9, x10, lsl #3
01559334: 29815ff8 ldur     x9, [x9, #-8]
01559338: 3f0108eb cmp      x9, x8
0155933c: e1179f1a cset     w1, eq
01559340: 02000012 and      w2, w0, #1
01559344: e00317aa mov      x0, x23
01559348: e303142a mov      w3, w20
0155934c: e4031faa mov      x4, xzr
01559350: 78516e94 bl       #0x30ed930 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScore
01559354: f403002a mov      w20, w0
01559358: 57000014 b        #0x15594b4
0155935c: 490140b9 ldr      w9, [x10]
01559360: 29090011 add      w9, w9, #2
01559364: 08d1298b add      x8, x8, w9, sxtw #4
01559368: 00e10491 add      x0, x8, #0x138
0155936c: 080440a9 ldp      x8, x1, [x0]
01559370: e00317aa mov      x0, x23
01559374: 00013fd6 blr      x8
01559378: 00010036 tbz      w0, #0, #0x1559398
0155937c: 288e8652 mov      w8, #0x3471
01559380: 09229f52 mov      w9, #0xf910
01559384: df060071 cmp      w22, #1
01559388: c800a072 movk     w8, #6, lsl #16
0155938c: c900a072 movk     w9, #6, lsl #16
01559390: 3401881a csel     w20, w9, w8, eq
01559394: 48000014 b        #0x15594b4
01559398: a80240f9 ldr      x8, [x21]
0155939c: e00315aa mov      x0, x21
015593a0: 09a542f9 ldr      x9, [x8, #0x548]
015593a4: 01a942f9 ldr      x1, [x8, #0x550]
015593a8: 20013fd6 blr      x9
015593ac: 40080036 tbz      w0, #0, #0x15594b4
015593b0: 29e401d0 adrp     x9, #0x51df000
015593b4: 29d140f9 ldr      x9, [x9, #0x1a0]
015593b8: a80240f9 ldr      x8, [x21]
015593bc: 210140f9 ldr      x1, [x9]
015593c0: 0ab14439 ldrb     w10, [x8, #0x12c]
015593c4: 29b04439 ldrb     w9, [x1, #0x12c]
015593c8: 5f01096b cmp      w10, w9
015593cc: 830b0054 b.lo     #0x155953c
015593d0: 086540f9 ldr      x8, [x8, #0xc8]
015593d4: 080d098b add      x8, x8, x9, lsl #3
015593d8: 08815ff8 ldur     x8, [x8, #-8]
015593dc: 1f0101eb cmp      x8, x1
015593e0: e10a0054 b.ne     #0x155953c
015593e4: e00315aa mov      x0, x21
015593e8: e1031faa mov      x1, xzr
015593ec: 3be22494 bl       #0x1e91cd8 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$IsLastTwoPinkItem
015593f0: 00010036 tbz      w0, #0, #0x1559410
015593f4: 28408a52 mov      w8, #0x5201
015593f8: 89b99f52 mov      w9, #0xfdcc
015593fc: df060071 cmp      w22, #1
01559400: e800a072 movk     w8, #7, lsl #16
01559404: 6901a072 movk     w9, #0xb, lsl #16
01559408: 3401881a csel     w20, w9, w8, eq
0155940c: 0c000014 b        #0x155943c
01559410: e00315aa mov      x0, x21
01559414: e1031faa mov      x1, xzr
01559418: 18e32494 bl       #0x1e92078 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$WillCollectMatchItem
0155941c: e8f09352 mov      w8, #0x9f87
01559420: 697e9d52 mov      w9, #0xebf3
01559424: df060071 cmp      w22, #1
01559428: c800a072 movk     w8, #6, lsl #16
0155942c: 6901a072 movk     w9, #0xb, lsl #16
01559430: 2801881a csel     w8, w9, w8, eq
01559434: 1f000072 tst      w0, #1
01559438: 1411941a csel     w20, w8, w20, ne
0155943c: 200340f9 ldr      x0, [x25]
01559440: 08e040b9 ldr      w8, [x0, #0xe0]
01559444: 48000035 cbnz     w8, #0x155944c
01559448: ef5fe997 bl       #0xfb1404
0155944c: 010340f9 ldr      x1, [x24]
01559450: 40008052 mov      w0, #2
01559454: c4f34b94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01559458: 000700b4 cbz      x0, #0x1559538
0155945c: 61068052 mov      w1, #0x33
01559460: e2031faa mov      x2, xzr
01559464: ba052c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01559468: 60020036 tbz      w0, #0, #0x15594b4
0155946c: e003132a mov      w0, w19
01559470: e1031faa mov      x1, xzr
01559474: 4ead7894 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
01559478: e0000036 tbz      w0, #0, #0x1559494
0155947c: e00315aa mov      x0, x21
01559480: e1031faa mov      x1, xzr
01559484: 84a67894 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01559488: 800500b4 cbz      x0, #0x1559538
0155948c: 080c40f9 ldr      x8, [x0, #0x18]
01559490: a8c202f8 stur     x8, [x21, #0x2c]
01559494: a80240f9 ldr      x8, [x21]
01559498: e00315aa mov      x0, x21
0155949c: e103132a mov      w1, w19
015594a0: 093542f9 ldr      x9, [x8, #0x468]
015594a4: 023942f9 ldr      x2, [x8, #0x470]
015594a8: 20013fd6 blr      x9
015594ac: 9f02006b cmp      w20, w0
015594b0: 14b0941a csel     w20, w0, w20, lt
015594b4: a80240f9 ldr      x8, [x21]
015594b8: e00315aa mov      x0, x21
015594bc: 09ad42f9 ldr      x9, [x8, #0x558]
015594c0: 01b142f9 ldr      x1, [x8, #0x560]
015594c4: 20013fd6 blr      x9
015594c8: a0020037 tbnz     w0, #0, #0x155951c
015594cc: 200340f9 ldr      x0, [x25]
015594d0: 08e040b9 ldr      w8, [x0, #0xe0]
015594d4: 48000035 cbnz     w8, #0x15594dc
015594d8: cb5fe997 bl       #0xfb1404
015594dc: 010340f9 ldr      x1, [x24]
015594e0: 40008052 mov      w0, #2
015594e4: a0f34b94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
015594e8: 800200b4 cbz      x0, #0x1559538
015594ec: 61068052 mov      w1, #0x33
015594f0: e2031faa mov      x2, xzr
015594f4: 96052c94 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
015594f8: 20010036 tbz      w0, #0, #0x155951c
015594fc: a80240f9 ldr      x8, [x21]
01559500: e00315aa mov      x0, x21
01559504: e103132a mov      w1, w19
01559508: 093542f9 ldr      x9, [x8, #0x468]
0155950c: 023942f9 ldr      x2, [x8, #0x470]
01559510: 20013fd6 blr      x9
01559514: 1f00146b cmp      w0, w20
01559518: 4c000054 b.gt     #0x1559520
0155951c: e003142a mov      w0, w20
01559520: f37b44a9 ldp      x19, x30, [sp, #0x40]
01559524: f55343a9 ldp      x21, x20, [sp, #0x30]
01559528: f75b42a9 ldp      x23, x22, [sp, #0x20]
0155952c: f96341a9 ldp      x25, x24, [sp, #0x10]
01559530: fa0745f8 ldr      x26, [sp], #0x50
01559534: c0035fd6 ret      
01559538: bc5fe997 bl       #0xfb1428
0155953c: e00315aa mov      x0, x21
01559540: a060e997 bl       #0xfb17c0
