.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Moonlight, Morning Sun, Synthesis

.create "build/move/battle_eff_seq/0_132", 0

a030_132:
    changehprecoverybasedonweather
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x100
    endscript

.close
