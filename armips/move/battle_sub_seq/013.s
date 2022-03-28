.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_013", 0

a001_013:
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    printpreparedmessage
    waitmessage
    wait 0x1E
    setsomeflag BATTLER_ADDL_EFFECT
    ifmonstat IF_NOTMASK, BATTLER_ADDL_EFFECT, MON_DATA_MOVE_STATE, 0x200400C0, _0048
    togglevanish BATTLER_ADDL_EFFECT, 0x1
_0048:
    endscript

.close
