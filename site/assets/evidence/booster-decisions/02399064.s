# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$ExplodeTouching
# Linear span; next metadata entry is not a proven CFG boundary.
02399064: ffc302d1 sub      sp, sp, #0xb0
02399068: f75b08a9 stp      x23, x22, [sp, #0x80]
0239906c: f55309a9 stp      x21, x20, [sp, #0x90]
02399070: f37b0aa9 stp      x19, x30, [sp, #0xa0]
02399074: 358f01b0 adrp     x21, #0x557e000
02399078: a8de6639 ldrb     w8, [x21, #0x9b7]
0239907c: f30302aa mov      x19, x2
02399080: f40301aa mov      x20, x1
02399084: c8000037 tbnz     w8, #0, #0x239909c
02399088: 207301d0 adrp     x0, #0x51ff000
0239908c: 007447f9 ldr      x0, [x0, #0xee8]
02399090: 9c60b097 bl       #0xfb1300
02399094: 28008052 mov      w8, #1
02399098: a8de2639 strb     w8, [x21, #0x9b7]
0239909c: b40700b4 cbz      x20, #0x2399190
023990a0: 880e40f9 ldr      x8, [x20, #0x18]
023990a4: 377301d0 adrp     x23, #0x51ff000
023990a8: f77647f9 ldr      x23, [x23, #0xee8]
023990ac: f6031faa mov      x22, xzr
023990b0: f5031faa mov      x21, xzr
023990b4: 680200f9 str      x8, [x19]
023990b8: e00240f9 ldr      x0, [x23]
023990bc: 08e040b9 ldr      w8, [x0, #0xe0]
023990c0: 68000035 cbnz     w8, #0x23990cc
023990c4: d060b097 bl       #0xfb1404
023990c8: e00240f9 ldr      x0, [x23]
023990cc: 085c40f9 ldr      x8, [x0, #0xb8]
023990d0: 080540f9 ldr      x8, [x8, #8]
023990d4: e80500b4 cbz      x8, #0x2399190
023990d8: 091980b9 ldrsw    x9, [x8, #0x18]
023990dc: df0209eb cmp      x22, x9
023990e0: ea040054 b.ge     #0x239917c
023990e4: 09e040b9 ldr      w9, [x0, #0xe0]
023990e8: c9000035 cbnz     w9, #0x2399100
023990ec: c660b097 bl       #0xfb1404
023990f0: e80240f9 ldr      x8, [x23]
023990f4: 085d40f9 ldr      x8, [x8, #0xb8]
023990f8: 080540f9 ldr      x8, [x8, #8]
023990fc: a80400b4 cbz      x8, #0x2399190
02399100: 091940b9 ldr      w9, [x8, #0x18]
02399104: df0209eb cmp      x22, x9
02399108: 62040054 b.hs     #0x2399194
0239910c: 801240f9 ldr      x0, [x20, #0x20]
02399110: 000400b4 cbz      x0, #0x2399190
02399114: 0809168b add      x8, x8, x22, lsl #2
02399118: 012140b9 ldr      w1, [x8, #0x20]
0239911c: e2031faa mov      x2, xzr
02399120: 057d2694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02399124: 1f0000f1 cmp      x0, #0
02399128: b502809a csel     x21, x21, x0, eq
0239912c: 400200b4 cbz      x0, #0x2399174
02399130: 681a40f9 ldr      x8, [x19, #0x30]
02399134: 618240ad ldp      q1, q0, [x19, #0x10]
02399138: 6202c03d ldr      q2, [x19]
0239913c: e83b00f9 str      x8, [sp, #0x70]
02399140: e18302ad stp      q1, q0, [sp, #0x50]
02399144: e213803d str      q2, [sp, #0x40]
02399148: 550200b4 cbz      x21, #0x2399190
0239914c: e10342ad ldp      q1, q0, [sp, #0x40]
02399150: e21bc03d ldr      q2, [sp, #0x60]
02399154: e83b40f9 ldr      x8, [sp, #0x70]
02399158: e1030091 mov      x1, sp
0239915c: e00315aa mov      x0, x21
02399160: e2031faa mov      x2, xzr
02399164: e10300ad stp      q1, q0, [sp]
02399168: e20b803d str      q2, [sp, #0x20]
0239916c: e81b00f9 str      x8, [sp, #0x30]
02399170: 36c81c94 bl       #0x2acb248 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$ExplodeCurrentItemByNearMatch
02399174: d6060091 add      x22, x22, #1
02399178: d0ffff17 b        #0x23990b8
0239917c: f37b4aa9 ldp      x19, x30, [sp, #0xa0]
02399180: f55349a9 ldp      x21, x20, [sp, #0x90]
02399184: f75b48a9 ldp      x23, x22, [sp, #0x80]
02399188: ffc30291 add      sp, sp, #0xb0
0239918c: c0035fd6 ret      
02399190: a660b097 bl       #0xfb1428
02399194: a760b097 bl       #0xfb1430
