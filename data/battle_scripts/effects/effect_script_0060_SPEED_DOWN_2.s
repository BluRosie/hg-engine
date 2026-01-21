.include "asm/include/battle_commands.inc"

.data

// Called by Cotton Spore and Scary Face.
// Generation VI: Called by String Shot, now that it lowers Speed by 2 stages instead of 1.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SPEED_DOWN_2_STAGES
    End 
