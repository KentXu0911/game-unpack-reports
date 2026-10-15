# Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$PatternToTiledId
# Next metadata method 0x20ed0a4, not a proven function boundary.
020ed080: 08080051 sub      w8, w0, #2
020ed084: 1f150071 cmp      w8, #5
020ed088: a8000054 b.hi     #0x20ed09c
020ed08c: 29f000d0 adrp     x9, #0x3ef3000
020ed090: 29712591 add      x9, x9, #0x95c
020ed094: 20d968b8 ldr      w0, [x9, w8, sxtw #2]
020ed098: c0035fd6 ret      
020ed09c: e0031f2a mov      w0, wzr
020ed0a0: c0035fd6 ret      
