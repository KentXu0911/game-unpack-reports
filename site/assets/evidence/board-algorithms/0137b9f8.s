# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$CreateAndAddMatchGroup
# Next metadata method 0x137bd08, not a proven function boundary.
0137b9f8: fc0f1af8 str      x28, [sp, #-0x60]!
0137b9fc: fb6b01a9 stp      x27, x26, [sp, #0x10]
0137ba00: f96302a9 stp      x25, x24, [sp, #0x20]
0137ba04: f75b03a9 stp      x23, x22, [sp, #0x30]
0137ba08: f55304a9 stp      x21, x20, [sp, #0x40]
0137ba0c: f37b05a9 stp      x19, x30, [sp, #0x50]
0137ba10: ffc309d1 sub      sp, sp, #0x270
0137ba14: f50f02b0 adrp     x21, #0x5578000
0137ba18: a8464539 ldrb     w8, [x21, #0x151]
0137ba1c: f40301aa mov      x20, x1
0137ba20: f30300aa mov      x19, x0
0137ba24: e8010037 tbnz     w8, #0, #0x137ba60
0137ba28: 00f50190 adrp     x0, #0x521b000
0137ba2c: 00e842f9 ldr      x0, [x0, #0x5d0]
0137ba30: 34d6f097 bl       #0xfb1300
0137ba34: c0f001b0 adrp     x0, #0x5194000
0137ba38: 004847f9 ldr      x0, [x0, #0xe90]
0137ba3c: 31d6f097 bl       #0xfb1300
0137ba40: a0f00190 adrp     x0, #0x518f000
0137ba44: 006042f9 ldr      x0, [x0, #0x4c0]
0137ba48: 2ed6f097 bl       #0xfb1300
0137ba4c: 80f401b0 adrp     x0, #0x520c000
0137ba50: 00dc47f9 ldr      x0, [x0, #0xfb8]
0137ba54: 2bd6f097 bl       #0xfb1300
0137ba58: 28008052 mov      w8, #1
0137ba5c: a8460539 strb     w8, [x21, #0x151]
0137ba60: e0a30291 add      x0, sp, #0xa8
0137ba64: 02138052 mov      w2, #0x98
0137ba68: e1031f2a mov      w1, wzr
0137ba6c: e91de597 bl       #0xcc3210
0137ba70: 680a40f9 ldr      x8, [x19, #0x10]
0137ba74: 681400b4 cbz      x8, #0x137bd00
0137ba78: 541400b4 cbz      x20, #0x137bd00
0137ba7c: 99f401b0 adrp     x25, #0x520c000
0137ba80: 39df47f9 ldr      x25, [x25, #0xfb8]
0137ba84: 08614039 ldrb     w8, [x8, #0x18]
0137ba88: 96564229 ldp      w22, w21, [x20, #0x10]
0137ba8c: 200340f9 ldr      x0, [x25]
0137ba90: 17050011 add      w23, w8, #1
0137ba94: 09e040b9 ldr      w9, [x0, #0xe0]
0137ba98: 49000035 cbnz     w9, #0x137baa0
0137ba9c: 5ad6f097 bl       #0xfb1404
0137baa0: e0a30291 add      x0, sp, #0xa8
0137baa4: e103172a mov      w1, w23
0137baa8: e203162a mov      w2, w22
0137baac: e303152a mov      w3, w21
0137bab0: d0f1ff97 bl       #0x13781f0 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$.ctor
0137bab4: 880e40f9 ldr      x8, [x20, #0x18]
0137bab8: 481200b4 cbz      x8, #0x137bd00
0137babc: 160d40f9 ldr      x22, [x8, #0x18]
0137bac0: 161200b4 cbz      x22, #0x137bd00
0137bac4: c80e40f9 ldr      x8, [x22, #0x18]
0137bac8: 1f050071 cmp      w8, #1
0137bacc: 6b020054 b.lt     #0x137bb18
0137bad0: f7031faa mov      x23, xzr
0137bad4: 087d4092 and      x8, x8, #0xffffffff
0137bad8: d8820091 add      x24, x22, #0x20
0137badc: ff4228eb cmp      x23, w8, uxtw
0137bae0: 22110054 b.hs     #0x137bd04
0137bae4: 157b77f8 ldr      x21, [x24, x23, lsl #3]
0137bae8: 150100b4 cbz      x21, #0x137bb08
0137baec: 200340f9 ldr      x0, [x25]
0137baf0: 08e040b9 ldr      w8, [x0, #0xe0]
0137baf4: 48000035 cbnz     w8, #0x137bafc
0137baf8: 43d6f097 bl       #0xfb1404
0137bafc: e0a30291 add      x0, sp, #0xa8
0137bb00: e10315aa mov      x1, x21
0137bb04: 45f2ff97 bl       #0x1378418 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AddCell
0137bb08: c81a40b9 ldr      w8, [x22, #0x18]
0137bb0c: f7060091 add      x23, x23, #1
0137bb10: ffc228eb cmp      x23, w8, sxtw
0137bb14: 4bfeff54 b.lt     #0x137badc
0137bb18: 881240f9 ldr      x8, [x20, #0x20]
0137bb1c: c80300b4 cbz      x8, #0x137bb94
0137bb20: 160d40f9 ldr      x22, [x8, #0x18]
0137bb24: f60e00b4 cbz      x22, #0x137bd00
0137bb28: c80e40f9 ldr      x8, [x22, #0x18]
0137bb2c: 1f050071 cmp      w8, #1
0137bb30: 2b030054 b.lt     #0x137bb94
0137bb34: f7031faa mov      x23, xzr
0137bb38: 087d4092 and      x8, x8, #0xffffffff
0137bb3c: d8820091 add      x24, x22, #0x20
0137bb40: ff4228eb cmp      x23, w8, uxtw
0137bb44: 020e0054 b.hs     #0x137bd04
0137bb48: 157b77f8 ldr      x21, [x24, x23, lsl #3]
0137bb4c: d50100b4 cbz      x21, #0x137bb84
0137bb50: 881640f9 ldr      x8, [x20, #0x28]
0137bb54: bf0208eb cmp      x21, x8
0137bb58: 60010054 b.eq     #0x137bb84
0137bb5c: 881a40f9 ldr      x8, [x20, #0x30]
0137bb60: bf0208eb cmp      x21, x8
0137bb64: 00010054 b.eq     #0x137bb84
0137bb68: 200340f9 ldr      x0, [x25]
0137bb6c: 08e040b9 ldr      w8, [x0, #0xe0]
0137bb70: 48000035 cbnz     w8, #0x137bb78
0137bb74: 24d6f097 bl       #0xfb1404
0137bb78: e0a30291 add      x0, sp, #0xa8
0137bb7c: e10315aa mov      x1, x21
0137bb80: 26f2ff97 bl       #0x1378418 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AddCell
0137bb84: c81a40b9 ldr      w8, [x22, #0x18]
0137bb88: f7060091 add      x23, x23, #1
0137bb8c: ffc228eb cmp      x23, w8, sxtw
0137bb90: 8bfdff54 b.lt     #0x137bb40
0137bb94: 1bf50190 adrp     x27, #0x521b000
0137bb98: daf001b0 adrp     x26, #0x5194000
0137bb9c: 7beb42f9 ldr      x27, [x27, #0x5d0]
0137bba0: 5a4b47f9 ldr      x26, [x26, #0xe90]
0137bba4: e8a30291 add      x8, sp, #0xa8
0137bba8: f4031f2a mov      w20, wzr
0137bbac: 15210091 add      x21, x8, #8
0137bbb0: 600340f9 ldr      x0, [x27]
0137bbb4: 08e040b9 ldr      w8, [x0, #0xe0]
0137bbb8: 48000035 cbnz     w8, #0x137bbc0
0137bbbc: 12d6f097 bl       #0xfb1404
0137bbc0: e8b340b9 ldr      w8, [sp, #0xb0]
0137bbc4: 9f02086b cmp      w20, w8
0137bbc8: 2a030054 b.ge     #0x137bc2c
0137bbcc: 600340f9 ldr      x0, [x27]
0137bbd0: 08e040b9 ldr      w8, [x0, #0xe0]
0137bbd4: 48000035 cbnz     w8, #0x137bbdc
0137bbd8: 0bd6f097 bl       #0xfb1404
0137bbdc: e00315aa mov      x0, x21
0137bbe0: e103142a mov      w1, w20
0137bbe4: 3aefff97 bl       #0x13778cc ; Royal.Scenes.Game.Mechanics.Matches.Cell14$$get_Item
0137bbe8: c00800b4 cbz      x0, #0x137bd00
0137bbec: 280340f9 ldr      x8, [x25]
0137bbf0: 783240f9 ldr      x24, [x19, #0x60]
0137bbf4: 17584329 ldp      w23, w22, [x0, #0x18]
0137bbf8: 09e140b9 ldr      w9, [x8, #0xe0]
0137bbfc: 69000035 cbnz     w9, #0x137bc08
0137bc00: e00308aa mov      x0, x8
0137bc04: 00d6f097 bl       #0xfb1404
0137bc08: d80700b4 cbz      x24, #0x137bd00
0137bc0c: e3a34439 ldrb     w3, [sp, #0x128]
0137bc10: e00318aa mov      x0, x24
0137bc14: e103172a mov      w1, w23
0137bc18: e203162a mov      w2, w22
0137bc1c: e4031faa mov      x4, xzr
0137bc20: 447c9594 bl       #0x38dad30 ; Royal.Scenes.Game.Utils.VisitMatrix$$SetAsVisited
0137bc24: 94060011 add      w20, w20, #1
0137bc28: e2ffff17 b        #0x137bbb0
0137bc2c: 730a40f9 ldr      x19, [x19, #0x10]
0137bc30: e0430091 add      x0, sp, #0x10
0137bc34: e1a30291 add      x1, sp, #0xa8
0137bc38: 02138052 mov      w2, #0x98
0137bc3c: 6518e597 bl       #0xcc1dd0
0137bc40: 130600b4 cbz      x19, #0x137bd00
0137bc44: 540340f9 ldr      x20, [x26]
0137bc48: e0030591 add      x0, sp, #0x140
0137bc4c: e1430091 add      x1, sp, #0x10
0137bc50: 02138052 mov      w2, #0x98
0137bc54: 5f18e597 bl       #0xcc1dd0
0137bc58: 691e40b9 ldr      w9, [x19, #0x1c]
0137bc5c: 680a40f9 ldr      x8, [x19, #0x10]
0137bc60: 29050011 add      w9, w9, #1
0137bc64: 691e00b9 str      w9, [x19, #0x1c]
0137bc68: c80400b4 cbz      x8, #0x137bd00
0137bc6c: 691a80b9 ldrsw    x9, [x19, #0x18]
0137bc70: 0a1940b9 ldr      w10, [x8, #0x18]
0137bc74: 3f010a6b cmp      w9, w10
0137bc78: c2010054 b.hs     #0x137bcb0
0137bc7c: 2a050011 add      w10, w9, #1
0137bc80: 0b138052 mov      w11, #0x98
0137bc84: 6a1a00b9 str      w10, [x19, #0x18]
0137bc88: 1f2003d5 nop      
0137bc8c: 33210b9b madd     x19, x9, x11, x8
0137bc90: 60820091 add      x0, x19, #0x20
0137bc94: e1030591 add      x1, sp, #0x140
0137bc98: 02138052 mov      w2, #0x98
0137bc9c: 4d18e597 bl       #0xcc1dd0
0137bca0: 60c20091 add      x0, x19, #0x30
0137bca4: e1031faa mov      x1, xzr
0137bca8: 81d5f097 bl       #0xfb12ac
0137bcac: 0d000014 b        #0x137bce0
0137bcb0: 881240f9 ldr      x8, [x20, #0x20]
0137bcb4: e0630791 add      x0, sp, #0x1d8
0137bcb8: e1030591 add      x1, sp, #0x140
0137bcbc: 02138052 mov      w2, #0x98
0137bcc0: 146140f9 ldr      x20, [x8, #0xc0]
0137bcc4: 882e40f9 ldr      x8, [x20, #0x58]
0137bcc8: 150540f9 ldr      x21, [x8, #8]
0137bccc: 4118e597 bl       #0xcc1dd0
0137bcd0: 822e40f9 ldr      x2, [x20, #0x58]
0137bcd4: e1630791 add      x1, sp, #0x1d8
0137bcd8: e00313aa mov      x0, x19
0137bcdc: a0023fd6 blr      x21
0137bce0: ffc30991 add      sp, sp, #0x270
0137bce4: f37b45a9 ldp      x19, x30, [sp, #0x50]
0137bce8: f55344a9 ldp      x21, x20, [sp, #0x40]
0137bcec: f75b43a9 ldp      x23, x22, [sp, #0x30]
0137bcf0: f96342a9 ldp      x25, x24, [sp, #0x20]
0137bcf4: fb6b41a9 ldp      x27, x26, [sp, #0x10]
0137bcf8: fc0746f8 ldr      x28, [sp], #0x60
0137bcfc: c0035fd6 ret      
0137bd00: cad5f097 bl       #0xfb1428
0137bd04: cbd5f097 bl       #0xfb1430
