#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    // All stat changes were eliminated!
    PrintMessage 817, TAG_NONE
    Wait
    WaitButtonABTime 30
    End
