# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindRowTarget
# Next metadata method 0x20efd80, not a proven function boundary.
020efcd0: ff8303d1 sub      sp, sp, #0xe0
020efcd4: f46300f9 str      x20, [sp, #0xc0]
020efcd8: f37b0da9 stp      x19, x30, [sp, #0xd0]
020efcdc: 228040ad ldp      q2, q0, [x1, #0x10]
020efce0: 281840f9 ldr      x8, [x1, #0x30]
020efce4: 2100c03d ldr      q1, [x1]
020efce8: 141840f9 ldr      x20, [x0, #0x30]
020efcec: f30301aa mov      x19, x1
020efcf0: 63000012 and      w3, w3, #1
020efcf4: e1030291 add      x1, sp, #0x80
020efcf8: 25008052 mov      w5, #1
020efcfc: e4031f2a mov      w4, wzr
020efd00: e85b00f9 str      x8, [sp, #0xb0]
020efd04: e28304ad stp      q2, q0, [sp, #0x90]
020efd08: e123803d str      q1, [sp, #0x80]
020efd0c: d9130094 bl       #0x20f4c70 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindHighestRowScore
020efd10: 740300b4 cbz      x20, #0x20efd7c
020efd14: e10300aa mov      x1, x0
020efd18: e00314aa mov      x0, x20
020efd1c: e2031faa mov      x2, xzr
020efd20: fc911994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020efd24: 400200b4 cbz      x0, #0x20efd6c
020efd28: 628240ad ldp      q2, q0, [x19, #0x10]
020efd2c: 681a40f9 ldr      x8, [x19, #0x30]
020efd30: 6102c03d ldr      q1, [x19]
020efd34: 005840f9 ldr      x0, [x0, #0xb0]
020efd38: e28302ad stp      q2, q0, [sp, #0x50]
020efd3c: e83b00f9 str      x8, [sp, #0x70]
020efd40: e113803d str      q1, [sp, #0x40]
020efd44: c00100b4 cbz      x0, #0x20efd7c
020efd48: e10342ad ldp      q1, q0, [sp, #0x40]
020efd4c: e21bc03d ldr      q2, [sp, #0x60]
020efd50: e83b40f9 ldr      x8, [sp, #0x70]
020efd54: e1030091 mov      x1, sp
020efd58: e2031faa mov      x2, xzr
020efd5c: e10300ad stp      q1, q0, [sp]
020efd60: e20b803d str      q2, [sp, #0x20]
020efd64: e81b00f9 str      x8, [sp, #0x30]
020efd68: a67e2794 bl       #0x2acf800 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$AddIncomingExploder
020efd6c: f37b4da9 ldp      x19, x30, [sp, #0xd0]
020efd70: f46340f9 ldr      x20, [sp, #0xc0]
020efd74: ff830391 add      sp, sp, #0xe0
020efd78: c0035fd6 ret      
020efd7c: ab05bb97 bl       #0xfb1428
