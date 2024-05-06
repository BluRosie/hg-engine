.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// sunlight fades

.create "build/move/battle_sub_seq/1_236", 0

a001_236:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY
    printmessage 809, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The harsh sunlight faded.
    waitmessage
    wait 0x1E
    endscript

.close
