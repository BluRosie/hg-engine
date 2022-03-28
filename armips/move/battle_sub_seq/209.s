.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_209", 0

a001_209:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x255, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue VAR_OP_SETMASK, BATTLER_xFF, 0x35, 0x100000
    gotosubscript 290
    endscript

.close
