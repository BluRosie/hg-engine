.include "asm/include/battle_commands.inc"

.data

// Generation VI: Called by Sweet Scent, now that it lowers Evasion by 2 stages instead of 1.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_EVASION_DOWN_2_STAGES
    End 
