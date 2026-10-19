# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballRocketStrategy$$AddMatchItemToList
# Linear span; next metadata entry is not a proven CFG boundary.
0239b714: f553bea9 stp      x21, x20, [sp, #-0x20]!
0239b718: f37b01a9 stp      x19, x30, [sp, #0x10]
0239b71c: 158f01f0 adrp     x21, #0x557e000
0239b720: a8066739 ldrb     w8, [x21, #0x9c1]
0239b724: f40301aa mov      x20, x1
0239b728: f30300aa mov      x19, x0
0239b72c: c8000037 tbnz     w8, #0, #0x239b744
0239b730: 607401d0 adrp     x0, #0x5229000
0239b734: 00d441f9 ldr      x0, [x0, #0x3a8]
0239b738: f256b097 bl       #0xfb1300
0239b73c: 28008052 mov      w8, #1
0239b740: a8062739 strb     w8, [x21, #0x9c1]
0239b744: e00313aa mov      x0, x19
0239b748: e10314aa mov      x1, x20
0239b74c: 16000094 bl       #0x239b7a4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballSpecialStrategy$$AddMatchItemToList
0239b750: 940200b4 cbz      x20, #0x239b7a0
0239b754: 608240f9 ldr      x0, [x19, #0x100]
0239b758: 400200b4 cbz      x0, #0x239b7a0
0239b75c: 687401d0 adrp     x8, #0x5229000
0239b760: 08d541f9 ldr      x8, [x8, #0x3a8]
0239b764: 620a41b9 ldr      w2, [x19, #0x108]
0239b768: 811240b9 ldr      w1, [x20, #0x10]
0239b76c: 030140f9 ldr      x3, [x8]
0239b770: 0db25394 bl       #0x3887fa4 ; System.Collections.Generic.Dictionary<int, Int32Enum>$$Add
0239b774: 680a41b9 ldr      w8, [x19, #0x108]
0239b778: a8000034 cbz      w8, #0x239b78c
0239b77c: 1f050071 cmp      w8, #1
0239b780: a1000054 b.ne     #0x239b794
0239b784: e8031f2a mov      w8, wzr
0239b788: 02000014 b        #0x239b790
0239b78c: 28008052 mov      w8, #1
0239b790: 680a01b9 str      w8, [x19, #0x108]
0239b794: f37b41a9 ldp      x19, x30, [sp, #0x10]
0239b798: f553c2a8 ldp      x21, x20, [sp], #0x20
0239b79c: c0035fd6 ret      
0239b7a0: 2257b097 bl       #0xfb1428
