.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_136", 0

a001_136:
    printpreparedmessage
    waitmessage
    wait 0x1E
    ifmonstat IF_NOTEQUAL, BATTLER_xFF, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _00C4
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_09
    ifmonstat2 IF_EQUAL, BATTLER_xFF, VAR_47, 0x9, _009C
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    setstatus2effect BATTLER_xFF, 0xE
    waitmessage
    gotosubscript 2
    printmessage 0xB8, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_009C:
    wait 0x1E
    printmessage 0xBB, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_00C4:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
