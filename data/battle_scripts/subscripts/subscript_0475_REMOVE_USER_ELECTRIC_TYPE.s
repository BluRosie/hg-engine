.include "asm/include/battle_commands.inc"

.data


// Double Shock
_Start:
    // {0} used up all its electricity!
    PrintMessage 1604, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    HandleDoubleShock
    End