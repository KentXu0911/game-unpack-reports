# Royal.Scenes.Game.Levels.Units.FallManager$$CreateItemFromFillingCell
# Next metadata method 0x2a2c058, not a proven function boundary.
02a2be94: e80f1dfc str      d8, [sp, #-0x30]!
02a2be98: f60700f9 str      x22, [sp, #8]
02a2be9c: f55301a9 stp      x21, x20, [sp, #0x10]
02a2bea0: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2bea4: b65a01d0 adrp     x22, #0x5581000
02a2bea8: c8d27939 ldrb     w8, [x22, #0xe74]
02a2beac: f40302aa mov      x20, x2
02a2beb0: f30301aa mov      x19, x1
02a2beb4: f50300aa mov      x21, x0
02a2beb8: 28010037 tbnz     w8, #0, #0x2a2bedc
02a2bebc: 403d01b0 adrp     x0, #0x51d4000
02a2bec0: 004845f9 ldr      x0, [x0, #0xa90]
02a2bec4: 0f159697 bl       #0xfb1300
02a2bec8: 203d01f0 adrp     x0, #0x51d2000
02a2becc: 00c045f9 ldr      x0, [x0, #0xb80]
02a2bed0: 0c159697 bl       #0xfb1300
02a2bed4: 28008052 mov      w8, #1
02a2bed8: c8d23939 strb     w8, [x22, #0xe74]
02a2bedc: d30b00b4 cbz      x19, #0x2a2c054
02a2bee0: a01240f9 ldr      x0, [x21, #0x20]
02a2bee4: 800b00b4 cbz      x0, #0x2a2c054
02a2bee8: 483d01b0 adrp     x8, #0x51d4000
02a2beec: 084945f9 ldr      x8, [x8, #0xa90]
02a2bef0: 611a40b9 ldr      w1, [x19, #0x18]
02a2bef4: 020140f9 ldr      x2, [x8]
02a2bef8: 6d730094 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02a2befc: c0000036 tbz      w0, #0, #0x2a2bf14
02a2bf00: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2bf04: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2bf08: f60740f9 ldr      x22, [sp, #8]
02a2bf0c: e80743fc ldr      d8, [sp], #0x30
02a2bf10: c0035fd6 ret      
02a2bf14: e00313aa mov      x0, x19
02a2bf18: e1031faa mov      x1, xzr
02a2bf1c: 28900294 bl       #0x2acffbc ; Royal.Scenes.Game.Mechanics.Board.Cell.FillingCellModel$$get_HasCreatedItem
02a2bf20: 40020036 tbz      w0, #0, #0x2a2bf68
02a2bf24: 687240f9 ldr      x8, [x19, #0xe0]
02a2bf28: 680900b4 cbz      x8, #0x2a2c054
02a2bf2c: 001d40f9 ldr      x0, [x8, #0x38]
02a2bf30: 200900b4 cbz      x0, #0x2a2c054
02a2bf34: e1031faa mov      x1, xzr
02a2bf38: 20812594 bl       #0x338c3b8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$HasTargetCell
02a2bf3c: 20fe0737 tbnz     w0, #0, #0x2a2bf00
02a2bf40: b40800b4 cbz      x20, #0x2a2c054
02a2bf44: 800a40f9 ldr      x0, [x20, #0x10]
02a2bf48: 600800b4 cbz      x0, #0x2a2c054
02a2bf4c: 617240f9 ldr      x1, [x19, #0xe0]
02a2bf50: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2bf54: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2bf58: f60740f9 ldr      x22, [sp, #8]
02a2bf5c: e2031faa mov      x2, xzr
02a2bf60: e80743fc ldr      d8, [sp], #0x30
02a2bf64: b967f417 b        #0x2745e48 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$SetTargetItem
02a2bf68: 740700b4 cbz      x20, #0x2a2c054
02a2bf6c: 800a40f9 ldr      x0, [x20, #0x10]
02a2bf70: 200700b4 cbz      x0, #0x2a2c054
02a2bf74: 681e40bd ldr      s8, [x19, #0x1c]
02a2bf78: e1031faa mov      x1, xzr
02a2bf7c: 2868f497 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
02a2bf80: 00fc0737 tbnz     w0, #0, #0x2a2bf00
02a2bf84: a81e40f9 ldr      x8, [x21, #0x38]
02a2bf88: 680600b4 cbz      x8, #0x2a2c054
02a2bf8c: 001d40f9 ldr      x0, [x8, #0x38]
02a2bf90: 200600b4 cbz      x0, #0x2a2c054
02a2bf94: 601a40bd ldr      s0, [x19, #0x18]
02a2bf98: 01d9215e scvtf    s1, s8
02a2bf9c: 02102e1e fmov     s2, #1.00000000
02a2bfa0: 2128221e fadd     s1, s1, s2
02a2bfa4: 00d8215e scvtf    s0, s0
02a2bfa8: e203271e fmov     s2, wzr
02a2bfac: e10313aa mov      x1, x19
02a2bfb0: e2031faa mov      x2, xzr
02a2bfb4: dcf5da97 bl       #0x20e9724 ; Royal.Scenes.Game.Levels.Units.ItemCreation.ItemCreator$$CreateItemForFillingCellAt
02a2bfb8: 40faffb4 cbz      x0, #0x2a2bf00
02a2bfbc: f50300aa mov      x21, x0
02a2bfc0: 800a40f9 ldr      x0, [x20, #0x10]
02a2bfc4: 800400b4 cbz      x0, #0x2a2c054
02a2bfc8: e10315aa mov      x1, x21
02a2bfcc: e2031faa mov      x2, xzr
02a2bfd0: 9e67f497 bl       #0x2745e48 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$SetTargetItem
02a2bfd4: b42240f9 ldr      x20, [x21, #0x40]
02a2bfd8: f40300b4 cbz      x20, #0x2a2c054
02a2bfdc: 2a3d01f0 adrp     x10, #0x51d2000
02a2bfe0: 880240f9 ldr      x8, [x20]
02a2bfe4: 4ac145f9 ldr      x10, [x10, #0xb80]
02a2bfe8: 09554279 ldrh     w9, [x8, #0x12a]
02a2bfec: 410140f9 ldr      x1, [x10]
02a2bff0: 290100b4 cbz      x9, #0x2a2c014
02a2bff4: 0a5940f9 ldr      x10, [x8, #0xb0]
02a2bff8: 4a210091 add      x10, x10, #8
02a2bffc: 4b815ff8 ldur     x11, [x10, #-8]
02a2c000: 7f0101eb cmp      x11, x1
02a2c004: 00010054 b.eq     #0x2a2c024
02a2c008: 290500f1 subs     x9, x9, #1
02a2c00c: 4a410091 add      x10, x10, #0x10
02a2c010: 61ffff54 b.ne     #0x2a2bffc
02a2c014: c2008052 mov      w2, #6
02a2c018: e00314aa mov      x0, x20
02a2c01c: ae549597 bl       #0xf812d4
02a2c020: 05000014 b        #0x2a2c034
02a2c024: 490140b9 ldr      w9, [x10]
02a2c028: 29190011 add      w9, w9, #6
02a2c02c: 08d1298b add      x8, x8, w9, sxtw #4
02a2c030: 00e10491 add      x0, x8, #0x138
02a2c034: 030840a9 ldp      x3, x2, [x0]
02a2c038: e00314aa mov      x0, x20
02a2c03c: e10313aa mov      x1, x19
02a2c040: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c044: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c048: f60740f9 ldr      x22, [sp, #8]
02a2c04c: e80743fc ldr      d8, [sp], #0x30
02a2c050: 60001fd6 br       x3
02a2c054: f5149697 bl       #0xfb1428
