.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} can’t use the sealed {1}!
    PrintMessage 616, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End 
