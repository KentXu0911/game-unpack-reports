# Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$TargetHasZeroScore
# Next metadata method 0x26a483c, not a proven function boundary.
026a46a4: ffc303d1 sub      sp, sp, #0xf0
026a46a8: f66300f9 str      x22, [sp, #0xc0]
026a46ac: f5530da9 stp      x21, x20, [sp, #0xd0]
026a46b0: f37b0ea9 stp      x19, x30, [sp, #0xe0]
026a46b4: f4760190 adrp     x20, #0x5580000
026a46b8: 881a4139 ldrb     w8, [x20, #0x46]
026a46bc: f30300aa mov      x19, x0
026a46c0: c8000037 tbnz     w8, #0, #0x26a46d8
026a46c4: a0580190 adrp     x0, #0x51b8000
026a46c8: 002840f9 ldr      x0, [x0, #0x50]
026a46cc: 0d33a497 bl       #0xfb1300
026a46d0: 28008052 mov      w8, #1
026a46d4: 881a0139 strb     w8, [x20, #0x46]
026a46d8: 601641b9 ldr      w0, [x19, #0x114]
026a46dc: e1031faa mov      x1, xzr
026a46e0: d4571a94 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
026a46e4: 75a640f9 ldr      x21, [x19, #0x148]
026a46e8: 950700b4 cbz      x21, #0x26a47d8
026a46ec: b6580190 adrp     x22, #0x51b8000
026a46f0: a80240f9 ldr      x8, [x21]
026a46f4: d62a40f9 ldr      x22, [x22, #0x50]
026a46f8: f403002a mov      w20, w0
026a46fc: 09554279 ldrh     w9, [x8, #0x12a]
026a4700: c10240f9 ldr      x1, [x22]
026a4704: 290100b4 cbz      x9, #0x26a4728
026a4708: 0a5940f9 ldr      x10, [x8, #0xb0]
026a470c: 4a210091 add      x10, x10, #8
026a4710: 4b815ff8 ldur     x11, [x10, #-8]
026a4714: 7f0101eb cmp      x11, x1
026a4718: 00010054 b.eq     #0x26a4738
026a471c: 290500f1 subs     x9, x9, #1
026a4720: 4a410091 add      x10, x10, #0x10
026a4724: 61ffff54 b.ne     #0x26a4710
026a4728: 42008052 mov      w2, #2
026a472c: e00315aa mov      x0, x21
026a4730: e972a397 bl       #0xf812d4
026a4734: 05000014 b        #0x26a4748
026a4738: 490140b9 ldr      w9, [x10]
026a473c: 29090011 add      w9, w9, #2
026a4740: 08d1298b add      x8, x8, w9, sxtw #4
026a4744: 00e10491 add      x0, x8, #0x138
026a4748: 080840a9 ldp      x8, x2, [x0]
026a474c: e00315aa mov      x0, x21
026a4750: e103142a mov      w1, w20
026a4754: 00013fd6 blr      x8
026a4758: 00040036 tbz      w0, #0, #0x26a47d8
026a475c: 68320491 add      x8, x19, #0x10c
026a4760: 028140ad ldp      q2, q0, [x8, #0x10]
026a4764: 091940f9 ldr      x9, [x8, #0x30]
026a4768: 0101c03d ldr      q1, [x8]
026a476c: 73a640f9 ldr      x19, [x19, #0x148]
026a4770: e28302ad stp      q2, q0, [sp, #0x50]
026a4774: e93b00f9 str      x9, [sp, #0x70]
026a4778: e113803d str      q1, [sp, #0x40]
026a477c: f30500b4 cbz      x19, #0x26a4838
026a4780: e10342ad ldp      q1, q0, [sp, #0x40]
026a4784: e21bc03d ldr      q2, [sp, #0x60]
026a4788: e83b40f9 ldr      x8, [sp, #0x70]
026a478c: c10240f9 ldr      x1, [x22]
026a4790: e10300ad stp      q1, q0, [sp]
026a4794: e20b803d str      q2, [sp, #0x20]
026a4798: e81b00f9 str      x8, [sp, #0x30]
026a479c: 680240f9 ldr      x8, [x19]
026a47a0: 09554279 ldrh     w9, [x8, #0x12a]
026a47a4: 290100b4 cbz      x9, #0x26a47c8
026a47a8: 0a5940f9 ldr      x10, [x8, #0xb0]
026a47ac: 4a210091 add      x10, x10, #8
026a47b0: 4b815ff8 ldur     x11, [x10, #-8]
026a47b4: 7f0101eb cmp      x11, x1
026a47b8: 40010054 b.eq     #0x26a47e0
026a47bc: 290500f1 subs     x9, x9, #1
026a47c0: 4a410091 add      x10, x10, #0x10
026a47c4: 61ffff54 b.ne     #0x26a47b0
026a47c8: 02018052 mov      w2, #8
026a47cc: e00313aa mov      x0, x19
026a47d0: c172a397 bl       #0xf812d4
026a47d4: 07000014 b        #0x26a47f0
026a47d8: 28008052 mov      w8, #1
026a47dc: 11000014 b        #0x26a4820
026a47e0: 490140b9 ldr      w9, [x10]
026a47e4: 29210011 add      w9, w9, #8
026a47e8: 08d1298b add      x8, x8, w9, sxtw #4
026a47ec: 00e10491 add      x0, x8, #0x138
026a47f0: e00b40ad ldp      q0, q2, [sp]
026a47f4: e10bc03d ldr      q1, [sp, #0x20]
026a47f8: e91b40f9 ldr      x9, [sp, #0x30]
026a47fc: 080040f9 ldr      x8, [x0]
026a4800: e00b04ad stp      q0, q2, [sp, #0x80]
026a4804: e12b803d str      q1, [sp, #0xa0]
026a4808: e95b00f9 str      x9, [sp, #0xb0]
026a480c: 020440f9 ldr      x2, [x0, #8]
026a4810: e1030291 add      x1, sp, #0x80
026a4814: e00313aa mov      x0, x19
026a4818: 00013fd6 blr      x8
026a481c: 08000052 eor      w8, w0, #1
026a4820: f37b4ea9 ldp      x19, x30, [sp, #0xe0]
026a4824: f5534da9 ldp      x21, x20, [sp, #0xd0]
026a4828: f66340f9 ldr      x22, [sp, #0xc0]
026a482c: 00010012 and      w0, w8, #1
026a4830: ffc30391 add      sp, sp, #0xf0
026a4834: c0035fd6 ret      
026a4838: fc32a497 bl       #0xfb1428
