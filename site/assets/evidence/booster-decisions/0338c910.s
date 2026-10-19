# Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$RemainingExplodeCount
# Linear span; next metadata entry is not a proven CFG boundary.
0338c910: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
0338c914: e80300aa mov      x8, x0
0338c918: 003c40f9 ldr      x0, [x0, #0x78]
0338c91c: e00000b4 cbz      x0, #0x338c938
0338c920: 136940b9 ldr      w19, [x8, #0x68]
0338c924: e1031faa mov      x1, xzr
0338c928: e2b6e697 bl       #0x2d3a4b0 ; Royal.Scenes.Game.Mechanics.Explode.IncomingExploderContainer$$GetIncomingCount
0338c92c: 6002004b sub      w0, w19, w0
0338c930: f37bc1a8 ldp      x19, x30, [sp], #0x10
0338c934: c0035fd6 ret      
0338c938: bc927097 bl       #0xfb1428
