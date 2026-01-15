.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP
    BatchUpdateHp
    Wait
    GoTo _PlayerSlot1

_PlayerSlot1:
    BatchFollowupMessage 0
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_1
    GoTo _EnemySlot1

_EnemySlot1:
    BatchFollowupMessage 1
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_1
    GoTo _PlayerSlot2

_PlayerSlot2:
    BatchFollowupMessage 2
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_2
    GoTo _EnemySlot2

_EnemySlot2:
    BatchFollowupMessage 3
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_2
    GoTo _End

_End:
    End
