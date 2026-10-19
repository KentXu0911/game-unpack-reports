# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$CanSendRayToItem
# Linear span; next metadata entry is not a proven CFG boundary.
0239d0d4: f553bea9 stp      x21, x20, [sp, #-0x20]!
0239d0d8: f37b01a9 stp      x19, x30, [sp, #0x10]
0239d0dc: 158f01b0 adrp     x21, #0x557e000
0239d0e0: a8726739 ldrb     w8, [x21, #0x9dc]
0239d0e4: f30301aa mov      x19, x1
0239d0e8: f40300aa mov      x20, x0
0239d0ec: e8010037 tbnz     w8, #0, #0x239d128
0239d0f0: a0720190 adrp     x0, #0x51f1000
0239d0f4: 007443f9 ldr      x0, [x0, #0x6e8]
0239d0f8: 8250b097 bl       #0xfb1300
0239d0fc: a07401f0 adrp     x0, #0x5234000
0239d100: 00f842f9 ldr      x0, [x0, #0x5f0]
0239d104: 7f50b097 bl       #0xfb1300
0239d108: 407101d0 adrp     x0, #0x51c7000
0239d10c: 005444f9 ldr      x0, [x0, #0x8a8]
0239d110: 7c50b097 bl       #0xfb1300
0239d114: 007201d0 adrp     x0, #0x51df000
0239d118: 00d040f9 ldr      x0, [x0, #0x1a0]
0239d11c: 7950b097 bl       #0xfb1300
0239d120: 28008052 mov      w8, #1
0239d124: a8722739 strb     w8, [x21, #0x9dc]
0239d128: f30a00b4 cbz      x19, #0x239d284
0239d12c: 804a40f9 ldr      x0, [x20, #0x90]
0239d130: a00a00b4 cbz      x0, #0x239d284
0239d134: a87401f0 adrp     x8, #0x5234000
0239d138: 08f942f9 ldr      x8, [x8, #0x5f0]
0239d13c: 611240b9 ldr      w1, [x19, #0x10]
0239d140: 020140f9 ldr      x2, [x8]
0239d144: 68d35394 bl       #0x3891ee4 ; System.Collections.Generic.Dictionary<int, object>$$ContainsKey
0239d148: 20040037 tbnz     w0, #0, #0x239d1cc
0239d14c: 601e40f9 ldr      x0, [x19, #0x38]
0239d150: a00900b4 cbz      x0, #0x239d284
0239d154: e1031faa mov      x1, xzr
0239d158: 0ebc3f94 bl       #0x338c190 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$HasCurrentCell
0239d15c: e0000036 tbz      w0, #0, #0x239d178
0239d160: e00313aa mov      x0, x19
0239d164: e1031faa mov      x1, xzr
0239d168: 4b973f94 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
0239d16c: e10300aa mov      x1, x0
0239d170: 48000094 bl       #0x239d290 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$IsReadyForLightball
0239d174: 40030036 tbz      w0, #0, #0x239d1dc
0239d178: 680240f9 ldr      x8, [x19]
0239d17c: e00313aa mov      x0, x19
0239d180: 09ad41f9 ldr      x9, [x8, #0x358]
0239d184: 01b141f9 ldr      x1, [x8, #0x360]
0239d188: 20013fd6 blr      x9
0239d18c: 00010036 tbz      w0, #0, #0x239d1ac
0239d190: 601e40f9 ldr      x0, [x19, #0x38]
0239d194: 800700b4 cbz      x0, #0x239d284
0239d198: e1031faa mov      x1, xzr
0239d19c: fdbb3f94 bl       #0x338c190 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$HasCurrentCell
0239d1a0: 60000036 tbz      w0, #0, #0x239d1ac
0239d1a4: 20008052 mov      w0, #1
0239d1a8: 0a000014 b        #0x239d1d0
0239d1ac: 804a40f9 ldr      x0, [x20, #0x90]
0239d1b0: a00600b4 cbz      x0, #0x239d284
0239d1b4: a8720190 adrp     x8, #0x51f1000
0239d1b8: 087543f9 ldr      x8, [x8, #0x6e8]
0239d1bc: 611240b9 ldr      w1, [x19, #0x10]
0239d1c0: e2031faa mov      x2, xzr
0239d1c4: 030140f9 ldr      x3, [x8]
0239d1c8: c7d25394 bl       #0x3891ce4 ; System.Collections.Generic.Dictionary<int, object>$$Add
0239d1cc: e0031f2a mov      w0, wzr
0239d1d0: f37b41a9 ldp      x19, x30, [sp, #0x10]
0239d1d4: f553c2a8 ldp      x21, x20, [sp], #0x20
0239d1d8: c0035fd6 ret      
0239d1dc: 804640f9 ldr      x0, [x20, #0x88]
0239d1e0: 200500b4 cbz      x0, #0x239d284
0239d1e4: 097201d0 adrp     x9, #0x51df000
0239d1e8: 29d140f9 ldr      x9, [x9, #0x1a0]
0239d1ec: 680240f9 ldr      x8, [x19]
0239d1f0: 210140f9 ldr      x1, [x9]
0239d1f4: 0ab14439 ldrb     w10, [x8, #0x12c]
0239d1f8: 29b04439 ldrb     w9, [x1, #0x12c]
0239d1fc: 5f01096b cmp      w10, w9
0239d200: 43040054 b.lo     #0x239d288
0239d204: 086540f9 ldr      x8, [x8, #0xc8]
0239d208: 080d098b add      x8, x8, x9, lsl #3
0239d20c: 08815ff8 ldur     x8, [x8, #-8]
0239d210: 1f0101eb cmp      x8, x1
0239d214: a1030054 b.ne     #0x239d288
0239d218: 497101d0 adrp     x9, #0x51c7000
0239d21c: 295544f9 ldr      x9, [x9, #0x8a8]
0239d220: 0a1c40b9 ldr      w10, [x0, #0x1c]
0239d224: 080840f9 ldr      x8, [x0, #0x10]
0239d228: 290140f9 ldr      x9, [x9]
0239d22c: 4a050011 add      w10, w10, #1
0239d230: 0a1c00b9 str      w10, [x0, #0x1c]
0239d234: 880200b4 cbz      x8, #0x239d284
0239d238: 0a1880b9 ldrsw    x10, [x0, #0x18]
0239d23c: 0b1940b9 ldr      w11, [x8, #0x18]
0239d240: 5f010b6b cmp      w10, w11
0239d244: 22010054 b.hs     #0x239d268
0239d248: 49050011 add      w9, w10, #1
0239d24c: 080d0a8b add      x8, x8, x10, lsl #3
0239d250: 091800b9 str      w9, [x0, #0x18]
0239d254: 130d02f8 str      x19, [x8, #0x20]!
0239d258: e00308aa mov      x0, x8
0239d25c: e10313aa mov      x1, x19
0239d260: 1350b097 bl       #0xfb12ac
0239d264: daffff17 b        #0x239d1cc
0239d268: 281140f9 ldr      x8, [x9, #0x20]
0239d26c: e10313aa mov      x1, x19
0239d270: 086140f9 ldr      x8, [x8, #0xc0]
0239d274: 022d40f9 ldr      x2, [x8, #0x58]
0239d278: 480440f9 ldr      x8, [x2, #8]
0239d27c: 00013fd6 blr      x8
0239d280: d3ffff17 b        #0x239d1cc
0239d284: 6950b097 bl       #0xfb1428
0239d288: e00313aa mov      x0, x19
0239d28c: 4d51b097 bl       #0xfb17c0
