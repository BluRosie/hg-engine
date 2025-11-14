.include "asm/include/battle_commands.inc"

.data

_Start:
    SetPsychicTerrainMoveUsedFlag 
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    GetTerrainMove 
    // Nature Power turned into {1}!
    PrintMessage 490, TAG_MOVE_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GotoIfCurrentMoveIsValidForParentalBond _HandleParentalBond

_GoToMoveScript:
    GoToMoveScript FALSE
    End

_HandleParentalBond:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _GoToMoveScript
