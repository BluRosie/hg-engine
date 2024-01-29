.text
.align 2
.thumb

.include "offset_def.s"

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

//形态变化恢复
.global TryRevertFormChange_hook
TryRevertFormChange_hook:
lsl r0, r0, #0x2
add r2, r5, r0
lsl r1, r4, #0x2
ldr r0, [r2, r1]
push {r0-r2}
mov r2, r4
mov r1, r6
mov r0, r5
bl TryRevertFormChange
pop {r0-r2}
ldr r3, =0x69B4 + Overlay_12_Start
bx r3

//战斗结束
.global Battle_End
Battle_End:
ldr r1, [r4, r3]
mov r7, r0
lsl r2, r2, #0x2
str r1, [r7, r2]
push {r0-r3}
mov r0, r4
bl BattleEndRevertFormChange
pop {r0-r3}
ldr r1, =0xB98 + Overlay_12_Start
bx r1

//mega
//hook 0802F89C
.global LoadMegaOam
LoadMegaOam:
mov r3, #0x4
ldr r1, [sp, #0x38]
str r0, [sp, #0x0]
ldrb r0, [r6, #0x3]
push {r0-r3}
mov r0, r5
bl LoadMegaIcon
pop {r0-r3}
ldr r2, =0x2F8A4 + Overlay_12_Start
bx r2

//0802FBFC
.global load_mega_button
load_mega_button:
mov r1, #0x4D
str r0, [sp, #0x0]
push {r1-r3}
mov r0, r5
bl LoadMegaButton
pop {r1-r3}
mov r0, #0x3
str r0, [sp, #0x4]
ldr r0, =0x2FC04 + Overlay_12_Start
bx r0

//08030644
.global MegaButtonCheck
MegaButtonCheck:
mov r2, r5
add r2, r2, #0x1C
push {r0-r3}
mov r0, r5
mov r1, r4
bl CheckMegaButton
cmp r0, #0x0
bne end
pop {r0-r3}
cmp r4, #0x1
blt sub_803065Ah
ldr r3, =0x3064C + Overlay_12_Start
bx r3

sub_803065Ah:
ldr r0, =0x3065A + Overlay_12_Start
bx r0

end:
pop {r0-r3}
mov r0, #0x0
mvn r0, r0
pop {r3-r7,pc}

//08009A74
.global CheckCanTakeItem
CheckCanTakeItem:
add r0, r5, r1
ldrh r0, [r0,r3] // load item into slot
push {r1-r3}
bl CheckItemByThief
pop {r1-r3}
cmp r0, #0x0
beq backToThief_1
ldr r0, =0x0224133C|1
bx r0

backToThief_1:
ldr r2, =0x02241346|1
bx r2

.pool


// need to expand the table that remaps "move effects" to subscripts
// r4 is effect to grab, r0 and r1 are free, needs to pop {r4, pc} at the end
.global remap_move_effect_to_subscript_table
remap_move_effect_to_subscript_table:
ldr r0, =move_effect_to_subscripts
lsl r1, r4, #1
ldrh r0, [r0, r1]
pop {r4, pc}

.pool


.global set_proper_mega_status
set_proper_mega_status:
cmp r4, #7
blt jump_to_2266130
push {r0-r7}

mov r0, r6 // bip
bl SwapOutBottomScreen

pop {r0-r7}
//mov r4, #0
//str r0, [r6, r1]
//ldr r7, =0x0226E298 // already loaded this above
//ldr r0, =0x02266130 | 1
//bx r0
ldr r0, [sp, #0xC]
bl 0x0226ADC4
ldr r1, =0x0226618E | 1
bx r1


jump_to_2266130:
ldr r0, =0x02266130 | 1
bx r0

.pool


.global shift_cancel_over
shift_cancel_over:
push {r1-r7}

mov r0, r5 // bip
bl GrabCancelXValue

pop {r1-r7}
str r0, [sp, #0xC]
mov r0, #175 // y value
str r0, [sp, #0x10]

ldr r0, =0x02267634 | 1
bx r0

.pool


.global fix_money_calc
fix_money_calc:
ldr r5, =gLastPokemonLevelForMoneyCalc
ldrh r5, [r5]
ldr r0, =0x0223FBBE | 1
bx r0

.pool


// sp+4 is client no in BattleStruct, r7 is BattleStruct
.global ClearBattleMonFlags_hook
ClearBattleMonFlags_hook:
push {r0-r7}
mov r0, r7
ldr r1, [sp,#(4+8*4)] // pushed 8 registers, sp+4 originally
bl ClearBattleMonFlags
pop {r0-r7}

add r1, r7, r6
strb r2, [r1, r0]
add r0, #1
strb r2, [r1, r0]

ldr r3, =0x0224E9A0 | 1
bx r3

.pool


// get_client_no is r7.  we have to figure out how to run the exp task that pushes forward
.global Task_DistributeExp_capture_experience_hook
Task_DistributeExp_capture_experience_hook:
// set up the arguments
ldr r0, [sp, #0x10] // arg0 w/e tf it is
mov r1, r4 // expcalc structure
mov r2, r7 // get_client_no

push {r1-r7}

bl Task_DistributeExp_capture_experience

pop {r1-r7}

cmp r0, #1
bne fully_return

// if r0 is TRUE, set up case and return
ldr r0, [r4, #8]
mov r1, #7
ldr r2, =0x02232F60|1 // BM_SceneStateGet
bl bx_r2
cmp r0, #0
bne return_to_224689E
ldr r2, =0x02246896|1
bx r2

return_to_224689E:
ldr r2, =0x224689E|1
bx r2

fully_return: // hope this works to fully return
ldr r2, =0x02247216|1
//bx r2
// fallthrough to bx_r2

bx_r2:
bx r2

.pool


.global gKeepStructureCallbackIntact
gKeepStructureCallbackIntact:
.word 0


.global DontFreeMemoryIfCatchExp
DontFreeMemoryIfCatchExp:
ldr r0, =gKeepStructureCallbackIntact
ldr r0, [r0]
cmp r0, #0
bne dontFreeAnything
mov r0, #0x5E
ldr r1, [r4, #4]
mov r2, #0
lsl r0, #2
str r2, [r1, r0] // store null at pointer
mov r0, r4
ldr r2, =0x201AB0C|1 // free memory
bl bx_r2
ldr r0, [sp, #0x14]
ldr r2, =0x200E390|1 // delete task
bl bx_r2
dontFreeAnything:
ldr r0, =gKeepStructureCallbackIntact
mov r1, #0
str r1, [r0]
ldr r0, =0x022463B6|1
bx r0

.pool


.global DealWithCriticalCaptureShakes_hook
DealWithCriticalCaptureShakes_hook:
ldr r1, [r4, #4]
bl CalculateBallShakes
mov r1, r0 // shakes
mov r0, r4 // expcalc
bl DealWithCriticalCaptureShakes
ldr r1, =0x0224676C|1
bx r1

.pool


.global MakeSureDoublesBitIsSet
MakeSureDoublesBitIsSet:
ldr r0, [sp, #4]
ldr r2, =0x0223A7E0 | 1 // BattleTypeGet or whatever it is
bl bx_r2
cmp r0, #2
bne _set_double_to_0
mov r0, #1
b _skip_set_double

_set_double_to_0:
mov r0, #0

_skip_set_double:
add r1, sp, #0x10
strb r0, [r1, #1]
mov r0, #0
strb r0, [r1, #2]
strb r0, [r1, #3]

ldr r2, =0x02263298 | 1
bx r2


.global ServerDoTypeCalcMod_hook
ServerDoTypeCalcMod_hook:
ldr r5, =ServerDoTypeCalcMod_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl ServerDoTypeCalcMod
ldr r1, =ServerDoTypeCalcMod_return_address
ldr r1, [r1]
mov pc, r1

.pool

ServerDoTypeCalcMod_return_address:
.word 0


.global AITypeCalc_hook
AITypeCalc_hook:
ldr r5, =AITypeCalc_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl AITypeCalc
ldr r1, =AITypeCalc_return_address
ldr r1, [r1]
mov pc, r1

.pool

AITypeCalc_return_address:
.word 0


// r0 is sp, r1, is client already
.global GrabMoveTypeForConversion2
GrabMoveTypeForConversion2:
mov r2, #0xC1
lsl r2, #6 // 0x3040
add r2, #4 // fucking 0x3044
ldr r2, [r5, r2] // sp->current_move_index
bl GetAdjustedMoveType
mov r4, r0
ldr r0, =0x0224DD9C | 1
bx r0

.pool


.global CantEscape_hook
CantEscape_hook:
ldr r5, =CantEscape_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
bl CantEscape
ldr r1, =CantEscape_return_address
ldr r1, [r1]
mov pc, r1

.pool

CantEscape_return_address:
.word 0

.global target_select_inject_illusion_icon
target_select_inject_illusion_icon:
// reset up original instructions, pass into C snippet
ldrb r2, [r7, r2]
ldr r0, [r5]
mov r1, r6
bl TargetSelectGrabIllusionPartyPokemon // (bw, client, pos)
ldr r1, =0x02267CE6 | 1
bx r1

.pool
