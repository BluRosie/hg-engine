.include "asm/include/battle_commands.inc"

.data

// Called by Heal Pulse.
_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {0}’s HP is full!
    PrintMessage 187, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End
