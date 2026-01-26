.include "asm/include/battle_commands.inc"

.data

// Called by Burn Up.
_Start:
    // Failure conditions are handled in src/individual/BeforeMove.c.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_REMOVE_USER_FIRE_TYPE
    CalcCrit
    CalcDamage
    End
