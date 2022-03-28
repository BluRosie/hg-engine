.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_move_seq/0_150", 0

a000_150:
    incrementgamestat BATTLER_ATTACKER, 0x0, 0x4D
    jumptocurmoveeffectscript

.close
