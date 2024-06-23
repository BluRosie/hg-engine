.include "asm/include/battle_commands.inc"

.data

_000:
    TrySpikes _010
    // Spikes were scattered all around your team’s feet!
    BufferMessage 427, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER_ENEMY
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    End 

_010:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
