.include "asm/include/battle_commands.inc"

.data

_000:
    Random 9, 0
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_CALC_TEMP, 6, _020
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _024

_020:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20
    // {STRVAR_1 1, 0, 0} is going all out for this attack!
    PrintMessage 1545, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30

_024:
    CalcCrit 
    CalcDamage 
    End 
