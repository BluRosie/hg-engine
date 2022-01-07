.text
.align 2
.thumb

.global calc_base_damage_hook
calc_base_damage_hook:
ldr r5, =return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcBaseDamage
ldr r1, =return_address
ldr r1, [r1]
mov pc, r1

.pool

return_address:
.word 0
