.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HELD_ITEM, BSCRIPT_VAR_BATTLE_TYPE, _011
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _015

_011:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_015:
    CalcCrit 
    CalcDamage 
    End 
