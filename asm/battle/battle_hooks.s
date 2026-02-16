.text
.align 2
.thumb

.include "asm/include/interop_macros.inc"
.include "asm/include/moves.inc"

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
ldr r3, =0x69B4 + 0x022378C0|1
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
ldr r1, =0xB98 + 0x022378C0|1
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
ldr r2, =0x2F8A4 + 0x022378C0|1
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
ldr r0, =0x2FC04 + 0x022378C0|1
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
ldr r3, =0x3064C + 0x022378C0|1
bx r3

sub_803065Ah:
ldr r0, =0x3065A + 0x022378C0|1
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

ldr r0, =0x0224E70E | 1
bx r0

.pool


.global ClearBattleMonFlags_hook2
ClearBattleMonFlags_hook2:
// r5 is fainting battler, sp+4 is BattleStruct
ldr r0, [sp, #4]
mov r1, r5
bl ClearBattleMonFlags
ldr r0, =0x0225157E | 1
bx r0

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


.global AnimCmd_PlayCryEdit_hook
AnimCmd_PlayCryEdit_hook:
// r3 is client
push {r0-r6}
mov r0, r3
bl AnimCmd_PlayCryEdit
cmp r0, #0
bne return_to_0221F87C

// normal return
pop {r0-r6}
mov r0, #0x46
add r2, r6, r2
add r3, r6, r3
lsl r0, #2
ldr r1, =0x0221F85C|1
bx r1

return_to_0221F87C:
pop {r0-r6}
ldr r1, =0x0221F87C|1
bx r1

.pool


.global ai_switch_ban_for_bind_hook
ai_switch_ban_for_bind_hook:

// r0 is already bw, r1 is already sp, r6 is battler

push {r0-r3}

add r2, r6, #0
bl SeeIfBindShouldRestrainSwitch
cmp r0, #1
beq _returnTo02220424

pop {r0-r3}
// else do not return false and just continue the checks, starting with mean look
//ldr r2, =0x2DB0
mov r2, #0x2D
lsl r2, #0x8
add r2, #0xB0 // fuck you movw
mov r3, #1
lsl r3, #26 // 0x04000000 for mean look
ldr r4, [r5, r2]
str r0, [sp, #4]
ldr r7, =0x022203BC | 1
bx r7

_returnTo02220424:
pop {r0-r3}
ldr r0, =0x02220424 | 1
bx r0

.pool


.global load_max_move_num_metronome
load_max_move_num_metronome:
mov r0, r7
bl RollMetronomeMove
ldr r1, =0x022408BA|1
bx r1

.global BattleController_EmitHealthbarSlideIn_EarlyBail
BattleController_EmitHealthbarSlideIn_EarlyBail:
ldr  r0, [sp, #4]
mov  r1, r4
bl   IsBattlerSlotValid
cmp  r0, #0
beq  _returnTo02262B4A

str r0, [sp, #0xc]
mov r0, #0xc
add r3, sp, #0x14
strb r0, [r3]
mov r0, #0xc0
ldr  r6, =0x02262A64 | 1
bx   r6

_returnTo02262B4A:
ldr r3, =0x02262B4A | 1;
bx r3

.pool


.global ov12_0225D644_SkipPartnerThrow
ov12_0225D644_SkipPartnerThrow:
push {r3}
bl 0x0223AB6C | 1
mov r4, r0

mov r1, r0
ldr r0, [r5]
bl IsBattlerSlotValid
cmp  r0, #0
beq _ov12_0225D644_InvalidPartner

mov r1, r4
ldr r0, [r5]
bl 0x0223A7E8 | 1
pop {r3}
ldr r4, =0x0225D77E | 1
bx r4

_ov12_0225D644_InvalidPartner:
ldr r0, [r5]
mov r1, r4
bl 0x0223A7E8 | 1
add r1, r0, #0
add r1, #0x88
ldr r0, [r1]
cmp r0, #0
beq _returnTo0225D7F2

push {r1}

mov r1, #0
bl 0x0223449C | 1

pop {r1}
ldr r0, [r1]
cmp r0, #0
beq _returnTo0225D7F2
push {r1}

mov r1, #0
bl 0x02233EFC | 1

pop {r1}
ldr r0, [r1]
cmp r0, #0
beq _returnTo0225D7F2
push {r1}

mov r1, #0
bl 0x022344C0 | 1

pop {r1}
ldr r0, [r1]
cmp r0, #0
beq _returnTo0225D7F2
push {r1}

mov r1, #0
bl 0x022344D0 | 1

pop {r1}
b _returnTo0225D7F2

_returnTo0225D7F2:
pop {r3}
ldr r4, =0x0225D7F2 | 1
bx r4

.pool


.global CT_PokemonEncountAppearSet_Path_02259D10
CT_PokemonEncountAppearSet_Path_02259D10:
push {r0-r3}
mov r2, #0x65
lsl r2, r2, #2
ldrb r3, [r6, r2]
cmp r3, #2
bne _CTEA_Path02259D10_NoRerouteCheck
add r2, r2, #1
ldrb r3, [r6, r2]
cmp r3, #4
bne _CTEA_Path02259D10_NoRerouteCheck
mov r0, r7
mov r1, #2
bl IsBattlerSlotValid
cmp r0, #0
bne _CTEA_Path02259D10_NoRerouteCheck
mov r0, #1
b _CTEA_Path02259D10_RerouteCheckDone
_CTEA_Path02259D10_NoRerouteCheck:
mov r0, #0
_CTEA_Path02259D10_RerouteCheckDone:
cmp r0, #0
pop {r0-r3}
bne _CTEA_Path02259D10_Reroute

ldr r0, =0x0225B961 | 1
add r1, r4, #0
mov r2, #0
bl 0x0200E320 | 1
add sp, #0xc
pop {r4, r5, r6, r7, pc}

_CTEA_Path02259D10_Reroute:
ldr r0, =0x0225BE39 | 1
add r1, r4, #0
mov r2, #0
bl 0x0200E320 | 1
add sp, #0xc
pop {r4, r5, r6, r7, pc}

.pool


.global CT_PokemonEncountAppearSet_Path_02259D1E
CT_PokemonEncountAppearSet_Path_02259D1E:
ldr r0, =0x0225BE39 | 1
add r1, r4, #0
mov r2, #0
bl 0x0200E320 | 1
add sp, #0xc
pop {r4, r5, r6, r7, pc}

.pool


.global CT_PokemonEncountAppearSet_Path_02259D2C
CT_PokemonEncountAppearSet_Path_02259D2C:
ldr r0, =0x0225B961 | 1
add r1, r4, #0
mov r2, #0
bl 0x0200E320 | 1
add sp, #0xc
pop {r4, r5, r6, r7, pc}

.pool


.global CT_PokemonEncountSet_Path_02259B6C
CT_PokemonEncountSet_Path_02259B6C:
push {r0-r3}
mov r2, #0x65
lsl r2, r2, #2
ldrb r3, [r6, r2]
cmp r3, #2
bne _CTE_Path02259B6C_NoRerouteCheck
add r2, r2, #1
ldrb r3, [r6, r2]
cmp r3, #4
bne _CTE_Path02259B6C_NoRerouteCheck
ldr r0, [sp, #0x34]
mov r1, #2
bl IsBattlerSlotValid
cmp r0, #0
bne _CTE_Path02259B6C_NoRerouteCheck
mov r0, #1
b _CTE_Path02259B6C_RerouteCheckDone

_CTE_Path02259B6C_NoRerouteCheck:
mov r0, #0

_CTE_Path02259B6C_RerouteCheckDone:
cmp r0, #0
pop {r0-r3}
bne _CTE_Path02259B6C_Reroute

ldr r0, =0x0225B7B9 | 1
add r1, r4, #0
mov r2, #0
bl 0x0200E320 | 1
ldr r3, =0x02259B82 | 1
bx r3

_CTE_Path02259B6C_Reroute:
ldr r0, =0x0225B495 | 1
add r1, r4, #0
mov r2, #0
bl 0x0200E320 | 1
ldr r3, =0x02259B82 | 1
bx r3

.pool


.global CT_PokemonAppearSet_Path_02259F06
CT_PokemonAppearSet_Path_02259F06:
push {r0-r3}
ldr r2, [sp, #0x20]
mov r0, #0x65
lsl r0, r0, #2
ldrb r3, [r2, r0]
cmp r3, #2
bne _CTPA_Path02259F06_NoRerouteCheck
add r0, r0, #1
ldrb r3, [r2, r0]
cmp r3, #4
bne _CTPA_Path02259F06_NoRerouteCheck
ldr r0, [sp, #0x1c]
mov r1, #2
bl IsBattlerSlotValid
cmp r0, #0
bne _CTPA_Path02259F06_NoRerouteCheck
mov r0, #1
b _CTPA_Path02259F06_RerouteCheckDone

_CTPA_Path02259F06_NoRerouteCheck:
mov r0, #0

_CTPA_Path02259F06_RerouteCheckDone:
cmp r0, #0
pop {r0-r3}
bne _CTPA_Path02259F06_Reroute

ldr r0, =0x0225C18D | 1
add r1, r5, #0
mov r2, #0
bl 0x0200E320 | 1
ldr r3, =0x02259F10 | 1
bx  r3

_CTPA_Path02259F06_Reroute:
ldr r0, =0x0225C6C9 | 1
add r1, r5, #0
mov r2, #0
bl 0x0200E320 | 1
ldr r3, =0x02259F10 | 1
bx r3

.pool
