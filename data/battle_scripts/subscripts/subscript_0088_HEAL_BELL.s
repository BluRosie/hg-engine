.include "asm/include/battle_commands.inc"

.data

_Start:
    TryPartyStatusRefresh
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_AROMATHERAPY, _AromaMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_SPARKLY_SWIRL, _AromaMessage
    // A bell chimed!
    PrintMessage 821, TAG_NONE
    GoTo _018

_AromaMessage:
    // A soothing aroma wafted through the area!
    PrintMessage 592, TAG_NONE

_018:
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_AROMATHERAPY, _059
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_SPARKLY_SWIRL, _059
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 1, _045
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_045:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 2, _059
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_059:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_CALC_TEMP, 4, _067
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE

_067:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_CALC_TEMP, 8, _End
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLE_ANIMATION_NONE

_End:
    End 
