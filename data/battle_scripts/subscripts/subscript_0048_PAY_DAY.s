.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_LEVEL, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_CALC_TEMP, 5
    IfSameSide BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ENEMY, _CoinsMessage
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_PAY_DAY_COUNT, BSCRIPT_VAR_CALC_TEMP

_CoinsMessage:
    // Coins were scattered everywhere!
    PrintMessage 818, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
