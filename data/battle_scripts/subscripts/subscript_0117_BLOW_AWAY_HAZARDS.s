.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} blew away {1}!
    PrintMessage 466, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
