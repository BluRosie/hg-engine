.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} finally got its act together!
    PrintMessage 1115, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
