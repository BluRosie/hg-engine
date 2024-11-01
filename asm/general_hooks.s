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


.global set_starter_hidden_ability_hook
set_starter_hidden_ability_hook:
mov r5, r2
add r4, #8
mul r5, r1
add r1, r4, r5
push {r0-r7}
bl set_starter_hidden_ability
pop {r0-r7}
ldr r2, =0x02096160 | 1
bx r2

.pool


.global WildWaterEncSingle_hook
WildWaterEncSingle_hook:
ldr r5, =WildWaterEncSingle_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl WildWaterEncSingle
ldr r1, =WildWaterEncSingle_return_address
ldr r1, [r1]
mov pc, r1

.pool

WildWaterEncSingle_return_address:
.word 0


.global ImplementLevelCap_hook
ImplementLevelCap_hook:
ldr r3, =0x206E540 | 1
bl bx_r3
// r0 is level
bl IsLevelAtLevelCap
cmp r0, #1
beq return_to_2245B3E // above level cap
ldr r3, =0x02245A32 | 1
bx r3

return_to_2245B3E:
ldr r3, =0x2245B3E|1
// fall through

bx_r3:
bx r3

.pool


// r0 is level
.global CapRareCandies
CapRareCandies:
bl IsLevelAtLevelCap
cmp r0, #0
bne return_to_208FEFA
mov r0, r4
ldr r3, =0x0201AB0C | 1 // free memory
bl bx_r3
ldr r3, =0x0208FEF4 | 1
bx r3

return_to_208FEFA:
ldr r3, =0x0208FEFA | 1
bx r3


.global Save_RecordWhichLatestGoodSector_hook
Save_RecordWhichLatestGoodSector_hook:
ldr r5, =Save_RecordWhichLatestGoodSector_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl Save_RecordWhichLatestGoodSector
ldr r1, =Save_RecordWhichLatestGoodSector_return_address
ldr r1, [r1]
mov pc, r1

.pool

Save_RecordWhichLatestGoodSector_return_address:
.word 0


.global PCStorage_PlaceMonInBoxByIndexPair_hook
PCStorage_PlaceMonInBoxByIndexPair_hook:
ldr r5, =PCStorage_PlaceMonInBoxByIndexPair_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl PCStorage_PlaceMonInBoxByIndexPair
ldr r1, =PCStorage_PlaceMonInBoxByIndexPair_return_address
ldr r1, [r1]
mov pc, r1

.pool

PCStorage_PlaceMonInBoxByIndexPair_return_address:
.word 0


.global PCStorage_SwapMonsInBoxByIndexPair_hook
PCStorage_SwapMonsInBoxByIndexPair_hook:
ldr r5, =PCStorage_SwapMonsInBoxByIndexPair_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl PCStorage_SwapMonsInBoxByIndexPair
ldr r1, =PCStorage_SwapMonsInBoxByIndexPair_return_address
ldr r1, [r1]
mov pc, r1

.pool

PCStorage_SwapMonsInBoxByIndexPair_return_address:
.word 0


.global PCStorage_GetMonDataByIndexPair_hook
PCStorage_GetMonDataByIndexPair_hook:
ldr r5, =PCStorage_GetMonDataByIndexPair_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl PCStorage_GetMonDataByIndexPair
ldr r1, =PCStorage_GetMonDataByIndexPair_return_address
ldr r1, [r1]
mov pc, r1

.pool

PCStorage_GetMonDataByIndexPair_return_address:
.word 0


.global SetFixedWildEncounter_hook
SetFixedWildEncounter_hook:
ldr r5, =SetFixedWildEncounter_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl SetFixedWildEncounter
ldr r1, =SetFixedWildEncounter_return_address
ldr r1, [r1]
mov pc, r1

.pool

SetFixedWildEncounter_return_address:
.word 0


.global CanUseItemOnMonInParty_hook
CanUseItemOnMonInParty_hook:
ldr r5, =CanUseItemOnMonInParty_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CanUseItemOnMonInParty
ldr r1, =CanUseItemOnMonInParty_return_address
ldr r1, [r1]
mov pc, r1

.pool

CanUseItemOnMonInParty_return_address:
.word 0

.global _CreateTradeMon_hook
_CreateTradeMon_hook:
ldr r5, =_CreateTradeMon_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl _CreateTradeMon
ldr r1, =_CreateTradeMon_return_address
ldr r1, [r1]
mov pc, r1

.pool

_CreateTradeMon_return_address:
.word 0
