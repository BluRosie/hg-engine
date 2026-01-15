.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP
    BatchUpdateHp
    Wait
    BatchFollowupMessage 0
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    BatchFollowupMessage 1
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    BatchFollowupMessage 2
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    BatchFollowupMessage 3
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_1
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_1
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_2
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_2
    End