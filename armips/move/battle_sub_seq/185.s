.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_185", 0

// Drought

a001_185:
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, SkipEffect
    setstatus2effect BATTLER_PLAYER, 0x16
    waitmessage
    gotosubscript 361
    printpreparedmessage
    waitmessage
    wait 0x1E
SkipEffect:
    endscript

.close
