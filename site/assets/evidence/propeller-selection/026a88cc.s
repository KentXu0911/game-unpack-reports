# Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$WillNotWinDueToSpecificWinCondition
# Next metadata method 0x26a8a70, not a proven function boundary.
026a88cc: f40f1ef8 str      x20, [sp, #-0x20]!
026a88d0: f37b01a9 stp      x19, x30, [sp, #0x10]
026a88d4: d4760190 adrp     x20, #0x5580000
026a88d8: 889a4139 ldrb     w8, [x20, #0x66]
026a88dc: f30300aa mov      x19, x0
026a88e0: 48020037 tbnz     w8, #0, #0x26a8928
026a88e4: c05b0190 adrp     x0, #0x5220000
026a88e8: 00d847f9 ldr      x0, [x0, #0xfb0]
026a88ec: 8522a497 bl       #0xfb1300
026a88f0: 605b01f0 adrp     x0, #0x5217000
026a88f4: 000846f9 ldr      x0, [x0, #0xc10]
026a88f8: 8222a497 bl       #0xfb1300
026a88fc: 805a01d0 adrp     x0, #0x51fa000
026a8900: 00f840f9 ldr      x0, [x0, #0x1f0]
026a8904: 7f22a497 bl       #0xfb1300
026a8908: 005801b0 adrp     x0, #0x51a9000
026a890c: 006c47f9 ldr      x0, [x0, #0xed8]
026a8910: 7c22a497 bl       #0xfb1300
026a8914: 805b01f0 adrp     x0, #0x521b000
026a8918: 002847f9 ldr      x0, [x0, #0xe50]
026a891c: 7922a497 bl       #0xfb1300
026a8920: 28008052 mov      w8, #1
026a8924: 889a0139 strb     w8, [x20, #0x66]
026a8928: 601640f9 ldr      x0, [x19, #0x28]
026a892c: 000a00b4 cbz      x0, #0x26a8a6c
026a8930: 01028052 mov      w1, #0x10
026a8934: e2031faa mov      x2, xzr
026a8938: 85c8e697 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
026a893c: 40010036 tbz      w0, #0, #0x26a8964
026a8940: c85b0190 adrp     x8, #0x5220000
026a8944: 08d947f9 ldr      x8, [x8, #0xfb0]
026a8948: e0028052 mov      w0, #0x17
026a894c: 010140f9 ldr      x1, [x8]
026a8950: 4758fa97 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
026a8954: c00800b4 cbz      x0, #0x26a8a6c
026a8958: e1031faa mov      x1, xzr
026a895c: 4e23eb97 bl       #0x2171694 ; Royal.Scenes.Game.Mechanics.Items.BirdItem.BirdItemHelper$$WillAllBirdsFallToBottom
026a8960: e0070036 tbz      w0, #0, #0x26a8a5c
026a8964: 601640f9 ldr      x0, [x19, #0x28]
026a8968: 200800b4 cbz      x0, #0x26a8a6c
026a896c: e1038052 mov      w1, #0x1f
026a8970: e2031faa mov      x2, xzr
026a8974: 76c8e697 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
026a8978: 40010036 tbz      w0, #0, #0x26a89a0
026a897c: 685b01f0 adrp     x8, #0x5217000
026a8980: 080946f9 ldr      x8, [x8, #0xc10]
026a8984: 40048052 mov      w0, #0x22
026a8988: 010140f9 ldr      x1, [x8]
026a898c: 3858fa97 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
026a8990: e00600b4 cbz      x0, #0x26a8a6c
026a8994: e1031faa mov      x1, xzr
026a8998: a43f1b94 bl       #0x2d78828 ; Royal.Scenes.Game.Mechanics.Items.FrogItem.FrogItemHelper$$WillAllFrogsFallToBottom
026a899c: 00060036 tbz      w0, #0, #0x26a8a5c
026a89a0: 601640f9 ldr      x0, [x19, #0x28]
026a89a4: 400600b4 cbz      x0, #0x26a8a6c
026a89a8: 61068052 mov      w1, #0x33
026a89ac: e2031faa mov      x2, xzr
026a89b0: 67c8e697 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
026a89b4: 40010036 tbz      w0, #0, #0x26a89dc
026a89b8: 885a01d0 adrp     x8, #0x51fa000
026a89bc: 08f940f9 ldr      x8, [x8, #0x1f0]
026a89c0: 20068052 mov      w0, #0x31
026a89c4: 010140f9 ldr      x1, [x8]
026a89c8: 2958fa97 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
026a89cc: 000500b4 cbz      x0, #0x26a8a6c
026a89d0: e1031faa mov      x1, xzr
026a89d4: 7bdfe997 bl       #0x21207c0 ; Royal.Scenes.Game.Mechanics.Items.IceCubeItem.IceCubeItemHelper$$WillAllIceCubesFallToBottom
026a89d8: 20040036 tbz      w0, #0, #0x26a8a5c
026a89dc: 601640f9 ldr      x0, [x19, #0x28]
026a89e0: 600400b4 cbz      x0, #0x26a8a6c
026a89e4: 010c8052 mov      w1, #0x60
026a89e8: e2031faa mov      x2, xzr
026a89ec: 58c8e697 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
026a89f0: 40010036 tbz      w0, #0, #0x26a8a18
026a89f4: 885b01f0 adrp     x8, #0x521b000
026a89f8: 082947f9 ldr      x8, [x8, #0xe50]
026a89fc: c00b8052 mov      w0, #0x5e
026a8a00: 010140f9 ldr      x1, [x8]
026a8a04: 1a58fa97 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
026a8a08: 200300b4 cbz      x0, #0x26a8a6c
026a8a0c: e1031faa mov      x1, xzr
026a8a10: 549ae097 bl       #0x1ecf360 ; Royal.Scenes.Game.Mechanics.Items.RoyalBotItem.RoyalBotItemHelper$$WillAllRoyalBotsFallToBottom
026a8a14: 40020036 tbz      w0, #0, #0x26a8a5c
026a8a18: 601640f9 ldr      x0, [x19, #0x28]
026a8a1c: 800200b4 cbz      x0, #0x26a8a6c
026a8a20: 410d8052 mov      w1, #0x6a
026a8a24: e2031faa mov      x2, xzr
026a8a28: 49c8e697 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
026a8a2c: 40010036 tbz      w0, #0, #0x26a8a54
026a8a30: 085801b0 adrp     x8, #0x51a9000
026a8a34: 086d47f9 ldr      x8, [x8, #0xed8]
026a8a38: a00c8052 mov      w0, #0x65
026a8a3c: 010140f9 ldr      x1, [x8]
026a8a40: 0b58fa97 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
026a8a44: 400100b4 cbz      x0, #0x26a8a6c
026a8a48: e1031faa mov      x1, xzr
026a8a4c: d91f1d94 bl       #0x2df09b0 ; Royal.Scenes.Game.Mechanics.Items.PairItem.PairItemHelper$$WillAllPairItemsBeCollected
026a8a50: 60000036 tbz      w0, #0, #0x26a8a5c
026a8a54: e0031f2a mov      w0, wzr
026a8a58: 02000014 b        #0x26a8a60
026a8a5c: 20008052 mov      w0, #1
026a8a60: f37b41a9 ldp      x19, x30, [sp, #0x10]
026a8a64: f40742f8 ldr      x20, [sp], #0x20
026a8a68: c0035fd6 ret      
026a8a6c: 6f22a497 bl       #0xfb1428
