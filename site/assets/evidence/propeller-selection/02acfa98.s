# Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$TryRedirect
# Next metadata method 0x2acfcec, not a proven function boundary.
02acfa98: ffc304d1 sub      sp, sp, #0x130
02acfa9c: fc5b10a9 stp      x28, x22, [sp, #0x100]
02acfaa0: f55311a9 stp      x21, x20, [sp, #0x110]
02acfaa4: f37b12a9 stp      x19, x30, [sp, #0x120]
02acfaa8: 965501f0 adrp     x22, #0x5582000
02acfaac: c8ca4639 ldrb     w8, [x22, #0x1b2]
02acfab0: f50302aa mov      x21, x2
02acfab4: f40301aa mov      x20, x1
02acfab8: f30300aa mov      x19, x0
02acfabc: c8000037 tbnz     w8, #0, #0x2acfad4
02acfac0: 403901f0 adrp     x0, #0x51fa000
02acfac4: 00f840f9 ldr      x0, [x0, #0x1f0]
02acfac8: 0e869397 bl       #0xfb1300
02acfacc: 28008052 mov      w8, #1
02acfad0: c8ca0639 strb     w8, [x22, #0x1b2]
02acfad4: ff7f00f9 str      xzr, [sp, #0xf8]
02acfad8: 681240f9 ldr      x8, [x19, #0x20]
02acfadc: 681000b4 cbz      x8, #0x2acfce8
02acfae0: 006140f9 ldr      x0, [x8, #0xc0]
02acfae4: 201000b4 cbz      x0, #0x2acfce8
02acfae8: d9e7ff97 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
02acfaec: 681240f9 ldr      x8, [x19, #0x20]
02acfaf0: c80f00b4 cbz      x8, #0x2acfce8
02acfaf4: 20050036 tbz      w0, #0, #0x2acfb98
02acfaf8: 006140f9 ldr      x0, [x8, #0xc0]
02acfafc: 600f00b4 cbz      x0, #0x2acfce8
02acfb00: a9e9ff97 bl       #0x2aca1a4 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$GetTopMostAboveItem
02acfb04: 400e00b4 cbz      x0, #0x2acfccc
02acfb08: 080040f9 ldr      x8, [x0]
02acfb0c: f50300aa mov      x21, x0
02acfb10: 09e542f9 ldr      x9, [x8, #0x5c8]
02acfb14: 01e942f9 ldr      x1, [x8, #0x5d0]
02acfb18: 20013fd6 blr      x9
02acfb1c: 800d0036 tbz      w0, #0, #0x2acfccc
02acfb20: a80240f9 ldr      x8, [x21]
02acfb24: e00315aa mov      x0, x21
02acfb28: 09ed42f9 ldr      x9, [x8, #0x5d8]
02acfb2c: 01f142f9 ldr      x1, [x8, #0x5e0]
02acfb30: 20013fd6 blr      x9
02acfb34: a00d00b4 cbz      x0, #0x2acfce8
02acfb38: 161440f9 ldr      x22, [x0, #0x28]
02acfb3c: 681240f9 ldr      x8, [x19, #0x20]
02acfb40: df0208eb cmp      x22, x8
02acfb44: 400c0054 b.eq     #0x2acfccc
02acfb48: 160d00b4 cbz      x22, #0x2acfce8
02acfb4c: 828240ad ldp      q2, q0, [x20, #0x10]
02acfb50: 881a40f9 ldr      x8, [x20, #0x30]
02acfb54: 8102c03d ldr      q1, [x20]
02acfb58: c05a40f9 ldr      x0, [x22, #0xb0]
02acfb5c: e28306ad stp      q2, q0, [sp, #0xd0]
02acfb60: e87b00f9 str      x8, [sp, #0xf0]
02acfb64: e133803d str      q1, [sp, #0xc0]
02acfb68: 000c00b4 cbz      x0, #0x2acfce8
02acfb6c: e10346ad ldp      q1, q0, [sp, #0xc0]
02acfb70: e23bc03d ldr      q2, [sp, #0xe0]
02acfb74: e87b40f9 ldr      x8, [sp, #0xf0]
02acfb78: e1030291 add      x1, sp, #0x80
02acfb7c: e10304ad stp      q1, q0, [sp, #0x80]
02acfb80: e22b803d str      q2, [sp, #0xa0]
02acfb84: e85b00f9 str      x8, [sp, #0xb0]
02acfb88: 9efeff97 bl       #0x2acf600 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$RemainingExplodeCount
02acfb8c: 1f000071 cmp      w0, #0
02acfb90: 0c0a0054 b.gt     #0x2acfcd0
02acfb94: 4e000014 b        #0x2acfccc
02acfb98: 000940f9 ldr      x0, [x8, #0x10]
02acfb9c: 600a00b4 cbz      x0, #0x2acfce8
02acfba0: e1031faa mov      x1, xzr
02acfba4: afd8f197 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02acfba8: 000500b4 cbz      x0, #0x2acfc48
02acfbac: 080040f9 ldr      x8, [x0]
02acfbb0: f60300aa mov      x22, x0
02acfbb4: 092d43f9 ldr      x9, [x8, #0x658]
02acfbb8: 013143f9 ldr      x1, [x8, #0x660]
02acfbbc: 20013fd6 blr      x9
02acfbc0: 40040036 tbz      w0, #0, #0x2acfc48
02acfbc4: c80240f9 ldr      x8, [x22]
02acfbc8: 81c241f8 ldur     x1, [x20, #0x1c]
02acfbcc: 822640b9 ldr      w2, [x20, #0x24]
02acfbd0: e00316aa mov      x0, x22
02acfbd4: 093543f9 ldr      x9, [x8, #0x668]
02acfbd8: 033943f9 ldr      x3, [x8, #0x670]
02acfbdc: 20013fd6 blr      x9
02acfbe0: 400800b4 cbz      x0, #0x2acfce8
02acfbe4: e1031faa mov      x1, xzr
02acfbe8: abcc2294 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
02acfbec: 681240f9 ldr      x8, [x19, #0x20]
02acfbf0: 1f0008eb cmp      x0, x8
02acfbf4: a0020054 b.eq     #0x2acfc48
02acfbf8: f60300aa mov      x22, x0
02acfbfc: 600700b4 cbz      x0, #0x2acfce8
02acfc00: 828240ad ldp      q2, q0, [x20, #0x10]
02acfc04: 881a40f9 ldr      x8, [x20, #0x30]
02acfc08: 8102c03d ldr      q1, [x20]
02acfc0c: c05a40f9 ldr      x0, [x22, #0xb0]
02acfc10: e28306ad stp      q2, q0, [sp, #0xd0]
02acfc14: e87b00f9 str      x8, [sp, #0xf0]
02acfc18: e133803d str      q1, [sp, #0xc0]
02acfc1c: 600600b4 cbz      x0, #0x2acfce8
02acfc20: e10346ad ldp      q1, q0, [sp, #0xc0]
02acfc24: e23bc03d ldr      q2, [sp, #0xe0]
02acfc28: e87b40f9 ldr      x8, [sp, #0xf0]
02acfc2c: e1030191 add      x1, sp, #0x40
02acfc30: e10302ad stp      q1, q0, [sp, #0x40]
02acfc34: e21b803d str      q2, [sp, #0x60]
02acfc38: e83b00f9 str      x8, [sp, #0x70]
02acfc3c: 71feff97 bl       #0x2acf600 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$RemainingExplodeCount
02acfc40: 1f000071 cmp      w0, #0
02acfc44: 6c040054 b.gt     #0x2acfcd0
02acfc48: 601640f9 ldr      x0, [x19, #0x28]
02acfc4c: e00400b4 cbz      x0, #0x2acfce8
02acfc50: 61068052 mov      w1, #0x33
02acfc54: e2031faa mov      x2, xzr
02acfc58: bd2bd697 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
02acfc5c: 80030036 tbz      w0, #0, #0x2acfccc
02acfc60: 483901f0 adrp     x8, #0x51fa000
02acfc64: 08f940f9 ldr      x8, [x8, #0x1f0]
02acfc68: 20068052 mov      w0, #0x31
02acfc6c: 010140f9 ldr      x1, [x8]
02acfc70: 7fbbe997 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
02acfc74: 828240ad ldp      q2, q0, [x20, #0x10]
02acfc78: 881a40f9 ldr      x8, [x20, #0x30]
02acfc7c: 8102c03d ldr      q1, [x20]
02acfc80: 621240f9 ldr      x2, [x19, #0x20]
02acfc84: e28306ad stp      q2, q0, [sp, #0xd0]
02acfc88: e87b00f9 str      x8, [sp, #0xf0]
02acfc8c: e133803d str      q1, [sp, #0xc0]
02acfc90: c00200b4 cbz      x0, #0x2acfce8
02acfc94: e10346ad ldp      q1, q0, [sp, #0xc0]
02acfc98: e23bc03d ldr      q2, [sp, #0xe0]
02acfc9c: e87b40f9 ldr      x8, [sp, #0xf0]
02acfca0: e3e30391 add      x3, sp, #0xf8
02acfca4: e4030091 mov      x4, sp
02acfca8: e10315aa mov      x1, x21
02acfcac: e5031faa mov      x5, xzr
02acfcb0: e10300ad stp      q1, q0, [sp]
02acfcb4: e20b803d str      q2, [sp, #0x20]
02acfcb8: e81b00f9 str      x8, [sp, #0x30]
02acfcbc: 4b43d997 bl       #0x21209e8 ; Royal.Scenes.Game.Mechanics.Items.IceCubeItem.IceCubeItemHelper$$TryRedirect
02acfcc0: 60000036 tbz      w0, #0, #0x2acfccc
02acfcc4: f67f40f9 ldr      x22, [sp, #0xf8]
02acfcc8: 02000014 b        #0x2acfcd0
02acfccc: 761240f9 ldr      x22, [x19, #0x20]
02acfcd0: e00316aa mov      x0, x22
02acfcd4: f37b52a9 ldp      x19, x30, [sp, #0x120]
02acfcd8: f55351a9 ldp      x21, x20, [sp, #0x110]
02acfcdc: fc5b50a9 ldp      x28, x22, [sp, #0x100]
02acfce0: ffc30491 add      sp, sp, #0x130
02acfce4: c0035fd6 ret      
02acfce8: d0859397 bl       #0xfb1428
