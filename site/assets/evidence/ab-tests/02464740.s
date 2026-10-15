# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsWeeklyPassMorePricingEnabled
# Next metadata method 0x246477c, not a proven function boundary.
02464740: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
02464744: 61178052 mov      w1, #0xbb
02464748: f30300aa mov      x19, x0
0246474c: a5efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464750: 1f140071 cmp      w0, #5
02464754: 61000054 b.ne     #0x2464760
02464758: 20008052 mov      w0, #1
0246475c: 06000014 b        #0x2464774
02464760: 81178052 mov      w1, #0xbc
02464764: e00313aa mov      x0, x19
02464768: 9eefff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
0246476c: 1f140071 cmp      w0, #5
02464770: e0179f1a cset     w0, eq
02464774: f37bc1a8 ldp      x19, x30, [sp], #0x10
02464778: c0035fd6 ret      
