.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s {1} popped!
    PrintMessage 1367, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    RemoveItem BATTLER_CATEGORY_DEFENDER
    End 
