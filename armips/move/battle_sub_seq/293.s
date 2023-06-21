.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_293", 0

a001_293:
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0188
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_SPECIES, 0x1EC, _0188
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_FORM, 0x0, _0188
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x1000000, _0188
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x20, _0188
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x62, 0x0
    changevar VAR_OP_SET, VAR_TEMP_WORK, 0x0
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_PID, 0x1, _00C8
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_TEMP_WORK, 0x18
    goto _00FC
_00C8:
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_TEMP_WORK, 0x19
    if IF_NOTEQUAL, VAR_TEMP_WORK, 0x0, _00FC
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_TEMP_WORK, 0x18
_00FC:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x8000000
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x1A, VAR_CALCULATION_WORK
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_TEMP_WORK, 0x6
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x1B, VAR_CALCULATION_WORK
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_TEMP_WORK, 0x7
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x1C, VAR_CALCULATION_WORK
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    gotosubscript 262
    refreshmondata BATTLER_DEFENDER
_0188:
    endscript

.close
