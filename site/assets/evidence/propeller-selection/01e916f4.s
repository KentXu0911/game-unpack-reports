# Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$CalculateScoreForMatchItem
# Next metadata method 0x1e91b00, not a proven function boundary.
01e916f4: fc0f1af8 str      x28, [sp, #-0x60]!
01e916f8: fb6b01a9 stp      x27, x26, [sp, #0x10]
01e916fc: f96302a9 stp      x25, x24, [sp, #0x20]
01e91700: f75b03a9 stp      x23, x22, [sp, #0x30]
01e91704: f55304a9 stp      x21, x20, [sp, #0x40]
01e91708: f37b05a9 stp      x19, x30, [sp, #0x50]
01e9170c: 55b701f0 adrp     x21, #0x557c000
01e91710: a8c25339 ldrb     w8, [x21, #0x4f0]
01e91714: f403012a mov      w20, w1
01e91718: f30300aa mov      x19, x0
01e9171c: 28040037 tbnz     w8, #0, #0x1e917a0
01e91720: c09901f0 adrp     x0, #0x51cc000
01e91724: 00bc45f9 ldr      x0, [x0, #0xb78]
01e91728: f67ec497 bl       #0xfb1300
01e9172c: 609b01b0 adrp     x0, #0x51fe000
01e91730: 001c44f9 ldr      x0, [x0, #0x838]
01e91734: f37ec497 bl       #0xfb1300
01e91738: 409901f0 adrp     x0, #0x51bc000
01e9173c: 003c45f9 ldr      x0, [x0, #0xa78]
01e91740: f07ec497 bl       #0xfb1300
01e91744: 609b01d0 adrp     x0, #0x51ff000
01e91748: 009046f9 ldr      x0, [x0, #0xd20]
01e9174c: ed7ec497 bl       #0xfb1300
01e91750: 809c01b0 adrp     x0, #0x5222000
01e91754: 00f446f9 ldr      x0, [x0, #0xde8]
01e91758: ea7ec497 bl       #0xfb1300
01e9175c: 609a01f0 adrp     x0, #0x51e0000
01e91760: 00a046f9 ldr      x0, [x0, #0xd40]
01e91764: e77ec497 bl       #0xfb1300
01e91768: e09801d0 adrp     x0, #0x51af000
01e9176c: 008843f9 ldr      x0, [x0, #0x710]
01e91770: e47ec497 bl       #0xfb1300
01e91774: c09a01d0 adrp     x0, #0x51eb000
01e91778: 00d445f9 ldr      x0, [x0, #0xba8]
01e9177c: e17ec497 bl       #0xfb1300
01e91780: 809901f0 adrp     x0, #0x51c4000
01e91784: 001042f9 ldr      x0, [x0, #0x420]
01e91788: de7ec497 bl       #0xfb1300
01e9178c: 009901d0 adrp     x0, #0x51b3000
01e91790: 00a041f9 ldr      x0, [x0, #0x340]
01e91794: db7ec497 bl       #0xfb1300
01e91798: 28008052 mov      w8, #1
01e9179c: a8c21339 strb     w8, [x21, #0x4f0]
01e917a0: f31a00b4 cbz      x19, #0x1e91afc
01e917a4: e00313aa mov      x0, x19
01e917a8: d6000094 bl       #0x1e91b00 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$ShouldCalculateScore
01e917ac: 200c0036 tbz      w0, #0, #0x1e91930
01e917b0: 680240f9 ldr      x8, [x19]
01e917b4: 1b9901d0 adrp     x27, #0x51b3000
01e917b8: 9a9901f0 adrp     x26, #0x51c4000
01e917bc: e00313aa mov      x0, x19
01e917c0: 09bd41f9 ldr      x9, [x8, #0x378]
01e917c4: 01c141f9 ldr      x1, [x8, #0x380]
01e917c8: 7ba341f9 ldr      x27, [x27, #0x340]
01e917cc: 5a1342f9 ldr      x26, [x26, #0x420]
01e917d0: 20013fd6 blr      x9
01e917d4: e1031faa mov      x1, xzr
01e917d8: 6ccc5394 bl       #0x3384988 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
01e917dc: f503002a mov      w21, w0
01e917e0: e00313aa mov      x0, x19
01e917e4: e1031faa mov      x1, xzr
01e917e8: 37ee5394 bl       #0x338d0c4 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$GetGoalLeftCount
01e917ec: 680340f9 ldr      x8, [x27]
01e917f0: f603002a mov      w22, w0
01e917f4: 09e140b9 ldr      w9, [x8, #0xe0]
01e917f8: 69000035 cbnz     w9, #0x1e91804
01e917fc: e00308aa mov      x0, x8
01e91800: 017fc497 bl       #0xfb1404
01e91804: 410340f9 ldr      x1, [x26]
01e91808: 40008052 mov      w0, #2
01e9180c: d6122794 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01e91810: 601700b4 cbz      x0, #0x1e91afc
01e91814: a1008052 mov      w1, #5
01e91818: e2031faa mov      x2, xzr
01e9181c: 9a240794 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01e91820: f7031faa mov      x23, xzr
01e91824: 60010036 tbz      w0, #0, #0x1e91850
01e91828: 689b01b0 adrp     x8, #0x51fe000
01e9182c: 081d44f9 ldr      x8, [x8, #0x838]
01e91830: 40038052 mov      w0, #0x1a
01e91834: 010140f9 ldr      x1, [x8]
01e91838: 8db41a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e9183c: 001600b4 cbz      x0, #0x1e91afc
01e91840: 611a40b9 ldr      w1, [x19, #0x18]
01e91844: e2031faa mov      x2, xzr
01e91848: abe3dc97 bl       #0x15ca6f4 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.CurtainItem.CurtainHelper$$GetCurtainForMatchType
01e9184c: f70300aa mov      x23, x0
01e91850: 600340f9 ldr      x0, [x27]
01e91854: 08e040b9 ldr      w8, [x0, #0xe0]
01e91858: 48000035 cbnz     w8, #0x1e91860
01e9185c: ea7ec497 bl       #0xfb1404
01e91860: 410340f9 ldr      x1, [x26]
01e91864: 40008052 mov      w0, #2
01e91868: bf122794 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01e9186c: 801400b4 cbz      x0, #0x1e91afc
01e91870: a1038052 mov      w1, #0x1d
01e91874: e2031faa mov      x2, xzr
01e91878: b5240794 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01e9187c: f8031faa mov      x24, xzr
01e91880: 60010036 tbz      w0, #0, #0x1e918ac
01e91884: 489901f0 adrp     x8, #0x51bc000
01e91888: 083d45f9 ldr      x8, [x8, #0xa78]
01e9188c: e0038052 mov      w0, #0x1f
01e91890: 010140f9 ldr      x1, [x8]
01e91894: 76b41a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e91898: 201300b4 cbz      x0, #0x1e91afc
01e9189c: 611a40b9 ldr      w1, [x19, #0x18]
01e918a0: e2031faa mov      x2, xzr
01e918a4: abca3c94 bl       #0x2dc4350 ; Royal.Scenes.Game.Mechanics.Items.DrillItem.DrillHelper$$GetDrillForMatchType
01e918a8: f80300aa mov      x24, x0
01e918ac: 600340f9 ldr      x0, [x27]
01e918b0: 08e040b9 ldr      w8, [x0, #0xe0]
01e918b4: 48000035 cbnz     w8, #0x1e918bc
01e918b8: d37ec497 bl       #0xfb1404
01e918bc: 410340f9 ldr      x1, [x26]
01e918c0: 40008052 mov      w0, #2
01e918c4: a8122794 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01e918c8: a01100b4 cbz      x0, #0x1e91afc
01e918cc: 01028052 mov      w1, #0x10
01e918d0: e2031faa mov      x2, xzr
01e918d4: 6c240794 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01e918d8: f9031faa mov      x25, xzr
01e918dc: 60010036 tbz      w0, #0, #0x1e91908
01e918e0: c89901f0 adrp     x8, #0x51cc000
01e918e4: 08bd45f9 ldr      x8, [x8, #0xb78]
01e918e8: 400a8052 mov      w0, #0x52
01e918ec: 010140f9 ldr      x1, [x8]
01e918f0: 5fb41a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e918f4: 401000b4 cbz      x0, #0x1e91afc
01e918f8: 611a40b9 ldr      w1, [x19, #0x18]
01e918fc: e2031faa mov      x2, xzr
01e91900: 5c84e797 bl       #0x1872a70 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.CryptexItem.CryptexItemHelper$$GetCryptexForMatchType
01e91904: f90300aa mov      x25, x0
01e91908: 681a40b9 ldr      w8, [x19, #0x18]
01e9190c: 1c229f52 mov      w28, #0xf910
01e91910: dc00a072 movk     w28, #6, lsl #16
01e91914: 1f150071 cmp      w8, #5
01e91918: 01010054 b.ne     #0x1e91938
01e9191c: c8060051 sub      w8, w22, #1
01e91920: 1f090071 cmp      w8, #2
01e91924: 02020054 b.hs     #0x1e91964
01e91928: 34008052 mov      w20, #1
01e9192c: 49000014 b        #0x1e91a50
01e91930: e0031f2a mov      w0, wzr
01e91934: 6b000014 b        #0x1e91ae0
01e91938: df020071 cmp      w22, #0
01e9193c: 8d060054 b.le     #0x1e91a0c
01e91940: e003142a mov      w0, w20
01e91944: e1031faa mov      x1, xzr
01e91948: fdcb5394 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
01e9194c: 89409952 mov      w9, #0xca04
01e91950: 1f000072 tst      w0, #1
01e91954: 08958852 mov      w8, #0x44a8
01e91958: 4900a072 movk     w9, #2, lsl #16
01e9195c: 3511881a csel     w21, w9, w8, ne
01e91960: 57000014 b        #0x1e91abc
01e91964: f49801d0 adrp     x20, #0x51af000
01e91968: 948a43f9 ldr      x20, [x20, #0x710]
01e9196c: b70100b4 cbz      x23, #0x1e919a0
01e91970: e12e40b9 ldr      w1, [x23, #0x2c]
01e91974: 820240f9 ldr      x2, [x20]
01e91978: e0230091 add      x0, sp, #8
01e9197c: ff0700f9 str      xzr, [sp, #8]
01e91980: 9a2a2494 bl       #0x279c3e8 ; System.Nullable<int>$$.ctor
01e91984: e80740f9 ldr      x8, [sp, #8]
01e91988: 1f1d0072 tst      w8, #0xff
01e9198c: a0000054 b.eq     #0x1e919a0
01e91990: 08fd60d3 lsr      x8, x8, #0x20
01e91994: 08050051 sub      w8, w8, #1
01e91998: 1f090071 cmp      w8, #2
01e9199c: 63fcff54 b.lo     #0x1e91928
01e919a0: b80100b4 cbz      x24, #0x1e919d4
01e919a4: 011b40b9 ldr      w1, [x24, #0x18]
01e919a8: 820240f9 ldr      x2, [x20]
01e919ac: e0230091 add      x0, sp, #8
01e919b0: ff0700f9 str      xzr, [sp, #8]
01e919b4: 8d2a2494 bl       #0x279c3e8 ; System.Nullable<int>$$.ctor
01e919b8: e80740f9 ldr      x8, [sp, #8]
01e919bc: 1f1d0072 tst      w8, #0xff
01e919c0: a0000054 b.eq     #0x1e919d4
01e919c4: 08fd60d3 lsr      x8, x8, #0x20
01e919c8: 08050051 sub      w8, w8, #1
01e919cc: 1f090071 cmp      w8, #2
01e919d0: c3faff54 b.lo     #0x1e91928
01e919d4: d90300b4 cbz      x25, #0x1e91a4c
01e919d8: 213740b9 ldr      w1, [x25, #0x34]
01e919dc: 820240f9 ldr      x2, [x20]
01e919e0: e0230091 add      x0, sp, #8
01e919e4: ff0700f9 str      xzr, [sp, #8]
01e919e8: 802a2494 bl       #0x279c3e8 ; System.Nullable<int>$$.ctor
01e919ec: e80740f9 ldr      x8, [sp, #8]
01e919f0: 1f1d0072 tst      w8, #0xff
01e919f4: c0020054 b.eq     #0x1e91a4c
01e919f8: 08fd60d3 lsr      x8, x8, #0x20
01e919fc: 08050051 sub      w8, w8, #1
01e91a00: 1f090071 cmp      w8, #2
01e91a04: f4279f1a cset     w20, lo
01e91a08: 12000014 b        #0x1e91a50
01e91a0c: b70000b4 cbz      x23, #0x1e91a20
01e91a10: e00317aa mov      x0, x23
01e91a14: e1031faa mov      x1, xzr
01e91a18: 8ee3dc97 bl       #0x15ca850 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.CurtainItem.CurtainManager$$HasTargetLeftLogic
01e91a1c: 20f90737 tbnz     w0, #0, #0x1e91940
01e91a20: b80000b4 cbz      x24, #0x1e91a34
01e91a24: e00318aa mov      x0, x24
01e91a28: e1031faa mov      x1, xzr
01e91a2c: a8ca3c94 bl       #0x2dc44cc ; Royal.Scenes.Game.Mechanics.Items.DrillItem.DrillManager$$HasTargetLeftLogic
01e91a30: 80f80737 tbnz     w0, #0, #0x1e91940
01e91a34: 590400b4 cbz      x25, #0x1e91abc
01e91a38: e00319aa mov      x0, x25
01e91a3c: e1031faa mov      x1, xzr
01e91a40: 6384e797 bl       #0x1872bcc ; Royal.Scenes.Game.Mechanics.Items.StaticItems.CryptexItem.CryptexItemManager$$HasTargetLeftLogic
01e91a44: e0f70737 tbnz     w0, #0, #0x1e91940
01e91a48: 1d000014 b        #0x1e91abc
01e91a4c: f4031f2a mov      w20, wzr
01e91a50: 600340f9 ldr      x0, [x27]
01e91a54: 08e040b9 ldr      w8, [x0, #0xe0]
01e91a58: 48000035 cbnz     w8, #0x1e91a60
01e91a5c: 6a7ec497 bl       #0xfb1404
01e91a60: 410340f9 ldr      x1, [x26]
01e91a64: 40008052 mov      w0, #2
01e91a68: 3f122794 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
01e91a6c: 800400b4 cbz      x0, #0x1e91afc
01e91a70: c1028052 mov      w1, #0x16
01e91a74: e2031faa mov      x2, xzr
01e91a78: 35240794 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
01e91a7c: 08000052 eor      w8, w0, #1
01e91a80: 8002080a and      w0, w20, w8
01e91a84: 54010034 cbz      w20, #0x1e91aac
01e91a88: 28010037 tbnz     w8, #0, #0x1e91aac
01e91a8c: 689b01d0 adrp     x8, #0x51ff000
01e91a90: 089146f9 ldr      x8, [x8, #0xd20]
01e91a94: 60038052 mov      w0, #0x1b
01e91a98: 010140f9 ldr      x1, [x8]
01e91a9c: f4b31a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e91aa0: e00200b4 cbz      x0, #0x1e91afc
01e91aa4: e1031faa mov      x1, xzr
01e91aa8: 38271694 bl       #0x241b788 ; Royal.Scenes.Game.Mechanics.Items.HatItem.HatItemHelper$$IsItClosed
01e91aac: 88409952 mov      w8, #0xca04
01e91ab0: 1f000072 tst      w0, #1
01e91ab4: 4800a072 movk     w8, #2, lsl #16
01e91ab8: 9513881a csel     w21, w28, w8, ne
01e91abc: 889c01b0 adrp     x8, #0x5222000
01e91ac0: 08f546f9 ldr      x8, [x8, #0xde8]
01e91ac4: 691a40b9 ldr      w9, [x19, #0x18]
01e91ac8: aa021c0b add      w10, w21, w28
01e91acc: 080140f9 ldr      x8, [x8]
01e91ad0: 085d40f9 ldr      x8, [x8, #0xb8]
01e91ad4: 080140b9 ldr      w8, [x8]
01e91ad8: 3f01086b cmp      w9, w8
01e91adc: 4001951a csel     w0, w10, w21, eq
01e91ae0: f37b45a9 ldp      x19, x30, [sp, #0x50]
01e91ae4: f55344a9 ldp      x21, x20, [sp, #0x40]
01e91ae8: f75b43a9 ldp      x23, x22, [sp, #0x30]
01e91aec: f96342a9 ldp      x25, x24, [sp, #0x20]
01e91af0: fb6b41a9 ldp      x27, x26, [sp, #0x10]
01e91af4: fc0746f8 ldr      x28, [sp], #0x60
01e91af8: c0035fd6 ret      
01e91afc: 4b7ec497 bl       #0xfb1428
