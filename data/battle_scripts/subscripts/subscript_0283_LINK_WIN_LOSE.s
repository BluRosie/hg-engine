.include "asm/include/battle_commands.inc"

.data

_Start:
    SetLinkBattleResult 
    PrintBattleResultMessage 
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait
    End
