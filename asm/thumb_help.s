    .text
    .align 1

    .force_thumb
    .syntax unified
    .global __aeabi_idiv
    .thumb_func
    .type __aeabi_idiv,function
__aeabi_idiv:
    .force_thumb
    .syntax unified
    .global __aeabi_idivmod
    .thumb_func
    .type __aeabi_idivmod,function
__aeabi_idivmod:
    push {lr}
    blx  0x020F2998
    pop {pc}
    .size __aeabi_idiv, . - __aeabi_idiv
    .size __aeabi_idivmod, . - __aeabi_idivmod


    .force_thumb
    .syntax unified
    .global __aeabi_uidiv
    .thumb_func
    .type __aeabi_uidiv,function
__aeabi_uidiv:
    .force_thumb
    .syntax unified
    .global __aeabi_uidivmod
    .thumb_func
    .type __aeabi_uidivmod,function
__aeabi_uidivmod:
    push {lr}
    blx 0x020F2BA4
    pop {pc}
    .size __aeabi_uidiv, . - __aeabi_uidiv
    .size __aeabi_uidivmod, . - __aeabi_uidivmod


    .force_thumb
    .syntax unified
    .global __gnu_thumb1_case_uqi
    .thumb_func
    .type __gnu_thumb1_case_uqi,function
__gnu_thumb1_case_uqi:
    push    {r1}
    mov    r1, lr
    lsrs    r1, r1, #1
    lsls    r1, r1, #1
    ldrb    r1, [r1, r0]
    lsls    r1, r1, #1
    add    lr, lr, r1
    pop    {r1}
    bx    lr
    .size __gnu_thumb1_case_uqi, . - __gnu_thumb1_case_uqi

    .force_thumb
    .syntax unified
    .global __gnu_thumb1_case_sqi
    .thumb_func
    .type __gnu_thumb1_case_sqi,function
__gnu_thumb1_case_sqi:
     push    {r1}
     mov r1, lr
     lsrs    r1, r1, #1
     lsls    r1, r1, #1
     ldrsb   r1, [r1, r0]
     lsls    r1, r1, #1
     add lr, r1
     pop {r1}
     bx  lr
    .size __gnu_thumb1_case_sqi, . - __gnu_thumb1_case_sqi

.global __gnu_thumb1_case_uhi
.thumb_func
.type __gnu_thumb1_case_uhi,function
__gnu_thumb1_case_uhi:
    push    {r0, r1}
    mov     r1, lr
    lsrs    r1, r1, #1
    lsls    r0, r0, #1
    lsls    r1, r1, #1
    ldrh    r1, [r1, r0]
    lsls    r1, r1, #1
    add     lr, lr, r1
    pop     {r0, r1}
    bx      lr
    .size __gnu_thumb1_case_uhi, . - __gnu_thumb1_case_uhi

    .force_thumb
    .syntax unified
    .global __gnu_thumb1_case_si
    .thumb_func
    .type __gnu_thumb1_case_si,function
__gnu_thumb1_case_si:
    push {r0, r1}
    mov r1, lr
    adds.n r1, r1, #2
    lsrs r1, r1, #2
    lsls r0, r0, #2
    lsls r1, r1, #2
    ldr r0, [r1, r0]
    adds r0, r0, r1
    mov lr, r0
    pop {r0, r1}
    mov pc, lr
    .size __gnu_thumb1_case_uhi, . - __gnu_thumb1_case_uhi

    .force_thumb
    .syntax unified
    .global memset
    .thumb_func
    .type memset,function
memset:
    push {lr}
    blx 0x020E5B44
    pop {pc}
    .size memset, . - memset

    .force_thumb
    .syntax unified
    .global __gnu_thumb1_case_shi
    .thumb_func
    .type __gnu_thumb1_case_shi,function
__gnu_thumb1_case_shi:
    push    {r0, r1}
    mov     r1, lr
    lsrs    r1, r1, #1
    lsls    r0, r0, #1
    lsls    r1, r1, #1
    ldrsh   r1, [r1, r0]
    lsls    r1, r1, #1
    add     lr, lr, r1
    pop     {r0, r1}
    bx      lr
    .size __gnu_thumb1_case_shi, . - __gnu_thumb1_case_shi

    .force_thumb
    .syntax unified
    .global memcpy
    .thumb_func
    .type memcpy,function
memcpy:
    push {lr}
    blx 0x020E5AD8
    pop {pc}
    .size memcpy, . - memcpy

    .force_thumb
    .syntax unified
    .global __aeabi_lmul
    .thumb_func
    .type __aeabi_lmul,function
__aeabi_lmul:
    push {lr}
    blx 0x020F2948
    pop {pc}
    .size __aeabi_lmul, . - __aeabi_lmul

    .force_thumb
    .syntax unified
    .global __aeabi_uldivmod
    .thumb_func
    .type __aeabi_uldivmod,function
__aeabi_uldivmod:
    push {lr}
    blx 0x020F2900
    pop {pc}
    .size __aeabi_uldivmod, . - __aeabi_uldivmod

    .force_thumb
    .syntax unified
    .global __aeabi_ldivmod
    .thumb_func
    .type __aeabi_ldivmod,function
__aeabi_ldivmod:
    push {lr}
    blx 0x020F2750
    pop {pc}
    .size __aeabi_ldivmod, . - __aeabi_ldivmod



.global debugsyscall
debugsyscall:
swi 0xFC
bx lr


.align 2

.global sprintf
sprintf:
push {r0}
ldr r0, =sprintf_arm
bx r0

.align 2
.arm
sprintf_arm:
pop {r0}
mov r8, lr
bl bx_r9
bx r8

bx_r9:
ldr r9, =0x020e7f30
bx r9

.pool

.thumb
