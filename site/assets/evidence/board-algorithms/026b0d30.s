# Royal.Scenes.Game.Levels.Units.Combo.PropellerRocketCombo$$ExplodeExtraCombo
# Next metadata method 0x26b0e00, not a proven function boundary.
026b0d30: f963bca9 stp      x25, x24, [sp, #-0x40]!
026b0d34: f75b01a9 stp      x23, x22, [sp, #0x10]
026b0d38: f55302a9 stp      x21, x20, [sp, #0x20]
026b0d3c: f37b03a9 stp      x19, x30, [sp, #0x30]
026b0d40: 97760190 adrp     x23, #0x5580000
026b0d44: 795a01d0 adrp     x25, #0x51fe000
026b0d48: e8464239 ldrb     w8, [x23, #0x91]
026b0d4c: 398b42f9 ldr      x25, [x25, #0x510]
026b0d50: f30304aa mov      x19, x4
026b0d54: f40303aa mov      x20, x3
026b0d58: f503022a mov      w21, w2
026b0d5c: f60301aa mov      x22, x1
026b0d60: f80300aa mov      x24, x0
026b0d64: c8000037 tbnz     w8, #0, #0x26b0d7c
026b0d68: 605a01d0 adrp     x0, #0x51fe000
026b0d6c: 008842f9 ldr      x0, [x0, #0x510]
026b0d70: 6401a497 bl       #0xfb1300
026b0d74: 28008052 mov      w8, #1
026b0d78: e8460239 strb     w8, [x23, #0x91]
026b0d7c: 200340f9 ldr      x0, [x25]
026b0d80: a601a497 bl       #0xfb1418
026b0d84: c00300b4 cbz      x0, #0x26b0dfc
026b0d88: e1031faa mov      x1, xzr
026b0d8c: f70300aa mov      x23, x0
026b0d90: 190aef97 bl       #0x22735f4 ; System.Object$$.ctor
026b0d94: e00317aa mov      x0, x23
026b0d98: ff1200b9 str      wzr, [x23, #0x10]
026b0d9c: 180c02f8 str      x24, [x0, #0x20]!
026b0da0: e10318aa mov      x1, x24
026b0da4: 4201a497 bl       #0xfb12ac
026b0da8: c28240ad ldp      q2, q0, [x22, #0x10]
026b0dac: c81a40f9 ldr      x8, [x22, #0x30]
026b0db0: c102c03d ldr      q1, [x22]
026b0db4: e00317aa mov      x0, x23
026b0db8: f52a00b9 str      w21, [x23, #0x28]
026b0dbc: e83a00f9 str      x8, [x23, #0x70]
026b0dc0: e28202ad stp      q2, q0, [x23, #0x50]
026b0dc4: e112803d str      q1, [x23, #0x40]
026b0dc8: 140c03f8 str      x20, [x0, #0x30]!
026b0dcc: e10314aa mov      x1, x20
026b0dd0: 3701a497 bl       #0xfb12ac
026b0dd4: e00317aa mov      x0, x23
026b0dd8: 138c03f8 str      x19, [x0, #0x38]!
026b0ddc: e10313aa mov      x1, x19
026b0de0: 3301a497 bl       #0xfb12ac
026b0de4: e00317aa mov      x0, x23
026b0de8: f37b43a9 ldp      x19, x30, [sp, #0x30]
026b0dec: f55342a9 ldp      x21, x20, [sp, #0x20]
026b0df0: f75b41a9 ldp      x23, x22, [sp, #0x10]
026b0df4: f963c4a8 ldp      x25, x24, [sp], #0x40
026b0df8: c0035fd6 ret
026b0dfc: 8b01a497 bl       #0xfb1428
