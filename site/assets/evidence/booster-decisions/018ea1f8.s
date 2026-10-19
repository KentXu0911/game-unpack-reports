# Royal.Scenes.Game.Mechanics.Items.StaticItems.ForceFieldItem.ForceFieldItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
018ea1f8: f553bea9 stp      x21, x20, [sp, #-0x20]!
018ea1fc: f37b01a9 stp      x19, x30, [sp, #0x10]
018ea200: 08204239 ldrb     w8, [x0, #0x88]
018ea204: 48040034 cbz      w8, #0x18ea28c
018ea208: 080040f9 ldr      x8, [x0]
018ea20c: f303012a mov      w19, w1
018ea210: f40300aa mov      x20, x0
018ea214: 097542f9 ldr      x9, [x8, #0x4e8]
018ea218: 017942f9 ldr      x1, [x8, #0x4f0]
018ea21c: 20013fd6 blr      x9
018ea220: f503002a mov      w21, w0
018ea224: e00314aa mov      x0, x20
018ea228: e103132a mov      w1, w19
018ea22c: e2031faa mov      x2, xzr
018ea230: ad0d6094 bl       #0x30ed8e4 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetExplodeScore
018ea234: bf060071 cmp      w21, #1
018ea238: f303002a mov      w19, w0
018ea23c: a1020054 b.ne     #0x18ea290
018ea240: 801a40b9 ldr      w0, [x20, #0x18]
018ea244: e1031faa mov      x1, xzr
018ea248: 44866a94 bl       #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
018ea24c: f503002a mov      w21, w0
018ea250: 21fdff97 bl       #0x18e96d4 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.ForceFieldItem.ForceFieldItemModel$$get_ItemHelper
018ea254: 600200b4 cbz      x0, #0x18ea2a0
018ea258: 818e40b9 ldr      w1, [x20, #0x8c]
018ea25c: e2031faa mov      x2, xzr
018ea260: 01000b94 bl       #0x1baa264 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.ForceFieldItem.ForceFieldItemHelper$$GetGroupLength
018ea264: 08040051 sub      w8, w0, #1
018ea268: c9aa8a52 mov      w9, #0x5556
018ea26c: a9aaaa72 movk     w9, #0x5555, lsl #16
018ea270: 087d151b mul      w8, w8, w21
018ea274: 087d299b smull    x8, w8, w9
018ea278: 09fd7fd3 lsr      x9, x8, #0x3f
018ea27c: 08fd60d3 lsr      x8, x8, #0x20
018ea280: 0801090b add      w8, w8, w9
018ea284: 1301130b add      w19, w8, w19
018ea288: 02000014 b        #0x18ea290
018ea28c: f3031f2a mov      w19, wzr
018ea290: e003132a mov      w0, w19
018ea294: f37b41a9 ldp      x19, x30, [sp, #0x10]
018ea298: f553c2a8 ldp      x21, x20, [sp], #0x20
018ea29c: c0035fd6 ret      
018ea2a0: 621cdb97 bl       #0xfb1428
