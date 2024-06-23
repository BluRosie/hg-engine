.include "asm/include/battle_commands.inc"

.data

_000:
    WaitButtonABTime 15
    // {0} ignored orders!
    PrintMessage 826, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
