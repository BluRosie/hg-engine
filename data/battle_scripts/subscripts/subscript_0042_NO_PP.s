.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // But there was no PP left for the move!
    PrintMessage 824, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
