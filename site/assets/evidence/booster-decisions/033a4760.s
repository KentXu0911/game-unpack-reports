# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerTntStrategy$$NextExploder
# Linear span; next metadata entry is not a proven CFG boundary.
033a4760: ffc302d1 sub      sp, sp, #0xb0
033a4764: f55309a9 stp      x21, x20, [sp, #0x90]
033a4768: f37b0aa9 stp      x19, x30, [sp, #0xa0]
033a476c: 55d03bd5 mrs      x21, tpidr_el0
033a4770: f30308aa mov      x19, x8
033a4774: a81640f9 ldr      x8, [x21, #0x28]
033a4778: 00e4006f movi     v0.2d, #0000000000000000
033a477c: e84700f9 str      x8, [sp, #0x88]
033a4780: ff7f04a9 stp      xzr, xzr, [sp, #0x40]
033a4784: ff5300b9 str      wzr, [sp, #0x50]
033a4788: e00303ad stp      q0, q0, [sp, #0x60]
033a478c: fff307b8 stur     wzr, [sp, #0x7f]
033a4790: c10400b4 cbz      x1, #0x33a4828
033a4794: f40301aa mov      x20, x1
033a4798: 210c40f9 ldr      x1, [x1, #0x18]
033a479c: e8230091 add      x8, sp, #8
033a47a0: a0018052 mov      w0, #0xd
033a47a4: e2031faa mov      x2, xzr
033a47a8: 8355e697 bl       #0x2d39db4 ; Royal.Scenes.Game.Mechanics.Explode.Exploder$$Next
033a47ac: e083c03c ldur     q0, [sp, #8]
033a47b0: e81b40b9 ldr      w8, [sp, #0x18]
033a47b4: e1d3c13c ldur     q1, [sp, #0x1d]
033a47b8: e2d3c23c ldur     q2, [sp, #0x2d]
033a47bc: e93f40b9 ldr      w9, [sp, #0x3c]
033a47c0: e00314aa mov      x0, x20
033a47c4: e1031faa mov      x1, xzr
033a47c8: e013803d str      q0, [sp, #0x40]
033a47cc: e85300b9 str      w8, [sp, #0x50]
033a47d0: e10b03ad stp      q1, q2, [sp, #0x60]
033a47d4: e9f307b8 stur     w9, [sp, #0x7f]
033a47d8: 4c9ddc97 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
033a47dc: e013c03d ldr      q0, [sp, #0x40]
033a47e0: 08000012 and      w8, w0, #1
033a47e4: e95340b9 ldr      w9, [sp, #0x50]
033a47e8: 68520039 strb     w8, [x19, #0x14]
033a47ec: 6002803d str      q0, [x19]
033a47f0: e10343ad ldp      q1, q0, [sp, #0x60]
033a47f4: e8f347b8 ldur     w8, [sp, #0x7f]
033a47f8: 691200b9 str      w9, [x19, #0x10]
033a47fc: 6152813c stur     q1, [x19, #0x15]
033a4800: 6052823c stur     q0, [x19, #0x25]
033a4804: 683600b9 str      w8, [x19, #0x34]
033a4808: a81640f9 ldr      x8, [x21, #0x28]
033a480c: e94740f9 ldr      x9, [sp, #0x88]
033a4810: 1f0109eb cmp      x8, x9
033a4814: c1000054 b.ne     #0x33a482c
033a4818: f37b4aa9 ldp      x19, x30, [sp, #0xa0]
033a481c: f55349a9 ldp      x21, x20, [sp, #0x90]
033a4820: ffc30291 add      sp, sp, #0xb0
033a4824: c0035fd6 ret      
033a4828: 00337097 bl       #0xfb1428
033a482c: 497a6497 bl       #0xcc3150
