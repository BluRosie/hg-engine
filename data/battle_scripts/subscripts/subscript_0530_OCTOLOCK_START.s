#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    SetMoveConditionFlag MOVE_OCTOLOCK, BATTLER_CATEGORY_DEFENDER
    // {0} can no longer escape because of Octolock!
    PrintMessage 1814, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait
    WaitButtonABTime 30
    End
