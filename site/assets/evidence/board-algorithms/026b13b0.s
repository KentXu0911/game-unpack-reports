# Royal.Scenes.Game.Levels.Units.Combo.TntPropellerCombo$$ExplodeExtraCombo
# Next metadata method 0x26b147c, not a proven function boundary.
026b13b0: f80f1cf8 str      x24, [sp, #-0x40]!
026b13b4: f75b01a9 stp      x23, x22, [sp, #0x10]
026b13b8: f55302a9 stp      x21, x20, [sp, #0x20]
026b13bc: f37b03a9 stp      x19, x30, [sp, #0x30]
026b13c0: 767601f0 adrp     x22, #0x5580000
026b13c4: 985b01b0 adrp     x24, #0x5222000
026b13c8: c85e4239 ldrb     w8, [x22, #0x97]
026b13cc: 18db44f9 ldr      x24, [x24, #0x9b0]
026b13d0: f30303aa mov      x19, x3
026b13d4: f40302aa mov      x20, x2
026b13d8: f50301aa mov      x21, x1
026b13dc: f70300aa mov      x23, x0
026b13e0: c8000037 tbnz     w8, #0, #0x26b13f8
026b13e4: 805b01b0 adrp     x0, #0x5222000
026b13e8: 00d844f9 ldr      x0, [x0, #0x9b0]
026b13ec: c5ffa397 bl       #0xfb1300
026b13f0: 28008052 mov      w8, #1
026b13f4: c85e0239 strb     w8, [x22, #0x97]
026b13f8: 000340f9 ldr      x0, [x24]
026b13fc: 0700a497 bl       #0xfb1418
026b1400: c00300b4 cbz      x0, #0x26b1478
026b1404: e1031faa mov      x1, xzr
026b1408: f60300aa mov      x22, x0
026b140c: 7a08ef97 bl       #0x22735f4 ; System.Object$$.ctor
026b1410: e00316aa mov      x0, x22
026b1414: df1200b9 str      wzr, [x22, #0x10]
026b1418: 170c02f8 str      x23, [x0, #0x20]!
026b141c: e10317aa mov      x1, x23
026b1420: a3ffa397 bl       #0xfb12ac
026b1424: a81a40f9 ldr      x8, [x21, #0x30]
026b1428: a18240ad ldp      q1, q0, [x21, #0x10]
026b142c: a202c03d ldr      q2, [x21]
026b1430: e00316aa mov      x0, x22
026b1434: c83600f9 str      x8, [x22, #0x68]
026b1438: c082853c stur     q0, [x22, #0x58]
026b143c: c182843c stur     q1, [x22, #0x48]
026b1440: c282833c stur     q2, [x22, #0x38]
026b1444: 148c02f8 str      x20, [x0, #0x28]!
026b1448: e10314aa mov      x1, x20
026b144c: 98ffa397 bl       #0xfb12ac
026b1450: e00316aa mov      x0, x22
026b1454: 130c03f8 str      x19, [x0, #0x30]!
026b1458: e10313aa mov      x1, x19
026b145c: 94ffa397 bl       #0xfb12ac
026b1460: e00316aa mov      x0, x22
026b1464: f37b43a9 ldp      x19, x30, [sp, #0x30]
026b1468: f55342a9 ldp      x21, x20, [sp, #0x20]
026b146c: f75b41a9 ldp      x23, x22, [sp, #0x10]
026b1470: f80744f8 ldr      x24, [sp], #0x40
026b1474: c0035fd6 ret
026b1478: ecffa397 bl       #0xfb1428
