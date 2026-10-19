# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$SingleRayReached
# Linear span; next metadata entry is not a proven CFG boundary.
0239885c: f80f1cf8 str      x24, [sp, #-0x40]!
02398860: f75b01a9 stp      x23, x22, [sp, #0x10]
02398864: f55302a9 stp      x21, x20, [sp, #0x20]
02398868: f37b03a9 stp      x19, x30, [sp, #0x30]
0239886c: 368f01d0 adrp     x22, #0x557e000
02398870: c8c26639 ldrb     w8, [x22, #0x9b0]
02398874: f40302aa mov      x20, x2
02398878: f50301aa mov      x21, x1
0239887c: f30300aa mov      x19, x0
02398880: 28010037 tbnz     w8, #0, #0x23988a4
02398884: 607001d0 adrp     x0, #0x51a6000
02398888: 007040f9 ldr      x0, [x0, #0xe0]
0239888c: 9d62b097 bl       #0xfb1300
02398890: 607001b0 adrp     x0, #0x51a5000
02398894: 006445f9 ldr      x0, [x0, #0xac8]
02398898: 9a62b097 bl       #0xfb1300
0239889c: 28008052 mov      w8, #1
023988a0: c8c22639 strb     w8, [x22, #0x9b0]
023988a4: e00313aa mov      x0, x19
023988a8: e20314aa mov      x2, x20
023988ac: 9f000094 bl       #0x2398b28 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$SingleRayReached
023988b0: 741300b4 cbz      x20, #0x2398b1c
023988b4: 880240f9 ldr      x8, [x20]
023988b8: e00314aa mov      x0, x20
023988bc: 090d42f9 ldr      x9, [x8, #0x418]
023988c0: 011142f9 ldr      x1, [x8, #0x420]
023988c4: 20013fd6 blr      x9
023988c8: f60300aa mov      x22, x0
023988cc: c00100b4 cbz      x0, #0x2398904
023988d0: 697001d0 adrp     x9, #0x51a6000
023988d4: 297140f9 ldr      x9, [x9, #0xe0]
023988d8: c80240f9 ldr      x8, [x22]
023988dc: 210140f9 ldr      x1, [x9]
023988e0: 0ab14439 ldrb     w10, [x8, #0x12c]
023988e4: 29b04439 ldrb     w9, [x1, #0x12c]
023988e8: 5f01096b cmp      w10, w9
023988ec: a3110054 b.lo     #0x2398b20
023988f0: 086540f9 ldr      x8, [x8, #0xc8]
023988f4: 080d098b add      x8, x8, x9, lsl #3
023988f8: 08815ff8 ldur     x8, [x8, #-8]
023988fc: 1f0101eb cmp      x8, x1
02398900: 01110054 b.ne     #0x2398b20
02398904: 787001b0 adrp     x24, #0x51a5000
02398908: 186745f9 ldr      x24, [x24, #0xac8]
0239890c: 000340f9 ldr      x0, [x24]
02398910: 08e040b9 ldr      w8, [x0, #0xe0]
02398914: 48000035 cbnz     w8, #0x239891c
02398918: bb62b097 bl       #0xfb1404
0239891c: e0031faa mov      x0, xzr
02398920: 3c67bf97 bl       #0x1372610 ; Royal.Scenes.Game.Mechanics.Sortings.Sorting$$GetLightballRayItemSorting
02398924: d60f00b4 cbz      x22, #0x2398b1c
02398928: e30300aa mov      x3, x0
0239892c: 227c4092 and      x2, x1, #0xffffffff
02398930: e00316aa mov      x0, x22
02398934: e10303aa mov      x1, x3
02398938: e3031f2a mov      w3, wzr
0239893c: e4031faa mov      x4, xzr
02398940: e2de3f94 bl       #0x33904c8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemView$$UpdateSortingForAnimation
02398944: 880240f9 ldr      x8, [x20]
02398948: e00314aa mov      x0, x20
0239894c: 09bd41f9 ldr      x9, [x8, #0x378]
02398950: 01c141f9 ldr      x1, [x8, #0x380]
02398954: 20013fd6 blr      x9
02398958: c83e40f9 ldr      x8, [x22, #0x78]
0239895c: 080e00b4 cbz      x8, #0x2398b1c
02398960: f703002a mov      w23, w0
02398964: e00308aa mov      x0, x8
02398968: e1031faa mov      x1, xzr
0239896c: 0fa96594 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
02398970: 600d00b4 cbz      x0, #0x2398b1c
02398974: e1031faa mov      x1, xzr
02398978: dfc46594 bl       #0x3d09cf4 ; UnityEngine.Transform$$get_position
0239897c: 150d00b4 cbz      x21, #0x2398b1c
02398980: c21240f9 ldr      x2, [x22, #0x20]
02398984: e00315aa mov      x0, x21
02398988: e103172a mov      w1, w23
0239898c: e3031faa mov      x3, xzr
02398990: 053c4094 bl       #0x33a79a4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$CreateItemBg
02398994: c11240f9 ldr      x1, [x22, #0x20]
02398998: e00315aa mov      x0, x21
0239899c: e2031faa mov      x2, xzr
023989a0: 133c4094 bl       #0x33a79ec ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.View.LightballItemRay$$ShakeItem
023989a4: e00314aa mov      x0, x20
023989a8: e1031faa mov      x1, xzr
023989ac: 3aa93f94 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
023989b0: e00300b4 cbz      x0, #0x2398a2c
023989b4: 006040f9 ldr      x0, [x0, #0xc0]
023989b8: a00300b4 cbz      x0, #0x2398a2c
023989bc: c1008052 mov      w1, #6
023989c0: e2031faa mov      x2, xzr
023989c4: 25c51c94 bl       #0x2ac9e58 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$GetStaticItem
023989c8: 200300b4 cbz      x0, #0x2398a2c
023989cc: 080040f9 ldr      x8, [x0]
023989d0: 09e541f9 ldr      x9, [x8, #0x3c8]
023989d4: 01e941f9 ldr      x1, [x8, #0x3d0]
023989d8: 20013fd6 blr      x9
023989dc: 080340f9 ldr      x8, [x24]
023989e0: f50300aa mov      x21, x0
023989e4: 09e140b9 ldr      w9, [x8, #0xe0]
023989e8: 69000035 cbnz     w9, #0x23989f4
023989ec: e00308aa mov      x0, x8
023989f0: 8562b097 bl       #0xfb1404
023989f4: e0031faa mov      x0, xzr
023989f8: 0667bf97 bl       #0x1372610 ; Royal.Scenes.Game.Mechanics.Sortings.Sorting$$GetLightballRayItemSorting
023989fc: 217c4092 and      x1, x1, #0xffffffff
02398a00: 820c8052 mov      w2, #0x64
02398a04: e3031faa mov      x3, xzr
02398a08: 1656bf97 bl       #0x136e260 ; Royal.Scenes.Game.Mechanics.Sortings.Sorting$$GetSortingWithOffset
02398a0c: 950800b4 cbz      x21, #0x2398b1c
02398a10: a80240f9 ldr      x8, [x21]
02398a14: e40300aa mov      x4, x0
02398a18: 227c4092 and      x2, x1, #0xffffffff
02398a1c: e00315aa mov      x0, x21
02398a20: 098d5ba9 ldp      x9, x3, [x8, #0x1b8]
02398a24: e10304aa mov      x1, x4
02398a28: 20013fd6 blr      x9
02398a2c: f58e01d0 adrp     x21, #0x5576000
02398a30: a8ae7c39 ldrb     w8, [x21, #0xf2b]
02398a34: c8000035 cbnz     w8, #0x2398a4c
02398a38: 80730190 adrp     x0, #0x5208000
02398a3c: 00c041f9 ldr      x0, [x0, #0x380]
02398a40: 3062b097 bl       #0xfb1300
02398a44: 28008052 mov      w8, #1
02398a48: a8ae3c39 strb     w8, [x21, #0xf2b]
02398a4c: 96730190 adrp     x22, #0x5208000
02398a50: d6c241f9 ldr      x22, [x22, #0x380]
02398a54: c80240f9 ldr      x8, [x22]
02398a58: 085d40f9 ldr      x8, [x8, #0xb8]
02398a5c: 080140f9 ldr      x8, [x8]
02398a60: e80500b4 cbz      x8, #0x2398b1c
02398a64: 081d40f9 ldr      x8, [x8, #0x38]
02398a68: a80500b4 cbz      x8, #0x2398b1c
02398a6c: 000d40f9 ldr      x0, [x8, #0x18]
02398a70: 600500b4 cbz      x0, #0x2398b1c
02398a74: 21008052 mov      w1, #1
02398a78: e2031faa mov      x2, xzr
02398a7c: 37008052 mov      w23, #1
02398a80: 6d160394 bl       #0x245e434 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryCollectDailyLightningBolts
02398a84: a8ae7c39 ldrb     w8, [x21, #0xf2b]
02398a88: a8000035 cbnz     w8, #0x2398a9c
02398a8c: 80730190 adrp     x0, #0x5208000
02398a90: 00c041f9 ldr      x0, [x0, #0x380]
02398a94: 1b62b097 bl       #0xfb1300
02398a98: b7ae3c39 strb     w23, [x21, #0xf2b]
02398a9c: c80240f9 ldr      x8, [x22]
02398aa0: 085d40f9 ldr      x8, [x8, #0xb8]
02398aa4: 080140f9 ldr      x8, [x8]
02398aa8: a80300b4 cbz      x8, #0x2398b1c
02398aac: 081d40f9 ldr      x8, [x8, #0x38]
02398ab0: 680300b4 cbz      x8, #0x2398b1c
02398ab4: 890240f9 ldr      x9, [x20]
02398ab8: 150d40f9 ldr      x21, [x8, #0x18]
02398abc: e00314aa mov      x0, x20
02398ac0: 28bd41f9 ldr      x8, [x9, #0x378]
02398ac4: 21c141f9 ldr      x1, [x9, #0x380]
02398ac8: 00013fd6 blr      x8
02398acc: 950200b4 cbz      x21, #0x2398b1c
02398ad0: e103002a mov      w1, w0
02398ad4: e00315aa mov      x0, x21
02398ad8: e2031faa mov      x2, xzr
02398adc: 5e160394 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
02398ae0: 686640f9 ldr      x8, [x19, #0xc8]
02398ae4: 280100b4 cbz      x8, #0x2398b08
02398ae8: f37b43a9 ldp      x19, x30, [sp, #0x30]
02398aec: f55342a9 ldp      x21, x20, [sp, #0x20]
02398af0: f75b41a9 ldp      x23, x22, [sp, #0x10]
02398af4: e103002a mov      w1, w0
02398af8: e00308aa mov      x0, x8
02398afc: e2031faa mov      x2, xzr
02398b00: f80744f8 ldr      x24, [sp], #0x40
02398b04: 7952c317 b        #0x146d4e8 ; Royal.Scenes.Home.Ui.Dialogs.ClashOfChampions.Scripts.ClashOfChampionsGameplayCollectView$$IncrementScore
02398b08: f37b43a9 ldp      x19, x30, [sp, #0x30]
02398b0c: f55342a9 ldp      x21, x20, [sp, #0x20]
02398b10: f75b41a9 ldp      x23, x22, [sp, #0x10]
02398b14: f80744f8 ldr      x24, [sp], #0x40
02398b18: c0035fd6 ret      
02398b1c: 4362b097 bl       #0xfb1428
02398b20: e00316aa mov      x0, x22
02398b24: 2763b097 bl       #0xfb17c0
