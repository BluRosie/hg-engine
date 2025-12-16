.include "asm/include/battle_commands.inc"

.data

// Called by Assist.
_Start:
    SetPsychicTerrainMoveUsedFlag
    TryAssist _MoveFailed
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    GotoIfCurrentMoveIsValidForParentalBond _HandleParentalBond

_GoToMoveScript:
    GoToMoveScript FALSE
    End

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_HandleParentalBond:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _GoToMoveScript
