.include "asm/include/battle_commands.inc"

.data

_Start:
    // Your team’s Tailwind petered out!
    PrintMessage 1232, TAG_NONE_SIDE, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
