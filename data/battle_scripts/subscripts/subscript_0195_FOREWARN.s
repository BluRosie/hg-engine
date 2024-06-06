.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s {1} alerted it to {2}!
    PrintMessage 1109, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
