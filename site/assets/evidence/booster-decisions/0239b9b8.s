# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballRocketStrategy$$SingleRayReached
# Linear span; next metadata entry is not a proven CFG boundary.
0239b9b8: ff8305d1 sub      sp, sp, #0x160
0239b9bc: fc6312a9 stp      x28, x24, [sp, #0x120]
0239b9c0: f75b13a9 stp      x23, x22, [sp, #0x130]
0239b9c4: f55314a9 stp      x21, x20, [sp, #0x140]
0239b9c8: f37b15a9 stp      x19, x30, [sp, #0x150]
0239b9cc: 58d03bd5 mrs      x24, tpidr_el0
0239b9d0: 081740f9 ldr      x8, [x24, #0x28]
0239b9d4: 168f01f0 adrp     x22, #0x557e000
0239b9d8: f50302aa mov      x21, x2
0239b9dc: f40301aa mov      x20, x1
0239b9e0: e88f00f9 str      x8, [sp, #0x118]
0239b9e4: c80e6739 ldrb     w8, [x22, #0x9c3]
0239b9e8: f30300aa mov      x19, x0
0239b9ec: f7c30191 add      x23, sp, #0x70
0239b9f0: e8010037 tbnz     w8, #0, #0x239ba2c
0239b9f4: 00710190 adrp     x0, #0x51bb000
0239b9f8: 009c46f9 ldr      x0, [x0, #0xd38]
0239b9fc: 4156b097 bl       #0xfb1300
0239ba00: a07101d0 adrp     x0, #0x51d1000
0239ba04: 005c44f9 ldr      x0, [x0, #0x8b8]
0239ba08: 3e56b097 bl       #0xfb1300
0239ba0c: e07301d0 adrp     x0, #0x5219000
0239ba10: 006840f9 ldr      x0, [x0, #0xd0]
0239ba14: 3b56b097 bl       #0xfb1300
0239ba18: 60710190 adrp     x0, #0x51c7000
0239ba1c: 00f041f9 ldr      x0, [x0, #0x3e0]
0239ba20: 3856b097 bl       #0xfb1300
0239ba24: 28008052 mov      w8, #1
0239ba28: c80e2739 strb     w8, [x22, #0x9c3]
0239ba2c: 00e4006f movi     v0.2d, #0000000000000000
0239ba30: e00313aa mov      x0, x19
0239ba34: e20315aa mov      x2, x21
0239ba38: ff7f0fa9 stp      xzr, xzr, [sp, #0xf0]
0239ba3c: ff8300f9 str      xzr, [sp, #0x100]
0239ba40: ff5209f8 stur     xzr, [x23, #0x95]
0239ba44: e00306ad stp      q0, q0, [sp, #0xc0]
0239ba48: e0a2863c stur     q0, [x23, #0x6a]
0239ba4c: ff2700f9 str      xzr, [sp, #0x48]
0239ba50: 36f4ff97 bl       #0x2398b28 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$SingleRayReached
0239ba54: f51b00b4 cbz      x21, #0x239bdd0
0239ba58: e00315aa mov      x0, x21
0239ba5c: e1031faa mov      x1, xzr
0239ba60: e2c73f94 bl       #0x338d9e8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$IsUnderChain
0239ba64: a0000036 tbz      w0, #0, #0x239ba78
0239ba68: e00313aa mov      x0, x19
0239ba6c: e10315aa mov      x1, x21
0239ba70: 95fdff97 bl       #0x239b0c4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$ExplodeChainAndResetMatchItem
0239ba74: cd000014 b        #0x239bda8
0239ba78: e10315aa mov      x1, x21
0239ba7c: 12feff97 bl       #0x239b2c4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$RemoveAnItemFromCell
0239ba80: a11240b9 ldr      w1, [x21, #0x10]
0239ba84: f60300aa mov      x22, x0
0239ba88: e00313aa mov      x0, x19
0239ba8c: d5000094 bl       #0x239bde0 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballRocketStrategy$$GetCurrentTiledId
0239ba90: e8c30191 add      x8, sp, #0x70
0239ba94: e1031f2a mov      w1, wzr
0239ba98: e2031faa mov      x2, xzr
0239ba9c: 7f29f597 bl       #0x20e6098 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$GetSettingsForTileId
0239baa0: e01fc03d ldr      q0, [sp, #0x70]
0239baa4: e1d3c73c ldur     q1, [sp, #0x7d]
0239baa8: e2e2c13c ldur     q2, [x23, #0x1e]
0239baac: e3e2c23c ldur     q3, [x23, #0x2e]
0239bab0: e482c33c ldur     q4, [x23, #0x38]
0239bab4: e03f803d str      q0, [sp, #0xf0]
0239bab8: e1d2883c stur     q1, [x23, #0x8d]
0239babc: e20f06ad stp      q2, q3, [sp, #0xc0]
0239bac0: e4a2863c stur     q4, [x23, #0x6a]
0239bac4: 681640f9 ldr      x8, [x19, #0x28]
0239bac8: 481800b4 cbz      x8, #0x239bdd0
0239bacc: 151d40f9 ldr      x21, [x8, #0x38]
0239bad0: e03fc03d ldr      q0, [sp, #0xf0]
0239bad4: e1d2c83c ldur     q1, [x23, #0x8d]
0239bad8: e30b46ad ldp      q3, q2, [sp, #0xc0]
0239badc: e4a2c63c ldur     q4, [x23, #0x6a]
0239bae0: e017803d str      q0, [sp, #0x50]
0239bae4: e1d3853c stur     q1, [sp, #0x5d]
0239bae8: e38b03ad stp      q3, q2, [sp, #0x70]
0239baec: e4a2813c stur     q4, [x23, #0x1a]
0239baf0: 161700b4 cbz      x22, #0x239bdd0
0239baf4: a87101d0 adrp     x8, #0x51d1000
0239baf8: 085d44f9 ldr      x8, [x8, #0x8b8]
0239bafc: c90e40f9 ldr      x9, [x22, #0x18]
0239bb00: 000140f9 ldr      x0, [x8]
0239bb04: e92700f9 str      x9, [sp, #0x48]
0239bb08: 08e040b9 ldr      w8, [x0, #0xe0]
0239bb0c: 48000035 cbnz     w8, #0x239bb14
0239bb10: 3d56b097 bl       #0xfb1404
0239bb14: e0230191 add      x0, sp, #0x48
0239bb18: e1031faa mov      x1, xzr
0239bb1c: 78cc1c94 bl       #0x2acecfc ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$ToVector
0239bb20: 951500b4 cbz      x21, #0x239bdd0
0239bb24: e317c03d ldr      q3, [sp, #0x50]
0239bb28: e4d3c53c ldur     q4, [sp, #0x5d]
0239bb2c: e69743ad ldp      q6, q5, [sp, #0x70]
0239bb30: e7a2c13c ldur     q7, [x23, #0x1a]
0239bb34: 28008052 mov      w8, #1
0239bb38: e1030091 mov      x1, sp
0239bb3c: e00315aa mov      x0, x21
0239bb40: e2031faa mov      x2, xzr
0239bb44: e8770039 strb     w8, [sp, #0x1d]
0239bb48: e303803d str      q3, [sp]
0239bb4c: e4d3803c stur     q4, [sp, #0xd]
0239bb50: e6e3813c stur     q6, [sp, #0x1e]
0239bb54: e5e3823c stur     q5, [sp, #0x2e]
0239bb58: e783833c stur     q7, [sp, #0x38]
0239bb5c: 4639f597 bl       #0x20ea074 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$CreateItemWithSettings
0239bb60: f50300aa mov      x21, x0
0239bb64: c00100b4 cbz      x0, #0x239bb9c
0239bb68: 69710190 adrp     x9, #0x51c7000
0239bb6c: 29f141f9 ldr      x9, [x9, #0x3e0]
0239bb70: a80240f9 ldr      x8, [x21]
0239bb74: 210140f9 ldr      x1, [x9]
0239bb78: 0ab14439 ldrb     w10, [x8, #0x12c]
0239bb7c: 29b04439 ldrb     w9, [x1, #0x12c]
0239bb80: 5f01096b cmp      w10, w9
0239bb84: a3120054 b.lo     #0x239bdd8
0239bb88: 086540f9 ldr      x8, [x8, #0xc8]
0239bb8c: 080d098b add      x8, x8, x9, lsl #3
0239bb90: 08815ff8 ldur     x8, [x8, #-8]
0239bb94: 1f0101eb cmp      x8, x1
0239bb98: 01120054 b.ne     #0x239bdd8
0239bb9c: 08710190 adrp     x8, #0x51bb000
0239bba0: 089d46f9 ldr      x8, [x8, #0xd38]
0239bba4: 000140f9 ldr      x0, [x8]
0239bba8: 1c56b097 bl       #0xfb1418
0239bbac: 201100b4 cbz      x0, #0x239bdd0
0239bbb0: e87301d0 adrp     x8, #0x5219000
0239bbb4: 086940f9 ldr      x8, [x8, #0xd0]
0239bbb8: e10314aa mov      x1, x20
0239bbbc: e3031faa mov      x3, xzr
0239bbc0: f70300aa mov      x23, x0
0239bbc4: 020140f9 ldr      x2, [x8]
0239bbc8: 2aa4f097 bl       #0x1fc4c70 ; System.Action$$.ctor
0239bbcc: e00313aa mov      x0, x19
0239bbd0: e10315aa mov      x1, x21
0239bbd4: e20316aa mov      x2, x22
0239bbd8: e30317aa mov      x3, x23
0239bbdc: d2fdff97 bl       #0x239b324 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$PutItemToCell
0239bbe0: 950f00b4 cbz      x21, #0x239bdd0
0239bbe4: a07e40f9 ldr      x0, [x21, #0xf8]
0239bbe8: 400f00b4 cbz      x0, #0x239bdd0
0239bbec: 080040f9 ldr      x8, [x0]
0239bbf0: e1031f2a mov      w1, wzr
0239bbf4: 09c541f9 ldr      x9, [x8, #0x388]
0239bbf8: 02c941f9 ldr      x2, [x8, #0x390]
0239bbfc: c8da00b0 adrp     x8, #0x3ef4000
0239bc00: 004d4abd ldr      s0, [x8, #0xa4c]
0239bc04: 20013fd6 blr      x9
0239bc08: a80240f9 ldr      x8, [x21]
0239bc0c: e00315aa mov      x0, x21
0239bc10: 09bd41f9 ldr      x9, [x8, #0x378]
0239bc14: 01c141f9 ldr      x1, [x8, #0x380]
0239bc18: 20013fd6 blr      x9
0239bc1c: a87e40f9 ldr      x8, [x21, #0xf8]
0239bc20: 880d00b4 cbz      x8, #0x239bdd0
0239bc24: f603002a mov      w22, w0
0239bc28: e00308aa mov      x0, x8
0239bc2c: e1031faa mov      x1, xzr
0239bc30: 5e9c6594 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
0239bc34: e00c00b4 cbz      x0, #0x239bdd0
0239bc38: e1031faa mov      x1, xzr
0239bc3c: 2eb86594 bl       #0x3d09cf4 ; UnityEngine.Transform$$get_position
0239bc40: a87e40f9 ldr      x8, [x21, #0xf8]
0239bc44: 680c00b4 cbz      x8, #0x239bdd0
0239bc48: 540c00b4 cbz      x20, #0x239bdd0
0239bc4c: 021140f9 ldr      x2, [x8, #0x20]
0239bc50: e00314aa mov      x0, x20
0239bc54: e103162a mov      w1, w22
0239bc58: e3031faa mov      x3, xzr
0239bc5c: 522f4094 bl       #0x33a79a4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$CreateItemBg
0239bc60: a87e40f9 ldr      x8, [x21, #0xf8]
0239bc64: 680b00b4 cbz      x8, #0x239bdd0
0239bc68: 011140f9 ldr      x1, [x8, #0x20]
0239bc6c: e00314aa mov      x0, x20
0239bc70: e2031faa mov      x2, xzr
0239bc74: 5e2f4094 bl       #0x33a79ec ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$ShakeItem
0239bc78: d68e01f0 adrp     x22, #0x5576000
0239bc7c: c8ae7c39 ldrb     w8, [x22, #0xf2b]
0239bc80: c8000035 cbnz     w8, #0x239bc98
0239bc84: 607301b0 adrp     x0, #0x5208000
0239bc88: 00c041f9 ldr      x0, [x0, #0x380]
0239bc8c: 9d55b097 bl       #0xfb1300
0239bc90: 28008052 mov      w8, #1
0239bc94: c8ae3c39 strb     w8, [x22, #0xf2b]
0239bc98: 777301b0 adrp     x23, #0x5208000
0239bc9c: f7c241f9 ldr      x23, [x23, #0x380]
0239bca0: e80240f9 ldr      x8, [x23]
0239bca4: 085d40f9 ldr      x8, [x8, #0xb8]
0239bca8: 080140f9 ldr      x8, [x8]
0239bcac: 280900b4 cbz      x8, #0x239bdd0
0239bcb0: 081d40f9 ldr      x8, [x8, #0x38]
0239bcb4: e80800b4 cbz      x8, #0x239bdd0
0239bcb8: 000d40f9 ldr      x0, [x8, #0x18]
0239bcbc: a00800b4 cbz      x0, #0x239bdd0
0239bcc0: 21008052 mov      w1, #1
0239bcc4: e2031faa mov      x2, xzr
0239bcc8: 34008052 mov      w20, #1
0239bccc: da090394 bl       #0x245e434 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryCollectDailyLightningBolts
0239bcd0: c8ae7c39 ldrb     w8, [x22, #0xf2b]
0239bcd4: a8000035 cbnz     w8, #0x239bce8
0239bcd8: 607301b0 adrp     x0, #0x5208000
0239bcdc: 00c041f9 ldr      x0, [x0, #0x380]
0239bce0: 8855b097 bl       #0xfb1300
0239bce4: d4ae3c39 strb     w20, [x22, #0xf2b]
0239bce8: e80240f9 ldr      x8, [x23]
0239bcec: 085d40f9 ldr      x8, [x8, #0xb8]
0239bcf0: 080140f9 ldr      x8, [x8]
0239bcf4: e80600b4 cbz      x8, #0x239bdd0
0239bcf8: 081d40f9 ldr      x8, [x8, #0x38]
0239bcfc: a80600b4 cbz      x8, #0x239bdd0
0239bd00: a90240f9 ldr      x9, [x21]
0239bd04: 140d40f9 ldr      x20, [x8, #0x18]
0239bd08: e00315aa mov      x0, x21
0239bd0c: 28bd41f9 ldr      x8, [x9, #0x378]
0239bd10: 21c141f9 ldr      x1, [x9, #0x380]
0239bd14: 00013fd6 blr      x8
0239bd18: d40500b4 cbz      x20, #0x239bdd0
0239bd1c: e103002a mov      w1, w0
0239bd20: e00314aa mov      x0, x20
0239bd24: e2031faa mov      x2, xzr
0239bd28: cb090394 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
0239bd2c: 687a40f9 ldr      x8, [x19, #0xf0]
0239bd30: a80000b4 cbz      x8, #0x239bd44
0239bd34: e103002a mov      w1, w0
0239bd38: e00308aa mov      x0, x8
0239bd3c: e2031faa mov      x2, xzr
0239bd40: ea45c397 bl       #0x146d4e8 ; Royal.Scenes.Home.Ui.Dialogs.ClashOfChampions.Scripts.ClashOfChampionsGameplayCollectView$$IncrementScore
0239bd44: e0031faa mov      x0, xzr
0239bd48: d398ed97 bl       #0x1f02094 ; Royal.Player.Context.Units.UserManager$$get_CurrentUserAnimationData
0239bd4c: c8ae7c39 ldrb     w8, [x22, #0xf2b]
0239bd50: f30300aa mov      x19, x0
0239bd54: c8000035 cbnz     w8, #0x239bd6c
0239bd58: 607301b0 adrp     x0, #0x5208000
0239bd5c: 00c041f9 ldr      x0, [x0, #0x380]
0239bd60: 6855b097 bl       #0xfb1300
0239bd64: 28008052 mov      w8, #1
0239bd68: c8ae3c39 strb     w8, [x22, #0xf2b]
0239bd6c: e80240f9 ldr      x8, [x23]
0239bd70: 085d40f9 ldr      x8, [x8, #0xb8]
0239bd74: 080140f9 ldr      x8, [x8]
0239bd78: c80200b4 cbz      x8, #0x239bdd0
0239bd7c: 081d40f9 ldr      x8, [x8, #0x38]
0239bd80: 880200b4 cbz      x8, #0x239bdd0
0239bd84: 080d40f9 ldr      x8, [x8, #0x18]
0239bd88: 480200b4 cbz      x8, #0x239bdd0
0239bd8c: 330200b4 cbz      x19, #0x239bdd0
0239bd90: 02c14039 ldrb     w2, [x8, #0x30]
0239bd94: 41008052 mov      w1, #2
0239bd98: 23008052 mov      w3, #1
0239bd9c: e00313aa mov      x0, x19
0239bda0: e4031faa mov      x4, xzr
0239bda4: 86d40b94 bl       #0x2690fbc ; Royal.Player.Context.Data.Session.AnimationData$$AddMissionEvents
0239bda8: 081740f9 ldr      x8, [x24, #0x28]
0239bdac: e98f40f9 ldr      x9, [sp, #0x118]
0239bdb0: 1f0109eb cmp      x8, x9
0239bdb4: 01010054 b.ne     #0x239bdd4
0239bdb8: f37b55a9 ldp      x19, x30, [sp, #0x150]
0239bdbc: f55354a9 ldp      x21, x20, [sp, #0x140]
0239bdc0: f75b53a9 ldp      x23, x22, [sp, #0x130]
0239bdc4: fc6352a9 ldp      x28, x24, [sp, #0x120]
0239bdc8: ff830591 add      sp, sp, #0x160
0239bdcc: c0035fd6 ret      
0239bdd0: 9655b097 bl       #0xfb1428
0239bdd4: df9ca497 bl       #0xcc3150
0239bdd8: e00315aa mov      x0, x21
0239bddc: 7956b097 bl       #0xfb17c0
