#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    FollowMe 
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_RAGE_POWDER, _message
    SetMoveConditionFlag MOVE_RAGE_POWDER, BATTLER_CATEGORY_ATTACKER

_message:
    // {0} became the center of attention!
    BufferMessage 484, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    End 
