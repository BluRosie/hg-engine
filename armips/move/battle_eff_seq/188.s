.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_188", 0

a030_188:
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x0, _hasItem
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000036 
    critcalc
    damagecalc
    endscript
_hasItem:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000036 
    critcalc
    damagecalc
    endscript

.close
