.include "asm/include/battle_commands.inc"

.data

// Generation VI: No longer called in vanilla now that Sweet Scent lowers Evasion by 2 stages.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_EVASION_DOWN_1_STAGE
    End 
