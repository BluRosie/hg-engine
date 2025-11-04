.include "asm/include/battle_commands.inc"

.data

// Called by Heal Bell, Aromatherapy and Sparkly Swirl.
_Start:
    TryPartyStatusRefresh
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_AROMATHERAPY, _AromaMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_SPARKLY_SWIRL, _AromaMessage
    // A bell chimed!
    PrintMessage 821, TAG_NONE
    GoTo _CheckIfBlocked

_AromaMessage:
    // A soothing aroma wafted through the area!
    PrintMessage 592, TAG_NONE

_CheckIfBlocked:
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_AROMATHERAPY, _RestoreStatus
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_SPARKLY_SWIRL, _RestoreStatus
    // Generation VIII: This should always return false with Soundproof as Heal Bell cannot be blocked by the attacker.
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 1, _CheckIfBlocked_Partner
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_CheckIfBlocked_Partner:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 2, _RestoreStatus
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_RestoreStatus:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_CALC_TEMP, 4, _RestoreStatus_Partner
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE

_RestoreStatus_Partner:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_CALC_TEMP, 8, _End
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLE_ANIMATION_NONE

_End:
    End 
