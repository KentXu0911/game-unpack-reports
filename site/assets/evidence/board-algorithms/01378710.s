# Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ShuffleCells
# Next metadata method 0x13787a8, not a proven function boundary.
01378710: ff8304d1 sub      sp, sp, #0x120
01378714: fc7b00f9 str      x28, [sp, #0xf0]
01378718: f55310a9 stp      x21, x20, [sp, #0x100]
0137871c: f37b11a9 stp      x19, x30, [sp, #0x110]
01378720: 13100290 adrp     x19, #0x5578000
01378724: 75f401b0 adrp     x21, #0x5205000
01378728: 68de4439 ldrb     w8, [x19, #0x137]
0137872c: b56643f9 ldr      x21, [x21, #0x6c8]
01378730: f40300aa mov      x20, x0
01378734: c8000037 tbnz     w8, #0, #0x137874c
01378738: 60f401b0 adrp     x0, #0x5205000
0137873c: 006443f9 ldr      x0, [x0, #0x6c8]
01378740: f0e2f097 bl       #0xfb1300
01378744: 28008052 mov      w8, #1
01378748: 68de0439 strb     w8, [x19, #0x137]
0137874c: a10240f9 ldr      x1, [x21]
01378750: e0031f2a mov      w0, wzr
01378754: a8184794 bl       #0x253e9f4 ; Royal.Scenes.Game.Levels.LevelContext$$Get<object>
01378758: f30300aa mov      x19, x0
0137875c: 81220091 add      x1, x20, #8
01378760: e0e30191 add      x0, sp, #0x78
01378764: 020f8052 mov      w2, #0x78
01378768: 9a25e597 bl       #0xcc1dd0
0137876c: d30100b4 cbz      x19, #0x13787a4
01378770: e0030091 mov      x0, sp
01378774: e1e30191 add      x1, sp, #0x78
01378778: 020f8052 mov      w2, #0x78
0137877c: 9525e597 bl       #0xcc1dd0
01378780: e1030091 mov      x1, sp
01378784: e00313aa mov      x0, x19
01378788: e2031faa mov      x2, xzr
0137878c: 47e35a94 bl       #0x2a314a8 ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$ShuffleCellsBasedOnDifficulty
01378790: f37b51a9 ldp      x19, x30, [sp, #0x110]
01378794: f55350a9 ldp      x21, x20, [sp, #0x100]
01378798: fc7b40f9 ldr      x28, [sp, #0xf0]
0137879c: ff830491 add      sp, sp, #0x120
013787a0: c0035fd6 ret
013787a4: 21e3f097 bl       #0xfb1428
