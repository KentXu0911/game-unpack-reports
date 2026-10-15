# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ShouldAddToSingleTargetScore
# Next metadata method 0x20f3848, not a proven function boundary.
020f3574: f60f1df8 str      x22, [sp, #-0x30]!
020f3578: f55301a9 stp      x21, x20, [sp, #0x10]
020f357c: f37b02a9 stp      x19, x30, [sp, #0x20]
020f3580: 56a401d0 adrp     x22, #0x557d000
020f3584: 358601d0 adrp     x21, #0x51b9000
020f3588: c8425539 ldrb     w8, [x22, #0x550]
020f358c: b57245f9 ldr      x21, [x21, #0xae0]
020f3590: f30301aa mov      x19, x1
020f3594: f40300aa mov      x20, x0
020f3598: 48020037 tbnz     w8, #0, #0x20f35e0
020f359c: 008901f0 adrp     x0, #0x5216000
020f35a0: 005441f9 ldr      x0, [x0, #0x2a8]
020f35a4: 57f7ba97 bl       #0xfb1300
020f35a8: a08601d0 adrp     x0, #0x51c9000
020f35ac: 008042f9 ldr      x0, [x0, #0x500]
020f35b0: 54f7ba97 bl       #0xfb1300
020f35b4: 208601d0 adrp     x0, #0x51b9000
020f35b8: 007045f9 ldr      x0, [x0, #0xae0]
020f35bc: 51f7ba97 bl       #0xfb1300
020f35c0: 008601d0 adrp     x0, #0x51b5000
020f35c4: 002c40f9 ldr      x0, [x0, #0x58]
020f35c8: 4ef7ba97 bl       #0xfb1300
020f35cc: 608501d0 adrp     x0, #0x51a1000
020f35d0: 00ac45f9 ldr      x0, [x0, #0xb58]
020f35d4: 4bf7ba97 bl       #0xfb1300
020f35d8: 28008052 mov      w8, #1
020f35dc: c8421539 strb     w8, [x22, #0x550]
020f35e0: a00240f9 ldr      x0, [x21]
020f35e4: 08e040b9 ldr      w8, [x0, #0xe0]
020f35e8: 48000035 cbnz     w8, #0x20f35f0
020f35ec: 86f7ba97 bl       #0xfb1404
020f35f0: 36a40190 adrp     x22, #0x5577000
020f35f4: c84e7d39 ldrb     w8, [x22, #0xf53]
020f35f8: c8000035 cbnz     w8, #0x20f3610
020f35fc: 208601d0 adrp     x0, #0x51b9000
020f3600: 007045f9 ldr      x0, [x0, #0xae0]
020f3604: 3ff7ba97 bl       #0xfb1300
020f3608: 28008052 mov      w8, #1
020f360c: c84e3d39 strb     w8, [x22, #0xf53]
020f3610: a00240f9 ldr      x0, [x21]
020f3614: 08e040b9 ldr      w8, [x0, #0xe0]
020f3618: 68000035 cbnz     w8, #0x20f3624
020f361c: 7af7ba97 bl       #0xfb1404
020f3620: a00240f9 ldr      x0, [x21]
020f3624: 085c40f9 ldr      x8, [x0, #0xb8]
020f3628: 08514039 ldrb     w8, [x8, #0x14]
020f362c: 880f0035 cbnz     w8, #0x20f381c
020f3630: 802640f9 ldr      x0, [x20, #0x48]
020f3634: 801000b4 cbz      x0, #0x20f3844
020f3638: e1018052 mov      w1, #0xf
020f363c: e2031faa mov      x2, xzr
020f3640: 119dfd97 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f3644: 80020036 tbz      w0, #0, #0x20f3694
020f3648: f30f00b4 cbz      x19, #0x20f3844
020f364c: 606240f9 ldr      x0, [x19, #0xc0]
020f3650: a00f00b4 cbz      x0, #0x20f3844
020f3654: e1031faa mov      x1, xzr
020f3658: d35a2794 bl       #0x2aca1a4 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$GetTopMostAboveItem
020f365c: c00100b4 cbz      x0, #0x20f3694
020f3660: 088901f0 adrp     x8, #0x5216000
020f3664: 085541f9 ldr      x8, [x8, #0x2a8]
020f3668: 090040f9 ldr      x9, [x0]
020f366c: 080140f9 ldr      x8, [x8]
020f3670: 2bb14439 ldrb     w11, [x9, #0x12c]
020f3674: 0ab14439 ldrb     w10, [x8, #0x12c]
020f3678: 7f010a6b cmp      w11, w10
020f367c: c3000054 b.lo     #0x20f3694
020f3680: 296540f9 ldr      x9, [x9, #0xc8]
020f3684: 290d0a8b add      x9, x9, x10, lsl #3
020f3688: 29815ff8 ldur     x9, [x9, #-8]
020f368c: 3f0108eb cmp      x9, x8
020f3690: 800a0054 b.eq     #0x20f37e0
020f3694: 802640f9 ldr      x0, [x20, #0x48]
020f3698: 600d00b4 cbz      x0, #0x20f3844
020f369c: 81038052 mov      w1, #0x1c
020f36a0: e2031faa mov      x2, xzr
020f36a4: 2a9dfd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f36a8: 80020036 tbz      w0, #0, #0x20f36f8
020f36ac: d30c00b4 cbz      x19, #0x20f3844
020f36b0: e00313aa mov      x0, x19
020f36b4: e1031faa mov      x1, xzr
020f36b8: ea542794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f36bc: e00100b4 cbz      x0, #0x20f36f8
020f36c0: 688501d0 adrp     x8, #0x51a1000
020f36c4: 08ad45f9 ldr      x8, [x8, #0xb58]
020f36c8: 090040f9 ldr      x9, [x0]
020f36cc: f50300aa mov      x21, x0
020f36d0: 080140f9 ldr      x8, [x8]
020f36d4: 2bb14439 ldrb     w11, [x9, #0x12c]
020f36d8: 0ab14439 ldrb     w10, [x8, #0x12c]
020f36dc: 7f010a6b cmp      w11, w10
020f36e0: c3000054 b.lo     #0x20f36f8
020f36e4: 296540f9 ldr      x9, [x9, #0xc8]
020f36e8: 290d0a8b add      x9, x9, x10, lsl #3
020f36ec: 29815ff8 ldur     x9, [x9, #-8]
020f36f0: 3f0108eb cmp      x9, x8
020f36f4: 00080054 b.eq     #0x20f37f4
020f36f8: 802640f9 ldr      x0, [x20, #0x48]
020f36fc: 400a00b4 cbz      x0, #0x20f3844
020f3700: 41088052 mov      w1, #0x42
020f3704: e2031faa mov      x2, xzr
020f3708: 119dfd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f370c: 60020036 tbz      w0, #0, #0x20f3758
020f3710: b30900b4 cbz      x19, #0x20f3844
020f3714: e00313aa mov      x0, x19
020f3718: e1031faa mov      x1, xzr
020f371c: d1542794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f3720: c00100b4 cbz      x0, #0x20f3758
020f3724: a88601d0 adrp     x8, #0x51c9000
020f3728: 088142f9 ldr      x8, [x8, #0x500]
020f372c: 090040f9 ldr      x9, [x0]
020f3730: 080140f9 ldr      x8, [x8]
020f3734: 2bb14439 ldrb     w11, [x9, #0x12c]
020f3738: 0ab14439 ldrb     w10, [x8, #0x12c]
020f373c: 7f010a6b cmp      w11, w10
020f3740: c3000054 b.lo     #0x20f3758
020f3744: 296540f9 ldr      x9, [x9, #0xc8]
020f3748: 290d0a8b add      x9, x9, x10, lsl #3
020f374c: 29815ff8 ldur     x9, [x9, #-8]
020f3750: 3f0108eb cmp      x9, x8
020f3754: 00060054 b.eq     #0x20f3814
020f3758: 802640f9 ldr      x0, [x20, #0x48]
020f375c: 400700b4 cbz      x0, #0x20f3844
020f3760: a10a8052 mov      w1, #0x55
020f3764: e2031faa mov      x2, xzr
020f3768: f99cfd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f376c: 80050036 tbz      w0, #0, #0x20f381c
020f3770: b30600b4 cbz      x19, #0x20f3844
020f3774: e00313aa mov      x0, x19
020f3778: e1031faa mov      x1, xzr
020f377c: b9542794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f3780: e00400b4 cbz      x0, #0x20f381c
020f3784: 088601d0 adrp     x8, #0x51b5000
020f3788: 082d40f9 ldr      x8, [x8, #0x58]
020f378c: 090040f9 ldr      x9, [x0]
020f3790: 080140f9 ldr      x8, [x8]
020f3794: 2bb14439 ldrb     w11, [x9, #0x12c]
020f3798: 0ab14439 ldrb     w10, [x8, #0x12c]
020f379c: 7f010a6b cmp      w11, w10
020f37a0: e3030054 b.lo     #0x20f381c
020f37a4: 296540f9 ldr      x9, [x9, #0xc8]
020f37a8: 290d0a8b add      x9, x9, x10, lsl #3
020f37ac: 29815ff8 ldur     x9, [x9, #-8]
020f37b0: 3f0108eb cmp      x9, x8
020f37b4: 13009f9a csel     x19, x0, xzr, eq
020f37b8: 21030054 b.ne     #0x20f381c
020f37bc: 530400b4 cbz      x19, #0x20f3844
020f37c0: e00313aa mov      x0, x19
020f37c4: e1031faa mov      x1, xzr
020f37c8: 3b0cf597 bl       #0x1e368b4 ; Royal.Scenes.Game.Mechanics.Items.PowerCubeItem.PowerCubeItemModel$$IsLeader
020f37cc: 80020037 tbnz     w0, #0, #0x20f381c
020f37d0: e00313aa mov      x0, x19
020f37d4: e1031faa mov      x1, xzr
020f37d8: dc01f597 bl       #0x1e33f48 ; Royal.Scenes.Game.Mechanics.Items.PowerCubeItem.PowerCubeItemModel$$BaseRemainingExplodeCount
020f37dc: 17000014 b        #0x20f3838
020f37e0: 08484239 ldrb     w8, [x0, #0x92]
020f37e4: c8010035 cbnz     w8, #0x20f381c
020f37e8: e1031faa mov      x1, xzr
020f37ec: 81dadf97 bl       #0x18ea1f0 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.ForceFieldItem.ForceFieldItemModel$$BaseRemainingExplodeCount
020f37f0: 12000014 b        #0x20f3838
020f37f4: e00315aa mov      x0, x21
020f37f8: e1031faa mov      x1, xzr
020f37fc: 14c00a94 bl       #0x23a384c ; Royal.Scenes.Game.Mechanics.Items.SoilItem.SoilItemModel$$IsLeader
020f3800: e0000037 tbnz     w0, #0, #0x20f381c
020f3804: e00315aa mov      x0, x21
020f3808: e1031faa mov      x1, xzr
020f380c: 12b60a94 bl       #0x23a1054 ; Royal.Scenes.Game.Mechanics.Items.SoilItem.SoilItemModel$$BaseRemainingExplodeCount
020f3810: 0a000014 b        #0x20f3838
020f3814: 08304339 ldrb     w8, [x0, #0xcc]
020f3818: c8000034 cbz      w8, #0x20f3830
020f381c: 20008052 mov      w0, #1
020f3820: f37b42a9 ldp      x19, x30, [sp, #0x20]
020f3824: f55341a9 ldp      x21, x20, [sp, #0x10]
020f3828: f60743f8 ldr      x22, [sp], #0x30
020f382c: c0035fd6 ret      
020f3830: e1031faa mov      x1, xzr
020f3834: 37c40b94 bl       #0x23e4910 ; Royal.Scenes.Game.Mechanics.Items.IvyItem.IvyItemModel$$BaseRemainingExplodeCount
020f3838: 1f040071 cmp      w0, #1
020f383c: e0179f1a cset     w0, eq
020f3840: f8ffff17 b        #0x20f3820
020f3844: f9f6ba97 bl       #0xfb1428
