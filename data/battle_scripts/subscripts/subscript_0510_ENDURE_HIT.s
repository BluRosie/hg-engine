.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} endured the hit!
    PrintMessage 445, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End
