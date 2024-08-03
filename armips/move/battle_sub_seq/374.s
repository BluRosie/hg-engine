.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

.create "build/move/battle_sub_seq/1_374", 0

/*
// Damaging move redirection subscript
//
// All battle_eff_seq files used for damaging moves (critcalc/damagecalc)
// make a call to here, either directly or from subscript 343.
//
// This was used for the type changing abilities like Pixilate, until it was implemented properly.
// Commenting the code out is easier than untying all the files, so it's been left here.
*/

a001_466:
    critcalc

    // Beat Up and Spit Up use different damagecalc functions.
    // Beat Up no longer call this though.
    // if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_BEAT_UP, BeatUpDamageCalc
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_SPIT_UP, SpitUpDamageCalc

    damagecalc
    endscript
BeatUpDamageCalc:
    beatupdamagecalc
    endscript
SpitUpDamageCalc:
    damagecalc2
    endscript

.close