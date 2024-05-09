.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_136", 0

// Rain Dance

a030_136:
    printattackmessage
    waitmessage
    wait 0x1E
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_RAIN_ANY, NoAnimation
    playanimation BATTLER_ATTACKER
    waitmessage
    gotosubscript 362
NoAnimation:
    endscript

.close
