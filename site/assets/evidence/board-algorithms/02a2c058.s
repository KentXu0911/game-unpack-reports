# Royal.Scenes.Game.Levels.Units.FallManager$$FindCrossItem
# Next metadata method 0x2a2c190, not a proven function boundary.
02a2c058: f60f1df8 str      x22, [sp, #-0x30]!
02a2c05c: f55301a9 stp      x21, x20, [sp, #0x10]
02a2c060: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2c064: b55a01b0 adrp     x21, #0x5581000
02a2c068: a8de7939 ldrb     w8, [x21, #0xe77]
02a2c06c: f30301aa mov      x19, x1
02a2c070: f40300aa mov      x20, x0
02a2c074: c8000037 tbnz     w8, #0, #0x2a2c08c
02a2c078: c03c01b0 adrp     x0, #0x51c5000
02a2c07c: 00ac47f9 ldr      x0, [x0, #0xf58]
02a2c080: a0149697 bl       #0xfb1300
02a2c084: 28008052 mov      w8, #1
02a2c088: a8de3939 strb     w8, [x21, #0xe77]
02a2c08c: ff330039 strb     wzr, [sp, #0xc]
02a2c090: ff230039 strb     wzr, [sp, #8]
02a2c094: 802240f9 ldr      x0, [x20, #0x40]
02a2c098: a00700b4 cbz      x0, #0x2a2c18c
02a2c09c: d53c01b0 adrp     x21, #0x51c5000
02a2c0a0: b5ae47f9 ldr      x21, [x21, #0xf58]
02a2c0a4: a10240f9 ldr      x1, [x21]
02a2c0a8: a672a597 bl       #0x1388b40 ; System.Collections.Generic.Stack<object>$$Clear
02a2c0ac: 802640f9 ldr      x0, [x20, #0x48]
02a2c0b0: e00600b4 cbz      x0, #0x2a2c18c
02a2c0b4: a10240f9 ldr      x1, [x21]
02a2c0b8: a272a597 bl       #0x1388b40 ; System.Collections.Generic.Stack<object>$$Clear
02a2c0bc: 930600b4 cbz      x19, #0x2a2c18c
02a2c0c0: 766a40b9 ldr      w22, [x19, #0x68]
02a2c0c4: 28008052 mov      w8, #1
02a2c0c8: f50313aa mov      x21, x19
02a2c0cc: e8330039 strb     w8, [sp, #0xc]
02a2c0d0: e8230039 strb     w8, [sp, #8]
02a2c0d4: e00315aa mov      x0, x21
02a2c0d8: e1031faa mov      x1, xzr
02a2c0dc: 10770294 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
02a2c0e0: a0040037 tbnz     w0, #0, #0x2a2c174
02a2c0e4: e10315aa mov      x1, x21
02a2c0e8: e2031faa mov      x2, xzr
02a2c0ec: 60000094 bl       #0x2a2c26c ; Royal.Scenes.Game.Levels.Units.FallManager$$IsFallPossibleFromCellToCell
02a2c0f0: 20040036 tbz      w0, #0, #0x2a2c174
02a2c0f4: e10315aa mov      x1, x21
02a2c0f8: 6c010094 bl       #0x2a2c6a8 ; Royal.Scenes.Game.Levels.Units.FallManager$$IsCellTargetedByMultipleFallableItem
02a2c0fc: c0030037 tbnz     w0, #0, #0x2a2c174
02a2c100: a86a40b9 ldr      w8, [x21, #0x68]
02a2c104: df02086b cmp      w22, w8
02a2c108: 61030054 b.ne     #0x2a2c174
02a2c10c: e00315aa mov      x0, x21
02a2c110: e1031faa mov      x1, xzr
02a2c114: 9e760294 bl       #0x2ac9b8c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlankCell
02a2c118: 60010037 tbnz     w0, #0, #0x2a2c144
02a2c11c: e2230091 add      x2, sp, #8
02a2c120: 63008052 mov      w3, #3
02a2c124: e00314aa mov      x0, x20
02a2c128: e10315aa mov      x1, x21
02a2c12c: 84010094 bl       #0x2a2c73c ; Royal.Scenes.Game.Levels.Units.FallManager$$AddToCrossVisitCells
02a2c130: e2330091 add      x2, sp, #0xc
02a2c134: e3008052 mov      w3, #7
02a2c138: e00314aa mov      x0, x20
02a2c13c: e10315aa mov      x1, x21
02a2c140: 7f010094 bl       #0x2a2c73c ; Royal.Scenes.Game.Levels.Units.FallManager$$AddToCrossVisitCells
02a2c144: a01240f9 ldr      x0, [x21, #0x20]
02a2c148: 200200b4 cbz      x0, #0x2a2c18c
02a2c14c: 21008052 mov      w1, #1
02a2c150: e2031faa mov      x2, xzr
02a2c154: f8300c94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02a2c158: e00000b4 cbz      x0, #0x2a2c174
02a2c15c: e8334039 ldrb     w8, [sp, #0xc]
02a2c160: e9234039 ldrb     w9, [sp, #8]
02a2c164: f50300aa mov      x21, x0
02a2c168: 2801082a orr      w8, w9, w8
02a2c16c: 1f1d0072 tst      w8, #0xff
02a2c170: 21fbff54 b.ne     #0x2a2c0d4
02a2c174: e00314aa mov      x0, x20
02a2c178: e10313aa mov      x1, x19
02a2c17c: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c180: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c184: f60743f8 ldr      x22, [sp], #0x30
02a2c188: 9c010014 b        #0x2a2c7f8 ; Royal.Scenes.Game.Levels.Units.FallManager$$FindCrossItemInLeftOrRightColumn
02a2c18c: a7149697 bl       #0xfb1428
