.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_080", 0

a001_080:
    checknostatus BATTLER_DEFENDER, _0040
    trysketch _0040
    gotosubscript 76
    printmessage 0x181, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0040:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
