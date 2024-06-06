.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} threw Mud at the {1}!
    PrintGlobalMessage 854, TAG_TRNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_SAFARI_ROCK
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_ANGRY
    Wait 
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _026
    // {0} is angry!
    PrintGlobalMessage 855, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _030

_026:
    // {0} is beside itself with anger!
    PrintGlobalMessage 856, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_030:
    Wait 
    WaitButtonABTime 30
    End 
