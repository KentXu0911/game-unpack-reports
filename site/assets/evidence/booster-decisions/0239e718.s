# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballTntStrategy$$Start
# Linear span; next metadata entry is not a proven CFG boundary.
0239e718: f60f1df8 str      x22, [sp, #-0x30]!
0239e71c: f55301a9 stp      x21, x20, [sp, #0x10]
0239e720: f37b02a9 stp      x19, x30, [sp, #0x20]
0239e724: 168f0190 adrp     x22, #0x557e000
0239e728: c8ae6739 ldrb     w8, [x22, #0x9eb]
0239e72c: f30302aa mov      x19, x2
0239e730: f40301aa mov      x20, x1
0239e734: f50300aa mov      x21, x0
0239e738: c8000037 tbnz     w8, #0, #0x239e750
0239e73c: 207001f0 adrp     x0, #0x51a5000
0239e740: 006841f9 ldr      x0, [x0, #0x2d0]
0239e744: ef4ab097 bl       #0xfb1300
0239e748: 28008052 mov      w8, #1
0239e74c: c8ae2739 strb     w8, [x22, #0x9eb]
0239e750: 730100b4 cbz      x19, #0x239e77c
0239e754: 287001f0 adrp     x8, #0x51a5000
0239e758: 086941f9 ldr      x8, [x8, #0x2d0]
0239e75c: 6a0240f9 ldr      x10, [x19]
0239e760: 080140f9 ldr      x8, [x8]
0239e764: 4bb14439 ldrb     w11, [x10, #0x12c]
0239e768: 09b14439 ldrb     w9, [x8, #0x12c]
0239e76c: 7f01096b cmp      w11, w9
0239e770: e2000054 b.hs     #0x239e78c
0239e774: ea031faa mov      x10, xzr
0239e778: 0a000014 b        #0x239e7a0
0239e77c: e00315aa mov      x0, x21
0239e780: e1031faa mov      x1, xzr
0239e784: 1f8c0ff8 str      xzr, [x0, #0xf8]!
0239e788: 13000014 b        #0x239e7d4
0239e78c: 4a6540f9 ldr      x10, [x10, #0xc8]
0239e790: 4a0d098b add      x10, x10, x9, lsl #3
0239e794: 4a815ff8 ldur     x10, [x10, #-8]
0239e798: 5f0108eb cmp      x10, x8
0239e79c: 6a029f9a csel     x10, x19, xzr, eq
0239e7a0: e00315aa mov      x0, x21
0239e7a4: 0a8c0ff8 str      x10, [x0, #0xf8]!
0239e7a8: 6a0240f9 ldr      x10, [x19]
0239e7ac: 4bb14439 ldrb     w11, [x10, #0x12c]
0239e7b0: 7f01096b cmp      w11, w9
0239e7b4: 62000054 b.hs     #0x239e7c0
0239e7b8: e1031faa mov      x1, xzr
0239e7bc: 06000014 b        #0x239e7d4
0239e7c0: 4a6540f9 ldr      x10, [x10, #0xc8]
0239e7c4: 490d098b add      x9, x10, x9, lsl #3
0239e7c8: 29815ff8 ldur     x9, [x9, #-8]
0239e7cc: 3f0108eb cmp      x9, x8
0239e7d0: 61029f9a csel     x1, x19, xzr, eq
0239e7d4: b64ab097 bl       #0xfb12ac
0239e7d8: e00315aa mov      x0, x21
0239e7dc: e10314aa mov      x1, x20
0239e7e0: e20313aa mov      x2, x19
0239e7e4: f37b42a9 ldp      x19, x30, [sp, #0x20]
0239e7e8: f55341a9 ldp      x21, x20, [sp, #0x10]
0239e7ec: f60743f8 ldr      x22, [sp], #0x30
0239e7f0: 50efff17 b        #0x239a530 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$Start
