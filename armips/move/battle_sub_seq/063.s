.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_063", 0

a001_063:
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_ROCK_HEAD, _009C
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MAGIC_GUARD, _009C
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_HIT_DAMAGE
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _0068
    damagediv 32, 4
_0068:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    printmessage 0x117, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_009C:
    endscript

.close
