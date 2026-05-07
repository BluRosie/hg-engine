.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP
    BatchUpdateHealthBar
    Wait
    WaitButtonABTime 90
    BatchUpdateHealthBarValue
    Wait
    End
