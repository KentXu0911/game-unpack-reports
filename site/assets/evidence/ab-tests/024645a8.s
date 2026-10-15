# Royal.Player.Context.Data.Persistent.AbTestHelper$$IsBoosterRewardReductionEnabled
# Next metadata method 0x2464684, not a proven function boundary.
024645a8: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
024645ac: e1168052 mov      w1, #0xb7
024645b0: f30300aa mov      x19, x0
024645b4: 0bf0ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024645b8: 1f080071 cmp      w0, #2
024645bc: 20050054 b.eq     #0x2464660
024645c0: 01178052 mov      w1, #0xb8
024645c4: e00313aa mov      x0, x19
024645c8: 06f0ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024645cc: 1f080071 cmp      w0, #2
024645d0: 80040054 b.eq     #0x2464660
024645d4: e1168052 mov      w1, #0xb7
024645d8: e00313aa mov      x0, x19
024645dc: 01f0ff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024645e0: 1f0c0071 cmp      w0, #3
024645e4: e0030054 b.eq     #0x2464660
024645e8: 01178052 mov      w1, #0xb8
024645ec: e00313aa mov      x0, x19
024645f0: fcefff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
024645f4: 1f0c0071 cmp      w0, #3
024645f8: 40030054 b.eq     #0x2464660
024645fc: e1168052 mov      w1, #0xb7
02464600: e00313aa mov      x0, x19
02464604: f7efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464608: 1f100071 cmp      w0, #4
0246460c: a0020054 b.eq     #0x2464660
02464610: 01178052 mov      w1, #0xb8
02464614: e00313aa mov      x0, x19
02464618: f2efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
0246461c: 1f100071 cmp      w0, #4
02464620: 00020054 b.eq     #0x2464660
02464624: e1168052 mov      w1, #0xb7
02464628: e00313aa mov      x0, x19
0246462c: edefff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464630: 1f140071 cmp      w0, #5
02464634: 60010054 b.eq     #0x2464660
02464638: 01178052 mov      w1, #0xb8
0246463c: e00313aa mov      x0, x19
02464640: e8efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464644: 1f140071 cmp      w0, #5
02464648: c0000054 b.eq     #0x2464660
0246464c: e1168052 mov      w1, #0xb7
02464650: e00313aa mov      x0, x19
02464654: e3efff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464658: 1f180071 cmp      w0, #6
0246465c: 81000054 b.ne     #0x246466c
02464660: 20008052 mov      w0, #1
02464664: f37bc1a8 ldp      x19, x30, [sp], #0x10
02464668: c0035fd6 ret      
0246466c: 01178052 mov      w1, #0xb8
02464670: e00313aa mov      x0, x19
02464674: dbefff97 bl       #0x24605e0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$get_Item
02464678: 1f180071 cmp      w0, #6
0246467c: e0179f1a cset     w0, eq
02464680: f9ffff17 b        #0x2464664
