.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} got free of {1}’s {2}!
    PrintMessage 459, TAG_NICKNAME_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
