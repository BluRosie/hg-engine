.include "asm/include/battle_commands.inc"

.data

// Laser Focus

_000:
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait
    SetMoveConditionFlag MOVE_LASER_FOCUS, BATTLER_CATEGORY_ATTACKER
    // {STRVAR_1 1, 0, 0} concentrated intensely!
    PrintMessage 1616, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End
