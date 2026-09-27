#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_FLY, _cancel
    Goto _message

_cancel:
    UnlockMoveChoice BATTLER_CATEGORY_MSG_BATTLER_TEMP
    ToggleVanish BATTLER_CATEGORY_MSG_BATTLER_TEMP, FALSE
    Wait 

_message:
    // {0} fell straight down!
    PrintMessage 1784, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End
