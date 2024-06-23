.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s Harvest restored its {1}!
    PrintMessage 1333, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
