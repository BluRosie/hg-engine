.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_224", 0

a001_224:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP_RECOVERED_BY_ITEM, 0x0, _0068
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_HP_RECOVERED_BY_ITEM, VAR_HP_TEMP
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_HP_RECOVERED_BY_ITEM, 0x0
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
_0068:
    endscript

.close
