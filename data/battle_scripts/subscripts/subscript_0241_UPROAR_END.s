.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} calmed down.
    PrintMessage 314, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
