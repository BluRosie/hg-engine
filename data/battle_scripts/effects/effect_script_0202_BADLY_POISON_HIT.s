.include "asm/include/battle_commands.inc"

.data

// Called by Poison Fang and Malignant Chain.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_BADLY_POISON
    CalcCrit 
    CalcDamage 
    End 
