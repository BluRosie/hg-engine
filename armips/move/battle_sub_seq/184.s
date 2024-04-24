.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_184", 0

// Sand Stream

a001_184:
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SANDSTORM_ANY, SkipEffect
    setstatus2effect BATTLER_PLAYER, 0x15
    waitmessage
    gotosubscript 363
    printpreparedmessage
    waitmessage
    wait 0x1E
SkipEffect:
    endscript

.close
