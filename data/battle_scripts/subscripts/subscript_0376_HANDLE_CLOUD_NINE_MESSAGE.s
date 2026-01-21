.include "asm/include/battle_commands.inc"

.data

_Start:
    // The effects of the weather disappeared.
    PrintMessage 1470, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End
