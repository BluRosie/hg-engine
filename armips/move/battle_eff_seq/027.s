.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_027", 0

a030_027:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0xC00, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000035
_0028:
    critcalc
    damagecalc
    endscript

.close
