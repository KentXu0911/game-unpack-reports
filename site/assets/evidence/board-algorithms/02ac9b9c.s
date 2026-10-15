# Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$FreezeFall
# Next metadata method 0x2ac9bcc, not a proven function boundary.
02ac9b9c: fe0f1ff8 str      x30, [sp, #-0x10]!
02ac9ba0: 092840b9 ldr      w9, [x0, #0x28]
02ac9ba4: e80300aa mov      x8, x0
02ac9ba8: 003840f9 ldr      x0, [x0, #0x70]
02ac9bac: 29050011 add      w9, w9, #1
02ac9bb0: 092900b9 str      w9, [x8, #0x28]
02ac9bb4: a00000b4 cbz      x0, #0x2ac9bc8
02ac9bb8: 21008052 mov      w1, #1
02ac9bbc: e2031faa mov      x2, xzr
02ac9bc0: fe0741f8 ldr      x30, [sp], #0x10
02ac9bc4: 7389fd17 b        #0x2a2c190 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationStart
02ac9bc8: 189e9397 bl       #0xfb1428
