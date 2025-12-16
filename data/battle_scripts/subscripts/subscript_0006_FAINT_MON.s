.include "asm/include/battle_commands.inc"

.data

_Start:
    // If the opponent's Pokemon fainted, increment the relevant game record.
    IncrementGameStat BATTLER_CATEGORY_FAINTED_MON, BATTLER_TYPE_SOLO_ENEMY, GAME_STAT_OPPONENT_MON_FAINTED
    // If it was the player's Pokemon, increment this game record instead.
    IncrementGameStat BATTLER_CATEGORY_FAINTED_MON, BATTLER_TYPE_SOLO_PLAYER, GAME_STAT_PLAYER_MON_FAINTED
    PlayFaintAnimation 
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_FAINTED_MON
    // {0} fainted!
    PrintMessage 30, TAG_NICKNAME, BATTLER_CATEGORY_FAINTED_MON
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_TRY_CLEAR_PRIMAL_WEATHERS_FAINTING
    // This line seemingly does nothing.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_NO_EXP_GAINED, _End

_End:
    End 
