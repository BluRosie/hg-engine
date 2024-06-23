.include "asm/include/battle_commands.inc"

.data

_000:
    SetPsychicTerrainMoveUsedFlag 
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    GetTerrainMove 
    // {0} turned into {1}!
    PrintMessage 490, TAG_MOVE_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GotoIfCurrentMoveIsValidForParentalBond _018

_016:
    GoToMoveScript FALSE

_018:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _016
