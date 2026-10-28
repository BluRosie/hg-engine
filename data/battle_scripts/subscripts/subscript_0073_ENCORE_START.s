#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    TryEncore _010
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} received an encore!
    PrintMessage 372, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait
    WaitButtonABTime 30
    TryEatBerry BATTLER_CATEGORY_DEFENDER, HELD_ITEM_USE_REMOVE_CONDITION, _010
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_010:
    End 
