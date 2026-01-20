.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP
    BatchUpdateHealthBar
    Wait
    WaitButtonABTime 126
    BatchUpdateHealthBarValue
    Wait
    GoTo _SuperEffectiveMessageAttackerSide

_SuperEffectiveMessageAttackerSide:
    BatchEffectivenessMessage 1, MOVE_STATUS_SUPER_EFFECTIVE, _SuperEffectiveMessageOpponentSide
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _SuperEffectiveMessageOpponentSide

_SuperEffectiveMessageOpponentSide:
    BatchEffectivenessMessage 0, MOVE_STATUS_SUPER_EFFECTIVE, _NotVeryEffectiveMessageAttackerSide
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _NotVeryEffectiveMessageAttackerSide

_NotVeryEffectiveMessageAttackerSide:
    BatchEffectivenessMessage 1, MOVE_STATUS_NOT_VERY_EFFECTIVE, _NotVeryEffectiveMessageOpponentSide
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _NotVeryEffectiveMessageOpponentSide

_NotVeryEffectiveMessageOpponentSide:
    BatchEffectivenessMessage 0, MOVE_STATUS_NOT_VERY_EFFECTIVE, _FollowupMessageAlly
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _FollowupMessageAlly

_FollowupMessageAlly:
    BatchFollowupMessage BATTLER_CATEGORY_ATTACKER_PARTNER
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ATTACKER_PARTNER
    GoTo _FollowupMessageOppLeft

_FollowupMessageOppLeft:
    BatchFollowupMessage BATTLER_CATEGORY_ATTACKER_OPP_LEFT
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ATTACKER_OPP_LEFT
    GoTo _FollowupMessageOppRight

_FollowupMessageOppRight:
    BatchFollowupMessage BATTLER_CATEGORY_ATTACKER_OPP_RIGHT
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ATTACKER_OPP_RIGHT
    GoTo _End

_End:
    End
