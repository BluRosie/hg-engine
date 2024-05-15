.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// sandstorm end script

.create "build/move/battle_sub_seq/1_235", 0

a001_235:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, WEATHER_SANDSTORM
    printmessage 806, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The sandstorm subsided.
    waitmessage
    wait 0x1E
    endscript

.close
