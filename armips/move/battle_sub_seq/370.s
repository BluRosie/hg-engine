.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_370", 0

// Cancel water moves in harsh sunlight

a001_370:
    printattackmessage
    waitmessage
    wait 0xF
    printmessage 1443, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The Water-type attack evaporated\nin the harsh sunlight!
    waitmessage
    wait 0x1E
    endscript
.close