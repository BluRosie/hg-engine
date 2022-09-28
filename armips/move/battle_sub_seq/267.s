.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_267", 0

a001_267:
    wait 0xF
    playse BATTLER_ATTACKER, 0x5EC
    printmessage 0x35A, 0x33, 0x1, 0x1, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    recoverstatus BATTLER_ATTACKER
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP_RECOVERED_BY_ITEM, 0x0, _00A8
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x5F, VAR_HP_TEMP
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x5F, 0x0
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
_00A8:
    endscript

.close
