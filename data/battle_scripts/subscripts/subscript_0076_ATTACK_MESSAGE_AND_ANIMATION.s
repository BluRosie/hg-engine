.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    End 
