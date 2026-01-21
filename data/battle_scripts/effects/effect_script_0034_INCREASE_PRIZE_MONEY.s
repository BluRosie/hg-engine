.include "asm/include/battle_commands.inc"

.data

// Called by Pay Day.
_Start:
    GotoIfSecondHitOfParentalBond _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SIDE_EFFECT_CHECK_SUBSTITUTE|MOVE_SUBSCRIPT_PTR_PAY_DAY

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
