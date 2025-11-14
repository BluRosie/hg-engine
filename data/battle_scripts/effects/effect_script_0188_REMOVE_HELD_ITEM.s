.include "asm/include/battle_commands.inc"

.data

// Called by Knock Off.
_Start:
    GotoIfFirstHitOfParentalBond _CheckIfBoosted
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_KNOCK_OFF

_CheckIfBoosted:
    GotoIfCanApplyKnockOffBoost _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 15

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
