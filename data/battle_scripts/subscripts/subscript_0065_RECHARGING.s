.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} must recharge!
    PrintMessage 360, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End 
