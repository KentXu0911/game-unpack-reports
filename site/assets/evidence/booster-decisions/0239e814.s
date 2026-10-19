# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballTntStrategy$$SingleRayReached
# Linear span; next metadata entry is not a proven CFG boundary.
0239e814: ff8305d1 sub      sp, sp, #0x160
0239e818: fc6312a9 stp      x28, x24, [sp, #0x120]
0239e81c: f75b13a9 stp      x23, x22, [sp, #0x130]
0239e820: f55314a9 stp      x21, x20, [sp, #0x140]
0239e824: f37b15a9 stp      x19, x30, [sp, #0x150]
0239e828: 58d03bd5 mrs      x24, tpidr_el0
0239e82c: 081740f9 ldr      x8, [x24, #0x28]
0239e830: 168f0190 adrp     x22, #0x557e000
0239e834: f50302aa mov      x21, x2
0239e838: f40301aa mov      x20, x1
0239e83c: e88f00f9 str      x8, [sp, #0x118]
0239e840: c8b26739 ldrb     w8, [x22, #0x9ec]
0239e844: f30300aa mov      x19, x0
0239e848: f7c30191 add      x23, sp, #0x70
0239e84c: e8010037 tbnz     w8, #0, #0x239e888
0239e850: e07001b0 adrp     x0, #0x51bb000
0239e854: 009c46f9 ldr      x0, [x0, #0xd38]
0239e858: aa4ab097 bl       #0xfb1300
0239e85c: 807101f0 adrp     x0, #0x51d1000
0239e860: 005c44f9 ldr      x0, [x0, #0x8b8]
0239e864: a74ab097 bl       #0xfb1300
0239e868: c07301f0 adrp     x0, #0x5219000
0239e86c: 006840f9 ldr      x0, [x0, #0xd0]
0239e870: a44ab097 bl       #0xfb1300
0239e874: 207001f0 adrp     x0, #0x51a5000
0239e878: 006841f9 ldr      x0, [x0, #0x2d0]
0239e87c: a14ab097 bl       #0xfb1300
0239e880: 28008052 mov      w8, #1
0239e884: c8b22739 strb     w8, [x22, #0x9ec]
0239e888: 00e4006f movi     v0.2d, #0000000000000000
0239e88c: e00313aa mov      x0, x19
0239e890: e20315aa mov      x2, x21
0239e894: ff7f0fa9 stp      xzr, xzr, [sp, #0xf0]
0239e898: ff8300f9 str      xzr, [sp, #0x100]
0239e89c: ff5209f8 stur     xzr, [x23, #0x95]
0239e8a0: e00306ad stp      q0, q0, [sp, #0xc0]
0239e8a4: e0a2863c stur     q0, [x23, #0x6a]
0239e8a8: ff2700f9 str      xzr, [sp, #0x48]
0239e8ac: 9fe8ff97 bl       #0x2398b28 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$SingleRayReached
0239e8b0: b51b00b4 cbz      x21, #0x239ec24
0239e8b4: e00315aa mov      x0, x21
0239e8b8: e1031faa mov      x1, xzr
0239e8bc: 4bbc3f94 bl       #0x338d9e8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$IsUnderChain
0239e8c0: a0000036 tbz      w0, #0, #0x239e8d4
0239e8c4: e00313aa mov      x0, x19
0239e8c8: e10315aa mov      x1, x21
0239e8cc: fef1ff97 bl       #0x239b0c4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$ExplodeChainAndResetMatchItem
0239e8d0: cb000014 b        #0x239ebfc
0239e8d4: e10315aa mov      x1, x21
0239e8d8: 7bf2ff97 bl       #0x239b2c4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$RemoveAnItemFromCell
0239e8dc: f60300aa mov      x22, x0
0239e8e0: e8c30191 add      x8, sp, #0x70
0239e8e4: 00058052 mov      w0, #0x28
0239e8e8: e1031f2a mov      w1, wzr
0239e8ec: e2031faa mov      x2, xzr
0239e8f0: ea1df597 bl       #0x20e6098 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$GetSettingsForTileId
0239e8f4: e01fc03d ldr      q0, [sp, #0x70]
0239e8f8: e1d3c73c ldur     q1, [sp, #0x7d]
0239e8fc: e2e2c13c ldur     q2, [x23, #0x1e]
0239e900: e3e2c23c ldur     q3, [x23, #0x2e]
0239e904: e482c33c ldur     q4, [x23, #0x38]
0239e908: e03f803d str      q0, [sp, #0xf0]
0239e90c: e1d2883c stur     q1, [x23, #0x8d]
0239e910: e20f06ad stp      q2, q3, [sp, #0xc0]
0239e914: e4a2863c stur     q4, [x23, #0x6a]
0239e918: 681640f9 ldr      x8, [x19, #0x28]
0239e91c: 481800b4 cbz      x8, #0x239ec24
0239e920: 151d40f9 ldr      x21, [x8, #0x38]
0239e924: e03fc03d ldr      q0, [sp, #0xf0]
0239e928: e1d2c83c ldur     q1, [x23, #0x8d]
0239e92c: e30b46ad ldp      q3, q2, [sp, #0xc0]
0239e930: e4a2c63c ldur     q4, [x23, #0x6a]
0239e934: e017803d str      q0, [sp, #0x50]
0239e938: e1d3853c stur     q1, [sp, #0x5d]
0239e93c: e38b03ad stp      q3, q2, [sp, #0x70]
0239e940: e4a2813c stur     q4, [x23, #0x1a]
0239e944: 161700b4 cbz      x22, #0x239ec24
0239e948: 887101f0 adrp     x8, #0x51d1000
0239e94c: 085d44f9 ldr      x8, [x8, #0x8b8]
0239e950: c90e40f9 ldr      x9, [x22, #0x18]
0239e954: 000140f9 ldr      x0, [x8]
0239e958: e92700f9 str      x9, [sp, #0x48]
0239e95c: 08e040b9 ldr      w8, [x0, #0xe0]
0239e960: 48000035 cbnz     w8, #0x239e968
0239e964: a84ab097 bl       #0xfb1404
0239e968: e0230191 add      x0, sp, #0x48
0239e96c: e1031faa mov      x1, xzr
0239e970: e3c01c94 bl       #0x2acecfc ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$ToVector
0239e974: 951500b4 cbz      x21, #0x239ec24
0239e978: e317c03d ldr      q3, [sp, #0x50]
0239e97c: e4d3c53c ldur     q4, [sp, #0x5d]
0239e980: e69743ad ldp      q6, q5, [sp, #0x70]
0239e984: e7a2c13c ldur     q7, [x23, #0x1a]
0239e988: 28008052 mov      w8, #1
0239e98c: e1030091 mov      x1, sp
0239e990: e00315aa mov      x0, x21
0239e994: e2031faa mov      x2, xzr
0239e998: e8770039 strb     w8, [sp, #0x1d]
0239e99c: e303803d str      q3, [sp]
0239e9a0: e4d3803c stur     q4, [sp, #0xd]
0239e9a4: e6e3813c stur     q6, [sp, #0x1e]
0239e9a8: e5e3823c stur     q5, [sp, #0x2e]
0239e9ac: e783833c stur     q7, [sp, #0x38]
0239e9b0: b12df597 bl       #0x20ea074 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$CreateItemWithSettings
0239e9b4: f50300aa mov      x21, x0
0239e9b8: c00100b4 cbz      x0, #0x239e9f0
0239e9bc: 297001f0 adrp     x9, #0x51a5000
0239e9c0: 296941f9 ldr      x9, [x9, #0x2d0]
0239e9c4: a80240f9 ldr      x8, [x21]
0239e9c8: 210140f9 ldr      x1, [x9]
0239e9cc: 0ab14439 ldrb     w10, [x8, #0x12c]
0239e9d0: 29b04439 ldrb     w9, [x1, #0x12c]
0239e9d4: 5f01096b cmp      w10, w9
0239e9d8: a3120054 b.lo     #0x239ec2c
0239e9dc: 086540f9 ldr      x8, [x8, #0xc8]
0239e9e0: 080d098b add      x8, x8, x9, lsl #3
0239e9e4: 08815ff8 ldur     x8, [x8, #-8]
0239e9e8: 1f0101eb cmp      x8, x1
0239e9ec: 01120054 b.ne     #0x239ec2c
0239e9f0: e87001b0 adrp     x8, #0x51bb000
0239e9f4: 089d46f9 ldr      x8, [x8, #0xd38]
0239e9f8: 000140f9 ldr      x0, [x8]
0239e9fc: 874ab097 bl       #0xfb1418
0239ea00: 201100b4 cbz      x0, #0x239ec24
0239ea04: c87301f0 adrp     x8, #0x5219000
0239ea08: 086940f9 ldr      x8, [x8, #0xd0]
0239ea0c: e10314aa mov      x1, x20
0239ea10: e3031faa mov      x3, xzr
0239ea14: f70300aa mov      x23, x0
0239ea18: 020140f9 ldr      x2, [x8]
0239ea1c: 9598f097 bl       #0x1fc4c70 ; System.Action$$.ctor
0239ea20: e00313aa mov      x0, x19
0239ea24: e10315aa mov      x1, x21
0239ea28: e20316aa mov      x2, x22
0239ea2c: e30317aa mov      x3, x23
0239ea30: 3df2ff97 bl       #0x239b324 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$PutItemToCell
0239ea34: 950f00b4 cbz      x21, #0x239ec24
0239ea38: a0b240f9 ldr      x0, [x21, #0x160]
0239ea3c: 400f00b4 cbz      x0, #0x239ec24
0239ea40: 080040f9 ldr      x8, [x0]
0239ea44: e1031f2a mov      w1, wzr
0239ea48: 09c541f9 ldr      x9, [x8, #0x388]
0239ea4c: 02c941f9 ldr      x2, [x8, #0x390]
0239ea50: a8da00d0 adrp     x8, #0x3ef4000
0239ea54: 00554abd ldr      s0, [x8, #0xa54]
0239ea58: 20013fd6 blr      x9
0239ea5c: a80240f9 ldr      x8, [x21]
0239ea60: e00315aa mov      x0, x21
0239ea64: 09bd41f9 ldr      x9, [x8, #0x378]
0239ea68: 01c141f9 ldr      x1, [x8, #0x380]
0239ea6c: 20013fd6 blr      x9
0239ea70: a8b240f9 ldr      x8, [x21, #0x160]
0239ea74: 880d00b4 cbz      x8, #0x239ec24
0239ea78: f603002a mov      w22, w0
0239ea7c: e00308aa mov      x0, x8
0239ea80: e1031faa mov      x1, xzr
0239ea84: c9906594 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
0239ea88: e00c00b4 cbz      x0, #0x239ec24
0239ea8c: e1031faa mov      x1, xzr
0239ea90: 99ac6594 bl       #0x3d09cf4 ; UnityEngine.Transform$$get_position
0239ea94: a8b240f9 ldr      x8, [x21, #0x160]
0239ea98: 680c00b4 cbz      x8, #0x239ec24
0239ea9c: 540c00b4 cbz      x20, #0x239ec24
0239eaa0: 021140f9 ldr      x2, [x8, #0x20]
0239eaa4: e00314aa mov      x0, x20
0239eaa8: e103162a mov      w1, w22
0239eaac: e3031faa mov      x3, xzr
0239eab0: bd234094 bl       #0x33a79a4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$CreateItemBg
0239eab4: a8b240f9 ldr      x8, [x21, #0x160]
0239eab8: 680b00b4 cbz      x8, #0x239ec24
0239eabc: 011140f9 ldr      x1, [x8, #0x20]
0239eac0: e00314aa mov      x0, x20
0239eac4: e2031faa mov      x2, xzr
0239eac8: c9234094 bl       #0x33a79ec ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$ShakeItem
0239eacc: d68e0190 adrp     x22, #0x5576000
0239ead0: c8ae7c39 ldrb     w8, [x22, #0xf2b]
0239ead4: c8000035 cbnz     w8, #0x239eaec
0239ead8: 407301d0 adrp     x0, #0x5208000
0239eadc: 00c041f9 ldr      x0, [x0, #0x380]
0239eae0: 084ab097 bl       #0xfb1300
0239eae4: 28008052 mov      w8, #1
0239eae8: c8ae3c39 strb     w8, [x22, #0xf2b]
0239eaec: 577301d0 adrp     x23, #0x5208000
0239eaf0: f7c241f9 ldr      x23, [x23, #0x380]
0239eaf4: e80240f9 ldr      x8, [x23]
0239eaf8: 085d40f9 ldr      x8, [x8, #0xb8]
0239eafc: 080140f9 ldr      x8, [x8]
0239eb00: 280900b4 cbz      x8, #0x239ec24
0239eb04: 081d40f9 ldr      x8, [x8, #0x38]
0239eb08: e80800b4 cbz      x8, #0x239ec24
0239eb0c: 000d40f9 ldr      x0, [x8, #0x18]
0239eb10: a00800b4 cbz      x0, #0x239ec24
0239eb14: 21008052 mov      w1, #1
0239eb18: e2031faa mov      x2, xzr
0239eb1c: 34008052 mov      w20, #1
0239eb20: 45fe0294 bl       #0x245e434 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryCollectDailyLightningBolts
0239eb24: c8ae7c39 ldrb     w8, [x22, #0xf2b]
0239eb28: a8000035 cbnz     w8, #0x239eb3c
0239eb2c: 407301d0 adrp     x0, #0x5208000
0239eb30: 00c041f9 ldr      x0, [x0, #0x380]
0239eb34: f349b097 bl       #0xfb1300
0239eb38: d4ae3c39 strb     w20, [x22, #0xf2b]
0239eb3c: e80240f9 ldr      x8, [x23]
0239eb40: 085d40f9 ldr      x8, [x8, #0xb8]
0239eb44: 080140f9 ldr      x8, [x8]
0239eb48: e80600b4 cbz      x8, #0x239ec24
0239eb4c: 081d40f9 ldr      x8, [x8, #0x38]
0239eb50: a80600b4 cbz      x8, #0x239ec24
0239eb54: a90240f9 ldr      x9, [x21]
0239eb58: 140d40f9 ldr      x20, [x8, #0x18]
0239eb5c: e00315aa mov      x0, x21
0239eb60: 28bd41f9 ldr      x8, [x9, #0x378]
0239eb64: 21c141f9 ldr      x1, [x9, #0x380]
0239eb68: 00013fd6 blr      x8
0239eb6c: d40500b4 cbz      x20, #0x239ec24
0239eb70: e103002a mov      w1, w0
0239eb74: e00314aa mov      x0, x20
0239eb78: e2031faa mov      x2, xzr
0239eb7c: 36fe0294 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
0239eb80: 687a40f9 ldr      x8, [x19, #0xf0]
0239eb84: a80000b4 cbz      x8, #0x239eb98
0239eb88: e103002a mov      w1, w0
0239eb8c: e00308aa mov      x0, x8
0239eb90: e2031faa mov      x2, xzr
0239eb94: 553ac397 bl       #0x146d4e8 ; Royal.Scenes.Home.Ui.Dialogs.ClashOfChampions.Scripts.ClashOfChampionsGameplayCollectView$$IncrementScore
0239eb98: e0031faa mov      x0, xzr
0239eb9c: 3e8ded97 bl       #0x1f02094 ; Royal.Player.Context.Units.UserManager$$get_CurrentUserAnimationData
0239eba0: c8ae7c39 ldrb     w8, [x22, #0xf2b]
0239eba4: f30300aa mov      x19, x0
0239eba8: c8000035 cbnz     w8, #0x239ebc0
0239ebac: 407301d0 adrp     x0, #0x5208000
0239ebb0: 00c041f9 ldr      x0, [x0, #0x380]
0239ebb4: d349b097 bl       #0xfb1300
0239ebb8: 28008052 mov      w8, #1
0239ebbc: c8ae3c39 strb     w8, [x22, #0xf2b]
0239ebc0: e80240f9 ldr      x8, [x23]
0239ebc4: 085d40f9 ldr      x8, [x8, #0xb8]
0239ebc8: 080140f9 ldr      x8, [x8]
0239ebcc: c80200b4 cbz      x8, #0x239ec24
0239ebd0: 081d40f9 ldr      x8, [x8, #0x38]
0239ebd4: 880200b4 cbz      x8, #0x239ec24
0239ebd8: 080d40f9 ldr      x8, [x8, #0x18]
0239ebdc: 480200b4 cbz      x8, #0x239ec24
0239ebe0: 330200b4 cbz      x19, #0x239ec24
0239ebe4: 02c14039 ldrb     w2, [x8, #0x30]
0239ebe8: 81008052 mov      w1, #4
0239ebec: 23008052 mov      w3, #1
0239ebf0: e00313aa mov      x0, x19
0239ebf4: e4031faa mov      x4, xzr
0239ebf8: f1c80b94 bl       #0x2690fbc ; Royal.Player.Context.Data.Session.AnimationData$$AddMissionEvents
0239ebfc: 081740f9 ldr      x8, [x24, #0x28]
0239ec00: e98f40f9 ldr      x9, [sp, #0x118]
0239ec04: 1f0109eb cmp      x8, x9
0239ec08: 01010054 b.ne     #0x239ec28
0239ec0c: f37b55a9 ldp      x19, x30, [sp, #0x150]
0239ec10: f55354a9 ldp      x21, x20, [sp, #0x140]
0239ec14: f75b53a9 ldp      x23, x22, [sp, #0x130]
0239ec18: fc6352a9 ldp      x28, x24, [sp, #0x120]
0239ec1c: ff830591 add      sp, sp, #0x160
0239ec20: c0035fd6 ret      
0239ec24: 014ab097 bl       #0xfb1428
0239ec28: 4a91a497 bl       #0xcc3150
0239ec2c: e00315aa mov      x0, x21
0239ec30: e44ab097 bl       #0xfb17c0
