# Royal.Scenes.Game.Levels.Units.BoardManager.<>c__DisplayClass44_0$$<StartChangingBoard>b__1
# Next metadata method 0x27566cc, not a proven function boundary.
02756644: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
02756648: f30300aa mov      x19, x0
0275664c: 000840f9 ldr      x0, [x0, #0x10]
02756650: c00300b4 cbz      x0, #0x27566c8
02756654: 91feff97 bl       #0x2756098 ; Royal.Scenes.Game.Levels.Units.BoardManager$$AreThereIncomingItemsToCurrentBoard
02756658: c0000037 tbnz     w0, #0, #0x2756670
0275665c: 680a40f9 ldr      x8, [x19, #0x10]
02756660: 480300b4 cbz      x8, #0x27566c8
02756664: 003d40b9 ldr      w0, [x8, #0x3c]
02756668: e1031faa mov      x1, xzr
0275666c: fbe60d94 bl       #0x2ad0258 ; Royal.Scenes.Game.Mechanics.Board.Cell.FillingCellModel$$AllowRefillOnNewBoard
02756670: 680a40f9 ldr      x8, [x19, #0x10]
02756674: a80200b4 cbz      x8, #0x27566c8
02756678: 001140f9 ldr      x0, [x8, #0x20]
0275667c: 600200b4 cbz      x0, #0x27566c8
02756680: a1018052 mov      w1, #0xd
02756684: e2031faa mov      x2, xzr
02756688: 738c0b94 bl       #0x2a39854 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationFinish
0275668c: 601a40f9 ldr      x0, [x19, #0x30]
02756690: c00100b4 cbz      x0, #0x27566c8
02756694: e1031faa mov      x1, xzr
02756698: 428af397 bl       #0x2438fa0 ; Royal.Scenes.Game.Context.Units.GameTouchListener$$EnableTouch
0275669c: 680a40f9 ldr      x8, [x19, #0x10]
027566a0: 480100b4 cbz      x8, #0x27566c8
027566a4: 080940f9 ldr      x8, [x8, #0x10]
027566a8: c80000b4 cbz      x8, #0x27566c0
027566ac: 020d40f9 ldr      x2, [x8, #0x18]
027566b0: 002140f9 ldr      x0, [x8, #0x40]
027566b4: 011540f9 ldr      x1, [x8, #0x28]
027566b8: f37bc1a8 ldp      x19, x30, [sp], #0x10
027566bc: 40001fd6 br       x2
027566c0: f37bc1a8 ldp      x19, x30, [sp], #0x10
027566c4: c0035fd6 ret      
027566c8: 586ba197 bl       #0xfb1428
