.include "asm/include/battle_commands.inc"

.data

_Start:
    // Cache the Defense of both Pokemon.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_DEF, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_DEF, BSCRIPT_VAR_TEMP_DATA
    // Add the cached values together.
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_CALC_TEMP
    // Shift 1 bit to the right to divide the value in half, rounded down.
    UpdateVar OPCODE_RIGHT_SHIFT, BSCRIPT_VAR_TEMP_DATA, 1
    // Set the Defense of both Pokemon to this value.
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_DEF, BSCRIPT_VAR_TEMP_DATA
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_DEF, BSCRIPT_VAR_TEMP_DATA
    // Do the same thing, but with Special Defense.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_SPDEF, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_SPDEF, BSCRIPT_VAR_TEMP_DATA
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_RIGHT_SHIFT, BSCRIPT_VAR_TEMP_DATA, 1
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_SPDEF, BSCRIPT_VAR_TEMP_DATA
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_SPDEF, BSCRIPT_VAR_TEMP_DATA
    // {0} shared its guard with the target!
    PrintMessage 1324, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
