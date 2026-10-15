# Royal.Scenes.Game.Levels.Units.BoardManager$$ChangeBoard
# Next metadata method 0x2756574, not a proven function boundary.
02756448: ff0301d1 sub      sp, sp, #0x40
0275644c: f75b01a9 stp      x23, x22, [sp, #0x10]
02756450: f55302a9 stp      x21, x20, [sp, #0x20]
02756454: f37b03a9 stp      x19, x30, [sp, #0x30]
02756458: 547101d0 adrp     x20, #0x5580000
0275645c: 88925639 ldrb     w8, [x20, #0x5a4]
02756460: f30300aa mov      x19, x0
02756464: 88010037 tbnz     w8, #0, #0x2756494
02756468: 60560190 adrp     x0, #0x5222000
0275646c: 00ec42f9 ldr      x0, [x0, #0x5d8]
02756470: a46ba197 bl       #0xfb1300
02756474: 605501d0 adrp     x0, #0x5204000
02756478: 00bc47f9 ldr      x0, [x0, #0xf78]
0275647c: a16ba197 bl       #0xfb1300
02756480: 205201d0 adrp     x0, #0x519c000
02756484: 000846f9 ldr      x0, [x0, #0xc10]
02756488: 9e6ba197 bl       #0xfb1300
0275648c: 28008052 mov      w8, #1
02756490: 88921639 strb     w8, [x20, #0x5a4]
02756494: 683e40b9 ldr      w8, [x19, #0x3c]
02756498: 48060034 cbz      w8, #0x2756560
0275649c: 755501d0 adrp     x21, #0x5204000
027564a0: b5be47f9 ldr      x21, [x21, #0xf78]
027564a4: 09050051 sub      w9, w8, #1
027564a8: 693e00b9 str      w9, [x19, #0x3c]
027564ac: 365201d0 adrp     x22, #0x519c000
027564b0: a00240f9 ldr      x0, [x21]
027564b4: 77560190 adrp     x23, #0x5222000
027564b8: d60a46f9 ldr      x22, [x22, #0xc10]
027564bc: f7ee42f9 ldr      x23, [x23, #0x5d8]
027564c0: e1330091 add      x1, sp, #0xc
027564c4: e80f00b9 str      w8, [sp, #0xc]
027564c8: d16ba197 bl       #0xfb140c
027564cc: f40300aa mov      x20, x0
027564d0: 683e40b9 ldr      w8, [x19, #0x3c]
027564d4: a00240f9 ldr      x0, [x21]
027564d8: e1230091 add      x1, sp, #8
027564dc: e80b00b9 str      w8, [sp, #8]
027564e0: cb6ba197 bl       #0xfb140c
027564e4: c80240f9 ldr      x8, [x22]
027564e8: e20300aa mov      x2, x0
027564ec: e10314aa mov      x1, x20
027564f0: e3031faa mov      x3, xzr
027564f4: e00308aa mov      x0, x8
027564f8: ecc7d697 bl       #0x1d084a8 ; System.String$$Format
027564fc: f50240f9 ldr      x21, [x23]
02756500: f40300aa mov      x20, x0
02756504: a81e40f9 ldr      x8, [x21, #0x38]
02756508: 080140f9 ldr      x8, [x8]
0275650c: 09c94439 ldrb     w9, [x8, #0x132]
02756510: 89000037 tbnz     w9, #0, #0x2756520
02756514: e00308aa mov      x0, x8
02756518: b3aaa097 bl       #0xf80fe4
0275651c: e80300aa mov      x8, x0
02756520: 09e140b9 ldr      w9, [x8, #0xe0]
02756524: 69000035 cbnz     w9, #0x2756530
02756528: e00308aa mov      x0, x8
0275652c: b66ba197 bl       #0xfb1404
02756530: a81e40f9 ldr      x8, [x21, #0x38]
02756534: 000140f9 ldr      x0, [x8]
02756538: 08c84439 ldrb     w8, [x0, #0x132]
0275653c: 48000037 tbnz     w8, #0, #0x2756544
02756540: a9aaa097 bl       #0xf80fe4
02756544: 085c40f9 ldr      x8, [x0, #0xb8]
02756548: 61018052 mov      w1, #0xb
0275654c: e00313aa mov      x0, x19
02756550: e20314aa mov      x2, x20
02756554: 030140f9 ldr      x3, [x8]
02756558: e4031faa mov      x4, xzr
0275655c: f1a80294 bl       #0x2800920 ; Royal.Infrastructure.Services.Logs.Log$$Debug
02756560: f37b43a9 ldp      x19, x30, [sp, #0x30]
02756564: f55342a9 ldp      x21, x20, [sp, #0x20]
02756568: f75b41a9 ldp      x23, x22, [sp, #0x10]
0275656c: ff030191 add      sp, sp, #0x40
02756570: c0035fd6 ret      
