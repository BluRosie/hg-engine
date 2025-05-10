.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {STRVAR_1 1, 0, 0} can’t be hit by attacks from its ally Pokémon!
    PrintMessage 1556, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    // now handle high jump kick
    Call BATTLE_SUBSCRIPT_CRASH_ON_MISS
    // now handle several moves needing to be canceled--rollout, charge moves
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End
