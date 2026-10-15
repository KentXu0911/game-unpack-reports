# Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$ManualUpdate
# Next metadata method 0x15576b4, not a proven function boundary.
015571e0: fc6fbaa9 stp      x28, x27, [sp, #-0x60]!
015571e4: fa6701a9 stp      x26, x25, [sp, #0x10]
015571e8: f85f02a9 stp      x24, x23, [sp, #0x20]
015571ec: f65703a9 stp      x22, x21, [sp, #0x30]
015571f0: f44f04a9 stp      x20, x19, [sp, #0x40]
015571f4: fd7b05a9 stp      x29, x30, [sp, #0x50]
015571f8: 140102b0 adrp     x20, #0x5578000
015571fc: 88667739 ldrb     w8, [x20, #0xdd9]
01557200: f30300aa mov      x19, x0
01557204: e8040037 tbnz     w8, #0, #0x15572a0
01557208: a0e301f0 adrp     x0, #0x51ce000
0155720c: 001044f9 ldr      x0, [x0, #0x820]
01557210: 3c68e997 bl       #0xfb1300
01557214: e0e401f0 adrp     x0, #0x51f6000
01557218: 004042f9 ldr      x0, [x0, #0x480]
0155721c: 3968e997 bl       #0xfb1300
01557220: 20e50190 adrp     x0, #0x51fb000
01557224: 00b045f9 ldr      x0, [x0, #0xb60]
01557228: 3668e997 bl       #0xfb1300
0155722c: 40e60190 adrp     x0, #0x521f000
01557230: 005c45f9 ldr      x0, [x0, #0xab8]
01557234: 3368e997 bl       #0xfb1300
01557238: c0e201d0 adrp     x0, #0x51b1000
0155723c: 002040f9 ldr      x0, [x0, #0x40]
01557240: 3068e997 bl       #0xfb1300
01557244: 80e601d0 adrp     x0, #0x5229000
01557248: 000440f9 ldr      x0, [x0, #8]
0155724c: 2d68e997 bl       #0xfb1300
01557250: 60e20190 adrp     x0, #0x51a3000
01557254: 00f440f9 ldr      x0, [x0, #0x1e8]
01557258: 2a68e997 bl       #0xfb1300
0155725c: e0e301f0 adrp     x0, #0x51d6000
01557260: 005841f9 ldr      x0, [x0, #0x2b0]
01557264: 2768e997 bl       #0xfb1300
01557268: 80e301f0 adrp     x0, #0x51ca000
0155726c: 006845f9 ldr      x0, [x0, #0xad0]
01557270: 2468e997 bl       #0xfb1300
01557274: a0e20190 adrp     x0, #0x51ab000
01557278: 007843f9 ldr      x0, [x0, #0x6f0]
0155727c: 2168e997 bl       #0xfb1300
01557280: 60e601b0 adrp     x0, #0x5224000
01557284: 006444f9 ldr      x0, [x0, #0x8c8]
01557288: 1e68e997 bl       #0xfb1300
0155728c: c0e30190 adrp     x0, #0x51cf000
01557290: 00ec46f9 ldr      x0, [x0, #0xdd8]
01557294: 1b68e997 bl       #0xfb1300
01557298: 28008052 mov      w8, #1
0155729c: 88663739 strb     w8, [x20, #0xdd9]
015572a0: 68424039 ldrb     w8, [x19, #0x10]
015572a4: 08030034 cbz      w8, #0x1557304
015572a8: 601240f9 ldr      x0, [x19, #0x20]
015572ac: 202000b4 cbz      x0, #0x15576b0
015572b0: 081c40b9 ldr      w8, [x0, #0x1c]
015572b4: 1f010071 cmp      w8, #0
015572b8: 6c020054 b.gt     #0x1557304
015572bc: c1008052 mov      w1, #6
015572c0: e2031faa mov      x2, xzr
015572c4: b56a5394 bl       #0x2a31d98 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$HasOperation
015572c8: e0010037 tbnz     w0, #0, #0x1557304
015572cc: 68024139 ldrb     w8, [x19, #0x40]
015572d0: 88020034 cbz      w8, #0x1557320
015572d4: 602640f9 ldr      x0, [x19, #0x48]
015572d8: 7f420039 strb     wzr, [x19, #0x10]
015572dc: 7f020139 strb     wzr, [x19, #0x40]
015572e0: 801e00b4 cbz      x0, #0x15576b0
015572e4: a8e301f0 adrp     x8, #0x51ce000
015572e8: 081144f9 ldr      x8, [x8, #0x820]
015572ec: 010140f9 ldr      x1, [x8]
015572f0: d1e85394 bl       #0x2a51634 ; System.Collections.Generic.HashSet<object>$$Clear
015572f4: 680e40f9 ldr      x8, [x19, #0x18]
015572f8: c81d00b4 cbz      x8, #0x15576b0
015572fc: 082140b9 ldr      w8, [x8, #0x20]
01557300: 685200b9 str      w8, [x19, #0x50]
01557304: fd7b45a9 ldp      x29, x30, [sp, #0x50]
01557308: f44f44a9 ldp      x20, x19, [sp, #0x40]
0155730c: f65743a9 ldp      x22, x21, [sp, #0x30]
01557310: f85f42a9 ldp      x24, x23, [sp, #0x20]
01557314: fa6741a9 ldp      x26, x25, [sp, #0x10]
01557318: fc6fc6a8 ldp      x28, x27, [sp], #0x60
0155731c: c0035fd6 ret
01557320: 681640f9 ldr      x8, [x19, #0x28]
01557324: 681c00b4 cbz      x8, #0x15576b0
01557328: 081940b9 ldr      w8, [x8, #0x18]
0155732c: 1f050071 cmp      w8, #1
01557330: 2bfdff54 b.lt     #0x15572d4
01557334: d4e30190 adrp     x20, #0x51cf000
01557338: 94ee46f9 ldr      x20, [x20, #0xdd8]
0155733c: e00313aa mov      x0, x19
01557340: dd000094 bl       #0x15576b4 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$GetSoilGroups
01557344: 880240f9 ldr      x8, [x20]
01557348: f50300aa mov      x21, x0
0155734c: e00308aa mov      x0, x8
01557350: 3268e997 bl       #0xfb1418
01557354: e01a00b4 cbz      x0, #0x15576b0
01557358: 74e601b0 adrp     x20, #0x5224000
0155735c: 946644f9 ldr      x20, [x20, #0x8c8]
01557360: e1031faa mov      x1, xzr
01557364: f60300aa mov      x22, x0
01557368: a3703494 bl       #0x22735f4 ; System.Object$$.ctor
0155736c: 800240f9 ldr      x0, [x20]
01557370: 2a68e997 bl       #0xfb1418
01557374: e01900b4 cbz      x0, #0x15576b0
01557378: c8e201d0 adrp     x8, #0x51b1000
0155737c: 082140f9 ldr      x8, [x8, #0x40]
01557380: f40300aa mov      x20, x0
01557384: 010140f9 ldr      x1, [x8]
01557388: af652294 bl       #0x1df0a44 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$.ctor
0155738c: e00313aa mov      x0, x19
01557390: fb020094 bl       #0x1557f7c ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$GetBlankCellBlockCounts
01557394: f51800b4 cbz      x21, #0x15576b0
01557398: a81a40b9 ldr      w8, [x21, #0x18]
0155739c: 9ce301f0 adrp     x28, #0x51ca000
015573a0: 3de50190 adrp     x29, #0x51fb000
015573a4: 9c6b45f9 ldr      x28, [x28, #0xad0]
015573a8: bdb345f9 ldr      x29, [x29, #0xb60]
015573ac: 1f050071 cmp      w8, #1
015573b0: cb0d0054 b.lt     #0x1557568
015573b4: f70300aa mov      x23, x0
015573b8: f8031f2a mov      w24, wzr
015573bc: a8e20190 adrp     x8, #0x51ab000
015573c0: 087943f9 ldr      x8, [x8, #0x6f0]
015573c4: e00315aa mov      x0, x21
015573c8: e103182a mov      w1, w24
015573cc: 020140f9 ldr      x2, [x8]
015573d0: 07dc5194 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
015573d4: e10300aa mov      x1, x0
015573d8: e00313aa mov      x0, x19
015573dc: e203182a mov      w2, w24
015573e0: e30317aa mov      x3, x23
015573e4: aa030094 bl       #0x155828c ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$GetCellCandidatesToSpreadMushrooms
015573e8: 401600b4 cbz      x0, #0x15576b0
015573ec: 081840b9 ldr      w8, [x0, #0x18]
015573f0: f90300aa mov      x25, x0
015573f4: 1f050071 cmp      w8, #1
015573f8: 0b0b0054 b.lt     #0x1557558
015573fc: 48e60190 adrp     x8, #0x521f000
01557400: 085d45f9 ldr      x8, [x8, #0xab8]
01557404: e00319aa mov      x0, x25
01557408: e10316aa mov      x1, x22
0155740c: 020140f9 ldr      x2, [x8]
01557410: 4d6e2294 bl       #0x1df2d44 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$Sort
01557414: 820340f9 ldr      x2, [x28]
01557418: e00319aa mov      x0, x25
0155741c: e1031f2a mov      w1, wzr
01557420: e5662294 bl       #0x1df0fb4 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$get_Item
01557424: 8b1e40b9 ldr      w11, [x20, #0x1c]
01557428: 890a40f9 ldr      x9, [x20, #0x10]
0155742c: aa0340f9 ldr      x10, [x29]
01557430: 6b050011 add      w11, w11, #1
01557434: 8b1e00b9 str      w11, [x20, #0x1c]
01557438: c91300b4 cbz      x9, #0x15576b0
0155743c: 8b1a80b9 ldrsw    x11, [x20, #0x18]
01557440: 2c1940b9 ldr      w12, [x9, #0x18]
01557444: e80300aa mov      x8, x0
01557448: e20301aa mov      x2, x1
0155744c: 7f010c6b cmp      w11, w12
01557450: 22010054 b.hs     #0x1557474
01557454: 6a050011 add      w10, w11, #1
01557458: 20110b8b add      x0, x9, x11, lsl #4
0155745c: 8a1a00b9 str      w10, [x20, #0x18]
01557460: 080c02f8 str      x8, [x0, #0x20]!
01557464: e1031faa mov      x1, xzr
01557468: 020400f9 str      x2, [x0, #8]
0155746c: 9067e997 bl       #0xfb12ac
01557470: 08000014 b        #0x1557490
01557474: 491140f9 ldr      x9, [x10, #0x20]
01557478: e00314aa mov      x0, x20
0155747c: e10308aa mov      x1, x8
01557480: 296140f9 ldr      x9, [x9, #0xc0]
01557484: 232d40f9 ldr      x3, [x9, #0x58]
01557488: 690440f9 ldr      x9, [x3, #8]
0155748c: 20013fd6 blr      x9
01557490: 281b40b9 ldr      w8, [x25, #0x18]
01557494: 1f090071 cmp      w8, #2
01557498: 0b060054 b.lt     #0x1557558
0155749c: 3a008052 mov      w26, #1
015574a0: 820340f9 ldr      x2, [x28]
015574a4: e00319aa mov      x0, x25
015574a8: e1031f2a mov      w1, wzr
015574ac: c2662294 bl       #0x1df0fb4 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$get_Item
015574b0: 820340f9 ldr      x2, [x28]
015574b4: fb0301aa mov      x27, x1
015574b8: e00319aa mov      x0, x25
015574bc: e1031a2a mov      w1, w26
015574c0: bd662294 bl       #0x1df0fb4 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$get_Item
015574c4: 28001bca eor      x8, x1, x27
015574c8: 880400b7 tbnz     x8, #0x20, #0x1557558
015574cc: 820340f9 ldr      x2, [x28]
015574d0: e00319aa mov      x0, x25
015574d4: e1031a2a mov      w1, w26
015574d8: b7662294 bl       #0x1df0fb4 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$get_Item
015574dc: 8b1e40b9 ldr      w11, [x20, #0x1c]
015574e0: 890a40f9 ldr      x9, [x20, #0x10]
015574e4: aa0340f9 ldr      x10, [x29]
015574e8: 6b050011 add      w11, w11, #1
015574ec: 8b1e00b9 str      w11, [x20, #0x1c]
015574f0: 090e00b4 cbz      x9, #0x15576b0
015574f4: 8b1a80b9 ldrsw    x11, [x20, #0x18]
015574f8: 2c1940b9 ldr      w12, [x9, #0x18]
015574fc: e80300aa mov      x8, x0
01557500: e20301aa mov      x2, x1
01557504: 7f010c6b cmp      w11, w12
01557508: 22010054 b.hs     #0x155752c
0155750c: 6a050011 add      w10, w11, #1
01557510: 20110b8b add      x0, x9, x11, lsl #4
01557514: 8a1a00b9 str      w10, [x20, #0x18]
01557518: 080c02f8 str      x8, [x0, #0x20]!
0155751c: e1031faa mov      x1, xzr
01557520: 020400f9 str      x2, [x0, #8]
01557524: 6267e997 bl       #0xfb12ac
01557528: 08000014 b        #0x1557548
0155752c: 491140f9 ldr      x9, [x10, #0x20]
01557530: e00314aa mov      x0, x20
01557534: e10308aa mov      x1, x8
01557538: 296140f9 ldr      x9, [x9, #0xc0]
0155753c: 232d40f9 ldr      x3, [x9, #0x58]
01557540: 690440f9 ldr      x9, [x3, #8]
01557544: 20013fd6 blr      x9
01557548: 281b40b9 ldr      w8, [x25, #0x18]
0155754c: 5a070011 add      w26, w26, #1
01557550: 5f03086b cmp      w26, w8
01557554: 6bfaff54 b.lt     #0x15574a0
01557558: a81a40b9 ldr      w8, [x21, #0x18]
0155755c: 18070011 add      w24, w24, #1
01557560: 1f03086b cmp      w24, w8
01557564: cbf2ff54 b.lt     #0x15573bc
01557568: 48e60190 adrp     x8, #0x521f000
0155756c: 085d45f9 ldr      x8, [x8, #0xab8]
01557570: e00314aa mov      x0, x20
01557574: e10316aa mov      x1, x22
01557578: 020140f9 ldr      x2, [x8]
0155757c: f26d2294 bl       #0x1df2d44 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$Sort
01557580: 68e601b0 adrp     x8, #0x5224000
01557584: 086544f9 ldr      x8, [x8, #0x8c8]
01557588: 000140f9 ldr      x0, [x8]
0155758c: a367e997 bl       #0xfb1418
01557590: 000900b4 cbz      x0, #0x15576b0
01557594: c8e201d0 adrp     x8, #0x51b1000
01557598: 082140f9 ldr      x8, [x8, #0x40]
0155759c: f50300aa mov      x21, x0
015575a0: 010140f9 ldr      x1, [x8]
015575a4: 28652294 bl       #0x1df0a44 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$.ctor
015575a8: 881a40b9 ldr      w8, [x20, #0x18]
015575ac: 1f050071 cmp      w8, #1
015575b0: 6b060054 b.lt     #0x155767c
015575b4: f6031f2a mov      w22, wzr
015575b8: 820340f9 ldr      x2, [x28]
015575bc: e00314aa mov      x0, x20
015575c0: e103162a mov      w1, w22
015575c4: 7c662294 bl       #0x1df0fb4 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$get_Item
015575c8: a91a40b9 ldr      w9, [x21, #0x18]
015575cc: f70300aa mov      x23, x0
015575d0: f80301aa mov      x24, x1
015575d4: 28050071 subs     w8, w9, #1
015575d8: 8b010054 b.lt     #0x1557608
015575dc: 820340f9 ldr      x2, [x28]
015575e0: e00315aa mov      x0, x21
015575e4: e103082a mov      w1, w8
015575e8: 73662294 bl       #0x1df0fb4 ; System.Collections.Generic.List<MushroomSoilItemHelper.MushroomSpreadCell>$$get_Item
015575ec: e20301aa mov      x2, x1
015575f0: e10300aa mov      x1, x0
015575f4: e30317aa mov      x3, x23
015575f8: e40318aa mov      x4, x24
015575fc: ee030094 bl       #0x15585b4 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper.MushroomSoilCellPatternDataComparer$$Compare
01557600: 6003f837 tbnz     w0, #0x1f, #0x155766c
01557604: a91a40b9 ldr      w9, [x21, #0x18]
01557608: ab1e40b9 ldr      w11, [x21, #0x1c]
0155760c: a80a40f9 ldr      x8, [x21, #0x10]
01557610: aa0340f9 ldr      x10, [x29]
01557614: 6b050011 add      w11, w11, #1
01557618: ab1e00b9 str      w11, [x21, #0x1c]
0155761c: a80400b4 cbz      x8, #0x15576b0
01557620: 0b1940b9 ldr      w11, [x8, #0x18]
01557624: 3f010b6b cmp      w9, w11
01557628: 22010054 b.hs     #0x155764c
0155762c: 2a050011 add      w10, w9, #1
01557630: 00d1298b add      x0, x8, w9, sxtw #4
01557634: aa1a00b9 str      w10, [x21, #0x18]
01557638: 170c02f8 str      x23, [x0, #0x20]!
0155763c: e1031faa mov      x1, xzr
01557640: 180400f9 str      x24, [x0, #8]
01557644: 1a67e997 bl       #0xfb12ac
01557648: 09000014 b        #0x155766c
0155764c: 481140f9 ldr      x8, [x10, #0x20]
01557650: e00315aa mov      x0, x21
01557654: e10317aa mov      x1, x23
01557658: e20318aa mov      x2, x24
0155765c: 086140f9 ldr      x8, [x8, #0xc0]
01557660: 032d40f9 ldr      x3, [x8, #0x58]
01557664: 680440f9 ldr      x8, [x3, #8]
01557668: 00013fd6 blr      x8
0155766c: 881a40b9 ldr      w8, [x20, #0x18]
01557670: d6060011 add      w22, w22, #1
01557674: df02086b cmp      w22, w8
01557678: 0bfaff54 b.lt     #0x15575b8
0155767c: a81a40b9 ldr      w8, [x21, #0x18]
01557680: 1f050071 cmp      w8, #1
01557684: 8be2ff54 b.lt     #0x15572d4
01557688: 601e40f9 ldr      x0, [x19, #0x38]
0155768c: 200100b4 cbz      x0, #0x15576b0
01557690: e8e401f0 adrp     x8, #0x51f6000
01557694: 084142f9 ldr      x8, [x8, #0x480]
01557698: e10315aa mov      x1, x21
0155769c: 020140f9 ldr      x2, [x8]
015576a0: 179e3f94 bl       #0x253eefc ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$GetRandomItemFromList<MushroomSoilItemHelper.MushroomSpreadCell>
015576a4: e10300aa mov      x1, x0
015576a8: 0a040094 bl       #0x15586d0 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$CreateMushroomItem
015576ac: 0affff17 b        #0x15572d4
015576b0: 5e67e997 bl       #0xfb1428
