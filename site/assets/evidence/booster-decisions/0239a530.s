# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$Start
# Linear span; next metadata entry is not a proven CFG boundary.
0239a530: ea0f1afc str      d10, [sp, #-0x60]!
0239a534: e923016d stp      d9, d8, [sp, #0x10]
0239a538: f96302a9 stp      x25, x24, [sp, #0x20]
0239a53c: f75b03a9 stp      x23, x22, [sp, #0x30]
0239a540: f55304a9 stp      x21, x20, [sp, #0x40]
0239a544: f37b05a9 stp      x19, x30, [sp, #0x50]
0239a548: 368f0190 adrp     x22, #0x557e000
0239a54c: c81a6739 ldrb     w8, [x22, #0x9c6]
0239a550: f40302aa mov      x20, x2
0239a554: f50301aa mov      x21, x1
0239a558: f30300aa mov      x19, x0
0239a55c: e8010037 tbnz     w8, #0, #0x239a598
0239a560: 407301b0 adrp     x0, #0x5203000
0239a564: 005c40f9 ldr      x0, [x0, #0xb8]
0239a568: 665bb097 bl       #0xfb1300
0239a56c: 007301f0 adrp     x0, #0x51fd000
0239a570: 003c46f9 ldr      x0, [x0, #0xc78]
0239a574: 635bb097 bl       #0xfb1300
0239a578: 40740190 adrp     x0, #0x5222000
0239a57c: 002842f9 ldr      x0, [x0, #0x450]
0239a580: 605bb097 bl       #0xfb1300
0239a584: 407001f0 adrp     x0, #0x51a5000
0239a588: 006445f9 ldr      x0, [x0, #0xac8]
0239a58c: 5d5bb097 bl       #0xfb1300
0239a590: 28008052 mov      w8, #1
0239a594: c81a2739 strb     w8, [x22, #0x9c6]
0239a598: 686640f9 ldr      x8, [x19, #0xc8]
0239a59c: 081900b4 cbz      x8, #0x239a8bc
0239a5a0: 02254329 ldp      w2, w9, [x8, #0x18]
0239a5a4: 29050011 add      w9, w9, #1
0239a5a8: 5f040071 cmp      w2, #1
0239a5ac: 1f250329 stp      wzr, w9, [x8, #0x18]
0239a5b0: ab000054 b.lt     #0x239a5c4
0239a5b4: 000940f9 ldr      x0, [x8, #0x10]
0239a5b8: e1031f2a mov      w1, wzr
0239a5bc: e3031faa mov      x3, xzr
0239a5c0: 25370794 bl       #0x2568254 ; System.Array$$Clear
0239a5c4: 687640f9 ldr      x8, [x19, #0xe8]
0239a5c8: a81700b4 cbz      x8, #0x239a8bc
0239a5cc: 02254329 ldp      w2, w9, [x8, #0x18]
0239a5d0: 29050011 add      w9, w9, #1
0239a5d4: 5f040071 cmp      w2, #1
0239a5d8: 1f250329 stp      wzr, w9, [x8, #0x18]
0239a5dc: ab000054 b.lt     #0x239a5f0
0239a5e0: 000940f9 ldr      x0, [x8, #0x10]
0239a5e4: e1031f2a mov      w1, wzr
0239a5e8: e3031faa mov      x3, xzr
0239a5ec: 1a370794 bl       #0x2568254 ; System.Array$$Clear
0239a5f0: e00313aa mov      x0, x19
0239a5f4: e10315aa mov      x1, x21
0239a5f8: a1f5ff97 bl       #0x2397c7c ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$Init
0239a5fc: e00313aa mov      x0, x19
0239a600: 2bf7ff97 bl       #0x23982ac ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$FindMostCommonItem
0239a604: e103002a mov      w1, w0
0239a608: 609a00b9 str      w0, [x19, #0x98]
0239a60c: e00313aa mov      x0, x19
0239a610: 21f8ff97 bl       #0x2398694 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$FindItemsByType
0239a614: 683640f9 ldr      x8, [x19, #0x68]
0239a618: 281500b4 cbz      x8, #0x239a8bc
0239a61c: 001d40f9 ldr      x0, [x8, #0x38]
0239a620: e01400b4 cbz      x0, #0x239a8bc
0239a624: e1031faa mov      x1, xzr
0239a628: 99c63f94 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
0239a62c: 801400b4 cbz      x0, #0x239a8bc
0239a630: e1031faa mov      x1, xzr
0239a634: 5abd1c94 bl       #0x2ac9b9c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$FreezeFall
0239a638: 600e40f9 ldr      x0, [x19, #0x18]
0239a63c: 001400b4 cbz      x0, #0x239a8bc
0239a640: e1031faa mov      x1, xzr
0239a644: d0790294 bl       #0x2438d84 ; Royal.Scenes.Game.Context.Units.GameTouchListener$$DisableTouch
0239a648: 600a40f9 ldr      x0, [x19, #0x10]
0239a64c: 801300b4 cbz      x0, #0x239a8bc
0239a650: 487301b0 adrp     x8, #0x5203000
0239a654: 085d40f9 ldr      x8, [x8, #0xb8]
0239a658: 614240f9 ldr      x1, [x19, #0x80]
0239a65c: 020140f9 ldr      x2, [x8]
0239a660: 26940694 bl       #0x253f6f8 ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$ShuffleList<object>
0239a664: 140100b4 cbz      x20, #0x239a684
0239a668: 880240f9 ldr      x8, [x20]
0239a66c: e00314aa mov      x0, x20
0239a670: 09bd41f9 ldr      x9, [x8, #0x378]
0239a674: 01c141f9 ldr      x1, [x8, #0x380]
0239a678: 20013fd6 blr      x9
0239a67c: e103002a mov      w1, w0
0239a680: 02000014 b        #0x239a688
0239a684: e1031f2a mov      w1, wzr
0239a688: e00313aa mov      x0, x19
0239a68c: 50f6ff97 bl       #0x2397fcc ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$StartShakingLightball
0239a690: f88e0190 adrp     x24, #0x5576000
0239a694: 08af7c39 ldrb     w8, [x24, #0xf2b]
0239a698: c8000035 cbnz     w8, #0x239a6b0
0239a69c: 607301d0 adrp     x0, #0x5208000
0239a6a0: 00c041f9 ldr      x0, [x0, #0x380]
0239a6a4: 175bb097 bl       #0xfb1300
0239a6a8: 28008052 mov      w8, #1
0239a6ac: 08af3c39 strb     w8, [x24, #0xf2b]
0239a6b0: 797301d0 adrp     x25, #0x5208000
0239a6b4: 39c341f9 ldr      x25, [x25, #0x380]
0239a6b8: 280340f9 ldr      x8, [x25]
0239a6bc: 085d40f9 ldr      x8, [x8, #0xb8]
0239a6c0: 080140f9 ldr      x8, [x8]
0239a6c4: c80f00b4 cbz      x8, #0x239a8bc
0239a6c8: 081d40f9 ldr      x8, [x8, #0x38]
0239a6cc: 880f00b4 cbz      x8, #0x239a8bc
0239a6d0: 080d40f9 ldr      x8, [x8, #0x18]
0239a6d4: 480f00b4 cbz      x8, #0x239a8bc
0239a6d8: 084540f9 ldr      x8, [x8, #0x88]
0239a6dc: 080f00b4 cbz      x8, #0x239a8bc
0239a6e0: f50e00b4 cbz      x21, #0x239a8bc
0239a6e4: a90240f9 ldr      x9, [x21]
0239a6e8: 164540f9 ldr      x22, [x8, #0x88]
0239a6ec: 577001f0 adrp     x23, #0x51a5000
0239a6f0: e00315aa mov      x0, x21
0239a6f4: 28b542f9 ldr      x8, [x9, #0x568]
0239a6f8: 21b942f9 ldr      x1, [x9, #0x570]
0239a6fc: f76645f9 ldr      x23, [x23, #0xac8]
0239a700: 00013fd6 blr      x8
0239a704: e00313aa mov      x0, x19
0239a708: 081ca04e mov      v8.16b, v0.16b
0239a70c: 291ca14e mov      v9.16b, v1.16b
0239a710: 4a1ca24e mov      v10.16b, v2.16b
0239a714: d1f6ff97 bl       #0x2398258 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$GetLightballSorting
0239a718: f50300aa mov      x21, x0
0239a71c: e00240f9 ldr      x0, [x23]
0239a720: f70301aa mov      x23, x1
0239a724: 08e040b9 ldr      w8, [x0, #0xe0]
0239a728: 48000035 cbnz     w8, #0x239a730
0239a72c: 365bb097 bl       #0xfb1404
0239a730: e17e4092 and      x1, x23, #0xffffffff
0239a734: 02008012 mov      w2, #-1
0239a738: e00315aa mov      x0, x21
0239a73c: e3031faa mov      x3, xzr
0239a740: c84ebf97 bl       #0x136e260 ; Royal.Scenes.Game.Mechanics.Sortings.Sorting$$GetSortingWithOffset
0239a744: d60b00b4 cbz      x22, #0x239a8bc
0239a748: e30300aa mov      x3, x0
0239a74c: 227c4092 and      x2, x1, #0xffffffff
0239a750: e00316aa mov      x0, x22
0239a754: 001da84e mov      v0.16b, v8.16b
0239a758: 211da94e mov      v1.16b, v9.16b
0239a75c: 421daa4e mov      v2.16b, v10.16b
0239a760: e10303aa mov      x1, x3
0239a764: e3031faa mov      x3, xzr
0239a768: 78ec0294 bl       #0x2455948 ; Royal.Player.Context.Data.Session.DailyLightningRushLevelData$$StartLightningRushIcon
0239a76c: 08af7c39 ldrb     w8, [x24, #0xf2b]
0239a770: c8000035 cbnz     w8, #0x239a788
0239a774: 607301d0 adrp     x0, #0x5208000
0239a778: 00c041f9 ldr      x0, [x0, #0x380]
0239a77c: e15ab097 bl       #0xfb1300
0239a780: 28008052 mov      w8, #1
0239a784: 08af3c39 strb     w8, [x24, #0xf2b]
0239a788: 280340f9 ldr      x8, [x25]
0239a78c: 085d40f9 ldr      x8, [x8, #0xb8]
0239a790: 080140f9 ldr      x8, [x8]
0239a794: 480900b4 cbz      x8, #0x239a8bc
0239a798: 081d40f9 ldr      x8, [x8, #0x38]
0239a79c: 080900b4 cbz      x8, #0x239a8bc
0239a7a0: 000d40f9 ldr      x0, [x8, #0x18]
0239a7a4: c00800b4 cbz      x0, #0x239a8bc
0239a7a8: 21008052 mov      w1, #1
0239a7ac: e2031faa mov      x2, xzr
0239a7b0: 210f0394 bl       #0x245e434 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryCollectDailyLightningBolts
0239a7b4: 540700b4 cbz      x20, #0x239a89c
0239a7b8: 08af7c39 ldrb     w8, [x24, #0xf2b]
0239a7bc: c8000035 cbnz     w8, #0x239a7d4
0239a7c0: 607301d0 adrp     x0, #0x5208000
0239a7c4: 00c041f9 ldr      x0, [x0, #0x380]
0239a7c8: ce5ab097 bl       #0xfb1300
0239a7cc: 28008052 mov      w8, #1
0239a7d0: 08af3c39 strb     w8, [x24, #0xf2b]
0239a7d4: 280340f9 ldr      x8, [x25]
0239a7d8: 085d40f9 ldr      x8, [x8, #0xb8]
0239a7dc: 080140f9 ldr      x8, [x8]
0239a7e0: e80600b4 cbz      x8, #0x239a8bc
0239a7e4: 081d40f9 ldr      x8, [x8, #0x38]
0239a7e8: a80600b4 cbz      x8, #0x239a8bc
0239a7ec: 890240f9 ldr      x9, [x20]
0239a7f0: 150d40f9 ldr      x21, [x8, #0x18]
0239a7f4: e00314aa mov      x0, x20
0239a7f8: 28bd41f9 ldr      x8, [x9, #0x378]
0239a7fc: 21c141f9 ldr      x1, [x9, #0x380]
0239a800: 00013fd6 blr      x8
0239a804: d50500b4 cbz      x21, #0x239a8bc
0239a808: e103002a mov      w1, w0
0239a80c: e00315aa mov      x0, x21
0239a810: e2031faa mov      x2, xzr
0239a814: 100f0394 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
0239a818: 08af7c39 ldrb     w8, [x24, #0xf2b]
0239a81c: f503002a mov      w21, w0
0239a820: c8000035 cbnz     w8, #0x239a838
0239a824: 607301d0 adrp     x0, #0x5208000
0239a828: 00c041f9 ldr      x0, [x0, #0x380]
0239a82c: b55ab097 bl       #0xfb1300
0239a830: 28008052 mov      w8, #1
0239a834: 08af3c39 strb     w8, [x24, #0xf2b]
0239a838: 280340f9 ldr      x8, [x25]
0239a83c: 085d40f9 ldr      x8, [x8, #0xb8]
0239a840: 080140f9 ldr      x8, [x8]
0239a844: c80300b4 cbz      x8, #0x239a8bc
0239a848: 081d40f9 ldr      x8, [x8, #0x38]
0239a84c: 880300b4 cbz      x8, #0x239a8bc
0239a850: 890240f9 ldr      x9, [x20]
0239a854: 160d40f9 ldr      x22, [x8, #0x18]
0239a858: e00314aa mov      x0, x20
0239a85c: 28b542f9 ldr      x8, [x9, #0x568]
0239a860: 21b942f9 ldr      x1, [x9, #0x570]
0239a864: 00013fd6 blr      x8
0239a868: b60200b4 cbz      x22, #0x239a8bc
0239a86c: e303271e fmov     s3, wzr
0239a870: 22008052 mov      w2, #1
0239a874: e00316aa mov      x0, x22
0239a878: e103152a mov      w1, w21
0239a87c: e3031faa mov      x3, xzr
0239a880: e4031faa mov      x4, xzr
0239a884: e5031faa mov      x5, xzr
0239a888: 030f0394 bl       #0x245e494 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryShowClashOfChampionsGameplayCollectView
0239a88c: e10300aa mov      x1, x0
0239a890: e00313aa mov      x0, x19
0239a894: 010c0ff8 str      x1, [x0, #0xf0]!
0239a898: 855ab097 bl       #0xfb12ac
0239a89c: e00313aa mov      x0, x19
0239a8a0: f37b45a9 ldp      x19, x30, [sp, #0x50]
0239a8a4: f55344a9 ldp      x21, x20, [sp, #0x40]
0239a8a8: f75b43a9 ldp      x23, x22, [sp, #0x30]
0239a8ac: f96342a9 ldp      x25, x24, [sp, #0x20]
0239a8b0: e923416d ldp      d9, d8, [sp, #0x10]
0239a8b4: ea0746fc ldr      d10, [sp], #0x60
0239a8b8: b9f7ff17 b        #0x239879c ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$StartSendingRays
0239a8bc: db5ab097 bl       #0xfb1428
