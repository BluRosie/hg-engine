.include "asm/include/battle_commands.inc"

.data

// Called by Metronome.
_Start:
    SetPsychicTerrainMoveUsedFlag 
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    Metronome 
    GotoIfCurrentMoveIsValidForParentalBond _HandleParentalBond

_WaggleMessage:
    // Waggling a finger let it use {1}!
    PrintMessage 1483, TAG_MOVE_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoToMoveScript FALSE
    End

_HandleParentalBond:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _WaggleMessage
