.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_113", 0

a001_113:
    if IF_MASK, VAR_06, 0x4000, _0040
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x1C0, 0x6, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0040:
    if IF_MASK, VAR_10, 0x1FD849, _0060
    playanimation BATTLER_ATTACKER
    waitmessage
_0060:
    endscript

.close
