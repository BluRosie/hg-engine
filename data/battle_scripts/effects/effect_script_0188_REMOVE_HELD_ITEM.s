.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfFirstHitOfParentalBond _005
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_KNOCK_OFF

_005:
    GotoIfCanApplyKnockOffBoost _011
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 15

_011:
    CalcCrit 
    CalcDamage 
    End 
