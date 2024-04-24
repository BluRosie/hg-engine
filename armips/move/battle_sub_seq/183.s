.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_183", 0

// Drizzle

a001_183:
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_RAIN_ANY, SkipEffect
    setstatus2effect BATTLER_PLAYER, 0x13
    waitmessage
    gotosubscript 362
    printpreparedmessage
    waitmessage
    wait 0x1E
SkipEffect:
    endscript

.close
