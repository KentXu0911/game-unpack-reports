# Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$.cctor
# Next metadata method 0x20ede64, not a proven function boundary.
020edde8: f40f1ef8 str      x20, [sp, #-0x20]!
020eddec: f37b01a9 stp      x19, x30, [sp, #0x10]
020eddf0: 94a40190 adrp     x20, #0x557d000
020eddf4: d38501b0 adrp     x19, #0x51a6000
020eddf8: 88ce5439 ldrb     w8, [x20, #0x533]
020eddfc: 737240f9 ldr      x19, [x19, #0xe0]
020ede00: 28010037 tbnz     w8, #0, #0x20ede24
020ede04: c08501b0 adrp     x0, #0x51a6000
020ede08: 007040f9 ldr      x0, [x0, #0xe0]
020ede0c: 3d0dbb97 bl       #0xfb1300
020ede10: c08801f0 adrp     x0, #0x5208000
020ede14: 000443f9 ldr      x0, [x0, #0x608]
020ede18: 3a0dbb97 bl       #0xfb1300
020ede1c: 28008052 mov      w8, #1
020ede20: 88ce1439 strb     w8, [x20, #0x533]
020ede24: 600240f9 ldr      x0, [x19]
020ede28: d48801f0 adrp     x20, #0x5208000
020ede2c: 08e040b9 ldr      w8, [x0, #0xe0]
020ede30: 940643f9 ldr      x20, [x20, #0x608]
020ede34: 68000035 cbnz     w8, #0x20ede40
020ede38: 730dbb97 bl       #0xfb1404
020ede3c: 600240f9 ldr      x0, [x19]
020ede40: 085c40f9 ldr      x8, [x0, #0xb8]
020ede44: 890240f9 ldr      x9, [x20]
020ede48: 0005402d ldp      s0, s1, [x8]
020ede4c: 285d40f9 ldr      x8, [x9, #0xb8]
020ede50: 0008211e fmul     s0, s0, s1
020ede54: 000100bd str      s0, [x8]
020ede58: f37b41a9 ldp      x19, x30, [sp, #0x10]
020ede5c: f40742f8 ldr      x20, [sp], #0x20
020ede60: c0035fd6 ret
