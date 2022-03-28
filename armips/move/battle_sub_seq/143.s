.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_143", 0

a001_143:
    if IF_MASK, VAR_10, 0x10001, _0274
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x19, _0274
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x19, _0274
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _0274
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0274
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x70, _0274
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x70, _0274
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x0, _00D4
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x0, _0274
_00D4:
    gotosubscript 76
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_AND, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x48, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x48, VAR_43
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x1A, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x1A, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x1A, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1A, VAR_09
    if IF_NOTEQUAL, VAR_43, 0x70, _01E4
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_ADD, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x59, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x60, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x61, 0x0
_01E4:
    if IF_NOTEQUAL, VAR_09, 0x70, _0254
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_ADD, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x59, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x60, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x61, 0x0
_0254:
    printmessage 0x22F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0274:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
