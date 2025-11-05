.include "asm/include/battle_commands.inc"

.data

_Start:
    PlaySound BATTLER_CATEGORY_ATTACKER, 1791
    // The wild {0} fled!
    PrintGlobalMessage 784, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_PLAYER_FLED
    // If the fleeing Pokemon was an enemy (which it should always be), increment the relevant game record.
    IncrementGameStat BATTLER_CATEGORY_ATTACKER, BATTLER_TYPE_SOLO_ENEMY, GAME_STAT_WILD_MON_FLED
    End 
