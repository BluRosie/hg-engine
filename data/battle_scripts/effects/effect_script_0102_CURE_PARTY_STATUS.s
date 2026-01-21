.include "asm/include/battle_commands.inc"

.data

// Called by Heal Bell and Aromatherapy.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_HEAL_BELL
    End 
