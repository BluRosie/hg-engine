#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait
    // {0} stole {1}’s {2}!
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    End 
