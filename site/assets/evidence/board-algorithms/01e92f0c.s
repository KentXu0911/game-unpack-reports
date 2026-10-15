# Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$IsReadyForAutoExplode
# Next metadata method 0x1e92fd8, not a proven function boundary.
01e92f0c: f40f1ef8 str      x20, [sp, #-0x20]!
01e92f10: f37b01a9 stp      x19, x30, [sp, #0x10]
01e92f14: 54b701d0 adrp     x20, #0x557c000
01e92f18: 88da5339 ldrb     w8, [x20, #0x4f6]
01e92f1c: f30300aa mov      x19, x0
01e92f20: c8000037 tbnz     w8, #0, #0x1e92f38
01e92f24: 009a0190 adrp     x0, #0x51d2000
01e92f28: 00c045f9 ldr      x0, [x0, #0xb80]
01e92f2c: f578c497 bl       #0xfb1300
01e92f30: 28008052 mov      w8, #1
01e92f34: 88da1339 strb     w8, [x20, #0x4f6]
01e92f38: 685a40f9 ldr      x8, [x19, #0xb0]
01e92f3c: c80400b4 cbz      x8, #0x1e92fd4
01e92f40: 08654039 ldrb     w8, [x8, #0x19]
01e92f44: 08040035 cbnz     w8, #0x1e92fc4
01e92f48: 742240f9 ldr      x20, [x19, #0x40]
01e92f4c: 540400b4 cbz      x20, #0x1e92fd4
01e92f50: 0a9a0190 adrp     x10, #0x51d2000
01e92f54: 880240f9 ldr      x8, [x20]
01e92f58: 4ac145f9 ldr      x10, [x10, #0xb80]
01e92f5c: 09554279 ldrh     w9, [x8, #0x12a]
01e92f60: 410140f9 ldr      x1, [x10]
01e92f64: 290100b4 cbz      x9, #0x1e92f88
01e92f68: 0a5940f9 ldr      x10, [x8, #0xb0]
01e92f6c: 4a210091 add      x10, x10, #8
01e92f70: 4b815ff8 ldur     x11, [x10, #-8]
01e92f74: 7f0101eb cmp      x11, x1
01e92f78: 00010054 b.eq     #0x1e92f98
01e92f7c: 290500f1 subs     x9, x9, #1
01e92f80: 4a410091 add      x10, x10, #0x10
01e92f84: 61ffff54 b.ne     #0x1e92f70
01e92f88: e00314aa mov      x0, x20
01e92f8c: e2031f2a mov      w2, wzr
01e92f90: d1b8c397 bl       #0xf812d4
01e92f94: 04000014 b        #0x1e92fa4
01e92f98: 490180b9 ldrsw    x9, [x10]
01e92f9c: 0811098b add      x8, x8, x9, lsl #4
01e92fa0: 00e10491 add      x0, x8, #0x138
01e92fa4: 080440a9 ldp      x8, x1, [x0]
01e92fa8: e00314aa mov      x0, x20
01e92fac: 00013fd6 blr      x8
01e92fb0: a0000036 tbz      w0, #0, #0x1e92fc4
01e92fb4: 686242b9 ldr      w8, [x19, #0x260]
01e92fb8: 1f050071 cmp      w8, #1
01e92fbc: e0a79f1a cset     w0, lt
01e92fc0: 02000014 b        #0x1e92fc8
01e92fc4: e0031f2a mov      w0, wzr
01e92fc8: f37b41a9 ldp      x19, x30, [sp, #0x10]
01e92fcc: f40742f8 ldr      x20, [sp], #0x20
01e92fd0: c0035fd6 ret      
01e92fd4: 1579c497 bl       #0xfb1428
