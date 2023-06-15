.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_029", 0

// work battler was thawed

a001_029:
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_WORK, MON_DATA_STATUS_1, 0x20
    printmessage 114, TAG_NICK, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_WORK, 0x0
    wait 0x1E
    endscript

.close
