.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP
    BatchUpdateHp
    Wait
    WaitButtonABTime 126
    BatchUpdateHpValue
    Wait
    GoTo _SuperEffectiveMessagePlayerSide

_SuperEffectiveMessagePlayerSide:
    BatchEffectivenessMessage 0, 1, _SuperEffectiveMessageOpponentSide
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _SuperEffectiveMessageOpponentSide

_SuperEffectiveMessageOpponentSide:
    BatchEffectivenessMessage 1, 1, _NotVeryEffectiveMessagePlayerSide
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _NotVeryEffectiveMessagePlayerSide

_NotVeryEffectiveMessagePlayerSide:
    BatchEffectivenessMessage 0, 0, _NotVeryEffectiveMessageOpponentSide
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _NotVeryEffectiveMessageOpponentSide

_NotVeryEffectiveMessageOpponentSide:
    BatchEffectivenessMessage 1, 0, _FollowupMessageClient0
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    GoTo _FollowupMessageClient0

_FollowupMessageClient0:
    BatchFollowupMessage 0
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_1
    GoTo _FollowupMessageClient1

_FollowupMessageClient1:
    BatchFollowupMessage 1
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_1
    GoTo _FollowupMessageClient2

_FollowupMessageClient2:
    BatchFollowupMessage 2
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_2
    GoTo _FollowupMessageClient3

_FollowupMessageClient3:
    BatchFollowupMessage 3
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_2
    GoTo _End

_End:
    End
