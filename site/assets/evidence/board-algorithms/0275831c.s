# Royal.Scenes.Game.Levels.Units.CellGridManager$$GetFirstNormalBelow
# Next metadata method 0x27583cc, not a proven function boundary.
0275831c: ffc300d1 sub      sp, sp, #0x30
02758320: f55301a9 stp      x21, x20, [sp, #0x10]
02758324: f37b02a9 stp      x19, x30, [sp, #0x20]
02758328: 010500b4 cbz      x1, #0x27583c8
0275832c: f30301aa mov      x19, x1
02758330: 211840b9 ldr      w1, [x1, #0x18]
02758334: 681e40b9 ldr      w8, [x19, #0x1c]
02758338: f40300aa mov      x20, x0
0275833c: 952240f9 ldr      x21, [x20, #0x40]
02758340: 02050051 sub      w2, w8, #1
02758344: e0230091 add      x0, sp, #8
02758348: e3031faa mov      x3, xzr
0275834c: ff0700f9 str      xzr, [sp, #8]
02758350: 49bf0d94 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
02758354: b50300b4 cbz      x21, #0x27583c8
02758358: e10740f9 ldr      x1, [sp, #8]
0275835c: e00315aa mov      x0, x21
02758360: e2031faa mov      x2, xzr
02758364: aba61794 bl       #0x2d41e10 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellGrid$$GetCell
02758368: f50300aa mov      x21, x0
0275836c: 400200b4 cbz      x0, #0x27583b4
02758370: a86a40b9 ldr      w8, [x21, #0x68]
02758374: 696a40b9 ldr      w9, [x19, #0x68]
02758378: 1f01096b cmp      w8, w9
0275837c: a1010054 b.ne     #0x27583b0
02758380: e00315aa mov      x0, x21
02758384: e1031faa mov      x1, xzr
02758388: e7c40d94 bl       #0x2ac9724 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsNormalCell
0275838c: 40010037 tbnz     w0, #0, #0x27583b4
02758390: a80240f9 ldr      x8, [x21]
02758394: e00315aa mov      x0, x21
02758398: 091d41f9 ldr      x9, [x8, #0x238]
0275839c: 012141f9 ldr      x1, [x8, #0x240]
027583a0: 20013fd6 blr      x9
027583a4: 60000037 tbnz     w0, #0, #0x27583b0
027583a8: a1224329 ldp      w1, w8, [x21, #0x18]
027583ac: e4ffff17 b        #0x275833c
027583b0: f5031faa mov      x21, xzr
027583b4: e00315aa mov      x0, x21
027583b8: f37b42a9 ldp      x19, x30, [sp, #0x20]
027583bc: f55341a9 ldp      x21, x20, [sp, #0x10]
027583c0: ffc30091 add      sp, sp, #0x30
027583c4: c0035fd6 ret      
027583c8: 1864a197 bl       #0xfb1428
