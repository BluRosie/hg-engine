.include "asm/include/battle_commands.inc"

.data

_Start:
    // Failure conditions are handled in src/individual/BeforeMove.c.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_REFLECT_TYPE
    End
