.include "asm/include/battle_commands.inc"

.data

// Called by Protect and Detect.
// Also called by King's Shield, Spiky Shield, Baneful Bunker, Obstruct, Silk Trap and Burning Bulwark-- the secondary effects are handled elsewhere, since they do not occur immediately.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SIDE_EFFECT_CHECK_HP|MOVE_SUBSCRIPT_PTR_PROTECT
    End 
