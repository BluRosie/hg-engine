.include "asm/include/battle_commands.inc"

.data

_Start:
    // Generate a random number between 0 and 9, which is automatically stored in CALC_TEMP.
    Random 9, 0
    // If the value is greater than 6 (so 7-9), double the base power.
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_CALC_TEMP, 6, _GoingAllOut
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _CalcDamage

_GoingAllOut:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20
    // {STRVAR_1 1, 0, 0} is going all out for this attack!
    PrintMessage 1545, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
