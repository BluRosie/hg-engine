.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_232", 0

a001_232:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x108
    playanimation2 BATTLER_xFF, BATTLER_xFF, BATTLER_xFF
    waitmessage
    printmessage 0x1F1, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    endscript

.close
