.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// subscript for popping the air balloon

.create "build/move/battle_sub_seq/1_337", 0x0

a001_337:
    printmessage 1367, TAG_NICK_ITEM, BATTLER_DEFENDER, BATTLER_DEFENDER, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\npopped!
    waitmessage
    wait 0x1E

	removeitem BATTLER_DEFENDER // remove air balloon

    endscript

.close
