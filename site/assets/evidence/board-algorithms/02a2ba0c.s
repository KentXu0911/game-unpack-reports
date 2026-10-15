# Royal.Scenes.Game.Levels.Units.FallManager$$FindTargetItemOrFillingCell
# Next metadata method 0x2a2be94, not a proven function boundary.
02a2ba0c: fa0f1bf8 str      x26, [sp, #-0x50]!
02a2ba10: f96301a9 stp      x25, x24, [sp, #0x10]
02a2ba14: f75b02a9 stp      x23, x22, [sp, #0x20]
02a2ba18: f55303a9 stp      x21, x20, [sp, #0x30]
02a2ba1c: f37b04a9 stp      x19, x30, [sp, #0x40]
02a2ba20: b65a01d0 adrp     x22, #0x5581000
02a2ba24: c8d67939 ldrb     w8, [x22, #0xe75]
02a2ba28: f40302aa mov      x20, x2
02a2ba2c: f30301aa mov      x19, x1
02a2ba30: f50300aa mov      x21, x0
02a2ba34: 28010037 tbnz     w8, #0, #0x2a2ba58
02a2ba38: 40400190 adrp     x0, #0x5233000
02a2ba3c: 00f845f9 ldr      x0, [x0, #0xbf0]
02a2ba40: 30169697 bl       #0xfb1300
02a2ba44: e03c01f0 adrp     x0, #0x51ca000
02a2ba48: 002c45f9 ldr      x0, [x0, #0xa58]
02a2ba4c: 2d169697 bl       #0xfb1300
02a2ba50: 28008052 mov      w8, #1
02a2ba54: c8d63939 strb     w8, [x22, #0xe75]
02a2ba58: 532100b4 cbz      x19, #0x2a2be80
02a2ba5c: e00314aa mov      x0, x20
02a2ba60: e1031faa mov      x1, xzr
02a2ba64: 7fc20039 strb     wzr, [x19, #0x30]
02a2ba68: 9f0200f9 str      xzr, [x20]
02a2ba6c: 10169697 bl       #0xfb12ac
02a2ba70: 600a40f9 ldr      x0, [x19, #0x10]
02a2ba74: 602000b4 cbz      x0, #0x2a2be80
02a2ba78: 796a40b9 ldr      w25, [x19, #0x68]
02a2ba7c: e1031faa mov      x1, xzr
02a2ba80: 6769f497 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
02a2ba84: e0000037 tbnz     w0, #0, #0x2a2baa0
02a2ba88: e00313aa mov      x0, x19
02a2ba8c: e1031f2a mov      w1, wzr
02a2ba90: e2031f2a mov      w2, wzr
02a2ba94: e3031faa mov      x3, xzr
02a2ba98: a5780294 bl       #0x2ac9d2c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallBlocked
02a2ba9c: e0000036 tbz      w0, #0, #0x2a2bab8
02a2baa0: f37b44a9 ldp      x19, x30, [sp, #0x40]
02a2baa4: f55343a9 ldp      x21, x20, [sp, #0x30]
02a2baa8: f75b42a9 ldp      x23, x22, [sp, #0x20]
02a2baac: f96341a9 ldp      x25, x24, [sp, #0x10]
02a2bab0: fa0745f8 ldr      x26, [sp], #0x50
02a2bab4: c0035fd6 ret      
02a2bab8: f83c01f0 adrp     x24, #0x51ca000
02a2babc: 182f45f9 ldr      x24, [x24, #0xa58]
02a2bac0: e10313aa mov      x1, x19
02a2bac4: e20313aa mov      x2, x19
02a2bac8: bb010094 bl       #0x2a2c1b4 ; Royal.Scenes.Game.Levels.Units.FallManager$$GetNextItemOfCell
02a2bacc: a00200b4 cbz      x0, #0x2a2bb20
02a2bad0: 010340f9 ldr      x1, [x24]
02a2bad4: 4d169697 bl       #0xfb1408
02a2bad8: 201200b4 cbz      x0, #0x2a2bd1c
02a2badc: 080040f9 ldr      x8, [x0]
02a2bae0: 010340f9 ldr      x1, [x24]
02a2bae4: f40300aa mov      x20, x0
02a2bae8: 09554279 ldrh     w9, [x8, #0x12a]
02a2baec: 290100b4 cbz      x9, #0x2a2bb10
02a2baf0: 0a5940f9 ldr      x10, [x8, #0xb0]
02a2baf4: 4a210091 add      x10, x10, #8
02a2baf8: 4b815ff8 ldur     x11, [x10, #-8]
02a2bafc: 7f0101eb cmp      x11, x1
02a2bb00: 20190054 b.eq     #0x2a2be24
02a2bb04: 290500f1 subs     x9, x9, #1
02a2bb08: 4a410091 add      x10, x10, #0x10
02a2bb0c: 61ffff54 b.ne     #0x2a2baf8
02a2bb10: e00314aa mov      x0, x20
02a2bb14: e2031f2a mov      w2, wzr
02a2bb18: ef559597 bl       #0xf812d4
02a2bb1c: c5000014 b        #0x2a2be30
02a2bb20: e00313aa mov      x0, x19
02a2bb24: e1031faa mov      x1, xzr
02a2bb28: 7d780294 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
02a2bb2c: a0fb0737 tbnz     w0, #0, #0x2a2baa0
02a2bb30: 680240f9 ldr      x8, [x19]
02a2bb34: 5a400190 adrp     x26, #0x5233000
02a2bb38: e00313aa mov      x0, x19
02a2bb3c: 091d41f9 ldr      x9, [x8, #0x238]
02a2bb40: 012141f9 ldr      x1, [x8, #0x240]
02a2bb44: 5afb45f9 ldr      x26, [x26, #0xbf0]
02a2bb48: 20013fd6 blr      x9
02a2bb4c: 80040036 tbz      w0, #0, #0x2a2bbdc
02a2bb50: e00313aa mov      x0, x19
02a2bb54: e1031faa mov      x1, xzr
02a2bb58: 49710294 bl       #0x2ac807c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsInCurrentBoard
02a2bb5c: 00040036 tbz      w0, #0, #0x2a2bbdc
02a2bb60: 680240f9 ldr      x8, [x19]
02a2bb64: 410340f9 ldr      x1, [x26]
02a2bb68: 0ab14439 ldrb     w10, [x8, #0x12c]
02a2bb6c: 29b04439 ldrb     w9, [x1, #0x12c]
02a2bb70: 5f01096b cmp      w10, w9
02a2bb74: c3180054 b.lo     #0x2a2be8c
02a2bb78: 086540f9 ldr      x8, [x8, #0xc8]
02a2bb7c: 080d098b add      x8, x8, x9, lsl #3
02a2bb80: 08815ff8 ldur     x8, [x8, #-8]
02a2bb84: 1f0101eb cmp      x8, x1
02a2bb88: 21180054 b.ne     #0x2a2be8c
02a2bb8c: 930200f9 str      x19, [x20]
02a2bb90: 680240f9 ldr      x8, [x19]
02a2bb94: 410340f9 ldr      x1, [x26]
02a2bb98: 0ab14439 ldrb     w10, [x8, #0x12c]
02a2bb9c: 29b04439 ldrb     w9, [x1, #0x12c]
02a2bba0: 5f01096b cmp      w10, w9
02a2bba4: 43170054 b.lo     #0x2a2be8c
02a2bba8: 086540f9 ldr      x8, [x8, #0xc8]
02a2bbac: 080d098b add      x8, x8, x9, lsl #3
02a2bbb0: 08815ff8 ldur     x8, [x8, #-8]
02a2bbb4: 1f0101eb cmp      x8, x1
02a2bbb8: a1160054 b.ne     #0x2a2be8c
02a2bbbc: e00314aa mov      x0, x20
02a2bbc0: e10313aa mov      x1, x19
02a2bbc4: ba159697 bl       #0xfb12ac
02a2bbc8: 800240f9 ldr      x0, [x20]
02a2bbcc: a01500b4 cbz      x0, #0x2a2be80
02a2bbd0: e1031faa mov      x1, xzr
02a2bbd4: 83910294 bl       #0x2ad01e0 ; Royal.Scenes.Game.Mechanics.Board.Cell.FillingCellModel$$IsReadyToRefill
02a2bbd8: 40f60737 tbnz     w0, #0, #0x2a2baa0
02a2bbdc: 601240f9 ldr      x0, [x19, #0x20]
02a2bbe0: 001500b4 cbz      x0, #0x2a2be80
02a2bbe4: 21008052 mov      w1, #1
02a2bbe8: e2031faa mov      x2, xzr
02a2bbec: 52320c94 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
02a2bbf0: f60300aa mov      x22, x0
02a2bbf4: 001300b4 cbz      x0, #0x2a2be54
02a2bbf8: a81a40f9 ldr      x8, [x21, #0x30]
02a2bbfc: 281400b4 cbz      x8, #0x2a2be80
02a2bc00: 087940f9 ldr      x8, [x8, #0xf0]
02a2bc04: e81300b4 cbz      x8, #0x2a2be80
02a2bc08: 083d40b9 ldr      w8, [x8, #0x3c]
02a2bc0c: c96a40b9 ldr      w9, [x22, #0x68]
02a2bc10: 08050011 add      w8, w8, #1
02a2bc14: 3f01086b cmp      w9, w8
02a2bc18: 4cf4ff54 b.gt     #0x2a2baa0
02a2bc1c: e00316aa mov      x0, x22
02a2bc20: e1031faa mov      x1, xzr
02a2bc24: 3e780294 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
02a2bc28: c0f30737 tbnz     w0, #0, #0x2a2baa0
02a2bc2c: e00316aa mov      x0, x22
02a2bc30: e1031faa mov      x1, xzr
02a2bc34: bc760294 bl       #0x2ac9724 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsNormalCell
02a2bc38: a0000036 tbz      w0, #0, #0x2a2bc4c
02a2bc3c: e00313aa mov      x0, x19
02a2bc40: e1031faa mov      x1, xzr
02a2bc44: d2770294 bl       #0x2ac9b8c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlankCell
02a2bc48: c0f20737 tbnz     w0, #0, #0x2a2baa0
02a2bc4c: e10316aa mov      x1, x22
02a2bc50: e20313aa mov      x2, x19
02a2bc54: 86010094 bl       #0x2a2c26c ; Royal.Scenes.Game.Levels.Units.FallManager$$IsFallPossibleFromCellToCell
02a2bc58: e00f0036 tbz      w0, #0, #0x2a2be54
02a2bc5c: e10316aa mov      x1, x22
02a2bc60: e20313aa mov      x2, x19
02a2bc64: 54010094 bl       #0x2a2c1b4 ; Royal.Scenes.Game.Levels.Units.FallManager$$GetNextItemOfCell
02a2bc68: 600700b5 cbnz     x0, #0x2a2bd54
02a2bc6c: c80240f9 ldr      x8, [x22]
02a2bc70: e00316aa mov      x0, x22
02a2bc74: 091d41f9 ldr      x9, [x8, #0x238]
02a2bc78: 012141f9 ldr      x1, [x8, #0x240]
02a2bc7c: 20013fd6 blr      x9
02a2bc80: 80040036 tbz      w0, #0, #0x2a2bd10
02a2bc84: e00316aa mov      x0, x22
02a2bc88: e1031faa mov      x1, xzr
02a2bc8c: fc700294 bl       #0x2ac807c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsInCurrentBoard
02a2bc90: 80f00736 tbz      w0, #0, #0x2a2baa0
02a2bc94: c80240f9 ldr      x8, [x22]
02a2bc98: 410340f9 ldr      x1, [x26]
02a2bc9c: 0ab14439 ldrb     w10, [x8, #0x12c]
02a2bca0: 29b04439 ldrb     w9, [x1, #0x12c]
02a2bca4: 5f01096b cmp      w10, w9
02a2bca8: e30e0054 b.lo     #0x2a2be84
02a2bcac: 086540f9 ldr      x8, [x8, #0xc8]
02a2bcb0: 080d098b add      x8, x8, x9, lsl #3
02a2bcb4: 08815ff8 ldur     x8, [x8, #-8]
02a2bcb8: 1f0101eb cmp      x8, x1
02a2bcbc: 410e0054 b.ne     #0x2a2be84
02a2bcc0: 960200f9 str      x22, [x20]
02a2bcc4: c80240f9 ldr      x8, [x22]
02a2bcc8: 410340f9 ldr      x1, [x26]
02a2bccc: 0ab14439 ldrb     w10, [x8, #0x12c]
02a2bcd0: 29b04439 ldrb     w9, [x1, #0x12c]
02a2bcd4: 5f01096b cmp      w10, w9
02a2bcd8: 630d0054 b.lo     #0x2a2be84
02a2bcdc: 086540f9 ldr      x8, [x8, #0xc8]
02a2bce0: 080d098b add      x8, x8, x9, lsl #3
02a2bce4: 08815ff8 ldur     x8, [x8, #-8]
02a2bce8: 1f0101eb cmp      x8, x1
02a2bcec: c10c0054 b.ne     #0x2a2be84
02a2bcf0: e00314aa mov      x0, x20
02a2bcf4: e10316aa mov      x1, x22
02a2bcf8: 6d159697 bl       #0xfb12ac
02a2bcfc: 800240f9 ldr      x0, [x20]
02a2bd00: 000c00b4 cbz      x0, #0x2a2be80
02a2bd04: e1031faa mov      x1, xzr
02a2bd08: 36910294 bl       #0x2ad01e0 ; Royal.Scenes.Game.Mechanics.Board.Cell.FillingCellModel$$IsReadyToRefill
02a2bd0c: a0ec0737 tbnz     w0, #0, #0x2a2baa0
02a2bd10: c01240f9 ldr      x0, [x22, #0x20]
02a2bd14: 80f6ffb5 cbnz     x0, #0x2a2bbe4
02a2bd18: 5a000014 b        #0x2a2be80
02a2bd1c: 730a40f9 ldr      x19, [x19, #0x10]
02a2bd20: 130b00b4 cbz      x19, #0x2a2be80
02a2bd24: e00313aa mov      x0, x19
02a2bd28: e1031faa mov      x1, xzr
02a2bd2c: a568f497 bl       #0x2745fc0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_NextItem
02a2bd30: e10300aa mov      x1, x0
02a2bd34: e00313aa mov      x0, x19
02a2bd38: f37b44a9 ldp      x19, x30, [sp, #0x40]
02a2bd3c: f55343a9 ldp      x21, x20, [sp, #0x30]
02a2bd40: f75b42a9 ldp      x23, x22, [sp, #0x20]
02a2bd44: f96341a9 ldp      x25, x24, [sp, #0x10]
02a2bd48: e2031faa mov      x2, xzr
02a2bd4c: fa0745f8 ldr      x26, [sp], #0x50
02a2bd50: 3e68f417 b        #0x2745e48 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$SetTargetItem
02a2bd54: f70300aa mov      x23, x0
02a2bd58: 800240f9 ldr      x0, [x20]
02a2bd5c: a00000b4 cbz      x0, #0x2a2bd70
02a2bd60: e10317aa mov      x1, x23
02a2bd64: e2031faa mov      x2, xzr
02a2bd68: 47920294 bl       #0x2ad0684 ; Royal.Scenes.Game.Mechanics.Board.Cell.FillingCellModel$$ContainsInTopQueue
02a2bd6c: a0e90737 tbnz     w0, #0, #0x2a2baa0
02a2bd70: e00317aa mov      x0, x23
02a2bd74: e1031faa mov      x1, xzr
02a2bd78: 475c2594 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
02a2bd7c: 200800b4 cbz      x0, #0x2a2be80
02a2bd80: 086840b9 ldr      w8, [x0, #0x68]
02a2bd84: 1f01196b cmp      w8, w25
02a2bd88: 60000054 b.eq     #0x2a2bd94
02a2bd8c: 880240f9 ldr      x8, [x20]
02a2bd90: 280600b4 cbz      x8, #0x2a2be54
02a2bd94: c11a40b9 ldr      w1, [x22, #0x18]
02a2bd98: e00315aa mov      x0, x21
02a2bd9c: 57010094 bl       #0x2a2c2f8 ; Royal.Scenes.Game.Levels.Units.FallManager$$CheckForTopBoard
02a2bda0: e0010036 tbz      w0, #0, #0x2a2bddc
02a2bda4: e00317aa mov      x0, x23
02a2bda8: e1031faa mov      x1, xzr
02a2bdac: 04882594 bl       #0x338ddbc ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$IsInCurrentBoard
02a2bdb0: 60010037 tbnz     w0, #0, #0x2a2bddc
02a2bdb4: 800240f9 ldr      x0, [x20]
02a2bdb8: 200100b4 cbz      x0, #0x2a2bddc
02a2bdbc: e1031faa mov      x1, xzr
02a2bdc0: af700294 bl       #0x2ac807c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsInCurrentBoard
02a2bdc4: c0000036 tbz      w0, #0, #0x2a2bddc
02a2bdc8: 800240f9 ldr      x0, [x20]
02a2bdcc: a00500b4 cbz      x0, #0x2a2be80
02a2bdd0: e10317aa mov      x1, x23
02a2bdd4: e2031faa mov      x2, xzr
02a2bdd8: 3b910294 bl       #0x2ad02c4 ; Royal.Scenes.Game.Mechanics.Board.Cell.FillingCellModel$$AddItemToComingFromTopBoard
02a2bddc: 010340f9 ldr      x1, [x24]
02a2bde0: e00317aa mov      x0, x23
02a2bde4: 89159697 bl       #0xfb1408
02a2bde8: 400400b4 cbz      x0, #0x2a2be70
02a2bdec: 080040f9 ldr      x8, [x0]
02a2bdf0: 010340f9 ldr      x1, [x24]
02a2bdf4: f40300aa mov      x20, x0
02a2bdf8: 09554279 ldrh     w9, [x8, #0x12a]
02a2bdfc: a9e8ffb4 cbz      x9, #0x2a2bb10
02a2be00: 0a5940f9 ldr      x10, [x8, #0xb0]
02a2be04: 4a210091 add      x10, x10, #8
02a2be08: 4b815ff8 ldur     x11, [x10, #-8]
02a2be0c: 7f0101eb cmp      x11, x1
02a2be10: a0000054 b.eq     #0x2a2be24
02a2be14: 290500f1 subs     x9, x9, #1
02a2be18: 4a410091 add      x10, x10, #0x10
02a2be1c: 61ffff54 b.ne     #0x2a2be08
02a2be20: 3cffff17 b        #0x2a2bb10
02a2be24: 490180b9 ldrsw    x9, [x10]
02a2be28: 0811098b add      x8, x8, x9, lsl #4
02a2be2c: 00e10491 add      x0, x8, #0x138
02a2be30: 030840a9 ldp      x3, x2, [x0]
02a2be34: e00314aa mov      x0, x20
02a2be38: e10313aa mov      x1, x19
02a2be3c: f37b44a9 ldp      x19, x30, [sp, #0x40]
02a2be40: f55343a9 ldp      x21, x20, [sp, #0x30]
02a2be44: f75b42a9 ldp      x23, x22, [sp, #0x20]
02a2be48: f96341a9 ldp      x25, x24, [sp, #0x10]
02a2be4c: fa0745f8 ldr      x26, [sp], #0x50
02a2be50: 60001fd6 br       x3
02a2be54: e00315aa mov      x0, x21
02a2be58: e10313aa mov      x1, x19
02a2be5c: e20316aa mov      x2, x22
02a2be60: 3c010094 bl       #0x2a2c350 ; Royal.Scenes.Game.Levels.Units.FallManager$$ShouldFindCross
02a2be64: 08000012 and      w8, w0, #1
02a2be68: 68c20039 strb     w8, [x19, #0x30]
02a2be6c: 0dffff17 b        #0x2a2baa0
02a2be70: 600a40f9 ldr      x0, [x19, #0x10]
02a2be74: 600000b4 cbz      x0, #0x2a2be80
02a2be78: e10317aa mov      x1, x23
02a2be7c: afffff17 b        #0x2a2bd38
02a2be80: 6a159697 bl       #0xfb1428
02a2be84: e00316aa mov      x0, x22
02a2be88: 4e169697 bl       #0xfb17c0
02a2be8c: e00313aa mov      x0, x19
02a2be90: 4c169697 bl       #0xfb17c0
