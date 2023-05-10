.nds
.thumb

// credits to bubble for this file
// included by armips/global.s

.open "base/overlay/overlay_0010.bin", 0x0221BE20

.org 0x3E8 + 0x0221BE20
    bl getmovetarget

.org 0xCDC + 0x0221BE20
    .word 0x3181

.org 0xD40 + 0x0221BE20
    .word 0x3181

.org 0xDFC + 0x0221BE20
    bl getmovetype

.org 0xF04 + 0x0221BE20
    bl getmovepower

.org 0xF30 + 0x0221BE20
    bl getbattleeffect_1

.org 0x1040 + 0x0221BE20
    .word 0x3181

.org 0x1278 + 0x0221BE20
    bl getbattleeffect_2

.org 0x180C + 0x0221BE20
    bl getbattleeffect_3

.org 0x1844 + 0x0221BE20
    bl getbattleeffect_3

.org 0x19E8 + 0x0221BE20
    bl getbattleeffect_4

.org 0x1AC8 + 0x0221BE20
    .word 0x3181

.org 0x1B14 + 0x0221BE20
    bl getbattleeffect_4

.org 0x1BF4 + 0x0221BE20
    .word 0x3181

.org 0x1E20 + 0x0221BE20
    .word 0x317E

.org 0x1EC4 + 0x0221BE20
    .word 0x317E

.org 0x236C + 0x0221BE20
    bl getmovepss_1

.org 0x239A + 0x0221BE20
    bl getmovepss_2

.org 0x2A44 + 0x0221BE20
    bl getbattleeffect_1

.org 0x2B74 + 0x0221BE20
    .word 0x3181

.org 0x2D42 + 0x0221BE20
    bl getmovetype_2

.org 0x2D62 + 0x0221BE20
    bl getmovepower_2

.org 0x2D82 + 0x0221BE20
    bl getbattleeffect_5

.org 0x3250 + 0x0221BE20
    .word 0x317E

.org 0x3260 + 0x0221BE20
    .word 0x3181

.org 0x3F08 + 0x0221BE20
    .word 0x3181

.org 0x41E0 + 0x0221BE20
    .word 0x3181

.org 0x443C + 0x0221BE20
    .word 0x3181

.org 0x4548 + 0x0221BE20
    .word 0x3181

.close

//need a free space, figure out what to do with this part.
.if (fileexists("base/overlay/overlay_0129.bin"))
    .open "base/overlay/overlay_0129.bin", 0x023D8000
.else
    .create "base/overlay/overlay_0129.bin", 0x023D8000
.endif

.orga (START_ADDRESS + NUM_OF_TOTAL_MONS_PLUS_FORMS+1)

.align 16
.ascii "AI CHANGES HERE" // interesting.
.align 16

getmovetarget:
    add r3, sp, #0x18
    ldr r0, =0x3186
    bx lr

getmovetype:
    ldr r1, =0x3182
    bx lr

getmovepower:
    ldr r1, =0x3181
    bx lr

getbattleeffect_1:
    ldr r1, =0x222B098
    ldr r2, =0x317e
    bx lr

getbattleeffect_2:
    ldr r1, =0x317e
    bx lr

getbattleeffect_3:
    ldr r0, =0x317e
    lsl r2, r2, #4
    bx lr

getbattleeffect_4:
    ldr r2, =0x317e
    mov r0, #0
    bx lr

getmovepss_1:
    ldr r1, =0x3180
    bx lr

getmovepss_2:
    ldr r0, =0x3180
    bx lr

getmovetype_2:
    ldr r0, =0x3182
    bx lr

getmovepower_2:
    ldr r0, =0x3181
    bx lr

getbattleeffect_5:
    ldr r0, =0x317e
    bx lr

.pool
.close
