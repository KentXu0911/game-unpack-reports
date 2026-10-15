# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$FindAllMatches
# Next metadata method 0x137a2b4, not a proven function boundary.
0137a290: f37bbfa9 stp      x19, x30, [sp, #-0x10]!
0137a294: f30300aa mov      x19, x0
0137a298: 07000094 bl       #0x137a2b4 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$SearchGridForPatterns
0137a29c: e00313aa mov      x0, x19
0137a2a0: e1031f2a mov      w1, wzr
0137a2a4: 31000094 bl       #0x137a368 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$ProcessExtensionsForAllMatches
0137a2a8: 600a40f9 ldr      x0, [x19, #0x10]
0137a2ac: f37bc1a8 ldp      x19, x30, [sp], #0x10
0137a2b0: c0035fd6 ret      
