# Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
# Next metadata method 0x338bb7c, not a proven function boundary.
0338bb58: 08040051 sub      w8, w0, #1
0338bb5c: 1f450071 cmp      w8, #0x11
0338bb60: a8000054 b.hi     #0x338bb74
0338bb64: e95b00d0 adrp     x9, #0x3f09000
0338bb68: 29b11f91 add      x9, x9, #0x7ec
0338bb6c: 20d968b8 ldr      w0, [x9, w8, sxtw #2]
0338bb70: c0035fd6 ret      
0338bb74: e0031f2a mov      w0, wzr
0338bb78: c0035fd6 ret      
