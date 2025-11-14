.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_UPROAR, _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_UPROAR

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
