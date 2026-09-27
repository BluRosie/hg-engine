#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    PrintMessage 1783, TAG_NONE
    Wait
    WaitButtonABTime 30
    End
