# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsMultiplePurchaseDynamicOfferAvailabilityOverrideEnabled
# Next metadata method 0x24649f8, not a proven function boundary.
024649bc: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
024649c0: e1188052 mov      w1, #0xc7
024649c4: f30300aa mov      x19, x0
024649c8: 06efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024649cc: 1f100071 cmp      w0, #4
024649d0: 61000054 b.ne     #0x24649dc
024649d4: 20008052 mov      w0, #1
024649d8: 06000014 b        #0x24649f0
024649dc: 01198052 mov      w1, #0xc8
024649e0: e00313aa mov      x0, x19
024649e4: ffeeff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024649e8: 1f100071 cmp      w0, #4
024649ec: e0179f1a cset     w0, eq
024649f0: f37bc1a8 ldp      x19, x30, [sp], #0x10
024649f4: c0035fd6 ret      
