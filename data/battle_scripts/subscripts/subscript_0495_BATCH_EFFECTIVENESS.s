.include "asm/include/battle_commands.inc"

.data

_Start:
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
    BatchEffectivenessMessage 0, MOVE_STATUS_NOT_VERY_EFFECTIVE, _End
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30

_End:
    End
