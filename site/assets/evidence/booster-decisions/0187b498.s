# Royal.Scenes.Game.Mechanics.Items.StaticItems.ChainItem.ChainItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
0187b498: fe0f1ff8 str      x30, [sp, #-0x10]!
0187b49c: 084040f9 ldr      x8, [x0, #0x80]
0187b4a0: 280100b4 cbz      x8, #0x187b4c4
0187b4a4: 08814139 ldrb     w8, [x8, #0x60]
0187b4a8: 88000034 cbz      w8, #0x187b4b8
0187b4ac: e0031f2a mov      w0, wzr
0187b4b0: fe0741f8 ldr      x30, [sp], #0x10
0187b4b4: c0035fd6 ret      
0187b4b8: e2031faa mov      x2, xzr
0187b4bc: fe0741f8 ldr      x30, [sp], #0x10
0187b4c0: 09c96114 b        #0x30ed8e4 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetExplodeScore
0187b4c4: d9d7dc97 bl       #0xfb1428
