# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindAreaTarget
# Next metadata method 0x20ef840, not a proven function boundary.
020ef78c: ff8303d1 sub      sp, sp, #0xe0
020ef790: f46300f9 str      x20, [sp, #0xc0]
020ef794: f37b0da9 stp      x19, x30, [sp, #0xd0]
020ef798: 228040ad ldp      q2, q0, [x1, #0x10]
020ef79c: 281840f9 ldr      x8, [x1, #0x30]
020ef7a0: 2100c03d ldr      q1, [x1]
020ef7a4: 141840f9 ldr      x20, [x0, #0x30]
020ef7a8: f30301aa mov      x19, x1
020ef7ac: 42000012 and      w2, w2, #1
020ef7b0: e1030291 add      x1, sp, #0x80
020ef7b4: 25008052 mov      w5, #1
020ef7b8: e3031f2a mov      w3, wzr
020ef7bc: e4031faa mov      x4, xzr
020ef7c0: e85b00f9 str      x8, [sp, #0xb0]
020ef7c4: e28304ad stp      q2, q0, [sp, #0x90]
020ef7c8: e123803d str      q1, [sp, #0x80]
020ef7cc: e9010094 bl       #0x20eff70 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindHighestScoreForAreaExploder
020ef7d0: 740300b4 cbz      x20, #0x20ef83c
020ef7d4: e10300aa mov      x1, x0
020ef7d8: e00314aa mov      x0, x20
020ef7dc: e2031faa mov      x2, xzr
020ef7e0: 4c931994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020ef7e4: 400200b4 cbz      x0, #0x20ef82c
020ef7e8: 628240ad ldp      q2, q0, [x19, #0x10]
020ef7ec: 681a40f9 ldr      x8, [x19, #0x30]
020ef7f0: 6102c03d ldr      q1, [x19]
020ef7f4: 005840f9 ldr      x0, [x0, #0xb0]
020ef7f8: e28302ad stp      q2, q0, [sp, #0x50]
020ef7fc: e83b00f9 str      x8, [sp, #0x70]
020ef800: e113803d str      q1, [sp, #0x40]
020ef804: c00100b4 cbz      x0, #0x20ef83c
020ef808: e10342ad ldp      q1, q0, [sp, #0x40]
020ef80c: e21bc03d ldr      q2, [sp, #0x60]
020ef810: e83b40f9 ldr      x8, [sp, #0x70]
020ef814: e1030091 mov      x1, sp
020ef818: e2031faa mov      x2, xzr
020ef81c: e10300ad stp      q1, q0, [sp]
020ef820: e20b803d str      q2, [sp, #0x20]
020ef824: e81b00f9 str      x8, [sp, #0x30]
020ef828: f67f2794 bl       #0x2acf800 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$AddIncomingExploder
020ef82c: f37b4da9 ldp      x19, x30, [sp, #0xd0]
020ef830: f46340f9 ldr      x20, [sp, #0xc0]
020ef834: ff830391 add      sp, sp, #0xe0
020ef838: c0035fd6 ret      
020ef83c: fb06bb97 bl       #0xfb1428
