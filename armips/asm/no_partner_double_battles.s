.nds
.thumb

.open "base/arm9.bin", 0x02000000

.if NO_PARTNER_DOUBLE_BATTLES == 1

// fix for special intros being overwritten with the double battle intro
.org 0x02000000 + 0x51779
.byte 0xE0  // Overwrite with 'B' opcode in THUMB

// modify the double battle flag check to immediately return with the original value instead of forcing 0 or 1
.org 0x02000000 + 0x40508
.hword 0xBD08  // word write: pop {r3, r4, pc}

// patch double battle walking so it only happens for value of 2
.org 0x02000000 + 0x640EE
.byte 0x02  // cmp r0, #2
.org 0x02000000 + 0x640EE + 3
.byte 0xD0  // beq (branch to double trainer walk)

// patch the second double battle walking prefix so it only happens for value of 2
.org 0x02000000 + 0x64172
.byte 0x02  // cmp r0, #2

// patch for the double battle text box to only appear for value of 2
.org 0x02000000 + 0x497A4
.hword 0x46C0  // mov r8 -> r0
.hword 0x2802  // cmp r0, #2
.org 0x02000000 + 0x497A4 + 5
.byte 0xD0  // beq

.else


.org 0x02000000 + 0x51779
.byte 0xD0

.org 0x02000000 + 0x40508
.hword 0x2800

.org 0x02000000 + 0x640EE
.byte 0x00
.org 0x02000000 + 0x640EE + 3
.byte 0xD1

.org 0x02000000 + 0x64172
.byte 0x01

.org 0x02000000 + 0x497A4
.hword 0x0400
.hword 0x0C00
.org 0x02000000 + 0x497A4 + 5
.byte 0xD1


.endif

.close
