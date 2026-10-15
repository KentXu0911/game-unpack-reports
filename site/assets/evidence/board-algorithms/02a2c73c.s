# Royal.Scenes.Game.Levels.Units.FallManager$$AddToCrossVisitCells
# Next metadata method 0x2a2c7f8, not a proven function boundary.
02a2c73c: f75bbda9 stp      x23, x22, [sp, #-0x30]!
02a2c740: f55301a9 stp      x21, x20, [sp, #0x10]
02a2c744: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2c748: b75a01b0 adrp     x23, #0x5581000
02a2c74c: e8e67939 ldrb     w8, [x23, #0xe79]
02a2c750: f403032a mov      w20, w3
02a2c754: f60302aa mov      x22, x2
02a2c758: f30301aa mov      x19, x1
02a2c75c: f50300aa mov      x21, x0
02a2c760: c8000037 tbnz     w8, #0, #0x2a2c778
02a2c764: 403c01f0 adrp     x0, #0x51b7000
02a2c768: 007c44f9 ldr      x0, [x0, #0x8f8]
02a2c76c: e5129697 bl       #0xfb1300
02a2c770: 28008052 mov      w8, #1
02a2c774: e8e63939 strb     w8, [x23, #0xe79]
02a2c778: c8024039 ldrb     w8, [x22]
02a2c77c: 88010034 cbz      w8, #0x2a2c7ac
02a2c780: b30200b4 cbz      x19, #0x2a2c7d4
02a2c784: 601240f9 ldr      x0, [x19, #0x20]
02a2c788: 600200b4 cbz      x0, #0x2a2c7d4
02a2c78c: e103142a mov      w1, w20
02a2c790: e2031faa mov      x2, xzr
02a2c794: 682f0c94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02a2c798: 200100b4 cbz      x0, #0x2a2c7bc
02a2c79c: e1031faa mov      x1, xzr
02a2c7a0: 5f750294 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
02a2c7a4: c0000036 tbz      w0, #0, #0x2a2c7bc
02a2c7a8: df020039 strb     wzr, [x22]
02a2c7ac: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c7b0: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c7b4: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2c7b8: c0035fd6 ret      
02a2c7bc: 483c01f0 adrp     x8, #0x51b7000
02a2c7c0: 087d44f9 ldr      x8, [x8, #0x8f8]
02a2c7c4: 9f0e0071 cmp      w20, #3
02a2c7c8: 81000054 b.ne     #0x2a2c7d8
02a2c7cc: a02640f9 ldr      x0, [x21, #0x48]
02a2c7d0: 800000b5 cbnz     x0, #0x2a2c7e0
02a2c7d4: 15139697 bl       #0xfb1428
02a2c7d8: a02240f9 ldr      x0, [x21, #0x40]
02a2c7dc: c0ffffb4 cbz      x0, #0x2a2c7d4
02a2c7e0: 020140f9 ldr      x2, [x8]
02a2c7e4: e10313aa mov      x1, x19
02a2c7e8: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c7ec: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c7f0: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2c7f4: 1372a517 b        #0x1389040 ; System.Collections.Generic.Stack<object>$$Push
