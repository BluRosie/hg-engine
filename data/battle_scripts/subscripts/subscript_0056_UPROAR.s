.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_ATTACKER_LOCKED_MOVE, BSCRIPT_VAR_MOVE_NO_CUR
    // Generation V: Uproar lasts for exactly 3 turns.
    // Randomize a value between 0 and... 0. Offset by 3.
    Random 0, 3
    // Shift the (not) random value over to the bits used to store remaining Uproar turns.
    UpdateVar OPCODE_LEFT_SHIFT, BSCRIPT_VAR_CALC_TEMP, STATUS2_UPROAR_SHIFT
    UpdateMonDataFromVar OPCODE_FLAG_ON, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, BSCRIPT_VAR_CALC_TEMP
    // Get the index for the Pokemon setting Uproar.
    UpdateVarFromVar OPCODE_FLAG_INDEX, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    // Shift the index over to the field condition bits used to store active Uproar users.
    UpdateVar OPCODE_LEFT_SHIFT, BSCRIPT_VAR_CALC_TEMP, FIELD_CONDITION_UPROAR_SHIFT
    UpdateVarFromVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, BSCRIPT_VAR_CALC_TEMP
    // {0} caused an uproar!
    PrintMessage 308, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
