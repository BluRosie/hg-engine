.include "asm/include/battle_commands.inc"

.data

// Called by Eerie Impulse.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SP_ATTACK_DOWN_2_STAGES
    End 
