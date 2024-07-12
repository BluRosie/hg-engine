.include "asm/include/battle_commands.inc"

.data

_000:
    WaitButtonABTime 15
    // {0} frisked {1} and found its {2}!
    PrintMessage 1423, TAG_NICKNAME_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
