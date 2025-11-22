.include "asm/include/battle_commands.inc"

.data

// Called by Endeavor.
_Start:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, BSCRIPT_VAR_DAMAGE
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, BSCRIPT_VAR_CALC_TEMP
    // Fail if the defender's HP is less than or equal to the attacker's.
    CompareVarToVar OPCODE_LTE, BSCRIPT_VAR_DAMAGE, BSCRIPT_VAR_CALC_TEMP, _MoveFailed
    // Get the difference between the two HP values.
    UpdateVarFromVar OPCODE_SUB, BSCRIPT_VAR_DAMAGE, BSCRIPT_VAR_CALC_TEMP
    // Make the amount negative, as we are dealing damage.
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_DAMAGE, -1
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
