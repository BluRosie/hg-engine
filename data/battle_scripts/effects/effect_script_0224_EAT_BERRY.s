.include "asm/include/battle_commands.inc"

.data

// Called by Bug Bite and Pluck.
_Start:
    GotoIfFirstHitOfParentalBond _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PLUCK

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
