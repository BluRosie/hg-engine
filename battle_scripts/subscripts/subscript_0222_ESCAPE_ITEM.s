.include "asm/include/battle_commands.inc"

.data

_000:
    // Used the {0}!
    PrintMessage 1206, TAG_ITEM, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_ITEM_ESCAPE
    Wait 
    PlaySound BATTLER_CATEGORY_ATTACKER, 1791
    // Got away safely!
    PrintMessage 781, TAG_NONE
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_PLAYER_FLED
    End 
