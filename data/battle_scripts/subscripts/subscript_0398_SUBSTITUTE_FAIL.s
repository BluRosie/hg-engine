.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // It was too weak to make a substitute!
    PrintMessage 819, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End
