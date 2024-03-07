.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// frisk subsequence

.create "build/move/battle_sub_seq/1_253", 0

a001_253:
    wait 15
    printmessage 1423, TAG_NICK_NICK_ITEM, BATTLER_WORK, BATTLER_DEFENDER, BATTLER_WORK, "NaN", "NaN", "NaN"
    // {STRVAR_1 1, 0, 0} frisked\n{STRVAR_1 1, 1, 0} and found its {STRVAR_1 8, 2, 0}!
    waitmessage
    wait 30
    endscript

.close
