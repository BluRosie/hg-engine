.include "asm/include/battle_commands.inc"

.data

_000:
    // {1}’s {0} made it shudder!
    PrintMessage 1106, TAG_ABILITY_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
