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
//    push {r3}
//    ldrh r0, [r7]             @ r0 = item ID
//    ldr  r3, =IsItemTM
//    blx  r3
//    cmp  r0, #0
//    beq .hm_path
//
//    pop  {r3}
//    mov  r0, #0x3F            @ hardcoded TM number
//    lsl  r0, r0, #8
//    add  r0, r0, #0xFF
//    ldrh r1, [r7]             @ item ID
//    ldr  r3, =0x021FE920 | 1
//    bx   r3
//
//.hm_path:
//    pop  {r3}
//    ldr  r3, =0x021FE95E | 1
//    bx   r3
//
//.pool

.global IsItemTM_hook
IsItemTM_hook:
    ldrh r0, [r7]             @ item ID → r0
    ldr  r3, =IsItemTM
    blx  r3
    cmp  r0, #0
    beq .hm_path

    ldrh r0, [r7]             @ reload item ID for TM number
    ldr  r3, =GetTMNumber
    blx  r3                   @ r0 = TM number (e.g. 1 for TM01)
    lsl  r0, r0, #0x10        @ label expects TMnum << 16
    mov  r1, #2               @ label mode = TM
    ldr  r3, =0x021FE932 | 1
    bx   r3

.hm_path:
    ldr  r3, =0x021FE95E | 1
    bx   r3
.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r3, r4, r5, r6, r7, lr}
//    sub  sp, #0x10
//
//    mov  r6, r1           @ screen ptr
//    mov  r7, r2           @ item data ptr
//    mov  r4, r3           @ layout ctx
//
//    ldrh r0, [r7]         @ item ID
//    ldr  r3, =IsItemTM
//    blx  r3               @ bool return in r0
//    cmp  r0, #0
//    beq .hm_path
//    mov  r4, r3
//
//.tm_path:
//    mov  r0, #0x69
//    lsl  r0, r0, #2         @ r0 = ITEM_TM01
//    ldrh r1, [r7]           @ r1 = actual item ID
//    ldr  r3, =0x021FE92A | 1
//    bx   r3
//
//.hm_path:
//    ldr  r3, =0x021FE95E | 1
//    bx   r3
//
//.pool




//.global RenderTMHMLabels_hook
//RenderTMHMLabels_hook:
//    push {r4, r5, r6}
//    mov  r4, r0     @ save context
//    mov  r5, r1     @ save window
//    mov  r6, r2     @ save args
//    mov  r7, r3     @ save baseY
//    mov  r0, r4
//    mov  r1, r5
//    mov  r2, r6
//    mov  r3, r7
//    bl   RenderTMHMLabels
//    pop  {r4, r5, r6}
//    bx   lr
//
//RenderTMHMLabels_return_address:
//    .word 0
//.pool

//.global RenderTMHMLabels_hook
//RenderTMHMLabels_hook:
//    ldr r5, =RenderTMHMLabels_return
//    mov r6, lr
//    str r6, [r5]
//
//    push {r0, r1, r2, r3}
//    mov  r4, lr
//
//    ldrh r1, [r7]
//    mov  r0, r1
//
//    ldr r3, =IsItemTM      @ <- pulls from pool safely
//    blx r3
//
//    cmp  r0, #0
//    beq .hm_path
//
//    ldrh r0, [r7]
//    ldr r3, =GetCustomTMNumber
//    blx r3
//
//    mov  r2, r0
//    mov  r1, #2
//    lsl  r0, r2, #16
//    lsr  r2, r0, #16
//
//    pop  {r0, r1, r2, r3}
//    ldr  r1, =RenderTMHMLabels_return
//    ldr  r1, [r1]
//    mov  pc, r1
//
//.hm_path:
//    pop  {r0, r1, r2, r3}
//    ldr  r1, =RenderTMHMLabels_return
//    ldr  r1, [r1]
//    mov  pc, r1
//
//.pool

//RenderTMHMLabels_return:
//    .word 0

// broken labels
//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r3, r5}
//
//    mov  r5, r0              @ ✅ restore context
//    ldrh r1, [r7]            @ ✅ restore itemId
//    mov  r0, r1
//    ldr  r3, =IsItemTM
//    blx  r3
//
//    cmp r0, #0
//    pop  {r0, r1, r3, r5}
//    beq .hm_path
//
//.tm_path:
//    ldr  r3, =0x021FE92A | 1
//    bx   r3
//
//.hm_path:
//    ldr  r3, =0x021FE95E | 1
//    bx   r3
//.pool

