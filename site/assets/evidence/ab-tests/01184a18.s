# Royal.Scenes.Home.Ui.Dialogs.MergeSmith.Scripts.MergeSmithOfferModel$$get_IsCoinPurchaseAbEnable
# Next metadata method 0x1184a40, not a proven function boundary.
01184a18: fe0f1ff8 str      x30, [sp, #-0x10]!
01184a1c: 000c40f9 ldr      x0, [x0, #0x18]
01184a20: e00000b4 cbz      x0, #0x1184a3c
01184a24: e1031faa mov      x1, xzr
01184a28: 041e4794 bl       #0x234c238 ; Royal.Player.Context.Data.Persistent.MergeSmithProgress$$get_AbGroup
01184a2c: 1f180071 cmp      w0, #6
01184a30: e0179f1a cset     w0, eq
01184a34: fe0741f8 ldr      x30, [sp], #0x10
01184a38: c0035fd6 ret      
01184a3c: 7bb2f897 bl       #0xfb1428
