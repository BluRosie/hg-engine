.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} was freed from {1}!
    PrintMessage 265, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    End 
