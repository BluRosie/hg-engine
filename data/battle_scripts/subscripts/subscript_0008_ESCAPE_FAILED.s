.include "asm/include/battle_commands.inc"

.data

_Start:
    // Can’t escape!
    PrintMessage 42, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
