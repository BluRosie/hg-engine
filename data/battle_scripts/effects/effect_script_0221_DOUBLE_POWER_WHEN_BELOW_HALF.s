.include "asm/include/battle_commands.inc"

.data

// Called by Brine.
_Start:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MAXHP, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_DIV, BSCRIPT_VAR_CALC_TEMP, 2
    CompareMonDataToVar OPCODE_GT, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, BSCRIPT_VAR_CALC_TEMP, _RegularMultiplier
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20
    GoTo _CalcDamage

_RegularMultiplier:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
