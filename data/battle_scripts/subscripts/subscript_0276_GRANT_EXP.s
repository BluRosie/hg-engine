.include "asm/include/battle_commands.inc"

.data

_000:
    CalcExpGain _005
    StartGetExpTask 
    WaitGetExpTask 
    Dummy2A 4294967292

_005:
    End 
