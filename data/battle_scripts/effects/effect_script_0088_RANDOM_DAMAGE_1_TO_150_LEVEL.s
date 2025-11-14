.include "asm/include/battle_commands.inc"

.data

// Called by Psywave.
_Start:
    // Deals fixed damage (but still adheres to type immunity).
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS
    // Generate a random number between 0 and 10, then offset by 5 (for a range of 5-15)
    Random 10, 5
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_LEVEL, BSCRIPT_VAR_DAMAGE
    // Multiply the randomized number by the attacker's level, then divide by 10.
    UpdateVarFromVar OPCODE_MUL, BSCRIPT_VAR_DAMAGE, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_DIV, BSCRIPT_VAR_DAMAGE, 10
    // Floor the value to 1 in case we are a very low level, since integer division will always round down.
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_DAMAGE, 0, _MakeDamageNegative
    UpdateVar OPCODE_SET, BSCRIPT_VAR_DAMAGE, 1

_MakeDamageNegative:
    // We need to output an amount to subtract (rather than add).
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_DAMAGE, -1
    End 
