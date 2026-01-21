.include "asm/include/battle_commands.inc"

.data

// Not called in vanilla.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_SP_DEFENSE_UP_1_STAGE
    End 
