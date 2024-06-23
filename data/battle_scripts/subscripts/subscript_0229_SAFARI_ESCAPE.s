.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is watching carefully!
    PrintGlobalMessage 849, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
