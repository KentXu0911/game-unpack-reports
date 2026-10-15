# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindPowerCubeOrSoilTargetForWinCondition
# Next metadata method 0x20ef78c, not a proven function boundary.
020ef5c0: ff4303d1 sub      sp, sp, #0xd0
020ef5c4: f65300f9 str      x22, [sp, #0xa0]
020ef5c8: f5530ba9 stp      x21, x20, [sp, #0xb0]
020ef5cc: f37b0ca9 stp      x19, x30, [sp, #0xc0]
020ef5d0: 75a401d0 adrp     x21, #0x557d000
020ef5d4: a84a5539 ldrb     w8, [x21, #0x552]
020ef5d8: f30301aa mov      x19, x1
020ef5dc: f40300aa mov      x20, x0
020ef5e0: e8010037 tbnz     w8, #0, #0x20ef61c
020ef5e4: 608701f0 adrp     x0, #0x51de000
020ef5e8: 005440f9 ldr      x0, [x0, #0xa8]
020ef5ec: 4507bb97 bl       #0xfb1300
020ef5f0: 808801f0 adrp     x0, #0x5202000
020ef5f4: 008840f9 ldr      x0, [x0, #0x110]
020ef5f8: 4207bb97 bl       #0xfb1300
020ef5fc: a08601f0 adrp     x0, #0x51c6000
020ef600: 00f045f9 ldr      x0, [x0, #0xbe0]
020ef604: 3f07bb97 bl       #0xfb1300
020ef608: 808801f0 adrp     x0, #0x5202000
020ef60c: 003446f9 ldr      x0, [x0, #0xc68]
020ef610: 3c07bb97 bl       #0xfb1300
020ef614: 28008052 mov      w8, #1
020ef618: a84a1539 strb     w8, [x21, #0x552]
020ef61c: ff9b00b9 str      wzr, [sp, #0x98]
020ef620: ff4b00f9 str      xzr, [sp, #0x90]
020ef624: ff8b00b9 str      wzr, [sp, #0x88]
020ef628: ff4300f9 str      xzr, [sp, #0x80]
020ef62c: 802640f9 ldr      x0, [x20, #0x48]
020ef630: c00a00b4 cbz      x0, #0x20ef788
020ef634: 968801f0 adrp     x22, #0x5202000
020ef638: d63646f9 ldr      x22, [x22, #0xc68]
020ef63c: a10a8052 mov      w1, #0x55
020ef640: e2031faa mov      x2, xzr
020ef644: 42adfd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020ef648: f5031faa mov      x21, xzr
020ef64c: 20030036 tbz      w0, #0, #0x20ef6b0
020ef650: 688701f0 adrp     x8, #0x51de000
020ef654: 085540f9 ldr      x8, [x8, #0xa8]
020ef658: a00a8052 mov      w0, #0x55
020ef65c: 010140f9 ldr      x1, [x8]
020ef660: 033d1194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020ef664: 200900b4 cbz      x0, #0x20ef788
020ef668: e1031faa mov      x1, xzr
020ef66c: 7712f597 bl       #0x1e34048 ; Royal.Scenes.Game.Mechanics.Items.PowerCubeItem.PowerCubeItemHelper$$TryGetLastGroupsPowerCubeCellPointWithOneLayer
020ef670: 1f1c0072 tst      w0, #0xff
020ef674: e04b00f9 str      x0, [sp, #0x90]
020ef678: e19b00b9 str      w1, [sp, #0x98]
020ef67c: 80010054 b.eq     #0x20ef6ac
020ef680: c10240f9 ldr      x1, [x22]
020ef684: 951a40f9 ldr      x21, [x20, #0x30]
020ef688: e0430291 add      x0, sp, #0x90
020ef68c: afd73494 bl       #0x2e25548 ; System.Nullable<CellPoint>$$get_Value
020ef690: d50700b4 cbz      x21, #0x20ef788
020ef694: e10300aa mov      x1, x0
020ef698: e00315aa mov      x0, x21
020ef69c: e2031faa mov      x2, xzr
020ef6a0: 9c931994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020ef6a4: f50300aa mov      x21, x0
020ef6a8: 02000014 b        #0x20ef6b0
020ef6ac: f5031faa mov      x21, xzr
020ef6b0: 802640f9 ldr      x0, [x20, #0x48]
020ef6b4: a00600b4 cbz      x0, #0x20ef788
020ef6b8: 81038052 mov      w1, #0x1c
020ef6bc: e2031faa mov      x2, xzr
020ef6c0: 23adfd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020ef6c4: 150300b5 cbnz     x21, #0x20ef724
020ef6c8: e0020036 tbz      w0, #0, #0x20ef724
020ef6cc: 888801f0 adrp     x8, #0x5202000
020ef6d0: 088940f9 ldr      x8, [x8, #0x110]
020ef6d4: c0038052 mov      w0, #0x1e
020ef6d8: 010140f9 ldr      x1, [x8]
020ef6dc: e43c1194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020ef6e0: 400500b4 cbz      x0, #0x20ef788
020ef6e4: e1031faa mov      x1, xzr
020ef6e8: 94c60a94 bl       #0x23a1138 ; Royal.Scenes.Game.Mechanics.Items.SoilItem.SoilItemHelper$$TryGetLastGroupsSoilCellPointWithOneLayer
020ef6ec: 1f1c0072 tst      w0, #0xff
020ef6f0: e04300f9 str      x0, [sp, #0x80]
020ef6f4: e18b00b9 str      w1, [sp, #0x88]
020ef6f8: c0030054 b.eq     #0x20ef770
020ef6fc: c10240f9 ldr      x1, [x22]
020ef700: 941a40f9 ldr      x20, [x20, #0x30]
020ef704: e0030291 add      x0, sp, #0x80
020ef708: 90d73494 bl       #0x2e25548 ; System.Nullable<CellPoint>$$get_Value
020ef70c: f40300b4 cbz      x20, #0x20ef788
020ef710: e10300aa mov      x1, x0
020ef714: e00314aa mov      x0, x20
020ef718: e2031faa mov      x2, xzr
020ef71c: 7d931994 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
020ef720: f50300aa mov      x21, x0
020ef724: 750200b4 cbz      x21, #0x20ef770
020ef728: 628240ad ldp      q2, q0, [x19, #0x10]
020ef72c: 681a40f9 ldr      x8, [x19, #0x30]
020ef730: 6102c03d ldr      q1, [x19]
020ef734: a05a40f9 ldr      x0, [x21, #0xb0]
020ef738: e28302ad stp      q2, q0, [sp, #0x50]
020ef73c: e83b00f9 str      x8, [sp, #0x70]
020ef740: e113803d str      q1, [sp, #0x40]
020ef744: 200200b4 cbz      x0, #0x20ef788
020ef748: e10342ad ldp      q1, q0, [sp, #0x40]
020ef74c: e21bc03d ldr      q2, [sp, #0x60]
020ef750: e83b40f9 ldr      x8, [sp, #0x70]
020ef754: e1030091 mov      x1, sp
020ef758: e2031faa mov      x2, xzr
020ef75c: e10300ad stp      q1, q0, [sp]
020ef760: e20b803d str      q2, [sp, #0x20]
020ef764: e81b00f9 str      x8, [sp, #0x30]
020ef768: 26802794 bl       #0x2acf800 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$AddIncomingExploder
020ef76c: 02000014 b        #0x20ef774
020ef770: e0031faa mov      x0, xzr
020ef774: f37b4ca9 ldp      x19, x30, [sp, #0xc0]
020ef778: f5534ba9 ldp      x21, x20, [sp, #0xb0]
020ef77c: f65340f9 ldr      x22, [sp, #0xa0]
020ef780: ff430391 add      sp, sp, #0xd0
020ef784: c0035fd6 ret      
020ef788: 2807bb97 bl       #0xfb1428
