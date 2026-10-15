# Royal.Scenes.Game.Levels.Units.FallManager$$CallFallUpdates
# Next metadata method 0x2a2b944, not a proven function boundary.
02a2b77c: f75bbda9 stp      x23, x22, [sp, #-0x30]!
02a2b780: f55301a9 stp      x21, x20, [sp, #0x10]
02a2b784: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2b788: b45a01d0 adrp     x20, #0x5581000
02a2b78c: 88ce7939 ldrb     w8, [x20, #0xe73]
02a2b790: f30300aa mov      x19, x0
02a2b794: c8000037 tbnz     w8, #0, #0x2a2b7ac
02a2b798: 203d01f0 adrp     x0, #0x51d2000
02a2b79c: 00c045f9 ldr      x0, [x0, #0xb80]
02a2b7a0: d8169697 bl       #0xfb1300
02a2b7a4: 28008052 mov      w8, #1
02a2b7a8: 88ce3939 strb     w8, [x20, #0xe73]
02a2b7ac: 601640f9 ldr      x0, [x19, #0x28]
02a2b7b0: 800c00b4 cbz      x0, #0x2a2b940
02a2b7b4: e1031f2a mov      w1, wzr
02a2b7b8: 6fffff97 bl       #0x2a2b574 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationReset
02a2b7bc: 74a20191 add      x20, x19, #0x68
02a2b7c0: 28008052 mov      w8, #1
02a2b7c4: e00314aa mov      x0, x20
02a2b7c8: e1031faa mov      x1, xzr
02a2b7cc: 68420039 strb     w8, [x19, #0x10]
02a2b7d0: aa730294 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
02a2b7d4: e00314aa mov      x0, x20
02a2b7d8: e1031faa mov      x1, xzr
02a2b7dc: 91730294 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
02a2b7e0: 600900b4 cbz      x0, #0x2a2b90c
02a2b7e4: 363d01f0 adrp     x22, #0x51d2000
02a2b7e8: d6c245f9 ldr      x22, [x22, #0xb80]
02a2b7ec: 753e40f9 ldr      x21, [x19, #0x78]
02a2b7f0: 950a00b4 cbz      x21, #0x2a2b940
02a2b7f4: a00a40f9 ldr      x0, [x21, #0x10]
02a2b7f8: 400a00b4 cbz      x0, #0x2a2b940
02a2b7fc: e1031faa mov      x1, xzr
02a2b800: 076af497 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
02a2b804: c0070036 tbz      w0, #0, #0x2a2b8fc
02a2b808: e00315aa mov      x0, x21
02a2b80c: e1031faa mov      x1, xzr
02a2b810: 8c760294 bl       #0x2ac9240 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsInBelowBoards
02a2b814: 40070037 tbnz     w0, #0, #0x2a2b8fc
02a2b818: a00a40f9 ldr      x0, [x21, #0x10]
02a2b81c: 200900b4 cbz      x0, #0x2a2b940
02a2b820: e1031faa mov      x1, xzr
02a2b824: f769f497 bl       #0x2746000 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_TargetItem
02a2b828: c00800b4 cbz      x0, #0x2a2b940
02a2b82c: 152040f9 ldr      x21, [x0, #0x40]
02a2b830: 950800b4 cbz      x21, #0x2a2b940
02a2b834: a80240f9 ldr      x8, [x21]
02a2b838: c10240f9 ldr      x1, [x22]
02a2b83c: 09554279 ldrh     w9, [x8, #0x12a]
02a2b840: 290100b4 cbz      x9, #0x2a2b864
02a2b844: 0a5940f9 ldr      x10, [x8, #0xb0]
02a2b848: 4a210091 add      x10, x10, #8
02a2b84c: 4b815ff8 ldur     x11, [x10, #-8]
02a2b850: 7f0101eb cmp      x11, x1
02a2b854: 00010054 b.eq     #0x2a2b874
02a2b858: 290500f1 subs     x9, x9, #1
02a2b85c: 4a410091 add      x10, x10, #0x10
02a2b860: 61ffff54 b.ne     #0x2a2b84c
02a2b864: a2008052 mov      w2, #5
02a2b868: e00315aa mov      x0, x21
02a2b86c: 9a569597 bl       #0xf812d4
02a2b870: 05000014 b        #0x2a2b884
02a2b874: 490140b9 ldr      w9, [x10]
02a2b878: 29150011 add      w9, w9, #5
02a2b87c: 08d1298b add      x8, x8, w9, sxtw #4
02a2b880: 00e10491 add      x0, x8, #0x138
02a2b884: 080440a9 ldp      x8, x1, [x0]
02a2b888: e00315aa mov      x0, x21
02a2b88c: 00013fd6 blr      x8
02a2b890: a80240f9 ldr      x8, [x21]
02a2b894: 77424039 ldrb     w23, [x19, #0x10]
02a2b898: c10240f9 ldr      x1, [x22]
02a2b89c: 09554279 ldrh     w9, [x8, #0x12a]
02a2b8a0: 290100b4 cbz      x9, #0x2a2b8c4
02a2b8a4: 0a5940f9 ldr      x10, [x8, #0xb0]
02a2b8a8: 4a210091 add      x10, x10, #8
02a2b8ac: 4b815ff8 ldur     x11, [x10, #-8]
02a2b8b0: 7f0101eb cmp      x11, x1
02a2b8b4: 00010054 b.eq     #0x2a2b8d4
02a2b8b8: 290500f1 subs     x9, x9, #1
02a2b8bc: 4a410091 add      x10, x10, #0x10
02a2b8c0: 61ffff54 b.ne     #0x2a2b8ac
02a2b8c4: e00315aa mov      x0, x21
02a2b8c8: e2031f2a mov      w2, wzr
02a2b8cc: 82569597 bl       #0xf812d4
02a2b8d0: 04000014 b        #0x2a2b8e0
02a2b8d4: 490180b9 ldrsw    x9, [x10]
02a2b8d8: 0811098b add      x8, x8, x9, lsl #4
02a2b8dc: 00e10491 add      x0, x8, #0x138
02a2b8e0: 080440a9 ldp      x8, x1, [x0]
02a2b8e4: ff020071 cmp      w23, #0
02a2b8e8: e00315aa mov      x0, x21
02a2b8ec: f7079f1a cset     w23, ne
02a2b8f0: 00013fd6 blr      x8
02a2b8f4: e802000a and      w8, w23, w0
02a2b8f8: 68420039 strb     w8, [x19, #0x10]
02a2b8fc: e00314aa mov      x0, x20
02a2b900: e1031faa mov      x1, xzr
02a2b904: 47730294 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
02a2b908: 20f7ffb5 cbnz     x0, #0x2a2b7ec
02a2b90c: 68424039 ldrb     w8, [x19, #0x10]
02a2b910: a8000034 cbz      w8, #0x2a2b924
02a2b914: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2b918: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2b91c: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2b920: c0035fd6 ret      
02a2b924: 601640f9 ldr      x0, [x19, #0x28]
02a2b928: c00000b4 cbz      x0, #0x2a2b940
02a2b92c: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2b930: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2b934: e1031f2a mov      w1, wzr
02a2b938: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2b93c: 15020014 b        #0x2a2c190 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationStart
02a2b940: ba169697 bl       #0xfb1428
