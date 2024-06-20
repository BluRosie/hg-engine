.include "asm/include/battle_commands.inc"

.data

_000:
    PlaySound BATTLER_CATEGORY_ATTACKER, 1791
    // Got away safely!
    PrintMessage 781, TAG_NONE
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_TRY_FLEE|BATTLE_RESULT_WIN
    SetLinkBattleResult 
    End 
