.include "asm/include/battle_commands.inc"

.data

// Copied from Protect - using moveEffect to differentiate from different protect moves.
// Called by Wide Guard.
// Also called by Quick Guard, Mat Block and Crafty Shield-- the secondary effects are handled elsewhere, since they do not occur immediately.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SIDE_EFFECT_CHECK_HP|MOVE_SUBSCRIPT_PTR_PROTECT
    End 
