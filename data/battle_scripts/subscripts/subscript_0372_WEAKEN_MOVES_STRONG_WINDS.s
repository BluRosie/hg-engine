.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    // The mysterious strong winds weakened the attack!
    PrintMessage 1451, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
