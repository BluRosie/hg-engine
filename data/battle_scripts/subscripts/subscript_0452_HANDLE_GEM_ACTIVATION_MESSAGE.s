.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait
    //The {STRVAR_1 1, 0, 0} strengthened\n{STRVAR_1 5, 1, 0}’s power!
    PrintBufferedMessage
    Wait 
    WaitButtonABTime 30
    RemoveItem BATTLER_CATEGORY_ATTACKER
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End
