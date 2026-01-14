.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP
    BatchUpdateHp
    Wait
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_1
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_1
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_2
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_2
    End