#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    // {0}’s encore ended!
    PrintMessage 375, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
