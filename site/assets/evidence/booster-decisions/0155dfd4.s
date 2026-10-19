# Royal.Scenes.Game.Mechanics.Items.StaticItems.MetalPlateItem.MetalPlateItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
0155dfd4: f40f1ef8 str      x20, [sp, #-0x20]!
0155dfd8: f37b01a9 stp      x19, x30, [sp, #0x10]
0155dfdc: 080040f9 ldr      x8, [x0]
0155dfe0: f403012a mov      w20, w1
0155dfe4: f30300aa mov      x19, x0
0155dfe8: 090d42f9 ldr      x9, [x8, #0x418]
0155dfec: 081142f9 ldr      x8, [x8, #0x420]
0155dff0: e10308aa mov      x1, x8
0155dff4: 20013fd6 blr      x9
0155dff8: 60000036 tbz      w0, #0, #0x155e004
0155dffc: e0031f2a mov      w0, wzr
0155e000: 28000014 b        #0x155e0a0
0155e004: e003142a mov      w0, w20
0155e008: e1031faa mov      x1, xzr
0155e00c: 4c9a7894 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
0155e010: c0000036 tbz      w0, #0, #0x155e028
0155e014: 601a40b9 ldr      w0, [x19, #0x18]
0155e018: f37b41a9 ldp      x19, x30, [sp, #0x10]
0155e01c: e1031faa mov      x1, xzr
0155e020: f40742f8 ldr      x20, [sp], #0x20
0155e024: cdb67814 b        #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
0155e028: e003142a mov      w0, w20
0155e02c: e1031faa mov      x1, xzr
0155e030: 5f9a7894 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
0155e034: 681a40b9 ldr      w8, [x19, #0x18]
0155e038: f403002a mov      w20, w0
0155e03c: e1031faa mov      x1, xzr
0155e040: e003082a mov      w0, w8
0155e044: c5b67894 bl       #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
0155e048: 689240b9 ldr      w8, [x19, #0x90]
0155e04c: f4000036 tbz      w20, #0, #0x155e068
0155e050: 1f110071 cmp      w8, #4
0155e054: 8b010054 b.lt     #0x155e084
0155e058: 1f1d0071 cmp      w8, #7
0155e05c: ec010054 b.gt     #0x155e098
0155e060: 68008052 mov      w8, #3
0155e064: 0e000014 b        #0x155e09c
0155e068: 1f050071 cmp      w8, #1
0155e06c: 80010054 b.eq     #0x155e09c
0155e070: 08791f12 and      w8, w8, #0xfffffffe
0155e074: 1f090071 cmp      w8, #2
0155e078: 48008052 mov      w8, #2
0155e07c: 0805881a cinc     w8, w8, ne
0155e080: 07000014 b        #0x155e09c
0155e084: 1f050071 cmp      w8, #1
0155e088: a0000054 b.eq     #0x155e09c
0155e08c: 08791f12 and      w8, w8, #0xfffffffe
0155e090: 1f090071 cmp      w8, #2
0155e094: 40000054 b.eq     #0x155e09c
0155e098: 88008052 mov      w8, #4
0155e09c: 007d001b mul      w0, w8, w0
0155e0a0: f37b41a9 ldp      x19, x30, [sp, #0x10]
0155e0a4: f40742f8 ldr      x20, [sp], #0x20
0155e0a8: c0035fd6 ret      
