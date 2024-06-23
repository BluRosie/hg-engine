.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} can’t escape!
    PrintMessage 43, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
