.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s rage is building!
    PrintMessage 363, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
