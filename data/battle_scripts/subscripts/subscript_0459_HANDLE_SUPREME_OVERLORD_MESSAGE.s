.include "asm/include/battle_commands.inc"

.data

_000:
    // {STRVAR_1 1, 0, 0} gained strength\nfrom the fallen!
    PrintMessage 1594, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End
