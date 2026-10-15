# Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$ShouldExplodeMatchGroup
# Next metadata method 0x2a3be00, not a proven function boundary.
02a3bd78: f553bea9 stp      x21, x20, [sp, #-0x20]!
02a3bd7c: f37b01a9 stp      x19, x30, [sp, #0x10]
02a3bd80: 355a01d0 adrp     x21, #0x5581000
02a3bd84: a8067c39 ldrb     w8, [x21, #0xf01]
02a3bd88: f30302aa mov      x19, x2
02a3bd8c: f40301aa mov      x20, x1
02a3bd90: c8000037 tbnz     w8, #0, #0x2a3bda8
02a3bd94: 803e01b0 adrp     x0, #0x520c000
02a3bd98: 00dc47f9 ldr      x0, [x0, #0xfb8]
02a3bd9c: 59d59597 bl       #0xfb1300
02a3bda0: 28008052 mov      w8, #1
02a3bda4: a8063c39 strb     w8, [x21, #0xf01]
02a3bda8: 540200b4 cbz      x20, #0x2a3bdf0
02a3bdac: 880240f9 ldr      x8, [x20]
02a3bdb0: e00314aa mov      x0, x20
02a3bdb4: 09bd41f9 ldr      x9, [x8, #0x378]
02a3bdb8: 01c141f9 ldr      x1, [x8, #0x380]
02a3bdbc: 20013fd6 blr      x9
02a3bdc0: 1f140071 cmp      w0, #5
02a3bdc4: 61010054 b.ne     #0x2a3bdf0
02a3bdc8: 883e01b0 adrp     x8, #0x520c000
02a3bdcc: 08dd47f9 ldr      x8, [x8, #0xfb8]
02a3bdd0: 000140f9 ldr      x0, [x8]
02a3bdd4: 08e040b9 ldr      w8, [x0, #0xe0]
02a3bdd8: 48000035 cbnz     w8, #0x2a3bde0
02a3bddc: 8ad59597 bl       #0xfb1404
02a3bde0: 680240b9 ldr      w8, [x19]
02a3bde4: 1f050071 cmp      w8, #1
02a3bde8: e0079f1a cset     w0, ne
02a3bdec: 02000014 b        #0x2a3bdf4
02a3bdf0: 20008052 mov      w0, #1
02a3bdf4: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a3bdf8: f553c2a8 ldp      x21, x20, [sp], #0x20
02a3bdfc: c0035fd6 ret
