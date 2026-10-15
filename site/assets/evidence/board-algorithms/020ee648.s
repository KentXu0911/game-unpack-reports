# Royal.Scenes.Game.Levels.Units.Explode.AutoExplodeManager$$DestroyAllMatches
# Next metadata method 0x20ee7ec, not a proven function boundary.
020ee648: fc0f1cf8 str      x28, [sp, #-0x40]!
020ee64c: f75b01a9 stp      x23, x22, [sp, #0x10]
020ee650: f55302a9 stp      x21, x20, [sp, #0x20]
020ee654: f37b03a9 stp      x19, x30, [sp, #0x30]
020ee658: ff030ad1 sub      sp, sp, #0x280
020ee65c: 74a401f0 adrp     x20, #0x557d000
020ee660: 88fa5439 ldrb     w8, [x20, #0x53e]
020ee664: f30300aa mov      x19, x0
020ee668: 28010037 tbnz     w8, #0, #0x20ee68c
020ee66c: 008501b0 adrp     x0, #0x518f000
020ee670: 006042f9 ldr      x0, [x0, #0x4c0]
020ee674: 230bbb97 bl       #0xfb1300
020ee678: e08901d0 adrp     x0, #0x522c000
020ee67c: 00f846f9 ldr      x0, [x0, #0xdf0]
020ee680: 200bbb97 bl       #0xfb1300
020ee684: 28008052 mov      w8, #1
020ee688: 88fa1439 strb     w8, [x20, #0x53e]
020ee68c: 00e4006f movi     v0.2d, #0000000000000000
020ee690: e0a30691 add      x0, sp, #0x1a8
020ee694: 02138052 mov      w2, #0x98
020ee698: e1031f2a mov      w1, wzr
020ee69c: ff3b01f9 str      xzr, [sp, #0x270]
020ee6a0: e08312ad stp      q0, q0, [sp, #0x250]
020ee6a4: e093803d str      q0, [sp, #0x240]
020ee6a8: da52af97 bl       #0xcc3210
020ee6ac: 600e40f9 ldr      x0, [x19, #0x18]
020ee6b0: c00900b4 cbz      x0, #0x20ee7e8
020ee6b4: e1031faa mov      x1, xzr
020ee6b8: f62eca97 bl       #0x137a290 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$FindAllMatches
020ee6bc: 600900b4 cbz      x0, #0x20ee7e8
020ee6c0: 081840b9 ldr      w8, [x0, #0x18]
020ee6c4: f40300aa mov      x20, x0
020ee6c8: 1f050071 cmp      w8, #1
020ee6cc: ab070054 b.lt     #0x20ee7c0
020ee6d0: f78901d0 adrp     x23, #0x522c000
020ee6d4: f7fa46f9 ldr      x23, [x23, #0xdf0]
020ee6d8: f5031f2a mov      w21, wzr
020ee6dc: e8430491 add      x8, sp, #0x110
020ee6e0: 80008052 mov      w0, #4
020ee6e4: e1031faa mov      x1, xzr
020ee6e8: 702d3194 bl       #0x2d39ca8 ; Royal.Scenes.Game.Mechanics.Explode.Exploder$$Next
020ee6ec: e8a340f9 ldr      x8, [sp, #0x140]
020ee6f0: e10349ad ldp      q1, q0, [sp, #0x120]
020ee6f4: e247c03d ldr      q2, [sp, #0x110]
020ee6f8: e20240f9 ldr      x2, [x23]
020ee6fc: e83b01f9 str      x8, [sp, #0x270]
020ee700: e8430491 add      x8, sp, #0x110
020ee704: e00314aa mov      x0, x20
020ee708: e103152a mov      w1, w21
020ee70c: e20712ad stp      q2, q1, [sp, #0x240]
020ee710: e09b803d str      q0, [sp, #0x260]
020ee714: b7843494 bl       #0x2e0f9f0 ; System.Collections.Generic.List<MatchGroup>$$get_Item
020ee718: e0a30691 add      x0, sp, #0x1a8
020ee71c: e1430491 add      x1, sp, #0x110
020ee720: 02138052 mov      w2, #0x98
020ee724: ab4daf97 bl       #0xcc1dd0
020ee728: 760e40f9 ldr      x22, [x19, #0x18]
020ee72c: e0430491 add      x0, sp, #0x110
020ee730: e1a30691 add      x1, sp, #0x1a8
020ee734: 02138052 mov      w2, #0x98
020ee738: a64daf97 bl       #0xcc1dd0
020ee73c: e10352ad ldp      q1, q0, [sp, #0x240]
020ee740: e29bc03d ldr      q2, [sp, #0x260]
020ee744: e83b41f9 ldr      x8, [sp, #0x270]
020ee748: e18306ad stp      q1, q0, [sp, #0xd0]
020ee74c: e23f803d str      q2, [sp, #0xf0]
020ee750: e88300f9 str      x8, [sp, #0x100]
020ee754: b60400b4 cbz      x22, #0x20ee7e8
020ee758: e0e30091 add      x0, sp, #0x38
020ee75c: e1430491 add      x1, sp, #0x110
020ee760: 02138052 mov      w2, #0x98
020ee764: 9b4daf97 bl       #0xcc1dd0
020ee768: e18346ad ldp      q1, q0, [sp, #0xd0]
020ee76c: e23fc03d ldr      q2, [sp, #0xf0]
020ee770: e88340f9 ldr      x8, [sp, #0x100]
020ee774: e1e30091 add      x1, sp, #0x38
020ee778: e2030091 mov      x2, sp
020ee77c: 23008052 mov      w3, #1
020ee780: e00316aa mov      x0, x22
020ee784: e4031faa mov      x4, xzr
020ee788: e10300ad stp      q1, q0, [sp]
020ee78c: e20b803d str      q2, [sp, #0x20]
020ee790: e81b00f9 str      x8, [sp, #0x30]
020ee794: 6c37ca97 bl       #0x137c544 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$ExplodeMatchGroup
020ee798: 68424039 ldrb     w8, [x19, #0x10]
020ee79c: b5060011 add      w21, w21, #1
020ee7a0: 1f010071 cmp      w8, #0
020ee7a4: e8079f1a cset     w8, ne
020ee7a8: 0801202a orn      w8, w8, w0
020ee7ac: 08010012 and      w8, w8, #1
020ee7b0: 68420039 strb     w8, [x19, #0x10]
020ee7b4: 881a40b9 ldr      w8, [x20, #0x18]
020ee7b8: bf02086b cmp      w21, w8
020ee7bc: 0bf9ff54 b.lt     #0x20ee6dc
020ee7c0: 68424039 ldrb     w8, [x19, #0x10]
020ee7c4: 68000034 cbz      w8, #0x20ee7d0
020ee7c8: 08f0b752 mov      w8, #-0x40800000
020ee7cc: 682a00b9 str      w8, [x19, #0x28]
020ee7d0: ff030a91 add      sp, sp, #0x280
020ee7d4: f37b43a9 ldp      x19, x30, [sp, #0x30]
020ee7d8: f55342a9 ldp      x21, x20, [sp, #0x20]
020ee7dc: f75b41a9 ldp      x23, x22, [sp, #0x10]
020ee7e0: fc0744f8 ldr      x28, [sp], #0x40
020ee7e4: c0035fd6 ret      
020ee7e8: 100bbb97 bl       #0xfb1428