// all HMS
//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r3, r5}
//    mov  r5, r0               @ preserve original r0
//    ldrh r1, [r7]             @ load item ID
//    mov  r0, r1
//    ldr  r3, =IsItemTM
//    blx  r3
//    mov  r5, r0               @ store IsItemTM result in r5
//    pop  {r0, r1, r3, r5}     @ RESTORE ALL FOUR!
//
//    ldrh r1, [r7]             @ re-load item ID for cmp
//
//    cmp  r5, #0
//    beq  .hm_case
//
//.tm_case:
//    mov  r0, #0x69            @ TM01
//    b    .resume_cmp
//
//.hm_case:
//    mov  r0, #0xFF            @ force HM path
//
//.resume_cmp:
//    cmp  r1, r0
//    bcs  .hm_path
//    b    .tm_path
//
//.align 2
//.tm_path:
//    ldr  r3, =0x021FE92A | 1
//    bx   r3
//
//.hm_path:
//    ldr  r3, =0x021FE95E | 1
//    bx   r3
//.pool

//no TM labels
//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r3, r5}
//    mov  r5, r0               @ save context
//    ldrh r1, [r7]             @ itemId = *(u16*)r7
//    mov  r0, r1
//    ldr  r3, =IsItemTM
//    blx  r3                   @ r0 = IsItemTM(itemId)
//    cmp  r0, #0
//    beq .hm_path              @ if not TM → jump to HM path
//    cmp  r0, #1
//    beq .tm_path
//
//.tm_path:
//    pop  {r0, r1, r3, r5}
//    ldr r3, =0x021FE92A | 1   @ TM label code
//    bx  r3
//
//.hm_path:
//    pop  {r0, r1, r3, r5}
//    ldr r3, =0x021FE95E | 1   @ HM label code
//    bx  r3
//.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r3, r5}
//    ldrh r0, [r7]
//    ldr  r3, =IsItemTM
//    blx  r3                   @ r0 = IsItemTM(itemId)
//    cmp  r0, #0
//    beq .hm_path              @ if not TM → jump to HM path
//    pop  {r3, r5}
//    mov r0, #2                @ hardcode TM num, fetch with hook later
//    lsl r0, r0, #0x10         @ r0 <<= 16
//    mov r1, #2                @ set mode
//    ldr r3, =0x021FE932 | 1   @ TM label code
//    bx  r3
//
//.hm_path:
//    pop  {r3, r5}
//    ldr r3, =0x021FE95E | 1   @ HM label code
//    bx  r3
//.pool
//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r3, r5}
//    mov  r5, r0               @ preserve context
//    ldrh r1, [r7]             @ load item ID
//    mov  r0, r1
//    ldr  r3, =IsItemTM
//    blx  r3                   @ r0 = IsItemTM(itemId)
//    mov  r5, r0               @ store return value
//    pop  {r0, r1, r3, r5}     @ restore everything
//
//    ldrh r1, [r7]             @ reload item ID
//
//    cmp  r5, #0
//    beq  .hm_case
//
//.tm_case:
//    ldr  r0, =0x0148          @ TM01 = item 328
//    b    .resume_cmp
//
//.hm_case:
//    mov  r0, #0xFF            @ higher than any real item ID
//
//.resume_cmp:
//    cmp  r1, r0               @ if itemId ≥ TM01 → HM path
//    bcs  .hm_path
//    b    .tm_path
//
//.align 2
//.tm_path:
//    ldr  r3, =0x021FE92A | 1
//    bx   r3
//
//.hm_path:
//    ldr  r3, =0x021FE95E | 1
//    bx   r3
//.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r3, r5}
//    mov  r5, r0
//    ldrh r1, [r7]
//    mov  r0, r1
//    ldr  r3, =IsItemTM
//    blx  r3
//    cmp  r0, #0
//    pop  {r0, r1, r3, r5}
//    beq .hm_case
//
//.tm_case:
//    mov r0, #0x52
//    lsl r0,r0,#0x2
//    b    .resume
//
//.hm_case:
//    mov r0, #0x52
//    lsl r0, r0, #0x2
//
//.resume:
//    ldrh r1, [r7]
//    cmp  r1, r0
//    ldr  r3, =0x021FE95E | 1
//    bx   r3
//    //bcs 0x021FE95E
//    //b   0x021FF5A8
//.pool

//.global IsItemTM_hook
//IsItemTM_hook:
//    push {r0, r1, r3, r5}
//    mov  r5, r0
//    ldrh r1, [r7]
//    mov  r0, r1
//    ldr  r3, =IsItemTM
//    blx  r3
//    cmp  r0, #0
//    movne r0, #0x0148        @ if TM → r0 = TM01
//    moveq r0, #0x01A4        @ else → r0 = HM01
//    pop  {r0, r1, r3, r5}
//    bx   lr
//.pool

















