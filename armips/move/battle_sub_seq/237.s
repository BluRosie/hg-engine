.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// hail stopped message

.create "build/move/battle_sub_seq/1_237", 0

a001_237:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, WEATHER_HAIL
    printmessage 812, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The hail stopped.
    waitmessage
    wait 0x1E
    endscript

.close
