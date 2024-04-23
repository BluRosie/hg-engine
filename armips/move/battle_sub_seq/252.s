.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_252", 0

// Snow Warning

a001_252:
    setstatus2effect BATTLER_PLAYER, 0x14
    waitmessage
    gotosubscript 360
    endscript

.close
