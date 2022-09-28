.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_296", 0

a001_296:
    changevar VAR_OP_SETMASK, VAR_60, 0x8000000
    changemondatabyvalue VAR_OP_SET, BATTLER_x15, 0x62, 0x0
    changevar VAR_OP_SET, VAR_43, 0x0
    ifmonstat IF_MASK, BATTLER_x15, MON_DATA_PID, 0x1, _0064
    getdatafrompersonalnarc SPECIES_GIRATINA, VAR_43, 0x18
    goto _0074
_0064:
    getdatafrompersonalnarc SPECIES_GIRATINA, VAR_43, 0x19
_0074:
    changemondatabyvar VAR_OP_SET, BATTLER_x15, 0x1A, VAR_09
    gotosubscript 262
    refreshmondata BATTLER_x15
    endscript

.close
