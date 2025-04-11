.text
.align 2
.thumb


.global TrainerAI_PickCommand_hook
TrainerAI_PickCommand_hook:
ldr r0, [r4]
bl TrainerAI_PickCommand
mov r2, r0
ldr r1, =0x0225E114 | 1
bx r1
