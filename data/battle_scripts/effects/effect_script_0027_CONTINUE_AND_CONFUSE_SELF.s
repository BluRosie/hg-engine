.include "asm/include/battle_commands.inc"

.data

// Called by Thrash, Petal Dance, Outrage and Raging Fury.
_Start:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_RAMPAGE, _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_THRASH

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
