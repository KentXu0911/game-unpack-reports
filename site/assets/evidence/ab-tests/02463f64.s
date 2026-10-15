# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsLevelEndRewardReductionAbEnabled
# Next metadata method 0x2463ff0, not a proven function boundary.
02463f64: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
02463f68: 01108052 mov      w1, #0x80
02463f6c: f30300aa mov      x19, x0
02463f70: 9cf1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02463f74: 1f080071 cmp      w0, #2
02463f78: a0020054 b.eq     #0x2463fcc
02463f7c: 21108052 mov      w1, #0x81
02463f80: e00313aa mov      x0, x19
02463f84: 97f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02463f88: 1f080071 cmp      w0, #2
02463f8c: 00020054 b.eq     #0x2463fcc
02463f90: 01108052 mov      w1, #0x80
02463f94: e00313aa mov      x0, x19
02463f98: 92f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02463f9c: 1f100071 cmp      w0, #4
02463fa0: 60010054 b.eq     #0x2463fcc
02463fa4: 21108052 mov      w1, #0x81
02463fa8: e00313aa mov      x0, x19
02463fac: 8df1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02463fb0: 1f100071 cmp      w0, #4
02463fb4: c0000054 b.eq     #0x2463fcc
02463fb8: 01108052 mov      w1, #0x80
02463fbc: e00313aa mov      x0, x19
02463fc0: 88f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02463fc4: 1f140071 cmp      w0, #5
02463fc8: 81000054 b.ne     #0x2463fd8
02463fcc: 20008052 mov      w0, #1
02463fd0: f37bc1a8 ldp      x19, x30, [sp], #0x10
02463fd4: c0035fd6 ret      
02463fd8: 21108052 mov      w1, #0x81
02463fdc: e00313aa mov      x0, x19
02463fe0: 80f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02463fe4: 1f140071 cmp      w0, #5
02463fe8: e0179f1a cset     w0, eq
02463fec: f9ffff17 b        #0x2463fd0
