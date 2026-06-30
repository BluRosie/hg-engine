.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s type changed to {2}!
    PrintMessage 641, TAG_NICKNAME_ABILITY_TYPE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
