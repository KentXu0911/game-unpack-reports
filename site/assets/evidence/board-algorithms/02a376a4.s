# Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$ShouldPlaySwapAnimation
# Next metadata method 0x2a37b68, not a proven function boundary.
02a376a4: ff0307d1 sub      sp, sp, #0x1c0
02a376a8: fc6f16a9 stp      x28, x27, [sp, #0x160]
02a376ac: fa6717a9 stp      x26, x25, [sp, #0x170]
02a376b0: f85f18a9 stp      x24, x23, [sp, #0x180]
02a376b4: f65719a9 stp      x22, x21, [sp, #0x190]
02a376b8: f44f1aa9 stp      x20, x19, [sp, #0x1a0]
02a376bc: fd7b1ba9 stp      x29, x30, [sp, #0x1b0]
02a376c0: 545a01d0 adrp     x20, #0x5581000
02a376c4: 88ea7b39 ldrb     w8, [x20, #0xefa]
02a376c8: f503012a mov      w21, w1
02a376cc: f30300aa mov      x19, x0
02a376d0: 48020037 tbnz     w8, #0, #0x2a37718
02a376d4: c03a0190 adrp     x0, #0x518f000
02a376d8: 006042f9 ldr      x0, [x0, #0x4c0]
02a376dc: 09e79597 bl       #0xfb1300
02a376e0: a03f01b0 adrp     x0, #0x522c000
02a376e4: 00f846f9 ldr      x0, [x0, #0xdf0]
02a376e8: 06e79597 bl       #0xfb1300
02a376ec: a03e01b0 adrp     x0, #0x520c000
02a376f0: 00dc47f9 ldr      x0, [x0, #0xfb8]
02a376f4: 03e79597 bl       #0xfb1300
02a376f8: 403d0190 adrp     x0, #0x51df000
02a376fc: 00d040f9 ldr      x0, [x0, #0x1a0]
02a37700: 00e79597 bl       #0xfb1300
02a37704: 203c01f0 adrp     x0, #0x51be000
02a37708: 001845f9 ldr      x0, [x0, #0xa30]
02a3770c: fde69597 bl       #0xfb1300
02a37710: 28008052 mov      w8, #1
02a37714: 88ea3b39 strb     w8, [x20, #0xefa]
02a37718: e0230391 add      x0, sp, #0xc8
02a3771c: 02138052 mov      w2, #0x98
02a37720: e1031f2a mov      w1, wzr
02a37724: bb2e8a97 bl       #0xcc3210
02a37728: 683640f9 ldr      x8, [x19, #0x68]
02a3772c: 882100b4 cbz      x8, #0x2a37b5c
02a37730: 000940f9 ldr      x0, [x8, #0x10]
02a37734: 402100b4 cbz      x0, #0x2a37b5c
02a37738: e1031faa mov      x1, xzr
02a3773c: c939f497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a37740: 683a40f9 ldr      x8, [x19, #0x70]
02a37744: c82000b4 cbz      x8, #0x2a37b5c
02a37748: f40300aa mov      x20, x0
02a3774c: 000940f9 ldr      x0, [x8, #0x10]
02a37750: 602000b4 cbz      x0, #0x2a37b5c
02a37754: e1031faa mov      x1, xzr
02a37758: c239f497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a3775c: f60300aa mov      x22, x0
02a37760: 800000b4 cbz      x0, #0x2a37770
02a37764: 603640f9 ldr      x0, [x19, #0x68]
02a37768: e10316aa mov      x1, x22
02a3776c: ab0f0094 bl       #0x2a3b618 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$SetAllItems
02a37770: 603a40f9 ldr      x0, [x19, #0x70]
02a37774: e10314aa mov      x1, x20
02a37778: a80f0094 bl       #0x2a3b618 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$SetAllItems
02a3777c: 683a40f9 ldr      x8, [x19, #0x70]
02a37780: e81e00b4 cbz      x8, #0x2a37b5c
02a37784: 601640f9 ldr      x0, [x19, #0x28]
02a37788: a01e00b4 cbz      x0, #0x2a37b5c
02a3778c: 010d40f9 ldr      x1, [x8, #0x18]
02a37790: 62008052 mov      w2, #3
02a37794: e3031faa mov      x3, xzr
02a37798: f60700f9 str      x22, [sp, #8]
02a3779c: f41700f9 str      x20, [sp, #0x28]
02a377a0: f51700b9 str      w21, [sp, #0x14]
02a377a4: bf0ba597 bl       #0x137a6a0 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$FindExtensiveMatchesInArea
02a377a8: a01d00b4 cbz      x0, #0x2a37b5c
02a377ac: 081840b9 ldr      w8, [x0, #0x18]
02a377b0: f70300aa mov      x23, x0
02a377b4: 1f050071 cmp      w8, #1
02a377b8: ab0e0054 b.lt     #0x2a3798c
02a377bc: b63f01b0 adrp     x22, #0x522c000
02a377c0: 5d3d0190 adrp     x29, #0x51df000
02a377c4: b43e01b0 adrp     x20, #0x520c000
02a377c8: d6fa46f9 ldr      x22, [x22, #0xdf0]
02a377cc: bdd340f9 ldr      x29, [x29, #0x1a0]
02a377d0: 94de47f9 ldr      x20, [x20, #0xfb8]
02a377d4: 68220291 add      x8, x19, #0x88
02a377d8: f8031f2a mov      w24, wzr
02a377dc: 79420491 add      x25, x19, #0x110
02a377e0: 7a820491 add      x26, x19, #0x120
02a377e4: 7b620691 add      x27, x19, #0x198
02a377e8: 7ce20191 add      x28, x19, #0x78
02a377ec: e81300f9 str      x8, [sp, #0x20]
02a377f0: 68020491 add      x8, x19, #0x100
02a377f4: e80f00f9 str      x8, [sp, #0x18]
02a377f8: c20240f9 ldr      x2, [x22]
02a377fc: e8c30091 add      x8, sp, #0x30
02a37800: e00317aa mov      x0, x23
02a37804: e103182a mov      w1, w24
02a37808: 7a600f94 bl       #0x2e0f9f0 ; System.Collections.Generic.List<MatchGroup>$$get_Item
02a3780c: e0230391 add      x0, sp, #0xc8
02a37810: e1c30091 add      x1, sp, #0x30
02a37814: 02138052 mov      w2, #0x98
02a37818: 6e298a97 bl       #0xcc1dd0
02a3781c: 603a40f9 ldr      x0, [x19, #0x70]
02a37820: e01900b4 cbz      x0, #0x2a37b5c
02a37824: e1031faa mov      x1, xzr
02a37828: 8e440294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a3782c: 000500b4 cbz      x0, #0x2a378cc
02a37830: 090040f9 ldr      x9, [x0]
02a37834: a80340f9 ldr      x8, [x29]
02a37838: f50300aa mov      x21, x0
02a3783c: 2bb14439 ldrb     w11, [x9, #0x12c]
02a37840: 0ab14439 ldrb     w10, [x8, #0x12c]
02a37844: 7f010a6b cmp      w11, w10
02a37848: 23040054 b.lo     #0x2a378cc
02a3784c: 296540f9 ldr      x9, [x9, #0xc8]
02a37850: 290d0a8b add      x9, x9, x10, lsl #3
02a37854: 29815ff8 ldur     x9, [x9, #-8]
02a37858: 3f0108eb cmp      x9, x8
02a3785c: 81030054 b.ne     #0x2a378cc
02a37860: 800240f9 ldr      x0, [x20]
02a37864: 08e040b9 ldr      w8, [x0, #0xe0]
02a37868: 48000035 cbnz     w8, #0x2a37870
02a3786c: e6e69597 bl       #0xfb1404
02a37870: e0230391 add      x0, sp, #0xc8
02a37874: e10315aa mov      x1, x21
02a37878: e2031faa mov      x2, xzr
02a3787c: cb03a597 bl       #0x13787a8 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsItem
02a37880: 60020036 tbz      w0, #0, #0x2a378cc
02a37884: e1230391 add      x1, sp, #0xc8
02a37888: 02138052 mov      w2, #0x98
02a3788c: e00319aa mov      x0, x25
02a37890: 50298a97 bl       #0xcc1dd0
02a37894: e0031aaa mov      x0, x26
02a37898: e1031faa mov      x1, xzr
02a3789c: 84e69597 bl       #0xfb12ac
02a378a0: 800240f9 ldr      x0, [x20]
02a378a4: 08e040b9 ldr      w8, [x0, #0xe0]
02a378a8: 48000035 cbnz     w8, #0x2a378b0
02a378ac: d6e69597 bl       #0xfb1404
02a378b0: e00319aa mov      x0, x25
02a378b4: e1031faa mov      x1, xzr
02a378b8: df04a597 bl       #0x1378c34 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$FreezeCells
02a378bc: 613a40f9 ldr      x1, [x19, #0x70]
02a378c0: e0031baa mov      x0, x27
02a378c4: 61ce00f9 str      x1, [x19, #0x198]
02a378c8: 2c000014 b        #0x2a37978
02a378cc: 603640f9 ldr      x0, [x19, #0x68]
02a378d0: 601400b4 cbz      x0, #0x2a37b5c
02a378d4: e1031faa mov      x1, xzr
02a378d8: 62440294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a378dc: 000500b4 cbz      x0, #0x2a3797c
02a378e0: 090040f9 ldr      x9, [x0]
02a378e4: a80340f9 ldr      x8, [x29]
02a378e8: f50300aa mov      x21, x0
02a378ec: 2bb14439 ldrb     w11, [x9, #0x12c]
02a378f0: 0ab14439 ldrb     w10, [x8, #0x12c]
02a378f4: 7f010a6b cmp      w11, w10
02a378f8: 23040054 b.lo     #0x2a3797c
02a378fc: 296540f9 ldr      x9, [x9, #0xc8]
02a37900: 290d0a8b add      x9, x9, x10, lsl #3
02a37904: 29815ff8 ldur     x9, [x9, #-8]
02a37908: 3f0108eb cmp      x9, x8
02a3790c: 81030054 b.ne     #0x2a3797c
02a37910: 800240f9 ldr      x0, [x20]
02a37914: 08e040b9 ldr      w8, [x0, #0xe0]
02a37918: 48000035 cbnz     w8, #0x2a37920
02a3791c: bae69597 bl       #0xfb1404
02a37920: e0230391 add      x0, sp, #0xc8
02a37924: e10315aa mov      x1, x21
02a37928: e2031faa mov      x2, xzr
02a3792c: 9f03a597 bl       #0x13787a8 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsItem
02a37930: 60020036 tbz      w0, #0, #0x2a3797c
02a37934: e1230391 add      x1, sp, #0xc8
02a37938: 02138052 mov      w2, #0x98
02a3793c: e0031caa mov      x0, x28
02a37940: 24298a97 bl       #0xcc1dd0
02a37944: e01340f9 ldr      x0, [sp, #0x20]
02a37948: e1031faa mov      x1, xzr
02a3794c: 58e69597 bl       #0xfb12ac
02a37950: 800240f9 ldr      x0, [x20]
02a37954: 08e040b9 ldr      w8, [x0, #0xe0]
02a37958: 48000035 cbnz     w8, #0x2a37960
02a3795c: aae69597 bl       #0xfb1404
02a37960: e0031caa mov      x0, x28
02a37964: e1031faa mov      x1, xzr
02a37968: b304a597 bl       #0x1378c34 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$FreezeCells
02a3796c: 613640f9 ldr      x1, [x19, #0x68]
02a37970: e00f40f9 ldr      x0, [sp, #0x18]
02a37974: 618200f9 str      x1, [x19, #0x100]
02a37978: 4de69597 bl       #0xfb12ac
02a3797c: e81a40b9 ldr      w8, [x23, #0x18]
02a37980: 18070011 add      w24, w24, #1
02a37984: 1f03086b cmp      w24, w8
02a37988: 8bf3ff54 b.lt     #0x2a377f8
02a3798c: 603640f9 ldr      x0, [x19, #0x68]
02a37990: 600e00b4 cbz      x0, #0x2a37b5c
02a37994: 353c01f0 adrp     x21, #0x51be000
02a37998: b51a45f9 ldr      x21, [x21, #0xa30]
02a3799c: e1031faa mov      x1, xzr
02a379a0: 8c470294 bl       #0x2ac97d0 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasSpecialItem
02a379a4: 00050036 tbz      w0, #0, #0x2a37a44
02a379a8: 603640f9 ldr      x0, [x19, #0x68]
02a379ac: 800d00b4 cbz      x0, #0x2a37b5c
02a379b0: e1031faa mov      x1, xzr
02a379b4: 2b440294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a379b8: 683a40f9 ldr      x8, [x19, #0x70]
02a379bc: 080d00b4 cbz      x8, #0x2a37b5c
02a379c0: f40300aa mov      x20, x0
02a379c4: e00308aa mov      x0, x8
02a379c8: e1031faa mov      x1, xzr
02a379cc: 25440294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a379d0: 740c00b4 cbz      x20, #0x2a37b5c
02a379d4: 880240f9 ldr      x8, [x20]
02a379d8: a10240f9 ldr      x1, [x21]
02a379dc: 0ab14439 ldrb     w10, [x8, #0x12c]
02a379e0: 29b04439 ldrb     w9, [x1, #0x12c]
02a379e4: 5f01096b cmp      w10, w9
02a379e8: c30b0054 b.lo     #0x2a37b60
02a379ec: 086540f9 ldr      x8, [x8, #0xc8]
02a379f0: 080d098b add      x8, x8, x9, lsl #3
02a379f4: 08815ff8 ldur     x8, [x8, #-8]
02a379f8: 1f0101eb cmp      x8, x1
02a379fc: 210b0054 b.ne     #0x2a37b60
02a37a00: 880240f9 ldr      x8, [x20]
02a37a04: 29b04439 ldrb     w9, [x1, #0x12c]
02a37a08: 0ab14439 ldrb     w10, [x8, #0x12c]
02a37a0c: 5f01096b cmp      w10, w9
02a37a10: 830a0054 b.lo     #0x2a37b60
02a37a14: 0a6540f9 ldr      x10, [x8, #0xc8]
02a37a18: 490d098b add      x9, x10, x9, lsl #3
02a37a1c: 29815ff8 ldur     x9, [x9, #-8]
02a37a20: 3f0101eb cmp      x9, x1
02a37a24: e1090054 b.ne     #0x2a37b60
02a37a28: 09fd44f9 ldr      x9, [x8, #0x9f8]
02a37a2c: 020145f9 ldr      x2, [x8, #0xa00]
02a37a30: e30300aa mov      x3, x0
02a37a34: e00314aa mov      x0, x20
02a37a38: e10303aa mov      x1, x3
02a37a3c: 20013fd6 blr      x9
02a37a40: 00060037 tbnz     w0, #0, #0x2a37b00
02a37a44: 603a40f9 ldr      x0, [x19, #0x70]
02a37a48: f61740f9 ldr      x22, [sp, #0x28]
02a37a4c: 800800b4 cbz      x0, #0x2a37b5c
02a37a50: e1031faa mov      x1, xzr
02a37a54: 5f470294 bl       #0x2ac97d0 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasSpecialItem
02a37a58: 00050036 tbz      w0, #0, #0x2a37af8
02a37a5c: 603a40f9 ldr      x0, [x19, #0x70]
02a37a60: e00700b4 cbz      x0, #0x2a37b5c
02a37a64: e1031faa mov      x1, xzr
02a37a68: fe430294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a37a6c: 683640f9 ldr      x8, [x19, #0x68]
02a37a70: 680700b4 cbz      x8, #0x2a37b5c
02a37a74: f40300aa mov      x20, x0
02a37a78: e00308aa mov      x0, x8
02a37a7c: e1031faa mov      x1, xzr
02a37a80: f8430294 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
02a37a84: d40600b4 cbz      x20, #0x2a37b5c
02a37a88: 880240f9 ldr      x8, [x20]
02a37a8c: a10240f9 ldr      x1, [x21]
02a37a90: 0ab14439 ldrb     w10, [x8, #0x12c]
02a37a94: 29b04439 ldrb     w9, [x1, #0x12c]
02a37a98: 5f01096b cmp      w10, w9
02a37a9c: 23060054 b.lo     #0x2a37b60
02a37aa0: 086540f9 ldr      x8, [x8, #0xc8]
02a37aa4: 080d098b add      x8, x8, x9, lsl #3
02a37aa8: 08815ff8 ldur     x8, [x8, #-8]
02a37aac: 1f0101eb cmp      x8, x1
02a37ab0: 81050054 b.ne     #0x2a37b60
02a37ab4: 880240f9 ldr      x8, [x20]
02a37ab8: 29b04439 ldrb     w9, [x1, #0x12c]
02a37abc: 0ab14439 ldrb     w10, [x8, #0x12c]
02a37ac0: 5f01096b cmp      w10, w9
02a37ac4: e3040054 b.lo     #0x2a37b60
02a37ac8: 0a6540f9 ldr      x10, [x8, #0xc8]
02a37acc: 490d098b add      x9, x10, x9, lsl #3
02a37ad0: 29815ff8 ldur     x9, [x9, #-8]
02a37ad4: 3f0101eb cmp      x9, x1
02a37ad8: 41040054 b.ne     #0x2a37b60
02a37adc: 09fd44f9 ldr      x9, [x8, #0x9f8]
02a37ae0: 020145f9 ldr      x2, [x8, #0xa00]
02a37ae4: e30300aa mov      x3, x0
02a37ae8: e00314aa mov      x0, x20
02a37aec: e10303aa mov      x1, x3
02a37af0: 20013fd6 blr      x9
02a37af4: 60000037 tbnz     w0, #0, #0x2a37b00
02a37af8: 682a4439 ldrb     w8, [x19, #0x10a]
02a37afc: 48010034 cbz      w8, #0x2a37b24
02a37b00: 20008052 mov      w0, #1
02a37b04: fd7b5ba9 ldp      x29, x30, [sp, #0x1b0]
02a37b08: f44f5aa9 ldp      x20, x19, [sp, #0x1a0]
02a37b0c: f65759a9 ldp      x22, x21, [sp, #0x190]
02a37b10: f85f58a9 ldp      x24, x23, [sp, #0x180]
02a37b14: fa6757a9 ldp      x26, x25, [sp, #0x170]
02a37b18: fc6f56a9 ldp      x28, x27, [sp, #0x160]
02a37b1c: ff030791 add      sp, sp, #0x1c0
02a37b20: c0035fd6 ret      
02a37b24: 688a4639 ldrb     w8, [x19, #0x1a2]
02a37b28: 20008052 mov      w0, #1
02a37b2c: c8feff35 cbnz     w8, #0x2a37b04
02a37b30: e81740b9 ldr      w8, [sp, #0x14]
02a37b34: 88fe0737 tbnz     w8, #0, #0x2a37b04
02a37b38: 603640f9 ldr      x0, [x19, #0x68]
02a37b3c: e10316aa mov      x1, x22
02a37b40: b60e0094 bl       #0x2a3b618 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$SetAllItems
02a37b44: e10740f9 ldr      x1, [sp, #8]
02a37b48: 610000b4 cbz      x1, #0x2a37b54
02a37b4c: 603a40f9 ldr      x0, [x19, #0x70]
02a37b50: b20e0094 bl       #0x2a3b618 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$SetAllItems
02a37b54: e0031f2a mov      w0, wzr
02a37b58: ebffff17 b        #0x2a37b04
02a37b5c: 33e69597 bl       #0xfb1428
02a37b60: e00314aa mov      x0, x20
02a37b64: 17e79597 bl       #0xfb17c0
