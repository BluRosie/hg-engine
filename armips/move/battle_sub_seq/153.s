.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_153", 0

a001_153:
    gotosubscript SUB_SEQ_PUSH_ATTACKER_DEFENDER
_0008:
    trypursuit _03BC
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    critcalc
    damagecalc
    typecheck
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x1
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    printattackmessage
    waitmessage
    if IF_MASK, VAR_MOVE_STATUS, 0x1FD849, _026C
    playanimation BATTLER_ATTACKER
    waitmessage
    checksubstitute BATTLER_DEFENDER, _01B4
    changevar2 VAR_OP_SET, VAR_TEMP_WORK, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_TEMP_WORK, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_DEFENDER, VAR_ATTACKER_STATUS, 0x2B, _00D0
    changevar2 VAR_OP_SET, VAR_SHELL_BELL_DAMAGE, VAR_DAMAGE
    goto _00F4
_00D0:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_SHELL_BELL_DAMAGE
    changevar VAR_OP_MUL, VAR_SHELL_BELL_DAMAGE, 0xFFFFFFFF
_00F4:
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_DAMAGE
    changevar2 VAR_OP_SET, VAR_DEFENDER_DAMAGE, VAR_DAMAGE
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    checkshouldleavewith1hp BATTLER_xFF
    gotosubscript SUB_SEQ_HP_CHANGE
    gotosubscript SUB_SEQ_CRITICAL_HIT
    gotosubscript SUB_SEQ_MOVE_SUCCESS_MESSAGE
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _029C
    abilityeffectcheckonhit _016C
    gotosubscript2 VAR_TEMP_WORK
_016C:
    itemeffectcheckonhit _017C
    gotosubscript2 VAR_TEMP_WORK
_017C:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x2000
    checkuturnitemeffect _019C
    gotosubscript2 VAR_TEMP_WORK
_019C:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x2000
    goto _027C
_01B4:
    changevar2 VAR_OP_SET, VAR_TEMP_WORK, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_TEMP_WORK, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_DEFENDER, VAR_90, 0x2B, _0204
    changevar2 VAR_OP_SET, VAR_SHELL_BELL_DAMAGE, VAR_DAMAGE
    goto _023C
_0204:
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x35, 0x1000000
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x5A, VAR_SHELL_BELL_DAMAGE
    changevar VAR_OP_MUL, VAR_SHELL_BELL_DAMAGE, 0xFFFFFFFF
_023C:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    gotosubscript SUB_SEQ_HIT_SUBSTITUTE
    gotosubscript SUB_SEQ_CRITICAL_HIT
    gotosubscript SUB_SEQ_MOVE_SUCCESS_MESSAGE
    goto _027C
_026C:
    wait 0xF
    gotosubscript SUB_SEQ_MOVE_FAIL
_027C:
    gotosubscript SUB_SEQ_POP_ATTACKER_DEFENDER
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TEMP, VAR_CURRENT_MOVE
    goto _0008
_029C:
    gotosubscript SUB_SEQ_DESTINY_BOND_FAINT_FOE
    abilityeffectcheckonhit _02B4
    gotosubscript2 VAR_TEMP_WORK
_02B4:
    itemeffectcheckonhit _02C4
    gotosubscript2 VAR_TEMP_WORK
_02C4:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x2000
    checkuturnitemeffect _02E4
    gotosubscript2 VAR_TEMP_WORK
_02E4:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x2000
    changevar2 VAR_OP_SET, VAR_TEMP_WORK, VAR_FAINTED_BATTLER
    changevar VAR_OP_SET, VAR_FAINTED_BATTLER, 0x0
    changevar2 VAR_OP_SET, VAR_CALCULATION_WORK, VAR_SERVER_STATUS2
    changevar VAR_OP_RSH, VAR_CALCULATION_WORK, 0x1C
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0xF0000000
_0344:
    if IF_NOTMASK, VAR_CALCULATION_WORK, 0x1, _0360
    gotosubscript SUB_SEQ_GET_EXP
_0360:
    changevar VAR_OP_ADD, VAR_FAINTED_BATTLER, 0x1
    changevar VAR_OP_RSH, VAR_CALCULATION_WORK, 0x1
    if IF_NOTEQUAL, VAR_CALCULATION_WORK, 0x0, _0344
// fix acid rain glitch
    changevar2 VAR_OP_SET, VAR_FAINTED_BATTLER, VAR_TEMP_WORK
    gotosubscript SUB_SEQ_POP_ATTACKER_DEFENDER
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TEMP, VAR_CURRENT_MOVE
_03BC:
    endscript

.close
