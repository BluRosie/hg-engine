.include "asm/include/battle_commands.inc"

.data

_Start:
    // The effects of {0}'s {1} wore off!
    PrintMessage 1614 TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    End