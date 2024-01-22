.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_083", 0

a030_083:
    setpsychicterrainmoveusedflag
    printattackmessage
    waitmessage
    wait 0x1E
    playanimation BATTLER_ATTACKER
    waitmessage
    metronome
    jumptoeffectscript 0

.close
