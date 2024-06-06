.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is radiating a dark aura!
    PrintMessage 1288, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
