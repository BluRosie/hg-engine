.include "asm/include/battle_commands.inc"

.data

Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_STATUS_ION_DELUGE, MoveFailed
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait

TrySettingIonDeluge:
    Call BATTLE_SUBSCRIPT_ION_DELUGE
    End

MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
