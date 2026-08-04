#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    Call BATTLE_SUBSCRIPT_RECOVER_HP
    // {0}’s stockpiled effect wore off!
    PrintMessage 994, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
