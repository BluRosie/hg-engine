.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_NONE, _011
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _015

_011:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_015:
    CalcCrit 
    CalcDamage 
    End 
