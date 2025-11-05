.include "asm/include/battle_commands.inc"

.data

// Randomized stat IDs from 0-7 are generated and passed in via src/individual/ServerFieldConditionCheck.c.
// Generation VIII: Moody no longer affects evasion or accuracy, so IDs are only from 0-5 unless reverted.
// ID 8 is used to indicate that there are no stats left to raise/lower.
_Start:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF|BATTLE_STATUS_NO_ATTACK_MESSAGE
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 8, _LowerStatStage
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, BSCRIPT_VAR_CALC_TEMP
    // Offset from Attack (ID 0) to get the correct stat.
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_ATTACK_UP_2_STAGES
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE

_LowerStatStage:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_ABILITY_TEMP, 8, _Cleanup
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, BSCRIPT_VAR_MSG_ABILITY_TEMP
    // Offset from Attack (ID 0) to get the correct stat.
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_ATTACK_DOWN_1_STAGE
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE

_Cleanup:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UPDATE_STAT_STAGES
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN
    End 
