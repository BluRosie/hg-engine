#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data


_000:
    TryIncinerate _stickyHold
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End 

_stickyHold:
    AbilityPopup BATTLER_CATEGORY_DEFENDER
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End