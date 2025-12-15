.include "asm/include/battle_commands.inc"

.data

_Start:
    // An Aipom hands {0} a {1}!
    PrintGlobalMessage 1611, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
