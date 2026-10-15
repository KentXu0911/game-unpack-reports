# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsMultiplePurchaseEnabled
# Next metadata method 0x2464a34, not a proven function boundary.
024649f8: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
024649fc: e1188052 mov      w1, #0xc7
02464a00: f30300aa mov      x19, x0
02464a04: f7eeff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464a08: 1f140071 cmp      w0, #5
02464a0c: 61000054 b.ne     #0x2464a18
02464a10: 20008052 mov      w0, #1
02464a14: 06000014 b        #0x2464a2c
02464a18: 01198052 mov      w1, #0xc8
02464a1c: e00313aa mov      x0, x19
02464a20: f0eeff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464a24: 1f140071 cmp      w0, #5
02464a28: e0179f1a cset     w0, eq
02464a2c: f37bc1a8 ldp      x19, x30, [sp], #0x10
02464a30: c0035fd6 ret      
