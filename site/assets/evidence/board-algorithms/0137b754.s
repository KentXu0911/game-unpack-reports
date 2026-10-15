# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsFallStateValidForMatch
# Next metadata method 0x137b794, not a proven function boundary.
0137b754: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
0137b758: c00100b4 cbz      x0, #0x137b790
0137b75c: e1031faa mov      x1, xzr
0137b760: f30300aa mov      x19, x0
0137b764: cc1d8094 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
0137b768: 681e40f9 ldr      x8, [x19, #0x38]
0137b76c: 280100b4 cbz      x8, #0x137b790
0137b770: f30300aa mov      x19, x0
0137b774: e00308aa mov      x0, x8
0137b778: e1031faa mov      x1, xzr
0137b77c: 89428094 bl       #0x338c1a0 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_NextCell
0137b780: 7f0200eb cmp      x19, x0
0137b784: e0179f1a cset     w0, eq
0137b788: f37bc1a8 ldp      x19, x30, [sp], #0x10
0137b78c: c0035fd6 ret      
0137b790: 26d7f097 bl       #0xfb1428
