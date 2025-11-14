.include "asm/include/battle_commands.inc"

.data

// Called by Trick-or-Treat.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_ADD_THIRD_TYPE_GHOST
    End 
