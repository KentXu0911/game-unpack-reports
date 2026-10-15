# Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$ExplodeMatchGroups
# Next metadata method 0x2a38f78, not a proven function boundary.
02a385fc: fc6fbaa9 stp      x28, x27, [sp, #-0x60]!
02a38600: fa6701a9 stp      x26, x25, [sp, #0x10]
02a38604: f85f02a9 stp      x24, x23, [sp, #0x20]
02a38608: f65703a9 stp      x22, x21, [sp, #0x30]
02a3860c: f44f04a9 stp      x20, x19, [sp, #0x40]
02a38610: fd7b05a9 stp      x29, x30, [sp, #0x50]
02a38614: ff8317d1 sub      sp, sp, #0x5e0
02a38618: 545a01b0 adrp     x20, #0x5581000
02a3861c: 88027c39 ldrb     w8, [x20, #0xf00]
02a38620: f60302aa mov      x22, x2
02a38624: f50301aa mov      x21, x1
02a38628: f30300aa mov      x19, x0
02a3862c: fd630c91 add      x29, sp, #0x318
02a38630: c8030037 tbnz     w8, #0, #0x2a386a8
02a38634: 403f01d0 adrp     x0, #0x5222000
02a38638: 00ec42f9 ldr      x0, [x0, #0x5d8]
02a3863c: 31e39597 bl       #0xfb1300
02a38640: a03a01f0 adrp     x0, #0x518f000
02a38644: 006042f9 ldr      x0, [x0, #0x4c0]
02a38648: 2ee39597 bl       #0xfb1300
02a3864c: a03f0190 adrp     x0, #0x522c000
02a38650: 00f846f9 ldr      x0, [x0, #0xdf0]
02a38654: 2be39597 bl       #0xfb1300
02a38658: a03e0190 adrp     x0, #0x520c000
02a3865c: 00dc47f9 ldr      x0, [x0, #0xfb8]
02a38660: 28e39597 bl       #0xfb1300
02a38664: 203d01f0 adrp     x0, #0x51df000
02a38668: 00d040f9 ldr      x0, [x0, #0x1a0]
02a3866c: 25e39597 bl       #0xfb1300
02a38670: c03f01b0 adrp     x0, #0x5231000
02a38674: 003841f9 ldr      x0, [x0, #0x270]
02a38678: 22e39597 bl       #0xfb1300
02a3867c: c03c01d0 adrp     x0, #0x51d2000
02a38680: 009440f9 ldr      x0, [x0, #0x128]
02a38684: 1fe39597 bl       #0xfb1300
02a38688: 403f01b0 adrp     x0, #0x5221000
02a3868c: 006046f9 ldr      x0, [x0, #0xcc0]
02a38690: 1ce39597 bl       #0xfb1300
02a38694: 403e01f0 adrp     x0, #0x5203000
02a38698: 001045f9 ldr      x0, [x0, #0xa20]
02a3869c: 19e39597 bl       #0xfb1300
02a386a0: 28008052 mov      w8, #1
02a386a4: 88023c39 strb     w8, [x20, #0xf00]
02a386a8: e0231591 add      x0, sp, #0x548
02a386ac: 02138052 mov      w2, #0x98
02a386b0: e1031f2a mov      w1, wzr
02a386b4: d72a8a97 bl       #0xcc3210
02a386b8: e0c31291 add      x0, sp, #0x4b0
02a386bc: 02138052 mov      w2, #0x98
02a386c0: e1031f2a mov      w1, wzr
02a386c4: d32a8a97 bl       #0xcc3210
02a386c8: e0631091 add      x0, sp, #0x418
02a386cc: 02138052 mov      w2, #0x98
02a386d0: e1031f2a mov      w1, wzr
02a386d4: cf2a8a97 bl       #0xcc3210
02a386d8: 00e4006f movi     v0.2d, #0000000000000000
02a386dc: a0838e3c stur     q0, [x29, #0xe8]
02a386e0: a0838d3c stur     q0, [x29, #0xd8]
02a386e4: a0838c3c stur     q0, [x29, #0xc8]
02a386e8: a0838b3c stur     q0, [x29, #0xb8]
02a386ec: a0838a3c stur     q0, [x29, #0xa8]
02a386f0: a083893c stur     q0, [x29, #0x98]
02a386f4: 683a40f9 ldr      x8, [x19, #0x70]
02a386f8: 684300b4 cbz      x8, #0x2a38f64
02a386fc: 601640f9 ldr      x0, [x19, #0x28]
02a38700: 204300b4 cbz      x0, #0x2a38f64
02a38704: f50b00f9 str      x21, [sp, #0x10]
02a38708: 010d40f9 ldr      x1, [x8, #0x18]
02a3870c: b43e0190 adrp     x20, #0x520c000
02a38710: 94de47f9 ldr      x20, [x20, #0xfb8]
02a38714: 62008052 mov      w2, #3
02a38718: e3031faa mov      x3, xzr
02a3871c: e107a597 bl       #0x137a6a0 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$FindExtensiveMatchesInArea
02a38720: 880240f9 ldr      x8, [x20]
02a38724: f70300aa mov      x23, x0
02a38728: 09e140b9 ldr      w9, [x8, #0xe0]
02a3872c: 69000035 cbnz     w9, #0x2a38738
02a38730: e00308aa mov      x0, x8
02a38734: 34e39597 bl       #0xfb1404
02a38738: f60700f9 str      x22, [sp, #8]
02a3873c: 365a0190 adrp     x22, #0x557c000
02a38740: c8e25439 ldrb     w8, [x22, #0x538]
02a38744: c8000035 cbnz     w8, #0x2a3875c
02a38748: a03e0190 adrp     x0, #0x520c000
02a3874c: 00dc47f9 ldr      x0, [x0, #0xfb8]
02a38750: ece29597 bl       #0xfb1300
02a38754: 28008052 mov      w8, #1
02a38758: c8e21439 strb     w8, [x22, #0x538]
02a3875c: 980240f9 ldr      x24, [x20]
02a38760: 08e340b9 ldr      w8, [x24, #0xe0]
02a38764: e8000034 cbz      w8, #0x2a38780
02a38768: 085f40f9 ldr      x8, [x24, #0xb8]
02a3876c: e0231591 add      x0, sp, #0x548
02a38770: 02138052 mov      w2, #0x98
02a38774: 01210091 add      x1, x8, #8
02a38778: e6288a97 bl       #0xcc2b10
02a3877c: 10000014 b        #0x2a387bc
02a38780: e00318aa mov      x0, x24
02a38784: 20e39597 bl       #0xfb1404
02a38788: 980240f9 ldr      x24, [x20]
02a3878c: d5e25439 ldrb     w21, [x22, #0x538]
02a38790: e0231591 add      x0, sp, #0x548
02a38794: 02138052 mov      w2, #0x98
02a38798: 085f40f9 ldr      x8, [x24, #0xb8]
02a3879c: 01210091 add      x1, x8, #8
02a387a0: dc288a97 bl       #0xcc2b10
02a387a4: d5000035 cbnz     w21, #0x2a387bc
02a387a8: e00314aa mov      x0, x20
02a387ac: d5e29597 bl       #0xfb1300
02a387b0: 980240f9 ldr      x24, [x20]
02a387b4: 28008052 mov      w8, #1
02a387b8: c8e21439 strb     w8, [x22, #0x538]
02a387bc: 08e340b9 ldr      w8, [x24, #0xe0]
02a387c0: 88000035 cbnz     w8, #0x2a387d0
02a387c4: e00318aa mov      x0, x24
02a387c8: 0fe39597 bl       #0xfb1404
02a387cc: 980240f9 ldr      x24, [x20]
02a387d0: 085f40f9 ldr      x8, [x24, #0xb8]
02a387d4: e0c31291 add      x0, sp, #0x4b0
02a387d8: 02138052 mov      w2, #0x98
02a387dc: fac31291 add      x26, sp, #0x4b0
02a387e0: 01210091 add      x1, x8, #8
02a387e4: cb288a97 bl       #0xcc2b10
02a387e8: f73b00b4 cbz      x23, #0x2a38f64
02a387ec: e81a40b9 ldr      w8, [x23, #0x18]
02a387f0: 1f050071 cmp      w8, #1
02a387f4: 6b0c0054 b.lt     #0x2a38980
02a387f8: b53f0190 adrp     x21, #0x522c000
02a387fc: 3c3d01f0 adrp     x28, #0x51df000
02a38800: b5fa46f9 ldr      x21, [x21, #0xdf0]
02a38804: 9cd340f9 ldr      x28, [x28, #0x1a0]
02a38808: e8231591 add      x8, sp, #0x548
02a3880c: f8031f2a mov      w24, wzr
02a38810: 19210291 add      x25, x8, #0x88
02a38814: 5a230291 add      x26, x26, #0x88
02a38818: a20240f9 ldr      x2, [x21]
02a3881c: e8630c91 add      x8, sp, #0x318
02a38820: e00317aa mov      x0, x23
02a38824: e103182a mov      w1, w24
02a38828: 725c0f94 bl       #0x2e0f9f0 ; System.Collections.Generic.List<MatchGroup>$$get_Item
02a3882c: e0631091 add      x0, sp, #0x418
02a38830: e1630c91 add      x1, sp, #0x318
02a38834: 02138052 mov      w2, #0x98
02a38838: 66258a97 bl       #0xcc1dd0
02a3883c: 603a40f9 ldr      x0, [x19, #0x70]
02a38840: 203900b4 cbz      x0, #0x2a38f64
02a38844: e1031faa mov      x1, xzr
02a38848: 86400294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a3884c: 400400b4 cbz      x0, #0x2a388d4
02a38850: 090040f9 ldr      x9, [x0]
02a38854: 880340f9 ldr      x8, [x28]
02a38858: fb0300aa mov      x27, x0
02a3885c: 2bb14439 ldrb     w11, [x9, #0x12c]
02a38860: 0ab14439 ldrb     w10, [x8, #0x12c]
02a38864: 7f010a6b cmp      w11, w10
02a38868: 63030054 b.lo     #0x2a388d4
02a3886c: 296540f9 ldr      x9, [x9, #0xc8]
02a38870: 290d0a8b add      x9, x9, x10, lsl #3
02a38874: 29815ff8 ldur     x9, [x9, #-8]
02a38878: 3f0108eb cmp      x9, x8
02a3887c: c1020054 b.ne     #0x2a388d4
02a38880: 800240f9 ldr      x0, [x20]
02a38884: 08e040b9 ldr      w8, [x0, #0xe0]
02a38888: 48000035 cbnz     w8, #0x2a38890
02a3888c: dee29597 bl       #0xfb1404
02a38890: e0631091 add      x0, sp, #0x418
02a38894: e1031baa mov      x1, x27
02a38898: e2031faa mov      x2, xzr
02a3889c: c3ffa497 bl       #0x13787a8 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsItem
02a388a0: a0010036 tbz      w0, #0, #0x2a388d4
02a388a4: e0231591 add      x0, sp, #0x548
02a388a8: e1631091 add      x1, sp, #0x418
02a388ac: 02138052 mov      w2, #0x98
02a388b0: 48258a97 bl       #0xcc1dd0
02a388b4: 800240f9 ldr      x0, [x20]
02a388b8: 7b3a40f9 ldr      x27, [x19, #0x70]
02a388bc: 08e040b9 ldr      w8, [x0, #0xe0]
02a388c0: 48000035 cbnz     w8, #0x2a388c8
02a388c4: d0e29597 bl       #0xfb1404
02a388c8: fbeb02f9 str      x27, [sp, #0x5d0]
02a388cc: e00319aa mov      x0, x25
02a388d0: 26000014 b        #0x2a38968
02a388d4: 603640f9 ldr      x0, [x19, #0x68]
02a388d8: 603400b4 cbz      x0, #0x2a38f64
02a388dc: e1031faa mov      x1, xzr
02a388e0: 60400294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a388e4: 600400b4 cbz      x0, #0x2a38970
02a388e8: 090040f9 ldr      x9, [x0]
02a388ec: 880340f9 ldr      x8, [x28]
02a388f0: fb0300aa mov      x27, x0
02a388f4: 2bb14439 ldrb     w11, [x9, #0x12c]
02a388f8: 0ab14439 ldrb     w10, [x8, #0x12c]
02a388fc: 7f010a6b cmp      w11, w10
02a38900: 83030054 b.lo     #0x2a38970
02a38904: 296540f9 ldr      x9, [x9, #0xc8]
02a38908: 290d0a8b add      x9, x9, x10, lsl #3
02a3890c: 29815ff8 ldur     x9, [x9, #-8]
02a38910: 3f0108eb cmp      x9, x8
02a38914: e1020054 b.ne     #0x2a38970
02a38918: 800240f9 ldr      x0, [x20]
02a3891c: 08e040b9 ldr      w8, [x0, #0xe0]
02a38920: 48000035 cbnz     w8, #0x2a38928
02a38924: b8e29597 bl       #0xfb1404
02a38928: e0631091 add      x0, sp, #0x418
02a3892c: e1031baa mov      x1, x27
02a38930: e2031faa mov      x2, xzr
02a38934: 9dffa497 bl       #0x13787a8 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsItem
02a38938: c0010036 tbz      w0, #0, #0x2a38970
02a3893c: e0c31291 add      x0, sp, #0x4b0
02a38940: e1631091 add      x1, sp, #0x418
02a38944: 02138052 mov      w2, #0x98
02a38948: 22258a97 bl       #0xcc1dd0
02a3894c: 800240f9 ldr      x0, [x20]
02a38950: 7b3640f9 ldr      x27, [x19, #0x68]
02a38954: 08e040b9 ldr      w8, [x0, #0xe0]
02a38958: 48000035 cbnz     w8, #0x2a38960
02a3895c: aae29597 bl       #0xfb1404
02a38960: e0031aaa mov      x0, x26
02a38964: fb9f02f9 str      x27, [sp, #0x538]
02a38968: e1031baa mov      x1, x27
02a3896c: 50e29597 bl       #0xfb12ac
02a38970: e81a40b9 ldr      w8, [x23, #0x18]
02a38974: 18070011 add      w24, w24, #1
02a38978: 1f03086b cmp      w24, w8
02a3897c: ebf4ff54 b.lt     #0x2a38818
02a38980: db3c01d0 adrp     x27, #0x51d2000
02a38984: 583f01d0 adrp     x24, #0x5222000
02a38988: 593e01f0 adrp     x25, #0x5203000
02a3898c: 682a4439 ldrb     w8, [x19, #0x10a]
02a38990: 7b9740f9 ldr      x27, [x27, #0x128]
02a38994: 18ef42f9 ldr      x24, [x24, #0x5d8]
02a38998: 391345f9 ldr      x25, [x25, #0xa20]
02a3899c: fa030691 add      x26, sp, #0x180
02a389a0: fc0316aa mov      x28, x22
02a389a4: a8160034 cbz      w8, #0x2a38c78
02a389a8: 800240f9 ldr      x0, [x20]
02a389ac: 77e20191 add      x23, x19, #0x78
02a389b0: 08e040b9 ldr      w8, [x0, #0xe0]
02a389b4: 48000035 cbnz     w8, #0x2a389bc
02a389b8: 93e29597 bl       #0xfb1404
02a389bc: e00317aa mov      x0, x23
02a389c0: e1031faa mov      x1, xzr
02a389c4: c200a597 bl       #0x1378ccc ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$UnFreezeCells
02a389c8: e80b5539 ldrb     w8, [sp, #0x542]
02a389cc: a8090036 tbz      w8, #0, #0x2a38b00
02a389d0: 800240f9 ldr      x0, [x20]
02a389d4: 08e040b9 ldr      w8, [x0, #0xe0]
02a389d8: 48000035 cbnz     w8, #0x2a389e0
02a389dc: 8ae29597 bl       #0xfb1404
02a389e0: e8b344b9 ldr      w8, [sp, #0x4b0]
02a389e4: e90240b9 ldr      w9, [x23]
02a389e8: 1f01096b cmp      w8, w9
02a389ec: a0080054 b.eq     #0x2a38b00
02a389f0: c83f01b0 adrp     x8, #0x5231000
02a389f4: 083941f9 ldr      x8, [x8, #0x270]
02a389f8: 41008052 mov      w1, #2
02a389fc: f60318aa mov      x22, x24
02a38a00: f50319aa mov      x21, x25
02a38a04: 000140f9 ldr      x0, [x8]
02a38a08: 5ae29597 bl       #0xfb1370
02a38a0c: 880240f9 ldr      x8, [x20]
02a38a10: f80300aa mov      x24, x0
02a38a14: 09e140b9 ldr      w9, [x8, #0xe0]
02a38a18: 69000035 cbnz     w9, #0x2a38a24
02a38a1c: e00308aa mov      x0, x8
02a38a20: 79e29597 bl       #0xfb1404
02a38a24: e80240b9 ldr      w8, [x23]
02a38a28: 600340f9 ldr      x0, [x27]
02a38a2c: e1630c91 add      x1, sp, #0x318
02a38a30: e81b03b9 str      w8, [sp, #0x318]
02a38a34: 76e29597 bl       #0xfb140c
02a38a38: 782900b4 cbz      x24, #0x2a38f64
02a38a3c: f90300aa mov      x25, x0
02a38a40: c00000b4 cbz      x0, #0x2a38a58
02a38a44: 080340f9 ldr      x8, [x24]
02a38a48: e00319aa mov      x0, x25
02a38a4c: 012140f9 ldr      x1, [x8, #0x40]
02a38a50: 6ee29597 bl       #0xfb1408
02a38a54: c02800b4 cbz      x0, #0x2a38f6c
02a38a58: 081b40b9 ldr      w8, [x24, #0x18]
02a38a5c: 68280034 cbz      w8, #0x2a38f68
02a38a60: e00318aa mov      x0, x24
02a38a64: 190c02f8 str      x25, [x0, #0x20]!
02a38a68: e10319aa mov      x1, x25
02a38a6c: 10e29597 bl       #0xfb12ac
02a38a70: e8b344b9 ldr      w8, [sp, #0x4b0]
02a38a74: 600340f9 ldr      x0, [x27]
02a38a78: e1430991 add      x1, sp, #0x250
02a38a7c: e85302b9 str      w8, [sp, #0x250]
02a38a80: 63e29597 bl       #0xfb140c
02a38a84: f90300aa mov      x25, x0
02a38a88: c00000b4 cbz      x0, #0x2a38aa0
02a38a8c: 080340f9 ldr      x8, [x24]
02a38a90: e00319aa mov      x0, x25
02a38a94: 012140f9 ldr      x1, [x8, #0x40]
02a38a98: 5ce29597 bl       #0xfb1408
02a38a9c: 802600b4 cbz      x0, #0x2a38f6c
02a38aa0: 081b40b9 ldr      w8, [x24, #0x18]
02a38aa4: 1f050071 cmp      w8, #1
02a38aa8: 09260054 b.ls     #0x2a38f68
02a38aac: e00318aa mov      x0, x24
02a38ab0: 198c02f8 str      x25, [x0, #0x28]!
02a38ab4: e10319aa mov      x1, x25
02a38ab8: fde19597 bl       #0xfb12ac
02a38abc: 483f01b0 adrp     x8, #0x5221000
02a38ac0: 086146f9 ldr      x8, [x8, #0xcc0]
02a38ac4: 61018052 mov      w1, #0xb
02a38ac8: e00313aa mov      x0, x19
02a38acc: e30318aa mov      x3, x24
02a38ad0: 020140f9 ldr      x2, [x8]
02a38ad4: e4031faa mov      x4, xzr
02a38ad8: 8921f797 bl       #0x28010fc ; Royal.Infrastructure.Services.Logs.Log$$Error
02a38adc: e1c31291 add      x1, sp, #0x4b0
02a38ae0: 02138052 mov      w2, #0x98
02a38ae4: e00317aa mov      x0, x23
02a38ae8: ba248a97 bl       #0xcc1dd0
02a38aec: 60220291 add      x0, x19, #0x88
02a38af0: e1031faa mov      x1, xzr
02a38af4: eee19597 bl       #0xfb12ac
02a38af8: f90315aa mov      x25, x21
02a38afc: f80316aa mov      x24, x22
02a38b00: e0030a91 add      x0, sp, #0x280
02a38b04: 02138052 mov      w2, #0x98
02a38b08: e10317aa mov      x1, x23
02a38b0c: b1248a97 bl       #0xcc1dd0
02a38b10: e10740f9 ldr      x1, [sp, #8]
02a38b14: e2030a91 add      x2, sp, #0x280
02a38b18: 980c0094 bl       #0x2a3bd78 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$ShouldExplodeMatchGroup
02a38b1c: e0070036 tbz      w0, #0, #0x2a38c18
02a38b20: e8630c91 add      x8, sp, #0x318
02a38b24: 40008052 mov      w0, #2
02a38b28: e1031faa mov      x1, xzr
02a38b2c: 5f040c94 bl       #0x2d39ca8 ; Royal.Scenes.Game.Mechanics.Explode.Exploder$$Next
02a38b30: a083c03c ldur     q0, [x29, #8]
02a38b34: a183c13c ldur     q1, [x29, #0x18]
02a38b38: a283c23c ldur     q2, [x29, #0x28]
02a38b3c: a0838c3c stur     q0, [x29, #0xc8]
02a38b40: a1838d3c stur     q1, [x29, #0xd8]
02a38b44: a2838e3c stur     q2, [x29, #0xe8]
02a38b48: 683640f9 ldr      x8, [x19, #0x68]
02a38b4c: c82000b4 cbz      x8, #0x2a38f64
02a38b50: 150d40f9 ldr      x21, [x8, #0x18]
02a38b54: 761640f9 ldr      x22, [x19, #0x28]
02a38b58: e0630c91 add      x0, sp, #0x318
02a38b5c: 02138052 mov      w2, #0x98
02a38b60: e10317aa mov      x1, x23
02a38b64: 9b248a97 bl       #0xcc1dd0
02a38b68: a083cc3c ldur     q0, [x29, #0xc8]
02a38b6c: a183cd3c ldur     q1, [x29, #0xd8]
02a38b70: a283ce3c ldur     q2, [x29, #0xe8]
02a38b74: 408706ad stp      q0, q1, [x26, #0xd0]
02a38b78: 423f803d str      q2, [x26, #0xf0]
02a38b7c: 561f00b4 cbz      x22, #0x2a38f64
02a38b80: e0e30691 add      x0, sp, #0x1b8
02a38b84: e1630c91 add      x1, sp, #0x318
02a38b88: 02138052 mov      w2, #0x98
02a38b8c: 91248a97 bl       #0xcc1dd0
02a38b90: 408746ad ldp      q0, q1, [x26, #0xd0]
02a38b94: 423fc03d ldr      q2, [x26, #0xf0]
02a38b98: e1e30691 add      x1, sp, #0x1b8
02a38b9c: e2030691 add      x2, sp, #0x180
02a38ba0: e00316aa mov      x0, x22
02a38ba4: e3031f2a mov      w3, wzr
02a38ba8: e4031faa mov      x4, xzr
02a38bac: f5c300f9 str      x21, [sp, #0x180]
02a38bb0: 4083803c stur     q0, [x26, #8]
02a38bb4: 4183813c stur     q1, [x26, #0x18]
02a38bb8: 4283823c stur     q2, [x26, #0x28]
02a38bbc: 620ea597 bl       #0x137c544 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$ExplodeMatchGroup
02a38bc0: c0020037 tbnz     w0, #0, #0x2a38c18
02a38bc4: 150340f9 ldr      x21, [x24]
02a38bc8: a81e40f9 ldr      x8, [x21, #0x38]
02a38bcc: 000140f9 ldr      x0, [x8]
02a38bd0: 08c84439 ldrb     w8, [x0, #0x132]
02a38bd4: 48000037 tbnz     w8, #0, #0x2a38bdc
02a38bd8: 03219597 bl       #0xf80fe4
02a38bdc: 08e040b9 ldr      w8, [x0, #0xe0]
02a38be0: 48000035 cbnz     w8, #0x2a38be8
02a38be4: 08e29597 bl       #0xfb1404
02a38be8: a81e40f9 ldr      x8, [x21, #0x38]
02a38bec: 000140f9 ldr      x0, [x8]
02a38bf0: 08c84439 ldrb     w8, [x0, #0x132]
02a38bf4: 48000037 tbnz     w8, #0, #0x2a38bfc
02a38bf8: fb209597 bl       #0xf80fe4
02a38bfc: 085c40f9 ldr      x8, [x0, #0xb8]
02a38c00: 220340f9 ldr      x2, [x25]
02a38c04: 61018052 mov      w1, #0xb
02a38c08: e00313aa mov      x0, x19
02a38c0c: 030140f9 ldr      x3, [x8]
02a38c10: e4031faa mov      x4, xzr
02a38c14: 3a21f797 bl       #0x28010fc ; Royal.Infrastructure.Services.Logs.Log$$Error
02a38c18: 800240f9 ldr      x0, [x20]
02a38c1c: 08e040b9 ldr      w8, [x0, #0xe0]
02a38c20: 48000035 cbnz     w8, #0x2a38c28
02a38c24: f8e19597 bl       #0xfb1404
02a38c28: 88e35439 ldrb     w8, [x28, #0x538]
02a38c2c: c8000035 cbnz     w8, #0x2a38c44
02a38c30: a03e0190 adrp     x0, #0x520c000
02a38c34: 00dc47f9 ldr      x0, [x0, #0xfb8]
02a38c38: b2e19597 bl       #0xfb1300
02a38c3c: 28008052 mov      w8, #1
02a38c40: 88e31439 strb     w8, [x28, #0x538]
02a38c44: 800240f9 ldr      x0, [x20]
02a38c48: 08e040b9 ldr      w8, [x0, #0xe0]
02a38c4c: 68000035 cbnz     w8, #0x2a38c58
02a38c50: ede19597 bl       #0xfb1404
02a38c54: 800240f9 ldr      x0, [x20]
02a38c58: 085c40f9 ldr      x8, [x0, #0xb8]
02a38c5c: 02138052 mov      w2, #0x98
02a38c60: e00317aa mov      x0, x23
02a38c64: 01210091 add      x1, x8, #8
02a38c68: aa278a97 bl       #0xcc2b10
02a38c6c: 60220291 add      x0, x19, #0x88
02a38c70: e1031faa mov      x1, xzr
02a38c74: 8ee19597 bl       #0xfb12ac
02a38c78: 688a4639 ldrb     w8, [x19, #0x1a2]
02a38c7c: 48160034 cbz      w8, #0x2a38f44
02a38c80: 800240f9 ldr      x0, [x20]
02a38c84: 76420491 add      x22, x19, #0x110
02a38c88: 08e040b9 ldr      w8, [x0, #0xe0]
02a38c8c: 48000035 cbnz     w8, #0x2a38c94
02a38c90: dde19597 bl       #0xfb1404
02a38c94: e00316aa mov      x0, x22
02a38c98: e1031faa mov      x1, xzr
02a38c9c: 0c00a597 bl       #0x1378ccc ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$UnFreezeCells
02a38ca0: e86b5739 ldrb     w8, [sp, #0x5da]
02a38ca4: 68090036 tbz      w8, #0, #0x2a38dd0
02a38ca8: 800240f9 ldr      x0, [x20]
02a38cac: 08e040b9 ldr      w8, [x0, #0xe0]
02a38cb0: 48000035 cbnz     w8, #0x2a38cb8
02a38cb4: d4e19597 bl       #0xfb1404
02a38cb8: e84b45b9 ldr      w8, [sp, #0x548]
02a38cbc: c90240b9 ldr      w9, [x22]
02a38cc0: 1f01096b cmp      w8, w9
02a38cc4: 60080054 b.eq     #0x2a38dd0
02a38cc8: c83f01b0 adrp     x8, #0x5231000
02a38ccc: 083941f9 ldr      x8, [x8, #0x270]
02a38cd0: 41008052 mov      w1, #2
02a38cd4: f50318aa mov      x21, x24
02a38cd8: 000140f9 ldr      x0, [x8]
02a38cdc: a5e19597 bl       #0xfb1370
02a38ce0: 880240f9 ldr      x8, [x20]
02a38ce4: f70300aa mov      x23, x0
02a38ce8: 09e140b9 ldr      w9, [x8, #0xe0]
02a38cec: 69000035 cbnz     w9, #0x2a38cf8
02a38cf0: e00308aa mov      x0, x8
02a38cf4: c4e19597 bl       #0xfb1404
02a38cf8: c80240b9 ldr      w8, [x22]
02a38cfc: 600340f9 ldr      x0, [x27]
02a38d00: e1630c91 add      x1, sp, #0x318
02a38d04: e81b03b9 str      w8, [sp, #0x318]
02a38d08: c1e19597 bl       #0xfb140c
02a38d0c: d71200b4 cbz      x23, #0x2a38f64
02a38d10: f80300aa mov      x24, x0
02a38d14: c00000b4 cbz      x0, #0x2a38d2c
02a38d18: e80240f9 ldr      x8, [x23]
02a38d1c: e00318aa mov      x0, x24
02a38d20: 012140f9 ldr      x1, [x8, #0x40]
02a38d24: b9e19597 bl       #0xfb1408
02a38d28: 201200b4 cbz      x0, #0x2a38f6c
02a38d2c: e81a40b9 ldr      w8, [x23, #0x18]
02a38d30: c8110034 cbz      w8, #0x2a38f68
02a38d34: e00317aa mov      x0, x23
02a38d38: 180c02f8 str      x24, [x0, #0x20]!
02a38d3c: e10318aa mov      x1, x24
02a38d40: 5be19597 bl       #0xfb12ac
02a38d44: e84b45b9 ldr      w8, [sp, #0x548]
02a38d48: 600340f9 ldr      x0, [x27]
02a38d4c: e1430991 add      x1, sp, #0x250
02a38d50: e85302b9 str      w8, [sp, #0x250]
02a38d54: aee19597 bl       #0xfb140c
02a38d58: f80300aa mov      x24, x0
02a38d5c: c00000b4 cbz      x0, #0x2a38d74
02a38d60: e80240f9 ldr      x8, [x23]
02a38d64: e00318aa mov      x0, x24
02a38d68: 012140f9 ldr      x1, [x8, #0x40]
02a38d6c: a7e19597 bl       #0xfb1408
02a38d70: e00f00b4 cbz      x0, #0x2a38f6c
02a38d74: e81a40b9 ldr      w8, [x23, #0x18]
02a38d78: 1f050071 cmp      w8, #1
02a38d7c: 690f0054 b.ls     #0x2a38f68
02a38d80: e00317aa mov      x0, x23
02a38d84: 188c02f8 str      x24, [x0, #0x28]!
02a38d88: e10318aa mov      x1, x24
02a38d8c: 48e19597 bl       #0xfb12ac
02a38d90: 483f01b0 adrp     x8, #0x5221000
02a38d94: 086146f9 ldr      x8, [x8, #0xcc0]
02a38d98: 61018052 mov      w1, #0xb
02a38d9c: e00313aa mov      x0, x19
02a38da0: e30317aa mov      x3, x23
02a38da4: 020140f9 ldr      x2, [x8]
02a38da8: e4031faa mov      x4, xzr
02a38dac: d420f797 bl       #0x28010fc ; Royal.Infrastructure.Services.Logs.Log$$Error
02a38db0: e1231591 add      x1, sp, #0x548
02a38db4: 02138052 mov      w2, #0x98
02a38db8: e00316aa mov      x0, x22
02a38dbc: 05248a97 bl       #0xcc1dd0
02a38dc0: 60820491 add      x0, x19, #0x120
02a38dc4: e1031faa mov      x1, xzr
02a38dc8: 39e19597 bl       #0xfb12ac
02a38dcc: f80315aa mov      x24, x21
02a38dd0: e0a30391 add      x0, sp, #0xe8
02a38dd4: 02138052 mov      w2, #0x98
02a38dd8: e10316aa mov      x1, x22
02a38ddc: fd238a97 bl       #0xcc1dd0
02a38de0: e10b40f9 ldr      x1, [sp, #0x10]
02a38de4: e2a30391 add      x2, sp, #0xe8
02a38de8: e40b0094 bl       #0x2a3bd78 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$ShouldExplodeMatchGroup
02a38dec: c0070036 tbz      w0, #0, #0x2a38ee4
02a38df0: e8630c91 add      x8, sp, #0x318
02a38df4: 40008052 mov      w0, #2
02a38df8: e1031faa mov      x1, xzr
02a38dfc: ab030c94 bl       #0x2d39ca8 ; Royal.Scenes.Game.Mechanics.Explode.Exploder$$Next
02a38e00: a083c03c ldur     q0, [x29, #8]
02a38e04: a183c13c ldur     q1, [x29, #0x18]
02a38e08: a283c23c ldur     q2, [x29, #0x28]
02a38e0c: a083893c stur     q0, [x29, #0x98]
02a38e10: a1838a3c stur     q1, [x29, #0xa8]
02a38e14: a2838b3c stur     q2, [x29, #0xb8]
02a38e18: 683a40f9 ldr      x8, [x19, #0x70]
02a38e1c: 480a00b4 cbz      x8, #0x2a38f64
02a38e20: 170d40f9 ldr      x23, [x8, #0x18]
02a38e24: 751640f9 ldr      x21, [x19, #0x28]
02a38e28: e0630c91 add      x0, sp, #0x318
02a38e2c: 02138052 mov      w2, #0x98
02a38e30: e10316aa mov      x1, x22
02a38e34: e7238a97 bl       #0xcc1dd0
02a38e38: a083c93c ldur     q0, [x29, #0x98]
02a38e3c: a183ca3c ldur     q1, [x29, #0xa8]
02a38e40: a283cb3c ldur     q2, [x29, #0xb8]
02a38e44: 408706ad stp      q0, q1, [x26, #0xd0]
02a38e48: 423f803d str      q2, [x26, #0xf0]
02a38e4c: d50800b4 cbz      x21, #0x2a38f64
02a38e50: e0430191 add      x0, sp, #0x50
02a38e54: e1630c91 add      x1, sp, #0x318
02a38e58: 02138052 mov      w2, #0x98
02a38e5c: dd238a97 bl       #0xcc1dd0
02a38e60: 408746ad ldp      q0, q1, [x26, #0xd0]
02a38e64: 423fc03d ldr      q2, [x26, #0xf0]
02a38e68: e1430191 add      x1, sp, #0x50
02a38e6c: e2630091 add      x2, sp, #0x18
02a38e70: e00315aa mov      x0, x21
02a38e74: e3031f2a mov      w3, wzr
02a38e78: e4031faa mov      x4, xzr
02a38e7c: f70f00f9 str      x23, [sp, #0x18]
02a38e80: e00701ad stp      q0, q1, [sp, #0x20]
02a38e84: e203843c stur     q2, [sp, #0x40]
02a38e88: af0da597 bl       #0x137c544 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$ExplodeMatchGroup
02a38e8c: c0020037 tbnz     w0, #0, #0x2a38ee4
02a38e90: 150340f9 ldr      x21, [x24]
02a38e94: a81e40f9 ldr      x8, [x21, #0x38]
02a38e98: 000140f9 ldr      x0, [x8]
02a38e9c: 08c84439 ldrb     w8, [x0, #0x132]
02a38ea0: 48000037 tbnz     w8, #0, #0x2a38ea8
02a38ea4: 50209597 bl       #0xf80fe4
02a38ea8: 08e040b9 ldr      w8, [x0, #0xe0]
02a38eac: 48000035 cbnz     w8, #0x2a38eb4
02a38eb0: 55e19597 bl       #0xfb1404
02a38eb4: a81e40f9 ldr      x8, [x21, #0x38]
02a38eb8: 000140f9 ldr      x0, [x8]
02a38ebc: 08c84439 ldrb     w8, [x0, #0x132]
02a38ec0: 48000037 tbnz     w8, #0, #0x2a38ec8
02a38ec4: 48209597 bl       #0xf80fe4
02a38ec8: 085c40f9 ldr      x8, [x0, #0xb8]
02a38ecc: 220340f9 ldr      x2, [x25]
02a38ed0: 61018052 mov      w1, #0xb
02a38ed4: e00313aa mov      x0, x19
02a38ed8: 030140f9 ldr      x3, [x8]
02a38edc: e4031faa mov      x4, xzr
02a38ee0: 8720f797 bl       #0x28010fc ; Royal.Infrastructure.Services.Logs.Log$$Error
02a38ee4: 800240f9 ldr      x0, [x20]
02a38ee8: 08e040b9 ldr      w8, [x0, #0xe0]
02a38eec: 48000035 cbnz     w8, #0x2a38ef4
02a38ef0: 45e19597 bl       #0xfb1404
02a38ef4: 88e35439 ldrb     w8, [x28, #0x538]
02a38ef8: c8000035 cbnz     w8, #0x2a38f10
02a38efc: a03e0190 adrp     x0, #0x520c000
02a38f00: 00dc47f9 ldr      x0, [x0, #0xfb8]
02a38f04: ffe09597 bl       #0xfb1300
02a38f08: 28008052 mov      w8, #1
02a38f0c: 88e31439 strb     w8, [x28, #0x538]
02a38f10: 800240f9 ldr      x0, [x20]
02a38f14: 08e040b9 ldr      w8, [x0, #0xe0]
02a38f18: 68000035 cbnz     w8, #0x2a38f24
02a38f1c: 3ae19597 bl       #0xfb1404
02a38f20: 800240f9 ldr      x0, [x20]
02a38f24: 085c40f9 ldr      x8, [x0, #0xb8]
02a38f28: 02138052 mov      w2, #0x98
02a38f2c: e00316aa mov      x0, x22
02a38f30: 01210091 add      x1, x8, #8
02a38f34: f7268a97 bl       #0xcc2b10
02a38f38: 60820491 add      x0, x19, #0x120
02a38f3c: e1031faa mov      x1, xzr
02a38f40: dbe09597 bl       #0xfb12ac
02a38f44: ff831791 add      sp, sp, #0x5e0
02a38f48: fd7b45a9 ldp      x29, x30, [sp, #0x50]
02a38f4c: f44f44a9 ldp      x20, x19, [sp, #0x40]
02a38f50: f65743a9 ldp      x22, x21, [sp, #0x30]
02a38f54: f85f42a9 ldp      x24, x23, [sp, #0x20]
02a38f58: fa6741a9 ldp      x26, x25, [sp, #0x10]
02a38f5c: fc6fc6a8 ldp      x28, x27, [sp], #0x60
02a38f60: c0035fd6 ret
02a38f64: 31e19597 bl       #0xfb1428
02a38f68: 32e19597 bl       #0xfb1430
02a38f6c: 38e19597 bl       #0xfb144c
02a38f70: e1031faa mov      x1, xzr
02a38f74: 1fe19597 bl       #0xfb13f0
