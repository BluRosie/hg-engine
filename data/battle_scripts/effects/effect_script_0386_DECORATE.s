.include "asm/include/battle_commands.inc"

.data

_Start:
    // Failure conditions are handled in BeforeMove.c.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_DECORATE
    End 
