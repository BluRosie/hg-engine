.include "asm/include/battle_commands.inc"

.data

_000:
    SetPsychicTerrainMoveUsedFlag 
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_SLEEP, _016
    Call BATTLE_SUBSCRIPT_SLEEPING
    TrySleepTalk _016
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    GotoIfCurrentMoveIsValidForParentalBond _021

_014:
    GoToMoveScript FALSE
    End

_016:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_021:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _014
