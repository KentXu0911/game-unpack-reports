# Royal.Scenes.Home.Ui.Dialogs.MergeSmith.Scripts.MergeSmithOfferModel$$get_IsOfferAbEnabled
# Next metadata method 0x11849f0, not a proven function boundary.
011849b4: fe0f1ff8 str      x30, [sp, #-0x10]!
011849b8: 000c40f9 ldr      x0, [x0, #0x18]
011849bc: 800100b4 cbz      x0, #0x11849ec
011849c0: e1031faa mov      x1, xzr
011849c4: 1d1e4794 bl       #0x234c238 ; Royal.Player.Context.Data.Persistent.MergeSmithProgress$$get_AbGroup
011849c8: 1f100071 cmp      w0, #4
011849cc: 61000054 b.ne     #0x11849d8
011849d0: 20008052 mov      w0, #1
011849d4: 04000014 b        #0x11849e4
011849d8: 08140051 sub      w8, w0, #5
011849dc: 1f090071 cmp      w8, #2
011849e0: e0279f1a cset     w0, lo
011849e4: fe0741f8 ldr      x30, [sp], #0x10
011849e8: c0035fd6 ret      
011849ec: 8fb2f897 bl       #0xfb1428
