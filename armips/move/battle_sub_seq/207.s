.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_207", 0

a001_207:
    gotosubscript 198
    printmessage 0x252, 0x30, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_06, 0x4001
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_BATTLER_SOMETHING
    changevar VAR_OP_SET, VAR_05, 0x5
    gotosubscript 37
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4001
    endscript

.close
