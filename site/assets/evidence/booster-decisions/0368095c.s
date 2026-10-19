# Royal.Scenes.Game.Mechanics.Items.StaticItems.BlindsItem.BlindsItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
0368095c: f40f1ef8 str      x20, [sp, #-0x20]!
03680960: f37b01a9 stp      x19, x30, [sp, #0x10]
03680964: 080040f9 ldr      x8, [x0]
03680968: f403012a mov      w20, w1
0368096c: f30300aa mov      x19, x0
03680970: 090d42f9 ldr      x9, [x8, #0x418]
03680974: 081142f9 ldr      x8, [x8, #0x420]
03680978: e10308aa mov      x1, x8
0368097c: 20013fd6 blr      x9
03680980: 60000036 tbz      w0, #0, #0x368098c
03680984: e0031f2a mov      w0, wzr
03680988: 1b000014 b        #0x36809f4
0368098c: e003142a mov      w0, w20
03680990: e1031faa mov      x1, xzr
03680994: ea0ff497 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
03680998: c0000036 tbz      w0, #0, #0x36809b0
0368099c: 601a40b9 ldr      w0, [x19, #0x18]
036809a0: f37b41a9 ldp      x19, x30, [sp, #0x10]
036809a4: e1031faa mov      x1, xzr
036809a8: f40742f8 ldr      x20, [sp], #0x20
036809ac: 6b2cf417 b        #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
036809b0: e003142a mov      w0, w20
036809b4: e1031faa mov      x1, xzr
036809b8: fd0ff497 bl       #0x33849ac ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsAreaExploderStrategy
036809bc: 681a40b9 ldr      w8, [x19, #0x18]
036809c0: f403002a mov      w20, w0
036809c4: e1031faa mov      x1, xzr
036809c8: e003082a mov      w0, w8
036809cc: 632cf497 bl       #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
036809d0: 689240b9 ldr      w8, [x19, #0x90]
036809d4: f303002a mov      w19, w0
036809d8: e1031faa mov      x1, xzr
036809dc: e003082a mov      w0, w8
036809e0: 74000036 tbz      w20, #0, #0x36809ec
036809e4: ba048897 bl       #0x1881ccc ; Royal.Scenes.Game.Mechanics.Items.StaticItems.BlindsItem.BlindsItemHelper$$GetPowerForTntCombo
036809e8: 02000014 b        #0x36809f0
036809ec: c7048897 bl       #0x1881d08 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.BlindsItem.BlindsItemHelper$$GetPowerForRocketCombo
036809f0: 007c131b mul      w0, w0, w19
036809f4: f37b41a9 ldp      x19, x30, [sp, #0x10]
036809f8: f40742f8 ldr      x20, [sp], #0x20
036809fc: c0035fd6 ret      
