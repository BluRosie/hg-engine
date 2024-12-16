.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // But it failed!
    PrintMessage 796, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End
