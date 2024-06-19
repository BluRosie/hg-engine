.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is loafing around!
    PrintMessage 832, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End 
