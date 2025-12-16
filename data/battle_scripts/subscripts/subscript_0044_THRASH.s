.include "asm/include/battle_commands.inc"

.data

_Start:
    // Thrash lasts 2-3 turns.
    // Generate 0-1, then offset by 2.
    Random 1, 2
    // Shift the value over so that it can be stored in the correct volatile status flag bits (STATUS2_THRASH_0 and STATUS2_THRASH_1).
    UpdateVar OPCODE_LEFT_SHIFT, BSCRIPT_VAR_CALC_TEMP, 10
    UpdateMonDataFromVar OPCODE_FLAG_ON, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, BSCRIPT_VAR_CALC_TEMP
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_ATTACKER_LOCKED_MOVE, BSCRIPT_VAR_MOVE_NO_CUR
    End