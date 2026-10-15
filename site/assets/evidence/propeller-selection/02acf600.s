# Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$RemainingExplodeCount
# Next metadata method 0x2acf800, not a proven function boundary.
02acf600: f963bca9 stp      x25, x24, [sp, #-0x40]!
02acf604: f75b01a9 stp      x23, x22, [sp, #0x10]
02acf608: f55302a9 stp      x21, x20, [sp, #0x20]
02acf60c: f37b03a9 stp      x19, x30, [sp, #0x30]
02acf610: 935501f0 adrp     x19, #0x5582000
02acf614: 68c24639 ldrb     w8, [x19, #0x1b0]
02acf618: f40301aa mov      x20, x1
02acf61c: f60300aa mov      x22, x0
02acf620: 28010037 tbnz     w8, #0, #0x2acf644
02acf624: 60370190 adrp     x0, #0x51bb000
02acf628: 000844f9 ldr      x0, [x0, #0x810]
02acf62c: 35879397 bl       #0xfb1300
02acf630: 203901b0 adrp     x0, #0x51f4000
02acf634: 00e841f9 ldr      x0, [x0, #0x3d0]
02acf638: 32879397 bl       #0xfb1300
02acf63c: 28008052 mov      w8, #1
02acf640: 68c20639 strb     w8, [x19, #0x1b0]
02acf644: c81240f9 ldr      x8, [x22, #0x20]
02acf648: a80d00b4 cbz      x8, #0x2acf7fc
02acf64c: 086140f9 ldr      x8, [x8, #0xc0]
02acf650: 680d00b4 cbz      x8, #0x2acf7fc
02acf654: 151940f9 ldr      x21, [x8, #0x30]
02acf658: 350d00b4 cbz      x21, #0x2acf7fc
02acf65c: a81a40b9 ldr      w8, [x21, #0x18]
02acf660: 383901b0 adrp     x24, #0x51f4000
02acf664: 18eb41f9 ldr      x24, [x24, #0x3d0]
02acf668: 1f050071 cmp      w8, #1
02acf66c: 4b020054 b.lt     #0x2acf6b4
02acf670: f7031f2a mov      w23, wzr
02acf674: f3031f2a mov      w19, wzr
02acf678: 020340f9 ldr      x2, [x24]
02acf67c: e00315aa mov      x0, x21
02acf680: e103172a mov      w1, w23
02acf684: 5afbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf688: a00b00b4 cbz      x0, #0x2acf7fc
02acf68c: 080040f9 ldr      x8, [x0]
02acf690: 097542f9 ldr      x9, [x8, #0x4e8]
02acf694: 017942f9 ldr      x1, [x8, #0x4f0]
02acf698: 20013fd6 blr      x9
02acf69c: a81a40b9 ldr      w8, [x21, #0x18]
02acf6a0: f7060011 add      w23, w23, #1
02acf6a4: 1300130b add      w19, w0, w19
02acf6a8: ff02086b cmp      w23, w8
02acf6ac: 6bfeff54 b.lt     #0x2acf678
02acf6b0: 02000014 b        #0x2acf6b8
02acf6b4: f3031f2a mov      w19, wzr
02acf6b8: c81240f9 ldr      x8, [x22, #0x20]
02acf6bc: 080a00b4 cbz      x8, #0x2acf7fc
02acf6c0: 000940f9 ldr      x0, [x8, #0x10]
02acf6c4: c00900b4 cbz      x0, #0x2acf7fc
02acf6c8: e1031faa mov      x1, xzr
02acf6cc: e5d9f197 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02acf6d0: f50300aa mov      x21, x0
02acf6d4: a00100b4 cbz      x0, #0x2acf708
02acf6d8: a80240f9 ldr      x8, [x21]
02acf6dc: e00315aa mov      x0, x21
02acf6e0: 09ad43f9 ldr      x9, [x8, #0x758]
02acf6e4: 01b143f9 ldr      x1, [x8, #0x760]
02acf6e8: 20013fd6 blr      x9
02acf6ec: e0000036 tbz      w0, #0, #0x2acf708
02acf6f0: a80240f9 ldr      x8, [x21]
02acf6f4: e00315aa mov      x0, x21
02acf6f8: 096542f9 ldr      x9, [x8, #0x4c8]
02acf6fc: 016942f9 ldr      x1, [x8, #0x4d0]
02acf700: 20013fd6 blr      x9
02acf704: 1300130b add      w19, w0, w19
02acf708: c81240f9 ldr      x8, [x22, #0x20]
02acf70c: 880700b4 cbz      x8, #0x2acf7fc
02acf710: 086140f9 ldr      x8, [x8, #0xc0]
02acf714: 480700b4 cbz      x8, #0x2acf7fc
02acf718: 161d40f9 ldr      x22, [x8, #0x38]
02acf71c: 160700b4 cbz      x22, #0x2acf7fc
02acf720: c81a40b9 ldr      w8, [x22, #0x18]
02acf724: 1f050071 cmp      w8, #1
02acf728: ab050054 b.lt     #0x2acf7dc
02acf72c: f7031f2a mov      w23, wzr
02acf730: 39008052 mov      w25, #1
02acf734: 020340f9 ldr      x2, [x24]
02acf738: e00316aa mov      x0, x22
02acf73c: e103172a mov      w1, w23
02acf740: 2bfbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf744: c00500b4 cbz      x0, #0x2acf7fc
02acf748: 080040f9 ldr      x8, [x0]
02acf74c: 89524039 ldrb     w9, [x20, #0x14]
02acf750: 0ac541f9 ldr      x10, [x8, #0x388]
02acf754: 02c941f9 ldr      x2, [x8, #0x390]
02acf758: 21010012 and      w1, w9, #1
02acf75c: 40013fd6 blr      x10
02acf760: 80010036 tbz      w0, #0, #0x2acf790
02acf764: 020340f9 ldr      x2, [x24]
02acf768: e00316aa mov      x0, x22
02acf76c: e103172a mov      w1, w23
02acf770: 1ffbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf774: 400400b4 cbz      x0, #0x2acf7fc
02acf778: 080040f9 ldr      x8, [x0]
02acf77c: 097542f9 ldr      x9, [x8, #0x4e8]
02acf780: 017942f9 ldr      x1, [x8, #0x4f0]
02acf784: 20013fd6 blr      x9
02acf788: f9031f2a mov      w25, wzr
02acf78c: 1300130b add      w19, w0, w19
02acf790: c81a40b9 ldr      w8, [x22, #0x18]
02acf794: f7060011 add      w23, w23, #1
02acf798: ff02086b cmp      w23, w8
02acf79c: cbfcff54 b.lt     #0x2acf734
02acf7a0: 350200b4 cbz      x21, #0x2acf7e4
02acf7a4: 19020036 tbz      w25, #0, #0x2acf7e4
02acf7a8: a80240f9 ldr      x8, [x21]
02acf7ac: e00315aa mov      x0, x21
02acf7b0: 09ad43f9 ldr      x9, [x8, #0x758]
02acf7b4: 01b143f9 ldr      x1, [x8, #0x760]
02acf7b8: 20013fd6 blr      x9
02acf7bc: 40010037 tbnz     w0, #0, #0x2acf7e4
02acf7c0: a80240f9 ldr      x8, [x21]
02acf7c4: e00315aa mov      x0, x21
02acf7c8: 096542f9 ldr      x9, [x8, #0x4c8]
02acf7cc: 016942f9 ldr      x1, [x8, #0x4d0]
02acf7d0: 20013fd6 blr      x9
02acf7d4: 1300130b add      w19, w0, w19
02acf7d8: 03000014 b        #0x2acf7e4
02acf7dc: 39008052 mov      w25, #1
02acf7e0: 35feffb5 cbnz     x21, #0x2acf7a4
02acf7e4: e003132a mov      w0, w19
02acf7e8: f37b43a9 ldp      x19, x30, [sp, #0x30]
02acf7ec: f55342a9 ldp      x21, x20, [sp, #0x20]
02acf7f0: f75b41a9 ldp      x23, x22, [sp, #0x10]
02acf7f4: f963c4a8 ldp      x25, x24, [sp], #0x40
02acf7f8: c0035fd6 ret      
02acf7fc: 0b879397 bl       #0xfb1428
