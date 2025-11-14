.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {0} protected itself! or {1} protected {0}!
    PrintBufferedMessage
    // Handle Protect contact moves first.
    CheckProtectContactMoves
    Wait 
    WaitButtonABTime 30
    // Now handle crash damage.
    Call BATTLE_SUBSCRIPT_CRASH_ON_MISS
    // Now handle moves needing to be cancelled (Rollout, Thrash, etc.)
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End
