.include "asm/include/battle_commands.inc"

.data

_000:
    SetPsychicTerrainMoveUsedFlag 
    TryCopycat _011
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    GotoIfCurrentMoveIsValidForParentalBond _016

_009:
    GoToMoveScript FALSE
    End

_011:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_016:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _009
