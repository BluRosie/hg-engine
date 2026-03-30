.include "asm/include/battle_commands.inc"

.data

_000:
    // A critical hit on {0}!
    PrintMessage 1676, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
