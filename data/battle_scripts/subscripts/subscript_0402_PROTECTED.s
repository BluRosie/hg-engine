.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {0} protected itself! or {1} protected {0}!
    PrintBufferedMessage
    // handle protect contact moves first
    CheckProtectContactMoves
    Wait 
    WaitButtonABTime 30
    // now handle high jump kick
    Call BATTLE_SUBSCRIPT_CRASH_ON_MISS
    // now handle several moves needing to be canceled--rollout, charge moves
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End
