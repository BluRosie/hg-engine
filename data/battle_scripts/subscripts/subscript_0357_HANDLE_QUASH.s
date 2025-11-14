.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    ChangeExecutionOrderPriority BATTLER_CATEGORY_DEFENDER, EXECUTION_ORDER_QUASH, _MoveFailed
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    // {0}’s move was postponed!
    PrintMessage 1433, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
