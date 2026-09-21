#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    Wait
    WaitButtonABTime 30
    AbilityPopup BATTLER_CATEGORY_SIDE_EFFECT_MON
    // {0}’s Attack was not lowered!
    PrintMessage 1502, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait
    WaitButtonABTime 30
    End
