.include "asm/include/battle_commands.inc"

.data

_000:
    TryStickyWeb _017
    // A sticky web has been laid out on the ground around your team!
    BufferMessage 1484, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER_ENEMY
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    End 

_017:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
