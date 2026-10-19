# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballPropellerStrategy$$SingleRayReached
# Linear span; next metadata entry is not a proven CFG boundary.
0239ac54: ff4306d1 sub      sp, sp, #0x190
0239ac58: fc9b00f9 str      x28, [sp, #0x130]
0239ac5c: fb6b14a9 stp      x27, x26, [sp, #0x140]
0239ac60: f96315a9 stp      x25, x24, [sp, #0x150]
0239ac64: f75b16a9 stp      x23, x22, [sp, #0x160]
0239ac68: f55317a9 stp      x21, x20, [sp, #0x170]
0239ac6c: f37b18a9 stp      x19, x30, [sp, #0x180]
0239ac70: 58d03bd5 mrs      x24, tpidr_el0
0239ac74: 081740f9 ldr      x8, [x24, #0x28]
0239ac78: 368f0190 adrp     x22, #0x557e000
0239ac7c: f50302aa mov      x21, x2
0239ac80: f40301aa mov      x20, x1
0239ac84: e89700f9 str      x8, [sp, #0x128]
0239ac88: c8fa6639 ldrb     w8, [x22, #0x9be]
0239ac8c: f30300aa mov      x19, x0
0239ac90: f7030291 add      x23, sp, #0x80
0239ac94: e8010037 tbnz     w8, #0, #0x239acd0
0239ac98: 007101b0 adrp     x0, #0x51bb000
0239ac9c: 009c46f9 ldr      x0, [x0, #0xd38]
0239aca0: 9859b097 bl       #0xfb1300
0239aca4: a07101f0 adrp     x0, #0x51d1000
0239aca8: 005c44f9 ldr      x0, [x0, #0x8b8]
0239acac: 9559b097 bl       #0xfb1300
0239acb0: e07301f0 adrp     x0, #0x5219000
0239acb4: 006840f9 ldr      x0, [x0, #0xd0]
0239acb8: 9259b097 bl       #0xfb1300
0239acbc: a0740190 adrp     x0, #0x522e000
0239acc0: 008445f9 ldr      x0, [x0, #0xb08]
0239acc4: 8f59b097 bl       #0xfb1300
0239acc8: 28008052 mov      w8, #1
0239accc: c8fa2639 strb     w8, [x22, #0x9be]
0239acd0: 00e4006f movi     v0.2d, #0000000000000000
0239acd4: e00313aa mov      x0, x19
0239acd8: e20315aa mov      x2, x21
0239acdc: ff7f10a9 stp      xzr, xzr, [sp, #0x100]
0239ace0: ff8b00f9 str      xzr, [sp, #0x110]
0239ace4: ff5209f8 stur     xzr, [x23, #0x95]
0239ace8: e08306ad stp      q0, q0, [sp, #0xd0]
0239acec: e0a2863c stur     q0, [x23, #0x6a]
0239acf0: ff2f00f9 str      xzr, [sp, #0x58]
0239acf4: 8df7ff97 bl       #0x2398b28 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$SingleRayReached
0239acf8: f51d00b4 cbz      x21, #0x239b0b4
0239acfc: e00315aa mov      x0, x21
0239ad00: e1031faa mov      x1, xzr
0239ad04: 39cb3f94 bl       #0x338d9e8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$IsUnderChain
0239ad08: a0000036 tbz      w0, #0, #0x239ad1c
0239ad0c: e00313aa mov      x0, x19
0239ad10: e10315aa mov      x1, x21
0239ad14: ec000094 bl       #0x239b0c4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$ExplodeChainAndResetMatchItem
0239ad18: db000014 b        #0x239b084
0239ad1c: e10315aa mov      x1, x21
0239ad20: 69010094 bl       #0x239b2c4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$RemoveAnItemFromCell
0239ad24: f60300aa mov      x22, x0
0239ad28: e8030291 add      x8, sp, #0x80
0239ad2c: 40018052 mov      w0, #0xa
0239ad30: e1031f2a mov      w1, wzr
0239ad34: e2031faa mov      x2, xzr
0239ad38: d82cf597 bl       #0x20e6098 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$GetSettingsForTileId
0239ad3c: e023c03d ldr      q0, [sp, #0x80]
0239ad40: e1d3c83c ldur     q1, [sp, #0x8d]
0239ad44: e2e2c13c ldur     q2, [x23, #0x1e]
0239ad48: e3e2c23c ldur     q3, [x23, #0x2e]
0239ad4c: e482c33c ldur     q4, [x23, #0x38]
0239ad50: e043803d str      q0, [sp, #0x100]
0239ad54: e1d2883c stur     q1, [x23, #0x8d]
0239ad58: e28f06ad stp      q2, q3, [sp, #0xd0]
0239ad5c: e4a2863c stur     q4, [x23, #0x6a]
0239ad60: 681640f9 ldr      x8, [x19, #0x28]
0239ad64: 881a00b4 cbz      x8, #0x239b0b4
0239ad68: 151d40f9 ldr      x21, [x8, #0x38]
0239ad6c: e043c03d ldr      q0, [sp, #0x100]
0239ad70: e1d2c83c ldur     q1, [x23, #0x8d]
0239ad74: e38b46ad ldp      q3, q2, [sp, #0xd0]
0239ad78: e4a2c63c ldur     q4, [x23, #0x6a]
0239ad7c: e01b803d str      q0, [sp, #0x60]
0239ad80: e1d3863c stur     q1, [sp, #0x6d]
0239ad84: e30b04ad stp      q3, q2, [sp, #0x80]
0239ad88: e4a2813c stur     q4, [x23, #0x1a]
0239ad8c: 561900b4 cbz      x22, #0x239b0b4
0239ad90: a87101f0 adrp     x8, #0x51d1000
0239ad94: 085d44f9 ldr      x8, [x8, #0x8b8]
0239ad98: c90e40f9 ldr      x9, [x22, #0x18]
0239ad9c: 000140f9 ldr      x0, [x8]
0239ada0: e92f00f9 str      x9, [sp, #0x58]
0239ada4: 08e040b9 ldr      w8, [x0, #0xe0]
0239ada8: 48000035 cbnz     w8, #0x239adb0
0239adac: 9659b097 bl       #0xfb1404
0239adb0: e0630191 add      x0, sp, #0x58
0239adb4: e1031faa mov      x1, xzr
0239adb8: d1cf1c94 bl       #0x2acecfc ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$ToVector
0239adbc: d51700b4 cbz      x21, #0x239b0b4
0239adc0: e31bc03d ldr      q3, [sp, #0x60]
0239adc4: e4d3c63c ldur     q4, [sp, #0x6d]
0239adc8: e61744ad ldp      q6, q5, [sp, #0x80]
0239adcc: e7a2c13c ldur     q7, [x23, #0x1a]
0239add0: 28008052 mov      w8, #1
0239add4: e1430091 add      x1, sp, #0x10
0239add8: e00315aa mov      x0, x21
0239addc: e2031faa mov      x2, xzr
0239ade0: e8b70039 strb     w8, [sp, #0x2d]
0239ade4: e307803d str      q3, [sp, #0x10]
0239ade8: e4d3813c stur     q4, [sp, #0x1d]
0239adec: e6e3823c stur     q6, [sp, #0x2e]
0239adf0: e5e3833c stur     q5, [sp, #0x3e]
0239adf4: e783843c stur     q7, [sp, #0x48]
0239adf8: 9f3cf597 bl       #0x20ea074 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$CreateItemWithSettings
0239adfc: f50300aa mov      x21, x0
0239ae00: c00100b4 cbz      x0, #0x239ae38
0239ae04: a9740190 adrp     x9, #0x522e000
0239ae08: 298545f9 ldr      x9, [x9, #0xb08]
0239ae0c: a80240f9 ldr      x8, [x21]
0239ae10: 210140f9 ldr      x1, [x9]
0239ae14: 0ab14439 ldrb     w10, [x8, #0x12c]
0239ae18: 29b04439 ldrb     w9, [x1, #0x12c]
0239ae1c: 5f01096b cmp      w10, w9
0239ae20: e3140054 b.lo     #0x239b0bc
0239ae24: 086540f9 ldr      x8, [x8, #0xc8]
0239ae28: 080d098b add      x8, x8, x9, lsl #3
0239ae2c: 08815ff8 ldur     x8, [x8, #-8]
0239ae30: 1f0101eb cmp      x8, x1
0239ae34: 41140054 b.ne     #0x239b0bc
0239ae38: f98e0190 adrp     x25, #0x5576000
0239ae3c: 28af7c39 ldrb     w8, [x25, #0xf2b]
0239ae40: c8000035 cbnz     w8, #0x239ae58
0239ae44: 607301d0 adrp     x0, #0x5208000
0239ae48: 00c041f9 ldr      x0, [x0, #0x380]
0239ae4c: 2d59b097 bl       #0xfb1300
0239ae50: 28008052 mov      w8, #1
0239ae54: 28af3c39 strb     w8, [x25, #0xf2b]
0239ae58: 7a7301d0 adrp     x26, #0x5208000
0239ae5c: 5ac341f9 ldr      x26, [x26, #0x380]
0239ae60: 480340f9 ldr      x8, [x26]
0239ae64: 085d40f9 ldr      x8, [x8, #0xb8]
0239ae68: 080140f9 ldr      x8, [x8]
0239ae6c: 481200b4 cbz      x8, #0x239b0b4
0239ae70: 081d40f9 ldr      x8, [x8, #0x38]
0239ae74: 081200b4 cbz      x8, #0x239b0b4
0239ae78: 170d40f9 ldr      x23, [x8, #0x18]
0239ae7c: e00316aa mov      x0, x22
0239ae80: e1031faa mov      x1, xzr
0239ae84: 4dc21c94 bl       #0x2acb7b8 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetViewPosition
0239ae88: 771100b4 cbz      x23, #0x239b0b4
0239ae8c: 1b7101b0 adrp     x27, #0x51bb000
0239ae90: 7b9f46f9 ldr      x27, [x27, #0xd38]
0239ae94: 23008052 mov      w3, #1
0239ae98: 24008052 mov      w4, #1
0239ae9c: e00317aa mov      x0, x23
0239aea0: e10315aa mov      x1, x21
0239aea4: e2031f2a mov      w2, wzr
0239aea8: e5031faa mov      x5, xzr
0239aeac: e00d0394 bl       #0x245e62c ; Royal.Player.Context.Data.Session.UserActiveLevelData$$SpecialItemCreated
0239aeb0: 600340f9 ldr      x0, [x27]
0239aeb4: 5959b097 bl       #0xfb1418
0239aeb8: e00f00b4 cbz      x0, #0x239b0b4
0239aebc: e87301f0 adrp     x8, #0x5219000
0239aec0: 086940f9 ldr      x8, [x8, #0xd0]
0239aec4: e10314aa mov      x1, x20
0239aec8: e3031faa mov      x3, xzr
0239aecc: f70300aa mov      x23, x0
0239aed0: 020140f9 ldr      x2, [x8]
0239aed4: 67a7f097 bl       #0x1fc4c70 ; System.Action$$.ctor
0239aed8: e00313aa mov      x0, x19
0239aedc: e10315aa mov      x1, x21
0239aee0: e20316aa mov      x2, x22
0239aee4: e30317aa mov      x3, x23
0239aee8: 0f010094 bl       #0x239b324 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$PutItemToCell
0239aeec: 550e00b4 cbz      x21, #0x239b0b4
0239aef0: a80240f9 ldr      x8, [x21]
0239aef4: e00315aa mov      x0, x21
0239aef8: 09bd41f9 ldr      x9, [x8, #0x378]
0239aefc: 01c141f9 ldr      x1, [x8, #0x380]
0239af00: 20013fd6 blr      x9
0239af04: a86640f9 ldr      x8, [x21, #0xc8]
0239af08: 680d00b4 cbz      x8, #0x239b0b4
0239af0c: f603002a mov      w22, w0
0239af10: e00308aa mov      x0, x8
0239af14: e1031faa mov      x1, xzr
0239af18: a49f6594 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
0239af1c: c00c00b4 cbz      x0, #0x239b0b4
0239af20: e1031faa mov      x1, xzr
0239af24: 74bb6594 bl       #0x3d09cf4 ; UnityEngine.Transform$$get_position
0239af28: a86640f9 ldr      x8, [x21, #0xc8]
0239af2c: 480c00b4 cbz      x8, #0x239b0b4
0239af30: 340c00b4 cbz      x20, #0x239b0b4
0239af34: 021140f9 ldr      x2, [x8, #0x20]
0239af38: e00314aa mov      x0, x20
0239af3c: e103162a mov      w1, w22
0239af40: e3031faa mov      x3, xzr
0239af44: 98324094 bl       #0x33a79a4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$CreateItemBg
0239af48: a86640f9 ldr      x8, [x21, #0xc8]
0239af4c: 480b00b4 cbz      x8, #0x239b0b4
0239af50: 011140f9 ldr      x1, [x8, #0x20]
0239af54: e00314aa mov      x0, x20
0239af58: e2031faa mov      x2, xzr
0239af5c: a4324094 bl       #0x33a79ec ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$ShakeItem
0239af60: 28af7c39 ldrb     w8, [x25, #0xf2b]
0239af64: c8000035 cbnz     w8, #0x239af7c
0239af68: 607301d0 adrp     x0, #0x5208000
0239af6c: 00c041f9 ldr      x0, [x0, #0x380]
0239af70: e458b097 bl       #0xfb1300
0239af74: 28008052 mov      w8, #1
0239af78: 28af3c39 strb     w8, [x25, #0xf2b]
0239af7c: 480340f9 ldr      x8, [x26]
0239af80: 085d40f9 ldr      x8, [x8, #0xb8]
0239af84: 080140f9 ldr      x8, [x8]
0239af88: 680900b4 cbz      x8, #0x239b0b4
0239af8c: 081d40f9 ldr      x8, [x8, #0x38]
0239af90: 280900b4 cbz      x8, #0x239b0b4
0239af94: 000d40f9 ldr      x0, [x8, #0x18]
0239af98: e00800b4 cbz      x0, #0x239b0b4
0239af9c: 21008052 mov      w1, #1
0239afa0: e2031faa mov      x2, xzr
0239afa4: 34008052 mov      w20, #1
0239afa8: 230d0394 bl       #0x245e434 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryCollectDailyLightningBolts
0239afac: 28af7c39 ldrb     w8, [x25, #0xf2b]
0239afb0: a8000035 cbnz     w8, #0x239afc4
0239afb4: 607301d0 adrp     x0, #0x5208000
0239afb8: 00c041f9 ldr      x0, [x0, #0x380]
0239afbc: d158b097 bl       #0xfb1300
0239afc0: 34af3c39 strb     w20, [x25, #0xf2b]
0239afc4: 480340f9 ldr      x8, [x26]
0239afc8: 085d40f9 ldr      x8, [x8, #0xb8]
0239afcc: 080140f9 ldr      x8, [x8]
0239afd0: 280700b4 cbz      x8, #0x239b0b4
0239afd4: 081d40f9 ldr      x8, [x8, #0x38]
0239afd8: e80600b4 cbz      x8, #0x239b0b4
0239afdc: a90240f9 ldr      x9, [x21]
0239afe0: 140d40f9 ldr      x20, [x8, #0x18]
0239afe4: e00315aa mov      x0, x21
0239afe8: 28bd41f9 ldr      x8, [x9, #0x378]
0239afec: 21c141f9 ldr      x1, [x9, #0x380]
0239aff0: 00013fd6 blr      x8
0239aff4: 140600b4 cbz      x20, #0x239b0b4
0239aff8: e103002a mov      w1, w0
0239affc: e00314aa mov      x0, x20
0239b000: e2031faa mov      x2, xzr
0239b004: 140d0394 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
0239b008: 687a40f9 ldr      x8, [x19, #0xf0]
0239b00c: a80000b4 cbz      x8, #0x239b020
0239b010: e103002a mov      w1, w0
0239b014: e00308aa mov      x0, x8
0239b018: e2031faa mov      x2, xzr
0239b01c: 3349c397 bl       #0x146d4e8 ; Royal.Scenes.Home.Ui.Dialogs.ClashOfChampions.Scripts.ClashOfChampionsGameplayCollectView$$IncrementScore
0239b020: e0031faa mov      x0, xzr
0239b024: 1c9ced97 bl       #0x1f02094 ; Royal.Player.Context.Units.UserManager$$get_CurrentUserAnimationData
0239b028: 28af7c39 ldrb     w8, [x25, #0xf2b]
0239b02c: f30300aa mov      x19, x0
0239b030: c8000035 cbnz     w8, #0x239b048
0239b034: 607301b0 adrp     x0, #0x5208000
0239b038: 00c041f9 ldr      x0, [x0, #0x380]
0239b03c: b158b097 bl       #0xfb1300
0239b040: 28008052 mov      w8, #1
0239b044: 28af3c39 strb     w8, [x25, #0xf2b]
0239b048: 480340f9 ldr      x8, [x26]
0239b04c: 085d40f9 ldr      x8, [x8, #0xb8]
0239b050: 080140f9 ldr      x8, [x8]
0239b054: 080300b4 cbz      x8, #0x239b0b4
0239b058: 081d40f9 ldr      x8, [x8, #0x38]
0239b05c: c80200b4 cbz      x8, #0x239b0b4
0239b060: 080d40f9 ldr      x8, [x8, #0x18]
0239b064: 880200b4 cbz      x8, #0x239b0b4
0239b068: 730200b4 cbz      x19, #0x239b0b4
0239b06c: 02c14039 ldrb     w2, [x8, #0x30]
0239b070: 61008052 mov      w1, #3
0239b074: 23008052 mov      w3, #1
0239b078: e00313aa mov      x0, x19
0239b07c: e4031faa mov      x4, xzr
0239b080: cfd70b94 bl       #0x2690fbc ; Royal.Player.Context.Data.Session.AnimationData$$AddMissionEvents
0239b084: 081740f9 ldr      x8, [x24, #0x28]
0239b088: e99740f9 ldr      x9, [sp, #0x128]
0239b08c: 1f0109eb cmp      x8, x9
0239b090: 41010054 b.ne     #0x239b0b8
0239b094: f37b58a9 ldp      x19, x30, [sp, #0x180]
0239b098: f55357a9 ldp      x21, x20, [sp, #0x170]
0239b09c: f75b56a9 ldp      x23, x22, [sp, #0x160]
0239b0a0: f96355a9 ldp      x25, x24, [sp, #0x150]
0239b0a4: fb6b54a9 ldp      x27, x26, [sp, #0x140]
0239b0a8: fc9b40f9 ldr      x28, [sp, #0x130]
0239b0ac: ff430691 add      sp, sp, #0x190
0239b0b0: c0035fd6 ret      
0239b0b4: dd58b097 bl       #0xfb1428
0239b0b8: 26a0a497 bl       #0xcc3150
0239b0bc: e00315aa mov      x0, x21
0239b0c0: c059b097 bl       #0xfb17c0
