.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_PARALYSIS, _ParalyzedMessage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BURN, _BurnedMessage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_SLEEP, _AsleepMessage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_POISON, _PoisonedMessage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BAD_POISON, _PoisonedMessage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_CONFUSION, _ConfusedMessage
    End
    
_ParalyzedMessage:
    // {0} is already paralyzed!
    PrintMessage 133, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _End

_BurnedMessage:
    // {0} is already burned!
    PrintMessage 98, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _End

_AsleepMessage:
    // {0} is already asleep!
    PrintMessage 57, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _End

_PoisonedMessage:
    // {0} is already poisoned!
    PrintMessage 76, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _End

_ConfusedMessage:
    // {0} is already confused!
    PrintMessage 159, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP

_End:
    Wait
    WaitButtonABTime 30
    End
