.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

PARENTAL_BOND_SUBSCRIPT equ (353)

.create "build/move/battle_eff_seq/0_241", 0

a030_241:
    setpsychicterrainmoveusedflag
    trymefirst _0024
    printattackmessage
    waitmessage
    playanimation BATTLER_ATTACKER
    waitmessage
    ifcurrentmoveisvalidparentalbondmove DoParentalBond
Continue:
    jumptoeffectscript 0
_0024:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

DoParentalBond:
    gotosubscript PARENTAL_BOND_SUBSCRIPT
    goto Continue

.close
