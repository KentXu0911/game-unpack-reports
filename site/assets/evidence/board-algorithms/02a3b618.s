# Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$SetAllItems
# Next metadata method 0x2a3b670, not a proven function boundary.
02a3b618: f40f1ef8 str      x20, [sp, #-0x20]!
02a3b61c: f37b01a9 stp      x19, x30, [sp, #0x10]
02a3b620: 610200b4 cbz      x1, #0x2a3b66c
02a3b624: f40300aa mov      x20, x0
02a3b628: 201c40f9 ldr      x0, [x1, #0x38]
02a3b62c: f30301aa mov      x19, x1
02a3b630: e00100b4 cbz      x0, #0x2a3b66c
02a3b634: e1031faa mov      x1, xzr
02a3b638: 3b262594 bl       #0x3384f24 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$ClearFromAllRegisteredCells
02a3b63c: 940100b4 cbz      x20, #0x2a3b66c
02a3b640: 800a40f9 ldr      x0, [x20, #0x10]
02a3b644: 400100b4 cbz      x0, #0x2a3b66c
02a3b648: e1031faa mov      x1, xzr
02a3b64c: c229f497 bl       #0x2745d54 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$ClearAllItems
02a3b650: 800a40f9 ldr      x0, [x20, #0x10]
02a3b654: c00000b4 cbz      x0, #0x2a3b66c
02a3b658: e10313aa mov      x1, x19
02a3b65c: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a3b660: e2031faa mov      x2, xzr
02a3b664: f40742f8 ldr      x20, [sp], #0x20
02a3b668: da29f417 b        #0x2745dd0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$SetAllItems
02a3b66c: 6fd79597 bl       #0xfb1428
