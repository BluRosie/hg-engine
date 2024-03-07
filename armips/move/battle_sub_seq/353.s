.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_353", 0

// Handle Parental Bond
a001_353:
    setparentalbondflag
    // No accuracy check per hit
    setmultihit 0x2, 0xFD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
    endscript

.close
