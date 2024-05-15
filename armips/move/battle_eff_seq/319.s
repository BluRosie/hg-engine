.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_319", 0

// Snowscape

a030_164:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript SUB_SEQ_HANDLE_SNOW_TEMPORARY
    endscript

.close
