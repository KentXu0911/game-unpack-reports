# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$GetColumnScore
# Linear span; next metadata entry is not a proven CFG boundary.
020f12f8: ff0302d1 sub      sp, sp, #0x80
020f12fc: fc6f02a9 stp      x28, x27, [sp, #0x20]
020f1300: fa6703a9 stp      x26, x25, [sp, #0x30]
020f1304: f85f04a9 stp      x24, x23, [sp, #0x40]
020f1308: f65705a9 stp      x22, x21, [sp, #0x50]
020f130c: f44f06a9 stp      x20, x19, [sp, #0x60]
020f1310: fd7b07a9 stp      x29, x30, [sp, #0x70]
020f1314: 73a40190 adrp     x19, #0x557d000
020f1318: 681e5539 ldrb     w8, [x19, #0x547]
020f131c: f503042a mov      w21, w4
020f1320: f90303aa mov      x25, x3
020f1324: fb03022a mov      w27, w2
020f1328: f603012a mov      w22, w1
020f132c: f80300aa mov      x24, x0
020f1330: 28010037 tbnz     w8, #0, #0x20f1354
020f1334: 608501f0 adrp     x0, #0x51a0000
020f1338: 00f441f9 ldr      x0, [x0, #0x3e8]
020f133c: f1ffba97 bl       #0xfb1300
020f1340: e08701b0 adrp     x0, #0x51ee000
020f1344: 00e444f9 ldr      x0, [x0, #0x9c8]
020f1348: eeffba97 bl       #0xfb1300
020f134c: 28008052 mov      w8, #1
020f1350: 681e1539 strb     w8, [x19, #0x547]
020f1354: 3f030039 strb     wzr, [x25]
020f1358: 006340f9 ldr      x0, [x24, #0xc0]
020f135c: e01c00b4 cbz      x0, #0x20f16f8
020f1360: 021840b9 ldr      w2, [x0, #0x18]
020f1364: e1031f2a mov      w1, wzr
020f1368: e3031faa mov      x3, xzr
020f136c: badb1194 bl       #0x2568254 ; System.Array$$Clear
020f1370: 001b40f9 ldr      x0, [x24, #0x30]
020f1374: 201c00b4 cbz      x0, #0x20f16f8
020f1378: e1031faa mov      x1, xzr
020f137c: 22971994 bl       #0x2757004 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardStartY
020f1380: 081b40f9 ldr      x8, [x24, #0x30]
020f1384: a81b00b4 cbz      x8, #0x20f16f8
020f1388: fa03002a mov      w26, w0
020f138c: f3031f2a mov      w19, wzr
020f1390: ffff0129 stp      wzr, wzr, [sp, #0xc]
020f1394: f7031f2a mov      w23, wzr
020f1398: 7b030012 and      w27, w27, #1
020f139c: f51700b9 str      w21, [sp, #0x14]
020f13a0: e00308aa mov      x0, x8
020f13a4: e1031faa mov      x1, xzr
020f13a8: 28971994 bl       #0x2757048 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardEndY
020f13ac: 5f03006b cmp      w26, w0
020f13b0: 2c130054 b.gt     #0x20f1614
020f13b4: 141b40f9 ldr      x20, [x24, #0x30]
020f13b8: e0630091 add      x0, sp, #0x18
020f13bc: e103162a mov      w1, w22
020f13c0: e2031a2a mov      w2, w26
020f13c4: e3031faa mov      x3, xzr
020f13c8: ff0f00f9 str      xzr, [sp, #0x18]
020f13cc: 2a5b2794 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
020f13d0: 541900b4 cbz      x20, #0x20f16f8
020f13d4: e10f40f9 ldr      x1, [sp, #0x18]
020f13d8: e00314aa mov      x0, x20
020f13dc: e2031faa mov      x2, xzr
020f13e0: 4c8c1994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020f13e4: fd0300aa mov      x29, x0
020f13e8: e00318aa mov      x0, x24
020f13ec: e1031daa mov      x1, x29
020f13f0: e203152a mov      w2, w21
020f13f4: e3031b2a mov      w3, w27
020f13f8: c1000094 bl       #0x20f16fc ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$GetCellScoreForRocket
020f13fc: 34034039 ldrb     w20, [x25]
020f1400: fc03002a mov      w28, w0
020f1404: 1f000071 cmp      w0, #0
020f1408: 6d000054 b.le     #0x20f1414
020f140c: 28008052 mov      w8, #1
020f1410: 04000014 b        #0x20f1420
020f1414: e1031daa mov      x1, x29
020f1418: d3000094 bl       #0x20f1764 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$HasTargetableBelowItemUnderLightball
020f141c: 08000012 and      w8, w0, #1
020f1420: 0801142a orr      w8, w8, w20
020f1424: 28030039 strb     w8, [x25]
020f1428: 9d1600b4 cbz      x29, #0x20f16f8
020f142c: a06340f9 ldr      x0, [x29, #0xc0]
020f1430: 401600b4 cbz      x0, #0x20f16f8
020f1434: e1031faa mov      x1, xzr
020f1438: 9303130b add      w19, w28, w19
020f143c: 84612794 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
020f1440: 200e0037 tbnz     w0, #0, #0x20f1604
020f1444: a00b40f9 ldr      x0, [x29, #0x10]
020f1448: 801500b4 cbz      x0, #0x20f16f8
020f144c: e1031faa mov      x1, xzr
020f1450: 8b521994 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
020f1454: 800d0036 tbz      w0, #0, #0x20f1604
020f1458: e0031daa mov      x0, x29
020f145c: e1031faa mov      x1, xzr
020f1460: 805d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f1464: a01400b4 cbz      x0, #0x20f16f8
020f1468: 080040f9 ldr      x8, [x0]
020f146c: 09bd41f9 ldr      x9, [x8, #0x378]
020f1470: 01c141f9 ldr      x1, [x8, #0x380]
020f1474: 20013fd6 blr      x9
020f1478: 1f140071 cmp      w0, #5
020f147c: 01010054 b.ne     #0x20f149c
020f1480: a80b9352 mov      w8, #0x985d
020f1484: e8fcbf72 movk     w8, #0xffe7, lsl #16
020f1488: 6802080b add      w8, w19, w8
020f148c: 9f070071 cmp      w28, #1
020f1490: 73b2881a csel     w19, w19, w8, lt
020f1494: 35008052 mov      w21, #1
020f1498: 3d000014 b        #0x20f158c
020f149c: e0031daa mov      x0, x29
020f14a0: e1031faa mov      x1, xzr
020f14a4: 6f5d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f14a8: 801200b4 cbz      x0, #0x20f16f8
020f14ac: 080040f9 ldr      x8, [x0]
020f14b0: 09bd41f9 ldr      x9, [x8, #0x378]
020f14b4: 01c141f9 ldr      x1, [x8, #0x380]
020f14b8: 20013fd6 blr      x9
020f14bc: 1fc00071 cmp      w0, #0x30
020f14c0: 61010054 b.ne     #0x20f14ec
020f14c4: e0031daa mov      x0, x29
020f14c8: e1031faa mov      x1, xzr
020f14cc: 655d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f14d0: 401100b4 cbz      x0, #0x20f16f8
020f14d4: 080040f9 ldr      x8, [x0]
020f14d8: 096542f9 ldr      x9, [x8, #0x4c8]
020f14dc: 016942f9 ldr      x1, [x8, #0x4d0]
020f14e0: 20013fd6 blr      x9
020f14e4: 1f040071 cmp      w0, #1
020f14e8: 0d040054 b.le     #0x20f1568
020f14ec: e0031daa mov      x0, x29
020f14f0: e1031faa mov      x1, xzr
020f14f4: 5b5d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f14f8: 001000b4 cbz      x0, #0x20f16f8
020f14fc: 080040f9 ldr      x8, [x0]
020f1500: 09bd41f9 ldr      x9, [x8, #0x378]
020f1504: 01c141f9 ldr      x1, [x8, #0x380]
020f1508: 20013fd6 blr      x9
020f150c: 1f400171 cmp      w0, #0x50
020f1510: 61010054 b.ne     #0x20f153c
020f1514: e0031daa mov      x0, x29
020f1518: e1031faa mov      x1, xzr
020f151c: 515d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f1520: c00e00b4 cbz      x0, #0x20f16f8
020f1524: 080040f9 ldr      x8, [x0]
020f1528: 096542f9 ldr      x9, [x8, #0x4c8]
020f152c: 016942f9 ldr      x1, [x8, #0x4d0]
020f1530: 20013fd6 blr      x9
020f1534: 1f040071 cmp      w0, #1
020f1538: 2d020054 b.le     #0x20f157c
020f153c: e0031daa mov      x0, x29
020f1540: e1031faa mov      x1, xzr
020f1544: 475d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f1548: 800d00b4 cbz      x0, #0x20f16f8
020f154c: 080040f9 ldr      x8, [x0]
020f1550: 09bd41f9 ldr      x9, [x8, #0x378]
020f1554: 01c141f9 ldr      x1, [x8, #0x380]
020f1558: 20013fd6 blr      x9
020f155c: 1fb00171 cmp      w0, #0x6c
020f1560: f5079f1a cset     w21, ne
020f1564: 0a000014 b        #0x20f158c
020f1568: e81340b9 ldr      w8, [sp, #0x10]
020f156c: 35008052 mov      w21, #1
020f1570: 08050011 add      w8, w8, #1
020f1574: e81300b9 str      w8, [sp, #0x10]
020f1578: 05000014 b        #0x20f158c
020f157c: e80f40b9 ldr      w8, [sp, #0xc]
020f1580: 35008052 mov      w21, #1
020f1584: 08050011 add      w8, w8, #1
020f1588: e80f00b9 str      w8, [sp, #0xc]
020f158c: 002740f9 ldr      x0, [x24, #0x48]
020f1590: 400b00b4 cbz      x0, #0x20f16f8
020f1594: e1031faa mov      x1, xzr
020f1598: 51a5fd97 bl       #0x205aadc ; Royal.Player.Context.Units.LevelManager$$IsThereBottomCollectInLevel
020f159c: a0020036 tbz      w0, #0, #0x20f15f0
020f15a0: e0031daa mov      x0, x29
020f15a4: e1031faa mov      x1, xzr
020f15a8: 2e5d2794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f15ac: 1d6340f9 ldr      x29, [x24, #0xc0]
020f15b0: f40300aa mov      x20, x0
020f15b4: e0630091 add      x0, sp, #0x18
020f15b8: e103162a mov      w1, w22
020f15bc: e2031f2a mov      w2, wzr
020f15c0: e3031faa mov      x3, xzr
020f15c4: ff0f00f9 str      xzr, [sp, #0x18]
020f15c8: ab5a2794 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
020f15cc: 740900b4 cbz      x20, #0x20f16f8
020f15d0: 880240f9 ldr      x8, [x20]
020f15d4: e30f40f9 ldr      x3, [sp, #0x18]
020f15d8: e11740b9 ldr      w1, [sp, #0x14]
020f15dc: e00314aa mov      x0, x20
020f15e0: 091544f9 ldr      x9, [x8, #0x828]
020f15e4: 041944f9 ldr      x4, [x8, #0x830]
020f15e8: e2031daa mov      x2, x29
020f15ec: 20013fd6 blr      x9
020f15f0: 9f030071 cmp      w28, #0
020f15f4: e8d79f1a cset     w8, gt
020f15f8: a802080a and      w8, w21, w8
020f15fc: f51740b9 ldr      w21, [sp, #0x14]
020f1600: f702080b add      w23, w23, w8
020f1604: 081b40f9 ldr      x8, [x24, #0x30]
020f1608: 5a070011 add      w26, w26, #1
020f160c: a8ecffb5 cbnz     x8, #0x20f13a0
020f1610: 3a000014 b        #0x20f16f8
020f1614: 002740f9 ldr      x0, [x24, #0x48]
020f1618: 000700b4 cbz      x0, #0x20f16f8
020f161c: e1031faa mov      x1, xzr
020f1620: 2fa5fd97 bl       #0x205aadc ; Royal.Player.Context.Units.LevelManager$$IsThereBottomCollectInLevel
020f1624: ff060071 cmp      w23, #1
020f1628: 4b020054 b.lt     #0x20f1670
020f162c: 20020036 tbz      w0, #0, #0x20f1670
020f1630: 141b40f9 ldr      x20, [x24, #0x30]
020f1634: 186340f9 ldr      x24, [x24, #0xc0]
020f1638: e0630091 add      x0, sp, #0x18
020f163c: e103162a mov      w1, w22
020f1640: e2031f2a mov      w2, wzr
020f1644: e3031faa mov      x3, xzr
020f1648: ff0f00f9 str      xzr, [sp, #0x18]
020f164c: 8a5a2794 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
020f1650: 540500b4 cbz      x20, #0x20f16f8
020f1654: e20f40f9 ldr      x2, [sp, #0x18]
020f1658: e00314aa mov      x0, x20
020f165c: e10318aa mov      x1, x24
020f1660: e303152a mov      w3, w21
020f1664: e4031faa mov      x4, xzr
020f1668: f4a91994 bl       #0x275be38 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$GetBottomCollectVerticalExploderScoreForClearedCells
020f166c: 1300130b add      w19, w0, w19
020f1670: f4d74129 ldp      w20, w21, [sp, #0xc]
020f1674: bf060071 cmp      w21, #1
020f1678: 6b010054 b.lt     #0x20f16a4
020f167c: e88701b0 adrp     x8, #0x51ee000
020f1680: 08e544f9 ldr      x8, [x8, #0x9c8]
020f1684: c0058052 mov      w0, #0x2e
020f1688: 010140f9 ldr      x1, [x8]
020f168c: f8341194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f1690: 400300b4 cbz      x0, #0x20f16f8
020f1694: e103152a mov      w1, w21
020f1698: e2031faa mov      x2, xzr
020f169c: 2eb0c697 bl       #0x129d754 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.TreasureMapItem.TreasureMapHelper$$GetTreasureRevealExtraScore
020f16a0: 1300130b add      w19, w0, w19
020f16a4: 9f060071 cmp      w20, #1
020f16a8: 6b010054 b.lt     #0x20f16d4
020f16ac: 688501f0 adrp     x8, #0x51a0000
020f16b0: 08f541f9 ldr      x8, [x8, #0x3e8]
020f16b4: e0098052 mov      w0, #0x4f
020f16b8: 010140f9 ldr      x1, [x8]
020f16bc: ec341194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f16c0: c00100b4 cbz      x0, #0x20f16f8
020f16c4: e103142a mov      w1, w20
020f16c8: e2031faa mov      x2, xzr
020f16cc: 21fdf497 bl       #0x1e30b50 ; Royal.Scenes.Game.Mechanics.Items.LogItem.LogItemHelper$$GetLogActivateExtraScore
020f16d0: 1300130b add      w19, w0, w19
020f16d4: e003132a mov      w0, w19
020f16d8: fd7b47a9 ldp      x29, x30, [sp, #0x70]
020f16dc: f44f46a9 ldp      x20, x19, [sp, #0x60]
020f16e0: f65745a9 ldp      x22, x21, [sp, #0x50]
020f16e4: f85f44a9 ldp      x24, x23, [sp, #0x40]
020f16e8: fa6743a9 ldp      x26, x25, [sp, #0x30]
020f16ec: fc6f42a9 ldp      x28, x27, [sp, #0x20]
020f16f0: ff030291 add      sp, sp, #0x80
020f16f4: c0035fd6 ret      
020f16f8: 4cffba97 bl       #0xfb1428
