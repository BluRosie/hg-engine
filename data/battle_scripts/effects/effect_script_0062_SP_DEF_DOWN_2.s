.include "asm/include/battle_commands.inc"

.data

// Called by Fake Tears and Metal Sound.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SP_DEFENSE_DOWN_2_STAGES
    End 
