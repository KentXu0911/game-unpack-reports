# Royal.Scenes.Game.Mechanics.Items.MatchItem.View.MatchItemView$$.cctor
# Next metadata method 0x1e975f4, not a proven function boundary.
01e9759c: f40f1ef8 str      x20, [sp, #-0x20]!
01e975a0: f37b01a9 stp      x19, x30, [sp, #0x10]
01e975a4: 33b701b0 adrp     x19, #0x557c000
01e975a8: 749801f0 adrp     x20, #0x51a6000
01e975ac: 687e5439 ldrb     w8, [x19, #0x51f]
01e975b0: 947240f9 ldr      x20, [x20, #0xe0]
01e975b4: c8000037 tbnz     w8, #0, #0x1e975cc
01e975b8: 609801f0 adrp     x0, #0x51a6000
01e975bc: 007040f9 ldr      x0, [x0, #0xe0]
01e975c0: 5067c497 bl       #0xfb1300
01e975c4: 28008052 mov      w8, #1
01e975c8: 687e1439 strb     w8, [x19, #0x51f]
01e975cc: 880240f9 ldr      x8, [x20]
01e975d0: c90201f0 adrp     x9, #0x3ef2000
01e975d4: 205543fd ldr      d0, [x9, #0x6a8]
01e975d8: 49008052 mov      w9, #2
01e975dc: 085d40f9 ldr      x8, [x8, #0xb8]
01e975e0: 000100fd str      d0, [x8]
01e975e4: 090900b9 str      w9, [x8, #8]
01e975e8: f37b41a9 ldp      x19, x30, [sp, #0x10]
01e975ec: f40742f8 ldr      x20, [sp], #0x20
01e975f0: c0035fd6 ret
