.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s {1} was disabled by Cursed Body!
    PrintMessage 1339, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
