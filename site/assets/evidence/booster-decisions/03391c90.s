# Royal.Scenes.Game.Mechanics.Items.Config.MultipleCellItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
03391c90: f553bea9 stp      x21, x20, [sp, #-0x20]!
03391c94: f37b01a9 stp      x19, x30, [sp, #0x10]
03391c98: f30300aa mov      x19, x0
03391c9c: 00918f52 mov      w0, #0x7c88
03391ca0: 3f0c0071 cmp      w1, #3
03391ca4: 6000a072 movk     w0, #3, lsl #16
03391ca8: 00040054 b.eq     #0x3391d28
03391cac: f403012a mov      w20, w1
03391cb0: 3f180071 cmp      w1, #6
03391cb4: a0030054 b.eq     #0x3391d28
03391cb8: 603e40f9 ldr      x0, [x19, #0x78]
03391cbc: c00400b4 cbz      x0, #0x3391d54
03391cc0: 756a40b9 ldr      w21, [x19, #0x68]
03391cc4: e1031faa mov      x1, xzr
03391cc8: faa1e697 bl       #0x2d3a4b0 ; Royal.Scenes.Game.Mechanics.Explode.IncomingExploderContainer$$GetIncomingCount
03391ccc: a802004b sub      w8, w21, w0
03391cd0: 1f050071 cmp      w8, #1
03391cd4: 01030054 b.ne     #0x3391d34
03391cd8: 00229f52 mov      w0, #0xf910
03391cdc: 9f1e0071 cmp      w20, #7
03391ce0: c000a072 movk     w0, #6, lsl #16
03391ce4: 28020054 b.hi     #0x3391d28
03391ce8: 28008052 mov      w8, #1
03391cec: 0821d41a lsl      w8, w8, w20
03391cf0: 29168052 mov      w9, #0xb1
03391cf4: 1f01096a tst      w8, w9
03391cf8: 80010054 b.eq     #0x3391d28
03391cfc: 680240f9 ldr      x8, [x19]
03391d00: e00313aa mov      x0, x19
03391d04: 09bd41f9 ldr      x9, [x8, #0x378]
03391d08: 01c141f9 ldr      x1, [x8, #0x380]
03391d0c: 20013fd6 blr      x9
03391d10: 68e7ff97 bl       #0x338bab0 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$CellsFreedAfterExplode
03391d14: a8608a52 mov      w8, #0x5305
03391d18: 69c19452 mov      w9, #0xa60b
03391d1c: 4800a072 movk     w8, #2, lsl #16
03391d20: 8900a072 movk     w9, #4, lsl #16
03391d24: 0024081b madd     w0, w0, w8, w9
03391d28: f37b41a9 ldp      x19, x30, [sp, #0x10]
03391d2c: f553c2a8 ldp      x21, x20, [sp], #0x20
03391d30: c0035fd6 ret      
03391d34: 680240f9 ldr      x8, [x19]
03391d38: e00313aa mov      x0, x19
03391d3c: 09bd41f9 ldr      x9, [x8, #0x378]
03391d40: 01c141f9 ldr      x1, [x8, #0x380]
03391d44: 20013fd6 blr      x9
03391d48: f37b41a9 ldp      x19, x30, [sp, #0x10]
03391d4c: f553c2a8 ldp      x21, x20, [sp], #0x20
03391d50: 0ecbff17 b        #0x3384988 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
03391d54: b57d7097 bl       #0xfb1428
