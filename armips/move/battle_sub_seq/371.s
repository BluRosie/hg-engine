.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_371", 0

// Cancel fire moves in heavy rain

a001_371:
    printattackmessage
    waitmessage
    wait 0xF
    printmessage 1447, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The Fire-type attack fizzled out in the heavy rain!
    waitmessage
    wait 0x1E
    endscript
.close