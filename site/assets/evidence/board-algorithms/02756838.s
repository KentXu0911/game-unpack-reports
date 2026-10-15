# Royal.Scenes.Game.Levels.Units.BoardManager.<WaitForCompletion>d__50$$MoveNext
# Next metadata method 0x27568b0, not a proven function boundary.
02756838: f40f1ef8 str      x20, [sp, #-0x20]!
0275683c: f37b01a9 stp      x19, x30, [sp, #0x10]
02756840: 081040b9 ldr      w8, [x0, #0x10]
02756844: 1f090071 cmp      w8, #2
02756848: a2020054 b.hs     #0x275689c
0275684c: 141040f9 ldr      x20, [x0, #0x20]
02756850: f30300aa mov      x19, x0
02756854: 08008012 mov      w8, #-1
02756858: 081000b9 str      w8, [x0, #0x10]
0275685c: 940200b4 cbz      x20, #0x27568ac
02756860: 801240f9 ldr      x0, [x20, #0x20]
02756864: 400200b4 cbz      x0, #0x27568ac
02756868: e1031faa mov      x1, xzr
0275686c: dd710b94 bl       #0x2a32fe0 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$HasAnyOperation
02756870: 00010036 tbz      w0, #0, #0x2756890
02756874: 7f8e01f8 str      xzr, [x19, #0x18]!
02756878: e00313aa mov      x0, x19
0275687c: e1031faa mov      x1, xzr
02756880: 8b6aa197 bl       #0xfb12ac
02756884: 20008052 mov      w0, #1
02756888: 60821fb8 stur     w0, [x19, #-8]
0275688c: 05000014 b        #0x27568a0
02756890: 61a24039 ldrb     w1, [x19, #0x28]
02756894: e00314aa mov      x0, x20
02756898: a2feff97 bl       #0x2756320 ; Royal.Scenes.Game.Levels.Units.BoardManager$$CompleteChangingBoard
0275689c: e0031f2a mov      w0, wzr
027568a0: f37b41a9 ldp      x19, x30, [sp, #0x10]
027568a4: f40742f8 ldr      x20, [sp], #0x20
027568a8: c0035fd6 ret      
027568ac: df6aa197 bl       #0xfb1428
