.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_126", 0

a001_126:
    if IF_NOTEQUAL, VAR_05, 0x1, _0028
    printattackmessage
    waitmessage
    playanimation BATTLER_ATTACKER
    waitmessage
_0028:
    printpreparedmessage
    waitmessage
    wait 0x1E
    endscript

.close
