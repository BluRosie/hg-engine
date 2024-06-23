.include "asm/include/battle_commands.inc"

.data

_000:
    TryFeint _008
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_FEINT
    CalcCrit 
    CalcDamage 
    End 

_008:
    CalcCrit 
    CalcDamage 
    End 
