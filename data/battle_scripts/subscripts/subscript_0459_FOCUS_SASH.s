.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_DEFENDER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} hung on using its {1}!
    PrintMessage 912, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_DEFENDER, HOLD_EFFECT_MAYBE_ENDURE, _end
    RemoveItem BATTLER_CATEGORY_DEFENDER

_end:
    End
