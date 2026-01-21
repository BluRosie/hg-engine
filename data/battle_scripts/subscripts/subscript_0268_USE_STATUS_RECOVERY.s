.include "asm/include/battle_commands.inc"

.data

_Start:
    WaitButtonABTime 15
    PlaySound BATTLER_CATEGORY_ATTACKER, 1516
    // {0} {1} used one {2}!
    PrintMessage 858, TAG_TRCLASS_TRNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UseBagItem BATTLER_CATEGORY_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _CureConfusion
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 1, _CureParalysisMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 2, _CureFrozenMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 3, _CureBurnMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 4, _CurePoisonMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 5, _CureSleepMessage
    // {0} normalized its status using its {1}!
    PrintMessage 896, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _CurePrimaryStatus

_CureConfusion:
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_CONFUSION
    // {0}’s {1} snapped it out of confusion!
    PrintMessage 890, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _Cleanup

_CureParalysisMessage:
    // {0}’s {1} cured its paralysis!
    PrintMessage 875, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _CurePrimaryStatus

_CureFrozenMessage:
    // {0}’s {1} defrosted it!
    PrintMessage 884, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _CurePrimaryStatus

_CureBurnMessage:
    // {0}’s {1} healed its burn!
    PrintMessage 881, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _CurePrimaryStatus

_CurePoisonMessage:
    // {0}’s {1} cured its poison!
    PrintMessage 878, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _CurePrimaryStatus

_CureSleepMessage:
    // {0}’s {1} woke it up!
    PrintMessage 887, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    GoTo _CurePrimaryStatus

_CurePrimaryStatus:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NONE

_Cleanup:
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    End 
