# Royal.Scenes.Game.Levels.Units.FallManager$$FindTargetItemFromCrossCell
# Next metadata method 0x2a2cb14, not a proven function boundary.
02a2c918: f75bbda9 stp      x23, x22, [sp, #-0x30]!
02a2c91c: f55301a9 stp      x21, x20, [sp, #0x10]
02a2c920: f37b02a9 stp      x19, x30, [sp, #0x20]
02a2c924: 610f00b4 cbz      x1, #0x2a2cb10
02a2c928: 281040f9 ldr      x8, [x1, #0x20]
02a2c92c: 280f00b4 cbz      x8, #0x2a2cb10
02a2c930: 151140f9 ldr      x21, [x8, #0x20]
02a2c934: f303032a mov      w19, w3
02a2c938: f40302aa mov      x20, x2
02a2c93c: 750400b4 cbz      x21, #0x2a2c9c8
02a2c940: a00a40f9 ldr      x0, [x21, #0x10]
02a2c944: 600e00b4 cbz      x0, #0x2a2cb10
02a2c948: e1031faa mov      x1, xzr
02a2c94c: ad65f497 bl       #0x2746000 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_TargetItem
02a2c950: e00000b4 cbz      x0, #0x2a2c96c
02a2c954: 001c40f9 ldr      x0, [x0, #0x38]
02a2c958: c00d00b4 cbz      x0, #0x2a2cb10
02a2c95c: e1031faa mov      x1, xzr
02a2c960: 107e2594 bl       #0x338c1a0 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_NextCell
02a2c964: f60300aa mov      x22, x0
02a2c968: 02000014 b        #0x2a2c970
02a2c96c: f6031faa mov      x22, xzr
02a2c970: a00a40f9 ldr      x0, [x21, #0x10]
02a2c974: e00c00b4 cbz      x0, #0x2a2cb10
02a2c978: e1031faa mov      x1, xzr
02a2c97c: a165f497 bl       #0x2746000 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_TargetItem
02a2c980: e00000b4 cbz      x0, #0x2a2c99c
02a2c984: 001c40f9 ldr      x0, [x0, #0x38]
02a2c988: 400c00b4 cbz      x0, #0x2a2cb10
02a2c98c: e1031faa mov      x1, xzr
02a2c990: bf7d2594 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
02a2c994: f70300aa mov      x23, x0
02a2c998: 02000014 b        #0x2a2c9a0
02a2c99c: f7031faa mov      x23, xzr
02a2c9a0: e00315aa mov      x0, x21
02a2c9a4: e1031faa mov      x1, xzr
02a2c9a8: 79740294 bl       #0x2ac9b8c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlankCell
02a2c9ac: e0000037 tbnz     w0, #0, #0x2a2c9c8
02a2c9b0: e00315aa mov      x0, x21
02a2c9b4: e1031f2a mov      w1, wzr
02a2c9b8: e2031f2a mov      w2, wzr
02a2c9bc: e3031faa mov      x3, xzr
02a2c9c0: db740294 bl       #0x2ac9d2c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallBlocked
02a2c9c4: 40080036 tbz      w0, #0, #0x2a2cacc
02a2c9c8: 540a00b4 cbz      x20, #0x2a2cb10
02a2c9cc: 801240f9 ldr      x0, [x20, #0x20]
02a2c9d0: 000a00b4 cbz      x0, #0x2a2cb10
02a2c9d4: e103132a mov      w1, w19
02a2c9d8: e2031faa mov      x2, xzr
02a2c9dc: d62e0c94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02a2c9e0: e00800b4 cbz      x0, #0x2a2cafc
02a2c9e4: f30300aa mov      x19, x0
02a2c9e8: 000840f9 ldr      x0, [x0, #0x10]
02a2c9ec: 200900b4 cbz      x0, #0x2a2cb10
02a2c9f0: e1031faa mov      x1, xzr
02a2c9f4: 2265f497 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
02a2c9f8: 20080036 tbz      w0, #0, #0x2a2cafc
02a2c9fc: 600a40f9 ldr      x0, [x19, #0x10]
02a2ca00: 800800b4 cbz      x0, #0x2a2cb10
02a2ca04: e1031faa mov      x1, xzr
02a2ca08: 1665f497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a2ca0c: 200800b4 cbz      x0, #0x2a2cb10
02a2ca10: 080040f9 ldr      x8, [x0]
02a2ca14: e1031faa mov      x1, xzr
02a2ca18: 093d42f9 ldr      x9, [x8, #0x478]
02a2ca1c: 024142f9 ldr      x2, [x8, #0x480]
02a2ca20: 20013fd6 blr      x9
02a2ca24: c0060036 tbz      w0, #0, #0x2a2cafc
02a2ca28: 600a40f9 ldr      x0, [x19, #0x10]
02a2ca2c: 200700b4 cbz      x0, #0x2a2cb10
02a2ca30: e1031faa mov      x1, xzr
02a2ca34: 0b65f497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a2ca38: c00600b4 cbz      x0, #0x2a2cb10
02a2ca3c: 080040f9 ldr      x8, [x0]
02a2ca40: 090543f9 ldr      x9, [x8, #0x608]
02a2ca44: 010943f9 ldr      x1, [x8, #0x610]
02a2ca48: 20013fd6 blr      x9
02a2ca4c: 80050036 tbz      w0, #0, #0x2a2cafc
02a2ca50: e00313aa mov      x0, x19
02a2ca54: e1031faa mov      x1, xzr
02a2ca58: b1740294 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
02a2ca5c: 00050037 tbnz     w0, #0, #0x2a2cafc
02a2ca60: 600a40f9 ldr      x0, [x19, #0x10]
02a2ca64: 600500b4 cbz      x0, #0x2a2cb10
02a2ca68: e1031faa mov      x1, xzr
02a2ca6c: fd64f497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a2ca70: 000500b4 cbz      x0, #0x2a2cb10
02a2ca74: 141c40f9 ldr      x20, [x0, #0x38]
02a2ca78: d40400b4 cbz      x20, #0x2a2cb10
02a2ca7c: e00314aa mov      x0, x20
02a2ca80: e1031faa mov      x1, xzr
02a2ca84: 4d7e2594 bl       #0x338c3b8 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$HasTargetCell
02a2ca88: 40010036 tbz      w0, #0, #0x2a2cab0
02a2ca8c: e00314aa mov      x0, x20
02a2ca90: e1031faa mov      x1, xzr
02a2ca94: 087e2594 bl       #0x338c2b4 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_TargetCell
02a2ca98: f50300aa mov      x21, x0
02a2ca9c: e00314aa mov      x0, x20
02a2caa0: e1031faa mov      x1, xzr
02a2caa4: 7a7d2594 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
02a2caa8: bf0200eb cmp      x21, x0
02a2caac: 81020054 b.ne     #0x2a2cafc
02a2cab0: 600a40f9 ldr      x0, [x19, #0x10]
02a2cab4: e00200b4 cbz      x0, #0x2a2cb10
02a2cab8: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2cabc: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2cac0: e1031faa mov      x1, xzr
02a2cac4: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2cac8: e664f417 b        #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a2cacc: d60000b4 cbz      x22, #0x2a2cae4
02a2cad0: 140200b4 cbz      x20, #0x2a2cb10
02a2cad4: c81e40b9 ldr      w8, [x22, #0x1c]
02a2cad8: 891e40b9 ldr      w9, [x20, #0x1c]
02a2cadc: 1f01096b cmp      w8, w9
02a2cae0: 6bf7ff54 b.lt     #0x2a2c9cc
02a2cae4: d70000b4 cbz      x23, #0x2a2cafc
02a2cae8: 540100b4 cbz      x20, #0x2a2cb10
02a2caec: e81e40b9 ldr      w8, [x23, #0x1c]
02a2caf0: 891e40b9 ldr      w9, [x20, #0x1c]
02a2caf4: 1f01096b cmp      w8, w9
02a2caf8: abf6ff54 b.lt     #0x2a2c9cc
02a2cafc: f37b42a9 ldp      x19, x30, [sp, #0x20]
02a2cb00: f55341a9 ldp      x21, x20, [sp, #0x10]
02a2cb04: e0031faa mov      x0, xzr
02a2cb08: f75bc3a8 ldp      x23, x22, [sp], #0x30
02a2cb0c: c0035fd6 ret      
02a2cb10: 46129697 bl       #0xfb1428
