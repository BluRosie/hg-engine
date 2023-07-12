.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// protean message printing battle script

.create "build/move/battle_sub_seq/1_299", 0x0

a001_298:
    printmessage 1285, TAG_NICK_ABILITY_TYPE, BATTLER_WORK, BATTLER_ATTACKER, BATTLER_WORK, "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nmade it the {STRVAR_1 15, 2, 0} type!
    waitmessage
    wait 0x1E
    endscript

.close