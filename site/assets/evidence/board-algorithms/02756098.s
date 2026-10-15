# Royal.Scenes.Game.Levels.Units.BoardManager$$AreThereIncomingItemsToCurrentBoard
# Next metadata method 0x27560b0, not a proven function boundary.
02756098: fe0f1ff8 str      x30, [sp, #-0x10]!
0275609c: 2ffbff97 bl       #0x2754d58 ; Royal.Scenes.Game.Levels.Units.BoardManager$$get_CurrentBoard
027560a0: 600000b4 cbz      x0, #0x27560ac
027560a4: fe0741f8 ldr      x30, [sp], #0x10
027560a8: 7ef8ff17 b        #0x27542a0 ; Royal.Scenes.Game.Levels.Units.Board$$AreThereIncomingItemsToBoard
027560ac: df6ca197 bl       #0xfb1428
