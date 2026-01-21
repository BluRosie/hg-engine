.include "asm/include/battle_commands.inc"

.data

// Called by Heal Bell, Aromatherapy and Sparkly Swirl.
_Start:
    // Returns a set of bit flags to BSCRIPT_VAR_CALC_TEMP. 
    // The second and last (0101) are for the attacker, whereas the first and third (1010) are for their potential ally.
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
    // Generation VIII: This bit should never be set as Heal Bell can no longer be blocked by the attacker.
    // 0001: The attacker blocked their own Heal Bell.
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 1, _CheckIfBlocked_Partner
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_CheckIfBlocked_Partner:
    // 0010: The attacker's ally blocked their Heal Bell.
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 2, _RestoreStatus
    // {0}’s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_RestoreStatus:
    // Generation VIII: This bit should never be set as Heal Bell can no longer be blocked by the attacker.
    // 0100: The attacker should not restore their status.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_CALC_TEMP, 4, _RestoreStatus_Partner
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE

_RestoreStatus_Partner:
    // 1000: The attacker's ally should not restore their status, especially if they don't exist.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_CALC_TEMP, 8, _End
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLE_ANIMATION_NONE

_End:
    End 
