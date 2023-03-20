//Mikelan98, Trifindo: Dynamic Cameras (pokehacking.com/r/20110901)

.include "include/config.h"

.text
.align 2
.thumb

.include "offset_def.s"

.ascii "GetCamBox       "

.global FUN_GetCamBox
FUN_GetCamBox:
	ldr r0, =LAB_023d95c8
	ldr r0,[r0,#0x0]
	bx lr
	mov r8,r8

LAB_023d95c8:
	.word 0x021d2204

.word 0xffffffff
.ascii "GDMI"

.global FUN_GDMI
FUN_GDMI:
	push { lr }
	push { r0, r1, r2, r3, r4, r5, r6, r7 }
	ldr r0, =PTR_DAT_023d960c
	ldr r0,[r0,#0x0]
	cmp r0,#0x1
	bne LAB_023d95fe
	ldr r0, =PTR_DAT_023d9608
	ldr r0,[r0,#0x0]
	ldr r0,[r0,#0x1c]
	ldr r0,[r0,#0x2c]
	add r4,r0,#0x0
	bl FUN_023d99a0
	add r1,r0,#0x0
	add r0,r4,#0x0
	bl FUN_023d9610
	cmp r0,#0x0
	beq LAB_023d95fe
	bl FUN_023d9640

LAB_023d95fe:
	pop { r0, r1, r2, r3, r4, r5, r6, r7 }
	bl 0x02022f84
	pop { pc }
	mov r8,r8

PTR_DAT_023d9608:
	.word 0x0211186c

PTR_DAT_023d960c:
	.word 0x021d0df0

.global FUN_023d9610
FUN_023d9610:
	lsl r1,r1,#0x2
	add r0,r0,r1
	add r0,#0x90
	ldr r1,[r0,#0x0]
	ldr r0, =DAT_023d9634
	add r0,r0,r1
	ldr r1,[r0,#0x0]
	add r3,r1,#0x0
	sub r3,#0x20
	ldrh r3,[r3,#0x0]
	add r0,r3,r1
	mov r2,#0x10
	lsl r2,r2,#0x8
	cmp r2,r3
	bcs LAB_023d9630
	mov r0,#0x0

LAB_023d9630:
	bx lr
	mov r8,r8

DAT_023d9634:
	.word 0x00000858

.ascii "CamStuff"

.global FUN_023d9640
FUN_023d9640:
	push { lr }
	ldr r1,[r0,#0x4]
	mov r2,#0x0
	mov r3,#0x8
	mov r7,#0x0
	add r3,r0,r3

LAB_023d964c:
	ldrb r4,[r3,#0x0]
	ldrb r5,[r3,#0x2]
	sub r5,#0x1
	ldr r6, =PTR_DAT_023d9984
	ldr r6,[r6,#0x0]
	ldr r6,[r6,#0x1c]
	ldr r6,[r6,#0x2c]
	add r6,#0xdc
	ldr r6,[r6,#0x0]
	ldr r6,[r6,#0x0]
	lsl r6,r6,#0xb
	lsr r6,r6,#0x1b
	cmp r6,r4
	blt LAB_023d9710
	cmp r6,r5
	bgt LAB_023d9710
	ldrb r4,[r3,#0x1]
	ldrb r5,[r3,#0x3]
	sub r5,#0x1
	ldr r6, =PTR_DAT_023d9984
	ldr r6,[r6,#0x0]
	ldr r6,[r6,#0x1c]
	ldr r6,[r6,#0x2c]
	add r6,#0xdc
	ldr r6,[r6,#0x0]
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
	ldr r6, =PTR_DAT_023d9984
	ldr r6,[r6,#0x0]
	ldr r6,[r6,#0x1c]
	ldr r6,[r6,#0x2c]
	add r6,#0xdc
	ldr r6,[r6,#0x0]
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
	ldr r5,[r4,#0x0]
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
	ldr r5,[r4,#0x0]
	add r4,#0x4
	mov r6,#0x0
	push { r0, r7 }
	ldrb r0,[r3,#0x0]
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
	ldr r5,[r4,#0x0]
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
	ldr r4, =PTR_DAT_023d973c

LAB_023d9728:
	str r7,[r4,#0x0]
	bl FUN_023d9740
	add r7,#0x4
	cmp r7,r5
	ble LAB_023d9728

LAB_023d9734:
	ldr r7, =PTR_DAT_023d9988
	mov r6,#0x0
	strb r6,[r7,#0x1]
	pop { pc }

PTR_DAT_023d973c:
	.word region_023d9a80 // 0x023d9a80

.global FUN_023d9740
FUN_023d9740:
	push { r0, r1, r2, r3, r4, r5, r6, r7, lr }
	ldr r0,[r4,#0x0]
	ldr r1,[r4,#0x4]
	ldr r2,[r4,#0x8]
	ldr r3, =PTR_DAT_023d9988
	ldrb r4,[r3,#0x0]
	cmp r4,#0x1
	beq LAB_023d9772
	ldr r7, =PTR_empty_region_023d998c
	mov r6,#0x0
	mov r5,#0x0

LAB_023d9756:
	str r5,[r7,r6]
	add r6,#0x4
	cmp r6,#0x50
	ble LAB_023d9756
	ldr r7, =PTR_empty_region_023d9aa0.field_0x54_023d9990
	mov r6,#0x0
	mov r5,#0x0

LAB_023d9764:
	str r5,[r7,r6]
	add r6,#0x4
	cmp r6,#0x50
	ble LAB_023d9764
	mov r5,#0x1
	strb r5,[r3,#0x0]
	strb r5,[r3,#0x1]

LAB_023d9772:
	add r3,r0,#0x0
	bl FUN_GetCamBox
	ldr r0,[r0,r3]
	ldr r4, =PTR_empty_region_023d998c
	ldr r4,[r4,r3]
	sub r0,r0,r4
	ldr r4, =PTR_empty_region_023d9aa0.field_0xa8_023d9994
	str r0,[r4,r3]
	add r0,r3,#0x0
	ldr r3, =PTR_empty_region_023d9aa0.field_0xfc_023d9998
	ldr r5,[r3,r0]
	cmp r5,r2
	beq LAB_023d9792
	ldr r4, =PTR_empty_region_023d9aa0.field_0x54_023d9990
	str r5,[r4,r0]

LAB_023d9792:
	str r2,[r3,r0]
	ldr r3, =PTR_DAT_023d9988
	ldrb r3,[r3,#0x1]
	ldr r4, =PTR_empty_region_023d998c
	cmp r3,#0x1
	bne LAB_023d97a0
	str r2,[r4,r0]

LAB_023d97a0:
	ldr r3,[r4,r0]
	cmp r3,r2
	beq LAB_023d97ea
	blt LAB_023d97ca
	bgt LAB_023d97aa

LAB_023d97aa:
	ldr r7, =PTR_empty_region_023d9aa0.field_0x54_023d9990
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
	bgt LAB_023d97ea
	str r2,[r4,r0]
	b LAB_023d97ea

LAB_023d97ca:
	ldr r7, =PTR_empty_region_023d9aa0.field_0x54_023d9990
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
	blt LAB_023d97ea
	str r2,[r4,r0]
	add r0,r0,#0x0

LAB_023d97ea:
	add r3,r0,#0x0
	bl FUN_GetCamBox
	ldr r4, =PTR_empty_region_023d9aa0.field_0xa8_023d9994
	ldr r4,[r4,r3]
	ldr r5, =PTR_empty_region_023d998c
	ldr r5,[r5,r3]
	add r4,r4,r5
	str r4,[r0,r3]
	pop { r0, r1, r2, r3, r4, r5, r6, r7, pc }
	mov r8,r8

.global FUN_023d9800
FUN_023d9800:
	push { r0, r1, r2, r3, r4, r5, r6, r7, lr }
	add r6,r0,#0x0
	ldr r0,[r4,#0x0]
	ldr r1,[r4,#0x4]
	ldr r2,[r4,#0x8]
	ldr r3, =PTR_DAT_023d9988
	ldrb r4,[r3,#0x0]
	cmp r4,#0x1
	beq LAB_023d9832
	mov r4,#0x1
	strb r4,[r3,#0x0]
	ldr r4, =PTR_empty_region_023d998c
	mov r3,#0x0
	mov r5,#0x0

LAB_023d981c:
	str r5,[r4,r3]
	add r3,#0x4
	cmp r3,#0x50
	ble LAB_023d981c
	ldr r4, =PTR_empty_region_023d9aa0.field_0x54_023d9990
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
	ldr r4, =PTR_empty_region_023d998c
	ldr r4,[r4,r3]
	sub r0,r0,r4
	ldr r4, =PTR_empty_region_023d9aa0.field_0xa8_023d9994
	str r0,[r4,r3]
	add r0,r3,#0x0
	sub r2,r2,r1
	sub r7,r7,r6
	add r4,r0,#0x0
	add r5,r1,#0x0
	add r0,r2,#0x0
	add r1,r7,#0x0
	blx 0x020f2998
	mov r1,#0x0
	mov r3,#0x0
	ldr r7, =PTR_DAT_023d9984
	ldr r7,[r7,#0x0]
	ldr r7,[r7,#0x1c]
	ldr r7,[r7,#0x2c]
	add r7,#0xdc
	ldr r7,[r7,#0x0]
	ldr r7,[r7,#0x0]
	lsl r7,r7,#0xb
	lsr r7,r7,#0xb
	lsl r6,r6,#0x10
	sub r2,r7,r6
	cmp r0,#0x0
	blt LAB_023d9888
	blx 0x020f2948
	lsr r0,r0,#0x10
	lsl r1,r1,#0x10
	add r0,r0,r1
	add r0,r0,r5
	ldr r1, =PTR_empty_region_023d998c
	str r0,[r1,r4]
	add r0,r4,#0x0
	b LAB_023d989c

LAB_023d9888:
	sub r0,r3,r0
	blx 0x020f2948
	lsr r0,r0,#0x10
	lsl r1,r1,#0x10
	add r0,r0,r1
	sub r0,r5,r0
	ldr r1, =PTR_empty_region_023d998c
	str r0,[r1,r4]
	add r0,r4,#0x0

LAB_023d989c:
	ldr r3, =PTR_empty_region_023d9aa0.field_0xfc_023d9998
	ldr r5,[r3,r0]
	ldr r2,[r1,r0]
	cmp r5,r2
	beq LAB_023d98aa
	ldr r4, =PTR_empty_region_023d9aa0.field_0x54_023d9990
	str r5,[r4,r0]

LAB_023d98aa:
	str r2,[r3,r0]
	add r3,r0,#0x0
	bl FUN_GetCamBox
	ldr r4, =PTR_empty_region_023d9aa0.field_0xa8_023d9994
	ldr r4,[r4,r3]
	ldr r5, =PTR_empty_region_023d998c
	ldr r5,[r5,r3]
	add r4,r4,r5
	str r4,[r0,r3]
	pop { r0, r1, r2, r3, r4, r5, r6, r7, pc }

.pool

.global FUN_023d98c0
FUN_023d98c0:
	push { r0, r1, r2, r3, r4, r5, r6, r7, lr }
	add r6,r0,#0x0
	ldr r0,[r4,#0x0]
	ldr r1,[r4,#0x4]
	ldr r2,[r4,#0x8]
	ldr r3, =PTR_DAT_023d9988
	ldrb r4,[r3,#0x0]
	cmp r4,#0x1
	beq LAB_023d98f2
	mov r4,#0x1
	strb r4,[r3,#0x0]
	ldr r4, =PTR_empty_region_023d998c
	mov r3,#0x0
	mov r5,#0x0

LAB_023d98dc:
	str r5,[r4,r3]
	add r3,#0x4
	cmp r3,#0x50
	ble LAB_023d98dc
	ldr r4, =PTR_empty_region_023d9aa0.field_0x54_023d9990
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
	ldr r4, =PTR_empty_region_023d998c
	ldr r4,[r4,r3]
	sub r0,r0,r4
	ldr r4, =PTR_empty_region_023d9aa0.field_0xa8_023d9994
	str r0,[r4,r3]
	add r0,r3,#0x0
	sub r2,r2,r1
	sub r7,r7,r6
	add r4,r0,#0x0
	add r5,r1,#0x0
	add r0,r2,#0x0
	add r1,r7,#0x0
	blx 0x020f2998
	mov r1,#0x0
	mov r3,#0x0
	ldr r7, =PTR_DAT_023d9984
	ldr r7,[r7,#0x0]
	ldr r7,[r7,#0x1c]
	ldr r7,[r7,#0x2c]
	add r7,#0xdc
	ldr r7,[r7,#0x0]
	ldr r7,[r7,#0x8]
	lsl r7,r7,#0xb
	lsr r7,r7,#0xb
	lsl r6,r6,#0x10
	sub r2,r7,r6
	cmp r0,#0x0
	blt LAB_023d9948
	blx 0x020f2948
	lsr r0,r0,#0x10
	lsl r1,r1,#0x10
	add r0,r0,r1
	add r0,r0,r5
	ldr r1, =PTR_empty_region_023d998c
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
	ldr r1, =PTR_empty_region_023d998c
	str r0,[r1,r4]
	add r0,r4,#0x0

LAB_023d995c:
	ldr r3, =PTR_empty_region_023d9aa0.field_0xfc_023d9998
	ldr r5,[r3,r0]
	ldr r2,[r1,r0]
	cmp r5,r2
	beq LAB_023d996a
	ldr r4, =PTR_empty_region_023d9aa0.field_0x54_023d9990
	str r5,[r4,r0]

LAB_023d996a:
	str r2,[r3,r0]
	add r3,r0,#0x0
	bl FUN_GetCamBox
	ldr r4, =PTR_empty_region_023d9aa0.field_0xa8_023d9994
	ldr r4,[r4,r3]
	ldr r5, =PTR_empty_region_023d998c
	ldr r5,[r5,r3]
	add r4,r4,r5
	str r4,[r0,r3]
	pop { r0, r1, r2, r3, r4, r5, r6, r7, pc }
	.byte 0x14, 0xA7 // adr r7,[0x023d99d4]
	lsl r5,r3,#0x8

PTR_DAT_023d9984:
    .word 0x0211186c

PTR_DAT_023d9988:
    .word 0x021e5922

PTR_empty_region_023d998c: // 0x023d9aa0 this is a ptr to the empty region of size 336
	.word empty_region_023d9aa0

PTR_empty_region_023d9aa0.field_0x54_023d9990: //name and value self explanatory relative to empty region
	.word empty_region_023d9aa0 + 0x54

PTR_empty_region_023d9aa0.field_0xa8_023d9994: //name and value self explanatory relative to empty region
	.word empty_region_023d9aa0 + 0xa8

PTR_empty_region_023d9aa0.field_0xfc_023d9998: //name and value self explanatory relative to empty region
	.word empty_region_023d9aa0 + 0xfc

region_023d999c:
    .word 0

.global FUN_023d99a0
FUN_023d99a0:
	mov r3,#0x1
	lsl r3,r3,#0x10
	add r0,#0x80
	ldr r2,[r0,#0x0]
	ldr r1,[r0,#0x4]
	lsl r1,r1,#0x1
	add r2,r2,r1
	ldr r1,[r0,#0x8]
	lsl r1,r1,#0x2
	add r2,r2,r1
	ldr r1,[r0,#0xc]
	lsl r1,r1,#0x3
	add r2,r2,r1
	ldr r0, =DAT_023d99f8
	ldr r0,[r0,#0x0]
	ldr r0,[r0,#0x1c]
	ldr r0,[r0,#0x2c]
	add r0,#0xdc
	ldr r0,[r0,#0x0]
	ldr r1,[r0,#0x0]
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

DAT_023d99f8:
	.word 0x0211186C

region_023d99fc:
    .word 0

.ascii "FrameStep       "

.global FUN_023d9a10
FUN_023d9a10:
	push { r1, r2, lr }
	bl FUN_023d9a40
	add r0,#0x0
	ldrh r0,[r0,#0x0]
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

region_023d9a2c:
    .word 0

.ascii "FrameCntPointer "

FUN_023d9a40:
	.word 0x47704800
	.word 0x021d1138
	.word 0xffffffff, 0xffffffff

.ascii "CameraDivision  "

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

.ascii "ZeroCamData     "

region_023d9a80:
    .word 0, 1, 0

region_padding_23D9A8C:
    .word 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff

empty_region_023d9aa0: //size 336 is 84 words
    .skip 0x150

.ascii "ReadEntryDataArc"

.global FUN_ReadEntryDataArc
FUN_ReadEntryDataArc:
	push { r4, r5, r6, r7 }
	add r3,r1,#0x0
	ldr r1,[r2,#0x14]
	ldr r2, =PTR_s_kCam_023d9c34
	ldrh r4,[r2,#0x0]
	ldrh r6,[r2,#0x2]
	ldr r2,[r3,#0xc]
	ldr r5,[r3,#0x10]
	sub r5,#0x20
	ldr r3, =PTR_DAT_023d9c2c
	lsl r1,r1,#0x1
	ldr r7, =DAT_023d9c30
	cmp r4,r7
	bcs LAB_023d9c24
	add r1,r1,r4
	str r6,[r5,#0x0]
	pop { r4, r5, r6, r7 }
	bx r3

LAB_023d9c24:
	str r7,[r5,#0x0]
	pop { r4, r5, r6, r7 }
	bx r3
	mov r8,r8

PTR_DAT_023d9c2c:
	.word 0x020078d9

DAT_023d9c30:
	.word 0x00004442

PTR_s_kCam_023d9c34: //honestly not sure what's going on here
	.word PTR_s_kCam_023d9ca4 + 8

.ascii "RHDtaArc"

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
	ldr r2, =PTR_s_kCam_023d9ca4
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
	mov r8,r8

PTR_s_kCam_023d9ca4: //honestly not sure what's going on here
	.word PTR_s_kCam_023d9ca4 + 8

.ascii "CheckCam"

.global FUN_CheckCam
FUN_CheckCam:
	ldr r0, =PTR_DAT_023d9cc4
	ldr r0,[r0,#0x0]
	ldr r0,[r0,#0x1c]
	ldr r0,[r0,#0x2c]
	add r0,#0xa0
	ldr r0,[r0,#0x0]
	cmp r0,#0x0
	beq LAB_023d9cc2
	mov r0,#0x1

LAB_023d9cc2:
	bx lr

PTR_DAT_023d9cc4:
	.word 0x0211186c

.pool