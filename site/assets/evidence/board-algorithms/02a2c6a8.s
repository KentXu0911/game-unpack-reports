# Royal.Scenes.Game.Levels.Units.FallManager$$IsCellTargetedByMultipleFallableItem
# Next metadata method 0x2a2c73c, not a proven function boundary.
02a2c6a8: f40f1ef8 str      x20, [sp, #-0x20]!
02a2c6ac: f37b01a9 stp      x19, x30, [sp, #0x10]
02a2c6b0: b45a01b0 adrp     x20, #0x5581000
02a2c6b4: 88e27939 ldrb     w8, [x20, #0xe78]
02a2c6b8: f30301aa mov      x19, x1
02a2c6bc: c8000037 tbnz     w8, #0, #0x2a2c6d4
02a2c6c0: e03c01d0 adrp     x0, #0x51ca000
02a2c6c4: 002c45f9 ldr      x0, [x0, #0xa58]
02a2c6c8: 0e139697 bl       #0xfb1300
02a2c6cc: 28008052 mov      w8, #1
02a2c6d0: 88e23939 strb     w8, [x20, #0xe78]
02a2c6d4: 330300b4 cbz      x19, #0x2a2c738
02a2c6d8: 600a40f9 ldr      x0, [x19, #0x10]
02a2c6dc: e00200b4 cbz      x0, #0x2a2c738
02a2c6e0: f43c01d0 adrp     x20, #0x51ca000
02a2c6e4: 942e45f9 ldr      x20, [x20, #0xa58]
02a2c6e8: e1031faa mov      x1, xzr
02a2c6ec: 4566f497 bl       #0x2746000 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_TargetItem
02a2c6f0: 810240f9 ldr      x1, [x20]
02a2c6f4: 45139697 bl       #0xfb1408
02a2c6f8: a00100b4 cbz      x0, #0x2a2c72c
02a2c6fc: 600a40f9 ldr      x0, [x19, #0x10]
02a2c700: c00100b4 cbz      x0, #0x2a2c738
02a2c704: e1031faa mov      x1, xzr
02a2c708: 3e66f497 bl       #0x2746000 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_TargetItem
02a2c70c: 680a40f9 ldr      x8, [x19, #0x10]
02a2c710: 480100b4 cbz      x8, #0x2a2c738
02a2c714: f30300aa mov      x19, x0
02a2c718: e00308aa mov      x0, x8
02a2c71c: e1031faa mov      x1, xzr
02a2c720: 2866f497 bl       #0x2745fc0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_NextItem
02a2c724: 7f0200eb cmp      x19, x0
02a2c728: e0079f1a cset     w0, ne
02a2c72c: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a2c730: f40742f8 ldr      x20, [sp], #0x20
02a2c734: c0035fd6 ret      
02a2c738: 3c139697 bl       #0xfb1428
