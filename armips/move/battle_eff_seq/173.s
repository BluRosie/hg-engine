.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

PARENTAL_BOND_SUBSCRIPT equ (353)

.create "build/move/battle_eff_seq/0_173", 0

a030_173:
    setpsychicterrainmoveusedflag
    printattackmessage
    waitmessage
    playanimation BATTLER_ATTACKER
    waitmessage
    naturepower
    printmessage 0x1EA, 0x16, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    ifcurrentmoveisvalidparentalbondmove DoParentalBond
Continue:
    jumptoeffectscript 0

DoParentalBond:
    gotosubscript PARENTAL_BOND_SUBSCRIPT
    goto Continue

.close
