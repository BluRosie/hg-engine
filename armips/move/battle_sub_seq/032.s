.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_032", 0

a001_032:
    printmessage 0x82, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    setstatus2effect BATTLER_ATTACKER, 0x5
    waitmessage
    clearsomeflag BATTLER_ATTACKER
    endscript

.close
