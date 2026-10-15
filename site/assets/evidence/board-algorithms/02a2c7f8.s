# Royal.Scenes.Game.Levels.Units.FallManager$$FindCrossItemInLeftOrRightColumn
# Next metadata method 0x2a2c918, not a proven function boundary.
02a2c7f8: f60f1df8 str      x22, [sp, #-0x30]!
02a2c7fc: f55301a9 stp      x21, x20, [sp, #0x10]
02a2c800: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2c804: b55a01b0 adrp     x21, #0x5581000
02a2c808: 364001f0 adrp     x22, #0x5233000
02a2c80c: a8ea7939 ldrb     w8, [x21, #0xe7a]
02a2c810: d6da43f9 ldr      x22, [x22, #0x7b0]
02a2c814: f30301aa mov      x19, x1
02a2c818: f40300aa mov      x20, x0
02a2c81c: 28010037 tbnz     w8, #0, #0x2a2c840
02a2c820: 204001f0 adrp     x0, #0x5233000
02a2c824: 00d843f9 ldr      x0, [x0, #0x7b0]
02a2c828: b6129697 bl       #0xfb1300
02a2c82c: 004001f0 adrp     x0, #0x522f000
02a2c830: 002442f9 ldr      x0, [x0, #0x448]
02a2c834: b3129697 bl       #0xfb1300
02a2c838: 28008052 mov      w8, #1
02a2c83c: a8ea3939 strb     w8, [x21, #0xe7a]
02a2c840: 802240f9 ldr      x0, [x20, #0x40]
02a2c844: 800600b4 cbz      x0, #0x2a2c914
02a2c848: 081840b9 ldr      w8, [x0, #0x18]
02a2c84c: 1f010071 cmp      w8, #0
02a2c850: 0d020054 b.le     #0x2a2c890
02a2c854: c10240f9 ldr      x1, [x22]
02a2c858: d971a597 bl       #0x1388fbc ; System.Collections.Generic.Stack<object>$$Pop
02a2c85c: e10313aa mov      x1, x19
02a2c860: e20300aa mov      x2, x0
02a2c864: e3031f2a mov      w3, wzr
02a2c868: 2c000094 bl       #0x2a2c918 ; Royal.Scenes.Game.Levels.Units.FallManager$$FindTargetItemFromCrossCell
02a2c86c: f50300aa mov      x21, x0
02a2c870: c00100b4 cbz      x0, #0x2a2c8a8
02a2c874: a80240f9 ldr      x8, [x21]
02a2c878: e00315aa mov      x0, x21
02a2c87c: 09ad42f9 ldr      x9, [x8, #0x558]
02a2c880: 01b142f9 ldr      x1, [x8, #0x560]
02a2c884: 20013fd6 blr      x9
02a2c888: 00010037 tbnz     w0, #0, #0x2a2c8a8
02a2c88c: 15000014 b        #0x2a2c8e0
02a2c890: 882640f9 ldr      x8, [x20, #0x48]
02a2c894: 080400b4 cbz      x8, #0x2a2c914
02a2c898: 081940b9 ldr      w8, [x8, #0x18]
02a2c89c: 1f010071 cmp      w8, #0
02a2c8a0: 2d030054 b.le     #0x2a2c904
02a2c8a4: f5031faa mov      x21, xzr
02a2c8a8: 802640f9 ldr      x0, [x20, #0x48]
02a2c8ac: 400300b4 cbz      x0, #0x2a2c914
02a2c8b0: 081840b9 ldr      w8, [x0, #0x18]
02a2c8b4: 1f050071 cmp      w8, #1
02a2c8b8: 2b010054 b.lt     #0x2a2c8dc
02a2c8bc: c10240f9 ldr      x1, [x22]
02a2c8c0: bf71a597 bl       #0x1388fbc ; System.Collections.Generic.Stack<object>$$Pop
02a2c8c4: 43008052 mov      w3, #2
02a2c8c8: e10313aa mov      x1, x19
02a2c8cc: e20300aa mov      x2, x0
02a2c8d0: 12000094 bl       #0x2a2c918 ; Royal.Scenes.Game.Levels.Units.FallManager$$FindTargetItemFromCrossCell
02a2c8d4: 1f0000f1 cmp      x0, #0
02a2c8d8: b502809a csel     x21, x21, x0, eq
02a2c8dc: 35fbffb4 cbz      x21, #0x2a2c840
02a2c8e0: b30100b4 cbz      x19, #0x2a2c914
02a2c8e4: 600a40f9 ldr      x0, [x19, #0x10]
02a2c8e8: 600100b4 cbz      x0, #0x2a2c914
02a2c8ec: e10315aa mov      x1, x21
02a2c8f0: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c8f4: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c8f8: e2031faa mov      x2, xzr
02a2c8fc: f60743f8 ldr      x22, [sp], #0x30
02a2c900: 5265f417 b        #0x2745e48 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$SetTargetItem
02a2c904: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2c908: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2c90c: f60743f8 ldr      x22, [sp], #0x30
02a2c910: c0035fd6 ret      
02a2c914: c5129697 bl       #0xfb1428
