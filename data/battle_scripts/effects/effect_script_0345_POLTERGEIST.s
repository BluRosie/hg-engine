.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HELD_ITEM, ITEM_NONE, _MoveFailed
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {1} is about to be attacked by its {2}!
    PrintMessage 1542, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    CalcCrit 
    CalcDamage 
    End 

_MoveFailed: 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
