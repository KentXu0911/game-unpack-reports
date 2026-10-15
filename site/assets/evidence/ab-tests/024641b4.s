# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsShopRedesignEnabled
# Next metadata method 0x24641f0, not a proven function boundary.
024641b4: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
024641b8: c1148052 mov      w1, #0xa6
024641bc: f30300aa mov      x19, x0
024641c0: 08f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024641c4: 1f080071 cmp      w0, #2
024641c8: 61000054 b.ne     #0x24641d4
024641cc: 20008052 mov      w0, #1
024641d0: 06000014 b        #0x24641e8
024641d4: e1148052 mov      w1, #0xa7
024641d8: e00313aa mov      x0, x19
024641dc: 01f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024641e0: 1f080071 cmp      w0, #2
024641e4: e0179f1a cset     w0, eq
024641e8: f37bc1a8 ldp      x19, x30, [sp], #0x10
024641ec: c0035fd6 ret      
