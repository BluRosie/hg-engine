.include "asm/include/battle_commands.inc"

.data

// Called by Cosmic Power and Defend Order.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_USER_DEF_AND_SPDEF_UP_1_STAGE
    End 
