.include "asm/include/battle_commands.inc"

.data

// Burn Up.
_Start:
    // {0} burned itself out!
    PrintMessage 1601, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    HandleBurnUp
    End
