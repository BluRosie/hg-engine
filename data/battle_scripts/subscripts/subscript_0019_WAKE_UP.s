.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_SOUNDPROOF, _WakeUpMessage
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_UPROAR, _WakeUpMessage
    // The uproar woke up the {0}!
    PrintMessage 305, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_WakeUpMessage:
    // {0} woke up!
    PrintMessage 302, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP

_Cleanup:
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_SLEEP
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_NIGHTMARE
    End 
