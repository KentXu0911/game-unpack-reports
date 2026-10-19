# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerDefaultStrategy$$NextExploder
# Linear span; next metadata entry is not a proven CFG boundary.
033a2e20: ffc302d1 sub      sp, sp, #0xb0
033a2e24: f55309a9 stp      x21, x20, [sp, #0x90]
033a2e28: f37b0aa9 stp      x19, x30, [sp, #0xa0]
033a2e2c: 55d03bd5 mrs      x21, tpidr_el0
033a2e30: f30308aa mov      x19, x8
033a2e34: a81640f9 ldr      x8, [x21, #0x28]
033a2e38: 00e4006f movi     v0.2d, #0000000000000000
033a2e3c: e84700f9 str      x8, [sp, #0x88]
033a2e40: ff7f04a9 stp      xzr, xzr, [sp, #0x40]
033a2e44: ff5300b9 str      wzr, [sp, #0x50]
033a2e48: e00303ad stp      q0, q0, [sp, #0x60]
033a2e4c: fff307b8 stur     wzr, [sp, #0x7f]
033a2e50: 410500b4 cbz      x1, #0x33a2ef8
033a2e54: 08804039 ldrb     w8, [x0, #0x20]
033a2e58: f40301aa mov      x20, x1
033a2e5c: 210c40f9 ldr      x1, [x1, #0x18]
033a2e60: c9038052 mov      w9, #0x1e
033a2e64: 1f010071 cmp      w8, #0
033a2e68: 08018052 mov      w8, #8
033a2e6c: 0001891a csel     w0, w8, w9, eq
033a2e70: e8230091 add      x8, sp, #8
033a2e74: e2031faa mov      x2, xzr
033a2e78: cf5be697 bl       #0x2d39db4 ; Royal.Scenes.Game.Mechanics.Explode.Exploder$$Next
033a2e7c: e083c03c ldur     q0, [sp, #8]
033a2e80: e81b40b9 ldr      w8, [sp, #0x18]
033a2e84: e1d3c13c ldur     q1, [sp, #0x1d]
033a2e88: e2d3c23c ldur     q2, [sp, #0x2d]
033a2e8c: e93f40b9 ldr      w9, [sp, #0x3c]
033a2e90: e00314aa mov      x0, x20
033a2e94: e1031faa mov      x1, xzr
033a2e98: e013803d str      q0, [sp, #0x40]
033a2e9c: e85300b9 str      w8, [sp, #0x50]
033a2ea0: e10b03ad stp      q1, q2, [sp, #0x60]
033a2ea4: e9f307b8 stur     w9, [sp, #0x7f]
033a2ea8: 98a3dc97 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
033a2eac: e013c03d ldr      q0, [sp, #0x40]
033a2eb0: 08000012 and      w8, w0, #1
033a2eb4: e95340b9 ldr      w9, [sp, #0x50]
033a2eb8: 68520039 strb     w8, [x19, #0x14]
033a2ebc: 6002803d str      q0, [x19]
033a2ec0: e10343ad ldp      q1, q0, [sp, #0x60]
033a2ec4: e8f347b8 ldur     w8, [sp, #0x7f]
033a2ec8: 691200b9 str      w9, [x19, #0x10]
033a2ecc: 6152813c stur     q1, [x19, #0x15]
033a2ed0: 6052823c stur     q0, [x19, #0x25]
033a2ed4: 683600b9 str      w8, [x19, #0x34]
033a2ed8: a81640f9 ldr      x8, [x21, #0x28]
033a2edc: e94740f9 ldr      x9, [sp, #0x88]
033a2ee0: 1f0109eb cmp      x8, x9
033a2ee4: c1000054 b.ne     #0x33a2efc
033a2ee8: f37b4aa9 ldp      x19, x30, [sp, #0xa0]
033a2eec: f55349a9 ldp      x21, x20, [sp, #0x90]
033a2ef0: ffc30291 add      sp, sp, #0xb0
033a2ef4: c0035fd6 ret      
033a2ef8: 4c397097 bl       #0xfb1428
033a2efc: 95806497 bl       #0xcc3150
