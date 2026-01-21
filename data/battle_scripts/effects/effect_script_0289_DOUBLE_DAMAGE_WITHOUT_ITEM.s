.include "asm/include/battle_commands.inc"

.data

// Called by Acrobatics.
_Start:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HELD_ITEM, ITEM_NONE, _AttackerHasNoItem
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _CalcDamage

_AttackerHasNoItem:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
