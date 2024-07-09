.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} won’t obey!
    PrintMessage 829, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    // It hurt itself in its confusion!
    PrintMessage 797, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
