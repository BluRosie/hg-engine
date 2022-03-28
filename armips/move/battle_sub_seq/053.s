.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_053", 0

a001_053:
    gotosubscript 76
    printpreparedmessage
    waitmessage
    wait 0x1E
    endscript

.close
