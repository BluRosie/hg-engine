.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_372", 0

// Weaken moves in Strong Winds

a001_372:
    printattackmessage
    waitmessage
    wait 0xF
    printmessage 1451, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The mysterious strong winds\nweakened the attack!
    waitmessage
    wait 0x1E
    endscript
.close