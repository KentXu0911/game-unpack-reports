# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$FindItemsByType
# Linear span; next metadata entry is not a proven CFG boundary.
02398694: f75bbda9 stp      x23, x22, [sp, #-0x30]!
02398698: f55301a9 stp      x21, x20, [sp, #0x10]
0239869c: f37b02a9 stp      x19, x30, [sp, #0x20]
023986a0: 358f01d0 adrp     x21, #0x557e000
023986a4: a87a6739 ldrb     w8, [x21, #0x9de]
023986a8: f303012a mov      w19, w1
023986ac: f40300aa mov      x20, x0
023986b0: c8000037 tbnz     w8, #0, #0x23986c8
023986b4: 207201f0 adrp     x0, #0x51df000
023986b8: 00d040f9 ldr      x0, [x0, #0x1a0]
023986bc: 1163b097 bl       #0xfb1300
023986c0: 28008052 mov      w8, #1
023986c4: a87a2739 strb     w8, [x21, #0x9de]
023986c8: 95420191 add      x21, x20, #0x50
023986cc: e00315aa mov      x0, x21
023986d0: e1031faa mov      x1, xzr
023986d4: e9bf1c94 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
023986d8: e00315aa mov      x0, x21
023986dc: e1031faa mov      x1, xzr
023986e0: d0bf1c94 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
023986e4: 200500b4 cbz      x0, #0x2398788
023986e8: 377201f0 adrp     x23, #0x51df000
023986ec: f7d240f9 ldr      x23, [x23, #0x1a0]
023986f0: 963240f9 ldr      x22, [x20, #0x60]
023986f4: e10316aa mov      x1, x22
023986f8: e6120094 bl       #0x239d290 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$IsReadyForLightball
023986fc: e0030036 tbz      w0, #0, #0x2398778
02398700: d60400b4 cbz      x22, #0x2398798
02398704: c00a40f9 ldr      x0, [x22, #0x10]
02398708: 800400b4 cbz      x0, #0x2398798
0239870c: e1031faa mov      x1, xzr
02398710: d4b50e94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02398714: 200300b4 cbz      x0, #0x2398778
02398718: 090040f9 ldr      x9, [x0]
0239871c: e80240f9 ldr      x8, [x23]
02398720: f60300aa mov      x22, x0
02398724: 2bb14439 ldrb     w11, [x9, #0x12c]
02398728: 0ab14439 ldrb     w10, [x8, #0x12c]
0239872c: 7f010a6b cmp      w11, w10
02398730: 43020054 b.lo     #0x2398778
02398734: 296540f9 ldr      x9, [x9, #0xc8]
02398738: 290d0a8b add      x9, x9, x10, lsl #3
0239873c: 29815ff8 ldur     x9, [x9, #-8]
02398740: 3f0108eb cmp      x9, x8
02398744: a1010054 b.ne     #0x2398778
02398748: e00316aa mov      x0, x22
0239874c: e1031faa mov      x1, xzr
02398750: ebe9eb97 bl       #0x1e92efc ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$IsReserved
02398754: 20010037 tbnz     w0, #0, #0x2398778
02398758: c81a40b9 ldr      w8, [x22, #0x18]
0239875c: 1f01136b cmp      w8, w19
02398760: c1000054 b.ne     #0x2398778
02398764: 880240f9 ldr      x8, [x20]
02398768: e00314aa mov      x0, x20
0239876c: e10316aa mov      x1, x22
02398770: 09895ba9 ldp      x9, x2, [x8, #0x1b8]
02398774: 20013fd6 blr      x9
02398778: e00315aa mov      x0, x21
0239877c: e1031faa mov      x1, xzr
02398780: a8bf1c94 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
02398784: 60fbffb5 cbnz     x0, #0x23986f0
02398788: f37b42a9 ldp      x19, x30, [sp, #0x20]
0239878c: f55341a9 ldp      x21, x20, [sp, #0x10]
02398790: f75bc3a8 ldp      x23, x22, [sp], #0x30
02398794: c0035fd6 ret      
02398798: 2463b097 bl       #0xfb1428
