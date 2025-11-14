.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_COUNT, 0, _NoStockpile
    // Heal 25%^(Stockpile count) of maximum HP (25%, 50%, or 100%).
    // This effect can be achieved with some fancy bit math (output values will be shown in brackets):
    // Get the exponent (1, 2, 3) and cache it in HP_CALC.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_COUNT, BSCRIPT_VAR_HP_CALC
    // Subtract 3 (-2, -1, 0).
    UpdateVar OPCODE_SUB, BSCRIPT_VAR_HP_CALC, 3
    // Multiply by -1 (2, 1, 0).
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    // Cache our divisor in CALC_TEMP, defaulting to 1 (100%).
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 1
    // Shift our divisor in CALC_TEMP left according to the number of bits in HP_CALC (4, 2, 1).
    UpdateVarFromVar OPCODE_LEFT_SHIFT, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_HP_CALC
    // Overwrite HP_CALC with our maxmimum HP now that our divisor is ready to go.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    // Divide our cached maxmimum HP by our cached divisor to get our amount of HP to heal!
    DivideVarByVar BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_CALC_TEMP
    // Reset the Stockpile count.
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_COUNT, 0
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_DEF_BOOSTS, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_SUB_TO_ZERO, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STAT_CHANGE_DEF, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_SPDEF_BOOSTS, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_SUB_TO_ZERO, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STAT_CHANGE_SPDEF, BSCRIPT_VAR_CALC_TEMP
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_DEF_BOOSTS, 0
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STOCKPILE_SPDEF_BOOSTS, 0
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_SWALLOW
    End 

_NoStockpile:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // But it failed to swallow a thing!
    PrintMessage 815, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
