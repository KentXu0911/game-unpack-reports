# Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
# Next metadata method 0x33849ac, not a proven function boundary.
03384988: 08040051 sub      w8, w0, #1
0338498c: 1fc90171 cmp      w8, #0x72
03384990: a8000054 b.hi     #0x33849a4
03384994: 295c00b0 adrp     x9, #0x3f09000
03384998: 29b10b91 add      x9, x9, #0x2ec
0338499c: 20d968b8 ldr      w0, [x9, w8, sxtw #2]
033849a0: c0035fd6 ret      
033849a4: e0031f2a mov      w0, wzr
033849a8: c0035fd6 ret      
