.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} threw some Bait at the {1}!
    PrintGlobalMessage 851, TAG_TRNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_SAFARI_BAIT
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_HAPPY
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_EATING
    Wait
    // This value will be 0 if throwing bait did not decrease the capture chance.
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _GreatOutcomeMessage
    // {0} is eating!
    PrintGlobalMessage 852, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _Cleanup

_GreatOutcomeMessage:
    // {0} is busy eating!
    PrintGlobalMessage 853, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_Cleanup:
    Wait 
    WaitButtonABTime 30
    End 
