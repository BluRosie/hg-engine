.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_112", 0

a001_112:
    if IF_MASK, VAR_10, 0x1FD849, _003C
    printattackmessage
    waitmessage
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _0040
    gotosubscript 111
_003C:
    endscript
_0040:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
