.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait 
    WaitButtonABTime 30
    // {0} is protected by Safeguard!
    PrintMessage 200, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End
