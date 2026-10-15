# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsWeeklyPassEnabled
# Next metadata method 0x2464740, not a proven function boundary.
024646b4: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
024646b8: 61178052 mov      w1, #0xbb
024646bc: f30300aa mov      x19, x0
024646c0: c8efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024646c4: 1f0c0071 cmp      w0, #3
024646c8: a0020054 b.eq     #0x246471c
024646cc: 81178052 mov      w1, #0xbc
024646d0: e00313aa mov      x0, x19
024646d4: c3efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024646d8: 1f0c0071 cmp      w0, #3
024646dc: 00020054 b.eq     #0x246471c
024646e0: 61178052 mov      w1, #0xbb
024646e4: e00313aa mov      x0, x19
024646e8: beefff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024646ec: 1f100071 cmp      w0, #4
024646f0: 60010054 b.eq     #0x246471c
024646f4: 81178052 mov      w1, #0xbc
024646f8: e00313aa mov      x0, x19
024646fc: b9efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464700: 1f100071 cmp      w0, #4
02464704: c0000054 b.eq     #0x246471c
02464708: 61178052 mov      w1, #0xbb
0246470c: e00313aa mov      x0, x19
02464710: b4efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464714: 1f140071 cmp      w0, #5
02464718: 81000054 b.ne     #0x2464728
0246471c: 20008052 mov      w0, #1
02464720: f37bc1a8 ldp      x19, x30, [sp], #0x10
02464724: c0035fd6 ret      
02464728: 81178052 mov      w1, #0xbc
0246472c: e00313aa mov      x0, x19
02464730: acefff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464734: 1f140071 cmp      w0, #5
02464738: e0179f1a cset     w0, eq
0246473c: f9ffff17 b        #0x2464720
