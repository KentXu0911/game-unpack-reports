# Royal.Scenes.Home.Ui.Dialogs.MergeSmith.Scripts.MergeSmithOfferModel$$get_IsLowPriceAbEnable
# Next metadata method 0x1184a18, not a proven function boundary.
011849f0: fe0f1ff8 str      x30, [sp, #-0x10]!
011849f4: 000c40f9 ldr      x0, [x0, #0x18]
011849f8: e00000b4 cbz      x0, #0x1184a14
011849fc: e1031faa mov      x1, xzr
01184a00: 0e1e4794 bl       #0x234c238 ; Royal.Player.Context.Data.Persistent.MergeSmithProgress$$get_AbGroup
01184a04: 1f100071 cmp      w0, #4
01184a08: e0179f1a cset     w0, eq
01184a0c: fe0741f8 ldr      x30, [sp], #0x10
01184a10: c0035fd6 ret      
01184a14: 85b2f897 bl       #0xfb1428
