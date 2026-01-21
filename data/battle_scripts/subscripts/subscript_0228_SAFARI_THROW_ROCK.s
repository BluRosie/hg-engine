.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} threw Mud at the {1}!
    PrintGlobalMessage 854, TAG_TRNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_SAFARI_ROCK
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_ANGRY
    Wait 
    // This value will be 0 if throwing bait did not decrease the capture chance.
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _GreatOutcomeMessage
    // {0} is angry!
    PrintGlobalMessage 855, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _Cleanup

_GreatOutcomeMessage:
    // {0} is beside itself with anger!
    PrintGlobalMessage 856, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_Cleanup:
    Wait 
    WaitButtonABTime 30
    End 
