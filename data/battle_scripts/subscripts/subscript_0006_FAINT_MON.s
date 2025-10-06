.include "asm/include/battle_commands.inc"

.data

_Start:
    // Increment game record for number of Pokemon we have defeated.
    IncrementGameStat BATTLER_CATEGORY_FAINTED_MON, BATTLER_TYPE_SOLO_ENEMY, 42
    // Increment game record for number of our Pokemon who have fainted.
    IncrementGameStat BATTLER_CATEGORY_FAINTED_MON, BATTLER_TYPE_SOLO_PLAYER, 97
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
