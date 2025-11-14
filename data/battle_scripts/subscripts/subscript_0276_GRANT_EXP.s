.include "asm/include/battle_commands.inc"

.data

_Start:
    CalcExpGain _End
    StartGetExpTask 
    WaitGetExpTask 
    Dummy2A 4294967292 //0xFFFFFFFC

_End:
    End 
