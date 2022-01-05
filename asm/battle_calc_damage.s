.text
.align 2
.thumb

.global calc_base_damage_hook
calc_base_damage_hook:
mov r1, r5
pop {r5}
bl CalcBaseDamage
pop {pc}
