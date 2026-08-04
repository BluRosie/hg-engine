#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_DEFENDER, BATTLE_ANIMATION_STAT_BOOST
    Wait
    // {0}’s rage is building!
    PrintMessage 363, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
