.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_114", 0

a001_114:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0078
    gotosubscript 76
    trynaturalcure BATTLER_ATTACKER, _0038
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_0038:
    deletepokemon BATTLER_ATTACKER
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER
    waitmessage
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x100
    jumptosubseq 10
_0078:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
