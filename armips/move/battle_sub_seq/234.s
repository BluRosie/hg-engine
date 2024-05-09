.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// temporary rain ends

.create "build/move/battle_sub_seq/1_234", 0

a001_234:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, WEATHER_RAIN
    printmessage 803, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The rain stopped.
    waitmessage
    wait 0x1E
    endscript

.close
