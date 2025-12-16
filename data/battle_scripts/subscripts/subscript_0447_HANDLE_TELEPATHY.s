.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {STRVAR_1 1, 0, 0} can’t be hit by attacks from its ally Pokémon!
    PrintMessage 1556, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    // Now handle crash damage.
    Call BATTLE_SUBSCRIPT_CRASH_ON_MISS
    /// Now handle moves needing to be cancelled (Rollout, Thrash, etc.)
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End
