.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    End 
