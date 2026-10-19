# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerPropellerComboStrategy$$NextExploder
# Linear span; next metadata entry is not a proven CFG boundary.
033a3af8: ffc302d1 sub      sp, sp, #0xb0
033a3afc: f55309a9 stp      x21, x20, [sp, #0x90]
033a3b00: f37b0aa9 stp      x19, x30, [sp, #0xa0]
033a3b04: 55d03bd5 mrs      x21, tpidr_el0
033a3b08: f40308aa mov      x20, x8
033a3b0c: a81640f9 ldr      x8, [x21, #0x28]
033a3b10: 00e4006f movi     v0.2d, #0000000000000000
033a3b14: f30300aa mov      x19, x0
033a3b18: e84700f9 str      x8, [sp, #0x88]
033a3b1c: e8230091 add      x8, sp, #8
033a3b20: ff7f04a9 stp      xzr, xzr, [sp, #0x40]
033a3b24: ff5300b9 str      wzr, [sp, #0x50]
033a3b28: e00303ad stp      q0, q0, [sp, #0x60]
033a3b2c: fff307b8 stur     wzr, [sp, #0x7f]
033a3b30: bcfcff97 bl       #0x33a2e20 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerDefaultStrategy$$NextExploder
033a3b34: e81b40b9 ldr      w8, [sp, #0x18]
033a3b38: e083c03c ldur     q0, [sp, #8]
033a3b3c: e1d3c13c ldur     q1, [sp, #0x1d]
033a3b40: e2d3c23c ldur     q2, [sp, #0x2d]
033a3b44: e93f40b9 ldr      w9, [sp, #0x3c]
033a3b48: e85300b9 str      w8, [sp, #0x50]
033a3b4c: e013803d str      q0, [sp, #0x40]
033a3b50: e10b03ad stp      q1, q2, [sp, #0x60]
033a3b54: e9f307b8 stur     w9, [sp, #0x7f]
033a3b58: 69a24039 ldrb     w9, [x19, #0x28]
033a3b5c: 881200b9 str      w8, [x20, #0x10]
033a3b60: 8002803d str      q0, [x20]
033a3b64: e8f347b8 ldur     w8, [sp, #0x7f]
033a3b68: e10343ad ldp      q1, q0, [sp, #0x60]
033a3b6c: 89520039 strb     w9, [x20, #0x14]
033a3b70: 883600b9 str      w8, [x20, #0x34]
033a3b74: 8052823c stur     q0, [x20, #0x25]
033a3b78: 8152813c stur     q1, [x20, #0x15]
033a3b7c: a81640f9 ldr      x8, [x21, #0x28]
033a3b80: e94740f9 ldr      x9, [sp, #0x88]
033a3b84: 1f0109eb cmp      x8, x9
033a3b88: a1000054 b.ne     #0x33a3b9c
033a3b8c: f37b4aa9 ldp      x19, x30, [sp, #0xa0]
033a3b90: f55349a9 ldp      x21, x20, [sp, #0x90]
033a3b94: ffc30291 add      sp, sp, #0xb0
033a3b98: c0035fd6 ret      
033a3b9c: 6d7d6497 bl       #0xcc3150
