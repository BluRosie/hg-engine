.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_272", 0

// Overworld Hail

a001_272:
    setstatus2effect BATTLER_PLAYER, 0x14
    waitmessage
    printmessage 0x32A, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_HAIL_PERMANENT
    endscript

.close
