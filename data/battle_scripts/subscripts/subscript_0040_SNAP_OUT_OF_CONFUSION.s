.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} snapped out of confusion!
    PrintMessage 153, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
