.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Ivy Cudgel

.create "build/move/battle_eff_seq/0_309", 0

a030_309:
    // Increase critical hit ratio
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    // If used by a Pokémon other than Ogerpon, Ivy Cudgel will always be a Grass-type move, even if that Pokémon holds one of the masks.
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_SPECIES, SPECIES_OGERPON, _setGrass
    // SPECIES_OGERPON
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_FORM, 0, _setGrass
    // SPECIES_OGERPON_WELLSPRING_MASK
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_FORM, 1, _setWater
    // SPECIES_OGERPON_HEARTHFLAME_MASK
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_FORM, 2, _setFire
    // SPECIES_OGERPON_CORNERSTONE_MASK
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_FORM, 3, _setRock
    goto _return
_setGrass:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_GRASS
    goto _return

_setWater:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_WATER
    goto _return
_setFire:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_FIRE
    goto _return
_setRock:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_ROCK
    goto _return

_return:
    critcalc
    damagecalc
    endscript

.close
