.include "asm/include/battle_commands.inc"

.data

_Start:
    WaitButtonABTime 15
    // {0} ignored orders while asleep!
    PrintMessage 825, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
