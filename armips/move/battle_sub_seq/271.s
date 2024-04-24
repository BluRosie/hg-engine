.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_271", 0

// Overworld Rain

a001_271:
    setstatus2effect BATTLER_PLAYER, 0x13
    waitmessage
    printmessage 0x31F, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // It’s raining!
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_RAIN_PERMANENT
    endscript

.close
