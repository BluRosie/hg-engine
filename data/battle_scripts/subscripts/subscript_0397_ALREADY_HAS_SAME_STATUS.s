.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_PARALYSIS, Paralyzed
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BURN, Burned
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_SLEEP, Asleep
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_POISON, Poisoned
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BAD_POISON, Poisoned
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_CONFUSION, Confused
    
Paralyzed:
    // {0} is already paralyzed!
    PrintMessage 133, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo Continue
Burned:
    // {0} is already burned!
    PrintMessage 98, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo Continue
Asleep:
    // {0} is already asleep!
    PrintMessage 57, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo Continue
Poisoned:
    // {0} is already poisoned!
    PrintMessage 76, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo Continue
Confused:
    // {0} is already confused!
    PrintMessage 159, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
Continue:
    Wait
    WaitButtonABTime 30
    End
