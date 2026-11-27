#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    TrySetSyrupBomb _end
    // {0} got covered in sticky candy syrup!
    PrintMessage 1814, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait
    WaitButtonABTime 30

_end:
    End
