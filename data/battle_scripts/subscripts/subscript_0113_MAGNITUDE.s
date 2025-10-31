.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF, _CheckIfMoveHit
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // Magnitude {0}!
    PrintMessage 448, TAG_NUMBER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_CheckIfMoveHit:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_DID_NOT_HIT, _End
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 

_End:
    End 
