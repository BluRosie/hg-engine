.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_243", 0

a001_243:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x424, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x3B, 0x2000000
    endscript

.close
