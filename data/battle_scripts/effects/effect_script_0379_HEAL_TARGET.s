.include "asm/include/battle_commands.inc"

.data

// Called by Heal Pulse.
_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _MoveFailed
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_HEAL_PULSE
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
