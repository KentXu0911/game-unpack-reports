# Royal.Scenes.Game.Mechanics.Items.CupboardItem.CupboardItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
02dd0558: f40f1ef8 str      x20, [sp, #-0x20]!
02dd055c: f37b01a9 stp      x19, x30, [sp, #0x10]
02dd0560: f403012a mov      w20, w1
02dd0564: f30300aa mov      x19, x0
02dd0568: e003012a mov      w0, w1
02dd056c: e1031faa mov      x1, xzr
02dd0570: 0fd11694 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
02dd0574: 00020036 tbz      w0, #0, #0x2dd05b4
02dd0578: 680240f9 ldr      x8, [x19]
02dd057c: e00313aa mov      x0, x19
02dd0580: 096542f9 ldr      x9, [x8, #0x4c8]
02dd0584: 016942f9 ldr      x1, [x8, #0x4d0]
02dd0588: 20013fd6 blr      x9
02dd058c: 08080051 sub      w8, w0, #2
02dd0590: f37b41a9 ldp      x19, x30, [sp, #0x10]
02dd0594: 09229f52 mov      w9, #0xf910
02dd0598: 1f210071 cmp      w8, #8
02dd059c: 08918f52 mov      w8, #0x7c88
02dd05a0: c900a072 movk     w9, #6, lsl #16
02dd05a4: 6800a072 movk     w8, #3, lsl #16
02dd05a8: 0081891a csel     w0, w8, w9, hi
02dd05ac: f40742f8 ldr      x20, [sp], #0x20
02dd05b0: c0035fd6 ret      
02dd05b4: e00313aa mov      x0, x19
02dd05b8: f37b41a9 ldp      x19, x30, [sp, #0x10]
02dd05bc: e103142a mov      w1, w20
02dd05c0: e2031faa mov      x2, xzr
02dd05c4: f40742f8 ldr      x20, [sp], #0x20
02dd05c8: b2051714 b        #0x3391c90 ; Royal.Scenes.Game.Mechanics.Items.Config.MultipleCellItemModel$$GetExplodeScore
