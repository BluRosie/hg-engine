.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfFirstHitOfParentalBond _005
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_INCINERATE

_005:
    CalcCrit 
    CalcDamage 
    End 