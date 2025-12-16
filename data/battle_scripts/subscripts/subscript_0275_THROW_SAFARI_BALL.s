.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_PAL_PARK, _ThrowParkBall
    CheckSafariGameDone _NoRoomInPC
    // {0} used one {1}!
    PrintMessage 857, TAG_TRNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_SAFARI_BALL
    GoTo _TrySafariCapture

_ThrowParkBall:
    // {0}, come back!
    PrintGlobalMessage 1225, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    Wait 
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_PARK_BALL

_TrySafariCapture:
    StartCatchMonTask CAPTURE_SAFARI
    WaitCatchMonTask 
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_CAPTURED_MON, _End
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SAFARI_BALL_CNT, 0, _End
    PlaySound BATTLER_CATEGORY_ATTACKER, 1521
    // Announcer: You’re out of Safari Balls! Game over!
    PrintMessage 850, TAG_NONE
    GoTo _EndBattle

_NoRoomInPC:
    // There is no room left in the PC!
    PrintMessage 874, TAG_NONE

_EndBattle:
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_PLAYER_FLED

_End:
    End 
