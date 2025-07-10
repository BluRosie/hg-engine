.text
.align 2
.thumb

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


// still needed because function itself is not 0x1C bytes long
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


// still needed because function itself is not 0x1C bytes long
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


// still needed because function itself is not 0x1C bytes long
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

//.global IsItemTM_hook
//IsItemTM_hook:
//    mov r12, r2
//    cmp r1, r0
//    blo tm
//
//    mov r2, r0
//    add r2, #8
//    cmp r1, r2
//    blo tm
//
//    mov r2, r12
//    ldr r3, =0x021fe95f | 1
//    bx  r3
//
//tm:
//    mov r2, r12
//    ldr r3, =0x021fe92b | 1
//    bx  r3
//
//.pool


//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r3}
//
//    ldrh r1, [r7, #0]         @ replace the original `ldrh r1, [r7]`
//
//    mov  r3, #105             @ 420 = 105 << 2
//    lsl  r3, r3, #2
//    cmp  r1, r3
//    blo  .tm
//
//    mov  r3, #107             @ 428 = 107 << 2
//    lsl  r3, r3, #2
//    cmp  r1, r3
//    bhi  .tm
//
//    @ r1 in [420, 428]
//    mov r0, #0x69
//    pop {r3}
//    bx lr
//
//.tm:
//    mov r0, #0x69             @ default r0 = 105 (for 420 after shift)
//    pop {r3}
//    bx lr
//
//.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    push {lr}
//    mov r0, r1
//    bl IsItemTM
//    pop {pc}
//
//.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r6}
//    mov  r6, lr
//    mov  r0, r1
//
//    ldr  r3, =IsItemTM + 1    @ manually set LSB for Thumb mode
//    blx  r3
//
//    mov  lr, r6
//    pop  {r0, r1, r6}
//    bx   lr
//
//.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    mov r0, r1         @ itemId is in r1
//    ldr r3, =IsItemTM
//    blx r3
//    bx lr
//.pool

.global IsItemTM_hook
IsItemTM_hook:
    push {r0, r1, r3}

    mov  r0, r1              @ item ID in r1
    ldr  r3, =IsItemTM
    blx r3                   @ r0 = BOOL (1 = TM, 0 = HM)

    cmp r0, #0
    pop {r0, r1, r3}
    beq .hm_path

.tm_path:
    ldr r3, =0x021FE92A | 1
    bx r3

.hm_path:
    ldr r3, =0x021FE95E | 1  @ jump to HM logic
    bx r3
.pool