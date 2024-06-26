.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfSecondHitOfParentalBond _005
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SIDE_EFFECT_CHECK_SUBSTITUTE|MOVE_SUBSCRIPT_PTR_PAY_DAY

_005:
    CalcCrit 
    CalcDamage 
    End 
