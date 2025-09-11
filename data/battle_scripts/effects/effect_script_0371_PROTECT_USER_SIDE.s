.include "asm/include/battle_commands.inc"

.data

// Copied from Protect - using moveEffect to differentiate from different protect moves

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SIDE_EFFECT_CHECK_HP|MOVE_SUBSCRIPT_PTR_PROTECT
    End 
