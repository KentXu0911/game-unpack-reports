# Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$CalculateScore
# Linear span; next metadata entry is not a proven CFG boundary.
02acf360: fb6bbba9 stp      x27, x26, [sp, #-0x50]!
02acf364: f96301a9 stp      x25, x24, [sp, #0x10]
02acf368: f75b02a9 stp      x23, x22, [sp, #0x20]
02acf36c: f55303a9 stp      x21, x20, [sp, #0x30]
02acf370: f37b04a9 stp      x19, x30, [sp, #0x40]
02acf374: 955501f0 adrp     x21, #0x5582000
02acf378: a8be4639 ldrb     w8, [x21, #0x1af]
02acf37c: f40303aa mov      x20, x3
02acf380: f603022a mov      w22, w2
02acf384: f303012a mov      w19, w1
02acf388: f80300aa mov      x24, x0
02acf38c: 28010037 tbnz     w8, #0, #0x2acf3b0
02acf390: 60370190 adrp     x0, #0x51bb000
02acf394: 000844f9 ldr      x0, [x0, #0x810]
02acf398: da879397 bl       #0xfb1300
02acf39c: 203901b0 adrp     x0, #0x51f4000
02acf3a0: 00e841f9 ldr      x0, [x0, #0x3d0]
02acf3a4: d7879397 bl       #0xfb1300
02acf3a8: 28008052 mov      w8, #1
02acf3ac: a8be0639 strb     w8, [x21, #0x1af]
02acf3b0: e003132a mov      w0, w19
02acf3b4: e1031faa mov      x1, xzr
02acf3b8: 5ad52294 bl       #0x3384920 ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsMultipleExploder
02acf3bc: 081340f9 ldr      x8, [x24, #0x20]
02acf3c0: e81100b4 cbz      x8, #0x2acf5fc
02acf3c4: 086140f9 ldr      x8, [x8, #0xc0]
02acf3c8: a81100b4 cbz      x8, #0x2acf5fc
02acf3cc: 171940f9 ldr      x23, [x8, #0x30]
02acf3d0: 771100b4 cbz      x23, #0x2acf5fc
02acf3d4: e81a40b9 ldr      w8, [x23, #0x18]
02acf3d8: 3b3901b0 adrp     x27, #0x51f4000
02acf3dc: 7beb41f9 ldr      x27, [x27, #0x3d0]
02acf3e0: f503002a mov      w21, w0
02acf3e4: 19050051 sub      w25, w8, #1
02acf3e8: f904f837 tbnz     w25, #0x1f, #0x2acf484
02acf3ec: 620340f9 ldr      x2, [x27]
02acf3f0: e00317aa mov      x0, x23
02acf3f4: e103192a mov      w1, w25
02acf3f8: fdfbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf3fc: 001000b4 cbz      x0, #0x2acf5fc
02acf400: 080040f9 ldr      x8, [x0]
02acf404: fa0300aa mov      x26, x0
02acf408: f5000036 tbz      w21, #0, #0x2acf424
02acf40c: 096d42f9 ldr      x9, [x8, #0x4d8]
02acf410: 017142f9 ldr      x1, [x8, #0x4e0]
02acf414: e0031aaa mov      x0, x26
02acf418: 20013fd6 blr      x9
02acf41c: 00010036 tbz      w0, #0, #0x2acf43c
02acf420: 0e000014 b        #0x2acf458
02acf424: 097542f9 ldr      x9, [x8, #0x4e8]
02acf428: 017942f9 ldr      x1, [x8, #0x4f0]
02acf42c: e0031aaa mov      x0, x26
02acf430: 20013fd6 blr      x9
02acf434: 1f000071 cmp      w0, #0
02acf438: 0c010054 b.gt     #0x2acf458
02acf43c: 480340f9 ldr      x8, [x26]
02acf440: e0031aaa mov      x0, x26
02acf444: 090d42f9 ldr      x9, [x8, #0x418]
02acf448: 011142f9 ldr      x1, [x8, #0x420]
02acf44c: 20013fd6 blr      x9
02acf450: 39070051 sub      w25, w25, #1
02acf454: a0fc0736 tbz      w0, #0, #0x2acf3e8
02acf458: 480340f9 ldr      x8, [x26]
02acf45c: e0031aaa mov      x0, x26
02acf460: 032d42f9 ldr      x3, [x8, #0x458]
02acf464: 023142f9 ldr      x2, [x8, #0x460]
02acf468: e103132a mov      w1, w19
02acf46c: f37b44a9 ldp      x19, x30, [sp, #0x40]
02acf470: f55343a9 ldp      x21, x20, [sp, #0x30]
02acf474: f75b42a9 ldp      x23, x22, [sp, #0x20]
02acf478: f96341a9 ldp      x25, x24, [sp, #0x10]
02acf47c: fb6bc5a8 ldp      x27, x26, [sp], #0x50
02acf480: 60001fd6 br       x3
02acf484: 081340f9 ldr      x8, [x24, #0x20]
02acf488: a80b00b4 cbz      x8, #0x2acf5fc
02acf48c: 000940f9 ldr      x0, [x8, #0x10]
02acf490: 600b00b4 cbz      x0, #0x2acf5fc
02acf494: e1031faa mov      x1, xzr
02acf498: 72daf197 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02acf49c: f70300aa mov      x23, x0
02acf4a0: c00100b4 cbz      x0, #0x2acf4d8
02acf4a4: e80240f9 ldr      x8, [x23]
02acf4a8: e00317aa mov      x0, x23
02acf4ac: 09ad43f9 ldr      x9, [x8, #0x758]
02acf4b0: 01b143f9 ldr      x1, [x8, #0x760]
02acf4b4: 20013fd6 blr      x9
02acf4b8: 00010036 tbz      w0, #0, #0x2acf4d8
02acf4bc: 55070036 tbz      w21, #0, #0x2acf5a4
02acf4c0: e80240f9 ldr      x8, [x23]
02acf4c4: e00317aa mov      x0, x23
02acf4c8: 095d42f9 ldr      x9, [x8, #0x4b8]
02acf4cc: 016142f9 ldr      x1, [x8, #0x4c0]
02acf4d0: 20013fd6 blr      x9
02acf4d4: 80060037 tbnz     w0, #0, #0x2acf5a4
02acf4d8: 081340f9 ldr      x8, [x24, #0x20]
02acf4dc: 080900b4 cbz      x8, #0x2acf5fc
02acf4e0: 086140f9 ldr      x8, [x8, #0xc0]
02acf4e4: c80800b4 cbz      x8, #0x2acf5fc
02acf4e8: 181d40f9 ldr      x24, [x8, #0x38]
02acf4ec: 980800b4 cbz      x24, #0x2acf5fc
02acf4f0: 081b40b9 ldr      w8, [x24, #0x18]
02acf4f4: 1f050071 cmp      w8, #1
02acf4f8: ab030054 b.lt     #0x2acf56c
02acf4fc: f9031f2a mov      w25, wzr
02acf500: d6020012 and      w22, w22, #1
02acf504: 620340f9 ldr      x2, [x27]
02acf508: e00318aa mov      x0, x24
02acf50c: e103192a mov      w1, w25
02acf510: b7fbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf514: 400700b4 cbz      x0, #0x2acf5fc
02acf518: 080040f9 ldr      x8, [x0]
02acf51c: e103162a mov      w1, w22
02acf520: 09c541f9 ldr      x9, [x8, #0x388]
02acf524: 02c941f9 ldr      x2, [x8, #0x390]
02acf528: 20013fd6 blr      x9
02acf52c: 80010036 tbz      w0, #0, #0x2acf55c
02acf530: 95050036 tbz      w21, #0, #0x2acf5e0
02acf534: 620340f9 ldr      x2, [x27]
02acf538: e00318aa mov      x0, x24
02acf53c: e103192a mov      w1, w25
02acf540: abfbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf544: c00500b4 cbz      x0, #0x2acf5fc
02acf548: 080040f9 ldr      x8, [x0]
02acf54c: 096d42f9 ldr      x9, [x8, #0x4d8]
02acf550: 017142f9 ldr      x1, [x8, #0x4e0]
02acf554: 20013fd6 blr      x9
02acf558: 40040037 tbnz     w0, #0, #0x2acf5e0
02acf55c: 081b40b9 ldr      w8, [x24, #0x18]
02acf560: 39070011 add      w25, w25, #1
02acf564: 3f03086b cmp      w25, w8
02acf568: ebfcff54 b.lt     #0x2acf504
02acf56c: d70200b4 cbz      x23, #0x2acf5c4
02acf570: e80240f9 ldr      x8, [x23]
02acf574: e00317aa mov      x0, x23
02acf578: 09ad43f9 ldr      x9, [x8, #0x758]
02acf57c: 01b143f9 ldr      x1, [x8, #0x760]
02acf580: 20013fd6 blr      x9
02acf584: 00020037 tbnz     w0, #0, #0x2acf5c4
02acf588: f5000036 tbz      w21, #0, #0x2acf5a4
02acf58c: e80240f9 ldr      x8, [x23]
02acf590: e00317aa mov      x0, x23
02acf594: 095d42f9 ldr      x9, [x8, #0x4b8]
02acf598: 016142f9 ldr      x1, [x8, #0x4c0]
02acf59c: 20013fd6 blr      x9
02acf5a0: 20010036 tbz      w0, #0, #0x2acf5c4
02acf5a4: 740000b4 cbz      x20, #0x2acf5b0
02acf5a8: 880e40f9 ldr      x8, [x20, #0x18]
02acf5ac: e8c202f8 stur     x8, [x23, #0x2c]
02acf5b0: e80240f9 ldr      x8, [x23]
02acf5b4: e00317aa mov      x0, x23
02acf5b8: 033542f9 ldr      x3, [x8, #0x468]
02acf5bc: 023942f9 ldr      x2, [x8, #0x470]
02acf5c0: aaffff17 b        #0x2acf468
02acf5c4: f37b44a9 ldp      x19, x30, [sp, #0x40]
02acf5c8: f55343a9 ldp      x21, x20, [sp, #0x30]
02acf5cc: f75b42a9 ldp      x23, x22, [sp, #0x20]
02acf5d0: f96341a9 ldp      x25, x24, [sp, #0x10]
02acf5d4: e0031f2a mov      w0, wzr
02acf5d8: fb6bc5a8 ldp      x27, x26, [sp], #0x50
02acf5dc: c0035fd6 ret      
02acf5e0: 620340f9 ldr      x2, [x27]
02acf5e4: e00318aa mov      x0, x24
02acf5e8: e103192a mov      w1, w25
02acf5ec: 80fbfb97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02acf5f0: 600000b4 cbz      x0, #0x2acf5fc
02acf5f4: 080040f9 ldr      x8, [x0]
02acf5f8: 9affff17 b        #0x2acf460
02acf5fc: 8b879397 bl       #0xfb1428
