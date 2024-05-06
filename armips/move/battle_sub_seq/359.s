.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// snow stopped message

.create "build/move/battle_sub_seq/1_359", 0

a001_359:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, WEATHER_SNOW
    printmessage 1440, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The snow stopped.
    waitmessage
    wait 0x1E
    endscript

.close
