# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$.ctor
# Next metadata method 0x20eea6c, not a proven function boundary.
020ee810: f75bbda9 stp      x23, x22, [sp, #-0x30]!
020ee814: f55301a9 stp      x21, x20, [sp, #0x10]
020ee818: f37b02a9 stp      x19, x30, [sp, #0x20]
020ee81c: 74a401f0 adrp     x20, #0x557d000
020ee820: 76880190 adrp     x22, #0x51fa000
020ee824: 88fe5439 ldrb     w8, [x20, #0x53f]
020ee828: d65640f9 ldr      x22, [x22, #0xa8]
020ee82c: f30300aa mov      x19, x0
020ee830: 28040037 tbnz     w8, #0, #0x20ee8b4
020ee834: 20860190 adrp     x0, #0x51b2000
020ee838: 00d044f9 ldr      x0, [x0, #0x9a0]
020ee83c: b10abb97 bl       #0xfb1300
020ee840: 008801b0 adrp     x0, #0x51ef000
020ee844: 009041f9 ldr      x0, [x0, #0x320]
020ee848: ae0abb97 bl       #0xfb1300
020ee84c: 808601d0 adrp     x0, #0x51c0000
020ee850: 00dc41f9 ldr      x0, [x0, #0x3b8]
020ee854: ab0abb97 bl       #0xfb1300
020ee858: c0890190 adrp     x0, #0x5226000
020ee85c: 00d444f9 ldr      x0, [x0, #0x9a8]
020ee860: a80abb97 bl       #0xfb1300
020ee864: 40890190 adrp     x0, #0x5216000
020ee868: 00d047f9 ldr      x0, [x0, #0xfa0]
020ee86c: a50abb97 bl       #0xfb1300
020ee870: 60880190 adrp     x0, #0x51fa000
020ee874: 005440f9 ldr      x0, [x0, #0xa8]
020ee878: a20abb97 bl       #0xfb1300
020ee87c: 60870190 adrp     x0, #0x51da000
020ee880: 000845f9 ldr      x0, [x0, #0xa10]
020ee884: 9f0abb97 bl       #0xfb1300
020ee888: 408501b0 adrp     x0, #0x5197000
020ee88c: 00a043f9 ldr      x0, [x0, #0x740]
020ee890: 9c0abb97 bl       #0xfb1300
020ee894: a0860190 adrp     x0, #0x51c2000
020ee898: 002c42f9 ldr      x0, [x0, #0x458]
020ee89c: 990abb97 bl       #0xfb1300
020ee8a0: 808801b0 adrp     x0, #0x51ff000
020ee8a4: 004446f9 ldr      x0, [x0, #0xc88]
020ee8a8: 960abb97 bl       #0xfb1300
020ee8ac: 28008052 mov      w8, #1
020ee8b0: 88fe1439 strb     w8, [x20, #0x53f]
020ee8b4: c00240f9 ldr      x0, [x22]
020ee8b8: d80abb97 bl       #0xfb1418
020ee8bc: 600d00b4 cbz      x0, #0x20eea68
020ee8c0: 088801b0 adrp     x8, #0x51ef000
020ee8c4: 089141f9 ldr      x8, [x8, #0x320]
020ee8c8: 35860190 adrp     x21, #0x51b2000
020ee8cc: b7860190 adrp     x23, #0x51c2000
020ee8d0: f40300aa mov      x20, x0
020ee8d4: 010140f9 ldr      x1, [x8]
020ee8d8: b5d244f9 ldr      x21, [x21, #0x9a0]
020ee8dc: f72e42f9 ldr      x23, [x23, #0x458]
020ee8e0: 70aaf497 bl       #0x1e192a0 ; System.Collections.Generic.List<int>$$.ctor
020ee8e4: e00313aa mov      x0, x19
020ee8e8: 148c08f8 str      x20, [x0, #0x88]!
020ee8ec: e10314aa mov      x1, x20
020ee8f0: 6f0abb97 bl       #0xfb12ac
020ee8f4: a00240f9 ldr      x0, [x21]
020ee8f8: 610c8052 mov      w1, #0x63
020ee8fc: 9d0abb97 bl       #0xfb1370
020ee900: e10300aa mov      x1, x0
020ee904: e00313aa mov      x0, x19
020ee908: 010c0cf8 str      x1, [x0, #0xc0]!
020ee90c: 680abb97 bl       #0xfb12ac
020ee910: e00313aa mov      x0, x19
020ee914: e1031faa mov      x1, xzr
020ee918: 37130694 bl       #0x22735f4 ; System.Object$$.ctor
020ee91c: e00240f9 ldr      x0, [x23]
020ee920: be0abb97 bl       #0xfb1418
020ee924: 200a00b4 cbz      x0, #0x20eea68
020ee928: 488501b0 adrp     x8, #0x5197000
020ee92c: 08a143f9 ldr      x8, [x8, #0x740]
020ee930: 958801b0 adrp     x21, #0x51ff000
020ee934: f40300aa mov      x20, x0
020ee938: 010140f9 ldr      x1, [x8]
020ee93c: b54646f9 ldr      x21, [x21, #0xc88]
020ee940: d4ffd097 bl       #0x152e890 ; System.Collections.Generic.SortedDictionary<int, object>$$.ctor
020ee944: e00313aa mov      x0, x19
020ee948: 148c06f8 str      x20, [x0, #0x68]!
020ee94c: e10314aa mov      x1, x20
020ee950: 570abb97 bl       #0xfb12ac
020ee954: a00240f9 ldr      x0, [x21]
020ee958: b00abb97 bl       #0xfb1418
020ee95c: 600800b4 cbz      x0, #0x20eea68
020ee960: e1031faa mov      x1, xzr
020ee964: f40300aa mov      x20, x0
020ee968: e8d81694 bl       #0x26a4d08 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$.ctor
020ee96c: f50313aa mov      x21, x19
020ee970: b40e07f8 str      x20, [x21, #0x70]!
020ee974: e00315aa mov      x0, x21
020ee978: e10314aa mov      x1, x20
020ee97c: 4c0abb97 bl       #0xfb12ac
020ee980: a10240f9 ldr      x1, [x21]
020ee984: e00313aa mov      x0, x19
020ee988: 010c08f8 str      x1, [x0, #0x80]!
020ee98c: 480abb97 bl       #0xfb12ac
020ee990: c00240f9 ldr      x0, [x22]
020ee994: a10abb97 bl       #0xfb1418
020ee998: 800600b4 cbz      x0, #0x20eea68
020ee99c: 888601d0 adrp     x8, #0x51c0000
020ee9a0: 08dd41f9 ldr      x8, [x8, #0x3b8]
020ee9a4: 75870190 adrp     x21, #0x51da000
020ee9a8: 61018052 mov      w1, #0xb
020ee9ac: f40300aa mov      x20, x0
020ee9b0: 020140f9 ldr      x2, [x8]
020ee9b4: b50a45f9 ldr      x21, [x21, #0xa10]
020ee9b8: 56aaf497 bl       #0x1e19310 ; System.Collections.Generic.List<int>$$.ctor
020ee9bc: e00313aa mov      x0, x19
020ee9c0: 140c01f8 str      x20, [x0, #0x10]!
020ee9c4: e10314aa mov      x1, x20
020ee9c8: 390abb97 bl       #0xfb12ac
020ee9cc: a00240f9 ldr      x0, [x21]
020ee9d0: 920abb97 bl       #0xfb1418
020ee9d4: a00400b4 cbz      x0, #0x20eea68
020ee9d8: 56890190 adrp     x22, #0x5216000
020ee9dc: d6d247f9 ldr      x22, [x22, #0xfa0]
020ee9e0: 61048052 mov      w1, #0x23
020ee9e4: f40300aa mov      x20, x0
020ee9e8: c20240f9 ldr      x2, [x22]
020ee9ec: 76f20c94 bl       #0x242b3c4 ; System.Collections.Generic.List<CellPoint>$$.ctor
020ee9f0: e00313aa mov      x0, x19
020ee9f4: 148c01f8 str      x20, [x0, #0x18]!
020ee9f8: e10314aa mov      x1, x20
020ee9fc: 2c0abb97 bl       #0xfb12ac
020eea00: a00240f9 ldr      x0, [x21]
020eea04: 850abb97 bl       #0xfb1418
020eea08: 000300b4 cbz      x0, #0x20eea68
020eea0c: c20240f9 ldr      x2, [x22]
020eea10: 61048052 mov      w1, #0x23
020eea14: f40300aa mov      x20, x0
020eea18: 6bf20c94 bl       #0x242b3c4 ; System.Collections.Generic.List<CellPoint>$$.ctor
020eea1c: e00313aa mov      x0, x19
020eea20: 140c02f8 str      x20, [x0, #0x20]!
020eea24: e10314aa mov      x1, x20
020eea28: 210abb97 bl       #0xfb12ac
020eea2c: a00240f9 ldr      x0, [x21]
020eea30: 7a0abb97 bl       #0xfb1418
020eea34: a00100b4 cbz      x0, #0x20eea68
020eea38: c8890190 adrp     x8, #0x5226000
020eea3c: 08d544f9 ldr      x8, [x8, #0x9a8]
020eea40: f40300aa mov      x20, x0
020eea44: 010140f9 ldr      x1, [x8]
020eea48: 43f20c94 bl       #0x242b354 ; System.Collections.Generic.List<CellPoint>$$.ctor
020eea4c: 748e02f8 str      x20, [x19, #0x28]!
020eea50: e00313aa mov      x0, x19
020eea54: e10314aa mov      x1, x20
020eea58: f37b42a9 ldp      x19, x30, [sp, #0x20]
020eea5c: f55341a9 ldp      x21, x20, [sp, #0x10]
020eea60: f75bc3a8 ldp      x23, x22, [sp], #0x30
020eea64: 120abb17 b        #0xfb12ac
020eea68: 700abb97 bl       #0xfb1428
