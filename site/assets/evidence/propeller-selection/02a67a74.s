# Royal.Scenes.Game.Mechanics.Items.BoxingGloveItem.BoxingGloveItemModel$$SetTntRocketComboExploders
# Next metadata method 0x2a67b1c, not a proven function boundary.
02a67a74: f553bea9 stp      x21, x20, [sp, #-0x20]!
02a67a78: f37b01a9 stp      x19, x30, [sp, #0x10]
02a67a7c: f40300aa mov      x20, x0
02a67a80: 002440f9 ldr      x0, [x0, #0x48]
02a67a84: a00400b4 cbz      x0, #0x2a67b18
02a67a88: f30302aa mov      x19, x2
02a67a8c: f50301aa mov      x21, x1
02a67a90: 61008052 mov      w1, #3
02a67a94: e2031faa mov      x2, xzr
02a67a98: fbcbd797 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
02a67a9c: 80030036 tbz      w0, #0, #0x2a67b0c
02a67aa0: 886a40b9 ldr      w8, [x20, #0x68]
02a67aa4: 1f050071 cmp      w8, #1
02a67aa8: 2c030054 b.gt     #0x2a67b0c
02a67aac: e00314aa mov      x0, x20
02a67ab0: e1031faa mov      x1, xzr
02a67ab4: f86c2494 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
02a67ab8: 000100b4 cbz      x0, #0x2a67ad8
02a67abc: 086040f9 ldr      x8, [x0, #0xc0]
02a67ac0: c80200b4 cbz      x8, #0x2a67b18
02a67ac4: 001540f9 ldr      x0, [x8, #0x28]
02a67ac8: 800200b4 cbz      x0, #0x2a67b18
02a67acc: a10e40b9 ldr      w1, [x21, #0xc]
02a67ad0: e2031faa mov      x2, xzr
02a67ad4: 85490b94 bl       #0x2d3a0e8 ; Royal.Scenes.Game.Mechanics.Explode.ExploderContainer$$AddToExploders
02a67ad8: e00314aa mov      x0, x20
02a67adc: e1031faa mov      x1, xzr
02a67ae0: ed6c2494 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
02a67ae4: 400100b4 cbz      x0, #0x2a67b0c
02a67ae8: 086040f9 ldr      x8, [x0, #0xc0]
02a67aec: 680100b4 cbz      x8, #0x2a67b18
02a67af0: 001540f9 ldr      x0, [x8, #0x28]
02a67af4: 200100b4 cbz      x0, #0x2a67b18
02a67af8: 610e40b9 ldr      w1, [x19, #0xc]
02a67afc: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a67b00: e2031faa mov      x2, xzr
02a67b04: f553c2a8 ldp      x21, x20, [sp], #0x20
02a67b08: 78490b14 b        #0x2d3a0e8 ; Royal.Scenes.Game.Mechanics.Explode.ExploderContainer$$AddToExploders
02a67b0c: f37b41a9 ldp      x19, x30, [sp, #0x10]
02a67b10: f553c2a8 ldp      x21, x20, [sp], #0x20
02a67b14: c0035fd6 ret      
02a67b18: 44269597 bl       #0xfb1428
