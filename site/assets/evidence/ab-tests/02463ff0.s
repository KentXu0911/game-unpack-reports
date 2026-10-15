# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsEventRewardReductionAbEnabled
# Next metadata method 0x246407c, not a proven function boundary.
02463ff0: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
02463ff4: 01108052 mov      w1, #0x80
02463ff8: f30300aa mov      x19, x0
02463ffc: 79f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464000: 1f0c0071 cmp      w0, #3
02464004: a0020054 b.eq     #0x2464058
02464008: 21108052 mov      w1, #0x81
0246400c: e00313aa mov      x0, x19
02464010: 74f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464014: 1f0c0071 cmp      w0, #3
02464018: 00020054 b.eq     #0x2464058
0246401c: 01108052 mov      w1, #0x80
02464020: e00313aa mov      x0, x19
02464024: 6ff1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464028: 1f100071 cmp      w0, #4
0246402c: 60010054 b.eq     #0x2464058
02464030: 21108052 mov      w1, #0x81
02464034: e00313aa mov      x0, x19
02464038: 6af1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
0246403c: 1f100071 cmp      w0, #4
02464040: c0000054 b.eq     #0x2464058
02464044: 01108052 mov      w1, #0x80
02464048: e00313aa mov      x0, x19
0246404c: 65f1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464050: 1f140071 cmp      w0, #5
02464054: 81000054 b.ne     #0x2464064
02464058: 20008052 mov      w0, #1
0246405c: f37bc1a8 ldp      x19, x30, [sp], #0x10
02464060: c0035fd6 ret      
02464064: 21108052 mov      w1, #0x81
02464068: e00313aa mov      x0, x19
0246406c: 5df1ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464070: 1f140071 cmp      w0, #5
02464074: e0179f1a cset     w0, eq
02464078: f9ffff17 b        #0x246405c
