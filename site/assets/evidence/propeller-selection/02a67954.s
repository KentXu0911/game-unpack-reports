# Royal.Scenes.Game.Mechanics.Items.BoxingGloveItem.BoxingGloveItemModel$$GetExplodeScore
# Next metadata method 0x2a67988, not a proven function boundary.
02a67954: fe0f1ff8 str      x30, [sp, #-0x10]!
02a67958: 080040f9 ldr      x8, [x0]
02a6795c: 096542f9 ldr      x9, [x8, #0x4c8]
02a67960: 016942f9 ldr      x1, [x8, #0x4d0]
02a67964: 20013fd6 blr      x9
02a67968: 08229f52 mov      w8, #0xf910
02a6796c: a9828952 mov      w9, #0x4c15
02a67970: 1f040071 cmp      w0, #1
02a67974: c800a072 movk     w8, #6, lsl #16
02a67978: 2901a072 movk     w9, #9, lsl #16
02a6797c: 2001881a csel     w0, w9, w8, eq
02a67980: fe0741f8 ldr      x30, [sp], #0x10
02a67984: c0035fd6 ret      
