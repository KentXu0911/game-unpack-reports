# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindColumnTarget
# Next metadata method 0x20efe34, not a proven function boundary.
020efd80: ff8303d1 sub      sp, sp, #0xe0
020efd84: f46300f9 str      x20, [sp, #0xc0]
020efd88: f37b0da9 stp      x19, x30, [sp, #0xd0]
020efd8c: 228040ad ldp      q2, q0, [x1, #0x10]
020efd90: 281840f9 ldr      x8, [x1, #0x30]
020efd94: 2100c03d ldr      q1, [x1]
020efd98: 141840f9 ldr      x20, [x0, #0x30]
020efd9c: f30301aa mov      x19, x1
020efda0: 63000012 and      w3, w3, #1
020efda4: e1030291 add      x1, sp, #0x80
020efda8: 26008052 mov      w6, #1
020efdac: e4031f2a mov      w4, wzr
020efdb0: e5031faa mov      x5, xzr
020efdb4: e85b00f9 str      x8, [sp, #0xb0]
020efdb8: e28304ad stp      q2, q0, [sp, #0x90]
020efdbc: e123803d str      q1, [sp, #0x80]
020efdc0: c40e0094 bl       #0x20f38d0 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindHighestColumnScore
020efdc4: 740300b4 cbz      x20, #0x20efe30
020efdc8: e10300aa mov      x1, x0
020efdcc: e00314aa mov      x0, x20
020efdd0: e2031faa mov      x2, xzr
020efdd4: cf911994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020efdd8: 400200b4 cbz      x0, #0x20efe20
020efddc: 628240ad ldp      q2, q0, [x19, #0x10]
020efde0: 681a40f9 ldr      x8, [x19, #0x30]
020efde4: 6102c03d ldr      q1, [x19]
020efde8: 005840f9 ldr      x0, [x0, #0xb0]
020efdec: e28302ad stp      q2, q0, [sp, #0x50]
020efdf0: e83b00f9 str      x8, [sp, #0x70]
020efdf4: e113803d str      q1, [sp, #0x40]
020efdf8: c00100b4 cbz      x0, #0x20efe30
020efdfc: e10342ad ldp      q1, q0, [sp, #0x40]
020efe00: e21bc03d ldr      q2, [sp, #0x60]
020efe04: e83b40f9 ldr      x8, [sp, #0x70]
020efe08: e1030091 mov      x1, sp
020efe0c: e2031faa mov      x2, xzr
020efe10: e10300ad stp      q1, q0, [sp]
020efe14: e20b803d str      q2, [sp, #0x20]
020efe18: e81b00f9 str      x8, [sp, #0x30]
020efe1c: 797e2794 bl       #0x2acf800 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$AddIncomingExploder
020efe20: f37b4da9 ldp      x19, x30, [sp, #0xd0]
020efe24: f46340f9 ldr      x20, [sp, #0xc0]
020efe28: ff830391 add      sp, sp, #0xe0
020efe2c: c0035fd6 ret      
020efe30: 7e05bb97 bl       #0xfb1428
