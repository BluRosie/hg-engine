.include "asm/include/battle_commands.inc"

.data

_Start:
    Call BATTLE_SUBSCRIPT_PUSH_ATTACKER_AND_DEFENDER

_BeginLoop:
    // If no Pursuit damage, bail out.
    TryPursuit _Cleanup
    TryMegaOrUltraBurstDuringPursuit _HandleRegularPursuit
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    // Handle cases such as Mega Manectric's Intimidate ability (Switch -> Mega Evolution -> Intimidate -> Pursuit)
    // 處理例如超級雷電獸的威嚇特性 （切換中 -> 超級進化 -> 威嚇 -> 追打）
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK

_HandleRegularPursuit:
    // Double the power for the damage calc.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20
    CalcCrit 
    CalcDamage 
    // Handled in CalcDamage already.
    // TODO: apply the effectiveness flag
    // ApplyTypeEffectiveness
    // Make sure the animation and attack message show.
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_ATTACK_MESSAGE
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    PrintAttackMessage 
    Wait 
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_DID_NOT_HIT, _MoveMissed
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _HandleSubstitute
    // Check for Shell Bell first before proceeding.
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_DAMAGE
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_TEMP_DATA, -1
    // Check if Pursuit will KO the target in order to save the reduced amount of damage for Shell Bell.
    CompareMonDataToVar OPCODE_LTE, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, BSCRIPT_VAR_TEMP_DATA, _UpdateShellBell
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT, BSCRIPT_VAR_DAMAGE
    GoTo _DealDamage

_UpdateShellBell:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT, -1

_DealDamage:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_DAMAGE
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_PHYSICAL_DAMAGE_TAKEN, BSCRIPT_VAR_DAMAGE
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    CheckHoldOnWith1HP BATTLER_CATEGORY_MSG_TEMP
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_CRITICAL_HIT
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _HandleDefenderFainting
    TriggerAbilityOnHit _CheckHeldItem
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_CheckHeldItem:
    TriggerHeldItemOnHit _CheckPivotItem
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_CheckPivotItem:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_SUCCESSFUL
    TriggerHeldItemOnPivotMove _IntoRestartLoop
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_IntoRestartLoop:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_SUCCESSFUL
    GoTo _RestartLoop

_HandleSubstitute:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_DAMAGE
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_TEMP_DATA, -1
    CompareMonDataToVar OPCODE_LTE, BATTLER_CATEGORY_DEFENDER, BMON_DATA_SUBSTITUTE_HP, BSCRIPT_VAR_TEMP_DATA, _BreakSubstitute
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT, BSCRIPT_VAR_DAMAGE
    GoTo _HitSubstitute

_BreakSubstitute:
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE
    // Save the reduced amount of damage for Shell Bell.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_SUBSTITUTE_HP, BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT, -1

_HitSubstitute:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    Call BATTLE_SUBSCRIPT_HIT_SUBSTITUTE
    Call BATTLE_SUBSCRIPT_CRITICAL_HIT
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    GoTo _RestartLoop

_MoveMissed:
    WaitButtonABTime 15
    Call BATTLE_SUBSCRIPT_MISSED

_RestartLoop:
    Call BATTLE_SUBSCRIPT_POP_ATTACKER_AND_DEFENDER
    UpdateVarFromVar OPCODE_GET, BSCRIPT_VAR_MOVE_NO_TEMP, BSCRIPT_VAR_MOVE_NO_CUR
    GoTo _BeginLoop

// The rest of this script only done if the defender faints after getting hit.

_HandleDefenderFainting:
    Call BATTLE_SUBSCRIPT_FAINT_CHECK_DESTINY_BOND
    TriggerAbilityOnHit _CheckHeldItem_DefenderFainting
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_CheckHeldItem_DefenderFainting:
    TriggerHeldItemOnHit _CheckPivotItem_DefenderFainting
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_CheckPivotItem_DefenderFainting:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_SUCCESSFUL
    TriggerHeldItemOnPivotMove _Cleanup_DefenderFainting
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_Cleanup_DefenderFainting:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_SUCCESSFUL
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_BATTLER_FAINTED
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_FAINTED, BATTLER_PLAYER
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_BATTLE_STATUS_2
    UpdateVar OPCODE_RIGHT_SHIFT, BSCRIPT_VAR_CALC_TEMP, BATTLE_STATUS2_EXP_GAIN_SHIFT
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_EXP_GAIN

_StartExperienceLoop:
    // Only give experience to the player's Pokemon.
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 1, _ExperienceLoop
    Call BATTLE_SUBSCRIPT_GRANT_EXP

_ExperienceLoop:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_FAINTED, BATTLER_ENEMY
    UpdateVar OPCODE_RIGHT_SHIFT, BSCRIPT_VAR_CALC_TEMP, 1
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_CALC_TEMP, 0, _StartExperienceLoop
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_FAINTED, BSCRIPT_VAR_TEMP_DATA
    Call BATTLE_SUBSCRIPT_POP_ATTACKER_AND_DEFENDER
    UpdateVarFromVar OPCODE_GET, BSCRIPT_VAR_MOVE_NO_TEMP, BSCRIPT_VAR_MOVE_NO_CUR

_Cleanup:
    // Fix bug where pursuit on the rightside client was preventing the next attack message/move animation from playing
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_ATTACK_MESSAGE
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End 
