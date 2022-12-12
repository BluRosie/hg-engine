.text
.align 2
.thumb

.global calc_base_damage_hook
calc_base_damage_hook:
ldr r5, =calc_base_damage_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcBaseDamage
ldr r1, =calc_base_damage_return_address
ldr r1, [r1]
mov pc, r1

.pool

calc_base_damage_return_address:
.word 0


.global CalcAccuracy_hook
CalcAccuracy_hook:
ldr r5, =CalcAccuracy_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcAccuracy
ldr r1, =CalcAccuracy_return_address
ldr r1, [r1]
mov pc, r1

.pool

CalcAccuracy_return_address:
.word 0


.global CalcSpeed_hook
CalcSpeed_hook:
ldr r5, =CalcSpeed_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcSpeed
ldr r1, =CalcSpeed_return_address
ldr r1, [r1]
mov pc, r1

.pool

CalcSpeed_return_address:
.word 0


.global CalcCritical_hook
CalcCritical_hook:
ldr r5, =CalcCritical_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CalcCritical
ldr r1, =CalcCritical_return_address
ldr r1, [r1]
mov pc, r1

.pool

CalcCritical_return_address:
.word 0


.global MoldBreakerAbilityCheck_hook
MoldBreakerAbilityCheck_hook:
ldr r5, =MoldBreakerAbilityCheck_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl MoldBreakerAbilityCheck
ldr r1, =MoldBreakerAbilityCheck_return_address
ldr r1, [r1]
mov pc, r1

.pool

MoldBreakerAbilityCheck_return_address:
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


.global CT_SwitchInMessageParamMake_hook
CT_SwitchInMessageParamMake_hook:
ldr r5, =CT_SwitchInMessageParamMake_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CT_SwitchInMessageParamMake
ldr r1, =CT_SwitchInMessageParamMake_return_address
ldr r1, [r1]
mov pc, r1

.pool

CT_SwitchInMessageParamMake_return_address:
.word 0


.global CT_EncountSendOutMessageParamMake_hook
CT_EncountSendOutMessageParamMake_hook:
ldr r5, =CT_EncountSendOutMessageParamMake_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CT_EncountSendOutMessageParamMake
ldr r1, =CT_EncountSendOutMessageParamMake_return_address
ldr r1, [r1]
mov pc, r1

.pool

CT_EncountSendOutMessageParamMake_return_address:
.word 0


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
