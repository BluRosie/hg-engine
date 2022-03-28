.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_148", 0

a030_148:
    tryfuturesight _002C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    changevar VAR_OP_SETMASK, VAR_06, 0x8841C
    endscript
_002C:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript 75
    endscript

.close
