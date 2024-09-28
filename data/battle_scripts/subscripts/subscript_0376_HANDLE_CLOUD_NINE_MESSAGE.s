.include "asm/include/battle_commands.inc"

.data

_000:
    // The effects of the weather disappeared.
    PrintMessage 1470, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End
