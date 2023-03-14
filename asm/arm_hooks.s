.text
.align 2
.arm

.global NNSi_SndArcLoadBank_hook
NNSi_SndArcLoadBank_hook:
ldr r5, =NNSi_SndArcLoadBank_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
blx NNSi_SndArcLoadBank
ldr r1, =NNSi_SndArcLoadBank_return_address
ldr r1, [r1]
mov pc, r1

.pool

NNSi_SndArcLoadBank_return_address:
.word 0
