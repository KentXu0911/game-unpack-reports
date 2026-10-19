# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballRocketStrategy$$Start
# Linear span; next metadata entry is not a proven CFG boundary.
0239b5b8: f60f1df8 str      x22, [sp, #-0x30]!
0239b5bc: f55301a9 stp      x21, x20, [sp, #0x10]
0239b5c0: f37b02a9 stp      x19, x30, [sp, #0x20]
0239b5c4: 168f01f0 adrp     x22, #0x557e000
0239b5c8: c8fe6639 ldrb     w8, [x22, #0x9bf]
0239b5cc: f30302aa mov      x19, x2
0239b5d0: f40301aa mov      x20, x1
0239b5d4: f50300aa mov      x21, x0
0239b5d8: c8000037 tbnz     w8, #0, #0x239b5f0
0239b5dc: 60710190 adrp     x0, #0x51c7000
0239b5e0: 00f041f9 ldr      x0, [x0, #0x3e0]
0239b5e4: 4757b097 bl       #0xfb1300
0239b5e8: 28008052 mov      w8, #1
0239b5ec: c8fe2639 strb     w8, [x22, #0x9bf]
0239b5f0: 730100b4 cbz      x19, #0x239b61c
0239b5f4: 68710190 adrp     x8, #0x51c7000
0239b5f8: 08f141f9 ldr      x8, [x8, #0x3e0]
0239b5fc: 6a0240f9 ldr      x10, [x19]
0239b600: 080140f9 ldr      x8, [x8]
0239b604: 4bb14439 ldrb     w11, [x10, #0x12c]
0239b608: 09b14439 ldrb     w9, [x8, #0x12c]
0239b60c: 7f01096b cmp      w11, w9
0239b610: e2000054 b.hs     #0x239b62c
0239b614: ea031faa mov      x10, xzr
0239b618: 0a000014 b        #0x239b640
0239b61c: f60315aa mov      x22, x21
0239b620: e1031faa mov      x1, xzr
0239b624: df8e0ff8 str      xzr, [x22, #0xf8]!
0239b628: 13000014 b        #0x239b674
0239b62c: 4a6540f9 ldr      x10, [x10, #0xc8]
0239b630: 4a0d098b add      x10, x10, x9, lsl #3
0239b634: 4a815ff8 ldur     x10, [x10, #-8]
0239b638: 5f0108eb cmp      x10, x8
0239b63c: 6a029f9a csel     x10, x19, xzr, eq
0239b640: f60315aa mov      x22, x21
0239b644: ca8e0ff8 str      x10, [x22, #0xf8]!
0239b648: 6a0240f9 ldr      x10, [x19]
0239b64c: 4bb14439 ldrb     w11, [x10, #0x12c]
0239b650: 7f01096b cmp      w11, w9
0239b654: 62000054 b.hs     #0x239b660
0239b658: e1031faa mov      x1, xzr
0239b65c: 06000014 b        #0x239b674
0239b660: 4a6540f9 ldr      x10, [x10, #0xc8]
0239b664: 490d098b add      x9, x10, x9, lsl #3
0239b668: 29815ff8 ldur     x9, [x9, #-8]
0239b66c: 3f0108eb cmp      x9, x8
0239b670: 61029f9a csel     x1, x19, xzr, eq
0239b674: e00316aa mov      x0, x22
0239b678: 0d57b097 bl       #0xfb12ac
0239b67c: c80240f9 ldr      x8, [x22]
0239b680: 480100b4 cbz      x8, #0x239b6a8
0239b684: 080141b9 ldr      w8, [x8, #0x100]
0239b688: e00315aa mov      x0, x21
0239b68c: e10314aa mov      x1, x20
0239b690: e20313aa mov      x2, x19
0239b694: a80a01b9 str      w8, [x21, #0x108]
0239b698: f37b42a9 ldp      x19, x30, [sp, #0x20]
0239b69c: f55341a9 ldp      x21, x20, [sp, #0x10]
0239b6a0: f60743f8 ldr      x22, [sp], #0x30
0239b6a4: a3fbff17 b        #0x239a530 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$Start
0239b6a8: 6057b097 bl       #0xfb1428
