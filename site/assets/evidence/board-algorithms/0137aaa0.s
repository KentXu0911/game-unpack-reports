# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$FindThreeMatchesAndPropellersForCell
# Next metadata method 0x137ae2c, not a proven function boundary.
0137aaa0: f80f1cf8 str      x24, [sp, #-0x40]!
0137aaa4: f75b01a9 stp      x23, x22, [sp, #0x10]
0137aaa8: f55302a9 stp      x21, x20, [sp, #0x20]
0137aaac: f37b03a9 stp      x19, x30, [sp, #0x30]
0137aab0: f60f02d0 adrp     x22, #0x5578000
0137aab4: c82e4539 ldrb     w8, [x22, #0x14b]
0137aab8: f503022a mov      w21, w2
0137aabc: f30301aa mov      x19, x1
0137aac0: f40300aa mov      x20, x0
0137aac4: 88010037 tbnz     w8, #0, #0x137aaf4
0137aac8: 80f401d0 adrp     x0, #0x520c000
0137aacc: 00dc47f9 ldr      x0, [x0, #0xfb8]
0137aad0: 0cdaf097 bl       #0xfb1300
0137aad4: 20f301b0 adrp     x0, #0x51df000
0137aad8: 00d040f9 ldr      x0, [x0, #0x1a0]
0137aadc: 09daf097 bl       #0xfb1300
0137aae0: 20f401d0 adrp     x0, #0x5200000
0137aae4: 008c46f9 ldr      x0, [x0, #0xd18]
0137aae8: 06daf097 bl       #0xfb1300
0137aaec: 28008052 mov      w8, #1
0137aaf0: c82e0539 strb     w8, [x22, #0x14b]
0137aaf4: 930200b4 cbz      x19, #0x137ab44
0137aaf8: 600a40f9 ldr      x0, [x19, #0x10]
0137aafc: 401900b4 cbz      x0, #0x137ae24
0137ab00: e1031faa mov      x1, xzr
0137ab04: d72c4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137ab08: e00100b4 cbz      x0, #0x137ab44
0137ab0c: 28f301b0 adrp     x8, #0x51df000
0137ab10: 08d140f9 ldr      x8, [x8, #0x1a0]
0137ab14: 090040f9 ldr      x9, [x0]
0137ab18: 080140f9 ldr      x8, [x8]
0137ab1c: 2bb14439 ldrb     w11, [x9, #0x12c]
0137ab20: 0ab14439 ldrb     w10, [x8, #0x12c]
0137ab24: 7f010a6b cmp      w11, w10
0137ab28: e3000054 b.lo     #0x137ab44
0137ab2c: 296540f9 ldr      x9, [x9, #0xc8]
0137ab30: 290d0a8b add      x9, x9, x10, lsl #3
0137ab34: 29815ff8 ldur     x9, [x9, #-8]
0137ab38: 3f0108eb cmp      x9, x8
0137ab3c: 16009f9a csel     x22, x0, xzr, eq
0137ab40: c0000054 b.eq     #0x137ab58
0137ab44: f37b43a9 ldp      x19, x30, [sp, #0x30]
0137ab48: f55342a9 ldp      x21, x20, [sp, #0x20]
0137ab4c: f75b41a9 ldp      x23, x22, [sp, #0x10]
0137ab50: f80744f8 ldr      x24, [sp], #0x40
0137ab54: c0035fd6 ret      
0137ab58: 95000036 tbz      w21, #0, #0x137ab68
0137ab5c: e00316aa mov      x0, x22
0137ab60: fd020094 bl       #0x137b754 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsFallStateValidForMatch
0137ab64: 00ff0736 tbz      w0, #0, #0x137ab44
0137ab68: f61500b4 cbz      x22, #0x137ae24
0137ab6c: 88f401d0 adrp     x8, #0x520c000
0137ab70: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137ab74: d6e20291 add      x22, x22, #0xb8
0137ab78: 000140f9 ldr      x0, [x8]
0137ab7c: 08e040b9 ldr      w8, [x0, #0xe0]
0137ab80: 48000035 cbnz     w8, #0x137ab88
0137ab84: 20daf097 bl       #0xfb1404
0137ab88: e00316aa mov      x0, x22
0137ab8c: eef5ff97 bl       #0x1378344 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$Reset
0137ab90: 963640f9 ldr      x22, [x20, #0x68]
0137ab94: 961400b4 cbz      x22, #0x137ae24
0137ab98: c81a40b9 ldr      w8, [x22, #0x18]
0137ab9c: 977a40b9 ldr      w23, [x20, #0x78]
0137aba0: 09150051 sub      w9, w8, #5
0137aba4: ff02096b cmp      w23, w9
0137aba8: ed010054 b.le     #0x137abe4
0137abac: 29f401d0 adrp     x9, #0x5200000
0137abb0: 298d46f9 ldr      x9, [x9, #0xd18]
0137abb4: 200140f9 ldr      x0, [x9]
0137abb8: 09e040b9 ldr      w9, [x0, #0xe0]
0137abbc: 69000035 cbnz     w9, #0x137abc8
0137abc0: 11daf097 bl       #0xfb1404
0137abc4: c81a40b9 ldr      w8, [x22, #0x18]
0137abc8: e07a1f53 lsl      w0, w23, #1
0137abcc: 01791f53 lsl      w1, w8, #1
0137abd0: e2031faa mov      x2, xzr
0137abd4: d2774894 bl       #0x2598b1c ; System.Math$$Max
0137abd8: e103002a mov      w1, w0
0137abdc: e00314aa mov      x0, x20
0137abe0: 1cfdff97 bl       #0x137a050 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$ResizeTempMatches
0137abe4: 601240f9 ldr      x0, [x19, #0x20]
0137abe8: e01100b4 cbz      x0, #0x137ae24
0137abec: 61008052 mov      w1, #3
0137abf0: e2031faa mov      x2, xzr
0137abf4: 50f66694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137abf8: a4020012 and      w4, w21, #1
0137abfc: 43008052 mov      w3, #2
0137ac00: e10313aa mov      x1, x19
0137ac04: e20300aa mov      x2, x0
0137ac08: f60300aa mov      x22, x0
0137ac0c: 1fffff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137ac10: 00040036 tbz      w0, #0, #0x137ac90
0137ac14: 961000b4 cbz      x22, #0x137ae24
0137ac18: c01240f9 ldr      x0, [x22, #0x20]
0137ac1c: 401000b4 cbz      x0, #0x137ae24
0137ac20: 61008052 mov      w1, #3
0137ac24: e2031faa mov      x2, xzr
0137ac28: 43f66694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137ac2c: a4020012 and      w4, w21, #1
0137ac30: 43008052 mov      w3, #2
0137ac34: e10316aa mov      x1, x22
0137ac38: e20300aa mov      x2, x0
0137ac3c: f70300aa mov      x23, x0
0137ac40: 12ffff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137ac44: 60020036 tbz      w0, #0, #0x137ac90
0137ac48: 887a80b9 ldrsw    x8, [x20, #0x78]
0137ac4c: 893640f9 ldr      x9, [x20, #0x68]
0137ac50: 0a050011 add      w10, w8, #1
0137ac54: 8a7a00b9 str      w10, [x20, #0x78]
0137ac58: 690e00b4 cbz      x9, #0x137ae24
0137ac5c: 2a1940b9 ldr      w10, [x9, #0x18]
0137ac60: 1f010a6b cmp      w8, w10
0137ac64: 220e0054 b.hs     #0x137ae28
0137ac68: 280d088b add      x8, x9, x8, lsl #3
0137ac6c: 001140f9 ldr      x0, [x8, #0x20]
0137ac70: a00d00b4 cbz      x0, #0x137ae24
0137ac74: 45008052 mov      w5, #2
0137ac78: e10313aa mov      x1, x19
0137ac7c: e20316aa mov      x2, x22
0137ac80: e30317aa mov      x3, x23
0137ac84: e4031faa mov      x4, xzr
0137ac88: e6031faa mov      x6, xzr
0137ac8c: df6ea294 bl       #0x3c16808 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Init
0137ac90: 601240f9 ldr      x0, [x19, #0x20]
0137ac94: 800c00b4 cbz      x0, #0x137ae24
0137ac98: 21008052 mov      w1, #1
0137ac9c: e2031faa mov      x2, xzr
0137aca0: 25f66694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137aca4: a4020012 and      w4, w21, #1
0137aca8: 23008052 mov      w3, #1
0137acac: e10313aa mov      x1, x19
0137acb0: e20300aa mov      x2, x0
0137acb4: f60300aa mov      x22, x0
0137acb8: f4feff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137acbc: 00040036 tbz      w0, #0, #0x137ad3c
0137acc0: 360b00b4 cbz      x22, #0x137ae24
0137acc4: c01240f9 ldr      x0, [x22, #0x20]
0137acc8: e00a00b4 cbz      x0, #0x137ae24
0137accc: 21008052 mov      w1, #1
0137acd0: e2031faa mov      x2, xzr
0137acd4: 18f66694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137acd8: a4020012 and      w4, w21, #1
0137acdc: 23008052 mov      w3, #1
0137ace0: e10316aa mov      x1, x22
0137ace4: e20300aa mov      x2, x0
0137ace8: f70300aa mov      x23, x0
0137acec: e7feff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137acf0: 60020036 tbz      w0, #0, #0x137ad3c
0137acf4: 887a80b9 ldrsw    x8, [x20, #0x78]
0137acf8: 893640f9 ldr      x9, [x20, #0x68]
0137acfc: 0a050011 add      w10, w8, #1
0137ad00: 8a7a00b9 str      w10, [x20, #0x78]
0137ad04: 090900b4 cbz      x9, #0x137ae24
0137ad08: 2a1940b9 ldr      w10, [x9, #0x18]
0137ad0c: 1f010a6b cmp      w8, w10
0137ad10: c2080054 b.hs     #0x137ae28
0137ad14: 280d088b add      x8, x9, x8, lsl #3
0137ad18: 001140f9 ldr      x0, [x8, #0x20]
0137ad1c: 400800b4 cbz      x0, #0x137ae24
0137ad20: 25008052 mov      w5, #1
0137ad24: e10313aa mov      x1, x19
0137ad28: e20316aa mov      x2, x22
0137ad2c: e30317aa mov      x3, x23
0137ad30: e4031faa mov      x4, xzr
0137ad34: e6031faa mov      x6, xzr
0137ad38: b46ea294 bl       #0x3c16808 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Init
0137ad3c: 601240f9 ldr      x0, [x19, #0x20]
0137ad40: 200700b4 cbz      x0, #0x137ae24
0137ad44: 21008052 mov      w1, #1
0137ad48: e2031faa mov      x2, xzr
0137ad4c: faf56694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137ad50: a4020012 and      w4, w21, #1
0137ad54: e10313aa mov      x1, x19
0137ad58: e20300aa mov      x2, x0
0137ad5c: e3031f2a mov      w3, wzr
0137ad60: f60300aa mov      x22, x0
0137ad64: c9feff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137ad68: e0ee0736 tbz      w0, #0, #0x137ab44
0137ad6c: 601240f9 ldr      x0, [x19, #0x20]
0137ad70: a00500b4 cbz      x0, #0x137ae24
0137ad74: 61008052 mov      w1, #3
0137ad78: e2031faa mov      x2, xzr
0137ad7c: eef56694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137ad80: a4020012 and      w4, w21, #1
0137ad84: e10313aa mov      x1, x19
0137ad88: e20300aa mov      x2, x0
0137ad8c: e3031f2a mov      w3, wzr
0137ad90: f70300aa mov      x23, x0
0137ad94: bdfeff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137ad98: 60ed0736 tbz      w0, #0, #0x137ab44
0137ad9c: 601240f9 ldr      x0, [x19, #0x20]
0137ada0: 200400b4 cbz      x0, #0x137ae24
0137ada4: 41008052 mov      w1, #2
0137ada8: e2031faa mov      x2, xzr
0137adac: e2f56694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137adb0: a4020012 and      w4, w21, #1
0137adb4: e10313aa mov      x1, x19
0137adb8: e20300aa mov      x2, x0
0137adbc: e3031f2a mov      w3, wzr
0137adc0: f80300aa mov      x24, x0
0137adc4: b1feff97 bl       #0x137a888 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
0137adc8: e0eb0736 tbz      w0, #0, #0x137ab44
0137adcc: 887a80b9 ldrsw    x8, [x20, #0x78]
0137add0: 893640f9 ldr      x9, [x20, #0x68]
0137add4: 0a050011 add      w10, w8, #1
0137add8: 8a7a00b9 str      w10, [x20, #0x78]
0137addc: 490200b4 cbz      x9, #0x137ae24
0137ade0: 2a1940b9 ldr      w10, [x9, #0x18]
0137ade4: 1f010a6b cmp      w8, w10
0137ade8: 02020054 b.hs     #0x137ae28
0137adec: 280d088b add      x8, x9, x8, lsl #3
0137adf0: 001140f9 ldr      x0, [x8, #0x20]
0137adf4: 800100b4 cbz      x0, #0x137ae24
0137adf8: e10313aa mov      x1, x19
0137adfc: e20316aa mov      x2, x22
0137ae00: e30317aa mov      x3, x23
0137ae04: f37b43a9 ldp      x19, x30, [sp, #0x30]
0137ae08: f55342a9 ldp      x21, x20, [sp, #0x20]
0137ae0c: f75b41a9 ldp      x23, x22, [sp, #0x10]
0137ae10: e40318aa mov      x4, x24
0137ae14: e5031f2a mov      w5, wzr
0137ae18: e6031faa mov      x6, xzr
0137ae1c: f80744f8 ldr      x24, [sp], #0x40
0137ae20: 7a6ea214 b        #0x3c16808 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Init
0137ae24: 81d9f097 bl       #0xfb1428
0137ae28: 82d9f097 bl       #0xfb1430
