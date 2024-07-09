.include "asm/include/battle_commands.inc"

.data

_000:
    WaitButtonABTime 15
    PlaySound BATTLER_CATEGORY_ATTACKER, 1516
    // {0} {1} used one {2}!
    PrintMessage 858, TAG_TRCLASS_TRNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UseBagItem BATTLER_CATEGORY_ATTACKER
    // Your team became shrouded in mist!
    PrintMessage 271, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
