.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s {1} made it the {2} type!
    PrintMessage 1285, TAG_NICKNAME_ABILITY_TYPE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
