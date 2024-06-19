.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s {1} makes the opposing team too nervous to eat Berries!
    PrintMessage 1282, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
