.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_273", 0

// Overworld Sandstorm

a001_273:
    setstatus2effect BATTLER_PLAYER, 0x15
    waitmessage
    printmessage 804, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The sandstorm is raging!
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_SANDSTORM_PERMANENT
    endscript

.close
