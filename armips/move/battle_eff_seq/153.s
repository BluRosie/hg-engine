.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_153", 0

a030_153:
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000065
    endscript
_0028:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _failed
    gotosubscript 76
    trynaturalcure BATTLER_ATTACKER, _0038
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_0038:
    deletepokemon BATTLER_ATTACKER
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x10
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x80
    changevar VAR_OP_SET, VAR_ATTACKER_STATUS, 0x0
    jumptosubseq 10
_failed:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
