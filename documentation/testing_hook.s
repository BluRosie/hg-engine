.nds
.thumb

.create "test.bin", (0x01C00000)

// .definelabel SymbolToJump, 0x20     // 00 F0 09 F8
// .definelabel SymbolToJump, 0x22     // 00 F0 0A F8
// .definelabel SymbolToJump, 0x24     // 00 F0 0B F8
// .definelabel SymbolToJump, 0x26     // 00 F0 0C F8
// .definelabel SymbolToJump, 0x200    // 00 F0 F9 F8
// .definelabel SymbolToJump, 0x2000   // 01 F0 F9 FF
// .definelabel SymbolToJump, 0x200000 // FF F1 F9 FF

// start 0x20
// .definelabel SymbolToJump, 0x2A     // FF F7 FE FF
// .definelabel SymbolToJump, 0x2C     // FF F7 FF FF
// .definelabel SymbolToJump, 0x2E     // 00 F0 00 F8
// .definelabel SymbolToJump, 0x2E+0x3FFFFE     // FF F3 FF FF
//.definelabel SymbolToJump, (0x02000000+0x0E-0x400000)     // F4 00 F8 01
//.definelabel SymbolToJump, (0x02000000+0x10-0x400000)     // 00 F4 01 F8
.definelabel SymbolToJump, (0x02000000+0xC)     // FF F7 FF FF


// so the immediate is just F000 F800
// where 0x7FF of first instruction is upper 11 bits (but the F800 must be F000)
// and 0x7FF is lower 11 bits (but the top must be F8)
// diff is from the *end* of the second instruction
//  (Target - HookAddr + 0xE) / 2 = immediate...  limit is very high at -0x400000 - +0x3FFFFE (unsigned immediate ranges from 0x3FFFFF)
//  so here we go


.org 0x02000000

push {r5-r6}
ldr r5, =addy_1
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl SymbolToJump
ldr r1, =addy_1
ldr r1, [r1]
mov pc, r1

.pool

addy_1:
.word 0xEFBEADDE

.close
