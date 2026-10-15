# Royal.Scenes.Game.Levels.Units.FallManager$$ShouldFindCross
# Next metadata method 0x2a2c6a8, not a proven function boundary.
02a2c350: f75bbda9 stp      x23, x22, [sp, #-0x30]!
02a2c354: f55301a9 stp      x21, x20, [sp, #0x10]
02a2c358: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2c35c: b65a01b0 adrp     x22, #0x5581000
02a2c360: 773c01b0 adrp     x23, #0x51b9000
02a2c364: c8da7939 ldrb     w8, [x22, #0xe76]
02a2c368: f77245f9 ldr      x23, [x23, #0xae0]
02a2c36c: f40302aa mov      x20, x2
02a2c370: f30301aa mov      x19, x1
02a2c374: f50300aa mov      x21, x0
02a2c378: 08030037 tbnz     w8, #0, #0x2a2c3d8
02a2c37c: e03c01d0 adrp     x0, #0x51ca000
02a2c380: 002c45f9 ldr      x0, [x0, #0xa58]
02a2c384: df139697 bl       #0xfb1300
02a2c388: 003d01d0 adrp     x0, #0x51ce000
02a2c38c: 004c45f9 ldr      x0, [x0, #0xa98]
02a2c390: dc139697 bl       #0xfb1300
02a2c394: 003e01d0 adrp     x0, #0x51ee000
02a2c398: 00fc45f9 ldr      x0, [x0, #0xbf8]
02a2c39c: d9139697 bl       #0xfb1300
02a2c3a0: 603e01d0 adrp     x0, #0x51fa000
02a2c3a4: 00f840f9 ldr      x0, [x0, #0x1f0]
02a2c3a8: d6139697 bl       #0xfb1300
02a2c3ac: 603c01b0 adrp     x0, #0x51b9000
02a2c3b0: 007045f9 ldr      x0, [x0, #0xae0]
02a2c3b4: d3139697 bl       #0xfb1300
02a2c3b8: c03c0190 adrp     x0, #0x51c4000
02a2c3bc: 001042f9 ldr      x0, [x0, #0x420]
02a2c3c0: d0139697 bl       #0xfb1300
02a2c3c4: 203c01f0 adrp     x0, #0x51b3000
02a2c3c8: 00a041f9 ldr      x0, [x0, #0x340]
02a2c3cc: cd139697 bl       #0xfb1300
02a2c3d0: 28008052 mov      w8, #1
02a2c3d4: c8da3939 strb     w8, [x22, #0xe76]
02a2c3d8: e00240f9 ldr      x0, [x23]
02a2c3dc: 08e040b9 ldr      w8, [x0, #0xe0]
02a2c3e0: 48000035 cbnz     w8, #0x2a2c3e8
02a2c3e4: 08149697 bl       #0xfb1404
02a2c3e8: e0031faa mov      x0, xzr
02a2c3ec: 44b8d897 bl       #0x205a4fc ; Royal.Player.Context.Units.LevelManager$$get_IsMultipleBoardLevel
02a2c3f0: a0010036 tbz      w0, #0, #0x2a2c424
02a2c3f4: a81a40f9 ldr      x8, [x21, #0x30]
02a2c3f8: 681500b4 cbz      x8, #0x2a2c6a4
02a2c3fc: 007940f9 ldr      x0, [x8, #0xf0]
02a2c400: 201500b4 cbz      x0, #0x2a2c6a4
02a2c404: e1031faa mov      x1, xzr
02a2c408: 54a2f497 bl       #0x2754d58 ; Royal.Scenes.Game.Levels.Units.BoardManager$$get_CurrentBoard
02a2c40c: d31400b4 cbz      x19, #0x2a2c6a4
02a2c410: a01400b4 cbz      x0, #0x2a2c6a4
02a2c414: 611a40b9 ldr      w1, [x19, #0x18]
02a2c418: e2031faa mov      x2, xzr
02a2c41c: fda0f497 bl       #0x2754810 ; Royal.Scenes.Game.Levels.Units.Board$$CanCrossFall
02a2c420: a0000036 tbz      w0, #0, #0x2a2c434
02a2c424: a81640f9 ldr      x8, [x21, #0x28]
02a2c428: e81300b4 cbz      x8, #0x2a2c6a4
02a2c42c: 08914039 ldrb     w8, [x8, #0x24]
02a2c430: e8000034 cbz      w8, #0x2a2c44c
02a2c434: f4031f2a mov      w20, wzr
02a2c438: e003142a mov      w0, w20
02a2c43c: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c440: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c444: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2c448: c0035fd6 ret      
02a2c44c: 283c01f0 adrp     x8, #0x51b3000
02a2c450: 08a141f9 ldr      x8, [x8, #0x340]
02a2c454: d53c0190 adrp     x21, #0x51c4000
02a2c458: 000140f9 ldr      x0, [x8]
02a2c45c: 08e040b9 ldr      w8, [x0, #0xe0]
02a2c460: b51242f9 ldr      x21, [x21, #0x420]
02a2c464: 48000035 cbnz     w8, #0x2a2c46c
02a2c468: e7139697 bl       #0xfb1404
02a2c46c: a10240f9 ldr      x1, [x21]
02a2c470: 40008052 mov      w0, #2
02a2c474: bca7f897 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
02a2c478: 601100b4 cbz      x0, #0x2a2c6a4
02a2c47c: 61068052 mov      w1, #0x33
02a2c480: e2031faa mov      x2, xzr
02a2c484: b2b9d897 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
02a2c488: a0100036 tbz      w0, #0, #0x2a2c69c
02a2c48c: 140500b4 cbz      x20, #0x2a2c52c
02a2c490: 800a40f9 ldr      x0, [x20, #0x10]
02a2c494: 801000b4 cbz      x0, #0x2a2c6a4
02a2c498: e1031faa mov      x1, xzr
02a2c49c: 7866f497 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
02a2c4a0: 60040036 tbz      w0, #0, #0x2a2c52c
02a2c4a4: f53c01d0 adrp     x21, #0x51ca000
02a2c4a8: b52e45f9 ldr      x21, [x21, #0xa58]
02a2c4ac: e00314aa mov      x0, x20
02a2c4b0: e1031faa mov      x1, xzr
02a2c4b4: 6b710294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a2c4b8: a10240f9 ldr      x1, [x21]
02a2c4bc: d3139697 bl       #0xfb1408
02a2c4c0: 600300b4 cbz      x0, #0x2a2c52c
02a2c4c4: 080040f9 ldr      x8, [x0]
02a2c4c8: a10240f9 ldr      x1, [x21]
02a2c4cc: f40300aa mov      x20, x0
02a2c4d0: 09554279 ldrh     w9, [x8, #0x12a]
02a2c4d4: 290100b4 cbz      x9, #0x2a2c4f8
02a2c4d8: 0a5940f9 ldr      x10, [x8, #0xb0]
02a2c4dc: 4a210091 add      x10, x10, #8
02a2c4e0: 4b815ff8 ldur     x11, [x10, #-8]
02a2c4e4: 7f0101eb cmp      x11, x1
02a2c4e8: 00010054 b.eq     #0x2a2c508
02a2c4ec: 290500f1 subs     x9, x9, #1
02a2c4f0: 4a410091 add      x10, x10, #0x10
02a2c4f4: 61ffff54 b.ne     #0x2a2c4e0
02a2c4f8: 22008052 mov      w2, #1
02a2c4fc: e00314aa mov      x0, x20
02a2c500: 75539597 bl       #0xf812d4
02a2c504: 05000014 b        #0x2a2c518
02a2c508: 490140b9 ldr      w9, [x10]
02a2c50c: 29050011 add      w9, w9, #1
02a2c510: 08d1298b add      x8, x8, w9, sxtw #4
02a2c514: 00e10491 add      x0, x8, #0x138
02a2c518: 080840a9 ldp      x8, x2, [x0]
02a2c51c: e00314aa mov      x0, x20
02a2c520: e10313aa mov      x1, x19
02a2c524: 00013fd6 blr      x8
02a2c528: 60f80737 tbnz     w0, #0, #0x2a2c434
02a2c52c: 683e01d0 adrp     x8, #0x51fa000
02a2c530: 08f940f9 ldr      x8, [x8, #0x1f0]
02a2c534: 20068052 mov      w0, #0x31
02a2c538: 010140f9 ldr      x1, [x8]
02a2c53c: 4c49ec97 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
02a2c540: 330b00b4 cbz      x19, #0x2a2c6a4
02a2c544: f40300aa mov      x20, x0
02a2c548: e00a00b4 cbz      x0, #0x2a2c6a4
02a2c54c: 610e40f9 ldr      x1, [x19, #0x18]
02a2c550: e00314aa mov      x0, x20
02a2c554: e2031faa mov      x2, xzr
02a2c558: 5ecedb97 bl       #0x211fed0 ; Royal.Scenes.Game.Mechanics.Items.IceCubeItem.IceCubeItemHelper$$HasIceCubeAbove
02a2c55c: e0010036 tbz      w0, #0, #0x2a2c598
02a2c560: e00314aa mov      x0, x20
02a2c564: e10313aa mov      x1, x19
02a2c568: e2031faa mov      x2, xzr
02a2c56c: 00d3db97 bl       #0x212116c ; Royal.Scenes.Game.Mechanics.Items.IceCubeItem.IceCubeItemHelper$$GetNeighborUnderIce
02a2c570: f50300aa mov      x21, x0
02a2c574: e00313aa mov      x0, x19
02a2c578: e1031faa mov      x1, xzr
02a2c57c: f9870294 bl       #0x2ace560 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasCrossFallFreeze
02a2c580: a0f50737 tbnz     w0, #0, #0x2a2c434
02a2c584: b50000b4 cbz      x21, #0x2a2c598
02a2c588: e00315aa mov      x0, x21
02a2c58c: e1031faa mov      x1, xzr
02a2c590: f4870294 bl       #0x2ace560 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasCrossFallFreeze
02a2c594: 00f50737 tbnz     w0, #0, #0x2a2c434
02a2c598: 611a40b9 ldr      w1, [x19, #0x18]
02a2c59c: e00314aa mov      x0, x20
02a2c5a0: e2031faa mov      x2, xzr
02a2c5a4: 7bd2db97 bl       #0x2120f90 ; Royal.Scenes.Game.Mechanics.Items.IceCubeItem.IceCubeItemHelper$$HasIceCubeAtBottomInColumn
02a2c5a8: 60f40737 tbnz     w0, #0, #0x2a2c434
02a2c5ac: 601240f9 ldr      x0, [x19, #0x20]
02a2c5b0: a00700b4 cbz      x0, #0x2a2c6a4
02a2c5b4: 21008052 mov      w1, #1
02a2c5b8: e2031faa mov      x2, xzr
02a2c5bc: 34008052 mov      w20, #1
02a2c5c0: dd2f0c94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02a2c5c4: a0f3ffb4 cbz      x0, #0x2a2c438
02a2c5c8: e1031faa mov      x1, xzr
02a2c5cc: 25710294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a2c5d0: 600600b4 cbz      x0, #0x2a2c69c
02a2c5d4: 080040f9 ldr      x8, [x0]
02a2c5d8: f40300aa mov      x20, x0
02a2c5dc: 09b543f9 ldr      x9, [x8, #0x768]
02a2c5e0: 01b943f9 ldr      x1, [x8, #0x770]
02a2c5e4: 20013fd6 blr      x9
02a2c5e8: a0050036 tbz      w0, #0, #0x2a2c69c
02a2c5ec: 093e01d0 adrp     x9, #0x51ee000
02a2c5f0: 29fd45f9 ldr      x9, [x9, #0xbf8]
02a2c5f4: 880240f9 ldr      x8, [x20]
02a2c5f8: 2a0140f9 ldr      x10, [x9]
02a2c5fc: 09b14439 ldrb     w9, [x8, #0x12c]
02a2c600: 4bb14439 ldrb     w11, [x10, #0x12c]
02a2c604: 3f010b6b cmp      w9, w11
02a2c608: c3000054 b.lo     #0x2a2c620
02a2c60c: 0c6540f9 ldr      x12, [x8, #0xc8]
02a2c610: 8b0d0b8b add      x11, x12, x11, lsl #3
02a2c614: 6b815ff8 ldur     x11, [x11, #-8]
02a2c618: 7f010aeb cmp      x11, x10
02a2c61c: 00020054 b.eq     #0x2a2c65c
02a2c620: 0a3d01d0 adrp     x10, #0x51ce000
02a2c624: 4a4d45f9 ldr      x10, [x10, #0xa98]
02a2c628: 4a0140f9 ldr      x10, [x10]
02a2c62c: 4bb14439 ldrb     w11, [x10, #0x12c]
02a2c630: 3f010b6b cmp      w9, w11
02a2c634: 43030054 b.lo     #0x2a2c69c
02a2c638: 086540f9 ldr      x8, [x8, #0xc8]
02a2c63c: 080d0b8b add      x8, x8, x11, lsl #3
02a2c640: 08815ff8 ldur     x8, [x8, #-8]
02a2c644: 1f010aeb cmp      x8, x10
02a2c648: a1020054 b.ne     #0x2a2c69c
02a2c64c: 601240f9 ldr      x0, [x19, #0x20]
02a2c650: a00200b4 cbz      x0, #0x2a2c6a4
02a2c654: e1008052 mov      w1, #7
02a2c658: 04000014 b        #0x2a2c668
02a2c65c: 601240f9 ldr      x0, [x19, #0x20]
02a2c660: 200200b4 cbz      x0, #0x2a2c6a4
02a2c664: 61008052 mov      w1, #3
02a2c668: e2031faa mov      x2, xzr
02a2c66c: b22f0c94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02a2c670: f30300aa mov      x19, x0
02a2c674: 400100b4 cbz      x0, #0x2a2c69c
02a2c678: e00313aa mov      x0, x19
02a2c67c: e1031faa mov      x1, xzr
02a2c680: a7750294 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
02a2c684: 80ed0737 tbnz     w0, #0, #0x2a2c434
02a2c688: 605a40f9 ldr      x0, [x19, #0xb0]
02a2c68c: c00000b4 cbz      x0, #0x2a2c6a4
02a2c690: e1031faa mov      x1, xzr
02a2c694: 968d0294 bl       #0x2acfcec ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$HasIncomingExploder
02a2c698: e0ec0737 tbnz     w0, #0, #0x2a2c434
02a2c69c: 34008052 mov      w20, #1
02a2c6a0: 66ffff17 b        #0x2a2c438
02a2c6a4: 61139697 bl       #0xfb1428
