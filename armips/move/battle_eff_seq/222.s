.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_222", 0

a030_222:
    trynaturalgift _001C
    iffirsthitofparentalbond SkipRemoveItem
    // swap execution order otherwise it doesn't work for some reason
    removeitem BATTLER_ATTACKER
SkipRemoveItem:
    critcalc
    damagecalc
    endscript
_001C:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
