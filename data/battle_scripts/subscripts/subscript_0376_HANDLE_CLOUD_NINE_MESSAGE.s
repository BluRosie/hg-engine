#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    // The effects of the weather disappeared.
    PrintMessage 1470, TAG_NONE
    Wait 
    WaitButtonABTime 30
    ResetParadoxAbility ABILITY_PROTOSYNTHESIS
    // Booster Energy
    ActivateParadoxAbility ABILITY_PROTOSYNTHESIS
    End
