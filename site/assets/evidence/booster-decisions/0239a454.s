# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballPropellerStrategy$$Start
# Linear span; next metadata entry is not a proven CFG boundary.
0239a454: f60f1df8 str      x22, [sp, #-0x30]!
0239a458: f55301a9 stp      x21, x20, [sp, #0x10]
0239a45c: f37b02a9 stp      x19, x30, [sp, #0x20]
0239a460: 368f0190 adrp     x22, #0x557e000
0239a464: c8f26639 ldrb     w8, [x22, #0x9bc]
0239a468: f30302aa mov      x19, x2
0239a46c: f40301aa mov      x20, x1
0239a470: f50300aa mov      x21, x0
0239a474: c8000037 tbnz     w8, #0, #0x239a48c
0239a478: a0740190 adrp     x0, #0x522e000
0239a47c: 008445f9 ldr      x0, [x0, #0xb08]
0239a480: a05bb097 bl       #0xfb1300
0239a484: 28008052 mov      w8, #1
0239a488: c8f22639 strb     w8, [x22, #0x9bc]
0239a48c: 730100b4 cbz      x19, #0x239a4b8
0239a490: a8740190 adrp     x8, #0x522e000
0239a494: 088545f9 ldr      x8, [x8, #0xb08]
0239a498: 6a0240f9 ldr      x10, [x19]
0239a49c: 080140f9 ldr      x8, [x8]
0239a4a0: 4bb14439 ldrb     w11, [x10, #0x12c]
0239a4a4: 09b14439 ldrb     w9, [x8, #0x12c]
0239a4a8: 7f01096b cmp      w11, w9
0239a4ac: e2000054 b.hs     #0x239a4c8
0239a4b0: ea031faa mov      x10, xzr
0239a4b4: 0a000014 b        #0x239a4dc
0239a4b8: e00315aa mov      x0, x21
0239a4bc: e1031faa mov      x1, xzr
0239a4c0: 1f8c0ff8 str      xzr, [x0, #0xf8]!
0239a4c4: 13000014 b        #0x239a510
0239a4c8: 4a6540f9 ldr      x10, [x10, #0xc8]
0239a4cc: 4a0d098b add      x10, x10, x9, lsl #3
0239a4d0: 4a815ff8 ldur     x10, [x10, #-8]
0239a4d4: 5f0108eb cmp      x10, x8
0239a4d8: 6a029f9a csel     x10, x19, xzr, eq
0239a4dc: e00315aa mov      x0, x21
0239a4e0: 0a8c0ff8 str      x10, [x0, #0xf8]!
0239a4e4: 6a0240f9 ldr      x10, [x19]
0239a4e8: 4bb14439 ldrb     w11, [x10, #0x12c]
0239a4ec: 7f01096b cmp      w11, w9
0239a4f0: 62000054 b.hs     #0x239a4fc
0239a4f4: e1031faa mov      x1, xzr
0239a4f8: 06000014 b        #0x239a510
0239a4fc: 4a6540f9 ldr      x10, [x10, #0xc8]
0239a500: 490d098b add      x9, x10, x9, lsl #3
0239a504: 29815ff8 ldur     x9, [x9, #-8]
0239a508: 3f0108eb cmp      x9, x8
0239a50c: 61029f9a csel     x1, x19, xzr, eq
0239a510: 675bb097 bl       #0xfb12ac
0239a514: e00315aa mov      x0, x21
0239a518: e10314aa mov      x1, x20
0239a51c: e20313aa mov      x2, x19
0239a520: f37b42a9 ldp      x19, x30, [sp, #0x20]
0239a524: f55341a9 ldp      x21, x20, [sp, #0x10]
0239a528: f60743f8 ldr      x22, [sp], #0x30
0239a52c: 01000014 b        #0x239a530 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$Start
