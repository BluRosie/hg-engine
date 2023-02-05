.text
.align 2
.thumb

.global GetMonEvolution_hook
GetMonEvolution_hook:
ldr r5, =GetMonEvolution_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl GetMonEvolution
ldr r1, =GetMonEvolution_return_address
ldr r1, [r1]
mov pc, r1

.pool

GetMonEvolution_return_address:
.word 0


.global Bag_GetItemPocket_hook
Bag_GetItemPocket_hook:
ldr r5, =Bag_GetItemPocket_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_GetItemPocket
ldr r1, =Bag_GetItemPocket_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_GetItemPocket_return_address:
.word 0


.global Pocket_GetItemSlotForAdd_hook
Pocket_GetItemSlotForAdd_hook:
ldr r5, =Pocket_GetItemSlotForAdd_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Pocket_GetItemSlotForAdd
ldr r1, =Pocket_GetItemSlotForAdd_return_address
ldr r1, [r1]
mov pc, r1

.pool

Pocket_GetItemSlotForAdd_return_address:
.word 0


.global Bag_GetItemSlotForAdd_hook
Bag_GetItemSlotForAdd_hook:
ldr r5, =Bag_GetItemSlotForAdd_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_GetItemSlotForAdd
ldr r1, =Bag_GetItemSlotForAdd_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_GetItemSlotForAdd_return_address:
.word 0


.global Bag_HasSpaceForItem_hook
Bag_HasSpaceForItem_hook:
ldr r5, =Bag_HasSpaceForItem_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_HasSpaceForItem
ldr r1, =Bag_HasSpaceForItem_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_HasSpaceForItem_return_address:
.word 0


.global Bag_AddItem_hook
Bag_AddItem_hook:
ldr r5, =Bag_AddItem_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_AddItem
ldr r1, =Bag_AddItem_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_AddItem_return_address:
.word 0


.global Pocket_GetItemSlotForRemove_hook
Pocket_GetItemSlotForRemove_hook:
ldr r5, =Pocket_GetItemSlotForRemove_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Pocket_GetItemSlotForRemove
ldr r1, =Pocket_GetItemSlotForRemove_return_address
ldr r1, [r1]
mov pc, r1

.pool

Pocket_GetItemSlotForRemove_return_address:
.word 0


.global Bag_GetItemSlotForRemove_hook
Bag_GetItemSlotForRemove_hook:
ldr r5, =Bag_GetItemSlotForRemove_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_GetItemSlotForRemove
ldr r1, =Bag_GetItemSlotForRemove_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_GetItemSlotForRemove_return_address:
.word 0


.global Bag_TakeItem_hook
Bag_TakeItem_hook:
ldr r5, =Bag_TakeItem_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_TakeItem
ldr r1, =Bag_TakeItem_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_TakeItem_return_address:
.word 0


.global Pocket_TakeItem_hook
Pocket_TakeItem_hook:
ldr r5, =Pocket_TakeItem_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Pocket_TakeItem
ldr r1, =Pocket_TakeItem_return_address
ldr r1, [r1]
mov pc, r1

.pool

Pocket_TakeItem_return_address:
.word 0


.global Bag_HasItem_hook
Bag_HasItem_hook:
ldr r5, =Bag_HasItem_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Bag_HasItem
ldr r1, =Bag_HasItem_return_address
ldr r1, [r1]
mov pc, r1

.pool

Bag_HasItem_return_address:
.word 0


.global GiveMon_hook
GiveMon_hook:
ldr r5, =GiveMon_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl GiveMon
ldr r1, =GiveMon_return_address
ldr r1, [r1]
mov pc, r1

.pool

GiveMon_return_address:
.word 0


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


.global CreateBoxMonData_hook
CreateBoxMonData_hook:
ldr r5, =CreateBoxMonData_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CreateBoxMonData
ldr r1, =CreateBoxMonData_return_address
ldr r1, [r1]
mov pc, r1

.pool

CreateBoxMonData_return_address:
.word 0
