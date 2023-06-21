.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_015", 0

a001_015:
    printmessage 0xB5, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    clearsomeflag BATTLER_ATTACKER
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_STEADFAST, _0070
    changevar VAR_OP_SET, VAR_ADD_EFFECT_TYPE, 0x3
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0x11
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_ATTACKER
    gotosubscript 12
_0070:
    endscript

.close
