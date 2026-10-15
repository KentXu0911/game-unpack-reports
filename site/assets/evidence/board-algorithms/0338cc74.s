# Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$Explode
# Next metadata method 0x338cd10, not a proven function boundary.
0338cc74: ff8302d1 sub      sp, sp, #0xa0
0338cc78: f44300f9 str      x20, [sp, #0x80]
0338cc7c: f37b09a9 stp      x19, x30, [sp, #0x90]
0338cc80: f30300aa mov      x19, x0
0338cc84: 003840f9 ldr      x0, [x0, #0x70]
0338cc88: 200400b4 cbz      x0, #0x338cd0c
0338cc8c: f40301aa mov      x20, x1
0338cc90: 210c40b9 ldr      w1, [x1, #0xc]
0338cc94: e2031faa mov      x2, xzr
0338cc98: 2ab5e697 bl       #0x2d3a140 ; Royal.Scenes.Game.Mechanics.Explode.ExploderContainer$$ContainsExploder
0338cc9c: 00030037 tbnz     w0, #0, #0x338ccfc
0338cca0: 603a40f9 ldr      x0, [x19, #0x70]
0338cca4: 400300b4 cbz      x0, #0x338cd0c
0338cca8: 810e40b9 ldr      w1, [x20, #0xc]
0338ccac: e2031faa mov      x2, xzr
0338ccb0: 0eb5e697 bl       #0x2d3a0e8 ; Royal.Scenes.Game.Mechanics.Explode.ExploderContainer$$AddToExploders
0338ccb4: 881a40f9 ldr      x8, [x20, #0x30]
0338ccb8: 818240ad ldp      q1, q0, [x20, #0x10]
0338ccbc: 8202c03d ldr      q2, [x20]
0338ccc0: e1030191 add      x1, sp, #0x40
0338ccc4: e81b00f9 str      x8, [sp, #0x30]
0338ccc8: e18300ad stp      q1, q0, [sp, #0x10]
0338cccc: e203803d str      q2, [sp]
0338ccd0: 680240f9 ldr      x8, [x19]
0338ccd4: e00740ad ldp      q0, q1, [sp]
0338ccd8: e20bc03d ldr      q2, [sp, #0x20]
0338ccdc: e91b40f9 ldr      x9, [sp, #0x30]
0338cce0: 0a2d42f9 ldr      x10, [x8, #0x458]
0338cce4: e00702ad stp      q0, q1, [sp, #0x40]
0338cce8: e21b803d str      q2, [sp, #0x60]
0338ccec: e93b00f9 str      x9, [sp, #0x70]
0338ccf0: 023142f9 ldr      x2, [x8, #0x460]
0338ccf4: e00313aa mov      x0, x19
0338ccf8: 40013fd6 blr      x10
0338ccfc: f37b49a9 ldp      x19, x30, [sp, #0x90]
0338cd00: f44340f9 ldr      x20, [sp, #0x80]
0338cd04: ff830291 add      sp, sp, #0xa0
0338cd08: c0035fd6 ret
0338cd0c: c7917097 bl       #0xfb1428
