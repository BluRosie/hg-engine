.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is no longer disabled!
    PrintMessage 369, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
