.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_180", 0

a030_180:
    setpsychicterrainmoveusedflag
    tryassist _0024
    printattackmessage
    waitmessage
    playanimation BATTLER_ATTACKER
    waitmessage
    jumptoeffectscript 0
_0024:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
