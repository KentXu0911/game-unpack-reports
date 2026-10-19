# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$AddMatchItemToList
# Linear span; next metadata entry is not a proven CFG boundary.
02398c48: f553bea9 stp      x21, x20, [sp, #-0x20]!
02398c4c: f37b01a9 stp      x19, x30, [sp, #0x10]
02398c50: 358f01d0 adrp     x21, #0x557e000
02398c54: a8c66639 ldrb     w8, [x21, #0x9b1]
02398c58: f30301aa mov      x19, x1
02398c5c: f40300aa mov      x20, x0
02398c60: c8000037 tbnz     w8, #0, #0x2398c78
02398c64: 607101f0 adrp     x0, #0x51c7000
02398c68: 005444f9 ldr      x0, [x0, #0x8a8]
02398c6c: a561b097 bl       #0xfb1300
02398c70: 28008052 mov      w8, #1
02398c74: a8c62639 strb     w8, [x21, #0x9b1]
02398c78: 804240f9 ldr      x0, [x20, #0x80]
02398c7c: 400400b4 cbz      x0, #0x2398d04
02398c80: 697101f0 adrp     x9, #0x51c7000
02398c84: 295544f9 ldr      x9, [x9, #0x8a8]
02398c88: 0a1c40b9 ldr      w10, [x0, #0x1c]
02398c8c: 080840f9 ldr      x8, [x0, #0x10]
02398c90: 290140f9 ldr      x9, [x9]
02398c94: 4a050011 add      w10, w10, #1
02398c98: 0a1c00b9 str      w10, [x0, #0x1c]
02398c9c: 480300b4 cbz      x8, #0x2398d04
02398ca0: 0a1880b9 ldrsw    x10, [x0, #0x18]
02398ca4: 0b1940b9 ldr      w11, [x8, #0x18]
02398ca8: 5f010b6b cmp      w10, w11
02398cac: 42010054 b.hs     #0x2398cd4
02398cb0: 49050011 add      w9, w10, #1
02398cb4: 080d0a8b add      x8, x8, x10, lsl #3
02398cb8: 091800b9 str      w9, [x0, #0x18]
02398cbc: 130d02f8 str      x19, [x8, #0x20]!
02398cc0: e00308aa mov      x0, x8
02398cc4: e10313aa mov      x1, x19
02398cc8: 7961b097 bl       #0xfb12ac
02398ccc: 330100b5 cbnz     x19, #0x2398cf0
02398cd0: 0d000014 b        #0x2398d04
02398cd4: 281140f9 ldr      x8, [x9, #0x20]
02398cd8: e10313aa mov      x1, x19
02398cdc: 086140f9 ldr      x8, [x8, #0xc0]
02398ce0: 022d40f9 ldr      x2, [x8, #0x58]
02398ce4: 480440f9 ldr      x8, [x2, #8]
02398ce8: 00013fd6 blr      x8
02398cec: d30000b4 cbz      x19, #0x2398d04
02398cf0: e00313aa mov      x0, x19
02398cf4: f37b41a9 ldp      x19, x30, [sp, #0x10]
02398cf8: e1031faa mov      x1, xzr
02398cfc: f553c2a8 ldp      x21, x20, [sp], #0x20
02398d00: 77e8eb17 b        #0x1e92edc ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$Reserve
02398d04: c961b097 bl       #0xfb1428
