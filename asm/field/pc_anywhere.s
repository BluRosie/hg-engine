.thumb
.align 4

// r4 is fsys, r5 is request structure
.global SetOverworldRequestFlags_hook
SetOverworldRequestFlags_hook:
mov r0, r5
ldr r1, [sp]
bl SetOverworldRequestFlags

ldr r0, [sp, #4] // icon0received
cmp r0, #0
beq returnToNoIcon0
mov r1, #2
ldr r0, [sp] // trg
ldr r2, =0x021E698C | 1
bx r2

returnToNoIcon0:
ldr r0, =0x021E6992 | 1
bx r0

.global CheckOverworldRequestFlags_hook
CheckOverworldRequestFlags_hook:
push {r0-r7}

bl CheckOverworldRequestFlags

pop {r0-r7}
mov r5, r0
ldrh r0, [r5]
mov r4, r1
lsl r0, r0, #0x12
lsr r0, r0, #0x1F
bne returnTo21E6B12
ldr r2, =0x021E6B02 | 1
bx r2

returnTo21E6B12:
ldr r0, =0x021E6B12 | 1
bx r0
