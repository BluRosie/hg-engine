.include "asm/include/battle_commands.inc"

.data

// Generation V: No longer called in vanilla now that Growth also raises Attack.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_SP_ATTACK_UP_1_STAGE
    End 
