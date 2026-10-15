# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsLowDiscountEnabledAsAlternative
# Next metadata method 0x2464a70, not a proven function boundary.
02464a34: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
02464a38: e1188052 mov      w1, #0xc7
02464a3c: f30300aa mov      x19, x0
02464a40: e8eeff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464a44: 1f0c0071 cmp      w0, #3
02464a48: 61000054 b.ne     #0x2464a54
02464a4c: 20008052 mov      w0, #1
02464a50: 06000014 b        #0x2464a68
02464a54: 01198052 mov      w1, #0xc8
02464a58: e00313aa mov      x0, x19
02464a5c: e1eeff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464a60: 1f0c0071 cmp      w0, #3
02464a64: e0179f1a cset     w0, eq
02464a68: f37bc1a8 ldp      x19, x30, [sp], #0x10
02464a6c: c0035fd6 ret      
