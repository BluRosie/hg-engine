.include "asm/include/battle_commands.inc"

.data

_000:
    // A critical hit!
    PrintMessage 774, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
