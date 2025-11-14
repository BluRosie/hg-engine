.include "asm/include/battle_commands.inc"

.data

// Called by Thief and Covet.
_Start:
    // Only attempt to steal on the second hit of Parental Bond.
    GotoIfFirstHitOfParentalBond _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SIDE_EFFECT_CHECK_SUBSTITUTE|MOVE_SUBSCRIPT_PTR_STEAL_ITEM

_CalcDamage:
    CalcCrit
    CalcDamage
    End