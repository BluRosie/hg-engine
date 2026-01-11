.nds
.thumb

// included by armips/global.s

.open "base/arm9.bin", 0x02000000

.if BATTLE_MODE_FORCE_SET

.org 0x0202AD90

getSetMode:
    mov r0, #1
    bx lr


.org 0x0202AD98 // location of battle mon switching rule set routine - this makes it so player can not change selection from "set"

battleStyleSelectionCallback:
    ldrh r2, [r0]
    mov r1, #0x40
    orr r1, r2
    strh r1, [r0]
    bx lr

.endif

.if ALWAYS_UNCAPPED_FRAME_RATE | DEBUG_BATTLE_SCENARIOS

.org 0x02000E28
nop

.endif

.if BATTLES_UNCAPPED_FRAME_RATE

.org 0x02000E26
bl patch_uncapped_frame_rate

.org 0x02000C3C // sdk strings

patch_uncapped_frame_rate:
    ldr r1, =0x02247612
    ldrh r1, [r1]
    ldr r2, =0x2801
    cmp r1, r2
    beq @@return
    str r5, [r4, #0x30]
@@return:
    bx lr

.pool

.endif


.if FAST_TEXT_PRINTING | DEBUG_BATTLE_SCENARIOS

.org 0x02002346
    mov r1, #0

.org 0x020202EE
    add r4, r1, #0
    ldr r0, =0x021D1F6C

.org 0x0202031E
    pop {r4, pc}


.org 0x02020320
    sub r4, #0x2D
    b 0x020202F0


.org 0x0202032E
    beq 0x020202F0

.org 0x0202033A
    b 0x02020320

.org 0x02020354
.pool

.endif


.close
