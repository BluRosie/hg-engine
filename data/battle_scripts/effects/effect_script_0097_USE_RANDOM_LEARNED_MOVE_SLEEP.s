.include "asm/include/battle_commands.inc"

.data

// Called by Sleep Talk.
_Start:
    SetPsychicTerrainMoveUsedFlag 
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_SLEEP, _MoveFailed
    Call BATTLE_SUBSCRIPT_SLEEPING
    TrySleepTalk _MoveFailed
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    GotoIfCurrentMoveIsValidForParentalBond _HandleParentalBond

_SecondaryMove:
    GoToMoveScript FALSE
    End

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_HandleParentalBond:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _SecondaryMove
