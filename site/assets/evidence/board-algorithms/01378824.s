# Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$CanAutoExplode
# Next metadata method 0x13788a4, not a proven function boundary.
01378824: f40f1ef8 str      x20, [sp, #-0x20]!
01378828: f37b01a9 stp      x19, x30, [sp, #0x10]
0137882c: 14100290 adrp     x20, #0x5578000
01378830: 88e64439 ldrb     w8, [x20, #0x139]
01378834: f30300aa mov      x19, x0
01378838: c8000037 tbnz     w8, #0, #0x1378850
0137883c: a0f40190 adrp     x0, #0x520c000
01378840: 00dc47f9 ldr      x0, [x0, #0xfb8]
01378844: afe2f097 bl       #0xfb1300
01378848: 28008052 mov      w8, #1
0137884c: 88e60439 strb     w8, [x20, #0x139]
01378850: 68424239 ldrb     w8, [x19, #0x90]
01378854: 68000034 cbz      w8, #0x1378860
01378858: 68464239 ldrb     w8, [x19, #0x91]
0137885c: 0d000014 b        #0x1378890
01378860: a8f40190 adrp     x8, #0x520c000
01378864: 08dd47f9 ldr      x8, [x8, #0xfb8]
01378868: 000140f9 ldr      x0, [x8]
0137886c: 08e040b9 ldr      w8, [x0, #0xe0]
01378870: 48000035 cbnz     w8, #0x1378878
01378874: e4e2f097 bl       #0xfb1404
01378878: e00313aa mov      x0, x19
0137887c: 0a000094 bl       #0x13788a4 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AllCellsReadyForExplode
01378880: 08000012 and      w8, w0, #1
01378884: 29008052 mov      w9, #1
01378888: 68460239 strb     w8, [x19, #0x91]
0137888c: 69420239 strb     w9, [x19, #0x90]
01378890: f37b41a9 ldp      x19, x30, [sp, #0x10]
01378894: 1f010071 cmp      w8, #0
01378898: e0079f1a cset     w0, ne
0137889c: f40742f8 ldr      x20, [sp], #0x20
013788a0: c0035fd6 ret      
