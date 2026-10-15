# Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$GetSpecialItemCell
# Next metadata method 0x1378554, not a proven function boundary.
013784f0: f40f1ef8 str      x20, [sp, #-0x20]!
013784f4: f37b01a9 stp      x19, x30, [sp, #0x10]
013784f8: 14100290 adrp     x20, #0x5578000
013784fc: 88d64439 ldrb     w8, [x20, #0x135]
01378500: f30300aa mov      x19, x0
01378504: c8000037 tbnz     w8, #0, #0x137851c
01378508: a0f40190 adrp     x0, #0x520c000
0137850c: 00dc47f9 ldr      x0, [x0, #0xfb8]
01378510: 7ce3f097 bl       #0xfb1300
01378514: 28008052 mov      w8, #1
01378518: 88d60439 strb     w8, [x20, #0x135]
0137851c: 604640f9 ldr      x0, [x19, #0x88]
01378520: 400100b5 cbnz     x0, #0x1378548
01378524: a8f40190 adrp     x8, #0x520c000
01378528: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137852c: 000140f9 ldr      x0, [x8]
01378530: 08e040b9 ldr      w8, [x0, #0xe0]
01378534: 48000035 cbnz     w8, #0x137853c
01378538: b3e3f097 bl       #0xfb1404
0137853c: e00313aa mov      x0, x19
01378540: 05000094 bl       #0x1378554 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$SelectItemCreationCell
01378544: 604640f9 ldr      x0, [x19, #0x88]
01378548: f37b41a9 ldp      x19, x30, [sp, #0x10]
0137854c: f40742f8 ldr      x20, [sp], #0x20
01378550: c0035fd6 ret
