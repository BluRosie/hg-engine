.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    WaitButtonABTime 15
    // But nothing happened!
    PrintMessage 795, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
