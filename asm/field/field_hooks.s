.text
.align 2
.thumb


.global AddWildPartyPokemon_hook
AddWildPartyPokemon_hook:
ldr r5, =AddWildPartyPokemon_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl AddWildPartyPokemon
ldr r1, =AddWildPartyPokemon_return_address
ldr r1, [r1]
mov pc, r1

.pool

AddWildPartyPokemon_return_address:
.word 0
