# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerDefaultStrategy$$OnTargetReached
# Next metadata method 0x33a2f9c, not a proven function boundary.
033a2f00: c10400b4 cbz      x1, #0x33a2f98
033a2f04: ff4303d1 sub      sp, sp, #0xd0
033a2f08: f45b00f9 str      x20, [sp, #0xb0]
033a2f0c: f37b0ca9 stp      x19, x30, [sp, #0xc0]
033a2f10: 00102e1e fmov     s0, #1.00000000
033a2f14: e8630291 add      x8, sp, #0x98
033a2f18: e0031faa mov      x0, xzr
033a2f1c: f40302aa mov      x20, x2
033a2f20: f30301aa mov      x19, x1
033a2f24: 7f077f97 bl       #0x1364d20 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.JellyItem.View.JellySpreadData$$CreateSelfSpreading
033a2f28: e083c93c ldur     q0, [sp, #0x98]
033a2f2c: e85740f9 ldr      x8, [sp, #0xa8]
033a2f30: e1030291 add      x1, sp, #0x80
033a2f34: e2030191 add      x2, sp, #0x40
033a2f38: e023803d str      q0, [sp, #0x80]
033a2f3c: e84b00f9 str      x8, [sp, #0x90]
033a2f40: 881a40f9 ldr      x8, [x20, #0x30]
033a2f44: 818240ad ldp      q1, q0, [x20, #0x10]
033a2f48: 8202c03d ldr      q2, [x20]
033a2f4c: e00313aa mov      x0, x19
033a2f50: e3031faa mov      x3, xzr
033a2f54: e83b00f9 str      x8, [sp, #0x70]
033a2f58: e18302ad stp      q1, q0, [sp, #0x50]
033a2f5c: e213803d str      q2, [sp, #0x40]
033a2f60: 90acdc97 bl       #0x2ace1a0 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$TrySetJellySpreadDataForExploder
033a2f64: 881a40f9 ldr      x8, [x20, #0x30]
033a2f68: 818240ad ldp      q1, q0, [x20, #0x10]
033a2f6c: 8202c03d ldr      q2, [x20]
033a2f70: e1030091 mov      x1, sp
033a2f74: e00313aa mov      x0, x19
033a2f78: e2031faa mov      x2, xzr
033a2f7c: e81b00f9 str      x8, [sp, #0x30]
033a2f80: e18300ad stp      q1, q0, [sp, #0x10]
033a2f84: e203803d str      q2, [sp]
033a2f88: 2e9fdc97 bl       #0x2acac40 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$ExplodeCurrentItem
033a2f8c: f37b4ca9 ldp      x19, x30, [sp, #0xc0]
033a2f90: f45b40f9 ldr      x20, [sp, #0xb0]
033a2f94: ff430391 add      sp, sp, #0xd0
033a2f98: c0035fd6 ret      
