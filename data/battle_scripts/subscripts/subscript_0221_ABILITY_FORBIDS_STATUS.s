.include "asm/include/battle_commands.inc"

.data

// Called by Limber, Oblivious, Insomnia, Immunity, Own Tempo, Magma Armor, Water Veil and Vital Spirit.
_Start:
    // {0} cured its {2} status with its {1}!
    PrintMessage 740, TAG_NICKNAME_ABILITY_STATUS, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _CureNonVolatileStatus
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 5, _CureConfusion
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 6, _CureAttraction
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_NONE
    GoTo _End

_CureNonVolatileStatus:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_NONE
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_NIGHTMARE
    GoTo _End

_CureConfusion:
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_CONFUSION
    GoTo _End

_CureAttraction:
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_ATTRACT

_End:
    End 
