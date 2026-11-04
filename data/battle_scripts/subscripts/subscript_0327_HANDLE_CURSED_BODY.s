#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_DEFENDER
    // {0}’s {1} was disabled!
    PrintMessage 1339, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    TryEatBerry BATTLER_CATEGORY_ATTACKER, HELD_ITEM_USE_REMOVE_CONDITION, _end
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_end:
    End
