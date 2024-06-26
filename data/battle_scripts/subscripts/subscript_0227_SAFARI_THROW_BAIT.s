.include "asm/include/battle_commands.inc"

.data

_000:
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
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _030
    // {0} is eating!
    PrintGlobalMessage 852, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _034

_030:
    // {0} is busy eating!
    PrintGlobalMessage 853, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_034:
    Wait 
    WaitButtonABTime 30
    End 
