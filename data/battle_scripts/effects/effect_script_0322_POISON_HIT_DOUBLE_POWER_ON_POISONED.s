.include "asm/include/battle_commands.inc"

.data

// Called by Barb Barrage.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_POISON
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_BAD_POISON|STATUS_POISON, _TargetPoisoned
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _CalcDamage

_TargetPoisoned:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
