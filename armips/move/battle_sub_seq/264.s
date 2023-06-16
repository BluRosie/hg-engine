.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_264", 0

// berry reduction script

a001_264:
    if IF_MASK, VAR_06, 0x8800, end_the_script
    if IF_MASK, VAR_10, 0x20, end_the_script

    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_NORMALIZE, checkRefrigerate // if user does not have normalize, check for refrigerate
    changevar VAR_OP_SET, VAR_09, TYPE_NORMAL
    goto _0088
checkRefrigerate:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_REFRIGERATE, checkAerilate
    if IF_NOTEQUAL, VAR_MOVE_TYPE, TYPE_NORMAL, _0080 // grab move parameter and store it in var 9 if type is not normal
    changevar VAR_OP_SET, VAR_09, TYPE_ICE
    goto _0088
checkAerilate:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_AERILATE, checkGalvanize
    if IF_NOTEQUAL, VAR_MOVE_TYPE, TYPE_NORMAL, _0080 // grab move parameter and store it in var 9 if type is not normal
    changevar VAR_OP_SET, VAR_09, TYPE_FLYING
    goto _0088
checkGalvanize:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_GALVANIZE, checkPixilate
    if IF_NOTEQUAL, VAR_MOVE_TYPE, TYPE_NORMAL, _0080 // grab move parameter and store it in var 9 if type is not normal
    changevar VAR_OP_SET, VAR_09, TYPE_ELECTRIC
    goto _0088
checkPixilate:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_PIXILATE, swapType
    if IF_NOTEQUAL, VAR_MOVE_TYPE, TYPE_NORMAL, _0080 // grab move parameter and store it in var 9 if type is not normal
    changevar VAR_OP_SET, VAR_09, TYPE_ELECTRIC
    goto _0088

swapType:
	if IF_EQUAL, VAR_MOVE_TYPE, 0x0, _0080
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TYPE, VAR_09 // if VAR_MOVE_TYPE is not already set, set it here
    goto _0088
_0080:
    getmoveparameter 0x3 // stores type in VAR_09
_0088:
    getitemeffect BATTLER_xFF, VAR_43
    if IF_EQUAL, VAR_43, 35, _checkNormal
    if IF_NOTMASK, VAR_10, 0x2, end_the_script // if move not supereffective, end the script
    if IF_EQUAL, VAR_43, 19, _checkFire
    if IF_EQUAL, VAR_43, 20, _checkWater
    if IF_EQUAL, VAR_43, 21, _checkElectric
    if IF_EQUAL, VAR_43, 22, _checkGrass
    if IF_EQUAL, VAR_43, 23, _checkIce
    if IF_EQUAL, VAR_43, 24, _checkFighting
    if IF_EQUAL, VAR_43, 25, _checkPoison
    if IF_EQUAL, VAR_43, 26, _checkGround
    if IF_EQUAL, VAR_43, 27, _checkFlying
    if IF_EQUAL, VAR_43, 28, _checkPsychic
    if IF_EQUAL, VAR_43, 29, _checkBug
    if IF_EQUAL, VAR_43, 30, _checkRock
    if IF_EQUAL, VAR_43, 31, _checkGhost
    if IF_EQUAL, VAR_43, 32, _checkDragon
    if IF_EQUAL, VAR_43, 33, _checkDark

.if FAIRY_TYPE_IMPLEMENTED == 1
    if IF_EQUAL, VAR_43, 148, _checkFairy // roseli berry held effect
.endif

    if IF_EQUAL, VAR_43, 34, _checkSteel
    goto end_the_script
_checkNormal:
    if IF_EQUAL, VAR_09, TYPE_NORMAL, printReducedDamage
    goto end_the_script
_checkFire:
    if IF_EQUAL, VAR_09, TYPE_FIRE, printReducedDamage
    goto end_the_script
_checkWater:
    if IF_EQUAL, VAR_09, TYPE_WATER, printReducedDamage
    goto end_the_script
_checkElectric:
    if IF_EQUAL, VAR_09, TYPE_ELECTRIC, printReducedDamage
    goto end_the_script
_checkGrass:
    if IF_EQUAL, VAR_09, TYPE_GRASS, printReducedDamage
    goto end_the_script
_checkIce:
    if IF_EQUAL, VAR_09, TYPE_ICE, printReducedDamage
    goto end_the_script
_checkFighting:
    if IF_EQUAL, VAR_09, TYPE_FIGHTING, printReducedDamage
    goto end_the_script
_checkPoison:
    if IF_EQUAL, VAR_09, TYPE_POISON, printReducedDamage
    goto end_the_script
_checkGround:
    if IF_EQUAL, VAR_09, TYPE_GROUND, printReducedDamage
    goto end_the_script
_checkFlying:
    if IF_EQUAL, VAR_09, TYPE_FLYING, printReducedDamage
    goto end_the_script
_checkPsychic:
    if IF_EQUAL, VAR_09, TYPE_PSYCHIC, printReducedDamage
    goto end_the_script
_checkBug:
    if IF_EQUAL, VAR_09, TYPE_BUG, printReducedDamage
    goto end_the_script
_checkRock:
    if IF_EQUAL, VAR_09, TYPE_ROCK, printReducedDamage
    goto end_the_script
_checkGhost:
    if IF_EQUAL, VAR_09, TYPE_GHOST, printReducedDamage
    goto end_the_script
_checkDragon:
    if IF_EQUAL, VAR_09, TYPE_DRAGON, printReducedDamage
    goto end_the_script
_checkDark:
    if IF_EQUAL, VAR_09, TYPE_DARK, printReducedDamage
    goto end_the_script


.if FAIRY_TYPE_IMPLEMENTED == 1
_checkFairy:
    if IF_EQUAL, VAR_09, TYPE_FAIRY, printReducedDamage
    goto end_the_script
.endif

_checkSteel:
    if IF_NOTEQUAL, VAR_09, TYPE_STEEL, end_the_script

printReducedDamage:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    damagediv 32, 2
    printmessage 1131, TAG_ITEM_MOVE, BATTLER_x15, BATTLER_ATTACKER, "NaN", "NaN", "NaN", "NaN" // The {STRVAR_1 8, 0, 0} weakened\n{STRVAR_1 6, 1, 0}’s power!
    waitmessage
    wait 0x1E
    removeitem BATTLER_xFF
end_the_script:
    endscript

.close
