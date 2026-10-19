# Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
# Linear span; next metadata entry is not a proven CFG boundary.
0338493c: 1f140071 cmp      w0, #5
03384940: 08010054 b.hi     #0x3384960
03384944: 28008052 mov      w8, #1
03384948: 0821c01a lsl      w8, w8, w0
0338494c: 29068052 mov      w9, #0x31
03384950: 1f01096a tst      w8, w9
03384954: 60000054 b.eq     #0x3384960
03384958: 20008052 mov      w0, #1
0338495c: c0035fd6 ret      
03384960: 1f1c0071 cmp      w0, #7
03384964: e0179f1a cset     w0, eq
03384968: c0035fd6 ret      
