.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Primordial Sea

.create "build/move/battle_sub_seq/1_366", 0

a001_366:
    // Rain animation
    setstatus2effect BATTLER_PLAYER, 0x13
    waitmessage
    printmessage 1445, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // A heavy rain began to fall!
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_WEATHER
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_HEAVY_RAIN
    endscript

.close
