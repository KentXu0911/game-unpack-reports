# Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$AddIncomingExploder
# Next metadata method 0x2acfa98, not a proven function boundary.
02acf800: ff0306d1 sub      sp, sp, #0x180
02acf804: fc6314a9 stp      x28, x24, [sp, #0x140]
02acf808: f75b15a9 stp      x23, x22, [sp, #0x150]
02acf80c: f55316a9 stp      x21, x20, [sp, #0x160]
02acf810: f37b17a9 stp      x19, x30, [sp, #0x170]
02acf814: 945501f0 adrp     x20, #0x5582000
02acf818: 88c64639 ldrb     w8, [x20, #0x1b1]
02acf81c: f30301aa mov      x19, x1
02acf820: f50300aa mov      x21, x0
02acf824: 28010037 tbnz     w8, #0, #0x2acf848
02acf828: 60370190 adrp     x0, #0x51bb000
02acf82c: 000844f9 ldr      x0, [x0, #0x810]
02acf830: b4869397 bl       #0xfb1300
02acf834: 203901b0 adrp     x0, #0x51f4000
02acf838: 00e841f9 ldr      x0, [x0, #0x3d0]
02acf83c: b1869397 bl       #0xfb1300
02acf840: 28008052 mov      w8, #1
02acf844: 88c60639 strb     w8, [x20, #0x1b1]
02acf848: a81240f9 ldr      x8, [x21, #0x20]
02acf84c: 481200b4 cbz      x8, #0x2acfa94
02acf850: 086140f9 ldr      x8, [x8, #0xc0]
02acf854: 081200b4 cbz      x8, #0x2acfa94
02acf858: 141940f9 ldr      x20, [x8, #0x30]
02acf85c: d41100b4 cbz      x20, #0x2acfa94
02acf860: 881a40b9 ldr      w8, [x20, #0x18]
02acf864: 383901b0 adrp     x24, #0x51f4000
02acf868: 18eb41f9 ldr      x24, [x24, #0x3d0]
02acf86c: 17050051 sub      w23, w8, #1
02acf870: b702f837 tbnz     w23, #0x1f, #0x2acf8c4
02acf874: 020340f9 ldr      x2, [x24]
02acf878: e00314aa mov      x0, x20
02acf87c: e103172a mov      w1, w23
02acf880: dbfafb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf884: 801000b4 cbz      x0, #0x2acfa94
02acf888: 080040f9 ldr      x8, [x0]
02acf88c: f60300aa mov      x22, x0
02acf890: 097542f9 ldr      x9, [x8, #0x4e8]
02acf894: 017942f9 ldr      x1, [x8, #0x4f0]
02acf898: 20013fd6 blr      x9
02acf89c: 1f040071 cmp      w0, #1
02acf8a0: f7060051 sub      w23, w23, #1
02acf8a4: 6bfeff54 b.lt     #0x2acf870
02acf8a8: 681a40f9 ldr      x8, [x19, #0x30]
02acf8ac: 618240ad ldp      q1, q0, [x19, #0x10]
02acf8b0: 6202c03d ldr      q2, [x19]
02acf8b4: e87b00f9 str      x8, [sp, #0xf0]
02acf8b8: e18306ad stp      q1, q0, [sp, #0xd0]
02acf8bc: e233803d str      q2, [sp, #0xc0]
02acf8c0: 65000014 b        #0x2acfa54
02acf8c4: a81240f9 ldr      x8, [x21, #0x20]
02acf8c8: 680e00b4 cbz      x8, #0x2acfa94
02acf8cc: 000940f9 ldr      x0, [x8, #0x10]
02acf8d0: 200e00b4 cbz      x0, #0x2acfa94
02acf8d4: e1031faa mov      x1, xzr
02acf8d8: 62d9f197 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02acf8dc: f40300aa mov      x20, x0
02acf8e0: a00200b4 cbz      x0, #0x2acf934
02acf8e4: 880240f9 ldr      x8, [x20]
02acf8e8: e00314aa mov      x0, x20
02acf8ec: 09ad43f9 ldr      x9, [x8, #0x758]
02acf8f0: 01b143f9 ldr      x1, [x8, #0x760]
02acf8f4: 20013fd6 blr      x9
02acf8f8: e0010036 tbz      w0, #0, #0x2acf934
02acf8fc: 880240f9 ldr      x8, [x20]
02acf900: e00314aa mov      x0, x20
02acf904: 096542f9 ldr      x9, [x8, #0x4c8]
02acf908: 016942f9 ldr      x1, [x8, #0x4d0]
02acf90c: 20013fd6 blr      x9
02acf910: 1f040071 cmp      w0, #1
02acf914: 0b010054 b.lt     #0x2acf934
02acf918: 681a40f9 ldr      x8, [x19, #0x30]
02acf91c: 618240ad ldp      q1, q0, [x19, #0x10]
02acf920: 6202c03d ldr      q2, [x19]
02acf924: e85b00f9 str      x8, [sp, #0xb0]
02acf928: e18304ad stp      q1, q0, [sp, #0x90]
02acf92c: e223803d str      q2, [sp, #0x80]
02acf930: 36000014 b        #0x2acfa08
02acf934: a81240f9 ldr      x8, [x21, #0x20]
02acf938: e80a00b4 cbz      x8, #0x2acfa94
02acf93c: 086140f9 ldr      x8, [x8, #0xc0]
02acf940: a80a00b4 cbz      x8, #0x2acfa94
02acf944: 151d40f9 ldr      x21, [x8, #0x38]
02acf948: 750a00b4 cbz      x21, #0x2acfa94
02acf94c: a81a40b9 ldr      w8, [x21, #0x18]
02acf950: 1f050071 cmp      w8, #1
02acf954: 2b030054 b.lt     #0x2acf9b8
02acf958: f7031f2a mov      w23, wzr
02acf95c: 020340f9 ldr      x2, [x24]
02acf960: e00315aa mov      x0, x21
02acf964: e103172a mov      w1, w23
02acf968: a1fafb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf96c: 680a40b9 ldr      w8, [x19, #8]
02acf970: f60300aa mov      x22, x0
02acf974: e1031faa mov      x1, xzr
02acf978: e003082a mov      w0, w8
02acf97c: 2dab0994 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
02acf980: b60800b4 cbz      x22, #0x2acfa94
02acf984: c80240f9 ldr      x8, [x22]
02acf988: 69524039 ldrb     w9, [x19, #0x14]
02acf98c: e103002a mov      w1, w0
02acf990: e00316aa mov      x0, x22
02acf994: 0acd41f9 ldr      x10, [x8, #0x398]
02acf998: 03d141f9 ldr      x3, [x8, #0x3a0]
02acf99c: 22010012 and      w2, w9, #1
02acf9a0: 40013fd6 blr      x10
02acf9a4: c0040037 tbnz     w0, #0, #0x2acfa3c
02acf9a8: a81a40b9 ldr      w8, [x21, #0x18]
02acf9ac: f7060011 add      w23, w23, #1
02acf9b0: ff02086b cmp      w23, w8
02acf9b4: 4bfdff54 b.lt     #0x2acf95c
02acf9b8: f40300b4 cbz      x20, #0x2acfa34
02acf9bc: 880240f9 ldr      x8, [x20]
02acf9c0: e00314aa mov      x0, x20
02acf9c4: 09ad43f9 ldr      x9, [x8, #0x758]
02acf9c8: 01b143f9 ldr      x1, [x8, #0x760]
02acf9cc: 20013fd6 blr      x9
02acf9d0: 20030037 tbnz     w0, #0, #0x2acfa34
02acf9d4: 880240f9 ldr      x8, [x20]
02acf9d8: e00314aa mov      x0, x20
02acf9dc: 096542f9 ldr      x9, [x8, #0x4c8]
02acf9e0: 016942f9 ldr      x1, [x8, #0x4d0]
02acf9e4: 20013fd6 blr      x9
02acf9e8: 1f040071 cmp      w0, #1
02acf9ec: 4b020054 b.lt     #0x2acfa34
02acf9f0: 681a40f9 ldr      x8, [x19, #0x30]
02acf9f4: 618240ad ldp      q1, q0, [x19, #0x10]
02acf9f8: 6202c03d ldr      q2, [x19]
02acf9fc: e81b00f9 str      x8, [sp, #0x30]
02acfa00: e18300ad stp      q1, q0, [sp, #0x10]
02acfa04: e203803d str      q2, [sp]
02acfa08: 890240f9 ldr      x9, [x20]
02acfa0c: e1030491 add      x1, sp, #0x100
02acfa10: e00314aa mov      x0, x20
02acfa14: 2a7542f9 ldr      x10, [x9, #0x4e8]
02acfa18: e20708ad stp      q2, q1, [sp, #0x100]
02acfa1c: e04b803d str      q0, [sp, #0x120]
02acfa20: e89b00f9 str      x8, [sp, #0x130]
02acfa24: 227942f9 ldr      x2, [x9, #0x4f0]
02acfa28: 40013fd6 blr      x10
02acfa2c: f60314aa mov      x22, x20
02acfa30: 12000014 b        #0x2acfa78
02acfa34: f6031faa mov      x22, xzr
02acfa38: 10000014 b        #0x2acfa78
02acfa3c: 681a40f9 ldr      x8, [x19, #0x30]
02acfa40: 618240ad ldp      q1, q0, [x19, #0x10]
02acfa44: 6202c03d ldr      q2, [x19]
02acfa48: e83b00f9 str      x8, [sp, #0x70]
02acfa4c: e18302ad stp      q1, q0, [sp, #0x50]
02acfa50: e213803d str      q2, [sp, #0x40]
02acfa54: c90240f9 ldr      x9, [x22]
02acfa58: e1030491 add      x1, sp, #0x100
02acfa5c: e00316aa mov      x0, x22
02acfa60: 2a7d42f9 ldr      x10, [x9, #0x4f8]
02acfa64: e20708ad stp      q2, q1, [sp, #0x100]
02acfa68: e04b803d str      q0, [sp, #0x120]
02acfa6c: e89b00f9 str      x8, [sp, #0x130]
02acfa70: 228142f9 ldr      x2, [x9, #0x500]
02acfa74: 40013fd6 blr      x10
02acfa78: e00316aa mov      x0, x22
02acfa7c: f37b57a9 ldp      x19, x30, [sp, #0x170]
02acfa80: f55356a9 ldp      x21, x20, [sp, #0x160]
02acfa84: f75b55a9 ldp      x23, x22, [sp, #0x150]
02acfa88: fc6354a9 ldp      x28, x24, [sp, #0x140]
02acfa8c: ff030691 add      sp, sp, #0x180
02acfa90: c0035fd6 ret      
02acfa94: 65869397 bl       #0xfb1428
