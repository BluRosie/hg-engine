.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Desolate Land

.create "build/move/battle_sub_seq/1_365", 0

a001_365:
    // Sun animation
    setstatus2effect BATTLER_PLAYER, 0x16
    waitmessage
    printmessage 1441, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The sunlight turned extremely harsh!
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_WEATHER
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_EXTREMELY_HARSH_SUNLIGHT
    endscript

.close
