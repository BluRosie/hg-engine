.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_ION_DELUGE, _MoveFailed
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait

_TrySettingIonDeluge:
    Call BATTLE_SUBSCRIPT_ION_DELUGE
    End

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
