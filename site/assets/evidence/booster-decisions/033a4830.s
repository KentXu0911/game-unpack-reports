# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerTntStrategy$$OnTargetReached
# Linear span; next metadata entry is not a proven CFG boundary.
033a4830: ffc301d1 sub      sp, sp, #0x70
033a4834: f75b04a9 stp      x23, x22, [sp, #0x40]
033a4838: f55305a9 stp      x21, x20, [sp, #0x50]
033a483c: f37b06a9 stp      x19, x30, [sp, #0x60]
033a4840: 160f01d0 adrp     x22, #0x5586000
033a4844: 37f200f0 adrp     x23, #0x51eb000
033a4848: c86a6739 ldrb     w8, [x22, #0x9da]
033a484c: f76e46f9 ldr      x23, [x23, #0xcd8]
033a4850: f50302aa mov      x21, x2
033a4854: f30301aa mov      x19, x1
033a4858: f40300aa mov      x20, x0
033a485c: c8000037 tbnz     w8, #0, #0x33a4874
033a4860: 20f200f0 adrp     x0, #0x51eb000
033a4864: 006c46f9 ldr      x0, [x0, #0xcd8]
033a4868: a6327097 bl       #0xfb1300
033a486c: 28008052 mov      w8, #1
033a4870: c86a2739 strb     w8, [x22, #0x9da]
033a4874: e10240f9 ldr      x1, [x23]
033a4878: 800b8052 mov      w0, #0x5c
033a487c: 5e68c697 bl       #0x253e9f4 ; Royal.Scenes.Game.Levels.LevelContext$$Get<object>
033a4880: 330300b4 cbz      x19, #0x33a48e4
033a4884: f60300aa mov      x22, x0
033a4888: e00313aa mov      x0, x19
033a488c: e1031faa mov      x1, xzr
033a4890: ca9bdc97 bl       #0x2acb7b8 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetViewPosition
033a4894: 960200b4 cbz      x22, #0x33a48e4
033a4898: 01018052 mov      w1, #8
033a489c: e00316aa mov      x0, x22
033a48a0: e2031faa mov      x2, xzr
033a48a4: 4ea2ce97 bl       #0x274d1dc ; Royal.Scenes.Game.MagicDuke.Charger.ChargerManager$$CollectComboForCharger
033a48a8: a81a40f9 ldr      x8, [x21, #0x30]
033a48ac: a18240ad ldp      q1, q0, [x21, #0x10]
033a48b0: a202c03d ldr      q2, [x21]
033a48b4: e2030091 mov      x2, sp
033a48b8: e00314aa mov      x0, x20
033a48bc: e10313aa mov      x1, x19
033a48c0: e81b00f9 str      x8, [sp, #0x30]
033a48c4: e18300ad stp      q1, q0, [sp, #0x10]
033a48c8: e203803d str      q2, [sp]
033a48cc: b5feff97 bl       #0x33a43a0 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerSpecialItemStrategy$$OnTargetReached
033a48d0: f37b46a9 ldp      x19, x30, [sp, #0x60]
033a48d4: f55345a9 ldp      x21, x20, [sp, #0x50]
033a48d8: f75b44a9 ldp      x23, x22, [sp, #0x40]
033a48dc: ffc30191 add      sp, sp, #0x70
033a48e0: c0035fd6 ret      
033a48e4: d1327097 bl       #0xfb1428
