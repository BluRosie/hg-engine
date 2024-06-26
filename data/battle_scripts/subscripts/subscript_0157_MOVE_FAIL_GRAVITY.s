.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} can’t use {1} because of gravity!
    PrintMessage 1001, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
