.include "asm/include/battle_commands.inc"

.data

_Start:
    // Gravity returned to normal!
    PrintMessage 1004, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
