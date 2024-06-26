//.nds
.thumb

//.create "bdhcam.bin", 0x23D95B0

.align 4


getCamBoxTxt:
.ascii "GetCamBox       "


.align 2

.global FUN_GetCamBox
FUN_GetCamBox:
    ldr r0,=0x021d2204
    ldr r0,[r0]
    bx lr

.pool

.align 4

.ascii "GDMI"

.align 2

.global FUN_GDMI
FUN_GDMI:
    //push { lr }
    push { r0-r7 }

    mov r0, #1 // field
    ldr r1, =IsOverlayLoaded
	bl bx_r1
    cmp r0, #1
    bne LAB_023d95fe

// if the player is on the ladder
	//bl IsPlayerOnLadder
	ldr r1, =IsPlayerOnLadder
	bl bx_r1
    cmp r0, #0
    bne LAB_023d95fe

// if the player is in the union room
    ldr r1, =0x02037D78 | 1
    bl bx_r1
    cmp r0, #0
    bne LAB_023d95fe

    ldr r0, =0x0211186c
    ldr r0, [r0]
    ldr r0, [r0,#0x1c]
    ldr r0, [r0,#0x2c]
    mov r4, r0
    bl FUN_023d99a0
    add r1, r0, #0x0
    add r0, r4, #0x0
    bl FUN_023d9610
    cmp r0, #0x0
    beq LAB_023d95fe
    bl FUN_023d9640

LAB_023d95fe:
    pop { r0, r1, r2, r3, r4, r5, r6, r7 }
    bl 0x02022f84

_ret_2022FA2:
    //pop { pc }

    ldr r0, =0x021D2204
    add r1, sp, #0xC

    ldr r2, =0x0202317D
    bx r2

bx_r1:
	bx r1

.align 2

.pool


.global FUN_023d9610
FUN_023d9610:
    lsl r1, r1, #0x2
    add r0, r0, r1
    add r0, #0x90
    ldr r1, [r0]
    //ldr r0, =0x858
    mov r0, #0x85
    lsl r0, #4
    add r0, r0, #8 // fuck movw shenanigans
    add r0, r0, r1
    ldr r1, [r0]
    add r3, r1, #0x0
    sub r3, #0x20
    ldrh r3, [r3]
    add r0, r3, r1
    mov r2, #0x10
    lsl r2, r2, #0x8
    cmp r2, r3
    bcs ret_023d9630
    mov r0, #0x0

ret_023d9630:
    bx lr

.pool


.align 4

.ascii "CamStuff"

.align 2

.global FUN_023d9640
FUN_023d9640:
    push { lr }
    ldr r1,[r0,#0x4]
    mov r2,#0x0
    mov r3,#0x8
    mov r7,#0x0
    add r3,r0,r3

LAB_023d964c:
    ldrb r4,[r3]
    ldrb r5,[r3,#0x2]
    sub r5,#0x1
    ldr r6,=0x0211186C
    ldr r6,[r6]
    ldr r6,[r6,#0x1c]
    ldr r6,[r6,#0x2c]
    add r6,#0xdc
    ldr r6,[r6]
    ldr r6,[r6]
    lsl r6,r6,#0xb
    lsr r6,r6,#0x1b
    cmp r6,r4
    blt LAB_023d9710
    cmp r6,r5
    bgt LAB_023d9710
    ldrb r4,[r3,#0x1]
    ldrb r5,[r3,#0x3]
    sub r5,#0x1
    ldr r6,=0x0211186C
    ldr r6,[r6]
    ldr r6,[r6,#0x1c]
    ldr r6,[r6,#0x2c]
    add r6,#0xdc
    ldr r6,[r6]
    ldr r6,[r6,#0x8]
    lsl r6,r6,#0xb
    lsr r6,r6,#0x1b
    cmp r6,r4
    blt LAB_023d9710
    cmp r6,r5
    bgt LAB_023d9710
    ldrb r4,[r3,#0x4]
    cmp r4,#0x80
    beq LAB_023d96a4
    ldr r6,=0x0211186C
    ldr r6,[r6]
    ldr r6,[r6,#0x1c]
    ldr r6,[r6,#0x2c]
    add r6,#0xdc
    ldr r6,[r6]
    ldrb r6,[r6,#0x6]
    cmp r4,r6
    bne LAB_023d9710

LAB_023d96a4:
    mov r7,#0x1
    ldrb r4,[r3,#0x5]
    cmp r4,#0x1
    beq LAB_023d96d0
    cmp r4,#0x2
    beq LAB_023d96f0
    bl FUN_023d9a10
    cmp r0,#0x0
    beq LAB_023d9710
    ldrh r4,[r3,#0x6]
    add r4,r3,r4
    ldr r5,[r4]
    add r4,#0x4
    mov r6,#0x0

LAB_023d96c2:
    bl FUN_023d9740
    add r6,#0x1
    add r4,#0xc
    cmp r6,r5
    blt LAB_023d96c2
    b LAB_023d9710

LAB_023d96d0:
    ldrh r4,[r3,#0x6]
    add r4,r3,r4
    ldr r5,[r4]
    add r4,#0x4
    mov r6,#0x0
    push { r0, r7 }
    ldrb r0,[r3]
    ldrb r7,[r3,#0x2]

LAB_023d96e0:
    bl FUN_023d9800
    add r6,#0x1
    add r4,#0xc
    cmp r6,r5
    blt LAB_023d96e0
    pop { r0, r7 }
    b LAB_023d9710

LAB_023d96f0:
    ldrh r4,[r3,#0x6]
    add r4,r3,r4
    ldr r5,[r4]
    add r4,#0x4
    mov r6,#0x0
    push { r0, r7 }
    ldrb r0,[r3,#0x1]
    ldrb r7,[r3,#0x3]

LAB_023d9700:
    bl FUN_023d98c0
    add r6,#0x1
    add r4,#0xc
    cmp r6,r5
    blt LAB_023d9700
    pop { r0, r7 }
    b LAB_023d9710

LAB_023d9710:
    add r2,#0x1
    add r3,#0x8
    cmp r2,r1
    blt LAB_023d964c
    bl FUN_CheckCam
    cmp r0,#0x0
    bne LAB_023d9734
    cmp r7,#0x0
    bne LAB_023d9734
    mov r5,#0x50
    ldr r4,=region_023d9a80

LAB_023d9728:
    str r7,[r4]
    bl FUN_023d9740
    add r7,#0x4
    cmp r7,r5
    ble LAB_023d9728

LAB_023d9734:
    ldr r7,=0x021E5922
    mov r6,#0x0
    strb r6,[r7,#0x1]
    pop { pc }

.pool


.global FUN_023d9740
FUN_023d9740:
    push { r0, r1, r2, r3, r4, r5, r6, r7, lr }
    ldr r0,[r4]
    ldr r1,[r4,#0x4]
    ldr r2,[r4,#0x8]
    ldr r3,=0x021E5922
    ldrb r4,[r3]
    cmp r4,#0x1
    beq LAB_023d9772
    ldr r7,=empty_region_023d9aa0
    mov r6,#0x0
    mov r5,#0x0

LAB_023d9756:
    str r5,[r7,r6]
    add r6,#0x4
    cmp r6,#0x50
    ble LAB_023d9756
    ldr r7,=empty_region_023d9aa0 + 0x54
    mov r6,#0x0
    mov r5,#0x0

LAB_023d9764:
    str r5,[r7,r6]
    add r6,#0x4
    cmp r6,#0x50
    ble LAB_023d9764
    mov r5,#0x1
    strb r5,[r3]
    strb r5,[r3,#0x1]

LAB_023d9772:
    add r3,r0,#0x0
    bl FUN_GetCamBox
    ldr r0,[r0,r3]
    ldr r4,=empty_region_023d9aa0
    ldr r4,[r4,r3]
    sub r0,r0,r4
    ldr r4,=empty_region_023d9aa0 + 0xa8
    str r0,[r4,r3]
    add r0,r3,#0x0
    ldr r3,=empty_region_023d9aa0 + 0xfc
    ldr r5,[r3,r0]
    cmp r5,r2
    beq LAB_023d9792
    ldr r4,=empty_region_023d9aa0 + 0x54
    str r5,[r4,r0]

LAB_023d9792:
    str r2,[r3,r0]
    ldr r3,=0x021E5922
    ldrb r3,[r3,#0x1]
    ldr r4,=empty_region_023d9aa0
    cmp r3,#0x1
    bne LAB_023d97a0
    str r2,[r4,r0]

LAB_023d97a0:
    ldr r3,[r4,r0]
    cmp r3,r2
    beq LAB_023d97ea_cont
    blt LAB_023d97ca_adj_up
    bgt LAB_023d97aa_adj_down

LAB_023d97aa_adj_down:
    ldr r7,=empty_region_023d9aa0 + 0x54
    ldr r7,[r7,r0]
    sub r7,r2,r7
    push { r0, r1, r2, r3, r4 }
    add r0,r7,#0x0
    bl FUN_CameraDivision
    add r7,r0,#0x0
    pop { r0, r1, r2, r3, r4 }
    ldr r3,[r4,r0]
    sub r3,r3,r7
    str r3,[r4,r0]
    cmp r3,r2
    bgt LAB_023d97ea_cont
    str r2,[r4,r0]
    b LAB_023d97ea_cont

LAB_023d97ca_adj_up:
    ldr r7,=empty_region_023d9aa0 + 0x54
    ldr r7,[r7,r0]
    sub r7,r2,r7
    push { r0, r1, r2, r3, r4 }
    add r0,r7,#0x0
    bl FUN_CameraDivision
    add r7,r0,#0x0
    pop { r0, r1, r2, r3, r4 }
    ldr r3,[r4,r0]
    add r3,r3,r7
    str r3,[r4,r0]
    cmp r3,r2
    blt LAB_023d97ea_cont
    str r2,[r4,r0]
    add r0,r0,#0x0

LAB_023d97ea_cont:
    add r3,r0,#0x0
    bl FUN_GetCamBox
    ldr r4,=empty_region_023d9aa0 + 0xa8
    ldr r4,[r4,r3]
    ldr r5,=empty_region_023d9aa0
    ldr r5,[r5,r3]
    add r4,r4,r5
    str r4,[r0,r3]
    pop { r0, r1, r2, r3, r4, r5, r6, r7, pc }

.pool


.global FUN_023d9800
FUN_023d9800:
    push { r0, r1, r2, r3, r4, r5, r6, r7, lr }
    add r6,r0,#0x0
    ldr r0,[r4]
    ldr r1,[r4,#0x4]
    ldr r2,[r4,#0x8]
    ldr r3,=0x021E5922
    ldrb r4,[r3]
    cmp r4,#0x1
    beq LAB_023d9832
    mov r4,#0x1
    strb r4,[r3]
    ldr r4,=empty_region_023d9aa0
    mov r3,#0x0
    mov r5,#0x0

LAB_023d981c:
    str r5,[r4,r3]
    add r3,#0x4
    cmp r3,#0x50
    ble LAB_023d981c
    ldr r4,=empty_region_023d9aa0 + 0x54
    mov r3,#0x0
    mov r5,#0x0

LAB_023d982a:
    str r5,[r4,r3]
    add r3,#0x4
    cmp r3,#0x50
    ble LAB_023d982a

LAB_023d9832:
    add r3,r0,#0x0
    bl FUN_GetCamBox
    ldr r0,[r0,r3]
    ldr r4,=empty_region_023d9aa0
    ldr r4,[r4,r3]
    sub r0,r0,r4
    ldr r4,=empty_region_023d9aa0 + 0xa8
    str r0,[r4,r3]
    add r0,r3,#0x0
    sub r2,r2,r1
    sub r7,r7,r6
    add r4,r0,#0x0
    add r5,r1,#0x0
    add r0,r2,#0x0
    add r1,r7,#0x0
    blx 0x020f2998 // _s32_div_f
    mov r1,#0x0
    mov r3,#0x0
    ldr r7,=0x0211186C
    ldr r7,[r7]
    ldr r7,[r7,#0x1c]
    ldr r7,[r7,#0x2c]
    add r7,#0xdc
    ldr r7,[r7]
    ldr r7,[r7]
    lsl r7,r7,#0xb
    lsr r7,r7,#0xb
    lsl r6,r6,#0x10
    sub r2,r7,r6
    cmp r0,#0x0
    blt LAB_023d9888
    blx 0x020f2948 // _ull_mul
    lsr r0,r0,#0x10
    lsl r1,r1,#0x10
    add r0,r0,r1
    add r0,r0,r5
    ldr r1,=empty_region_023d9aa0
    str r0,[r1,r4]
    add r0,r4,#0x0
    b LAB_023d989c

// seems to be the part that changes things?  rot left?

LAB_023d9888:
    sub r0,r3,r0
    blx 0x020f2948 // _ull_mul
    lsr r0,r0,#0x10
    lsl r1,r1,#0x10
    add r0,r0,r1
    sub r0,r5,r0
    ldr r1,=empty_region_023d9aa0
    str r0,[r1,r4]
    add r0,r4,#0x0

LAB_023d989c:
    ldr r3,=empty_region_023d9aa0 + 0xfc
    ldr r5,[r3,r0]
    ldr r2,[r1,r0]
    cmp r5,r2
    beq LAB_023d98aa
    ldr r4,=empty_region_023d9aa0 + 0x54
    str r5,[r4,r0]

LAB_023d98aa:
    str r2,[r3,r0]
    add r3,r0,#0x0
    bl FUN_GetCamBox
    ldr r4,=empty_region_023d9aa0 + 0xa8
    ldr r4,[r4,r3]
    ldr r5,=empty_region_023d9aa0
    ldr r5,[r5,r3]
    add r4,r4,r5
    str r4,[r0,r3]
    pop { r0, r1, r2, r3, r4, r5, r6, r7, pc }

.pool


.global FUN_023d98c0
FUN_023d98c0:
    push { r0, r1, r2, r3, r4, r5, r6, r7, lr }
    add r6,r0,#0x0
    ldr r0,[r4]
    ldr r1,[r4,#0x4]
    ldr r2,[r4,#0x8]
    ldr r3,=0x021E5922
    ldrb r4,[r3]
    cmp r4,#0x1
    beq LAB_023d98f2
    mov r4,#0x1
    strb r4,[r3]
    ldr r4,=empty_region_023d9aa0
    mov r3,#0x0
    mov r5,#0x0

LAB_023d98dc:
    str r5,[r4,r3]
    add r3,#0x4
    cmp r3,#0x50
    ble LAB_023d98dc
    ldr r4,=empty_region_023d9aa0 + 0x54
    mov r3,#0x0
    mov r5,#0x0

LAB_023d98ea:
    str r5,[r4,r3]
    add r3,#0x4
    cmp r3,#0x50
    ble LAB_023d98ea

LAB_023d98f2:
    add r3,r0,#0x0
    bl FUN_GetCamBox
    ldr r0,[r0,r3]
    ldr r4,=empty_region_023d9aa0
    ldr r4,[r4,r3]
    sub r0,r0,r4
    ldr r4,=empty_region_023d9aa0 + 0xa8
    str r0,[r4,r3]
    add r0,r3,#0x0
    sub r2,r2,r1
    sub r7,r7,r6
    add r4,r0,#0x0
    add r5,r1,#0x0
    add r0,r2,#0x0
    add r1,r7,#0x0
    blx 0x020f2998 // _s32_div_f
    mov r1,#0x0
    mov r3,#0x0
    ldr r7,=0x0211186C
    ldr r7,[r7]
    ldr r7,[r7,#0x1c]
    ldr r7,[r7,#0x2c]
    add r7,#0xdc
    ldr r7,[r7]
    ldr r7,[r7,#0x8]
    lsl r7,r7,#0xb
    lsr r7,r7,#0xb
    lsl r6,r6,#0x10
    sub r2,r7,r6
    cmp r0,#0x0
    blt LAB_023d9948
    blx 0x020f2948 // _ull_mul
    lsr r0,r0,#0x10
    lsl r1,r1,#0x10
    add r0,r0,r1
    add r0,r0,r5
    ldr r1,=empty_region_023d9aa0
    str r0,[r1,r4]
    add r0,r4,#0x0
    b LAB_023d995c

LAB_023d9948:
    sub r0,r3,r0
    blx 0x020f2948
    lsr r0,r0,#0x10
    lsl r1,r1,#0x10
    add r0,r0,r1
    sub r0,r5,r0
    ldr r1,=empty_region_023d9aa0
    str r0,[r1,r4]
    add r0,r4,#0x0

LAB_023d995c:
    ldr r3,=empty_region_023d9aa0 + 0xfc
    ldr r5,[r3,r0]
    ldr r2,[r1,r0]
    cmp r5,r2
    beq LAB_023d996a
    ldr r4,=empty_region_023d9aa0 + 0x54
    str r5,[r4,r0]

LAB_023d996a:
    str r2,[r3,r0]
    add r3,r0,#0x0
    bl FUN_GetCamBox
    ldr r4,=empty_region_023d9aa0 + 0xa8
    ldr r4,[r4,r3]
    ldr r5,=empty_region_023d9aa0
    ldr r5,[r5,r3]
    add r4,r4,r5
    str r4,[r0,r3]
    pop { r0, r1, r2, r3, r4, r5, r6, r7, pc }
    .short 0xA714 // adr r7,[0x023d99d4] // should not be runnable
    lsl r5,r3,#0x8

.pool


.align 2

region_023d999c:
    .word 0

.global FUN_023d99a0
FUN_023d99a0:
    mov r3,#0x1
    lsl r3,r3,#0x10
    add r0,#0x80
    ldr r2,[r0]
    ldr r1,[r0,#0x4]
    lsl r1,r1,#0x1
    add r2,r2,r1
    ldr r1,[r0,#0x8]
    lsl r1,r1,#0x2
    add r2,r2,r1
    ldr r1,[r0,#0xc]
    lsl r1,r1,#0x3
    add r2,r2,r1
    ldr r0,=0x0211186C
    ldr r0,[r0]
    ldr r0,[r0,#0x1c]
    ldr r0,[r0,#0x2c]
    add r0,#0xdc
    ldr r0,[r0]
    ldr r1,[r0]
    cmp r2,#0xa
    bne LAB_023d99d0
    sub r1,r1,r3
    b LAB_023d99d6

LAB_023d99d0:
    cmp r2,#0x5
    bne LAB_023d99d6
    add r1,r1,r3

LAB_023d99d6:
    mvn r1,r1
    lsl r1,r1,#0xb
    lsr r1,r1,#0x1f
    ldr r0,[r0,#0x8]
    cmp r2,#0xc
    bne LAB_023d99e6
    sub r0,r0,r3
    b LAB_023d99ec

LAB_023d99e6:
    cmp r2,#0x3
    bne LAB_023d99ec
    add r0,r0,r3

LAB_023d99ec:
    mvn r0,r0
    lsl r0,r0,#0xb
    lsr r0,r0,#0x1f
    lsl r0,r0,#0x1
    add r0,r0,r1
    bx lr

.align 2

.pool


.align 4


.ascii "FrameStep       "

.align 2

.global FUN_023d9a10
FUN_023d9a10:
    push { r1, r2, lr }
    bl FUN_023d9a40
    add r0,#0x0
    ldrh r0,[r0]
    mov r1,pc
    ldrh r2,[r1,#0x10]
    cmp r0,r2
    beq LAB_023d9a28
    strh r0,[r1,#0x10]
    mov r0,#0x1
    pop { r1, r2, pc }

LAB_023d9a28:
    mov r0,#0x0
    pop { r1, r2, pc }


.align 4


.ascii "FrameCntPointer "

.align 2

FUN_023d9a40:
    ldr r0, =0x021d1138
    bx lr

.align 4

.ascii "CameraDivision  "

.align 2

.global FUN_CameraDivision
FUN_CameraDivision:
    push { lr }
    blx 0x020f2998
    cmp r0,#0x0
    bgt LAB_023d9a6e
    mov r1,#0x0
    sub r0,r1,r0

LAB_023d9a6e:
    pop { pc }

.align 4

.ascii "ZeroCamData     "

.align 2

region_023d9a80:
    .word 0
    .short 1, 0, 0, 0



.align 4

region_padding_23D9A8C:
    .word 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff

empty_region_023d9aa0: //size 336 is 84 words
    .skip 0x150



.align 4

.ascii "ReadEntryDataArc"

.align 2

.global FUN_ReadEntryDataArc
FUN_ReadEntryDataArc:
    push { r4, r5, r6, r7 }
    add r3,r1,#0x0
    ldr r1,[r2,#0x14]
    ldr r2,PTR_s_kCam_023d9c34
    ldrh r4,[r2]
    ldrh r6,[r2,#0x2]
    ldr r2,[r3,#0xc]
    ldr r5,[r3,#0x10]
    sub r5,#0x20
    ldr r3,PTR_DAT_023d9c2c
    lsl r1,r1,#0x1
    ldr r7,DAT_023d9c30
    cmp r4,r7
    bcs LAB_023d9c24
    add r1,r1,r4
    str r6,[r5]
    pop { r4, r5, r6, r7 }
    bx r3

LAB_023d9c24:
    str r7,[r5]
    pop { r4, r5, r6, r7 }
    bx r3

.align 4

PTR_DAT_023d9c2c:
    .word 0x020078d9

DAT_023d9c30:
    .word 0x00004442

PTR_s_kCam_023d9c34: //check BDHC magic
    .word PTR_s_kCam_023d9ca4 + 8

.align 4

.ascii "RHDtaArc"

.align 2

.global FUN_RHDtaArc
FUN_RHDtaArc:
    push { r3, r4, r5, lr }
    sub sp,#0x8
    add r5,r0,#0x0
    mov r0,#0x0
    mov r2,#0x18
    add r4,r1,#0x0
    blx 0x020d47ec
    add r0,r5,#0x0
    mov r1,#0x4
    ldr r2,PTR_s_kCam_023d9ca4
    bl 0x020078d8
    add r0,r5,#0x0
    mov r1,#0x2
    add r2,r4,#0x0
    bl 0x020078d8
    add r0,r5,#0x0
    mov r1,#0x2
    add r2,r4,#0x4
    bl 0x020078d8
    add r2,r4,#0x0
    add r0,r5,#0x0
    mov r1,#0x2
    add r2,#0x8
    bl 0x020078d8
    add r2,r4,#0x0
    add r0,r5,#0x0
    mov r1,#0x2
    add r2,#0xc
    bl 0x020078d8
    add r2,r4,#0x0
    add r0,r5,#0x0
    mov r1,#0x2
    add r2,#0x10
    bl 0x020078d8
    add r4,#0x14
    add r0,r5,#0x0
    mov r1,#0x2
    add r2,r4,#0x0
    bl 0x020078d8
    add sp,#0x8
    pop { r3, r4, r5, pc }

.align 2

PTR_s_kCam_023d9ca4: //check BDHC magic
    .word PTR_s_kCam_023d9ca4 + 8

.align 4

.ascii "CheckCam"

.align 2

.global FUN_CheckCam
FUN_CheckCam:
    ldr r0,=0x0211186c
    ldr r0,[r0]
    ldr r0,[r0,#0x1c]
    ldr r0,[r0,#0x2c]
    add r0,#0xa0
    ldr r0,[r0]
    cmp r0,#0x0
    beq LAB_023d9cc2
    mov r0,#0x1

LAB_023d9cc2:
    bx lr

.pool
