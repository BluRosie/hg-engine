.nds
.thumb

.include "armips/include/macros.s"

.include "asm/include/moves.inc"
.include "asm/include/species.inc"

// the level up moves for each pokemon


levelup SPECIES_NONE
    terminatelearnset


levelup SPECIES_BULBASAUR
    learnset MOVE_TACKLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 4
    learnset MOVE_WORRY_SEED, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_CHARM, 16
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_NATURE_POWER, 25
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_NATURAL_GIFT, 37
    learnset MOVE_AMNESIA, 40
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SYNTHESIS, 46
    terminatelearnset


levelup SPECIES_IVYSAUR
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 4
    learnset MOVE_WORRY_SEED, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_CHARM, 16
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_NATURE_POWER, 25
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_NATURAL_GIFT, 37
    learnset MOVE_AMNESIA, 40
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SYNTHESIS, 46
    learnset MOVE_GROWTH, 49
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_SLEEP_POWDER, 55
    terminatelearnset


levelup SPECIES_VENUSAUR
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WORRY_SEED, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_CHARM, 16
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_NATURE_POWER, 25
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_PETAL_DANCE, 32
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_NATURAL_GIFT, 37
    learnset MOVE_AMNESIA, 40
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SYNTHESIS, 46
    learnset MOVE_GROWTH, 50
    learnset MOVE_EARTH_POWER, 54
    learnset MOVE_SLEEP_POWDER, 58
    learnset MOVE_POWER_WHIP, 63
    learnset MOVE_LEAF_STORM, 68
    terminatelearnset


levelup SPECIES_CHARMANDER
    learnset MOVE_HOWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_TWISTER, 7
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_BREAKING_SWIPE, 13
    learnset MOVE_QUICK_ATTACK, 17
    learnset MOVE_DRAGON_BREATH, 19
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_METAL_CLAW, 25
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_INFERNO, 37
    learnset MOVE_RAGING_FURY, 40
    learnset MOVE_HEAT_CRASH, 43
    learnset MOVE_FLAMETHROWER, 46
    learnset MOVE_FLARE_BLITZ, 49
    terminatelearnset


levelup SPECIES_CHARMELEON
    learnset MOVE_HOWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_TWISTER, 7
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_BREAKING_SWIPE, 13
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_QUICK_ATTACK, 17
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_METAL_CLAW, 25
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_BLAZE_KICK, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_RAGING_FURY, 40
    learnset MOVE_INFERNO, 43
    learnset MOVE_FIRE_LASH, 46
    learnset MOVE_HEAT_CRASH, 49
    learnset MOVE_DRAGON_RUSH, 52
    learnset MOVE_FLARE_BLITZ, 55
    terminatelearnset


levelup SPECIES_CHARIZARD
	learnset MOVE_BELLY_DRUM, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_EMBER, 4
	learnset MOVE_SMOKESCREEN, 7
	learnset MOVE_SEISMIC_TOSS, 10
	learnset MOVE_BREAKING_SWIPE, 13
	learnset MOVE_FIRE_FANG, 16
	learnset MOVE_QUICK_ATTACK, 17
	learnset MOVE_DRAGON_BREATH, 20
	learnset MOVE_FLAME_BURST, 22
	learnset MOVE_METAL_CLAW, 25
	learnset MOVE_SCARY_FACE, 28
	learnset MOVE_BLAZE_KICK, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_CRUNCH, 37
	learnset MOVE_RAGING_FURY, 40
	learnset MOVE_INFERNO, 43
	learnset MOVE_FIRE_LASH, 46
	learnset MOVE_SCORCHING_SANDS, 50
	learnset MOVE_HEAT_CRASH, 54
	learnset MOVE_DRAGON_RUSH, 58
	learnset MOVE_FLARE_BLITZ, 62
	learnset MOVE_DRAGON_DANCE, 66
    terminatelearnset


levelup SPECIES_SQUIRTLE
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_WITHDRAW, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_RAPID_SPIN, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_AQUA_RING, 25
	learnset MOVE_AVALANCHE, 28
	learnset MOVE_BITE, 31
	learnset MOVE_SKULL_BASH, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_SEISMIC_TOSS, 43
	learnset MOVE_FAKE_OUT, 46
	learnset MOVE_ZEN_HEADBUTT, 49
    terminatelearnset


levelup SPECIES_WARTORTLE
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_WITHDRAW, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_MIRROR_COAT, 17
	learnset MOVE_RAPID_SPIN, 20
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_AQUA_RING, 25
	learnset MOVE_AVALANCHE, 28
	learnset MOVE_BITE, 31
	learnset MOVE_SKULL_BASH, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_SEISMIC_TOSS, 43
	learnset MOVE_FAKE_OUT, 46
	learnset MOVE_ZEN_HEADBUTT, 49
	learnset MOVE_HAZE, 52
	learnset MOVE_HYDRO_PUMP, 55
    terminatelearnset


levelup SPECIES_BLASTOISE
	learnset MOVE_DARK_PULSE, 1
	learnset MOVE_DRAGON_PULSE, 1
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_WITHDRAW, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_MIRROR_COAT, 17
	learnset MOVE_RAPID_SPIN, 20
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_AQUA_RING, 25
	learnset MOVE_AVALANCHE, 28
	learnset MOVE_BITE, 31
	learnset MOVE_SKULL_BASH, 34
	learnset MOVE_IRON_DEFENSE, 36
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_SEISMIC_TOSS, 43
	learnset MOVE_FAKE_OUT, 46
	learnset MOVE_ZEN_HEADBUTT, 50
	learnset MOVE_HAZE, 54
	learnset MOVE_HYDRO_PUMP, 58
	learnset MOVE_WATER_SPOUT, 62
	learnset MOVE_SHELL_SMASH, 66
    terminatelearnset


levelup SPECIES_CATERPIE
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_ELECTROWEB, 6
    terminatelearnset


levelup SPECIES_METAPOD
	learnset MOVE_HARDEN, 1
	learnset MOVE_IRON_DEFENSE, 7
    terminatelearnset


levelup SPECIES_BUTTERFREE
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_CONFUSION, 13
	learnset MOVE_GUST, 13
	learnset MOVE_POISON_POWDER, 15
	learnset MOVE_STUN_SPORE, 15
	learnset MOVE_SLEEP_POWDER, 15
	learnset MOVE_SILVER_WIND, 17
	learnset MOVE_AIR_CUTTER, 21
	learnset MOVE_OMINOUS_WIND, 25
	learnset MOVE_PSYBEAM, 29
	learnset MOVE_DRAINING_KISS, 33
	learnset MOVE_TAILWIND, 37
	learnset MOVE_AIR_SLASH, 41
	learnset MOVE_RAGE_POWDER, 45
	learnset MOVE_PSYCHIC, 49
	learnset MOVE_BUG_BUZZ, 53
	learnset MOVE_HURRICANE, 57
	learnset MOVE_QUIVER_DANCE, 61
    terminatelearnset


levelup SPECIES_WEEDLE
	learnset MOVE_POISON_STING, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_POISON_TAIL, 6
    terminatelearnset


levelup SPECIES_KAKUNA
	learnset MOVE_HARDEN, 1
	learnset MOVE_IRON_DEFENSE, 7
    terminatelearnset


levelup SPECIES_BEEDRILL
	learnset MOVE_FURY_ATTACK, 1
	learnset MOVE_TWINEEDLE, 13
	learnset MOVE_TOXIC_SPIKES, 15
	learnset MOVE_PIN_MISSILE, 17
	learnset MOVE_PURSUIT, 21
	learnset MOVE_FOCUS_ENERGY, 25
	learnset MOVE_POISON_JAB, 29
	learnset MOVE_ASSURANCE, 33
	learnset MOVE_FURY_CUTTER, 37
	learnset MOVE_DRILL_PECK, 41
	learnset MOVE_CROSS_POISON, 45
	learnset MOVE_AGILITY, 49
	learnset MOVE_RAGING_FURY, 53
	learnset MOVE_OUTRAGE, 57
	learnset MOVE_MEGAHORN, 61
    terminatelearnset


levelup SPECIES_PIDGEY
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GUST, 3
	learnset MOVE_ECHOED_VOICE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_AIR_CUTTER, 11
	learnset MOVE_FEATHER_DANCE, 13
	learnset MOVE_SWIFT, 15
	learnset MOVE_MIRROR_MOVE, 17
	learnset MOVE_UPROAR, 19
	learnset MOVE_OMINOUS_WIND, 21
	learnset MOVE_STEEL_WING, 24
	learnset MOVE_WHIRLWIND, 27
	learnset MOVE_HYPER_VOICE, 30
	learnset MOVE_AIR_SLASH, 34
	learnset MOVE_AGILITY, 38
	learnset MOVE_TAILWIND, 42
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_BRAVE_BIRD, 50
	learnset MOVE_SKY_ATTACK, 54
    terminatelearnset


levelup SPECIES_PIDGEOTTO
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GUST, 3
	learnset MOVE_ECHOED_VOICE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_AIR_CUTTER, 11
	learnset MOVE_FEATHER_DANCE, 13
	learnset MOVE_SWIFT, 15
	learnset MOVE_MIRROR_MOVE, 17
	learnset MOVE_PURSUIT, 18
	learnset MOVE_UPROAR, 20
	learnset MOVE_OMINOUS_WIND, 22
	learnset MOVE_STEEL_WING, 25
	learnset MOVE_WHIRLWIND, 28
	learnset MOVE_HYPER_VOICE, 31
	learnset MOVE_AIR_SLASH, 35
	learnset MOVE_AGILITY, 39
	learnset MOVE_TAILWIND, 43
	learnset MOVE_DOUBLE_EDGE, 47
	learnset MOVE_BRAVE_BIRD, 51
	learnset MOVE_SKY_ATTACK, 55
    terminatelearnset


levelup SPECIES_PIDGEOT
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GUST, 3
	learnset MOVE_ECHOED_VOICE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_AIR_CUTTER, 11
	learnset MOVE_FEATHER_DANCE, 13
	learnset MOVE_SWIFT, 15
	learnset MOVE_MIRROR_MOVE, 17
	learnset MOVE_PURSUIT, 18
	learnset MOVE_UPROAR, 20
	learnset MOVE_OMINOUS_WIND, 22
	learnset MOVE_STEEL_WING, 25
	learnset MOVE_WHIRLWIND, 28
	learnset MOVE_HYPER_VOICE, 31
	learnset MOVE_AIR_SLASH, 35
	learnset MOVE_QUICK_GUARD, 36
	learnset MOVE_AGILITY, 40
	learnset MOVE_TAILWIND, 44
	learnset MOVE_DOUBLE_EDGE, 48
	learnset MOVE_BRAVE_BIRD, 52
	learnset MOVE_SKY_ATTACK, 56
    terminatelearnset


levelup SPECIES_RATTATA
	learnset MOVE_BITE, 1
	learnset MOVE_ME_FIRST, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_ASSURANCE, 16
	learnset MOVE_FURY_SWIPES, 19
	learnset MOVE_ENDEAVOR, 22
	learnset MOVE_FIRE_FANG, 25
	learnset MOVE_ICE_FANG, 25
	learnset MOVE_THUNDER_FANG, 25
	learnset MOVE_HYPER_FANG, 28
	learnset MOVE_CRUNCH, 31
	learnset MOVE_FLAME_WHEEL, 34
	learnset MOVE_ZEN_HEADBUTT, 38
	learnset MOVE_REVERSAL, 42
	learnset MOVE_SUCKER_PUNCH, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_LAST_RESORT, 54
	learnset MOVE_FINAL_GAMBIT, 58
    terminatelearnset


levelup SPECIES_RATICATE
	learnset MOVE_REVENGE, 1
	learnset MOVE_BITE, 1
	learnset MOVE_ME_FIRST, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_ASSURANCE, 16
	learnset MOVE_FURY_SWIPES, 19
	learnset MOVE_AFTER_YOU, 20
	learnset MOVE_ENDEAVOR, 23
	learnset MOVE_FIRE_FANG, 26
	learnset MOVE_ICE_FANG, 26
	learnset MOVE_THUNDER_FANG, 26
	learnset MOVE_HYPER_FANG, 29
	learnset MOVE_CRUNCH, 32
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_FLAME_WHEEL, 40
	learnset MOVE_ZEN_HEADBUTT, 44
	learnset MOVE_REVERSAL, 48
	learnset MOVE_SUCKER_PUNCH, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_LAST_RESORT, 60
	learnset MOVE_FINAL_GAMBIT, 64
    terminatelearnset


levelup SPECIES_SPEAROW
	learnset MOVE_GROWL, 1
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_MIRROR_MOVE, 16
	learnset MOVE_AERIAL_ACE, 19
	learnset MOVE_ASSURANCE, 22
	learnset MOVE_FEATHER_DANCE, 25
	learnset MOVE_FOCUS_ENERGY, 28
	learnset MOVE_AGILITY, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_DRILL_PECK, 38
	learnset MOVE_DETECT, 42
	learnset MOVE_TAILWIND, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_SKY_ATTACK, 54
    terminatelearnset


levelup SPECIES_FEAROW
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_MIRROR_MOVE, 16
	learnset MOVE_AERIAL_ACE, 19
	learnset MOVE_PURSUIT, 20
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_FEATHER_DANCE, 26
	learnset MOVE_FOCUS_ENERGY, 29
	learnset MOVE_AGILITY, 32
	learnset MOVE_STEEL_WING, 35
	learnset MOVE_DRILL_PECK, 38
	learnset MOVE_WHIRLWIND, 41
	learnset MOVE_DETECT, 44
	learnset MOVE_TAILWIND, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_SKY_ATTACK, 56
	learnset MOVE_BRAVE_BIRD, 60
    terminatelearnset


levelup SPECIES_EKANS
	learnset MOVE_LEER, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_BITE, 4
	learnset MOVE_ACID, 7
	learnset MOVE_GLARE, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_POISON_FANG, 18
	learnset MOVE_COIL, 20
	learnset MOVE_FIRE_FANG, 23
	learnset MOVE_ICE_FANG, 23
	learnset MOVE_THUNDER_FANG, 23
	learnset MOVE_DISABLE, 25
	learnset MOVE_BREAKING_SWIPE, 28
	learnset MOVE_POISON_TAIL, 31
	learnset MOVE_ACID_SPRAY, 34
	learnset MOVE_SPITE, 37
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_LUNGE, 43
	learnset MOVE_SWITCHEROO, 46
	learnset MOVE_CRUNCH, 49
	learnset MOVE_HAZE, 52
	learnset MOVE_GUNK_SHOT, 55
    terminatelearnset


levelup SPECIES_ARBOK
	learnset MOVE_LEER, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_BITE, 4
	learnset MOVE_ACID, 7
	learnset MOVE_GLARE, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_POISON_FANG, 18
	learnset MOVE_COIL, 20
	learnset MOVE_SCARY_FACE, 22
	learnset MOVE_FIRE_FANG, 23
	learnset MOVE_ICE_FANG, 23
	learnset MOVE_THUNDER_FANG, 23
	learnset MOVE_DISABLE, 26
	learnset MOVE_BREAKING_SWIPE, 29
	learnset MOVE_POISON_TAIL, 32
	learnset MOVE_ACID_SPRAY, 35
	learnset MOVE_SPITE, 39
	learnset MOVE_SUCKER_PUNCH, 42
	learnset MOVE_LUNGE, 45
	learnset MOVE_SWITCHEROO, 48
	learnset MOVE_CRUNCH, 52
	learnset MOVE_HAZE, 56
	learnset MOVE_GUNK_SHOT, 60
    terminatelearnset


levelup SPECIES_PIKACHU
	learnset MOVE_REFRESH, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_CHARGE, 3
	learnset MOVE_SING, 6
	learnset MOVE_TICKLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_WISH, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_NUZZLE, 21
	learnset MOVE_ELECTRO_BALL, 24
	learnset MOVE_IRON_TAIL, 27
	learnset MOVE_AGILITY, 30
	learnset MOVE_THUNDERBOLT, 34
	learnset MOVE_TEETER_DANCE, 38
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_DISCHARGE, 46
	learnset MOVE_EXTREME_SPEED, 50
	learnset MOVE_HEART_STAMP, 54
	learnset MOVE_ICICLE_CRASH, 58
	learnset MOVE_METEOR_MASH, 58
	learnset MOVE_DRAINING_KISS, 58
	learnset MOVE_VOLT_TACKLE, 62
    terminatelearnset


levelup SPECIES_RAICHU
	learnset MOVE_CHARM, 1
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_NUZZLE, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_THUNDERBOLT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WISH, 1
	learnset MOVE_SHOCK_WAVE, 25
	learnset MOVE_REVERSAL, 45
	learnset MOVE_VOLT_TACKLE, 65
    terminatelearnset


levelup SPECIES_SANDSHREW
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_SCORCHING_SANDS, 13
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_BULLDOZE, 19
	learnset MOVE_ACCELEROCK, 22
	learnset MOVE_SLASH, 24
	learnset MOVE_NIGHT_SLASH, 24
	learnset MOVE_SUPER_FANG, 26
	learnset MOVE_AGILITY, 28
	learnset MOVE_CHIP_AWAY, 31
	learnset MOVE_SPIKES, 34
	learnset MOVE_PIN_MISSILE, 37
	learnset MOVE_DRILL_RUN, 40
	learnset MOVE_CRUSH_CLAW, 44
	learnset MOVE_RAPID_SPIN, 48
	learnset MOVE_LEECH_LIFE, 52
	learnset MOVE_FOCUS_PUNCH, 56
    terminatelearnset


levelup SPECIES_SANDSLASH
	learnset MOVE_COUNTER, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_SCORCHING_SANDS, 13
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_BULLDOZE, 19
	learnset MOVE_ACCELEROCK, 22
	learnset MOVE_FLING, 23
	learnset MOVE_SLASH, 25
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_SUPER_FANG, 27
	learnset MOVE_AGILITY, 29
	learnset MOVE_CHIP_AWAY, 32
	learnset MOVE_SPIKES, 35
	learnset MOVE_PIN_MISSILE, 38
	learnset MOVE_DRILL_RUN, 42
	learnset MOVE_CRUSH_CLAW, 46
	learnset MOVE_RAPID_SPIN, 50
	learnset MOVE_LEECH_LIFE, 54
	learnset MOVE_FOCUS_PUNCH, 58
	learnset MOVE_HEADLONG_RUSH, 62
    terminatelearnset


levelup SPECIES_NIDORAN_F
	learnset MOVE_GROWL, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_PECK, 4
	learnset MOVE_DOUBLE_KICK, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_POISON_FANG, 13
	learnset MOVE_HORN_ATTACK, 16
	learnset MOVE_HELPING_HAND, 19
	learnset MOVE_TOXIC_SPIKES, 22
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_DISABLE, 28
	learnset MOVE_AMNESIA, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_SMART_STRIKE, 37
	learnset MOVE_POISON_TAIL, 40
	learnset MOVE_SCORCHING_SANDS, 44
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_SUCKER_PUNCH, 52
	learnset MOVE_HEAD_SMASH, 56
    terminatelearnset


levelup SPECIES_NIDORINA
	learnset MOVE_GROWL, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_PECK, 4
	learnset MOVE_DOUBLE_KICK, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_POISON_FANG, 13
	learnset MOVE_HORN_ATTACK, 16
	learnset MOVE_HELPING_HAND, 20
	learnset MOVE_TOXIC_SPIKES, 23
	learnset MOVE_POISON_JAB, 26
	learnset MOVE_DISABLE, 29
	learnset MOVE_AMNESIA, 32
	learnset MOVE_CRUNCH, 36
	learnset MOVE_SMART_STRIKE, 40
	learnset MOVE_POISON_TAIL, 44
	learnset MOVE_SCORCHING_SANDS, 48
	learnset MOVE_TAKE_DOWN, 52
	learnset MOVE_SUCKER_PUNCH, 56
	learnset MOVE_HEAD_SMASH, 60
    terminatelearnset


levelup SPECIES_NIDOQUEEN
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_FLING, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_HIGH_HORSEPOWER, 1
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_PLAY_ROUGH, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_CHIP_AWAY, 25
	learnset MOVE_POISON_TAIL, 35
	learnset MOVE_SEISMIC_TOSS, 45
	learnset MOVE_SCORCHING_SANDS, 58
    terminatelearnset


levelup SPECIES_NIDORAN_M
	learnset MOVE_GROWL, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_PECK, 4
	learnset MOVE_DOUBLE_KICK, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_POISON_FANG, 13
	learnset MOVE_HORN_ATTACK, 16
	learnset MOVE_HELPING_HAND, 19
	learnset MOVE_FOCUS_ENERGY, 22
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_BEAT_UP, 28
	learnset MOVE_BODY_SLAM, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_SMART_STRIKE, 37
	learnset MOVE_POISON_TAIL, 40
	learnset MOVE_SCORCHING_SANDS, 44
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_SUCKER_PUNCH, 52
	learnset MOVE_HEAD_SMASH, 56
    terminatelearnset


levelup SPECIES_NIDORINO
	learnset MOVE_GROWL, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_PECK, 4
	learnset MOVE_DOUBLE_KICK, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_POISON_FANG, 13
	learnset MOVE_HORN_ATTACK, 16
	learnset MOVE_HELPING_HAND, 20
	learnset MOVE_FOCUS_ENERGY, 23
	learnset MOVE_POISON_JAB, 26
	learnset MOVE_BEAT_UP, 29
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_CRUNCH, 36
	learnset MOVE_SMART_STRIKE, 40
	learnset MOVE_POISON_TAIL, 44
	learnset MOVE_SCORCHING_SANDS, 48
	learnset MOVE_TAKE_DOWN, 52
	learnset MOVE_SUCKER_PUNCH, 56
	learnset MOVE_HEAD_SMASH, 60
    terminatelearnset


levelup SPECIES_NIDOKING
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_HEAD_SMASH, 1
	learnset MOVE_HIGH_HORSEPOWER, 1
	learnset MOVE_MORNING_SUN, 1
	learnset MOVE_SMART_STRIKE, 1
	learnset MOVE_PLAY_ROUGH, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_CHIP_AWAY, 25
	learnset MOVE_POISON_TAIL, 35
	learnset MOVE_MEGAHORN, 45
	learnset MOVE_SCORCHING_SANDS, 58
    terminatelearnset


levelup SPECIES_CLEFAIRY
	learnset MOVE_GROWL, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_METRONOME, 4
	learnset MOVE_SING, 7
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_MOONLIGHT, 16
	learnset MOVE_FOLLOW_ME, 19
	learnset MOVE_DRAINING_KISS, 21
	learnset MOVE_SEISMIC_TOSS, 23
	learnset MOVE_HEAL_PULSE, 25
	learnset MOVE_MAGICAL_LEAF, 27
	learnset MOVE_HEALING_WISH, 29
	learnset MOVE_HELPING_HAND, 31
	learnset MOVE_AROMATHERAPY, 34
	learnset MOVE_DAZZLING_GLEAM, 38
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_BELLY_DRUM, 46
	learnset MOVE_SEISMIC_TOSS, 50
	learnset MOVE_WISH, 54
	learnset MOVE_COSMIC_POWER, 58
	learnset MOVE_METEOR_MASH, 62
	learnset MOVE_LUNAR_DANCE, 66
    terminatelearnset


levelup SPECIES_CLEFABLE
	learnset MOVE_AROMATHERAPY, 1
	learnset MOVE_METRONOME, 1
	learnset MOVE_SING, 1
	learnset MOVE_SOFT_BOILED, 1
	learnset MOVE_WISH, 30
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_LUNAR_DANCE, 65
    terminatelearnset


levelup SPECIES_VULPIX
	learnset MOVE_EMBER, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SAFEGUARD, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_CAPTIVATE, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_FIRE_SPIN, 19
	learnset MOVE_HYPNOSIS, 22
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_HEX, 28
	learnset MOVE_FLAME_BURST, 31
	learnset MOVE_OMINOUS_WIND, 34
	learnset MOVE_PAIN_SPLIT, 37
	learnset MOVE_IMPRISON, 40
	learnset MOVE_INFERNO, 44
	learnset MOVE_MEMENTO, 48
	learnset MOVE_FLARE_BLITZ, 52
	learnset MOVE_EXTRASENSORY, 56
	learnset MOVE_GRUDGE, 60
    terminatelearnset


levelup SPECIES_NINETALES
	learnset MOVE_CAPTIVATE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_FOUL_PLAY, 1
	learnset MOVE_GRUDGE, 1
	learnset MOVE_HEX, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_ROLE_PLAY, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_INFERNO, 45
	learnset MOVE_MOONBLAST, 55
	learnset MOVE_EXTRASENSORY, 60
	learnset MOVE_NASTY_PLOT, 65
    terminatelearnset


levelup SPECIES_JIGGLYPUFF
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_SING, 1
	learnset MOVE_POUND, 1
	learnset MOVE_FAKE_TEARS, 4
	learnset MOVE_BESTOW, 7
	learnset MOVE_DISARMING_VOICE, 9
	learnset MOVE_DOUBLE_SLAP, 11
	learnset MOVE_DISABLE, 13
	learnset MOVE_WAKE_UP_SLAP, 15
	learnset MOVE_METRONOME, 17
	learnset MOVE_MIMIC, 19
	learnset MOVE_UPROAR, 22
	learnset MOVE_METRONOME, 24
	learnset MOVE_COVET, 27
	learnset MOVE_WISH, 29
	learnset MOVE_DRAINING_KISS, 32
	learnset MOVE_BODY_SLAM, 36
	learnset MOVE_HYPER_VOICE, 40
	learnset MOVE_MOONBLAST, 44
	learnset MOVE_PERISH_SONG, 49
	learnset MOVE_PLAY_ROUGH, 54
	learnset MOVE_BOOMBURST, 59
    terminatelearnset


levelup SPECIES_WIGGLYTUFF
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_DOUBLE_EDGE, 1
	learnset MOVE_PERISH_SONG, 1
	learnset MOVE_SING, 1
	learnset MOVE_GRAVITY, 20
	learnset MOVE_COVET, 30
	learnset MOVE_DRAINING_KISS, 40
	learnset MOVE_PLAY_ROUGH, 50
	learnset MOVE_BOOMBURST, 60
	learnset MOVE_NASTY_PLOT, 70
    terminatelearnset


levelup SPECIES_ZUBAT
	learnset MOVE_ABSORB, 1
	learnset MOVE_GUST, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_BITE, 7
	learnset MOVE_WING_ATTACK, 10
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_SWIFT, 19
	learnset MOVE_MEAN_LOOK, 22
	learnset MOVE_FEINT_ATTACK, 25
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_HAZE, 31
	learnset MOVE_WHIRLWIND, 34
	learnset MOVE_ZEN_HEADBUTT, 37
	learnset MOVE_SUPER_FANG, 40
	learnset MOVE_NASTY_PLOT, 43
	learnset MOVE_LEECH_LIFE, 46
	learnset MOVE_HYPNOSIS, 50
	learnset MOVE_AIR_SLASH, 53
	learnset MOVE_WIDE_GUARD, 56
	learnset MOVE_BRAVE_BIRD, 59
    terminatelearnset


levelup SPECIES_GOLBAT
	learnset MOVE_ABSORB, 1
	learnset MOVE_GUST, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_BITE, 7
	learnset MOVE_WING_ATTACK, 10
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_SWIFT, 19
	learnset MOVE_MEAN_LOOK, 22
	learnset MOVE_FEINT_ATTACK, 26
	learnset MOVE_AIR_CUTTER, 30
	learnset MOVE_HAZE, 33
	learnset MOVE_WHIRLWIND, 36
	learnset MOVE_ZEN_HEADBUTT, 40
	learnset MOVE_SUPER_FANG, 44
	learnset MOVE_NASTY_PLOT, 48
	learnset MOVE_LEECH_LIFE, 52
	learnset MOVE_HYPNOSIS, 55
	learnset MOVE_AIR_SLASH, 59
	learnset MOVE_WIDE_GUARD, 63
	learnset MOVE_BRAVE_BIRD, 67
    terminatelearnset


levelup SPECIES_ODDISH
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_ACID, 1
	learnset MOVE_TICKLE, 4
	learnset MOVE_LUCKY_CHANT, 7
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_SLEEP_POWDER, 10
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_INGRAIN, 13
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_MUD_BOMB, 19
	learnset MOVE_CHARM, 22
	learnset MOVE_NATURAL_GIFT, 25
	learnset MOVE_NATURE_POWER, 28
	learnset MOVE_SLUDGE, 32
	learnset MOVE_LEECH_SEED, 36
	learnset MOVE_MOONLIGHT, 40
	learnset MOVE_TEETER_DANCE, 44
	learnset MOVE_SYNTHESIS, 48
	learnset MOVE_MOONBLAST, 52
	learnset MOVE_PETAL_DANCE, 56
    terminatelearnset


levelup SPECIES_GLOOM
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_ACID, 1
	learnset MOVE_TICKLE, 4
	learnset MOVE_LUCKY_CHANT, 7
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_SLEEP_POWDER, 10
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_INGRAIN, 13
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_MUD_BOMB, 19
	learnset MOVE_FLAIL, 21
	learnset MOVE_CHARM, 24
	learnset MOVE_NATURAL_GIFT, 28
	learnset MOVE_NATURE_POWER, 32
	learnset MOVE_SLUDGE, 36
	learnset MOVE_LEECH_SEED, 40
	learnset MOVE_MOONLIGHT, 44
	learnset MOVE_TEETER_DANCE, 48
	learnset MOVE_SYNTHESIS, 52
	learnset MOVE_MOONBLAST, 56
	learnset MOVE_PETAL_DANCE, 60
    terminatelearnset


levelup SPECIES_VILEPLUME
	learnset MOVE_DRAIN_PUNCH, 1
	learnset MOVE_EARTH_POWER, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_NATURE_POWER, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_TOXIC, 1
	learnset MOVE_SLUDGE, 25
	learnset MOVE_SEED_BOMB, 30
	learnset MOVE_GASTRO_ACID, 36
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_PETAL_DANCE, 48
	learnset MOVE_AROMATHERAPY, 58
	learnset MOVE_SOLAR_BEAM, 68
    terminatelearnset


levelup SPECIES_PARAS
	learnset MOVE_ABSORB, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_POISON_POWDER, 7
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_SPORE, 19
	learnset MOVE_STRUGGLE_BUG, 21
	learnset MOVE_WIDE_GUARD, 23
	learnset MOVE_LEECH_LIFE, 25
	learnset MOVE_LEECH_SEED, 27
	learnset MOVE_AROMATHERAPY, 29
	learnset MOVE_PSYBEAM, 31
	learnset MOVE_SEED_BOMB, 34
	learnset MOVE_CROSS_POISON, 37
	learnset MOVE_CROSS_CHOP, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_GROWTH, 48
	learnset MOVE_LUNGE, 52
	learnset MOVE_SYNTHESIS, 56
    terminatelearnset


levelup SPECIES_PARASECT
	learnset MOVE_COUNTER, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_POISON_POWDER, 7
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_SPORE, 19
	learnset MOVE_STRUGGLE_BUG, 21
	learnset MOVE_WIDE_GUARD, 23
	learnset MOVE_RAGE_POWDER, 24
	learnset MOVE_LEECH_LIFE, 25
	learnset MOVE_LEECH_SEED, 27
	learnset MOVE_AROMATHERAPY, 29
	learnset MOVE_PSYBEAM, 32
	learnset MOVE_SEED_BOMB, 35
	learnset MOVE_CROSS_POISON, 38
	learnset MOVE_CROSS_CHOP, 42
	learnset MOVE_AGILITY, 46
	learnset MOVE_GROWTH, 50
	learnset MOVE_LUNGE, 54
	learnset MOVE_SYNTHESIS, 58
    terminatelearnset


levelup SPECIES_VENONAT
	learnset MOVE_TACKLE, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_STRUGGLE_BUG, 5
	learnset MOVE_FORESIGHT, 8
	learnset MOVE_CONFUSION, 11
	learnset MOVE_ACID_SPRAY, 14
	learnset MOVE_STUN_SPORE, 16
	learnset MOVE_POISON_POWDER, 16
	learnset MOVE_SLEEP_POWDER, 16
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_PSYBEAM, 20
	learnset MOVE_DISABLE, 23
	learnset MOVE_POISON_FANG, 26
	learnset MOVE_RAGE_POWDER, 29
	learnset MOVE_SKILL_SWAP, 32
	learnset MOVE_SIGNAL_BEAM, 35
	learnset MOVE_MORNING_SUN, 38
	learnset MOVE_TOXIC_SPIKES, 41
	learnset MOVE_LEECH_LIFE, 44
	learnset MOVE_BUG_BUZZ, 47
	learnset MOVE_BATON_PASS, 50
    terminatelearnset


levelup SPECIES_VENOMOTH
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_AIR_CUTTER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_STRUGGLE_BUG, 5
	learnset MOVE_FORESIGHT, 8
	learnset MOVE_CONFUSION, 11
	learnset MOVE_ACID_SPRAY, 14
	learnset MOVE_STUN_SPORE, 16
	learnset MOVE_POISON_POWDER, 16
	learnset MOVE_SLEEP_POWDER, 16
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_PSYBEAM, 20
	learnset MOVE_DISABLE, 23
	learnset MOVE_POISON_FANG, 26
	learnset MOVE_RAGE_POWDER, 29
	learnset MOVE_SILVER_WIND, 31
	learnset MOVE_SKILL_SWAP, 34
	learnset MOVE_SIGNAL_BEAM, 38
	learnset MOVE_MORNING_SUN, 42
	learnset MOVE_TOXIC_SPIKES, 46
	learnset MOVE_QUIVER_DANCE, 50
	learnset MOVE_BUG_BUZZ, 54
	learnset MOVE_BATON_PASS, 58
    terminatelearnset


levelup SPECIES_DIGLETT
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_MUD_BOMB, 7
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_MAGNITUDE, 13
	learnset MOVE_PURSUIT, 16
	learnset MOVE_BULLDOZE, 19
	learnset MOVE_ALLY_SWITCH, 22
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_SCORCHING_SANDS, 28
	learnset MOVE_REVERSAL, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_BEAT_UP, 37
	learnset MOVE_DOUBLE_EDGE, 40
	learnset MOVE_HIGH_HORSEPOWER, 44
	learnset MOVE_MEMENTO, 48
	learnset MOVE_FISSURE, 52
	learnset MOVE_FINAL_GAMBIT, 56
    terminatelearnset


levelup SPECIES_DUGTRIO
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_MUD_BOMB, 7
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_MAGNITUDE, 13
	learnset MOVE_PURSUIT, 16
	learnset MOVE_BULLDOZE, 19
	learnset MOVE_ALLY_SWITCH, 22
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_TRI_ATTACK, 26
	learnset MOVE_SCORCHING_SANDS, 29
	learnset MOVE_REVERSAL, 32
	learnset MOVE_SLASH, 35
	learnset MOVE_NIGHT_SLASH, 35
	learnset MOVE_BEAT_UP, 38
	learnset MOVE_DOUBLE_EDGE, 42
	learnset MOVE_HIGH_HORSEPOWER, 46
	learnset MOVE_MEMENTO, 50
	learnset MOVE_FISSURE, 54
	learnset MOVE_FINAL_GAMBIT, 58
	learnset MOVE_SWORDS_DANCE, 62
    terminatelearnset


levelup SPECIES_MEOWTH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_ASSIST, 1
	learnset MOVE_BITE, 6
	learnset MOVE_FAKE_OUT, 8
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_PAY_DAY, 12
	learnset MOVE_SCREECH, 14
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SPITE, 18
	learnset MOVE_HYPNOSIS, 20
	learnset MOVE_FEINT_ATTACK, 22
	learnset MOVE_SLASH, 24
	learnset MOVE_NIGHT_SLASH, 24
	learnset MOVE_CHARM, 27
	learnset MOVE_FOUL_PLAY, 30
	learnset MOVE_SWITCHEROO, 33
	learnset MOVE_NASTY_PLOT, 36
	learnset MOVE_PLAY_ROUGH, 39
	learnset MOVE_CAPTIVATE, 42
	learnset MOVE_DOUBLE_EDGE, 45
	learnset MOVE_LAST_RESORT, 48
    terminatelearnset


levelup SPECIES_PERSIAN
	learnset MOVE_DETECT, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_ASSIST, 1
	learnset MOVE_BITE, 6
	learnset MOVE_FAKE_OUT, 8
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_PAY_DAY, 12
	learnset MOVE_SCREECH, 14
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SPITE, 18
	learnset MOVE_HYPNOSIS, 20
	learnset MOVE_FEINT_ATTACK, 22
	learnset MOVE_SLASH, 24
	learnset MOVE_NIGHT_SLASH, 24
	learnset MOVE_CHARM, 27
	learnset MOVE_POWER_GEM, 28
	learnset MOVE_FOUL_PLAY, 32
	learnset MOVE_SWITCHEROO, 36
	learnset MOVE_NASTY_PLOT, 40
	learnset MOVE_PLAY_ROUGH, 44
	learnset MOVE_CAPTIVATE, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_LAST_RESORT, 56
    terminatelearnset


levelup SPECIES_PSYDUCK
	learnset MOVE_SCRATCH, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_DISABLE, 6
	learnset MOVE_CLEAR_SMOG, 8
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_YAWN, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_ZEN_HEADBUTT, 18
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_SOAK, 22
	learnset MOVE_HYPNOSIS, 24
	learnset MOVE_SIMPLE_BEAM, 26
	learnset MOVE_SYNCHRONOISE, 28
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_FUTURE_SIGHT, 33
	learnset MOVE_WORRY_SEED, 36
	learnset MOVE_AMNESIA, 39
	learnset MOVE_CROSS_CHOP, 42
	learnset MOVE_WAVE_CRASH, 46
	learnset MOVE_WONDER_ROOM, 50
	learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_GOLDUCK
	learnset MOVE_AQUA_JET, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_ROLE_PLAY, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_DISABLE, 6
	learnset MOVE_CLEAR_SMOG, 8
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_YAWN, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_ZEN_HEADBUTT, 18
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_SOAK, 22
	learnset MOVE_HYPNOSIS, 24
	learnset MOVE_REFRESH, 25
	learnset MOVE_SIMPLE_BEAM, 27
	learnset MOVE_SYNCHRONOISE, 29
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_FUTURE_SIGHT, 34
	learnset MOVE_WORRY_SEED, 37
	learnset MOVE_AMNESIA, 40
	learnset MOVE_CROSS_CHOP, 44
	learnset MOVE_WAVE_CRASH, 48
	learnset MOVE_WONDER_ROOM, 52
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_MANKEY
	learnset MOVE_LEER, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_COVET, 4
	learnset MOVE_LOW_KICK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_SEISMIC_TOSS, 12
	learnset MOVE_PAYBACK, 14
	learnset MOVE_KARATE_CHOP, 16
	learnset MOVE_ACUPRESSURE, 18
	learnset MOVE_BULLDOZE, 20
	learnset MOVE_ASSURANCE, 23
	learnset MOVE_REVENGE, 26
	learnset MOVE_SKULL_BASH, 29
	learnset MOVE_LUNGE, 32
	learnset MOVE_FOCUS_ENERGY, 35
	learnset MOVE_SLASH, 38
	learnset MOVE_NIGHT_SLASH, 38
	learnset MOVE_RAGING_FURY, 42
	learnset MOVE_BEAT_UP, 46
	learnset MOVE_OUTRAGE, 50
	learnset MOVE_CLOSE_COMBAT, 54
	learnset MOVE_FINAL_GAMBIT, 58
    terminatelearnset


levelup SPECIES_PRIMEAPE
	learnset MOVE_LEER, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_COVET, 4
	learnset MOVE_LOW_KICK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_SEISMIC_TOSS, 12
	learnset MOVE_PAYBACK, 14
	learnset MOVE_KARATE_CHOP, 16
	learnset MOVE_ACUPRESSURE, 18
	learnset MOVE_BULLDOZE, 20
	learnset MOVE_ASSURANCE, 23
	learnset MOVE_REVENGE, 26
	learnset MOVE_CROSS_CHOP, 28
	learnset MOVE_SKULL_BASH, 30
	learnset MOVE_LUNGE, 33
	learnset MOVE_FOCUS_ENERGY, 36
	learnset MOVE_SLASH, 39
	learnset MOVE_NIGHT_SLASH, 39
	learnset MOVE_RAGING_FURY, 43
	learnset MOVE_BEAT_UP, 47
	learnset MOVE_OUTRAGE, 51
	learnset MOVE_CLOSE_COMBAT, 55
	learnset MOVE_HEADLONG_RUSH, 59
	learnset MOVE_FINAL_GAMBIT, 64
    terminatelearnset


levelup SPECIES_GROWLITHE
	learnset MOVE_EMBER, 1
	learnset MOVE_LEER, 1
	learnset MOVE_LICK, 1
	learnset MOVE_DOUBLE_KICK, 4
	learnset MOVE_HOWL, 7
	learnset MOVE_FIRE_FANG, 10
	learnset MOVE_HELPING_HAND, 13
	learnset MOVE_COVET, 16
	learnset MOVE_FLAME_WHEEL, 18
	learnset MOVE_BITE, 20
	learnset MOVE_REVERSAL, 22
	learnset MOVE_DRAGON_BREATH, 24
	learnset MOVE_TAKE_DOWN, 26
	learnset MOVE_FLAME_BURST, 28
	learnset MOVE_AGILITY, 30
	learnset MOVE_RAGING_FURY, 33
	learnset MOVE_WILL_O_WISP, 36
	learnset MOVE_BODY_SLAM, 39
	learnset MOVE_CRUNCH, 42
	learnset MOVE_OUTRAGE, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_CLOSE_COMBAT, 54
	learnset MOVE_MORNING_SUN, 58
	learnset MOVE_FLARE_BLITZ, 62
    terminatelearnset


levelup SPECIES_ARCANINE
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_RAGING_FURY, 1
	learnset MOVE_SCORCHING_SANDS, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_EXTREME_SPEED, 45
	learnset MOVE_CLOSE_COMBAT, 50
	learnset MOVE_FLARE_BLITZ, 55
	learnset MOVE_MORNING_SUN, 65
    terminatelearnset


levelup SPECIES_POLIWAG
	learnset MOVE_POUND, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_HYPNOSIS, 6
	learnset MOVE_WATER_GUN, 9
	learnset MOVE_DOUBLE_SLAP, 12
	learnset MOVE_MIST, 15
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_MUD_SHOT, 21
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_MUD_BOMB, 27
	learnset MOVE_BELLY_DRUM, 30
	learnset MOVE_ENDEAVOR, 33
	learnset MOVE_HAZE, 36
	learnset MOVE_HELPING_HAND, 39
    terminatelearnset


levelup SPECIES_POLIWHIRL
	learnset MOVE_POUND, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_HYPNOSIS, 6
	learnset MOVE_WATER_GUN, 9
	learnset MOVE_DOUBLE_SLAP, 12
	learnset MOVE_WATERFALL, 15
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_MUD_SHOT, 21
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_WAKE_UP_SLAP, 25
	learnset MOVE_MUD_BOMB, 28
	learnset MOVE_BELLY_DRUM, 31
	learnset MOVE_ENDEAVOR, 34
	learnset MOVE_HAZE, 37
	learnset MOVE_HELPING_HAND, 40
	learnset MOVE_FOCUS_PUNCH, 44
	learnset MOVE_STORM_THROW, 48
	learnset MOVE_DRAIN_PUNCH, 52
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_POLIWRATH
	learnset MOVE_DUAL_CHOP, 1
	learnset MOVE_LOVELY_KISS, 1
	learnset MOVE_WATERFALL, 1
	learnset MOVE_HIGH_HORSEPOWER, 1
	learnset MOVE_DRAIN_PUNCH, 15
	learnset MOVE_CIRCLE_THROW, 25
	learnset MOVE_DYNAMIC_PUNCH, 35
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_MIND_READER, 45
	learnset MOVE_STORM_THROW, 50
	learnset MOVE_CLOSE_COMBAT, 55
	learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_ABRA
	learnset MOVE_TELEPORT, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_KINESIS, 1
    terminatelearnset


levelup SPECIES_KADABRA
	learnset MOVE_TELEPORT, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_KINESIS, 1
	learnset MOVE_CONFUSION, 16
	learnset MOVE_DISABLE, 19
	learnset MOVE_SHOCK_WAVE, 20
	learnset MOVE_MIRACLE_EYE, 22
	learnset MOVE_ALLY_SWITCH, 23
	learnset MOVE_WONDER_ROOM, 26
	learnset MOVE_PSYBEAM, 29
	learnset MOVE_GRAVITY, 31
	learnset MOVE_TELEKINESIS, 34
	learnset MOVE_RECOVER, 36
	learnset MOVE_FUTURE_SIGHT, 39
	learnset MOVE_ROLE_PLAY, 42
	learnset MOVE_PSYCHIC, 46
	learnset MOVE_TRICK, 49
	learnset MOVE_STORED_POWER, 52
	learnset MOVE_NASTY_PLOT, 56
    terminatelearnset


levelup SPECIES_ALAKAZAM
	learnset MOVE_GRAVITY, 1
	learnset MOVE_TELEPORT, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_KINESIS, 1
	learnset MOVE_CONFUSION, 16
	learnset MOVE_DISABLE, 19
	learnset MOVE_SHOCK_WAVE, 20
	learnset MOVE_MIRACLE_EYE, 22
	learnset MOVE_ALLY_SWITCH, 23
	learnset MOVE_WONDER_ROOM, 26
	learnset MOVE_PSYBEAM, 29
	learnset MOVE_GRAVITY, 31
	learnset MOVE_TELEKINESIS, 34
	learnset MOVE_RECOVER, 36
	learnset MOVE_FUTURE_SIGHT, 39
	learnset MOVE_ROLE_PLAY, 42
	learnset MOVE_PSYCHIC, 46
	learnset MOVE_TRICK, 49
	learnset MOVE_STORED_POWER, 52
	learnset MOVE_NASTY_PLOT, 56
    terminatelearnset


levelup SPECIES_MACHOP
	learnset MOVE_KARATE_CHOP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_COUNTER, 4
	learnset MOVE_LOW_KICK, 7
	learnset MOVE_MEDITATE, 9
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_DOUBLE_HIT, 13
	learnset MOVE_DUAL_CHOP, 15
	learnset MOVE_REVENGE, 17
	learnset MOVE_TICKLE, 19
	learnset MOVE_BULLET_PUNCH, 21
	learnset MOVE_VITAL_THROW, 23
	learnset MOVE_HELPING_HAND, 25
	learnset MOVE_ROCK_TOMB, 27
	learnset MOVE_SCARY_FACE, 29
	learnset MOVE_MACH_PUNCH, 32
	learnset MOVE_DOUBLE_EDGE, 35
	learnset MOVE_DRAIN_PUNCH, 38
	learnset MOVE_HEAVY_SLAM, 41
	learnset MOVE_CROSS_CHOP, 44
	learnset MOVE_HIGH_HORSEPOWER, 48
	learnset MOVE_CROSS_POISON, 52
	learnset MOVE_CLOSE_COMBAT, 56
    terminatelearnset


levelup SPECIES_MACHOKE
	learnset MOVE_KARATE_CHOP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_COUNTER, 4
	learnset MOVE_LOW_KICK, 7
	learnset MOVE_MEDITATE, 9
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_DOUBLE_HIT, 13
	learnset MOVE_DUAL_CHOP, 15
	learnset MOVE_REVENGE, 17
	learnset MOVE_TICKLE, 19
	learnset MOVE_BULLET_PUNCH, 21
	learnset MOVE_VITAL_THROW, 23
	learnset MOVE_HELPING_HAND, 25
	learnset MOVE_ROCK_TOMB, 27
	learnset MOVE_SCARY_FACE, 30
	learnset MOVE_MACH_PUNCH, 33
	learnset MOVE_DOUBLE_EDGE, 36
	learnset MOVE_DRAIN_PUNCH, 39
	learnset MOVE_HEAVY_SLAM, 42
	learnset MOVE_CROSS_CHOP, 45
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_DYNAMIC_PUNCH, 53
	learnset MOVE_CROSS_POISON, 57
	learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_MACHAMP
	learnset MOVE_KARATE_CHOP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_COUNTER, 4
	learnset MOVE_LOW_KICK, 7
	learnset MOVE_MEDITATE, 9
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_DOUBLE_HIT, 13
	learnset MOVE_DUAL_CHOP, 15
	learnset MOVE_REVENGE, 17
	learnset MOVE_TICKLE, 19
	learnset MOVE_BULLET_PUNCH, 21
	learnset MOVE_VITAL_THROW, 23
	learnset MOVE_HELPING_HAND, 25
	learnset MOVE_ROCK_TOMB, 27
	learnset MOVE_SCARY_FACE, 30
	learnset MOVE_MACH_PUNCH, 33
	learnset MOVE_DOUBLE_EDGE, 36
	learnset MOVE_DRAIN_PUNCH, 39
	learnset MOVE_HEAVY_SLAM, 42
	learnset MOVE_CROSS_CHOP, 45
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_DYNAMIC_PUNCH, 53
	learnset MOVE_CROSS_POISON, 57
	learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_BELLSPROUT
	learnset MOVE_WRAP, 1
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_TICKLE, 4
	learnset MOVE_ACID, 6
	learnset MOVE_RAZOR_LEAF, 8
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_CLEAR_SMOG, 12
	learnset MOVE_BULLET_SEED, 14
	learnset MOVE_ACID_SPRAY, 17
	learnset MOVE_NATURE_POWER, 20
	learnset MOVE_SEED_BOMB, 24
	learnset MOVE_SUCKER_PUNCH, 27
	learnset MOVE_KNOCK_OFF, 30
	learnset MOVE_SYNTHESIS, 34
	learnset MOVE_GASTRO_ACID, 38
	learnset MOVE_NATURAL_GIFT, 42
	learnset MOVE_LEECH_LIFE, 46
	learnset MOVE_POWER_WHIP, 50
	learnset MOVE_GROWTH, 54
    terminatelearnset


levelup SPECIES_WEEPINBELL
	learnset MOVE_WRAP, 1
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_TICKLE, 4
	learnset MOVE_ACID, 6
	learnset MOVE_RAZOR_LEAF, 8
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_CLEAR_SMOG, 12
	learnset MOVE_BULLET_SEED, 14
	learnset MOVE_ACID_SPRAY, 17
	learnset MOVE_NATURE_POWER, 20
	learnset MOVE_SLEEP_POWDER, 21
	learnset MOVE_SEED_BOMB, 25
	learnset MOVE_SUCKER_PUNCH, 29
	learnset MOVE_KNOCK_OFF, 33
	learnset MOVE_SYNTHESIS, 36
	learnset MOVE_GASTRO_ACID, 39
	learnset MOVE_NATURAL_GIFT, 43
	learnset MOVE_LEECH_LIFE, 47
	learnset MOVE_POWER_WHIP, 52
	learnset MOVE_GROWTH, 56
    terminatelearnset


levelup SPECIES_VICTREEBEL
	learnset MOVE_GASTRO_ACID, 1
	learnset MOVE_LEECH_LIFE, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_LEAF_TORNADO, 27
	learnset MOVE_LEAF_BLADE, 37
	learnset MOVE_LEAF_STORM, 47
	learnset MOVE_POWER_WHIP, 57
	learnset MOVE_GROWTH, 65
    terminatelearnset


levelup SPECIES_TENTACOOL
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_SCREECH, 4
	learnset MOVE_ACID, 7
	learnset MOVE_TOXIC_SPIKES, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_RAPID_SPIN, 16
	learnset MOVE_MEGA_DRAIN, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_BARRIER, 25
	learnset MOVE_HEX, 28
	learnset MOVE_MUDDY_WATER, 31
	learnset MOVE_ACID_ARMOR, 34
	learnset MOVE_AURORA_BEAM, 37
	learnset MOVE_AQUA_RING, 40
	learnset MOVE_CROSS_POISON, 43
	learnset MOVE_WRING_OUT, 46
	learnset MOVE_ACUPRESSURE, 49
	learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset


levelup SPECIES_TENTACRUEL
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_SCREECH, 4
	learnset MOVE_ACID, 7
	learnset MOVE_TOXIC_SPIKES, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_RAPID_SPIN, 16
	learnset MOVE_MEGA_DRAIN, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_BARRIER, 25
	learnset MOVE_HEX, 28
	learnset MOVE_HAZE, 30
	learnset MOVE_MUDDY_WATER, 31
	learnset MOVE_ACID_ARMOR, 35
	learnset MOVE_AURORA_BEAM, 39
	learnset MOVE_AQUA_RING, 43
	learnset MOVE_CROSS_POISON, 47
	learnset MOVE_WRING_OUT, 52
	learnset MOVE_ACUPRESSURE, 56
	learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_GEODUDE
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLAIL, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_BULLDOZE, 10
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_RAPID_SPIN, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_FLING, 22
	learnset MOVE_ACCELEROCK, 25
	learnset MOVE_STEALTH_ROCK, 28
	learnset MOVE_ROCK_BLAST, 31
	learnset MOVE_EARTH_POWER, 34
	learnset MOVE_SUCKER_PUNCH, 37
	learnset MOVE_EXPLOSION, 41
	learnset MOVE_STONE_EDGE, 45
	learnset MOVE_DOUBLE_EDGE, 49
	learnset MOVE_HAMMER_ARM, 53
	learnset MOVE_WIDE_GUARD, 57
    terminatelearnset


levelup SPECIES_GRAVELER
	learnset MOVE_AUTOTOMIZE, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLAIL, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_BULLDOZE, 10
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_RAPID_SPIN, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_FLING, 22
	learnset MOVE_ACCELEROCK, 25
	learnset MOVE_STEALTH_ROCK, 29
	learnset MOVE_ROCK_BLAST, 32
	learnset MOVE_EARTH_POWER, 35
	learnset MOVE_SUCKER_PUNCH, 38
	learnset MOVE_EXPLOSION, 42
	learnset MOVE_STONE_EDGE, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_HAMMER_ARM, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_HEADLONG_RUSH, 62
    terminatelearnset


levelup SPECIES_GOLEM
	learnset MOVE_STEAMROLLER, 1
	learnset MOVE_AUTOTOMIZE, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_FLAIL, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_BULLDOZE, 10
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_RAPID_SPIN, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_FLING, 22
	learnset MOVE_ACCELEROCK, 25
	learnset MOVE_STEALTH_ROCK, 29
	learnset MOVE_ROCK_BLAST, 32
	learnset MOVE_EARTH_POWER, 35
	learnset MOVE_SUCKER_PUNCH, 38
	learnset MOVE_EXPLOSION, 42
	learnset MOVE_STONE_EDGE, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_HAMMER_ARM, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_HEADLONG_RUSH, 62
	learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_PONYTA
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_EMBER, 6
	learnset MOVE_DOUBLE_HIT, 9
	learnset MOVE_STOMP, 12
	learnset MOVE_FIRE_SPIN, 14
	learnset MOVE_FLAME_WHEEL, 16
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_CHARM, 20
	learnset MOVE_FLAME_CHARGE, 23
	learnset MOVE_AGILITY, 26
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_HYPNOSIS, 32
	learnset MOVE_BLAZE_KICK, 35
	learnset MOVE_SMART_STRIKE, 38
	learnset MOVE_PLAY_ROUGH, 41
	learnset MOVE_HIGH_HORSEPOWER, 44
	learnset MOVE_JUMP_KICK, 47
	learnset MOVE_MORNING_SUN, 50
	learnset MOVE_BOUNCE, 54
	learnset MOVE_FLARE_BLITZ, 58
    terminatelearnset


levelup SPECIES_RAPIDASH
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_EMBER, 6
	learnset MOVE_DOUBLE_HIT, 9
	learnset MOVE_STOMP, 12
	learnset MOVE_FIRE_SPIN, 14
	learnset MOVE_FLAME_WHEEL, 16
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_CHARM, 20
	learnset MOVE_FLAME_CHARGE, 23
	learnset MOVE_AGILITY, 26
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_HYPNOSIS, 32
	learnset MOVE_BLAZE_KICK, 35
	learnset MOVE_SMART_STRIKE, 39
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_HIGH_HORSEPOWER, 45
	learnset MOVE_JUMP_KICK, 49
	learnset MOVE_MORNING_SUN, 53
	learnset MOVE_BOUNCE, 57
	learnset MOVE_FLARE_BLITZ, 61
    terminatelearnset


levelup SPECIES_SLOWPOKE
	learnset MOVE_CURSE, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_CONFUSION, 10
	learnset MOVE_DISABLE, 13
	learnset MOVE_BRINE, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_ZEN_HEADBUTT, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_WONDER_ROOM, 28
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_WITHDRAW, 33
	learnset MOVE_BELLY_DRUM, 35
	learnset MOVE_BUBBLE_BEAM, 38
	learnset MOVE_PSYCH_UP, 41
	learnset MOVE_FUTURE_SIGHT, 44
	learnset MOVE_SKILL_SWAP, 47
	learnset MOVE_HEAL_PULSE, 50
	learnset MOVE_BODY_SLAM, 53
    terminatelearnset


levelup SPECIES_SLOWBRO
	learnset MOVE_CURSE, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_CONFUSION, 10
	learnset MOVE_DISABLE, 13
	learnset MOVE_BRINE, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_ZEN_HEADBUTT, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_WONDER_ROOM, 28
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_WITHDRAW, 33
	learnset MOVE_BELLY_DRUM, 37
	learnset MOVE_BUBBLE_BEAM, 41
	learnset MOVE_PSYCH_UP, 45
	learnset MOVE_FUTURE_SIGHT, 49
	learnset MOVE_SKILL_SWAP, 53
	learnset MOVE_HEAL_PULSE, 57
	learnset MOVE_NASTY_PLOT, 61
	learnset MOVE_SLACK_OFF, 65
    terminatelearnset


levelup SPECIES_MAGNEMITE
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_SONIC_BOOM, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_MAGNET_BOMB, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_MIRROR_SHOT, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_LOCK_ON, 31
	learnset MOVE_SIGNAL_BEAM, 34
	learnset MOVE_GYRO_BALL, 38
	learnset MOVE_MAGIC_COAT, 42
	learnset MOVE_RECYCLE, 46
	learnset MOVE_EXPLOSION, 51
	learnset MOVE_DISCHARGE, 56
	learnset MOVE_GRAVITY, 60
	learnset MOVE_ZAP_CANNON, 64
    terminatelearnset


levelup SPECIES_MAGNETON
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_SONIC_BOOM, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_MAGNET_BOMB, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_MIRROR_SHOT, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_TRI_ATTACK, 30
	learnset MOVE_LOCK_ON, 32
	learnset MOVE_SIGNAL_BEAM, 36
	learnset MOVE_GYRO_BALL, 40
	learnset MOVE_MAGIC_COAT, 44
	learnset MOVE_RECYCLE, 48
	learnset MOVE_EXPLOSION, 53
	learnset MOVE_DISCHARGE, 57
	learnset MOVE_GRAVITY, 61
	learnset MOVE_ZAP_CANNON, 66
    terminatelearnset


levelup SPECIES_FARFETCHD
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_FEINT, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_AIR_CUTTER, 10
	learnset MOVE_FORESIGHT, 13
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_AERIAL_ACE, 19
	learnset MOVE_FORESIGHT, 22
	learnset MOVE_REVENGE, 25
	learnset MOVE_FEATHER_DANCE, 28
	learnset MOVE_SIMPLE_BEAM, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_QUICK_GUARD, 37
	learnset MOVE_DUAL_WINGBEAT, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_LEAF_BLADE, 48
	learnset MOVE_SKY_ATTACK, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_BRAVE_BIRD, 60
	learnset MOVE_CLOSE_COMBAT, 64
	learnset MOVE_FINAL_GAMBIT, 68
    terminatelearnset


levelup SPECIES_DODUO
	learnset MOVE_GROWL, 1
	learnset MOVE_PECK, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_LEER, 4
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_ASSURANCE, 16
	learnset MOVE_QUICK_ATTACK, 19
	learnset MOVE_DOUBLE_HIT, 22
	learnset MOVE_ENDEAVOR, 25
	learnset MOVE_JUMP_KICK, 28
	learnset MOVE_ACUPRESSURE, 31
	learnset MOVE_MIRROR_MOVE, 34
	learnset MOVE_DRILL_PECK, 37
	learnset MOVE_LUNGE, 40
	learnset MOVE_HAZE, 43
	learnset MOVE_FLAIL, 46
	learnset MOVE_AGILITY, 49
	learnset MOVE_HIGH_JUMP_KICK, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_BRAVE_BIRD, 60
    terminatelearnset


levelup SPECIES_DODRIO
	learnset MOVE_UPROAR, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_PECK, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_LEER, 4
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_ASSURANCE, 16
	learnset MOVE_QUICK_ATTACK, 19
	learnset MOVE_DOUBLE_HIT, 22
	learnset MOVE_ENDEAVOR, 25
	learnset MOVE_JUMP_KICK, 28
	learnset MOVE_ACUPRESSURE, 31
	learnset MOVE_TRI_ATTACK, 31
	learnset MOVE_MIRROR_MOVE, 35
	learnset MOVE_DRILL_PECK, 38
	learnset MOVE_LUNGE, 42
	learnset MOVE_HAZE, 46
	learnset MOVE_FLAIL, 50
	learnset MOVE_AGILITY, 54
	learnset MOVE_HIGH_JUMP_KICK, 58
	learnset MOVE_DOUBLE_EDGE, 62
	learnset MOVE_BRAVE_BIRD, 66
    terminatelearnset


levelup SPECIES_SEEL
	learnset MOVE_BIDE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_POWDER_SNOW, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_DISABLE, 13
	learnset MOVE_ICE_SHARD, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_ENTRAINMENT, 25
	learnset MOVE_BRINE, 28
	learnset MOVE_AURORA_BEAM, 31
	learnset MOVE_AQUA_JET, 34
	learnset MOVE_AQUA_RING, 37
	learnset MOVE_ICICLE_SPEAR, 40
	learnset MOVE_SMART_STRIKE, 44
	learnset MOVE_AQUA_TAIL, 48
	learnset MOVE_ICICLE_CRASH, 52
	learnset MOVE_PERISH_SONG, 56
    terminatelearnset


levelup SPECIES_DEWGONG
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_POWDER_SNOW, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_DISABLE, 13
	learnset MOVE_ICE_SHARD, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_ENTRAINMENT, 25
	learnset MOVE_BRINE, 28
	learnset MOVE_AURORA_BEAM, 31
	learnset MOVE_AQUA_JET, 34
	learnset MOVE_AQUA_RING, 38
	learnset MOVE_ICICLE_SPEAR, 42
	learnset MOVE_SMART_STRIKE, 46
	learnset MOVE_AQUA_TAIL, 50
	learnset MOVE_ICICLE_CRASH, 54
	learnset MOVE_PERISH_SONG, 58
	learnset MOVE_SLACK_OFF, 62
	learnset MOVE_SHEER_COLD, 66
    terminatelearnset


levelup SPECIES_GRIMER
	learnset MOVE_POUND, 1
	learnset MOVE_HARDEN, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_DISABLE, 10
	learnset MOVE_SLUDGE, 13
	learnset MOVE_MUD_BOMB, 15
	learnset MOVE_MINIMIZE, 17
	learnset MOVE_SLUDGE, 19
	learnset MOVE_SHADOW_SNEAK, 21
	learnset MOVE_HAZE, 23
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_FLING, 27
	learnset MOVE_ACID_SPRAY, 29
	learnset MOVE_PAYBACK, 32
	learnset MOVE_SCREECH, 35
	learnset MOVE_SLUDGE_WAVE, 38
	learnset MOVE_ACID_ARMOR, 42
	learnset MOVE_MEAN_LOOK, 46
	learnset MOVE_IMPRISON, 50
	learnset MOVE_GUNK_SHOT, 54
	learnset MOVE_MEMENTO, 58
    terminatelearnset


levelup SPECIES_MUK
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_CLEAR_SMOG, 1
	learnset MOVE_CURSE, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_HARDEN, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_DISABLE, 10
	learnset MOVE_SLUDGE, 13
	learnset MOVE_MUD_BOMB, 15
	learnset MOVE_MINIMIZE, 17
	learnset MOVE_SLUDGE, 19
	learnset MOVE_SHADOW_SNEAK, 21
	learnset MOVE_HAZE, 23
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_FLING, 27
	learnset MOVE_ACID_SPRAY, 29
	learnset MOVE_PAYBACK, 31
	learnset MOVE_SCREECH, 34
	learnset MOVE_SHADOW_PUNCH, 35
	learnset MOVE_SLUDGE_WAVE, 39
	learnset MOVE_ACID_ARMOR, 43
	learnset MOVE_MEAN_LOOK, 47
	learnset MOVE_IMPRISON, 51
	learnset MOVE_GUNK_SHOT, 55
	learnset MOVE_MEMENTO, 59
    terminatelearnset


levelup SPECIES_SHELLDER
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_LEER, 4
	learnset MOVE_AQUA_RING, 7
	learnset MOVE_RAPID_SPIN, 10
	learnset MOVE_MUD_SHOT, 13
	learnset MOVE_WHIRLPOOL, 16
	learnset MOVE_WATER_PULSE, 19
	learnset MOVE_SCREECH, 22
	learnset MOVE_AURORA_BEAM, 25
	learnset MOVE_SPIKES, 28
	learnset MOVE_BUBBLE_BEAM, 32
	learnset MOVE_IRON_DEFENSE, 36
	learnset MOVE_RAZOR_SHELL, 40
	learnset MOVE_TAKE_DOWN, 44
	learnset MOVE_AVALANCHE, 48
	learnset MOVE_TWINEEDLE, 52
	learnset MOVE_PAYBACK, 56
	learnset MOVE_ROCK_BLAST, 60
	learnset MOVE_HYDRO_PUMP, 64
	learnset MOVE_ICICLE_SPEAR, 68
	learnset MOVE_ICE_SHARD, 73
    terminatelearnset


levelup SPECIES_CLOYSTER
	learnset MOVE_AURORA_BEAM, 1
	learnset MOVE_PIN_MISSILE, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_SMART_STRIKE, 19
	learnset MOVE_SPIKES, 31
	learnset MOVE_RAZOR_SHELL, 40
	learnset MOVE_TWINEEDLE, 50
	learnset MOVE_ICICLE_CRASH, 58
	learnset MOVE_ROCK_BLAST, 63
	learnset MOVE_ICICLE_SPEAR, 69
	learnset MOVE_ICE_SHARD, 74
	learnset MOVE_SHELL_SMASH, 78
    terminatelearnset


levelup SPECIES_GASTLY
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_SMOG, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_POISON_GAS, 21
	learnset MOVE_CLEAR_SMOG, 23
	learnset MOVE_DISABLE, 25
	learnset MOVE_REFLECT_TYPE, 27
	learnset MOVE_DREAM_EATER, 29
	learnset MOVE_HEX, 32
	learnset MOVE_SLUDGE, 35
	learnset MOVE_NIGHTMARE, 38
	learnset MOVE_HAZE, 41
	learnset MOVE_GRUDGE, 44
	learnset MOVE_MEGA_DRAIN, 48
	learnset MOVE_DESTINY_BOND, 52
	learnset MOVE_PERISH_SONG, 56
    terminatelearnset


levelup SPECIES_HAUNTER
	learnset MOVE_LICK, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_SMOG, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_POISON_GAS, 21
	learnset MOVE_CLEAR_SMOG, 23
	learnset MOVE_SHADOW_PUNCH, 24
	learnset MOVE_SUCKER_PUNCH, 24
	learnset MOVE_DISABLE, 26
	learnset MOVE_REFLECT_TYPE, 28
	learnset MOVE_DREAM_EATER, 30
	learnset MOVE_HEX, 33
	learnset MOVE_SLUDGE, 36
	learnset MOVE_NIGHTMARE, 39
	learnset MOVE_HAZE, 42
	learnset MOVE_GRUDGE, 46
	learnset MOVE_MEGA_DRAIN, 50
	learnset MOVE_DESTINY_BOND, 55
	learnset MOVE_PERISH_SONG, 60
	learnset MOVE_NASTY_PLOT, 65
    terminatelearnset


levelup SPECIES_GENGAR
	learnset MOVE_ZAP_CANNON, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_TRICK, 1
	learnset MOVE_SMOG, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_POISON_GAS, 21
	learnset MOVE_CLEAR_SMOG, 23
	learnset MOVE_SHADOW_PUNCH, 24
	learnset MOVE_SUCKER_PUNCH, 24
	learnset MOVE_DISABLE, 26
	learnset MOVE_REFLECT_TYPE, 28
	learnset MOVE_DREAM_EATER, 30
	learnset MOVE_HEX, 33
	learnset MOVE_SLUDGE, 36
	learnset MOVE_NIGHTMARE, 39
	learnset MOVE_HAZE, 42
	learnset MOVE_GRUDGE, 46
	learnset MOVE_MEGA_DRAIN, 50
	learnset MOVE_DESTINY_BOND, 55
	learnset MOVE_PERISH_SONG, 60
	learnset MOVE_NASTY_PLOT, 65
    terminatelearnset


levelup SPECIES_ONIX
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_BIND, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_BULLDOZE, 10
	learnset MOVE_ROLLOUT, 13
	learnset MOVE_STEALTH_ROCK, 16
	learnset MOVE_SCREECH, 19
	learnset MOVE_SCORCHING_SANDS, 22
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_COIL, 28
	learnset MOVE_ROCK_SLIDE, 31
	learnset MOVE_ROCK_BLAST, 34
	learnset MOVE_DRAGON_TAIL, 37
	learnset MOVE_HIGH_HORSEPOWER, 40
	learnset MOVE_AUTOTOMIZE, 44
	learnset MOVE_FIRE_FANG, 48
	learnset MOVE_ICE_FANG, 48
	learnset MOVE_THUNDER_FANG, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_HEAD_SMASH, 56
	learnset MOVE_WIDE_GUARD, 60
	learnset MOVE_HEAVY_SLAM, 64
	learnset MOVE_DRAGON_DANCE, 68
    terminatelearnset


levelup SPECIES_DROWZEE
	learnset MOVE_DREAM_EATER, 1
	learnset MOVE_POUND, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_DISABLE, 6
	learnset MOVE_CONFUSION, 9
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_HYPNOSIS, 18
	learnset MOVE_MEDITATE, 21
	learnset MOVE_PSYCHO_CUT, 24
	learnset MOVE_WAKE_UP_SLAP, 27
	learnset MOVE_PSYCH_UP, 30
	learnset MOVE_ZEN_HEADBUTT, 33
	learnset MOVE_DREAM_EATER, 36
	learnset MOVE_SYNCHRONOISE, 39
	learnset MOVE_NIGHTMARE, 42
	learnset MOVE_NASTY_PLOT, 45
	learnset MOVE_RECOVER, 48
	learnset MOVE_FUTURE_SIGHT, 51
    terminatelearnset


levelup SPECIES_HYPNO
	learnset MOVE_NIGHTMARE, 1
	learnset MOVE_SWITCHEROO, 1
	learnset MOVE_POUND, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_DISABLE, 6
	learnset MOVE_CONFUSION, 9
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_HYPNOSIS, 18
	learnset MOVE_MEDITATE, 21
	learnset MOVE_PSYCHO_CUT, 24
	learnset MOVE_SING, 26
	learnset MOVE_WAKE_UP_SLAP, 30
	learnset MOVE_PSYCH_UP, 34
	learnset MOVE_ZEN_HEADBUTT, 38
	learnset MOVE_DREAM_EATER, 42
	learnset MOVE_SYNCHRONOISE, 46
	learnset MOVE_NIGHTMARE, 50
	learnset MOVE_NASTY_PLOT, 54
	learnset MOVE_RECOVER, 58
	learnset MOVE_FUTURE_SIGHT, 62
    terminatelearnset


levelup SPECIES_KRABBY
	learnset MOVE_BIDE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_TICKLE, 8
	learnset MOVE_BUBBLE_BEAM, 11
	learnset MOVE_MUD_SHOT, 14
	learnset MOVE_METAL_CLAW, 17
	learnset MOVE_RAZOR_SHELL, 20
	learnset MOVE_STOMP, 23
	learnset MOVE_FURY_CUTTER, 26
	learnset MOVE_AGILITY, 29
	learnset MOVE_CHIP_AWAY, 32
	learnset MOVE_HAZE, 35
	learnset MOVE_AMNESIA, 38
	learnset MOVE_HAMMER_ARM, 42
	learnset MOVE_CRABHAMMER, 46
	learnset MOVE_HIGH_HORSEPOWER, 50
	learnset MOVE_DOUBLE_EDGE, 54
	learnset MOVE_GUILLOTINE, 58
    terminatelearnset


levelup SPECIES_KINGLER
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_TICKLE, 8
	learnset MOVE_BUBBLE_BEAM, 11
	learnset MOVE_MUD_SHOT, 14
	learnset MOVE_METAL_CLAW, 17
	learnset MOVE_RAZOR_SHELL, 20
	learnset MOVE_STOMP, 23
	learnset MOVE_FURY_CUTTER, 26
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_AGILITY, 31
	learnset MOVE_CHIP_AWAY, 34
	learnset MOVE_HAZE, 37
	learnset MOVE_AMNESIA, 40
	learnset MOVE_HAMMER_ARM, 44
	learnset MOVE_CRABHAMMER, 48
	learnset MOVE_HIGH_HORSEPOWER, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_GUILLOTINE, 60
    terminatelearnset


levelup SPECIES_VOLTORB
	learnset MOVE_CHARGE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SPARK, 1
	learnset MOVE_AGILITY, 4
	learnset MOVE_THUNDER_WAVE, 7
	learnset MOVE_SCREECH, 10
	learnset MOVE_THUNDER_SHOCK, 13
	learnset MOVE_SONIC_BOOM, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_SWIFT, 25
	learnset MOVE_VOLT_SWITCH, 28
	learnset MOVE_SUCKER_PUNCH, 31
	learnset MOVE_SIGNAL_BEAM, 35
	learnset MOVE_MAGNET_RISE, 39
	learnset MOVE_MIRROR_COAT, 43
	learnset MOVE_DISCHARGE, 47
	learnset MOVE_FOUL_PLAY, 51
	learnset MOVE_ZAP_CANNON, 55
	learnset MOVE_EXPLOSION, 59
    terminatelearnset


levelup SPECIES_ELECTRODE
	learnset MOVE_CHARGE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SPARK, 1
	learnset MOVE_AGILITY, 4
	learnset MOVE_THUNDER_WAVE, 7
	learnset MOVE_SCREECH, 10
	learnset MOVE_THUNDER_SHOCK, 13
	learnset MOVE_SONIC_BOOM, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_SWIFT, 25
	learnset MOVE_VOLT_SWITCH, 28
	learnset MOVE_ELECTRO_BALL, 30
	learnset MOVE_SUCKER_PUNCH, 32
	learnset MOVE_SIGNAL_BEAM, 36
	learnset MOVE_MAGNET_RISE, 40
	learnset MOVE_MIRROR_COAT, 44
	learnset MOVE_DISCHARGE, 48
	learnset MOVE_FOUL_PLAY, 52
	learnset MOVE_ZAP_CANNON, 56
	learnset MOVE_EXPLOSION, 60
	learnset MOVE_BOOMBURST, 65
    terminatelearnset


levelup SPECIES_EXEGGCUTE
	learnset MOVE_ABSORB, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_PSYWAVE, 4
	learnset MOVE_NIGHTMARE, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_MEGA_DRAIN, 13
	learnset MOVE_UPROAR, 16
	learnset MOVE_CONFUSION, 19
	learnset MOVE_BULLET_SEED, 22
	learnset MOVE_LEECH_SEED, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_NATURE_POWER, 31
	learnset MOVE_GRAVITY, 34
	learnset MOVE_POISON_POWDER, 37
	learnset MOVE_SLEEP_POWDER, 37
	learnset MOVE_STUN_SPORE, 37
	learnset MOVE_FUTURE_SIGHT, 40
	learnset MOVE_MOONLIGHT, 43
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_SYNTHESIS, 50
	learnset MOVE_BESTOW, 54
	learnset MOVE_EXPLOSION, 58
	learnset MOVE_LEAF_STORM, 62
	learnset MOVE_SOFT_BOILED, 66
    terminatelearnset


levelup SPECIES_EXEGGUTOR
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_WOOD_HAMMER, 35
	learnset MOVE_EXTRASENSORY, 40
	learnset MOVE_POISON_POWDER, 50
	learnset MOVE_SLEEP_POWDER, 50
	learnset MOVE_STUN_SPORE, 50
	learnset MOVE_LEAF_STORM, 60
	learnset MOVE_SOFT_BOILED, 70
    terminatelearnset


levelup SPECIES_CUBONE
	learnset MOVE_RAGE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_HEADBUTT, 4
	learnset MOVE_FOCUS_ENERGY, 7
	learnset MOVE_BONE_CLUB, 10
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_FLING, 15
	learnset MOVE_SCORCHING_SANDS, 17
	learnset MOVE_BONEMERANG, 19
	learnset MOVE_RETALIATE, 21
	learnset MOVE_ENDEAVOR, 24
	learnset MOVE_BONE_RUSH, 27
	learnset MOVE_CURSE, 30
	learnset MOVE_CHIP_AWAY, 33
	learnset MOVE_ROCK_SLIDE, 36
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_RAGING_FURY, 44
	learnset MOVE_DOUBLE_EDGE, 48
	learnset MOVE_BELLY_DRUM, 52
	learnset MOVE_PERISH_SONG, 56
    terminatelearnset


levelup SPECIES_MAROWAK
	learnset MOVE_SING, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_HEADBUTT, 4
	learnset MOVE_FOCUS_ENERGY, 7
	learnset MOVE_BONE_CLUB, 10
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_FLING, 15
	learnset MOVE_SCORCHING_SANDS, 17
	learnset MOVE_BONEMERANG, 19
	learnset MOVE_RETALIATE, 21
	learnset MOVE_ENDEAVOR, 24
	learnset MOVE_BONE_RUSH, 27
	learnset MOVE_CURSE, 31
	learnset MOVE_CHIP_AWAY, 34
	learnset MOVE_ROCK_SLIDE, 37
	learnset MOVE_BODY_SLAM, 41
	learnset MOVE_RAGING_FURY, 45
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_BELLY_DRUM, 57
	learnset MOVE_PERISH_SONG, 61
	learnset MOVE_FLARE_BLITZ, 65
    terminatelearnset


levelup SPECIES_HITMONLEE
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_HELPING_HAND, 4
	learnset MOVE_RAPID_SPIN, 6
	learnset MOVE_COUNTER, 8
	learnset MOVE_MACH_PUNCH, 10
	learnset MOVE_PURSUIT, 12
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_COVET, 16
	learnset MOVE_DETECT, 18
	learnset MOVE_SEISMIC_TOSS, 20
	learnset MOVE_DOUBLE_KICK, 20
	learnset MOVE_BODY_SLAM, 21
	learnset MOVE_BULK_UP, 23
	learnset MOVE_BULLET_PUNCH, 25
	learnset MOVE_ROCK_TOMB, 28
	learnset MOVE_JUMP_KICK, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_FORESIGHT, 37
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_WIDE_GUARD, 44
	learnset MOVE_BLAZE_KICK, 48
	learnset MOVE_LUNGE, 52
	learnset MOVE_CLOSE_COMBAT, 56
	learnset MOVE_HIGH_JUMP_KICK, 60
	learnset MOVE_REVERSAL, 64
    terminatelearnset


levelup SPECIES_HITMONCHAN
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_HELPING_HAND, 4
	learnset MOVE_RAPID_SPIN, 6
	learnset MOVE_COUNTER, 8
	learnset MOVE_MACH_PUNCH, 10
	learnset MOVE_PURSUIT, 12
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_COVET, 16
	learnset MOVE_DETECT, 18
	learnset MOVE_SEISMIC_TOSS, 20
	learnset MOVE_SKY_UPPERCUT, 20
	learnset MOVE_BODY_SLAM, 21
	learnset MOVE_BULK_UP, 23
	learnset MOVE_BULLET_PUNCH, 25
	learnset MOVE_ROCK_TOMB, 28
	learnset MOVE_DRAIN_PUNCH, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_WIDE_GUARD, 37
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_FORESIGHT, 44
	learnset MOVE_AGILITY, 48
	learnset MOVE_LUNGE, 52
	learnset MOVE_FOCUS_PUNCH, 56
	learnset MOVE_HIGH_JUMP_KICK, 60
	learnset MOVE_CLOSE_COMBAT, 64
    terminatelearnset


levelup SPECIES_LICKITUNG
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_AMNESIA, 4
	learnset MOVE_REFRESH, 7
	learnset MOVE_SCREECH, 10
	learnset MOVE_ME_FIRST, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_STOMP, 19
	learnset MOVE_HELPING_HAND, 22
	learnset MOVE_DISABLE, 25
	learnset MOVE_SCREECH, 28
	learnset MOVE_CHIP_AWAY, 31
	learnset MOVE_MUDDY_WATER, 34
	learnset MOVE_ZEN_HEADBUTT, 37
	learnset MOVE_ROLLOUT, 40
	learnset MOVE_MAGNITUDE, 43
	learnset MOVE_BODY_SLAM, 46
	learnset MOVE_HAMMER_ARM, 50
	learnset MOVE_POWER_WHIP, 54
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_BELLY_DRUM, 62
	learnset MOVE_WRING_OUT, 66
    terminatelearnset


levelup SPECIES_KOFFING
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_UPROAR, 4
	learnset MOVE_SMOKESCREEN, 7
	learnset MOVE_SCREECH, 9
	learnset MOVE_ASSURANCE, 12
	learnset MOVE_HAZE, 15
	learnset MOVE_CLEAR_SMOG, 17
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_LAVA_PLUME, 22
	learnset MOVE_SLUDGE, 25
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_TOXIC_SPIKES, 31
	learnset MOVE_GYRO_BALL, 34
	learnset MOVE_SPITE, 37
	learnset MOVE_SLUDGE_BOMB, 40
	learnset MOVE_EXPLOSION, 44
	learnset MOVE_DESTINY_BOND, 48
	learnset MOVE_MEMENTO, 52
	learnset MOVE_GRUDGE, 56
    terminatelearnset


levelup SPECIES_WEEZING
	learnset MOVE_HEAT_WAVE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_UPROAR, 4
	learnset MOVE_SMOKESCREEN, 7
	learnset MOVE_SCREECH, 9
	learnset MOVE_ASSURANCE, 12
	learnset MOVE_HAZE, 15
	learnset MOVE_CLEAR_SMOG, 17
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_LAVA_PLUME, 22
	learnset MOVE_SLUDGE, 25
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_TOXIC_SPIKES, 31
	learnset MOVE_GYRO_BALL, 34
	learnset MOVE_DOUBLE_HIT, 35
	learnset MOVE_SPITE, 38
	learnset MOVE_SLUDGE_BOMB, 42
	learnset MOVE_EXPLOSION, 46
	learnset MOVE_DESTINY_BOND, 50
	learnset MOVE_MEMENTO, 54
	learnset MOVE_GRUDGE, 58
	learnset MOVE_GUNK_SHOT, 62
    terminatelearnset


levelup SPECIES_RHYHORN
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_FURY_ATTACK, 1
	learnset MOVE_SCARY_FACE, 4
	learnset MOVE_STOMP, 7
	learnset MOVE_HORN_ATTACK, 10
	learnset MOVE_BULLDOZE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_CHIP_AWAY, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_CRUSH_CLAW, 28
	learnset MOVE_FIRE_FANG, 31
	learnset MOVE_ICE_FANG, 31
	learnset MOVE_THUNDER_FANG, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_TAKE_DOWN, 38
	learnset MOVE_HIGH_HORSEPOWER, 42
	learnset MOVE_DRAGON_RUSH, 46
	learnset MOVE_MEGAHORN, 50
	learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset


levelup SPECIES_RHYDON
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_FURY_ATTACK, 1
	learnset MOVE_SCARY_FACE, 4
	learnset MOVE_STOMP, 7
	learnset MOVE_HORN_ATTACK, 10
	learnset MOVE_BULLDOZE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_CHIP_AWAY, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_CRUSH_CLAW, 28
	learnset MOVE_FIRE_FANG, 31
	learnset MOVE_ICE_FANG, 31
	learnset MOVE_THUNDER_FANG, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_HAMMER_ARM, 36
	learnset MOVE_TAKE_DOWN, 39
	learnset MOVE_HIGH_HORSEPOWER, 43
	learnset MOVE_DRAGON_RUSH, 47
	learnset MOVE_MEGAHORN, 51
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_HEAVY_SLAM, 59
	learnset MOVE_ROCK_WRECKER, 63
    terminatelearnset


levelup SPECIES_CHANSEY
	learnset MOVE_METRONOME, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_SING, 6
	learnset MOVE_DOUBLE_SLAP, 8
	learnset MOVE_COVET, 10
	learnset MOVE_TAKE_DOWN, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_CAPTIVATE, 18
	learnset MOVE_UPROAR, 21
	learnset MOVE_SING, 24
	learnset MOVE_BESTOW, 27
	learnset MOVE_HELPING_HAND, 30
	learnset MOVE_HEAL_PULSE, 33
	learnset MOVE_SEISMIC_TOSS, 36
	learnset MOVE_DOUBLE_EDGE, 40
	learnset MOVE_HEALING_WISH, 44
	learnset MOVE_AROMATHERAPY, 48
	learnset MOVE_COUNTER, 52
	learnset MOVE_HEAL_BELL, 56
	learnset MOVE_SOFT_BOILED, 60
	learnset MOVE_LAST_RESORT, 64
    terminatelearnset


levelup SPECIES_TANGELA
	learnset MOVE_ABSORB, 1
	learnset MOVE_BIND, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_TICKLE, 4
	learnset MOVE_VINE_WHIP, 7
	learnset MOVE_CONFUSION, 10
	learnset MOVE_POISON_POWDER, 13
	learnset MOVE_STUN_SPORE, 13
	learnset MOVE_SLEEP_POWDER, 13
	learnset MOVE_LEAF_TORNADO, 16
	learnset MOVE_AMNESIA, 19
	learnset MOVE_PAYBACK, 22
	learnset MOVE_PAIN_SPLIT, 25
	learnset MOVE_BULLET_SEED, 28
	learnset MOVE_SYNTHESIS, 31
	learnset MOVE_WAKE_UP_SLAP, 34
	learnset MOVE_INGRAIN, 37
	learnset MOVE_RAGE_POWDER, 40
	learnset MOVE_WRING_OUT, 43
	learnset MOVE_ANCIENT_POWER, 50
	learnset MOVE_NATURE_POWER, 54
	learnset MOVE_LEECH_SEED, 58
	learnset MOVE_LEAF_STORM, 62
	learnset MOVE_POWER_WHIP, 66
    terminatelearnset


levelup SPECIES_KANGASKHAN
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_ZAP_CANNON, 1
	learnset MOVE_LEER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_RAGE, 4
	learnset MOVE_DISABLE, 7
	learnset MOVE_DOUBLE_HIT, 10
	learnset MOVE_BITE, 13
	learnset MOVE_COVET, 16
	learnset MOVE_HELPING_HAND, 19
	learnset MOVE_CHIP_AWAY, 22
	learnset MOVE_FAKE_OUT, 25
	learnset MOVE_SEISMIC_TOSS, 28
	learnset MOVE_CIRCLE_THROW, 32
	learnset MOVE_DIZZY_PUNCH, 36
	learnset MOVE_DRAIN_PUNCH, 40
	learnset MOVE_BODY_SLAM, 44
	learnset MOVE_CRUNCH, 48
	learnset MOVE_HAMMER_ARM, 52
	learnset MOVE_CRUSH_CLAW, 56
	learnset MOVE_REVERSAL, 60
	learnset MOVE_DOUBLE_EDGE, 65
	learnset MOVE_TRUMP_CARD, 70
    terminatelearnset


levelup SPECIES_HORSEA
	learnset MOVE_SPLASH, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_TWISTER, 16
	learnset MOVE_BRINE, 19
	learnset MOVE_DISABLE, 22
	learnset MOVE_DRAGON_RAGE, 25
	learnset MOVE_BUBBLE_BEAM, 28
	learnset MOVE_DRAGON_BREATH, 31
	learnset MOVE_AURORA_BEAM, 34
	learnset MOVE_CLEAR_SMOG, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_BOUNCE, 43
	learnset MOVE_DRAGON_PULSE, 46
	learnset MOVE_AGILITY, 49
	learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset


levelup SPECIES_SEADRA
	learnset MOVE_SPLASH, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_TWISTER, 16
	learnset MOVE_BRINE, 19
	learnset MOVE_DISABLE, 22
	learnset MOVE_DRAGON_RAGE, 25
	learnset MOVE_BUBBLE_BEAM, 28
	learnset MOVE_DRAGON_BREATH, 31
	learnset MOVE_OCTAZOOKA, 32
	learnset MOVE_AURORA_BEAM, 34
	learnset MOVE_CLEAR_SMOG, 37
	learnset MOVE_MUDDY_WATER, 41
	learnset MOVE_BOUNCE, 45
	learnset MOVE_DRAGON_PULSE, 49
	learnset MOVE_AGILITY, 53
	learnset MOVE_HYDRO_PUMP, 57
	learnset MOVE_DRAGON_DANCE, 61
    terminatelearnset


levelup SPECIES_GOLDEEN
	learnset MOVE_PECK, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_AQUA_RING, 16
	learnset MOVE_HORN_ATTACK, 19
	learnset MOVE_HAZE, 22
	learnset MOVE_MUD_SHOT, 24
	learnset MOVE_PSYBEAM, 26
	learnset MOVE_BUBBLE_BEAM, 28
	learnset MOVE_AGILITY, 30
	learnset MOVE_SOAK, 32
	learnset MOVE_MUDDY_WATER, 34
	learnset MOVE_ACUPRESSURE, 36
	learnset MOVE_AQUA_TAIL, 39
	learnset MOVE_BODY_SLAM, 42
	learnset MOVE_AQUA_JET, 45
	learnset MOVE_SMART_STRIKE, 48
	learnset MOVE_MEGAHORN, 52
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_SEAKING
	learnset MOVE_PECK, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_AQUA_RING, 16
	learnset MOVE_HORN_ATTACK, 19
	learnset MOVE_HAZE, 22
	learnset MOVE_MUD_SHOT, 24
	learnset MOVE_PSYBEAM, 26
	learnset MOVE_BUBBLE_BEAM, 28
	learnset MOVE_AGILITY, 30
	learnset MOVE_SOAK, 32
	learnset MOVE_CAPTIVATE, 33
	learnset MOVE_MUDDY_WATER, 35
	learnset MOVE_ACUPRESSURE, 36
	learnset MOVE_AQUA_TAIL, 39
	learnset MOVE_BODY_SLAM, 42
	learnset MOVE_AQUA_JET, 45
	learnset MOVE_SMART_STRIKE, 49
	learnset MOVE_MEGAHORN, 53
	learnset MOVE_HYDRO_PUMP, 58
    terminatelearnset


levelup SPECIES_STARYU
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_PSYWAVE, 4
	learnset MOVE_RAPID_SPIN, 7
	learnset MOVE_CAMOUFLAGE, 10
	learnset MOVE_SWIFT, 13
	learnset MOVE_GYRO_BALL, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_CONFUSE_RAY, 25
	learnset MOVE_TRICK, 28
	learnset MOVE_BRINE, 31
	learnset MOVE_AURORA_BEAM, 34
	learnset MOVE_REFLECT_TYPE, 37
	learnset MOVE_WONDER_ROOM, 40
	learnset MOVE_PSYCHO_CUT, 43
	learnset MOVE_COSMIC_POWER, 46
	learnset MOVE_AGILITY, 49
	learnset MOVE_PAIN_SPLIT, 52
	learnset MOVE_PSYCHIC, 55
	learnset MOVE_GRAVITY, 58
	learnset MOVE_RECOVER, 62
	learnset MOVE_HYDRO_PUMP, 66
    terminatelearnset


levelup SPECIES_STARMIE
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_ZAP_CANNON, 1
	learnset MOVE_AGILITY, 50
	learnset MOVE_COSMIC_POWER, 55
	learnset MOVE_RECOVER, 60
	learnset MOVE_HYDRO_PUMP, 70
    terminatelearnset


levelup SPECIES_MR_MIME
	learnset MOVE_BARRIER, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_MEDITATE, 4
	learnset MOVE_MIMIC, 7
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_HYPNOSIS, 13
	learnset MOVE_TRICK, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_HEALING_WISH, 25
	learnset MOVE_FOLLOW_ME, 26
	learnset MOVE_HEAL_PULSE, 29
	learnset MOVE_MAGICAL_LEAF, 32
	learnset MOVE_DAZZLING_GLEAM, 36
	learnset MOVE_FUTURE_SIGHT, 40
	learnset MOVE_ROLE_PLAY, 44
	learnset MOVE_QUICK_GUARD, 48
	learnset MOVE_WIDE_GUARD, 48
	learnset MOVE_PSYCHIC, 52
	learnset MOVE_CONFUSE_RAY, 56
	learnset MOVE_NASTY_PLOT, 60
	learnset MOVE_BATON_PASS, 64
    terminatelearnset


levelup SPECIES_SCYTHER
	learnset MOVE_PSYCHO_CUT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FALSE_SWIPE, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_DETECT, 7
	learnset MOVE_VACUUM_WAVE, 10
	learnset MOVE_FEINT, 13
	learnset MOVE_AGILITY, 16
	learnset MOVE_PURSUIT, 19
	learnset MOVE_WING_ATTACK, 22
	learnset MOVE_QUICK_GUARD, 25
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_STRUGGLE_BUG, 31
	learnset MOVE_DOUBLE_HIT, 35
	learnset MOVE_AIR_SLASH, 39
	learnset MOVE_BUG_BITE, 43
	learnset MOVE_FURY_CUTTER, 47
	learnset MOVE_REVERSAL, 51
	learnset MOVE_DUAL_WINGBEAT, 55
	learnset MOVE_DOUBLE_EDGE, 59
	learnset MOVE_BATON_PASS, 63
	learnset MOVE_CLOSE_COMBAT, 67
    terminatelearnset


levelup SPECIES_JYNX
	learnset MOVE_PETAL_DANCE, 1
	learnset MOVE_TRIPLE_AXEL, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_LICK, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_LUCKY_CHANT, 8
	learnset MOVE_HEART_STAMP, 10
	learnset MOVE_BODY_SLAM, 12
	learnset MOVE_AVALANCHE, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_FAKE_TEARS, 24
	learnset MOVE_HEAL_BELL, 27
	learnset MOVE_WRING_OUT, 30
	learnset MOVE_FAKE_OUT, 34
	learnset MOVE_WISH, 38
	learnset MOVE_PERISH_SONG, 42
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_NIGHTMARE, 50
	learnset MOVE_LOVELY_KISS, 54
	learnset MOVE_NASTY_PLOT, 58
	learnset MOVE_PSYCHO_BOOST, 62
    terminatelearnset


levelup SPECIES_ELECTABUZZ
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_SWIFT, 5
	learnset MOVE_SPARK, 8
	learnset MOVE_UPROAR, 10
	learnset MOVE_SCREECH, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_ELECTRO_BALL, 18
	learnset MOVE_BRICK_BREAK, 21
	learnset MOVE_HELPING_HAND, 24
	learnset MOVE_DUAL_CHOP, 27
	learnset MOVE_THUNDER_PUNCH, 32
	learnset MOVE_CROSS_CHOP, 35
	learnset MOVE_PSYCHIC, 39
	learnset MOVE_HAMMER_ARM, 43
	learnset MOVE_FOCUS_PUNCH, 47
	learnset MOVE_FEINT, 51
	learnset MOVE_CROSS_CHOP, 55
	learnset MOVE_DISCHARGE, 59
	learnset MOVE_GIGA_IMPACT, 63
	learnset MOVE_CLOSE_COMBAT, 67
	learnset MOVE_VOLT_TACKLE, 71
    terminatelearnset


levelup SPECIES_MAGMAR
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_CLEAR_SMOG, 5
	learnset MOVE_FIRE_SPIN, 8
	learnset MOVE_FEINT_ATTACK, 10
	learnset MOVE_MACH_PUNCH, 12
	learnset MOVE_FLAME_WHEEL, 14
	learnset MOVE_CONFUSE_RAY, 16
	learnset MOVE_FLAME_BURST, 18
	learnset MOVE_SCREECH, 21
	learnset MOVE_FIRE_PUNCH, 24
	learnset MOVE_WILL_O_WISP, 27
	learnset MOVE_LAVA_PLUME, 32
	learnset MOVE_CROSS_CHOP, 35
	learnset MOVE_BELLY_DRUM, 39
	learnset MOVE_SLUDGE_BOMB, 43
	learnset MOVE_SCORCHING_SANDS, 47
	learnset MOVE_FLARE_BLITZ, 51
	learnset MOVE_DYNAMIC_PUNCH, 55
	learnset MOVE_SOLAR_BEAM, 59
	learnset MOVE_GIGA_IMPACT, 63
	learnset MOVE_MOONBLAST, 67
	learnset MOVE_MAGMA_STORM, 71
    terminatelearnset


levelup SPECIES_PINSIR
	learnset MOVE_BIND, 1
	learnset MOVE_HARDEN, 4
	learnset MOVE_SEISMIC_TOSS, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_REVENGE, 16
	learnset MOVE_VITAL_THROW, 19
	learnset MOVE_DOUBLE_HIT, 22
	learnset MOVE_BRICK_BREAK, 25
	learnset MOVE_X_SCISSOR, 28
	learnset MOVE_STORM_THROW, 31
	learnset MOVE_SWORDS_DANCE, 35
	learnset MOVE_LUNGE, 38
	learnset MOVE_CLOSE_COMBAT, 42
	learnset MOVE_STORM_THROW, 46
	learnset MOVE_MEGAHORN, 51
	learnset MOVE_SUPERPOWER, 56
	learnset MOVE_GUILLOTINE, 60
    terminatelearnset


levelup SPECIES_TAUROS
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WORK_UP, 5
	learnset MOVE_PAYBACK, 9
	learnset MOVE_ASSURANCE, 13
	learnset MOVE_HORN_ATTACK, 17
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_SMART_STRIKE, 33
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_ENDEAVOR, 41
	learnset MOVE_DOUBLE_EDGE, 45
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_REVENGE, 53
	learnset MOVE_CLOSE_COMBAT, 57
	learnset MOVE_MEGAHORN, 61
	learnset MOVE_GIGA_IMPACT, 65
	learnset MOVE_HEADLONG_RUSH, 69
    terminatelearnset


levelup SPECIES_MAGIKARP
	learnset MOVE_SPLASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLAIL, 1
	learnset MOVE_DRAGON_RAGE, 25
	learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_GYARADOS
	learnset MOVE_BOUNCE, 1
	learnset MOVE_FLAIL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_BITE, 20
	learnset MOVE_WHIRLPOOL, 23
	learnset MOVE_TWISTER, 26
	learnset MOVE_WATER_PULSE, 29
	learnset MOVE_SCARY_FACE, 32
	learnset MOVE_CRUNCH, 35
	learnset MOVE_DRAGON_RAGE, 38
	learnset MOVE_HYDRO_PUMP, 41
	learnset MOVE_ICE_FANG, 44
	learnset MOVE_BODY_SLAM, 48
	learnset MOVE_HYPER_BEAM, 52
	learnset MOVE_AQUA_TAIL, 55
	learnset MOVE_COIL, 58
	learnset MOVE_DOUBLE_EDGE, 61
	learnset MOVE_RAGING_FURY, 64
	learnset MOVE_POWER_WHIP, 68
	learnset MOVE_DRAGON_DANCE, 72
    terminatelearnset


levelup SPECIES_LAPRAS
	learnset MOVE_SING, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MIST, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_ICE_SHARD, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_BODY_SLAM, 16
	learnset MOVE_SMART_STRIKE, 19
	learnset MOVE_PERISH_SONG, 22
	learnset MOVE_ICE_BEAM, 25
	learnset MOVE_BRINE, 28
	learnset MOVE_SAFEGUARD, 31
	learnset MOVE_DRAGON_PULSE, 34
	learnset MOVE_HAZE, 37
	learnset MOVE_FUTURE_SIGHT, 42
	learnset MOVE_DRAGON_DANCE, 46
	learnset MOVE_AVALANCHE, 50
	learnset MOVE_MEGAHORN, 54
	learnset MOVE_HYDRO_PUMP, 59
    terminatelearnset


levelup SPECIES_DITTO
    learnset MOVE_TRANSFORM, 1
    terminatelearnset


levelup SPECIES_EEVEE
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_SAND_ATTACK, 3
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_MIMIC, 25
	learnset MOVE_YAWN, 28
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_SYNCHRONOISE, 34
	learnset MOVE_BODY_SLAM, 38
	learnset MOVE_WISH, 42
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_HEAL_BELL, 50
	learnset MOVE_BATON_PASS, 54
	learnset MOVE_TRUMP_CARD, 58
	learnset MOVE_LAST_RESORT, 62
    terminatelearnset


levelup SPECIES_VAPOREON
	learnset MOVE_WATER_SPOUT, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_BRINE, 24
	learnset MOVE_AURORA_BEAM, 28
	learnset MOVE_BUBBLE_BEAM, 32
	learnset MOVE_AQUA_RING, 36
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_ACID_ARMOR, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_HYDRO_PUMP, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_JOLTEON
	learnset MOVE_ZAP_CANNON, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_PIN_MISSILE, 28
	learnset MOVE_NUZZLE, 32
	learnset MOVE_ELECTRO_BALL, 36
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_AGILITY, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_THUNDER, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_FLAREON
	learnset MOVE_RAGING_FURY, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_FIRE_FANG, 24
	learnset MOVE_SCORCHING_SANDS, 28
	learnset MOVE_FLAME_WHEEL, 32
	learnset MOVE_LAVA_PLUME, 36
	learnset MOVE_BLAZE_KICK, 40
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_FLARE_BLITZ, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_PORYGON
	learnset MOVE_LAST_RESORT, 1
	learnset MOVE_CONVERSION, 1
	learnset MOVE_CONVERSION_2, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_SIGNAL_BEAM, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_WONDER_ROOM, 22
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_RECYCLE, 28
	learnset MOVE_TRI_ATTACK, 31
	learnset MOVE_TRICK, 34
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_MAGNET_RISE, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_LOCK_ON, 52
	learnset MOVE_FOUL_PLAY, 56
	learnset MOVE_NASTY_PLOT, 60
	learnset MOVE_ZAP_CANNON, 64
	learnset MOVE_HYPER_BEAM, 68
    terminatelearnset


levelup SPECIES_OMANYTE
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_BITE, 7
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_AURORA_BEAM, 19
	learnset MOVE_BRINE, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_PROTECT, 33
	learnset MOVE_ACCELEROCK, 38
	learnset MOVE_TICKLE, 43
	learnset MOVE_POWER_GEM, 46
	learnset MOVE_SHELL_SMASH, 52
	learnset MOVE_HYDRO_PUMP, 55
	learnset MOVE_EARTH_POWER, 58
    terminatelearnset


levelup SPECIES_OMASTAR
	learnset MOVE_SPIKES, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WITHDRAW, 4
	learnset MOVE_LEER, 7
	learnset MOVE_BITE, 10
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_AURORA_BEAM, 19
	learnset MOVE_BRINE, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_PROTECT, 28
	learnset MOVE_CRUNCH, 33
	learnset MOVE_ACCELEROCK, 38
	learnset MOVE_TICKLE, 43
	learnset MOVE_POWER_GEM, 46
	learnset MOVE_SHELL_SMASH, 53
	learnset MOVE_HYDRO_PUMP, 56
	learnset MOVE_POWER_WHIP, 59
	learnset MOVE_EARTH_POWER, 65
    terminatelearnset


levelup SPECIES_KABUTO
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ABSORB, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_ROCK_SLIDE, 19
	learnset MOVE_BRINE, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_LUNGE, 33
	learnset MOVE_WATERFALL, 38
	learnset MOVE_KNOCK_OFF, 43
	learnset MOVE_MEGA_DRAIN, 46
	learnset MOVE_WRING_OUT, 51
	learnset MOVE_LEECH_LIFE, 55
    terminatelearnset


levelup SPECIES_KABUTOPS
	learnset MOVE_FEINT, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_ROCK_SLIDE, 19
	learnset MOVE_BRINE, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_LUNGE, 28
	learnset MOVE_SLASH, 30
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_WATERFALL, 38
	learnset MOVE_KNOCK_OFF, 43
	learnset MOVE_MEGA_DRAIN, 51
	learnset MOVE_LEECH_LIFE, 59
	learnset MOVE_STONE_EDGE, 65
    terminatelearnset


levelup SPECIES_AERODACTYL
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_PSYCHIC_FANGS, 1
	learnset MOVE_BITE, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_ROAR, 9
	learnset MOVE_AGILITY, 13
	learnset MOVE_WING_ATTACK, 17
	learnset MOVE_ANCIENT_POWER, 21
	learnset MOVE_CRUNCH, 25
	learnset MOVE_ROCK_SLIDE, 29
	learnset MOVE_TAKE_DOWN, 33
	learnset MOVE_DRAGON_CLAW, 37
	learnset MOVE_IRON_HEAD, 41
	learnset MOVE_DUAL_WINGBEAT, 45
	learnset MOVE_STONE_EDGE, 49
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_DRAGON_DANCE, 57
	learnset MOVE_ACCELEROCK, 61
	learnset MOVE_BRAVE_BIRD, 65
	learnset MOVE_HEAD_SMASH, 70
    terminatelearnset


levelup SPECIES_SNORLAX
	learnset MOVE_HEAT_CRASH, 1
	learnset MOVE_HYDRO_PUMP, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_TACKLE, 1
    learnset MOVE_SLACK_OFF, 1
	learnset MOVE_METRONOME, 4
	learnset MOVE_PURSUIT, 7
	learnset MOVE_RECYCLE, 10
	learnset MOVE_CURSE, 14
	learnset MOVE_CHIP_AWAY, 18
	learnset MOVE_WHIRLWIND, 22
	learnset MOVE_GASTRO_ACID, 26
	learnset MOVE_BODY_SLAM, 30
	learnset MOVE_ROLLOUT, 33
	learnset MOVE_AMNESIA, 36
	learnset MOVE_ZEN_HEADBUTT, 42
	learnset MOVE_CRUNCH, 46
	learnset MOVE_BELLY_DRUM, 50
	learnset MOVE_HEAVY_SLAM, 54
	learnset MOVE_HIGH_HORSEPOWER, 58
	learnset MOVE_HAMMER_ARM, 63
	learnset MOVE_DOUBLE_EDGE, 68
	learnset MOVE_LAST_RESORT, 74
	learnset MOVE_SLACK_OFF, 79
    terminatelearnset


levelup SPECIES_ARTICUNO
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_GUST, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_MIST, 8
	learnset MOVE_ICE_SHARD, 11
	learnset MOVE_MIND_READER, 14
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_AGILITY, 23
	learnset MOVE_ICY_WIND, 27
	learnset MOVE_REFLECT, 30
	learnset MOVE_ICE_BEAM, 33
	learnset MOVE_TAILWIND, 37
	learnset MOVE_BLIZZARD, 40
	learnset MOVE_ROOST, 43
	learnset MOVE_SHEER_COLD, 47
	learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ZAPDOS
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_PECK, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_WAVE, 8
	learnset MOVE_DETECT, 11
	learnset MOVE_PLUCK, 14
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_CHARGE, 23
	learnset MOVE_AGILITY, 27
	learnset MOVE_DISCHARGE, 30
	learnset MOVE_RAIN_DANCE, 33
	learnset MOVE_TAILWIND, 37
	learnset MOVE_DRILL_PECK, 40
	learnset MOVE_THUNDER, 43
	learnset MOVE_ROOST, 47
	learnset MOVE_ZAP_CANNON, 50
    terminatelearnset


levelup SPECIES_MOLTRES
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_WING_ATTACK, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_FIRE_SPIN, 8
	learnset MOVE_AGILITY, 11
	learnset MOVE_ENDURE, 14
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_FLAMETHROWER, 23
	learnset MOVE_SAFEGUARD, 27
	learnset MOVE_AIR_SLASH, 30
	learnset MOVE_SUNNY_DAY, 33
	learnset MOVE_HEAT_WAVE, 37
	learnset MOVE_SOLAR_BEAM, 40
	learnset MOVE_SKY_ATTACK, 43
	learnset MOVE_SCORCHING_SANDS, 47
	learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_DRATINI
	learnset MOVE_LEER, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_MIST, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_TWISTER, 7
	learnset MOVE_FIRE_SPIN, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_DRAGON_TAIL, 16
	learnset MOVE_AQUA_JET, 19
	learnset MOVE_SAFEGUARD, 22
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_AGILITY, 28
	learnset MOVE_SAFEGUARD, 31
	learnset MOVE_COIL, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_HAZE, 40
	learnset MOVE_AQUA_TAIL, 44
	learnset MOVE_EXTREME_SPEED, 48
	learnset MOVE_DRAGON_RUSH, 52
	learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset


levelup SPECIES_DRAGONAIR
	learnset MOVE_LEER, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_MIST, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_TWISTER, 7
	learnset MOVE_FIRE_SPIN, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_DRAGON_TAIL, 16
	learnset MOVE_AQUA_JET, 19
	learnset MOVE_SAFEGUARD, 22
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_AGILITY, 28
	learnset MOVE_BREAKING_SWIPE, 30
	learnset MOVE_SAFEGUARD, 33
	learnset MOVE_COIL, 37
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_HAZE, 43
	learnset MOVE_AQUA_TAIL, 46
	learnset MOVE_EXTREME_SPEED, 49
	learnset MOVE_DRAGON_RUSH, 53
	learnset MOVE_DOUBLE_EDGE, 57
	learnset MOVE_OUTRAGE, 61
    terminatelearnset


levelup SPECIES_DRAGONITE
	learnset MOVE_BARRIER, 1
	learnset MOVE_HEAL_BELL, 1
	learnset MOVE_AIR_SLASH, 1
	learnset MOVE_DYNAMIC_PUNCH, 1
	learnset MOVE_HYDRO_PUMP, 1
	learnset MOVE_FIRE_SPIN, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_DRAGON_TAIL, 16
	learnset MOVE_AQUA_JET, 19
	learnset MOVE_SAFEGUARD, 22
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_AGILITY, 28
	learnset MOVE_BREAKING_SWIPE, 30
	learnset MOVE_SAFEGUARD, 33
	learnset MOVE_COIL, 37
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_HAZE, 43
	learnset MOVE_AQUA_TAIL, 46
	learnset MOVE_EXTREME_SPEED, 49
	learnset MOVE_DRAGON_RUSH, 53
	learnset MOVE_WING_ATTACK, 55
	learnset MOVE_DOUBLE_EDGE, 59
	learnset MOVE_OUTRAGE, 63
	learnset MOVE_DUAL_WINGBEAT, 67
	learnset MOVE_DRAGON_DANCE, 71
    terminatelearnset


levelup SPECIES_MEWTWO
	learnset MOVE_ELECTRO_BALL, 1
	learnset MOVE_HURRICANE, 1
	learnset MOVE_HEAL_PULSE, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_BARRIER, 1
	learnset MOVE_SWIFT, 5
	learnset MOVE_FUTURE_SIGHT, 10
	learnset MOVE_PSYCH_UP, 15
	learnset MOVE_MIRACLE_EYE, 20
	learnset MOVE_MIST, 25
	learnset MOVE_PSYCHO_CUT, 30
	learnset MOVE_AMNESIA, 35
	learnset MOVE_POWER_SWAP, 40
	learnset MOVE_GUARD_SWAP, 40
	learnset MOVE_PSYCHIC, 45
	learnset MOVE_ME_FIRST, 50
	learnset MOVE_RECOVER, 55
	learnset MOVE_SAFEGUARD, 60
	learnset MOVE_AURA_SPHERE, 65
	learnset MOVE_PSYSTRIKE, 70
    terminatelearnset


levelup SPECIES_MEW
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_DRAGON_DANCE, 1
	learnset MOVE_SOFT_BOILED, 1
	learnset MOVE_SPIKES, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_POUND, 1
	learnset MOVE_TRANSFORM, 1
	learnset MOVE_METRONOME, 5
	learnset MOVE_STORED_POWER, 10
	learnset MOVE_REFLECT_TYPE, 15
	learnset MOVE_BARRIER, 20
	learnset MOVE_BATON_PASS, 25
	learnset MOVE_AMNESIA, 30
	learnset MOVE_PSYCHIC, 35
	learnset MOVE_ANCIENT_POWER, 40
	learnset MOVE_NASTY_PLOT, 45
	learnset MOVE_CLOSE_COMBAT, 50
    terminatelearnset


levelup SPECIES_CHIKORITA
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_POISON_POWDER, 7
	learnset MOVE_SYNTHESIS, 10
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_INGRAIN, 17
	learnset MOVE_REFRESH, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_HEAL_PULSE, 28
	learnset MOVE_NATURE_POWER, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_NATURAL_GIFT, 37
	learnset MOVE_ENERGY_BALL, 40
	learnset MOVE_AROMATHERAPY, 43
	learnset MOVE_MAGIC_COAT, 46
	learnset MOVE_SOLAR_BEAM, 49
    terminatelearnset


levelup SPECIES_BAYLEEF
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_POISON_POWDER, 7
	learnset MOVE_SYNTHESIS, 10
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_GRASS_WHISTLE, 16
	learnset MOVE_INGRAIN, 17
	learnset MOVE_REFRESH, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_HEAL_PULSE, 28
	learnset MOVE_NATURE_POWER, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_NATURAL_GIFT, 37
	learnset MOVE_ENERGY_BALL, 40
	learnset MOVE_AROMATHERAPY, 43
	learnset MOVE_MAGIC_COAT, 46
	learnset MOVE_SOLAR_BEAM, 49
	learnset MOVE_LEECH_SEED, 52
	learnset MOVE_MOONBLAST, 55
    terminatelearnset


levelup SPECIES_MEGANIUM
	learnset MOVE_DRAINING_KISS, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_POISON_POWDER, 7
	learnset MOVE_SYNTHESIS, 10
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_GRASS_WHISTLE, 16
	learnset MOVE_INGRAIN, 17
	learnset MOVE_REFRESH, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_HEAL_PULSE, 28
	learnset MOVE_NATURE_POWER, 31
	learnset MOVE_PETAL_DANCE, 32
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_NATURAL_GIFT, 37
	learnset MOVE_ENERGY_BALL, 40
	learnset MOVE_AROMATHERAPY, 43
	learnset MOVE_MAGIC_COAT, 46
	learnset MOVE_SOLAR_BEAM, 50
	learnset MOVE_LEECH_SEED, 54
	learnset MOVE_MOONBLAST, 58
	learnset MOVE_LEAF_STORM, 62
	learnset MOVE_HEALING_WISH, 66
    terminatelearnset


levelup SPECIES_CYNDAQUIL
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SMOKESCREEN, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_FLAME_WHEEL, 13
	learnset MOVE_DEFENSE_CURL, 16
	learnset MOVE_REVERSAL, 20
	learnset MOVE_FLAME_BURST, 22
	learnset MOVE_ROLLOUT, 25
	learnset MOVE_SWIFT, 28
	learnset MOVE_CRUSH_CLAW, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_WORK_UP, 37
	learnset MOVE_NATURE_POWER, 40
	learnset MOVE_INFERNO, 43
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_MYSTICAL_FIRE, 49
    terminatelearnset


levelup SPECIES_QUILAVA
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SMOKESCREEN, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_FLAME_WHEEL, 13
	learnset MOVE_DOUBLE_KICK, 14
	learnset MOVE_DEFENSE_CURL, 16
	learnset MOVE_REVERSAL, 20
	learnset MOVE_FLAME_BURST, 22
	learnset MOVE_ROLLOUT, 25
	learnset MOVE_SWIFT, 28
	learnset MOVE_CRUSH_CLAW, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_WORK_UP, 37
	learnset MOVE_NATURE_POWER, 40
	learnset MOVE_INFERNO, 43
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_MYSTICAL_FIRE, 49
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_FLARE_BLITZ, 55
    terminatelearnset


levelup SPECIES_TYPHLOSION
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SMOKESCREEN, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_FLAME_WHEEL, 13
	learnset MOVE_DOUBLE_KICK, 14
	learnset MOVE_DEFENSE_CURL, 16
	learnset MOVE_REVERSAL, 20
	learnset MOVE_FLAME_BURST, 22
	learnset MOVE_ROLLOUT, 25
	learnset MOVE_SWIFT, 28
	learnset MOVE_CRUSH_CLAW, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_LAVA_PLUME, 36
	learnset MOVE_FOCUS_PUNCH, 37
	learnset MOVE_NATURE_POWER, 40
	learnset MOVE_INFERNO, 43
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_SCORCHING_SANDS, 50
	learnset MOVE_MYSTICAL_FIRE, 54
	learnset MOVE_FLARE_BLITZ, 58
	learnset MOVE_DOUBLE_EDGE, 63
	learnset MOVE_EARTH_POWER, 68
	learnset MOVE_ERUPTION, 77
    terminatelearnset


levelup SPECIES_TOTODILE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_RAGE, 7
	learnset MOVE_BITE, 10
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_AVALANCHE, 22
	learnset MOVE_ROCK_TOMB, 25
	learnset MOVE_RAGING_FURY, 28
	learnset MOVE_SLASH, 31
	learnset MOVE_NIGHT_SLASH, 31
	learnset MOVE_HONE_CLAWS, 34
	learnset MOVE_CHIP_AWAY, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_FAKE_TEARS, 43
	learnset MOVE_HYDRO_PUMP, 46
	learnset MOVE_WAVE_CRASH, 49
    terminatelearnset


levelup SPECIES_CROCONAW
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_RAGE, 7
	learnset MOVE_BITE, 10
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_AQUA_JET, 18
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_AVALANCHE, 22
	learnset MOVE_ROCK_TOMB, 25
	learnset MOVE_RAGING_FURY, 28
	learnset MOVE_SLASH, 31
	learnset MOVE_NIGHT_SLASH, 31
	learnset MOVE_HONE_CLAWS, 34
	learnset MOVE_CHIP_AWAY, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_FAKE_TEARS, 43
	learnset MOVE_HYDRO_PUMP, 46
	learnset MOVE_WAVE_CRASH, 49
	learnset MOVE_DRAGON_RUSH, 52
	learnset MOVE_PSYCHIC_FANGS, 55
    terminatelearnset


levelup SPECIES_FERALIGATR
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_RAGE, 7
	learnset MOVE_BITE, 10
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_AQUA_JET, 18
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_AVALANCHE, 22
	learnset MOVE_ROCK_TOMB, 25
	learnset MOVE_RAGING_FURY, 28
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_SLASH, 31
	learnset MOVE_NIGHT_SLASH, 31
	learnset MOVE_HONE_CLAWS, 34
	learnset MOVE_CHIP_AWAY, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_FAKE_TEARS, 43
	learnset MOVE_HYDRO_PUMP, 46
	learnset MOVE_WAVE_CRASH, 50
	learnset MOVE_DRAGON_RUSH, 54
	learnset MOVE_PSYCHIC_FANGS, 58
	learnset MOVE_CRUNCH, 62
	learnset MOVE_DRAGON_DANCE, 66
    terminatelearnset


levelup SPECIES_SENTRET
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_FOLLOW_ME, 7
	learnset MOVE_CHARM, 10
	learnset MOVE_FURY_SWIPES, 12
	learnset MOVE_PURSUIT, 14
	learnset MOVE_COVET, 16
	learnset MOVE_HYPER_FANG, 18
	learnset MOVE_FOCUS_ENERGY, 20
	learnset MOVE_ME_FIRST, 23
	learnset MOVE_FLAME_WHEEL, 26
	learnset MOVE_TAIL_SLAP, 29
	learnset MOVE_HELPING_HAND, 32
	learnset MOVE_SUCKER_PUNCH, 35
	learnset MOVE_REVERSAL, 38
	learnset MOVE_AMNESIA, 42
	learnset MOVE_FOCUS_PUNCH, 46
	learnset MOVE_BATON_PASS, 50
	learnset MOVE_DOUBLE_EDGE, 54
	learnset MOVE_LAST_RESORT, 58
    terminatelearnset


levelup SPECIES_FURRET
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_FOLLOW_ME, 7
	learnset MOVE_CHARM, 10
	learnset MOVE_FURY_SWIPES, 12
	learnset MOVE_PURSUIT, 14
	learnset MOVE_AGILITY, 15
	learnset MOVE_COVET, 17
	learnset MOVE_HYPER_FANG, 19
	learnset MOVE_FOCUS_ENERGY, 21
	learnset MOVE_ME_FIRST, 23
	learnset MOVE_COIL, 25
	learnset MOVE_FLAME_WHEEL, 27
	learnset MOVE_TAIL_SLAP, 29
	learnset MOVE_HELPING_HAND, 32
	learnset MOVE_SUCKER_PUNCH, 36
	learnset MOVE_SUPER_FANG, 40
	learnset MOVE_REVERSAL, 44
	learnset MOVE_AMNESIA, 48
	learnset MOVE_FOCUS_PUNCH, 52
	learnset MOVE_BATON_PASS, 56
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_LAST_RESORT, 64
    terminatelearnset


levelup SPECIES_HOOTHOOT
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PECK, 4
	learnset MOVE_CONFUSION, 7
	learnset MOVE_MIRROR_MOVE, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_UPROAR, 16
	learnset MOVE_HYPNOSIS, 19
	learnset MOVE_AIR_CUTTER, 22
	learnset MOVE_DREAM_EATER, 25
	learnset MOVE_WHIRLWIND, 28
	learnset MOVE_EXTRASENSORY, 31
	learnset MOVE_FEATHER_DANCE, 34
	learnset MOVE_AGILITY, 37
	learnset MOVE_SYNCHRONOISE, 40
	learnset MOVE_TAILWIND, 43
	learnset MOVE_MOONBLAST, 46
	learnset MOVE_AIR_SLASH, 50
	learnset MOVE_ESPER_WING, 54
	learnset MOVE_SKY_ATTACK, 58
    terminatelearnset


levelup SPECIES_NOCTOWL
	learnset MOVE_FUTURE_SIGHT, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PECK, 4
	learnset MOVE_CONFUSION, 7
	learnset MOVE_MIRROR_MOVE, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_UPROAR, 16
	learnset MOVE_HYPNOSIS, 19
	learnset MOVE_STORED_POWER, 20
	learnset MOVE_AIR_CUTTER, 23
	learnset MOVE_DREAM_EATER, 26
	learnset MOVE_WHIRLWIND, 29
	learnset MOVE_EXTRASENSORY, 32
	learnset MOVE_FEATHER_DANCE, 35
	learnset MOVE_AGILITY, 38
	learnset MOVE_SYNCHRONOISE, 42
	learnset MOVE_TAILWIND, 46
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_AIR_SLASH, 54
	learnset MOVE_ESPER_WING, 58
	learnset MOVE_SKY_ATTACK, 62
    terminatelearnset


levelup SPECIES_LEDYBA
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_STRUGGLE_BUG, 5
	learnset MOVE_SAFEGUARD, 7
	learnset MOVE_MACH_PUNCH, 9
	learnset MOVE_COUNTER, 12
	learnset MOVE_SILVER_WIND, 14
	learnset MOVE_AERIAL_ACE, 16
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_BUG_BITE, 20
	learnset MOVE_REFLECT, 22
	learnset MOVE_LIGHT_SCREEN, 22
	learnset MOVE_LUNGE, 24
	learnset MOVE_FLING, 26
	learnset MOVE_TAILWIND, 28
	learnset MOVE_DRAIN_PUNCH, 31
	learnset MOVE_AIR_SLASH, 34
	learnset MOVE_KNOCK_OFF, 37
	learnset MOVE_FOCUS_PUNCH, 40
	learnset MOVE_SMART_STRIKE, 44
	learnset MOVE_BATON_PASS, 48
	learnset MOVE_ENCORE, 52
	learnset MOVE_DUAL_WINGBEAT, 56
    terminatelearnset


levelup SPECIES_LEDIAN
	learnset MOVE_METEOR_MASH, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_STRUGGLE_BUG, 5
	learnset MOVE_SAFEGUARD, 7
	learnset MOVE_MACH_PUNCH, 9
	learnset MOVE_COUNTER, 12
	learnset MOVE_SILVER_WIND, 14
	learnset MOVE_AERIAL_ACE, 16
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_BUG_BITE, 21
	learnset MOVE_REFLECT, 23
	learnset MOVE_LIGHT_SCREEN, 23
	learnset MOVE_LUNGE, 25
	learnset MOVE_FLING, 27
	learnset MOVE_TAILWIND, 29
	learnset MOVE_DRAIN_PUNCH, 32
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_KNOCK_OFF, 40
	learnset MOVE_FOCUS_PUNCH, 44
	learnset MOVE_SMART_STRIKE, 48
	learnset MOVE_BATON_PASS, 52
	learnset MOVE_ENCORE, 56
	learnset MOVE_DUAL_WINGBEAT, 60
    terminatelearnset


levelup SPECIES_SPINARAK
	learnset MOVE_ABSORB, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_FURY_SWIPES, 4
	learnset MOVE_TWINEEDLE, 7
	learnset MOVE_STRING_SHOT, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_SHADOW_SNEAK, 19
	learnset MOVE_LUNGE, 22
	learnset MOVE_ELECTROWEB, 24
	learnset MOVE_RAGE_POWDER, 26
	learnset MOVE_SUCKER_PUNCH, 28
	learnset MOVE_TOXIC_SPIKES, 30
	learnset MOVE_SLASH, 32
	learnset MOVE_NIGHT_SLASH, 32
	learnset MOVE_PIN_MISSILE, 35
	learnset MOVE_CROSS_POISON, 38
	learnset MOVE_LEECH_LIFE, 42
	learnset MOVE_AGILITY, 46
	learnset MOVE_FOUL_PLAY, 50
	learnset MOVE_MEGAHORN, 54
    terminatelearnset


levelup SPECIES_ARIADOS
	learnset MOVE_PSYCHIC_FANGS, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_FURY_SWIPES, 4
	learnset MOVE_TWINEEDLE, 7
	learnset MOVE_STRING_SHOT, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_SHADOW_SNEAK, 19
	learnset MOVE_LUNGE, 22
	learnset MOVE_SPIDER_WEB, 22
	learnset MOVE_DISABLE, 23
	learnset MOVE_ELECTROWEB, 25
	learnset MOVE_RAGE_POWDER, 27
	learnset MOVE_SUCKER_PUNCH, 29
	learnset MOVE_TOXIC_SPIKES, 31
	learnset MOVE_SLASH, 33
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_PIN_MISSILE, 36
	learnset MOVE_CROSS_POISON, 40
	learnset MOVE_LEECH_LIFE, 44
	learnset MOVE_AGILITY, 48
	learnset MOVE_FOUL_PLAY, 52
	learnset MOVE_SMART_STRIKE, 56
	learnset MOVE_MEGAHORN, 60
    terminatelearnset


levelup SPECIES_CROBAT
	learnset MOVE_CROSS_POISON, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_BITE, 7
	learnset MOVE_WING_ATTACK, 10
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_SWIFT, 19
	learnset MOVE_MEAN_LOOK, 22
	learnset MOVE_FEINT_ATTACK, 26
	learnset MOVE_AIR_CUTTER, 31
	learnset MOVE_HAZE, 34
	learnset MOVE_WHIRLWIND, 37
	learnset MOVE_ZEN_HEADBUTT, 40
	learnset MOVE_SUPER_FANG, 44
	learnset MOVE_NASTY_PLOT, 48
	learnset MOVE_LEECH_LIFE, 52
	learnset MOVE_HYPNOSIS, 56
	learnset MOVE_AIR_SLASH, 60
	learnset MOVE_WIDE_GUARD, 64
	learnset MOVE_BRAVE_BIRD, 68
    terminatelearnset


levelup SPECIES_CHINCHOU
	learnset MOVE_MIST, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_SPARK, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_SHOCK_WAVE, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_SIGNAL_BEAM, 25
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_AQUA_RING, 31
	learnset MOVE_SOAK, 34
	learnset MOVE_AMNESIA, 37
	learnset MOVE_HEAL_BELL, 40
	learnset MOVE_DISCHARGE, 44
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_AGILITY, 52
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_LANTURN
	learnset MOVE_ELECTRO_BALL, 1
	learnset MOVE_MIST, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_SPARK, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_SHOCK_WAVE, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_SIGNAL_BEAM, 25
	learnset MOVE_CHARGE, 27
	learnset MOVE_PSYBEAM, 29
	learnset MOVE_AQUA_RING, 32
	learnset MOVE_SOAK, 35
	learnset MOVE_AMNESIA, 38
	learnset MOVE_MUDDY_WATER, 41
	learnset MOVE_HEAL_BELL, 44
	learnset MOVE_DISCHARGE, 48
	learnset MOVE_TAKE_DOWN, 52
	learnset MOVE_AGILITY, 56
	learnset MOVE_HYDRO_PUMP, 60
	learnset MOVE_TAIL_GLOW, 64
    terminatelearnset


levelup SPECIES_PICHU
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARGE, 3
	learnset MOVE_SING, 6
	learnset MOVE_TICKLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_WISH, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_FAKE_OUT, 18
	learnset MOVE_PRESENT, 20
    terminatelearnset


levelup SPECIES_CLEFFA
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_METRONOME, 1
	learnset MOVE_FAKE_TEARS, 4
	learnset MOVE_SING, 7
	learnset MOVE_COPYCAT, 11
	learnset MOVE_MAGICAL_LEAF, 16
	learnset MOVE_DRAINING_KISS, 21
    terminatelearnset


levelup SPECIES_IGGLYBUFF
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_POUND, 4
	learnset MOVE_METRONOME, 7
	learnset MOVE_COPYCAT, 11
	learnset MOVE_DRAINING_KISS, 17
    terminatelearnset


levelup SPECIES_TOGEPI
	learnset MOVE_GROWL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_PRESENT, 1
	learnset MOVE_AFTER_YOU, 4
	learnset MOVE_PECK, 7
	learnset MOVE_YAWN, 10
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_DISARMING_VOICE, 16
	learnset MOVE_METRONOME, 19
	learnset MOVE_MIRROR_MOVE, 22
	learnset MOVE_SAFEGUARD, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_SMART_STRIKE, 31
	learnset MOVE_CHARM, 34
	learnset MOVE_WISH, 37
	learnset MOVE_FOLLOW_ME, 40
	learnset MOVE_DRAINING_KISS, 43
	learnset MOVE_BATON_PASS, 46
	learnset MOVE_DOUBLE_EDGE, 49
	learnset MOVE_MOONBLAST, 52
	learnset MOVE_LAST_RESORT, 55
    terminatelearnset


levelup SPECIES_TOGETIC
	learnset MOVE_FUTURE_SIGHT, 1
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_PRESENT, 1
	learnset MOVE_AFTER_YOU, 4
	learnset MOVE_PECK, 7
	learnset MOVE_YAWN, 10
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_DISARMING_VOICE, 16
	learnset MOVE_METRONOME, 19
	learnset MOVE_MIRROR_MOVE, 22
	learnset MOVE_SAFEGUARD, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_SMART_STRIKE, 31
	learnset MOVE_CHARM, 34
	learnset MOVE_AIR_CUTTER, 36
	learnset MOVE_WISH, 40
	learnset MOVE_FOLLOW_ME, 43
	learnset MOVE_DRAINING_KISS, 46
	learnset MOVE_BATON_PASS, 49
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_EXTRASENSORY, 55
	learnset MOVE_AIR_SLASH, 58
	learnset MOVE_MOONBLAST, 61
	learnset MOVE_LAST_RESORT, 64
	learnset MOVE_NASTY_PLOT, 68
    terminatelearnset


levelup SPECIES_NATU
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LUCKY_CHANT, 4
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_REFRESH, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_WISH, 16
	learnset MOVE_AIR_CUTTER, 19
	learnset MOVE_OMINOUS_WIND, 22
	learnset MOVE_FUTURE_SIGHT, 25
	learnset MOVE_FEATHER_DANCE, 28
	learnset MOVE_DUAL_WINGBEAT, 31
	learnset MOVE_SIMPLE_BEAM, 34
	learnset MOVE_TAILWIND, 37
	learnset MOVE_PAIN_SPLIT, 40
	learnset MOVE_SYNCHRONOISE, 44
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_ESPER_WING, 52
	learnset MOVE_COSMIC_POWER, 56
    terminatelearnset


levelup SPECIES_XATU
	learnset MOVE_HAZE, 1
	learnset MOVE_SKILL_SWAP, 1
	learnset MOVE_TRICK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LUCKY_CHANT, 4
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_REFRESH, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_WISH, 16
	learnset MOVE_AIR_CUTTER, 19
	learnset MOVE_OMINOUS_WIND, 22
	learnset MOVE_FUTURE_SIGHT, 25
	learnset MOVE_MIRACLE_EYE, 26
	learnset MOVE_FEATHER_DANCE, 29
	learnset MOVE_DUAL_WINGBEAT, 32
	learnset MOVE_SIMPLE_BEAM, 35
	learnset MOVE_TAILWIND, 38
	learnset MOVE_PAIN_SPLIT, 42
	learnset MOVE_SYNCHRONOISE, 46
	learnset MOVE_AIR_SLASH, 50
	learnset MOVE_ESPER_WING, 54
	learnset MOVE_COSMIC_POWER, 58
	learnset MOVE_FOUL_PLAY, 62
    terminatelearnset


levelup SPECIES_MAREEP
	learnset MOVE_CHARGE, 1
	learnset MOVE_COTTON_SPORE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_THUNDER_WAVE, 12
	learnset MOVE_ELECTROWEB, 14
	learnset MOVE_SEISMIC_TOSS, 16
	learnset MOVE_ELECTRO_BALL, 18
	learnset MOVE_SIGNAL_BEAM, 20
	learnset MOVE_HEAL_BELL, 23
	learnset MOVE_DISCHARGE, 26
	learnset MOVE_CONFUSE_RAY, 29
	learnset MOVE_AGILITY, 32
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_CHARGE_BEAM, 40
	learnset MOVE_SCREECH, 44
	learnset MOVE_BODY_SLAM, 48
	learnset MOVE_NUZZLE, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_ZAP_CANNON, 60
    terminatelearnset


levelup SPECIES_FLAAFFY
	learnset MOVE_CHARGE, 1
	learnset MOVE_COTTON_SPORE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_THUNDER_WAVE, 12
	learnset MOVE_ELECTROWEB, 14
	learnset MOVE_COTTON_GUARD, 15
	learnset MOVE_SEISMIC_TOSS, 16
	learnset MOVE_ELECTRO_BALL, 18
	learnset MOVE_SIGNAL_BEAM, 20
	learnset MOVE_HEAL_BELL, 23
	learnset MOVE_DISCHARGE, 26
	learnset MOVE_CONFUSE_RAY, 29
	learnset MOVE_AGILITY, 33
	learnset MOVE_TAKE_DOWN, 37
	learnset MOVE_CHARGE_BEAM, 41
	learnset MOVE_FOCUS_PUNCH, 45
	learnset MOVE_BODY_SLAM, 49
	learnset MOVE_NUZZLE, 53
	learnset MOVE_DOUBLE_EDGE, 57
	learnset MOVE_ZAP_CANNON, 62
    terminatelearnset


levelup SPECIES_AMPHAROS
	learnset MOVE_COTTON_SPORE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_THUNDER_WAVE, 12
	learnset MOVE_ELECTROWEB, 14
	learnset MOVE_COTTON_GUARD, 15
	learnset MOVE_SEISMIC_TOSS, 16
	learnset MOVE_ELECTRO_BALL, 18
	learnset MOVE_SIGNAL_BEAM, 20
	learnset MOVE_HEAL_BELL, 23
	learnset MOVE_DISCHARGE, 26
	learnset MOVE_CONFUSE_RAY, 29
	learnset MOVE_BREAKING_SWIPE, 30
	learnset MOVE_AGILITY, 34
	learnset MOVE_TAKE_DOWN, 38
	learnset MOVE_DRAGON_BREATH, 42
	learnset MOVE_FOCUS_PUNCH, 46
	learnset MOVE_BODY_SLAM, 50
	learnset MOVE_NUZZLE, 54
	learnset MOVE_DOUBLE_EDGE, 59
	learnset MOVE_ZAP_CANNON, 63
	learnset MOVE_TAIL_GLOW, 68
    terminatelearnset


levelup SPECIES_BELLOSSOM
	learnset MOVE_DRAIN_PUNCH, 1
	learnset MOVE_EARTH_POWER, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_LEAF_BLADE, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_TEETER_DANCE, 1
	learnset MOVE_FIERY_DANCE, 25
	learnset MOVE_LEAF_TORNADO, 30
	learnset MOVE_MEGA_DRAIN, 36
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_PETAL_DANCE, 48
	learnset MOVE_QUIVER_DANCE, 58
	learnset MOVE_LEAF_STORM, 68
    terminatelearnset


levelup SPECIES_MARILL
	learnset MOVE_SPLASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SING, 6
	learnset MOVE_TICKLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_BUBBLE_BEAM, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_WHIRLPOOL, 16
	learnset MOVE_AQUA_JET, 18
	learnset MOVE_HELPING_HAND, 21
	learnset MOVE_COVET, 24
	learnset MOVE_SOAK, 27
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_BODY_SLAM, 33
	learnset MOVE_FUTURE_SIGHT, 36
	learnset MOVE_AMNESIA, 39
	learnset MOVE_BOUNCE, 42
	learnset MOVE_BELLY_DRUM, 45
	learnset MOVE_PLAY_ROUGH, 48
	learnset MOVE_PERISH_SONG, 51
	learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_AZUMARILL
	learnset MOVE_CURSE, 1
	learnset MOVE_REFRESH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SING, 6
	learnset MOVE_TICKLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_BUBBLE_BEAM, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_WHIRLPOOL, 16
	learnset MOVE_AQUA_JET, 18
	learnset MOVE_HELPING_HAND, 21
	learnset MOVE_ROLLOUT, 21
	learnset MOVE_COVET, 25
	learnset MOVE_SOAK, 29
	learnset MOVE_AQUA_TAIL, 33
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_FUTURE_SIGHT, 41
	learnset MOVE_AMNESIA, 45
	learnset MOVE_BOUNCE, 49
	learnset MOVE_BELLY_DRUM, 53
	learnset MOVE_PLAY_ROUGH, 57
	learnset MOVE_PERISH_SONG, 61
	learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset


levelup SPECIES_SUDOWOODO
	learnset MOVE_WOOD_HAMMER, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_MIMIC, 7
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_HEADBUTT, 13
	learnset MOVE_SANDSTORM, 16
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_FOUL_PLAY, 22
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_FIRE_PUNCH, 26
	learnset MOVE_ICE_PUNCH, 26
	learnset MOVE_THUNDER_PUNCH, 26
	learnset MOVE_STONE_EDGE, 29
	learnset MOVE_COUNTER, 32
	learnset MOVE_HAMMER_ARM, 36
	learnset MOVE_STEALTH_ROCK, 40
	learnset MOVE_ROLE_PLAY, 44
	learnset MOVE_FAKE_TEARS, 48
	learnset MOVE_HEAD_SMASH, 52
	learnset MOVE_CURSE, 56
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_BATON_PASS, 64
    terminatelearnset


levelup SPECIES_POLITOED
	learnset MOVE_BELLY_DRUM, 1
	learnset MOVE_BUBBLE_BEAM, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_PERISH_SONG, 1
	learnset MOVE_MIND_READER, 15
	learnset MOVE_REFRESH, 25
	learnset MOVE_HELPING_HAND, 35
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_BOUNCE, 45
	learnset MOVE_RAIN_DANCE, 50
	learnset MOVE_HYPER_VOICE, 55
	learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_HOPPIP
	learnset MOVE_SPLASH, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_BULLET_SEED, 6
	learnset MOVE_GUST, 8
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_WORRY_SEED, 14
	learnset MOVE_POISON_POWDER, 16
	learnset MOVE_SLEEP_POWDER, 16
	learnset MOVE_RAGE_POWDER, 16
	learnset MOVE_ACROBATICS, 19
	learnset MOVE_CONFUSION, 22
	learnset MOVE_LEECH_SEED, 24
	learnset MOVE_AROMATHERAPY, 26
	learnset MOVE_LEAF_TORNADO, 28
	learnset MOVE_AIR_CUTTER, 31
	learnset MOVE_COTTON_GUARD, 34
	learnset MOVE_HELPING_HAND, 37
	learnset MOVE_ENERGY_BALL, 40
	learnset MOVE_AMNESIA, 43
	learnset MOVE_AIR_SLASH, 46
	learnset MOVE_TAILWIND, 50
	learnset MOVE_MEMENTO, 54
    terminatelearnset


levelup SPECIES_SKIPLOOM
	learnset MOVE_SPLASH, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_BULLET_SEED, 6
	learnset MOVE_GUST, 8
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_WORRY_SEED, 14
	learnset MOVE_POISON_POWDER, 16
	learnset MOVE_SLEEP_POWDER, 16
	learnset MOVE_RAGE_POWDER, 16
	learnset MOVE_COTTON_SPORE, 18
	learnset MOVE_ACROBATICS, 20
	learnset MOVE_CONFUSION, 23
	learnset MOVE_LEECH_SEED, 25
	learnset MOVE_AROMATHERAPY, 27
	learnset MOVE_LEAF_TORNADO, 29
	learnset MOVE_AIR_CUTTER, 32
	learnset MOVE_COTTON_GUARD, 35
	learnset MOVE_HELPING_HAND, 38
	learnset MOVE_ENERGY_BALL, 41
	learnset MOVE_AMNESIA, 44
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_TAILWIND, 52
	learnset MOVE_MEMENTO, 56
    terminatelearnset


levelup SPECIES_JUMPLUFF
	learnset MOVE_SPLASH, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_BULLET_SEED, 6
	learnset MOVE_GUST, 8
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_WORRY_SEED, 14
	learnset MOVE_POISON_POWDER, 16
	learnset MOVE_SLEEP_POWDER, 16
	learnset MOVE_RAGE_POWDER, 16
	learnset MOVE_COTTON_SPORE, 18
	learnset MOVE_ACROBATICS, 20
	learnset MOVE_CONFUSION, 23
	learnset MOVE_LEECH_SEED, 25
	learnset MOVE_AROMATHERAPY, 27
	learnset MOVE_LEAF_TORNADO, 31
	learnset MOVE_AIR_CUTTER, 35
	learnset MOVE_COTTON_GUARD, 39
	learnset MOVE_HELPING_HAND, 43
	learnset MOVE_ENERGY_BALL, 47
	learnset MOVE_AMNESIA, 51
	learnset MOVE_AIR_SLASH, 54
	learnset MOVE_TAILWIND, 58
	learnset MOVE_MEMENTO, 62
    terminatelearnset


levelup SPECIES_AIPOM
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_TICKLE, 8
	learnset MOVE_BATON_PASS, 11
	learnset MOVE_PURSUIT, 14
	learnset MOVE_FURY_SWIPES, 17
	learnset MOVE_COVET, 20
	learnset MOVE_QUICK_ATTACK, 23
	learnset MOVE_SCREECH, 26
	learnset MOVE_AGILITY, 29
	learnset MOVE_DOUBLE_HIT, 32
	learnset MOVE_FAKE_OUT, 35
	learnset MOVE_FLING, 38
	learnset MOVE_BOUNCE, 41
	learnset MOVE_SWITCHEROO, 45
	learnset MOVE_LAST_RESORT, 50
    terminatelearnset


levelup SPECIES_SUNKERN
	learnset MOVE_ABSORB, 1
	learnset MOVE_POUND, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_LEECH_SEED, 4
	learnset MOVE_RAZOR_LEAF, 7
	learnset MOVE_GRASS_WHISTLE, 10
	learnset MOVE_HELPING_HAND, 12
	learnset MOVE_BULLET_SEED, 14
	learnset MOVE_ENDEAVOR, 16
	learnset MOVE_SYNTHESIS, 18
	learnset MOVE_NATURE_POWER, 20
	learnset MOVE_MORNING_SUN, 23
	learnset MOVE_LEAF_TORNADO, 26
	learnset MOVE_WORRY_SEED, 29
	learnset MOVE_PETAL_DANCE, 32
	learnset MOVE_UPROAR, 35
	learnset MOVE_GROWTH, 38
	learnset MOVE_EARTH_POWER, 42
	learnset MOVE_SUNNY_DAY, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_LEAF_STORM, 54
	learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_SUNFLORA
	learnset MOVE_HEAT_WAVE, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_POUND, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_LEECH_SEED, 4
	learnset MOVE_RAZOR_LEAF, 7
	learnset MOVE_GRASS_WHISTLE, 10
	learnset MOVE_HELPING_HAND, 12
	learnset MOVE_BULLET_SEED, 14
	learnset MOVE_ENDEAVOR, 16
	learnset MOVE_SYNTHESIS, 18
	learnset MOVE_NATURE_POWER, 20
	learnset MOVE_MORNING_SUN, 23
	learnset MOVE_LEAF_TORNADO, 26
	learnset MOVE_WORRY_SEED, 29
	learnset MOVE_PETAL_DANCE, 32
	learnset MOVE_UPROAR, 35
	learnset MOVE_GROWTH, 38
	learnset MOVE_EARTH_POWER, 42
	learnset MOVE_SUNNY_DAY, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_LEAF_STORM, 54
	learnset MOVE_SOLAR_BEAM, 58
	learnset MOVE_FIERY_DANCE, 62
    terminatelearnset


levelup SPECIES_YANMA
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_SILVER_WIND, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_SONIC_BOOM, 16
	learnset MOVE_DETECT, 19
	learnset MOVE_STRUGGLE_BUG, 22
	learnset MOVE_OMINOUS_WIND, 25
	learnset MOVE_WING_ATTACK, 28
	learnset MOVE_AIR_CUTTER, 31
	learnset MOVE_ANCIENT_POWER, 34
	learnset MOVE_WHIRLWIND, 37
	learnset MOVE_LEECH_LIFE, 40
	learnset MOVE_REVERSAL, 44
	learnset MOVE_HYPNOSIS, 48
	learnset MOVE_BUG_BUZZ, 52
	learnset MOVE_AIR_SLASH, 56
    terminatelearnset


levelup SPECIES_WOOPER
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_ACID_SPRAY, 4
	learnset MOVE_MUD_SHOT, 7
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_HAZE, 13
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_WATER_PULSE, 18
	learnset MOVE_BULLDOZE, 20
	learnset MOVE_WHIRLPOOL, 22
	learnset MOVE_YAWN, 24
	learnset MOVE_AQUA_TAIL, 26
	learnset MOVE_AMNESIA, 28
	learnset MOVE_COUNTER, 30
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_MUDDY_WATER, 35
	learnset MOVE_CURSE, 38
	learnset MOVE_SPIKES, 41
	learnset MOVE_DOUBLE_EDGE, 45
	learnset MOVE_FOCUS_PUNCH, 49
	learnset MOVE_HIGH_HORSEPOWER, 53
	learnset MOVE_RECOVER, 57
    terminatelearnset


levelup SPECIES_QUAGSIRE
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_ACID_SPRAY, 4
	learnset MOVE_MUD_SHOT, 7
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_HAZE, 13
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_WATER_PULSE, 18
	learnset MOVE_BULLDOZE, 20
	learnset MOVE_STOCKPILE, 21
	learnset MOVE_SWALLOW, 21
	learnset MOVE_WHIRLPOOL, 23
	learnset MOVE_YAWN, 25
	learnset MOVE_AQUA_TAIL, 27
	learnset MOVE_AMNESIA, 29
	learnset MOVE_COUNTER, 33
	learnset MOVE_BODY_SLAM, 36
	learnset MOVE_MUDDY_WATER, 39
	learnset MOVE_CURSE, 43
	learnset MOVE_SPIKES, 47
	learnset MOVE_DOUBLE_EDGE, 51
	learnset MOVE_FOCUS_PUNCH, 55
	learnset MOVE_HIGH_HORSEPOWER, 59
	learnset MOVE_RECOVER, 63
    terminatelearnset


levelup SPECIES_ESPEON
	learnset MOVE_AURA_SPHERE, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_POWER_SWAP, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_PSYBEAM, 24
	learnset MOVE_MAGICAL_LEAF, 28
	learnset MOVE_PSYCHIC_FANGS, 32
	learnset MOVE_DRAINING_KISS, 36
	learnset MOVE_EXTRASENSORY, 40
	learnset MOVE_MORNING_SUN, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_FUTURE_SIGHT, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_UMBREON
	learnset MOVE_NIGHT_DAZE, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_SNARL, 24
	learnset MOVE_ASSURANCE, 28
	learnset MOVE_CONFUSE_RAY, 32
	learnset MOVE_PAYBACK, 36
	learnset MOVE_FOUL_PLAY, 40
	learnset MOVE_MOONLIGHT, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_SUCKER_PUNCH, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_MURKROW
	learnset MOVE_PECK, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_PURSUIT, 5
	learnset MOVE_HAZE, 9
	learnset MOVE_SCREECH, 12
	learnset MOVE_FEINT_ATTACK, 15
	learnset MOVE_NIGHT_SHADE, 18
	learnset MOVE_WING_ATTACK, 21
	learnset MOVE_ASSURANCE, 24
	learnset MOVE_TORMENT, 27
	learnset MOVE_MEAN_LOOK, 30
	learnset MOVE_SUCKER_PUNCH, 33
	learnset MOVE_DRILL_PECK, 36
	learnset MOVE_TAILWIND, 40
	learnset MOVE_FEATHER_DANCE, 44
	learnset MOVE_NIGHT_SLASH, 48
	learnset MOVE_FOUL_PLAY, 52
	learnset MOVE_PERISH_SONG, 56
	learnset MOVE_BRAVE_BIRD, 60
	learnset MOVE_NASTY_PLOT, 64
    terminatelearnset


levelup SPECIES_SLOWKING
	learnset MOVE_CURSE, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_CONFUSION, 10
	learnset MOVE_DISABLE, 13
	learnset MOVE_BRINE, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_ZEN_HEADBUTT, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_WONDER_ROOM, 28
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_WITHDRAW, 33
	learnset MOVE_BELLY_DRUM, 37
	learnset MOVE_BUBBLE_BEAM, 41
	learnset MOVE_PSYCH_UP, 45
	learnset MOVE_FUTURE_SIGHT, 49
	learnset MOVE_SKILL_SWAP, 53
	learnset MOVE_HEAL_PULSE, 57
	learnset MOVE_NASTY_PLOT, 61
	learnset MOVE_SLACK_OFF, 65
    terminatelearnset


levelup SPECIES_MISDREAVUS
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SPITE, 5
	learnset MOVE_ASTONISH, 9
	learnset MOVE_DISARMING_VOICE, 12
	learnset MOVE_CONFUSE_RAY, 15
	learnset MOVE_NIGHT_SHADE, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_PAIN_SPLIT, 24
	learnset MOVE_TORMENT, 27
	learnset MOVE_MEAN_LOOK, 30
	learnset MOVE_CURSE, 33
	learnset MOVE_HEX, 36
	learnset MOVE_DRAINING_KISS, 39
	learnset MOVE_GRUDGE, 42
	learnset MOVE_HYPNOSIS, 45
	learnset MOVE_MOONBLAST, 48
	learnset MOVE_PERISH_SONG, 51
	learnset MOVE_DESTINY_BOND, 54
	learnset MOVE_NASTY_PLOT, 57
    terminatelearnset


levelup SPECIES_UNOWN
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_EARTH_POWER, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_NATURE_POWER, 1
	learnset MOVE_SECRET_POWER, 1
	learnset MOVE_STORED_POWER, 1
    terminatelearnset


levelup SPECIES_WOBBUFFET
	learnset MOVE_AMNESIA, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_COUNTER, 1
	learnset MOVE_DESTINY_BOND, 1
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_SAFEGUARD, 1
	learnset MOVE_TICKLE, 1
    terminatelearnset


levelup SPECIES_GIRAFARIG
	learnset MOVE_AGILITY, 1
	learnset MOVE_FOUL_PLAY, 1
	learnset MOVE_HIGH_HORSEPOWER, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONFUSION, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_GUARD_SWAP, 10
	learnset MOVE_POWER_SWAP, 10
	learnset MOVE_STOMP, 13
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_ASSURANCE, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_BEAT_UP, 25
	learnset MOVE_DOUBLE_HIT, 28
	learnset MOVE_FUTURE_SIGHT, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_PSYSHIELD_BASH, 41
	learnset MOVE_WISH, 44
	learnset MOVE_PSYCHIC_FANGS, 48
	learnset MOVE_NASTY_PLOT, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_BATON_PASS, 60
    terminatelearnset


levelup SPECIES_PINECO
	learnset MOVE_TACKLE, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_STRUGGLE_BUG, 6
	learnset MOVE_RAPID_SPIN, 12
	learnset MOVE_AUTOTOMIZE, 15
	learnset MOVE_ROLLOUT, 18
	learnset MOVE_REVENGE, 21
	learnset MOVE_COUNTER, 24
	learnset MOVE_SPIKES, 27
	learnset MOVE_TOXIC_SPIKES, 27
	learnset MOVE_MIRROR_SHOT, 30
	learnset MOVE_IRON_DEFENSE, 33
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_PIN_MISSILE, 39
	learnset MOVE_GYRO_BALL, 42
	learnset MOVE_PAIN_SPLIT, 45
	learnset MOVE_POWER_TRICK, 48
	learnset MOVE_DOUBLE_EDGE, 51
	learnset MOVE_EXPLOSION, 54
    terminatelearnset


levelup SPECIES_FORRETRESS
	learnset MOVE_HEAVY_SLAM, 1
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_STRUGGLE_BUG, 6
	learnset MOVE_RAPID_SPIN, 12
	learnset MOVE_AUTOTOMIZE, 15
	learnset MOVE_ROLLOUT, 18
	learnset MOVE_REVENGE, 21
	learnset MOVE_COUNTER, 24
	learnset MOVE_SPIKES, 27
	learnset MOVE_TOXIC_SPIKES, 27
	learnset MOVE_MIRROR_SHOT, 30
	learnset MOVE_IRON_DEFENSE, 33
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_PIN_MISSILE, 39
	learnset MOVE_GYRO_BALL, 42
	learnset MOVE_PAIN_SPLIT, 45
	learnset MOVE_POWER_TRICK, 48
	learnset MOVE_DOUBLE_EDGE, 51
	learnset MOVE_EXPLOSION, 54
	learnset MOVE_ZAP_CANNON, 58
    terminatelearnset


levelup SPECIES_DUNSPARCE
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_BITE, 4
	learnset MOVE_SPITE, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_SCREECH, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_HEX, 22
	learnset MOVE_CURSE, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_ENDEAVOR, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_COIL, 40
	learnset MOVE_DUAL_WINGBEAT, 43
	learnset MOVE_AIR_SLASH, 46
	learnset MOVE_GLARE, 49
	learnset MOVE_DRAGON_RUSH, 52
	learnset MOVE_AGILITY, 55
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_LAST_RESORT, 61
    terminatelearnset


levelup SPECIES_GLIGAR
	learnset MOVE_HARDEN, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_FEINT, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_METAL_CLAW, 19
	learnset MOVE_AGILITY, 22
	learnset MOVE_COUNTER, 25
	learnset MOVE_SCREECH, 28
	learnset MOVE_WING_ATTACK, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_POISON_TAIL, 37
	learnset MOVE_ACROBATICS, 40
	learnset MOVE_PIN_MISSILE, 44
	learnset MOVE_SKY_UPPERCUT, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_CROSS_POISON, 56
	learnset MOVE_TAILWIND, 60
	learnset MOVE_GUILLOTINE, 64
    terminatelearnset


levelup SPECIES_STEELIX
    learnset MOVE_CRUNCH, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ROCK_POLISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_CURSE, 10
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_AUTOTOMIZE, 13
    learnset MOVE_RAGE, 13
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_GYRO_BALL, 20
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_SCREECH, 27
    learnset MOVE_SAND_TOMB, 28
    learnset MOVE_SLAM, 32
    learnset MOVE_CRUNCH, 37
    learnset MOVE_DIG, 43
    learnset MOVE_IRON_TAIL, 44
    learnset MOVE_SANDSTORM, 45
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_MAGNET_RISE, 60
    terminatelearnset


levelup SPECIES_SNUBBULL
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_DETECT, 4
	learnset MOVE_BITE, 7
	learnset MOVE_LICK, 10
	learnset MOVE_CHARM, 13
	learnset MOVE_PAYBACK, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_MIMIC, 22
	learnset MOVE_COVET, 25
	learnset MOVE_ROAR, 28
	learnset MOVE_HEAL_BELL, 31
	learnset MOVE_SUPER_FANG, 34
	learnset MOVE_CRUNCH, 37
	learnset MOVE_PLAY_ROUGH, 40
	learnset MOVE_DYNAMIC_PUNCH, 43
	learnset MOVE_FAKE_TEARS, 45
	learnset MOVE_FOCUS_PUNCH, 48
	learnset MOVE_DOUBLE_EDGE, 51
	learnset MOVE_LAST_RESORT, 54
    terminatelearnset


levelup SPECIES_GRANBULL
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_DETECT, 4
	learnset MOVE_BITE, 7
	learnset MOVE_LICK, 10
	learnset MOVE_CHARM, 13
	learnset MOVE_PAYBACK, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_MIMIC, 22
	learnset MOVE_DOUBLE_KICK, 23
	learnset MOVE_COVET, 26
	learnset MOVE_ROAR, 29
	learnset MOVE_HEAL_BELL, 31
	learnset MOVE_SUPER_FANG, 34
	learnset MOVE_CRUNCH, 37
	learnset MOVE_PLAY_ROUGH, 40
	learnset MOVE_DYNAMIC_PUNCH, 44
	learnset MOVE_FAKE_TEARS, 48
	learnset MOVE_FOCUS_PUNCH, 52
	learnset MOVE_CLOSE_COMBAT, 56
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_LAST_RESORT, 64
    terminatelearnset


levelup SPECIES_QWILFISH
	learnset MOVE_ASTONISH, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_ACID_SPRAY, 7
	learnset MOVE_HAZE, 10
	learnset MOVE_AQUA_JET, 13
	learnset MOVE_PIN_MISSILE, 16
	learnset MOVE_SPIKES, 19
	learnset MOVE_TOXIC_SPIKES, 19
	learnset MOVE_REVENGE, 22
	learnset MOVE_BUBBLE_BEAM, 25
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_ROLLOUT, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_ACUPRESSURE, 37
	learnset MOVE_AQUA_TAIL, 40
	learnset MOVE_PAYBACK, 44
	learnset MOVE_WHIRLPOOL, 48
	learnset MOVE_GUNK_SHOT, 52
	learnset MOVE_WAVE_CRASH, 56
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_DESTINY_BOND, 64
	learnset MOVE_HYDRO_PUMP, 68
    terminatelearnset


levelup SPECIES_SCIZOR
	learnset MOVE_PSYCHO_CUT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FALSE_SWIPE, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_DETECT, 7
	learnset MOVE_VACUUM_WAVE, 10
	learnset MOVE_FEINT, 13
	learnset MOVE_AGILITY, 16
	learnset MOVE_PURSUIT, 19
	learnset MOVE_WING_ATTACK, 22
	learnset MOVE_QUICK_GUARD, 25
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_METAL_CLAW, 31
	learnset MOVE_DOUBLE_HIT, 35
	learnset MOVE_AIR_SLASH, 39
	learnset MOVE_BUG_BITE, 43
	learnset MOVE_STEEL_WING, 47
	learnset MOVE_REVERSAL, 51
	learnset MOVE_BULLET_PUNCH, 55
	learnset MOVE_DOUBLE_EDGE, 59
	learnset MOVE_CRABHAMMER, 63
	learnset MOVE_CLOSE_COMBAT, 67
    terminatelearnset


levelup SPECIES_SHUCKLE
	learnset MOVE_BIDE, 1
	learnset MOVE_INFESTATION, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_ACID, 6
	learnset MOVE_WRAP, 9
	learnset MOVE_STRUGGLE_BUG, 12
	learnset MOVE_ROCK_THROW, 15
	learnset MOVE_REST, 18
	learnset MOVE_BUG_BITE, 21
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_POWER_TRICK, 27
	learnset MOVE_GASTRO_ACID, 30
	learnset MOVE_ROCK_BLAST, 33
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_STEALTH_ROCK, 39
	learnset MOVE_ACCELEROCK, 42
	learnset MOVE_ACUPRESSURE, 46
	learnset MOVE_STONE_EDGE, 50
	learnset MOVE_HELPING_HAND, 54
	learnset MOVE_SHELL_SMASH, 58
	learnset MOVE_FINAL_GAMBIT, 62
    terminatelearnset


levelup SPECIES_HERACROSS
	learnset MOVE_ARM_THRUST, 1
	learnset MOVE_BULLET_SEED, 1
	learnset MOVE_LEER, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_FURY_ATTACK, 4
	learnset MOVE_ENDURE, 7
	learnset MOVE_SEISMIC_TOSS, 10
	learnset MOVE_FLAIL, 13
	learnset MOVE_COUNTER, 16
	learnset MOVE_AERIAL_ACE, 19
	learnset MOVE_BUG_BITE, 22
	learnset MOVE_REVENGE, 25
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_CHIP_AWAY, 31
	learnset MOVE_REVERSAL, 35
	learnset MOVE_TAKE_DOWN, 39
	learnset MOVE_FURY_CUTTER, 43
	learnset MOVE_CLOSE_COMBAT, 47
	learnset MOVE_MEGAHORN, 51
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_ROCK_BLAST, 59
	learnset MOVE_PIN_MISSILE, 63
	learnset MOVE_FOCUS_PUNCH, 67
    terminatelearnset


levelup SPECIES_SNEASEL
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FLING, 1
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_SPITE, 10
	learnset MOVE_FEINT_ATTACK, 13
	learnset MOVE_FURY_SWIPES, 16
	learnset MOVE_COUNTER, 19
	learnset MOVE_METAL_CLAW, 22
	learnset MOVE_AGILITY, 25
	learnset MOVE_PURSUIT, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_NIGHT_SLASH, 32
	learnset MOVE_REVENGE, 36
	learnset MOVE_ASSURANCE, 39
	learnset MOVE_SNATCH, 43
	learnset MOVE_DOUBLE_HIT, 47
	learnset MOVE_SCREECH, 52
	learnset MOVE_FOCUS_PUNCH, 56
	learnset MOVE_FAKE_OUT, 60
	learnset MOVE_ICICLE_CRASH, 64
	learnset MOVE_ICE_SHARD, 68
    terminatelearnset


levelup SPECIES_TEDDIURSA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_FLING, 1
	learnset MOVE_FURY_SWIPES, 4
	learnset MOVE_CURSE, 7
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_HEADBUTT, 13
	learnset MOVE_BULLDOZE, 16
	learnset MOVE_FURY_CUTTER, 19
	learnset MOVE_FEINT_ATTACK, 22
	learnset MOVE_SLASH, 25
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_SEISMIC_TOSS, 28
	learnset MOVE_CHIP_AWAY, 30
	learnset MOVE_CRUNCH, 33
	learnset MOVE_CROSS_CHOP, 36
	learnset MOVE_PLAY_ROUGH, 39
	learnset MOVE_TAKE_DOWN, 42
	learnset MOVE_CLOSE_COMBAT, 45
	learnset MOVE_BELLY_DRUM, 48
	learnset MOVE_DOUBLE_EDGE, 51
	learnset MOVE_HEADLONG_RUSH, 55
    terminatelearnset


levelup SPECIES_URSARING
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_FLING, 1
	learnset MOVE_FURY_SWIPES, 4
	learnset MOVE_CURSE, 7
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_HEADBUTT, 13
	learnset MOVE_BULLDOZE, 16
	learnset MOVE_FURY_CUTTER, 19
	learnset MOVE_FEINT_ATTACK, 22
	learnset MOVE_SLASH, 25
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_SEISMIC_TOSS, 28
	learnset MOVE_CHIP_AWAY, 30
	learnset MOVE_CRUNCH, 34
	learnset MOVE_CROSS_CHOP, 38
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_TAKE_DOWN, 46
	learnset MOVE_CLOSE_COMBAT, 50
	learnset MOVE_BELLY_DRUM, 54
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_HEADLONG_RUSH, 62
	learnset MOVE_HAMMER_ARM, 66
    terminatelearnset


levelup SPECIES_SLUGMA
	learnset MOVE_SMOG, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_SMOKESCREEN, 4
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_ROLLOUT, 10
	learnset MOVE_MUD_SLAP, 12
	learnset MOVE_AMNESIA, 14
	learnset MOVE_YAWN, 16
	learnset MOVE_CURSE, 18
	learnset MOVE_FLAME_BURST, 20
	learnset MOVE_ANCIENT_POWER, 23
	learnset MOVE_PAIN_SPLIT, 26
	learnset MOVE_CLEAR_SMOG, 29
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_ROCK_SLIDE, 36
	learnset MOVE_HEAT_WAVE, 40
	learnset MOVE_ACID_ARMOR, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_INFERNO, 52
	learnset MOVE_MEMENTO, 56
	learnset MOVE_MAGMA_STORM, 60
	learnset MOVE_SHELL_SMASH, 64
    terminatelearnset


levelup SPECIES_MAGCARGO
	learnset MOVE_SMOG, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_SMOKESCREEN, 4
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_ROLLOUT, 10
	learnset MOVE_MUD_SLAP, 12
	learnset MOVE_AMNESIA, 14
	learnset MOVE_YAWN, 16
	learnset MOVE_CURSE, 18
	learnset MOVE_FLAME_BURST, 20
	learnset MOVE_ANCIENT_POWER, 23
	learnset MOVE_PAIN_SPLIT, 26
	learnset MOVE_CLEAR_SMOG, 29
	learnset MOVE_LAVA_PLUME, 30
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_ROCK_SLIDE, 38
	learnset MOVE_HEAT_WAVE, 42
	learnset MOVE_ACID_ARMOR, 46
	learnset MOVE_RECOVER, 50
	learnset MOVE_INFERNO, 54
	learnset MOVE_MEMENTO, 58
	learnset MOVE_MAGMA_STORM, 62
	learnset MOVE_SHELL_SMASH, 66
    terminatelearnset


levelup SPECIES_SWINUB
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PECK, 4
	learnset MOVE_BITE, 6
	learnset MOVE_POWDER_SNOW, 8
	learnset MOVE_FLAIL, 10
	learnset MOVE_MUD_BOMB, 12
	learnset MOVE_ICE_SHARD, 14
	learnset MOVE_CURSE, 16
	learnset MOVE_BULLDOZE, 18
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_ICICLE_SPEAR, 24
	learnset MOVE_ENDEAVOR, 27
	learnset MOVE_BODY_SLAM, 30
	learnset MOVE_AMNESIA, 33
	learnset MOVE_AVALANCHE, 36
	learnset MOVE_ROAR, 39
	learnset MOVE_TAKE_DOWN, 42
	learnset MOVE_EARTHQUAKE, 45
	learnset MOVE_DOUBLE_EDGE, 48
	learnset MOVE_ICICLE_CRASH, 51
	learnset MOVE_HIGH_HORSEPOWER, 54
    terminatelearnset


levelup SPECIES_PILOSWINE
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PECK, 4
	learnset MOVE_BITE, 6
	learnset MOVE_POWDER_SNOW, 8
	learnset MOVE_FLAIL, 10
	learnset MOVE_MUD_BOMB, 12
	learnset MOVE_ICE_SHARD, 14
	learnset MOVE_CURSE, 16
	learnset MOVE_BULLDOZE, 18
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_ICICLE_SPEAR, 24
	learnset MOVE_ENDEAVOR, 27
	learnset MOVE_BODY_SLAM, 30
	learnset MOVE_AMNESIA, 33
	learnset MOVE_DOUBLE_HIT, 33
	learnset MOVE_AVALANCHE, 37
	learnset MOVE_ROAR, 41
	learnset MOVE_TAKE_DOWN, 45
	learnset MOVE_EARTHQUAKE, 49
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_ICICLE_CRASH, 57
	learnset MOVE_HIGH_HORSEPOWER, 61
	learnset MOVE_HEADLONG_RUSH, 65
    terminatelearnset


levelup SPECIES_CORSOLA
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_RECOVER, 7
	learnset MOVE_REFRESH, 10
	learnset MOVE_ANCIENT_POWER, 13
	learnset MOVE_BRINE, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_LUCKY_CHANT, 22
	learnset MOVE_BUBBLE_BEAM, 25
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_AMNESIA, 28
	learnset MOVE_CAMOUFLAGE, 31
	learnset MOVE_EARTH_POWER, 34
	learnset MOVE_ICICLE_SPEAR, 37
	learnset MOVE_ROCK_BLAST, 40
	learnset MOVE_INGRAIN, 43
	learnset MOVE_MIRROR_COAT, 46
	learnset MOVE_AQUA_RING, 49
	learnset MOVE_CONFUSE_RAY, 53
	learnset MOVE_HEAD_SMASH, 57
    terminatelearnset


levelup SPECIES_REMORAID
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LOCK_ON, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_ACID_SPRAY, 6
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_AURORA_BEAM, 13
	learnset MOVE_ROCK_BLAST, 16
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_SOAK, 25
	learnset MOVE_SIGNAL_BEAM, 28
	learnset MOVE_MUD_SHOT, 31
	learnset MOVE_SEED_BOMB, 34
	learnset MOVE_FLAMETHROWER, 37
	learnset MOVE_HYDRO_PUMP, 40
	learnset MOVE_GUNK_SHOT, 43
	learnset MOVE_HYPER_BEAM, 46
	learnset MOVE_WATER_SPOUT, 50
    terminatelearnset


levelup SPECIES_OCTILLERY
	learnset MOVE_ENTRAINMENT, 1
	learnset MOVE_WRING_OUT, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LOCK_ON, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_ACID_SPRAY, 6
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_AURORA_BEAM, 13
	learnset MOVE_ROCK_BLAST, 16
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_SOAK, 25
	learnset MOVE_OCTAZOOKA, 25
	learnset MOVE_SIGNAL_BEAM, 29
	learnset MOVE_MUD_SHOT, 33
	learnset MOVE_SEED_BOMB, 37
	learnset MOVE_FLAMETHROWER, 41
	learnset MOVE_HYDRO_PUMP, 45
	learnset MOVE_GUNK_SHOT, 49
	learnset MOVE_HYPER_BEAM, 53
	learnset MOVE_WATER_SPOUT, 57
	learnset MOVE_ZAP_CANNON, 61
    terminatelearnset


levelup SPECIES_DELIBIRD
	learnset MOVE_FUTURE_SIGHT, 1
	learnset MOVE_DESTINY_BOND, 1
	learnset MOVE_ICE_SHARD, 1
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_PRESENT, 1
	learnset MOVE_COUNTER, 1
	learnset MOVE_ICY_WIND, 8
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_CRABHAMMER, 18
	learnset MOVE_BATON_PASS, 23
	learnset MOVE_AURORA_BEAM, 28
	learnset MOVE_DRILL_PECK, 32
	learnset MOVE_RAPID_SPIN, 38
	learnset MOVE_SPIKES, 42
	learnset MOVE_NASTY_PLOT, 46
	learnset MOVE_TRIPLE_AXEL, 50
	learnset MOVE_TAILWIND, 54
	learnset MOVE_BRAVE_BIRD, 58
    terminatelearnset


levelup SPECIES_MANTINE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_AIR_CUTTER, 22
	learnset MOVE_TWISTER, 25
	learnset MOVE_WIDE_GUARD, 27
	learnset MOVE_AGILITY, 29
	learnset MOVE_BULLET_SEED, 32
	learnset MOVE_AQUA_RING, 35
	learnset MOVE_MIRROR_COAT, 38
	learnset MOVE_BOUNCE, 41
	learnset MOVE_TAILWIND, 44
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_AIR_SLASH, 52
	learnset MOVE_HAZE, 56
	learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_SKARMORY
	learnset MOVE_COUNTER, 1
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_IRON_DEFENSE, 10
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_PURSUIT, 16
	learnset MOVE_AUTOTOMIZE, 19
	learnset MOVE_WING_ATTACK, 22
	learnset MOVE_METAL_CLAW, 25
	learnset MOVE_ASSURANCE, 28
	learnset MOVE_STEEL_WING, 31
	learnset MOVE_WHIRLWIND, 34
	learnset MOVE_DUAL_WINGBEAT, 37
	learnset MOVE_SLASH, 40
	learnset MOVE_NIGHT_SLASH, 40
	learnset MOVE_SMART_STRIKE, 44
	learnset MOVE_SPIKES, 48
	learnset MOVE_DRILL_PECK, 52
	learnset MOVE_IRON_HEAD, 56
	learnset MOVE_BRAVE_BIRD, 60
	learnset MOVE_TAILWIND, 64
	learnset MOVE_SKY_ATTACK, 68
    terminatelearnset


levelup SPECIES_HOUNDOUR
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_EMBER, 7
	learnset MOVE_BITE, 9
	learnset MOVE_SPITE, 11
	learnset MOVE_TAUNT, 13
	learnset MOVE_FIRE_FANG, 16
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_THUNDER_FANG, 16
	learnset MOVE_POISON_FANG, 19
	learnset MOVE_SNARL, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_RAGING_FURY, 28
	learnset MOVE_FLAME_BURST, 31
	learnset MOVE_SUCKER_PUNCH, 34
	learnset MOVE_SUPER_FANG, 38
	learnset MOVE_CRUNCH, 42
	learnset MOVE_DESTINY_BOND, 46
	learnset MOVE_FOUL_PLAY, 50
	learnset MOVE_INFERNO, 54
    terminatelearnset


levelup SPECIES_HOUNDOOM
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_EMBER, 7
	learnset MOVE_BITE, 9
	learnset MOVE_SPITE, 11
	learnset MOVE_TAUNT, 13
	learnset MOVE_FIRE_FANG, 16
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_THUNDER_FANG, 16
	learnset MOVE_POISON_FANG, 19
	learnset MOVE_SNARL, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_BEAT_UP, 26
	learnset MOVE_RAGING_FURY, 29
	learnset MOVE_FLAME_BURST, 33
	learnset MOVE_SUCKER_PUNCH, 37
	learnset MOVE_SUPER_FANG, 41
	learnset MOVE_CRUNCH, 45
	learnset MOVE_DESTINY_BOND, 49
	learnset MOVE_FOUL_PLAY, 53
	learnset MOVE_INFERNO, 57
	learnset MOVE_NASTY_PLOT, 61
    terminatelearnset


levelup SPECIES_KINGDRA
	learnset MOVE_SPLASH, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_TWISTER, 16
	learnset MOVE_BRINE, 19
	learnset MOVE_DISABLE, 22
	learnset MOVE_DRAGON_RAGE, 25
	learnset MOVE_BUBBLE_BEAM, 28
	learnset MOVE_DRAGON_BREATH, 31
	learnset MOVE_OCTAZOOKA, 32
	learnset MOVE_AURORA_BEAM, 34
	learnset MOVE_CLEAR_SMOG, 37
	learnset MOVE_MUDDY_WATER, 41
	learnset MOVE_BOUNCE, 45
	learnset MOVE_DRAGON_PULSE, 49
	learnset MOVE_AGILITY, 53
	learnset MOVE_HYDRO_PUMP, 57
	learnset MOVE_DRAGON_DANCE, 61
    terminatelearnset


levelup SPECIES_PHANPY
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ENDEAVOR, 7
	learnset MOVE_HEADBUTT, 10
	learnset MOVE_ROLLOUT, 13
	learnset MOVE_FLAIL, 16
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_NATURAL_GIFT, 22
	learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_ASSURANCE, 28
	learnset MOVE_STEAMROLLER, 31
	learnset MOVE_CHARM, 34
	learnset MOVE_COUNTER, 37
	learnset MOVE_ICE_SHARD, 40
	learnset MOVE_SCARY_FACE, 43
	learnset MOVE_HIGH_HORSEPOWER, 46
	learnset MOVE_PLAY_ROUGH, 49
	learnset MOVE_BODY_SLAM, 52
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_HEAD_SMASH, 58
    terminatelearnset


levelup SPECIES_DONPHAN
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ENDEAVOR, 7
	learnset MOVE_HEADBUTT, 10
	learnset MOVE_ROLLOUT, 13
	learnset MOVE_FLAIL, 16
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_NATURAL_GIFT, 22
	learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_RAPID_SPIN, 26
	learnset MOVE_ASSURANCE, 29
	learnset MOVE_STEAMROLLER, 32
	learnset MOVE_CHARM, 35
	learnset MOVE_COUNTER, 38
	learnset MOVE_ICE_SHARD, 41
	learnset MOVE_SCARY_FACE, 44
	learnset MOVE_HIGH_HORSEPOWER, 47
	learnset MOVE_PLAY_ROUGH, 51
	learnset MOVE_BODY_SLAM, 55
	learnset MOVE_DOUBLE_EDGE, 59
	learnset MOVE_HEAD_SMASH, 63
	learnset MOVE_HEAVY_SLAM, 67
	learnset MOVE_HEADLONG_RUSH, 71
    terminatelearnset


levelup SPECIES_PORYGON2
	learnset MOVE_LAST_RESORT, 1
	learnset MOVE_CONVERSION, 1
	learnset MOVE_CONVERSION_2, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_SIGNAL_BEAM, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_WONDER_ROOM, 22
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_RECYCLE, 28
	learnset MOVE_TRI_ATTACK, 31
	learnset MOVE_TRICK, 34
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_MAGNET_RISE, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_LOCK_ON, 52
	learnset MOVE_FOUL_PLAY, 56
	learnset MOVE_NASTY_PLOT, 60
	learnset MOVE_ZAP_CANNON, 64
	learnset MOVE_HYPER_BEAM, 68
    terminatelearnset


levelup SPECIES_STANTLER
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_ENTRAINMENT, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ASTONISH, 7
	learnset MOVE_SAND_ATTACK, 10
	learnset MOVE_STOMP, 13
	learnset MOVE_ME_FIRST, 16
	learnset MOVE_CONFUSE_RAY, 19
	learnset MOVE_TAKE_DOWN, 22
	learnset MOVE_SPITE, 25
	learnset MOVE_PSYSHIELD_BASH, 27
	learnset MOVE_ROLE_PLAY, 30
	learnset MOVE_DETECT, 33
	learnset MOVE_BODY_SLAM, 36
	learnset MOVE_DISABLE, 39
	learnset MOVE_LUNGE, 42
	learnset MOVE_JUMP_KICK, 45
	learnset MOVE_NIGHTMARE, 48
	learnset MOVE_BOUNCE, 51
	learnset MOVE_DOUBLE_EDGE, 54
	learnset MOVE_LAST_RESORT, 58
    terminatelearnset


levelup SPECIES_SMEARGLE
	learnset MOVE_SKETCH, 1
	learnset MOVE_SKETCH, 11
	learnset MOVE_SKETCH, 22
	learnset MOVE_SKETCH, 33
	learnset MOVE_SKETCH, 44
	learnset MOVE_SKETCH, 55
	learnset MOVE_SKETCH, 66
	learnset MOVE_SKETCH, 77
	learnset MOVE_SKETCH, 88
	learnset MOVE_SKETCH, 99
    terminatelearnset


levelup SPECIES_TYROGUE
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_VACUUM_WAVE, 1
	learnset MOVE_HELPING_HAND, 4
	learnset MOVE_RAPID_SPIN, 6
	learnset MOVE_COUNTER, 8
	learnset MOVE_MACH_PUNCH, 10
	learnset MOVE_PURSUIT, 12
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_COVET, 16
	learnset MOVE_DETECT, 18
	learnset MOVE_SEISMIC_TOSS, 20
    terminatelearnset


levelup SPECIES_HITMONTOP
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_HELPING_HAND, 4
	learnset MOVE_RAPID_SPIN, 6
	learnset MOVE_COUNTER, 8
	learnset MOVE_MACH_PUNCH, 10
	learnset MOVE_PURSUIT, 12
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_COVET, 16
	learnset MOVE_DETECT, 18
	learnset MOVE_SEISMIC_TOSS, 20
	learnset MOVE_TRIPLE_AXEL, 20
	learnset MOVE_BODY_SLAM, 21
	learnset MOVE_BULK_UP, 23
	learnset MOVE_BULLET_PUNCH, 25
	learnset MOVE_ROLLOUT, 28
	learnset MOVE_REVENGE, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_FORESIGHT, 37
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_DOUBLE_EDGE, 44
	learnset MOVE_ENDEAVOR, 48
	learnset MOVE_LUNGE, 52
	learnset MOVE_WIDE_GUARD, 56
	learnset MOVE_HIGH_JUMP_KICK, 60
	learnset MOVE_CLOSE_COMBAT, 64
    terminatelearnset


levelup SPECIES_SMOOCHUM
	learnset MOVE_POUND, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_LICK, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_LUCKY_CHANT, 8
	learnset MOVE_HEART_STAMP, 10
	learnset MOVE_BODY_SLAM, 12
	learnset MOVE_AVALANCHE, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_FAKE_TEARS, 24
	learnset MOVE_HEAL_BELL, 27
	learnset MOVE_WRING_OUT, 30
	learnset MOVE_FAKE_OUT, 33
	learnset MOVE_WISH, 36
	learnset MOVE_PERISH_SONG, 39
	learnset MOVE_EXTRASENSORY, 42
	learnset MOVE_NIGHTMARE, 45
    terminatelearnset


levelup SPECIES_ELEKID
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_SWIFT, 5
	learnset MOVE_SPARK, 8
	learnset MOVE_UPROAR, 10
	learnset MOVE_SCREECH, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_ELECTRO_BALL, 18
	learnset MOVE_BRICK_BREAK, 21
	learnset MOVE_HELPING_HAND, 24
	learnset MOVE_DUAL_CHOP, 27
	learnset MOVE_THUNDER_PUNCH, 32
	learnset MOVE_CROSS_CHOP, 35
	learnset MOVE_PSYCHIC, 39
	learnset MOVE_HAMMER_ARM, 43
	learnset MOVE_FOCUS_PUNCH, 47
	learnset MOVE_FEINT, 51
	learnset MOVE_CROSS_CHOP, 55
	learnset MOVE_DISCHARGE, 59
    terminatelearnset


levelup SPECIES_MAGBY
	learnset MOVE_SMOG, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_CLEAR_SMOG, 5
	learnset MOVE_FIRE_SPIN, 8
	learnset MOVE_FEINT_ATTACK, 10
	learnset MOVE_MACH_PUNCH, 12
	learnset MOVE_FLAME_WHEEL, 14
	learnset MOVE_CONFUSE_RAY, 16
	learnset MOVE_FLAME_BURST, 18
	learnset MOVE_SCREECH, 21
	learnset MOVE_FIRE_PUNCH, 24
	learnset MOVE_WILL_O_WISP, 27
	learnset MOVE_LAVA_PLUME, 32
	learnset MOVE_CROSS_CHOP, 35
	learnset MOVE_BELLY_DRUM, 39
	learnset MOVE_SLUDGE_BOMB, 43
	learnset MOVE_SCORCHING_SANDS, 47
	learnset MOVE_FLARE_BLITZ, 51
	learnset MOVE_DYNAMIC_PUNCH, 55
	learnset MOVE_SOLAR_BEAM, 59
    terminatelearnset


levelup SPECIES_MILTANK
	learnset MOVE_ZEN_HEADBUTT, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_CHARM, 7
	learnset MOVE_PRESENT, 10
	learnset MOVE_DEFENSE_CURL, 13
	learnset MOVE_ROLLOUT, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_HELPING_HAND, 22
	learnset MOVE_STOMP, 25
	learnset MOVE_WAKE_UP_SLAP, 28
	learnset MOVE_PLAY_ROUGH, 31
	learnset MOVE_DIZZY_PUNCH, 34
	learnset MOVE_HEART_STAMP, 37
	learnset MOVE_MILK_DRINK, 40
	learnset MOVE_BODY_SLAM, 44
	learnset MOVE_HIGH_HORSEPOWER, 48
	learnset MOVE_HEAVY_SLAM, 52
	learnset MOVE_HEAL_BELL, 56
	learnset MOVE_FOCUS_PUNCH, 60
	learnset MOVE_DOUBLE_EDGE, 64
    terminatelearnset


levelup SPECIES_BLISSEY
	learnset MOVE_METRONOME, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_SING, 6
	learnset MOVE_DOUBLE_SLAP, 8
	learnset MOVE_COVET, 10
	learnset MOVE_TAKE_DOWN, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_CAPTIVATE, 18
	learnset MOVE_UPROAR, 21
	learnset MOVE_SING, 24
	learnset MOVE_BESTOW, 27
	learnset MOVE_HELPING_HAND, 30
	learnset MOVE_HEAL_PULSE, 33
	learnset MOVE_SEISMIC_TOSS, 36
	learnset MOVE_DOUBLE_EDGE, 40
	learnset MOVE_HEALING_WISH, 44
	learnset MOVE_AROMATHERAPY, 48
	learnset MOVE_COUNTER, 52
	learnset MOVE_HEAL_BELL, 56
	learnset MOVE_SOFT_BOILED, 60
	learnset MOVE_LAST_RESORT, 64
    terminatelearnset


levelup SPECIES_RAIKOU
	learnset MOVE_WEATHER_BALL, 1
	learnset MOVE_ZAP_CANNON, 1
	learnset MOVE_EXTREME_SPEED, 1
	learnset MOVE_BITE, 1
	learnset MOVE_ROAR, 1
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_SPARK, 14
	learnset MOVE_REFLECT, 18
	learnset MOVE_CRUNCH, 22
	learnset MOVE_THUNDER_FANG, 26
	learnset MOVE_DISCHARGE, 30
	learnset MOVE_EXTRASENSORY, 36
	learnset MOVE_CALM_MIND, 42
	learnset MOVE_THUNDER, 46
	learnset MOVE_AURA_SPHERE, 50
    terminatelearnset


levelup SPECIES_ENTEI
	learnset MOVE_SCORCHING_SANDS, 1
	learnset MOVE_EXTREME_SPEED, 1
	learnset MOVE_CRUSH_CLAW, 1
	learnset MOVE_BITE, 1
	learnset MOVE_ROAR, 1
	learnset MOVE_EMBER, 6
	learnset MOVE_FIRE_SPIN, 10
	learnset MOVE_STOMP, 14
	learnset MOVE_FLAMETHROWER, 18
	learnset MOVE_HEADLONG_RUSH, 22
	learnset MOVE_RAGING_FURY, 26
	learnset MOVE_LAVA_PLUME, 30
	learnset MOVE_EXTRASENSORY, 34
	learnset MOVE_HIGH_HORSEPOWER, 38
	learnset MOVE_CALM_MIND, 42
	learnset MOVE_ERUPTION, 46
	learnset MOVE_FLARE_BLITZ, 50
    terminatelearnset


levelup SPECIES_SUICUNE
	learnset MOVE_SHEER_COLD, 1
	learnset MOVE_EXTREME_SPEED, 1
	learnset MOVE_AQUA_RING, 1
	learnset MOVE_BITE, 1
	learnset MOVE_WATER_PULSE, 6
	learnset MOVE_GUST, 10
	learnset MOVE_AURORA_BEAM, 14
	learnset MOVE_MIST, 18
	learnset MOVE_MIRROR_COAT, 22
	learnset MOVE_ICE_FANG, 26
	learnset MOVE_TAILWIND, 30
	learnset MOVE_EXTRASENSORY, 34
	learnset MOVE_HYDRO_PUMP, 38
	learnset MOVE_CALM_MIND, 42
	learnset MOVE_BLIZZARD, 46
	learnset MOVE_AIR_SLASH, 50
    terminatelearnset


levelup SPECIES_LARVITAR
	learnset MOVE_BITE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SANDSTORM, 5
	learnset MOVE_SCREECH, 10
	learnset MOVE_BULLDOZE, 13
	learnset MOVE_ROCK_TOMB, 16
	learnset MOVE_SCARY_FACE, 19
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_PAYBACK, 25
	learnset MOVE_CHIP_AWAY, 28
	learnset MOVE_WITHDRAW, 30
	learnset MOVE_CURSE, 34
	learnset MOVE_ASSURANCE, 38
	learnset MOVE_EARTHQUAKE, 42
	learnset MOVE_STONE_EDGE, 46
	learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_PUPITAR
	learnset MOVE_BITE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SANDSTORM, 5
	learnset MOVE_SCREECH, 10
	learnset MOVE_BULLDOZE, 13
	learnset MOVE_ROCK_TOMB, 16
	learnset MOVE_SCARY_FACE, 19
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_PAYBACK, 25
	learnset MOVE_CHIP_AWAY, 28
	learnset MOVE_IRON_DEFENSE, 30
	learnset MOVE_DARK_PULSE, 31
	learnset MOVE_CURSE, 35
	learnset MOVE_ASSURANCE, 39
	learnset MOVE_EARTHQUAKE, 43
	learnset MOVE_STONE_EDGE, 47
	learnset MOVE_HYPER_BEAM, 51
	learnset MOVE_DRAGON_DANCE, 55
    terminatelearnset


levelup SPECIES_TYRANITAR
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_HEAVY_SLAM, 1
	learnset MOVE_HYDRO_PUMP, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_RAGING_FURY, 1
	learnset MOVE_SCORCHING_SANDS, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_SCREECH, 10
	learnset MOVE_ROCK_TOMB, 16
	learnset MOVE_SCARY_FACE, 19
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_PAYBACK, 25
	learnset MOVE_CHIP_AWAY, 28
	learnset MOVE_IRON_DEFENSE, 30
	learnset MOVE_DARK_PULSE, 31
	learnset MOVE_CURSE, 35
	learnset MOVE_ASSURANCE, 39
	learnset MOVE_EARTHQUAKE, 43
	learnset MOVE_STONE_EDGE, 47
	learnset MOVE_HYPER_BEAM, 51
	learnset MOVE_DRAGON_DANCE, 55
	learnset MOVE_CRUNCH, 60
	learnset MOVE_BREAKING_SWIPE, 65
	learnset MOVE_ROCK_WRECKER, 70
    terminatelearnset


levelup SPECIES_LUGIA
	learnset MOVE_PSYCHO_BOOST, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_WEATHER_BALL, 1
	learnset MOVE_GUST, 1
	learnset MOVE_PSYSHIELD_BASH, 6
	learnset MOVE_EXTRASENSORY, 10
	learnset MOVE_NATURAL_GIFT, 14
	learnset MOVE_DUAL_WINGBEAT, 18
	learnset MOVE_ANCIENT_POWER, 22
	learnset MOVE_SAFEGUARD, 26
	learnset MOVE_RECOVER, 30
	learnset MOVE_FUTURE_SIGHT, 34
	learnset MOVE_HYDRO_PUMP, 38
	learnset MOVE_DRAGON_RUSH, 42
	learnset MOVE_AEROBLAST, 46
	learnset MOVE_ESPER_WING, 50
    terminatelearnset


levelup SPECIES_HO_OH
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_WEATHER_BALL, 1
	learnset MOVE_GUST, 1
	learnset MOVE_CALM_MIND, 6
	learnset MOVE_EXTRASENSORY, 10
	learnset MOVE_NATURAL_GIFT, 14
	learnset MOVE_DUAL_WINGBEAT, 18
	learnset MOVE_ANCIENT_POWER, 22
	learnset MOVE_SAFEGUARD, 26
	learnset MOVE_RECOVER, 30
	learnset MOVE_FUTURE_SIGHT, 34
	learnset MOVE_FIRE_BLAST, 38
	learnset MOVE_BRAVE_BIRD, 42
	learnset MOVE_SCORCHING_SANDS, 46
	learnset MOVE_RAGING_FURY, 50
    terminatelearnset


levelup SPECIES_CELEBI
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_RECOVER, 1
	learnset MOVE_HEAL_BELL, 1
	learnset MOVE_SAFEGUARD, 6
	learnset MOVE_MAGICAL_LEAF, 10
	learnset MOVE_ANCIENT_POWER, 14
	learnset MOVE_BATON_PASS, 18
	learnset MOVE_NATURAL_GIFT, 22
	learnset MOVE_PERISH_SONG, 26
	learnset MOVE_HEALING_WISH, 30
	learnset MOVE_FUTURE_SIGHT, 34
	learnset MOVE_NASTY_PLOT, 38
	learnset MOVE_PSYCHIC, 42
	learnset MOVE_LEAF_STORM, 50
    terminatelearnset


levelup SPECIES_TREECKO
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_AGILITY, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ASSURANCE, 25
	learnset MOVE_DRAGON_TAIL, 28
	learnset MOVE_GRASS_WHISTLE, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_CRUSH_CLAW, 37
	learnset MOVE_SCREECH, 40
	learnset MOVE_LEECH_SEED, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_LEAF_BLADE, 49
    terminatelearnset


levelup SPECIES_GROVYLE
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_AGILITY, 17
	learnset MOVE_DOUBLE_KICK, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ASSURANCE, 25
	learnset MOVE_DRAGON_TAIL, 28
	learnset MOVE_GRASS_WHISTLE, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_CRUSH_CLAW, 37
	learnset MOVE_SCREECH, 40
	learnset MOVE_LEECH_SEED, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_LEAF_BLADE, 49
	learnset MOVE_QUICK_GUARD, 52
	learnset MOVE_LEAF_STORM, 55
    terminatelearnset


levelup SPECIES_SCEPTILE
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_AGILITY, 17
	learnset MOVE_DOUBLE_KICK, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ASSURANCE, 25
	learnset MOVE_DRAGON_TAIL, 28
	learnset MOVE_GRASS_WHISTLE, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_BREAKING_SWIPE, 36
	learnset MOVE_CRUSH_CLAW, 37
	learnset MOVE_SCREECH, 40
	learnset MOVE_LEECH_SEED, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_LEAF_BLADE, 50
	learnset MOVE_QUICK_GUARD, 54
	learnset MOVE_LEAF_STORM, 58
	learnset MOVE_CROSS_POISON, 62
	learnset MOVE_OUTRAGE, 66
	learnset MOVE_WOOD_HAMMER, 70
    terminatelearnset


levelup SPECIES_TORCHIC
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_PECK, 10
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_FOCUS_ENERGY, 17
	learnset MOVE_QUICK_ATTACK, 20
	learnset MOVE_INCINERATE, 22
	learnset MOVE_U_TURN, 25
	learnset MOVE_COUNTER, 28
	learnset MOVE_HEAT_CRASH, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_MIRROR_MOVE, 37
	learnset MOVE_BLAZE_KICK, 40
	learnset MOVE_FEATHER_DANCE, 43
	learnset MOVE_WORK_UP, 46
	learnset MOVE_LAST_RESORT, 49
    terminatelearnset


levelup SPECIES_COMBUSKEN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_PECK, 10
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_FOCUS_ENERGY, 17
	learnset MOVE_QUICK_ATTACK, 20
	learnset MOVE_FIRE_PUNCH, 22
	learnset MOVE_U_TURN, 25
	learnset MOVE_SKY_UPPERCUT, 28
	learnset MOVE_HEAT_CRASH, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_MIRROR_MOVE, 37
	learnset MOVE_BLAZE_KICK, 40
	learnset MOVE_FEATHER_DANCE, 43
	learnset MOVE_CLOSE_COMBAT, 46
	learnset MOVE_SCORCHING_SANDS, 49
	learnset MOVE_BOUNCE, 53
    terminatelearnset


levelup SPECIES_BLAZIKEN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_PECK, 10
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_FOCUS_ENERGY, 17
	learnset MOVE_QUICK_ATTACK, 20
	learnset MOVE_FIRE_PUNCH, 22
	learnset MOVE_U_TURN, 25
	learnset MOVE_SKY_UPPERCUT, 28
	learnset MOVE_HEAT_CRASH, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_REVERSAL, 36
	learnset MOVE_MIRROR_MOVE, 37
	learnset MOVE_BLAZE_KICK, 40
	learnset MOVE_FEATHER_DANCE, 43
	learnset MOVE_CLOSE_COMBAT, 46
	learnset MOVE_SCORCHING_SANDS, 50
	learnset MOVE_AGILITY, 54
	learnset MOVE_HIGH_JUMP_KICK, 58
	learnset MOVE_BRAVE_BIRD, 62
	learnset MOVE_FLARE_BLITZ, 66
    terminatelearnset


levelup SPECIES_MUDKIP
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_FORESIGHT, 10
	learnset MOVE_BIDE, 13
	learnset MOVE_MUD_BOMB, 17
	learnset MOVE_ROCK_THROW, 19
	learnset MOVE_AQUA_TAIL, 22
	learnset MOVE_AVALANCHE, 25
	learnset MOVE_CURSE, 28
	learnset MOVE_WHIRLPOOL, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_YAWN, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_REFRESH, 43
	learnset MOVE_SEISMIC_TOSS, 46
	learnset MOVE_AMNESIA, 49
    terminatelearnset


levelup SPECIES_MARSHTOMP
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_FORESIGHT, 10
	learnset MOVE_BIDE, 13
	learnset MOVE_BULLDOZE, 16
	learnset MOVE_MUD_BOMB, 17
	learnset MOVE_ROCK_THROW, 20
	learnset MOVE_AQUA_TAIL, 22
	learnset MOVE_AVALANCHE, 25
	learnset MOVE_CURSE, 28
	learnset MOVE_WHIRLPOOL, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_YAWN, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_REFRESH, 43
	learnset MOVE_SEISMIC_TOSS, 46
	learnset MOVE_HIGH_HORSEPOWER, 50
	learnset MOVE_AMNESIA, 54
	learnset MOVE_WIDE_GUARD, 58
    terminatelearnset


levelup SPECIES_SWAMPERT
	learnset MOVE_ENDEAVOR, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_FORESIGHT, 10
	learnset MOVE_BIDE, 13
	learnset MOVE_BULLDOZE, 16
	learnset MOVE_MUD_BOMB, 17
	learnset MOVE_ROCK_THROW, 20
	learnset MOVE_AQUA_TAIL, 22
	learnset MOVE_AVALANCHE, 25
	learnset MOVE_CURSE, 28
	learnset MOVE_WHIRLPOOL, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_HAMMER_ARM, 36
	learnset MOVE_YAWN, 37
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_REFRESH, 43
	learnset MOVE_SEISMIC_TOSS, 46
	learnset MOVE_HIGH_HORSEPOWER, 50
	learnset MOVE_AMNESIA, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_DOUBLE_EDGE, 62
	learnset MOVE_HYDRO_PUMP, 66
    terminatelearnset


levelup SPECIES_POOCHYENA
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_BITE, 6
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_SPITE, 10
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_ICE_FANG, 14
	learnset MOVE_THUNDER_FANG, 14
	learnset MOVE_SCARY_FACE, 16
	learnset MOVE_ASSURANCE, 18
	learnset MOVE_POISON_FANG, 21
	learnset MOVE_YAWN, 24
	learnset MOVE_SUCKER_PUNCH, 27
	learnset MOVE_SUPER_FANG, 30
	learnset MOVE_LUNGE, 33
	learnset MOVE_PSYCHIC_FANGS, 36
	learnset MOVE_PLAY_ROUGH, 39
	learnset MOVE_CRUNCH, 42
	learnset MOVE_BODY_SLAM, 45
	learnset MOVE_FOUL_PLAY, 49
    terminatelearnset


levelup SPECIES_MIGHTYENA
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_BITE, 6
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_SPITE, 10
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_ICE_FANG, 14
	learnset MOVE_THUNDER_FANG, 14
	learnset MOVE_SCARY_FACE, 16
	learnset MOVE_ASSURANCE, 18
	learnset MOVE_POISON_FANG, 22
	learnset MOVE_YAWN, 25
	learnset MOVE_SUCKER_PUNCH, 29
	learnset MOVE_SUPER_FANG, 33
	learnset MOVE_LUNGE, 37
	learnset MOVE_PSYCHIC_FANGS, 41
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_CRUNCH, 49
	learnset MOVE_BODY_SLAM, 53
	learnset MOVE_FOUL_PLAY, 57
    terminatelearnset


levelup SPECIES_ZIGZAGOON
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_HELPING_HAND, 10
	learnset MOVE_PURSUIT, 12
	learnset MOVE_HEADBUTT, 14
	learnset MOVE_TICKLE, 16
	learnset MOVE_PIN_MISSILE, 18
	learnset MOVE_AFTER_YOU, 21
	learnset MOVE_TAKE_DOWN, 24
	learnset MOVE_SIMPLE_BEAM, 27
	learnset MOVE_CHARM, 30
	learnset MOVE_TAIL_SLAP, 33
	learnset MOVE_SUPER_FANG, 36
	learnset MOVE_TRICK, 39
	learnset MOVE_EXTREME_SPEED, 42
	learnset MOVE_BELLY_DRUM, 45
	learnset MOVE_LAST_RESORT, 49
    terminatelearnset


levelup SPECIES_LINOONE
	learnset MOVE_COVET, 1
	learnset MOVE_SWITCHEROO, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_HELPING_HAND, 10
	learnset MOVE_PURSUIT, 12
	learnset MOVE_HEADBUTT, 14
	learnset MOVE_TICKLE, 16
	learnset MOVE_PIN_MISSILE, 18
	learnset MOVE_QUICK_GUARD, 20
	learnset MOVE_AFTER_YOU, 22
	learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_SIMPLE_BEAM, 28
	learnset MOVE_CHARM, 32
	learnset MOVE_TAIL_SLAP, 36
	learnset MOVE_SUPER_FANG, 40
	learnset MOVE_TRICK, 44
	learnset MOVE_EXTREME_SPEED, 48
	learnset MOVE_BELLY_DRUM, 52
	learnset MOVE_LAST_RESORT, 56
    terminatelearnset


levelup SPECIES_WURMPLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_ELECTROWEB, 5
    terminatelearnset


levelup SPECIES_SILCOON
	learnset MOVE_HARDEN, 1
	learnset MOVE_IRON_DEFENSE, 7
    terminatelearnset


levelup SPECIES_BEAUTIFLY
	learnset MOVE_ABSORB, 1
	learnset MOVE_GUST, 13
	learnset MOVE_MEGA_DRAIN, 13
	learnset MOVE_STUN_SPORE, 15
	learnset MOVE_SILVER_WIND, 17
	learnset MOVE_AIR_CUTTER, 21
	learnset MOVE_LEECH_LIFE, 25
	learnset MOVE_MORNING_SUN, 29
	learnset MOVE_OMINOUS_WIND, 33
	learnset MOVE_RAGE_POWDER, 37
	learnset MOVE_BUG_BUZZ, 41
	learnset MOVE_AIR_SLASH, 45
	learnset MOVE_ATTRACT, 49
	learnset MOVE_WHIRLWIND, 53
	learnset MOVE_HURRICANE, 57
	learnset MOVE_QUIVER_DANCE, 61
    terminatelearnset


levelup SPECIES_CASCOON
	learnset MOVE_HARDEN, 1
	learnset MOVE_IRON_DEFENSE, 7
    terminatelearnset


levelup SPECIES_DUSTOX
	learnset MOVE_CONFUSION, 1
	learnset MOVE_GUST, 13
	learnset MOVE_CONFUSION, 13
	learnset MOVE_POISON_POWDER, 15
	learnset MOVE_SILVER_WIND, 17
	learnset MOVE_SLUDGE, 21
	learnset MOVE_SIGNAL_BEAM, 25
	learnset MOVE_MOONLIGHT, 29
	learnset MOVE_BUG_BUZZ, 33
	learnset MOVE_LIGHT_SCREEN, 37
	learnset MOVE_TOXIC, 41
	learnset MOVE_TAILWIND, 45
	learnset MOVE_PROTECT, 49
	learnset MOVE_WHIRLWIND, 53
	learnset MOVE_HURRICANE, 57
	learnset MOVE_QUIVER_DANCE, 61
    terminatelearnset


levelup SPECIES_LOTAD
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_COUNTER, 6
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_NATURE_POWER, 10
	learnset MOVE_BULLET_SEED, 12
	learnset MOVE_LEECH_SEED, 15
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_TICKLE, 22
	learnset MOVE_WHIRLPOOL, 25
	learnset MOVE_CAPTIVATE, 28
	learnset MOVE_UPROAR, 31
	learnset MOVE_ENERGY_BALL, 34
	learnset MOVE_MIST, 38
	learnset MOVE_BODY_SLAM, 42
	learnset MOVE_ZEN_HEADBUTT, 46
	learnset MOVE_SYNTHESIS, 50
	learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset


levelup SPECIES_LOMBRE
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_COUNTER, 6
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_NATURE_POWER, 10
	learnset MOVE_BULLET_SEED, 12
	learnset MOVE_FAKE_OUT, 14
	learnset MOVE_LEECH_SEED, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_MUD_SHOT, 21
	learnset MOVE_TICKLE, 23
	learnset MOVE_DRAIN_PUNCH, 26
	learnset MOVE_ICY_WIND, 29
	learnset MOVE_UPROAR, 32
	learnset MOVE_ENERGY_BALL, 35
	learnset MOVE_MUDDY_WATER, 38
	learnset MOVE_FOCUS_PUNCH, 42
	learnset MOVE_BODY_SLAM, 46
	learnset MOVE_ZEN_HEADBUTT, 50
	learnset MOVE_SYNTHESIS, 54
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_HYDRO_PUMP, 62
    terminatelearnset


levelup SPECIES_LUDICOLO
	learnset MOVE_DRAIN_PUNCH, 1
	learnset MOVE_DYNAMIC_PUNCH, 1
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_NATURE_POWER, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_ZEN_HEADBUTT, 1
	learnset MOVE_MUDDY_WATER, 27
	learnset MOVE_ENERGY_BALL, 40
	learnset MOVE_HYPER_VOICE, 50
	learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset


levelup SPECIES_SEEDOT
	learnset MOVE_ABSORB, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_COUNTER, 6
	learnset MOVE_PAYBACK, 8
	learnset MOVE_NATURE_POWER, 10
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_SYNTHESIS, 15
	learnset MOVE_QUICK_ATTACK, 18
	learnset MOVE_LEECH_SEED, 22
	learnset MOVE_WORRY_SEED, 25
	learnset MOVE_SUCKER_PUNCH, 28
	learnset MOVE_BEAT_UP, 31
	learnset MOVE_ENERGY_BALL, 34
	learnset MOVE_TAKE_DOWN, 38
	learnset MOVE_AMNESIA, 42
	learnset MOVE_FOUL_PLAY, 46
	learnset MOVE_NASTY_PLOT, 50
	learnset MOVE_EXPLOSION, 54
    terminatelearnset


levelup SPECIES_NUZLEAF
	learnset MOVE_ABSORB, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_COUNTER, 6
	learnset MOVE_PAYBACK, 8
	learnset MOVE_NATURE_POWER, 10
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_FAKE_OUT, 14
	learnset MOVE_SYNTHESIS, 16
	learnset MOVE_QUICK_ATTACK, 19
	learnset MOVE_FEINT_ATTACK, 21
	learnset MOVE_LEECH_SEED, 23
	learnset MOVE_WORRY_SEED, 26
	learnset MOVE_AIR_CUTTER, 29
	learnset MOVE_EXTRASENSORY, 32
	learnset MOVE_LEAF_TORNADO, 35
	learnset MOVE_AMNESIA, 38
	learnset MOVE_LEAF_BLADE, 42
	learnset MOVE_FOUL_PLAY, 46
	learnset MOVE_NASTY_PLOT, 50
	learnset MOVE_GROWTH, 54
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_LEAF_STORM, 62
    terminatelearnset


levelup SPECIES_SHIFTRY
	learnset MOVE_AIR_SLASH, 1
	learnset MOVE_AIR_CUTTER, 1
	learnset MOVE_HEAT_WAVE, 1
	learnset MOVE_ICY_WIND, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_SILVER_WIND, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_SUCKER_PUNCH, 27
	learnset MOVE_LEAF_TORNADO, 40
	learnset MOVE_GROWTH, 50
	learnset MOVE_NASTY_PLOT, 50
	learnset MOVE_LEAF_STORM, 65
    terminatelearnset


levelup SPECIES_TAILLOW
	learnset MOVE_GROWL, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_PECK, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_SWIFT, 10
	learnset MOVE_WING_ATTACK, 12
	learnset MOVE_TWISTER, 14
	learnset MOVE_PURSUIT, 16
	learnset MOVE_FOCUS_ENERGY, 19
	learnset MOVE_QUICK_GUARD, 22
	learnset MOVE_AERIAL_ACE, 25
	learnset MOVE_MIMIC, 29
	learnset MOVE_AGILITY, 31
	learnset MOVE_AIR_SLASH, 34
	learnset MOVE_STEEL_WING, 38
	learnset MOVE_WHIRLWIND, 42
	learnset MOVE_REVERSAL, 46
	learnset MOVE_ENDEAVOR, 50
	learnset MOVE_SKY_ATTACK, 54
    terminatelearnset


levelup SPECIES_SWELLOW
	learnset MOVE_SKY_ATTACK, 1
	learnset MOVE_REFRESH, 1
	learnset MOVE_MIRROR_MOVE, 1
	learnset MOVE_PECK, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_SWIFT, 10
	learnset MOVE_WING_ATTACK, 12
	learnset MOVE_TWISTER, 14
	learnset MOVE_PURSUIT, 16
	learnset MOVE_FOCUS_ENERGY, 19
	learnset MOVE_QUICK_GUARD, 22
	learnset MOVE_AIR_CUTTER, 23
	learnset MOVE_AERIAL_ACE, 26
	learnset MOVE_MIMIC, 29
	learnset MOVE_AGILITY, 32
	learnset MOVE_AIR_SLASH, 35
	learnset MOVE_STEEL_WING, 38
	learnset MOVE_WHIRLWIND, 41
	learnset MOVE_REVERSAL, 44
	learnset MOVE_ENDEAVOR, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_BRAVE_BIRD, 56
	learnset MOVE_BOOMBURST, 60
    terminatelearnset


levelup SPECIES_WINGULL
	learnset MOVE_GROWL, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WING_ATTACK, 4
	learnset MOVE_MIST, 7
	learnset MOVE_GUST, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_TWISTER, 16
	learnset MOVE_PURSUIT, 19
	learnset MOVE_BRINE, 22
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_AQUA_RING, 28
	learnset MOVE_OMINOUS_WIND, 31
	learnset MOVE_SOAK, 34
	learnset MOVE_FLING, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_AIR_SLASH, 43
	learnset MOVE_TAILWIND, 46
	learnset MOVE_RAIN_DANCE, 49
	learnset MOVE_HURRICANE, 53
	learnset MOVE_HYDRO_PUMP, 57
    terminatelearnset


levelup SPECIES_PELIPPER
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WING_ATTACK, 4
	learnset MOVE_MIST, 7
	learnset MOVE_GUST, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_TWISTER, 16
	learnset MOVE_PURSUIT, 19
	learnset MOVE_BRINE, 22
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_STOCKPILE, 25
	learnset MOVE_SWALLOW, 25
	learnset MOVE_AQUA_RING, 28
	learnset MOVE_OMINOUS_WIND, 32
	learnset MOVE_SOAK, 36
	learnset MOVE_FLING, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_TAILWIND, 52
	learnset MOVE_RAIN_DANCE, 56
	learnset MOVE_HURRICANE, 60
	learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_RALTS
	learnset MOVE_TELEKINESIS, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_DISARMING_VOICE, 6
	learnset MOVE_CAPTIVATE, 8
	learnset MOVE_LUCKY_CHANT, 10
	learnset MOVE_PSYBEAM, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_MAGICAL_LEAF, 16
	learnset MOVE_DRAINING_KISS, 19
	learnset MOVE_HYPNOSIS, 22
	learnset MOVE_DREAM_EATER, 25
	learnset MOVE_ALLY_SWITCH, 28
	learnset MOVE_DISABLE, 31
	learnset MOVE_FUTURE_SIGHT, 34
	learnset MOVE_IMPRISON, 37
	learnset MOVE_HEALING_WISH, 41
	learnset MOVE_RECOVER, 46
	learnset MOVE_STORED_POWER, 50
    terminatelearnset


levelup SPECIES_KIRLIA
	learnset MOVE_TELEKINESIS, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_DISARMING_VOICE, 6
	learnset MOVE_CAPTIVATE, 8
	learnset MOVE_LUCKY_CHANT, 10
	learnset MOVE_PSYBEAM, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_MAGICAL_LEAF, 19
	learnset MOVE_HEAL_PULSE, 20
	learnset MOVE_HYPNOSIS, 23
	learnset MOVE_DREAM_EATER, 26
	learnset MOVE_ALLY_SWITCH, 29
	learnset MOVE_DISABLE, 31
	learnset MOVE_FUTURE_SIGHT, 35
	learnset MOVE_IMPRISON, 39
	learnset MOVE_HEALING_WISH, 43
	learnset MOVE_RECOVER, 47
	learnset MOVE_STORED_POWER, 51
	learnset MOVE_DESTINY_BOND, 55
    terminatelearnset


levelup SPECIES_GARDEVOIR
	learnset MOVE_TRICK, 1
	learnset MOVE_WISH, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_DISARMING_VOICE, 6
	learnset MOVE_CAPTIVATE, 8
	learnset MOVE_LUCKY_CHANT, 10
	learnset MOVE_PSYBEAM, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_MAGICAL_LEAF, 19
	learnset MOVE_HEAL_PULSE, 20
	learnset MOVE_HYPNOSIS, 23
	learnset MOVE_DREAM_EATER, 26
	learnset MOVE_ALLY_SWITCH, 29
	learnset MOVE_SYNCHRONOISE, 30
	learnset MOVE_DISABLE, 34
	learnset MOVE_FUTURE_SIGHT, 38
	learnset MOVE_MEAN_LOOK, 42
	learnset MOVE_HEALING_WISH, 46
	learnset MOVE_RECOVER, 50
	learnset MOVE_STORED_POWER, 55
	learnset MOVE_DESTINY_BOND, 60
	learnset MOVE_MOONBLAST, 65
    terminatelearnset


levelup SPECIES_SURSKIT
	learnset MOVE_MIST, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_AQUA_JET, 4
	learnset MOVE_BUG_BITE, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_STRUGGLE_BUG, 12
	learnset MOVE_HAZE, 14
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_LUNGE, 20
	learnset MOVE_SIGNAL_BEAM, 23
	learnset MOVE_PSYBEAM, 26
	learnset MOVE_ATTRACT, 29
	learnset MOVE_AGILITY, 32
	learnset MOVE_SOAK, 36
	learnset MOVE_POWER_SPLIT, 40
	learnset MOVE_BATON_PASS, 44
    terminatelearnset


levelup SPECIES_MASQUERAIN
	learnset MOVE_TWISTER, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_AQUA_JET, 4
	learnset MOVE_BUG_BITE, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_STRUGGLE_BUG, 12
	learnset MOVE_HAZE, 14
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_LUNGE, 20
	learnset MOVE_AIR_CUTTER, 22
	learnset MOVE_TAILWIND, 24
	learnset MOVE_SIGNAL_BEAM, 26
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_STUN_SPORE, 30
	learnset MOVE_AGILITY, 33
	learnset MOVE_SOAK, 36
	learnset MOVE_POWER_SPLIT, 40
	learnset MOVE_BATON_PASS, 44
	learnset MOVE_BUG_BUZZ, 48
	learnset MOVE_WHIRLWIND, 52
	learnset MOVE_OMINOUS_WIND, 56
	learnset MOVE_HYDRO_PUMP, 60
	learnset MOVE_QUIVER_DANCE, 64
    terminatelearnset


levelup SPECIES_SHROOMISH
	learnset MOVE_ABSORB, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_LEECH_SEED, 4
	learnset MOVE_GRASS_WHISTLE, 8
	learnset MOVE_MEGA_DRAIN, 10
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_COUNTER, 19
	learnset MOVE_WAKE_UP_SLAP, 22
	learnset MOVE_POISON_POWDER, 25
	learnset MOVE_SLEEP_POWDER, 25
	learnset MOVE_STUN_SPORE, 25
	learnset MOVE_COUNTER, 28
	learnset MOVE_FAKE_TEARS, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_SAFEGUARD, 38
	learnset MOVE_GIGA_DRAIN, 42
	learnset MOVE_ZEN_HEADBUTT, 46
	learnset MOVE_LUNGE, 50
	learnset MOVE_SPORE, 54
	learnset MOVE_LEAF_STORM, 58
    terminatelearnset


levelup SPECIES_BRELOOM
	learnset MOVE_DYNAMIC_PUNCH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_LEECH_SEED, 4
	learnset MOVE_GRASS_WHISTLE, 8
	learnset MOVE_MEGA_DRAIN, 10
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_COUNTER, 19
	learnset MOVE_WAKE_UP_SLAP, 21
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_POISON_POWDER, 27
	learnset MOVE_SLEEP_POWDER, 27
	learnset MOVE_STUN_SPORE, 27
	learnset MOVE_SKY_UPPERCUT, 30
	learnset MOVE_FAKE_TEARS, 34
	learnset MOVE_BULLET_SEED, 38
	learnset MOVE_MACH_PUNCH, 42
	learnset MOVE_ZEN_HEADBUTT, 46
	learnset MOVE_FORCE_PALM, 50
	learnset MOVE_SPORE, 54
	learnset MOVE_FOCUS_PUNCH, 58
	learnset MOVE_LUNGE, 62
	learnset MOVE_CLOSE_COMBAT, 66
    terminatelearnset


levelup SPECIES_SLAKOTH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_AMNESIA, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_COVET, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_FURY_SWIPES, 22
	learnset MOVE_SLASH, 25
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_TICKLE, 28
	learnset MOVE_CHIP_AWAY, 31
	learnset MOVE_CURSE, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_HAMMER_ARM, 40
	learnset MOVE_PLAY_ROUGH, 43
	learnset MOVE_SLACK_OFF, 46
	learnset MOVE_FOCUS_PUNCH, 50
    terminatelearnset


levelup SPECIES_VIGOROTH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_AMNESIA, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_COVET, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_UPROAR, 18
	learnset MOVE_TICKLE, 20
	learnset MOVE_HEADBUTT, 22
	learnset MOVE_FURY_SWIPES, 24
	learnset MOVE_LUNGE, 26
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_RAGING_FURY, 30
	learnset MOVE_CRUSH_CLAW, 32
	learnset MOVE_CHIP_AWAY, 35
	learnset MOVE_BODY_SLAM, 38
	learnset MOVE_HAMMER_ARM, 41
	learnset MOVE_PLAY_ROUGH, 44
	learnset MOVE_SLACK_OFF, 47
	learnset MOVE_FOCUS_PUNCH, 51
	learnset MOVE_DOUBLE_EDGE, 55
    terminatelearnset


levelup SPECIES_SLAKING
	learnset MOVE_SCRATCH, 1
	learnset MOVE_AMNESIA, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_COVET, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_UPROAR, 18
	learnset MOVE_TICKLE, 20
	learnset MOVE_HEADBUTT, 22
	learnset MOVE_FURY_SWIPES, 24
	learnset MOVE_LUNGE, 26
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_RAGING_FURY, 30
	learnset MOVE_CRUSH_CLAW, 32
	learnset MOVE_CHIP_AWAY, 35
	learnset MOVE_CURSE, 36
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_HAMMER_ARM, 44
	learnset MOVE_PLAY_ROUGH, 48
	learnset MOVE_SLACK_OFF, 52
	learnset MOVE_FOCUS_PUNCH, 56
	learnset MOVE_SUCKER_PUNCH, 60
	learnset MOVE_DOUBLE_EDGE, 64
    terminatelearnset


levelup SPECIES_NINCADA
	learnset MOVE_ABSORB, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_STRING_SHOT, 8
	learnset MOVE_MUD_SLAP, 10
	learnset MOVE_BUG_BITE, 12
	learnset MOVE_GUST, 14
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_METAL_CLAW, 18
	learnset MOVE_STRUGGLE_BUG, 20
	learnset MOVE_SPITE, 23
	learnset MOVE_FEINT_ATTACK, 26
	learnset MOVE_HONE_CLAWS, 29
	learnset MOVE_FLAIL, 32
	learnset MOVE_NATURAL_GIFT, 35
	learnset MOVE_SLASH, 38
	learnset MOVE_NIGHT_SLASH, 38
	learnset MOVE_BIDE, 41
	learnset MOVE_LEECH_LIFE, 45
	learnset MOVE_FINAL_GAMBIT, 48
    terminatelearnset


levelup SPECIES_NINJASK
	learnset MOVE_ABSORB, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_STRING_SHOT, 8
	learnset MOVE_MUD_SLAP, 10
	learnset MOVE_BUG_BITE, 12
	learnset MOVE_GUST, 14
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_METAL_CLAW, 18
	learnset MOVE_STRUGGLE_BUG, 20
	learnset MOVE_AGILITY, 20
	learnset MOVE_MIND_READER, 24
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_LUNGE, 32
	learnset MOVE_AERIAL_ACE, 36
	learnset MOVE_HONE_CLAWS, 40
	learnset MOVE_SCREECH, 44
	learnset MOVE_SLASH, 48
	learnset MOVE_NIGHT_SLASH, 48
	learnset MOVE_EXTREME_SPEED, 52
	learnset MOVE_BATON_PASS, 56
	learnset MOVE_LEECH_LIFE, 60
	learnset MOVE_FINAL_GAMBIT, 64
    terminatelearnset


levelup SPECIES_SHEDINJA
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_STRING_SHOT, 8
	learnset MOVE_MUD_SLAP, 10
	learnset MOVE_BUG_BITE, 12
	learnset MOVE_GUST, 14
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_METAL_CLAW, 18
	learnset MOVE_STRUGGLE_BUG, 20
	learnset MOVE_FINAL_GAMBIT, 20
	learnset MOVE_TRICK, 24
	learnset MOVE_SHADOW_SNEAK, 28
	learnset MOVE_LUNGE, 32
	learnset MOVE_HONE_CLAWS, 40
	learnset MOVE_SCREECH, 44
	learnset MOVE_SLASH, 48
	learnset MOVE_NIGHT_SLASH, 48
	learnset MOVE_MIND_READER, 52
	learnset MOVE_ALLY_SWITCH, 56
	learnset MOVE_LEECH_LIFE, 60
	learnset MOVE_GRUDGE, 64
    terminatelearnset


levelup SPECIES_WHISMUR
	learnset MOVE_POUND, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_STOMP, 7
	learnset MOVE_ECHOED_VOICE, 10
	learnset MOVE_SCREECH, 13
	learnset MOVE_DISARMING_VOICE, 16
	learnset MOVE_UPROAR, 19
	learnset MOVE_FAKE_TEARS, 22
	learnset MOVE_CHATTER, 25
	learnset MOVE_TAKE_DOWN, 28
	learnset MOVE_ENDURE, 31
	learnset MOVE_HYPER_VOICE, 34
	learnset MOVE_ENDEAVOR, 37
	learnset MOVE_EXTRASENSORY, 40
	learnset MOVE_FLING, 44
	learnset MOVE_SYNCHRONOISE, 48
    terminatelearnset


levelup SPECIES_LOUDRED
	learnset MOVE_POUND, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_STOMP, 7
	learnset MOVE_ECHOED_VOICE, 10
	learnset MOVE_SCREECH, 13
	learnset MOVE_DISARMING_VOICE, 16
	learnset MOVE_UPROAR, 19
	learnset MOVE_BITE, 20
	learnset MOVE_FAKE_TEARS, 22
	learnset MOVE_CHATTER, 26
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_CIRCLE_THROW, 32
	learnset MOVE_HYPER_VOICE, 35
	learnset MOVE_ENDEAVOR, 38
	learnset MOVE_EXTRASENSORY, 41
	learnset MOVE_FLING, 45
	learnset MOVE_SYNCHRONOISE, 49
    terminatelearnset


levelup SPECIES_EXPLOUD
	learnset MOVE_ZEN_HEADBUTT, 1
	learnset MOVE_DYNAMIC_PUNCH, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_WATER_PULSE, 1
	learnset MOVE_POUND, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_STOMP, 7
	learnset MOVE_ECHOED_VOICE, 10
	learnset MOVE_SCREECH, 13
	learnset MOVE_DISARMING_VOICE, 16
	learnset MOVE_UPROAR, 19
	learnset MOVE_BITE, 20
	learnset MOVE_FAKE_TEARS, 22
	learnset MOVE_CHATTER, 26
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_CIRCLE_THROW, 32
	learnset MOVE_HYPER_VOICE, 35
	learnset MOVE_ENDEAVOR, 38
	learnset MOVE_CRUNCH, 40
	learnset MOVE_EXTRASENSORY, 44
	learnset MOVE_FLING, 49
	learnset MOVE_SYNCHRONOISE, 54
	learnset MOVE_BOOMBURST, 59
    terminatelearnset


levelup SPECIES_MAKUHITA
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_ARM_THRUST, 7
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_FORCE_PALM, 11
	learnset MOVE_WHIRLWIND, 13
	learnset MOVE_KNOCK_OFF, 15
	learnset MOVE_VITAL_THROW, 17
	learnset MOVE_BRINE, 19
	learnset MOVE_SEISMIC_TOSS, 21
	learnset MOVE_WAKE_UP_SLAP, 24
	learnset MOVE_REVENGE, 27
	learnset MOVE_BELLY_DRUM, 30
	learnset MOVE_CROSS_CHOP, 33
	learnset MOVE_WIDE_GUARD, 36
	learnset MOVE_COUNTER, 39
	learnset MOVE_REVERSAL, 42
	learnset MOVE_CLOSE_COMBAT, 45
	learnset MOVE_HEAVY_SLAM, 50
    terminatelearnset


levelup SPECIES_HARIYAMA
	learnset MOVE_BULLET_PUNCH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_SAND_ATTACK, 4
	learnset MOVE_ARM_THRUST, 7
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_FORCE_PALM, 11
	learnset MOVE_WHIRLWIND, 13
	learnset MOVE_KNOCK_OFF, 15
	learnset MOVE_VITAL_THROW, 17
	learnset MOVE_BRINE, 19
	learnset MOVE_SEISMIC_TOSS, 21
	learnset MOVE_WAKE_UP_SLAP, 25
	learnset MOVE_REVENGE, 29
	learnset MOVE_BELLY_DRUM, 33
	learnset MOVE_CROSS_CHOP, 37
	learnset MOVE_WIDE_GUARD, 41
	learnset MOVE_COUNTER, 45
	learnset MOVE_REVERSAL, 49
	learnset MOVE_CLOSE_COMBAT, 53
	learnset MOVE_HEAVY_SLAM, 59
    terminatelearnset


levelup SPECIES_AZURILL
	learnset MOVE_SPLASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SING, 6
	learnset MOVE_TICKLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_BUBBLE_BEAM, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_SOAK, 16
	learnset MOVE_FAKE_TEARS, 18
	learnset MOVE_PRESENT, 20
    terminatelearnset


levelup SPECIES_NOSEPASS
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_EXPLOSION, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_SPARK, 13
	learnset MOVE_ROCK_BLAST, 16
	learnset MOVE_IRON_DEFENSE, 19
	learnset MOVE_THUNDER_WAVE, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_CHARGE_BEAM, 28
	learnset MOVE_SANDSTORM, 31
	learnset MOVE_PAIN_SPLIT, 34
	learnset MOVE_MAGNET_RISE, 38
	learnset MOVE_GRAVITY, 42
	learnset MOVE_DISCHARGE, 46
	learnset MOVE_WIDE_GUARD, 50
	learnset MOVE_LOCK_ON, 54
	learnset MOVE_ZAP_CANNON, 58
	learnset MOVE_HEAD_SMASH, 62
    terminatelearnset


levelup SPECIES_SKITTY
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_MUD_BOMB, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASSIST, 4
	learnset MOVE_SING, 7
	learnset MOVE_TICKLE, 10
	learnset MOVE_FURY_SWIPES, 13
	learnset MOVE_FAKE_OUT, 16
	learnset MOVE_WISH, 19
	learnset MOVE_HELPING_HAND, 22
	learnset MOVE_SLASH, 25
	learnset MOVE_SIMPLE_BEAM, 27
	learnset MOVE_SUCKER_PUNCH, 29
	learnset MOVE_WAKE_UP_SLAP, 32
	learnset MOVE_ZEN_HEADBUTT, 35
	learnset MOVE_CHARM, 38
	learnset MOVE_CAPTIVATE, 38
	learnset MOVE_COSMIC_POWER, 41
	learnset MOVE_DOUBLE_EDGE, 45
	learnset MOVE_HEAL_BELL, 49
	learnset MOVE_NASTY_PLOT, 53
	learnset MOVE_LAST_RESORT, 57
	learnset MOVE_BATON_PASS, 61
    terminatelearnset


levelup SPECIES_DELCATTY
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_MUD_BOMB, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_PLAY_ROUGH, 1
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_FAKE_TEARS, 25
	learnset MOVE_SUCKER_PUNCH, 35
	learnset MOVE_WISH, 40
	learnset MOVE_SIMPLE_BEAM, 45
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_ENCORE, 55
	learnset MOVE_LAST_RESORT, 60
	learnset MOVE_BATON_PASS, 65
    terminatelearnset


levelup SPECIES_SABLEYE
	learnset MOVE_OCTAZOOKA, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_SPITE, 4
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_PAIN_SPLIT, 10
	learnset MOVE_ROLE_PLAY, 13
	learnset MOVE_DETECT, 16
	learnset MOVE_SHADOW_SNEAK, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_FEINT_ATTACK, 25
	learnset MOVE_METAL_BURST, 28
	learnset MOVE_SHADOW_CLAW, 31
	learnset MOVE_TRICK, 34
	learnset MOVE_CONFUSE_RAY, 38
	learnset MOVE_ZEN_HEADBUTT, 42
	learnset MOVE_DRAIN_PUNCH, 46
	learnset MOVE_SUCKER_PUNCH, 50
	learnset MOVE_NASTY_PLOT, 54
	learnset MOVE_FOUL_PLAY, 58
	learnset MOVE_RECOVER, 62
    terminatelearnset


levelup SPECIES_MAWILE
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_LAST_RESORT, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_BITE, 4
	learnset MOVE_TICKLE, 7
	learnset MOVE_PAIN_SPLIT, 10
	learnset MOVE_SEISMIC_TOSS, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_COVET, 19
	learnset MOVE_METAL_CLAW, 22
	learnset MOVE_FIRE_FANG, 25
	learnset MOVE_ICE_FANG, 25
	learnset MOVE_THUNDER_FANG, 25
	learnset MOVE_POISON_FANG, 28
	learnset MOVE_PSYCHIC_FANGS, 31
	learnset MOVE_ZEN_HEADBUTT, 34
	learnset MOVE_CRUNCH, 38
	learnset MOVE_IRON_HEAD, 42
	learnset MOVE_PLAY_ROUGH, 46
	learnset MOVE_SUCKER_PUNCH, 50
	learnset MOVE_FOCUS_PUNCH, 54
	learnset MOVE_FOUL_PLAY, 58
	learnset MOVE_METAL_BURST, 62
    terminatelearnset


levelup SPECIES_ARON
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SCREECH, 19
	learnset MOVE_ENDEAVOR, 22
	learnset MOVE_AUTOTOMIZE, 25
	learnset MOVE_CURSE, 28
	learnset MOVE_METAL_BURST, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_AVALANCHE, 41
	learnset MOVE_IRON_TAIL, 46
	learnset MOVE_DOUBLE_EDGE, 49
	learnset MOVE_DRAGON_RUSH, 52
	learnset MOVE_HEAVY_SLAM, 55
    terminatelearnset


levelup SPECIES_LAIRON
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SCREECH, 19
	learnset MOVE_ENDEAVOR, 22
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_AUTOTOMIZE, 27
	learnset MOVE_CURSE, 30
	learnset MOVE_METAL_BURST, 33
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_AVALANCHE, 44
	learnset MOVE_IRON_TAIL, 49
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_DRAGON_RUSH, 55
	learnset MOVE_HEAVY_SLAM, 58
    terminatelearnset


levelup SPECIES_AGGRON
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SCREECH, 19
	learnset MOVE_ENDEAVOR, 22
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_AUTOTOMIZE, 27
	learnset MOVE_CURSE, 30
	learnset MOVE_METAL_BURST, 33
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_SMART_STRIKE, 40
	learnset MOVE_BODY_SLAM, 41
	learnset MOVE_AVALANCHE, 44
	learnset MOVE_IRON_TAIL, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_DRAGON_RUSH, 56
	learnset MOVE_HEAVY_SLAM, 60
	learnset MOVE_HEAD_SMASH, 64
	learnset MOVE_ROCK_WRECKER, 68
    terminatelearnset


levelup SPECIES_MEDITITE
	learnset MOVE_ALLY_SWITCH, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_FORESIGHT, 4
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_TRICK, 10
	learnset MOVE_FORCE_PALM, 13
	learnset MOVE_FAKE_OUT, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_FEINT, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_ROCK_TOMB, 28
	learnset MOVE_ZEN_HEADBUTT, 31
	learnset MOVE_ACUPRESSURE, 34
	learnset MOVE_JUMP_KICK, 37
	learnset MOVE_BULLET_PUNCH, 40
	learnset MOVE_GRAVITY, 44
	learnset MOVE_DRAIN_PUNCH, 48
	learnset MOVE_PSYCHO_CUT, 52
	learnset MOVE_RECOVER, 56
	learnset MOVE_HIGH_JUMP_KICK, 60
    terminatelearnset


levelup SPECIES_MEDICHAM
	learnset MOVE_ALLY_SWITCH, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_FORESIGHT, 4
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_TRICK, 10
	learnset MOVE_FORCE_PALM, 13
	learnset MOVE_FAKE_OUT, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_FEINT, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_ROCK_TOMB, 28
	learnset MOVE_ZEN_HEADBUTT, 31
	learnset MOVE_ACUPRESSURE, 34
	learnset MOVE_JUMP_KICK, 38
	learnset MOVE_BULLET_PUNCH, 42
	learnset MOVE_GRAVITY, 46
	learnset MOVE_DRAIN_PUNCH, 50
	learnset MOVE_PSYCHO_CUT, 54
	learnset MOVE_RECOVER, 58
	learnset MOVE_HIGH_JUMP_KICK, 62
    terminatelearnset


levelup SPECIES_ELECTRIKE
	learnset MOVE_LEER, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_THUNDER_WAVE, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_BITE, 14
	learnset MOVE_CHARGE_BEAM, 16
	learnset MOVE_PSYCHIC_FANGS, 18
	learnset MOVE_NUZZLE, 20
	learnset MOVE_UPROAR, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_FLAME_BURST, 28
	learnset MOVE_ROAR, 32
	learnset MOVE_SIGNAL_BEAM, 36
	learnset MOVE_WILD_CHARGE, 40
	learnset MOVE_CRUNCH, 44
	learnset MOVE_CHARGE, 48
	learnset MOVE_SWITCHEROO, 52
	learnset MOVE_DISCHARGE, 56
    terminatelearnset


levelup SPECIES_MANECTRIC
	learnset MOVE_LEER, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_THUNDER_WAVE, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_BITE, 14
	learnset MOVE_CHARGE_BEAM, 16
	learnset MOVE_PSYCHIC_FANGS, 18
	learnset MOVE_NUZZLE, 20
	learnset MOVE_UPROAR, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_FIRE_FANG, 26
	learnset MOVE_ICE_FANG, 26
	learnset MOVE_THUNDER_FANG, 26
	learnset MOVE_FLAME_BURST, 29
	learnset MOVE_ROAR, 33
	learnset MOVE_SIGNAL_BEAM, 37
	learnset MOVE_WILD_CHARGE, 41
	learnset MOVE_CRUNCH, 45
	learnset MOVE_CHARGE, 50
	learnset MOVE_SWITCHEROO, 55
	learnset MOVE_DISCHARGE, 60
    terminatelearnset


levelup SPECIES_PLUSLE
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_COVET, 1
	learnset MOVE_CAPTIVATE, 4
	learnset MOVE_SPARK, 7
	learnset MOVE_BESTOW, 10
	learnset MOVE_SWIFT, 13
	learnset MOVE_SING, 16
	learnset MOVE_CHARM, 19
	learnset MOVE_NUZZLE, 22
	learnset MOVE_CHARGE, 25
	learnset MOVE_DISCHARGE, 28
	learnset MOVE_HELPING_HAND, 31
	learnset MOVE_WISH, 33
	learnset MOVE_ELECTRO_BALL, 36
	learnset MOVE_MAGNET_RISE, 39
	learnset MOVE_FAKE_TEARS, 42
	learnset MOVE_ENTRAINMENT, 45
	learnset MOVE_UPROAR, 48
	learnset MOVE_SWITCHEROO, 51
	learnset MOVE_NASTY_PLOT, 54
	learnset MOVE_BATON_PASS, 57
	learnset MOVE_LAST_RESORT, 60
    terminatelearnset


levelup SPECIES_MINUN
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_COVET, 1
	learnset MOVE_CHARM, 4
	learnset MOVE_SPARK, 7
	learnset MOVE_BESTOW, 10
	learnset MOVE_SWIFT, 13
	learnset MOVE_SING, 16
	learnset MOVE_CAPTIVATE, 19
	learnset MOVE_NUZZLE, 22
	learnset MOVE_CHARGE, 25
	learnset MOVE_DISCHARGE, 28
	learnset MOVE_HELPING_HAND, 31
	learnset MOVE_WISH, 33
	learnset MOVE_ELECTRO_BALL, 36
	learnset MOVE_MAGNET_RISE, 39
	learnset MOVE_FAKE_TEARS, 42
	learnset MOVE_ENTRAINMENT, 45
	learnset MOVE_UPROAR, 48
	learnset MOVE_SWITCHEROO, 51
	learnset MOVE_NASTY_PLOT, 54
	learnset MOVE_BATON_PASS, 57
	learnset MOVE_TRUMP_CARD, 60
    terminatelearnset


levelup SPECIES_VOLBEAT
	learnset MOVE_FLASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_INFESTATION, 6
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_QUICK_ATTACK, 12
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_CHARGE_BEAM, 18
	learnset MOVE_MOONLIGHT, 21
	learnset MOVE_STRUGGLE_BUG, 24
	learnset MOVE_HELPING_HAND, 27
	learnset MOVE_PROTECT, 30
	learnset MOVE_THUNDERBOLT, 33
	learnset MOVE_LUNGE, 36
	learnset MOVE_ZEN_HEADBUTT, 40
	learnset MOVE_PLAY_ROUGH, 44
	learnset MOVE_TAIL_GLOW, 48
	learnset MOVE_BUG_BUZZ, 52
	learnset MOVE_BATON_PASS, 56
	learnset MOVE_THUNDER, 61
	learnset MOVE_QUIVER_DANCE, 66
    terminatelearnset


levelup SPECIES_ILLUMISE
	learnset MOVE_TRICK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_INFESTATION, 6
	learnset MOVE_CHARM, 9
	learnset MOVE_QUICK_ATTACK, 12
	learnset MOVE_STRUGGLE_BUG, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_MOONLIGHT, 21
	learnset MOVE_AROMATHERAPY, 24
	learnset MOVE_WISH, 27
	learnset MOVE_FLATTER, 30
	learnset MOVE_PLAY_ROUGH, 33
	learnset MOVE_LUNGE, 36
	learnset MOVE_ZEN_HEADBUTT, 40
	learnset MOVE_MOONBLAST, 44
	learnset MOVE_HELPING_HAND, 48
	learnset MOVE_BUG_BUZZ, 52
	learnset MOVE_BATON_PASS, 56
	learnset MOVE_THUNDER, 61
	learnset MOVE_QUIVER_DANCE, 66
    terminatelearnset


levelup SPECIES_ROSELIA
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_MAGICAL_LEAF, 9
	learnset MOVE_STUN_SPORE, 12
	learnset MOVE_GRASS_WHISTLE, 12
	learnset MOVE_VENOSHOCK, 15
	learnset MOVE_MEGA_DRAIN, 18
	learnset MOVE_LEECH_SEED, 21
	learnset MOVE_SPIKES, 24
	learnset MOVE_TOXIC_SPIKES, 24
	learnset MOVE_LEAF_TORNADO, 27
	learnset MOVE_INGRAIN, 30
	learnset MOVE_SLUDGE, 34
	learnset MOVE_SYNTHESIS, 38
	learnset MOVE_PETAL_DANCE, 42
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_AROMATHERAPY, 50
	learnset MOVE_SLEEP_POWDER, 54
	learnset MOVE_POWER_WHIP, 58
    terminatelearnset


levelup SPECIES_GULPIN
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_AMNESIA, 4
	learnset MOVE_GASTRO_ACID, 7
	learnset MOVE_POISON_GAS, 10
	learnset MOVE_YAWN, 13
	learnset MOVE_SLUDGE, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_ACID_SPRAY, 22
	learnset MOVE_BULLET_SEED, 24
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_WATER_PULSE, 24
	learnset MOVE_BODY_SLAM, 26
	learnset MOVE_SLUDGE_BOMB, 28
	learnset MOVE_TOXIC, 31
	learnset MOVE_CURSE, 34
	learnset MOVE_PAIN_SPLIT, 38
	learnset MOVE_ENCORE, 42
	learnset MOVE_GUNK_SHOT, 46
	learnset MOVE_DESTINY_BOND, 50
	learnset MOVE_DOUBLE_EDGE, 54
	learnset MOVE_WRING_OUT, 58
    terminatelearnset


levelup SPECIES_SWALOT
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_AMNESIA, 4
	learnset MOVE_GASTRO_ACID, 7
	learnset MOVE_POISON_GAS, 10
	learnset MOVE_YAWN, 13
	learnset MOVE_SLUDGE, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_ACID_SPRAY, 22
	learnset MOVE_BULLET_SEED, 24
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_WATER_PULSE, 24
	learnset MOVE_BODY_SLAM, 26
	learnset MOVE_SLUDGE_BOMB, 29
	learnset MOVE_TOXIC, 32
	learnset MOVE_CURSE, 36
	learnset MOVE_PAIN_SPLIT, 40
	learnset MOVE_ENCORE, 44
	learnset MOVE_GUNK_SHOT, 48
	learnset MOVE_DESTINY_BOND, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_WRING_OUT, 60
    terminatelearnset


levelup SPECIES_CARVANHA
	learnset MOVE_BITE, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_WATER_PULSE, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_SCARY_FACE, 11
	learnset MOVE_AQUA_JET, 14
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_POISON_FANG, 18
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_BRINE, 23
	learnset MOVE_SLASH, 26
	learnset MOVE_NIGHT_SLASH, 26
	learnset MOVE_DESTINY_BOND, 29
	learnset MOVE_ASSURANCE, 32
	learnset MOVE_BUBBLE_BEAM, 36
	learnset MOVE_PSYCHIC_FANGS, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_CRUNCH, 48
	learnset MOVE_SKULL_BASH, 52
	learnset MOVE_HYDRO_PUMP, 56
	learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_SHARPEDO
	learnset MOVE_BITE, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_WATER_PULSE, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_SCARY_FACE, 11
	learnset MOVE_AQUA_JET, 14
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_POISON_FANG, 18
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_BRINE, 23
	learnset MOVE_SLASH, 26
	learnset MOVE_NIGHT_SLASH, 26
	learnset MOVE_DESTINY_BOND, 29
	learnset MOVE_TAKE_DOWN, 30
	learnset MOVE_ASSURANCE, 34
	learnset MOVE_BUBBLE_BEAM, 38
	learnset MOVE_PSYCHIC_FANGS, 42
	learnset MOVE_AGILITY, 46
	learnset MOVE_CRUNCH, 50
	learnset MOVE_SKULL_BASH, 54
	learnset MOVE_HYDRO_PUMP, 58
	learnset MOVE_DOUBLE_EDGE, 62
	learnset MOVE_CLOSE_COMBAT, 66
	learnset MOVE_HEAD_SMASH, 70
    terminatelearnset


levelup SPECIES_WAILMER
	learnset MOVE_AQUA_RING, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MIST, 4
	learnset MOVE_DEFENSE_CURL, 7
	learnset MOVE_ROLLOUT, 10
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_TICKLE, 16
	learnset MOVE_AMNESIA, 19
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_BODY_SLAM, 28
	learnset MOVE_HEAVY_SLAM, 32
	learnset MOVE_BRINE, 36
	learnset MOVE_FINAL_GAMBIT, 40
	learnset MOVE_CURSE, 44
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_SOAK, 52
	learnset MOVE_HYDRO_PUMP, 56
	learnset MOVE_FOLLOW_ME, 60
    terminatelearnset


levelup SPECIES_WAILORD
	learnset MOVE_AQUA_RING, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MIST, 4
	learnset MOVE_DEFENSE_CURL, 7
	learnset MOVE_ROLLOUT, 10
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_TICKLE, 16
	learnset MOVE_AMNESIA, 19
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_BODY_SLAM, 28
	learnset MOVE_HEAVY_SLAM, 32
	learnset MOVE_BRINE, 36
	learnset MOVE_FINAL_GAMBIT, 40
	learnset MOVE_WIDE_GUARD, 40
	learnset MOVE_HYPER_VOICE, 45
	learnset MOVE_SOAK, 50
	learnset MOVE_HYDRO_PUMP, 55
	learnset MOVE_FOLLOW_ME, 60
	learnset MOVE_BOOMBURST, 65
	learnset MOVE_WATER_SPOUT, 70
    terminatelearnset


levelup SPECIES_NUMEL
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_EMBER, 10
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_BULLDOZE, 19
	learnset MOVE_FLAME_BURST, 22
	learnset MOVE_MUD_BOMB, 25
	learnset MOVE_LAVA_PLUME, 28
	learnset MOVE_AMNESIA, 31
	learnset MOVE_STOCKPILE, 33
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_HEAVY_SLAM, 37
	learnset MOVE_YAWN, 40
	learnset MOVE_FLAMETHROWER, 43
	learnset MOVE_GROWTH, 46
	learnset MOVE_BODY_SLAM, 49
	learnset MOVE_ANCIENT_POWER, 52
	learnset MOVE_FISSURE, 55
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_ERUPTION, 61
    terminatelearnset


levelup SPECIES_CAMERUPT
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_EMBER, 10
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_BULLDOZE, 19
	learnset MOVE_FLAME_BURST, 22
	learnset MOVE_MUD_BOMB, 25
	learnset MOVE_LAVA_PLUME, 28
	learnset MOVE_AMNESIA, 31
	learnset MOVE_STOCKPILE, 33
	learnset MOVE_TAKE_DOWN, 35
	learnset MOVE_HEAVY_SLAM, 39
	learnset MOVE_YAWN, 43
	learnset MOVE_FLAMETHROWER, 46
	learnset MOVE_GROWTH, 50
	learnset MOVE_BODY_SLAM, 54
	learnset MOVE_ANCIENT_POWER, 58
	learnset MOVE_HEADLONG_RUSH, 62
	learnset MOVE_DOUBLE_EDGE, 66
	learnset MOVE_ERUPTION, 70
    terminatelearnset


levelup SPECIES_TORKOAL
	learnset MOVE_EMBER, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_RAPID_SPIN, 7
	learnset MOVE_FIRE_SPIN, 10
	learnset MOVE_SMOKESCREEN, 13
	learnset MOVE_FLAME_WHEEL, 16
	learnset MOVE_CURSE, 19
	learnset MOVE_BODY_SLAM, 22
	learnset MOVE_CLEAR_SMOG, 25
	learnset MOVE_PROTECT, 28
	learnset MOVE_SCORCHING_SANDS, 31
	learnset MOVE_AMNESIA, 34
	learnset MOVE_IRON_DEFENSE, 34
	learnset MOVE_YAWN, 37
	learnset MOVE_ANCIENT_POWER, 41
	learnset MOVE_LAVA_PLUME, 45
	learnset MOVE_SKULL_BASH, 49
	learnset MOVE_INFERNO, 53
	learnset MOVE_SHELL_SMASH, 57
	learnset MOVE_FISSURE, 61
	learnset MOVE_ERUPTION, 65
    terminatelearnset


levelup SPECIES_SPOINK
	learnset MOVE_SPLASH, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_PSYBEAM, 10
	learnset MOVE_PSYCH_UP, 13
	learnset MOVE_CONFUSE_RAY, 16
	learnset MOVE_ZEN_HEADBUTT, 19
	learnset MOVE_MIRROR_COAT, 22
	learnset MOVE_MAGIC_COAT, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_FUTURE_SIGHT, 28
	learnset MOVE_LUCKY_CHANT, 31
	learnset MOVE_EXTRASENSORY, 34
	learnset MOVE_SIMPLE_BEAM, 37
	learnset MOVE_BOUNCE, 40
	learnset MOVE_PSYCHIC, 43
	learnset MOVE_TRICK, 46
	learnset MOVE_WHIRLWIND, 49
	learnset MOVE_BOUNCE, 52
    terminatelearnset


levelup SPECIES_GRUMPIG
	learnset MOVE_SPLASH, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_PSYBEAM, 10
	learnset MOVE_PSYCH_UP, 13
	learnset MOVE_CONFUSE_RAY, 16
	learnset MOVE_ZEN_HEADBUTT, 19
	learnset MOVE_MIRROR_COAT, 22
	learnset MOVE_MAGIC_COAT, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_FUTURE_SIGHT, 28
	learnset MOVE_LUCKY_CHANT, 31
	learnset MOVE_FOCUS_PUNCH, 32
	learnset MOVE_EXTRASENSORY, 36
	learnset MOVE_SIMPLE_BEAM, 40
	learnset MOVE_BOUNCE, 44
	learnset MOVE_PSYCHIC, 48
	learnset MOVE_TRICK, 52
	learnset MOVE_WHIRLWIND, 56
	learnset MOVE_BOUNCE, 60
	learnset MOVE_PSYSTRIKE, 64
    terminatelearnset


levelup SPECIES_SPINDA
	learnset MOVE_DISABLE, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_PSYBEAM, 13
	learnset MOVE_DIZZY_PUNCH, 16
	learnset MOVE_SUCKER_PUNCH, 19
	learnset MOVE_TEETER_DANCE, 22
	learnset MOVE_UPROAR, 25
	learnset MOVE_FLAIL, 28
	learnset MOVE_ZEN_HEADBUTT, 31
	learnset MOVE_PSYCH_UP, 34
	learnset MOVE_FAKE_OUT, 37
	learnset MOVE_TRICK_ROOM, 40
	learnset MOVE_WISH, 44
	learnset MOVE_DRAIN_PUNCH, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_HYPER_VOICE, 56
	learnset MOVE_BOOMBURST, 60
    terminatelearnset


levelup SPECIES_TRAPINCH
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_MUD_SHOT, 13
	learnset MOVE_BULLDOZE, 16
	learnset MOVE_BUG_BITE, 19
	learnset MOVE_ROCK_TOMB, 22
	learnset MOVE_CRUNCH, 25
	learnset MOVE_FURY_CUTTER, 28
	learnset MOVE_GUST, 30
	learnset MOVE_SIGNAL_BEAM, 33
	learnset MOVE_DIG, 36
	learnset MOVE_HIGH_HORSEPOWER, 39
	learnset MOVE_SCORCHING_SANDS, 42
	learnset MOVE_SANDSTORM, 45
	learnset MOVE_BODY_SLAM, 48
	learnset MOVE_HYPER_BEAM, 51
	learnset MOVE_FISSURE, 54
	learnset MOVE_DOUBLE_EDGE, 57
    terminatelearnset


levelup SPECIES_VIBRAVA
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_MUD_SHOT, 13
	learnset MOVE_SONIC_BOOM, 16
	learnset MOVE_BUG_BITE, 19
	learnset MOVE_TWISTER, 22
	learnset MOVE_CRUNCH, 25
	learnset MOVE_FURY_CUTTER, 28
	learnset MOVE_GUST, 30
	learnset MOVE_STRUGGLE_BUG, 31
	learnset MOVE_UPROAR, 33
	learnset MOVE_DRAGON_BREATH, 36
	learnset MOVE_SIGNAL_BEAM, 39
	learnset MOVE_SCORCHING_SANDS, 42
	learnset MOVE_SANDSTORM, 45
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_BUG_BUZZ, 51
	learnset MOVE_TAILWIND, 54
	learnset MOVE_DOUBLE_EDGE, 57
    terminatelearnset


levelup SPECIES_FLYGON
	learnset MOVE_HIGH_HORSEPOWER, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_BITE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_FLAIL, 10
	learnset MOVE_SONIC_BOOM, 16
	learnset MOVE_BUG_BITE, 19
	learnset MOVE_TWISTER, 22
	learnset MOVE_CRUNCH, 25
	learnset MOVE_FURY_CUTTER, 28
	learnset MOVE_GUST, 30
	learnset MOVE_STRUGGLE_BUG, 31
	learnset MOVE_UPROAR, 33
	learnset MOVE_DRAGON_BREATH, 36
	learnset MOVE_SIGNAL_BEAM, 39
	learnset MOVE_SCORCHING_SANDS, 42
	learnset MOVE_SANDSTORM, 45
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_BUG_BUZZ, 51
	learnset MOVE_TAILWIND, 54
	learnset MOVE_DRAGON_PULSE, 55
	learnset MOVE_LUNGE, 59
	learnset MOVE_DRAGON_DANCE, 63
	learnset MOVE_BOOMBURST, 67
	learnset MOVE_QUIVER_DANCE, 71
    terminatelearnset


levelup SPECIES_CACNEA
	learnset MOVE_ABSORB, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_COTTON_SPORE, 4
	learnset MOVE_GROWTH, 7
	learnset MOVE_MAGICAL_LEAF, 10
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_DISABLE, 16
	learnset MOVE_FEINT_ATTACK, 18
	learnset MOVE_SANDSTORM, 20
	learnset MOVE_BULLET_SEED, 22
	learnset MOVE_DESTINY_BOND, 24
	learnset MOVE_MUD_SHOT, 26
	learnset MOVE_SUCKER_PUNCH, 28
	learnset MOVE_ENERGY_BALL, 31
	learnset MOVE_PIN_MISSILE, 34
	learnset MOVE_DRAIN_PUNCH, 37
	learnset MOVE_NEEDLE_ARM, 41
	learnset MOVE_SYNTHESIS, 45
	learnset MOVE_SCORCHING_SANDS, 49
	learnset MOVE_FOUL_PLAY, 53
	learnset MOVE_NASTY_PLOT, 57
	learnset MOVE_FOCUS_PUNCH, 61
	learnset MOVE_SWITCHEROO, 65
    terminatelearnset


levelup SPECIES_CACTURNE
	learnset MOVE_ABSORB, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_COTTON_SPORE, 4
	learnset MOVE_GROWTH, 7
	learnset MOVE_MAGICAL_LEAF, 10
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_DISABLE, 16
	learnset MOVE_FEINT_ATTACK, 18
	learnset MOVE_SANDSTORM, 20
	learnset MOVE_BULLET_SEED, 22
	learnset MOVE_DESTINY_BOND, 24
	learnset MOVE_MUD_SHOT, 26
	learnset MOVE_SUCKER_PUNCH, 28
	learnset MOVE_ENERGY_BALL, 31
	learnset MOVE_SEED_BOMB, 32
	learnset MOVE_PIN_MISSILE, 35
	learnset MOVE_DRAIN_PUNCH, 38
	learnset MOVE_NEEDLE_ARM, 42
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_SCORCHING_SANDS, 50
	learnset MOVE_FOUL_PLAY, 54
	learnset MOVE_NASTY_PLOT, 58
	learnset MOVE_FOCUS_PUNCH, 62
	learnset MOVE_SWITCHEROO, 66
    terminatelearnset


levelup SPECIES_SWABLU
	learnset MOVE_GROWL, 1
	learnset MOVE_MIST, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_REFRESH, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_FIRE_SPIN, 13
	learnset MOVE_HAZE, 16
	learnset MOVE_TWISTER, 19
	learnset MOVE_AGILITY, 22
	learnset MOVE_SING, 25
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_DISARMING_VOICE, 31
	learnset MOVE_DUAL_WINGBEAT, 34
	learnset MOVE_COTTON_GUARD, 37
	learnset MOVE_TAKE_DOWN, 40
	learnset MOVE_FEATHER_DANCE, 43
	learnset MOVE_MOONBLAST, 46
	learnset MOVE_TAILWIND, 49
	learnset MOVE_DRAGON_RUSH, 52
	learnset MOVE_PERISH_SONG, 55
	learnset MOVE_SKY_ATTACK, 58
    terminatelearnset


levelup SPECIES_ALTARIA
	learnset MOVE_HEAL_BELL, 1
	learnset MOVE_MIRROR_MOVE, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_PLAY_ROUGH, 1
	learnset MOVE_DRAGON_RUSH, 1
	learnset MOVE_REFRESH, 7
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_FIRE_SPIN, 13
	learnset MOVE_HAZE, 16
	learnset MOVE_TWISTER, 19
	learnset MOVE_AGILITY, 22
	learnset MOVE_SING, 25
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_DISARMING_VOICE, 31
	learnset MOVE_DUAL_WINGBEAT, 34
	learnset MOVE_BREAKING_SWIPE, 35
	learnset MOVE_DRAGON_BREATH, 38
	learnset MOVE_COTTON_GUARD, 41
	learnset MOVE_DRAGON_PULSE, 44
	learnset MOVE_FEATHER_DANCE, 47
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_DRAGON_DANCE, 54
	learnset MOVE_TAILWIND, 58
	learnset MOVE_PERISH_SONG, 63
	learnset MOVE_SKY_ATTACK, 67
    terminatelearnset


levelup SPECIES_ZANGOOSE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FURY_SWIPES, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_DOUBLE_KICK, 7
	learnset MOVE_DOUBLE_HIT, 10
	learnset MOVE_ENDEAVOR, 13
	learnset MOVE_REVENGE, 16
	learnset MOVE_SLASH, 19
	learnset MOVE_NIGHT_SLASH, 19
	learnset MOVE_DISABLE, 22
	learnset MOVE_METAL_CLAW, 26
	learnset MOVE_QUICK_GUARD, 30
	learnset MOVE_CRUSH_CLAW, 34
	learnset MOVE_PURSUIT, 38
	learnset MOVE_LUNGE, 42
	learnset MOVE_BELLY_DRUM, 46
	learnset MOVE_DETECT, 50
	learnset MOVE_CLOSE_COMBAT, 54
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_LAST_RESORT, 62
	learnset MOVE_FINAL_GAMBIT, 66
    terminatelearnset


levelup SPECIES_SEVIPER
	learnset MOVE_BITE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SCREECH, 4
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_ASSURANCE, 10
	learnset MOVE_FURY_CUTTER, 13
	learnset MOVE_SUCKER_PUNCH, 16
	learnset MOVE_SLASH, 19
	learnset MOVE_NIGHT_SLASH, 19
	learnset MOVE_GLARE, 22
	learnset MOVE_HAZE, 26
	learnset MOVE_POISON_FANG, 30
	learnset MOVE_GASTRO_ACID, 34
	learnset MOVE_SWITCHEROO, 38
	learnset MOVE_LUNGE, 42
	learnset MOVE_COIL, 46
	learnset MOVE_POISON_TAIL, 50
	learnset MOVE_CRUNCH, 54
	learnset MOVE_POWER_WHIP, 58
	learnset MOVE_WRING_OUT, 62
	learnset MOVE_FINAL_GAMBIT, 66
    terminatelearnset


levelup SPECIES_LUNATONE
	learnset MOVE_HARDEN, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_CONFUSION, 4
	learnset MOVE_ROCK_TOMB, 7
	learnset MOVE_WONDER_ROOM, 10
	learnset MOVE_EMBARGO, 14
	learnset MOVE_HELPING_HAND, 18
	learnset MOVE_PAIN_SPLIT, 22
	learnset MOVE_PSYCHIC, 26
	learnset MOVE_HYPNOSIS, 30
	learnset MOVE_NASTY_PLOT, 34
	learnset MOVE_COSMIC_POWER, 38
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_ALLY_SWITCH, 46
	learnset MOVE_MOONLIGHT, 50
	learnset MOVE_STORED_POWER, 54
	learnset MOVE_PSYSHIELD_BASH, 58
	learnset MOVE_NIGHT_DAZE, 62
	learnset MOVE_LUNAR_DANCE, 66
    terminatelearnset


levelup SPECIES_SOLROCK
	learnset MOVE_HARDEN, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_CONFUSION, 4
	learnset MOVE_FIRE_SPIN, 7
	learnset MOVE_MAGIC_ROOM, 10
	learnset MOVE_EMBARGO, 14
	learnset MOVE_HELPING_HAND, 18
	learnset MOVE_PAIN_SPLIT, 22
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_HYPNOSIS, 30
	learnset MOVE_NASTY_PLOT, 34
	learnset MOVE_COSMIC_POWER, 38
	learnset MOVE_SOLAR_BEAM, 42
	learnset MOVE_ALLY_SWITCH, 46
	learnset MOVE_MORNING_SUN, 50
	learnset MOVE_STORED_POWER, 54
	learnset MOVE_PSYSHIELD_BASH, 58
	learnset MOVE_FLARE_BLITZ, 62
	learnset MOVE_ROCK_WRECKER, 66
    terminatelearnset


levelup SPECIES_BARBOACH
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_FLAIL, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_AMNESIA, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_WATER_GUN, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_MAGNITUDE, 22
	learnset MOVE_SPARK, 25
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_FUTURE_SIGHT, 31
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_BREAKING_SWIPE, 37
	learnset MOVE_ZEN_HEADBUTT, 40
	learnset MOVE_MUDDY_WATER, 43
	learnset MOVE_BOUNCE, 46
	learnset MOVE_DRAGON_DANCE, 49
	learnset MOVE_AQUA_TAIL, 52
	learnset MOVE_FISSURE, 55
	learnset MOVE_HYDRO_PUMP, 58
    terminatelearnset


levelup SPECIES_WHISCASH
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_FLAIL, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_AMNESIA, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_WATER_GUN, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_MAGNITUDE, 22
	learnset MOVE_SPARK, 25
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_BRINE, 30
	learnset MOVE_FUTURE_SIGHT, 32
	learnset MOVE_TAKE_DOWN, 35
	learnset MOVE_BREAKING_SWIPE, 38
	learnset MOVE_ZEN_HEADBUTT, 41
	learnset MOVE_MUDDY_WATER, 45
	learnset MOVE_BOUNCE, 49
	learnset MOVE_DRAGON_DANCE, 53
	learnset MOVE_AQUA_TAIL, 57
	learnset MOVE_FISSURE, 61
	learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset


levelup SPECIES_CORPHISH
	learnset MOVE_HARDEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_DOUBLE_HIT, 4
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_BUBBLE_BEAM, 13
	learnset MOVE_ANCIENT_POWER, 16
	learnset MOVE_KNOCK_OFF, 18
	learnset MOVE_RAZOR_SHELL, 20
	learnset MOVE_SPITE, 23
	learnset MOVE_CHIP_AWAY, 26
	learnset MOVE_SLASH, 29
	learnset MOVE_NIGHT_SLASH, 29
	learnset MOVE_ENDEAVOR, 32
	learnset MOVE_FURY_CUTTER, 35
	learnset MOVE_BODY_SLAM, 38
	learnset MOVE_AQUA_JET, 42
	learnset MOVE_CRUNCH, 46
	learnset MOVE_DRAGON_DANCE, 50
	learnset MOVE_CRABHAMMER, 54
	learnset MOVE_TRUMP_CARD, 58
	learnset MOVE_GUILLOTINE, 62
    terminatelearnset


levelup SPECIES_CRAWDAUNT
	learnset MOVE_HARDEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_DOUBLE_HIT, 4
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_BUBBLE_BEAM, 13
	learnset MOVE_ANCIENT_POWER, 16
	learnset MOVE_KNOCK_OFF, 18
	learnset MOVE_RAZOR_SHELL, 20
	learnset MOVE_SPITE, 23
	learnset MOVE_CHIP_AWAY, 26
	learnset MOVE_SLASH, 29
	learnset MOVE_NIGHT_SLASH, 29
	learnset MOVE_SWITCHEROO, 30
	learnset MOVE_ENDEAVOR, 33
	learnset MOVE_FURY_CUTTER, 37
	learnset MOVE_BODY_SLAM, 41
	learnset MOVE_AQUA_JET, 45
	learnset MOVE_CRUNCH, 49
	learnset MOVE_DRAGON_DANCE, 53
	learnset MOVE_CRABHAMMER, 57
	learnset MOVE_TRUMP_CARD, 61
	learnset MOVE_GUILLOTINE, 65
    terminatelearnset


levelup SPECIES_BALTOY
	learnset MOVE_HARDEN, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_RAPID_SPIN, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_PSYBEAM, 16
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_PSYSHIELD_BASH, 22
	learnset MOVE_COSMIC_POWER, 25
	learnset MOVE_SCORCHING_SANDS, 28
	learnset MOVE_SELF_DESTRUCT, 31
	learnset MOVE_POWER_TRICK, 34
	learnset MOVE_EXTRASENSORY, 37
	learnset MOVE_SANDSTORM, 40
	learnset MOVE_IMPRISON, 43
	learnset MOVE_TRICK_ROOM, 46
	learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_CLAYDOL
	learnset MOVE_TELEPORT, 1
	learnset MOVE_GRAVITY, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_RAPID_SPIN, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_PSYBEAM, 16
	learnset MOVE_ANCIENT_POWER, 19
	learnset MOVE_PSYSHIELD_BASH, 22
	learnset MOVE_COSMIC_POWER, 25
	learnset MOVE_SCORCHING_SANDS, 28
	learnset MOVE_SELF_DESTRUCT, 31
	learnset MOVE_HYPER_BEAM, 32
	learnset MOVE_POWER_TRICK, 35
	learnset MOVE_EXTRASENSORY, 39
	learnset MOVE_SANDSTORM, 43
	learnset MOVE_NASTY_PLOT, 47
	learnset MOVE_IMPRISON, 51
	learnset MOVE_TRICK_ROOM, 55
	learnset MOVE_EXPLOSION, 59
    terminatelearnset


levelup SPECIES_LILEEP
	learnset MOVE_INGRAIN, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LEECH_SEED, 5
	learnset MOVE_INFESTATION, 9
	learnset MOVE_ACID, 13
	learnset MOVE_ANCIENT_POWER, 17
	learnset MOVE_BRINE, 21
	learnset MOVE_MEGA_DRAIN, 25
	learnset MOVE_MUD_SHOT, 28
	learnset MOVE_GASTRO_ACID, 31
	learnset MOVE_TICKLE, 34
	learnset MOVE_STRING_SHOT, 37
	learnset MOVE_SYNTHESIS, 40
	learnset MOVE_ENERGY_BALL, 43
	learnset MOVE_STOCKPILE, 46
	learnset MOVE_SPIT_UP, 46
	learnset MOVE_SWALLOW, 46
	learnset MOVE_RECOVER, 49
	learnset MOVE_WRING_OUT, 52
    terminatelearnset


levelup SPECIES_CRADILY
	learnset MOVE_POWER_WHIP, 1
	learnset MOVE_PAIN_SPLIT, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LEECH_SEED, 5
	learnset MOVE_INFESTATION, 9
	learnset MOVE_ACID, 13
	learnset MOVE_ANCIENT_POWER, 17
	learnset MOVE_BRINE, 21
	learnset MOVE_MEGA_DRAIN, 25
	learnset MOVE_MUD_SHOT, 28
	learnset MOVE_CONFUSE_RAY, 30
	learnset MOVE_GASTRO_ACID, 34
	learnset MOVE_TICKLE, 38
	learnset MOVE_STRING_SHOT, 41
	learnset MOVE_SYNTHESIS, 45
	learnset MOVE_ENERGY_BALL, 49
	learnset MOVE_STOCKPILE, 53
	learnset MOVE_SPIT_UP, 53
	learnset MOVE_SWALLOW, 53
	learnset MOVE_RECOVER, 57
	learnset MOVE_WRING_OUT, 61
    terminatelearnset


levelup SPECIES_ANORITH
	learnset MOVE_HARDEN, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SAND_ATTACK, 5
	learnset MOVE_IRON_DEFENSE, 9
	learnset MOVE_BRINE, 13
	learnset MOVE_RAPID_SPIN, 17
	learnset MOVE_BUG_BITE, 21
	learnset MOVE_METAL_CLAW, 25
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_ROCK_BLAST, 31
	learnset MOVE_FURY_CUTTER, 34
	learnset MOVE_CURSE, 37
	learnset MOVE_LUNGE, 40
	learnset MOVE_AQUA_JET, 43
	learnset MOVE_CROSS_POISON, 46
	learnset MOVE_CRUSH_CLAW, 49
	learnset MOVE_STONE_EDGE, 52
    terminatelearnset


levelup SPECIES_ARMALDO
	learnset MOVE_HARDEN, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SAND_ATTACK, 5
	learnset MOVE_IRON_DEFENSE, 9
	learnset MOVE_BRINE, 13
	learnset MOVE_RAPID_SPIN, 17
	learnset MOVE_BUG_BITE, 21
	learnset MOVE_METAL_CLAW, 25
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_BODY_SLAM, 30
	learnset MOVE_ROCK_BLAST, 33
	learnset MOVE_FURY_CUTTER, 35
	learnset MOVE_CURSE, 39
	learnset MOVE_LUNGE, 43
	learnset MOVE_AQUA_JET, 47
	learnset MOVE_CROSS_POISON, 51
	learnset MOVE_CRUSH_CLAW, 55
	learnset MOVE_STONE_EDGE, 59
    terminatelearnset


levelup SPECIES_FEEBAS
	learnset MOVE_SPLASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLAIL, 1
	learnset MOVE_WATER_PULSE, 15
    terminatelearnset


levelup SPECIES_MILOTIC
	learnset MOVE_REFRESH, 1
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_WATER_PULSE, 7
	learnset MOVE_DISARMING_VOICE, 11
	learnset MOVE_TWISTER, 14
	learnset MOVE_AQUA_RING, 17
	learnset MOVE_CAPTIVATE, 21
	learnset MOVE_DRAGON_TAIL, 24
	learnset MOVE_RECOVER, 27
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_DRAGON_BREATH, 34
	learnset MOVE_SAFEGUARD, 37
	learnset MOVE_CONFUSE_RAY, 41
	learnset MOVE_BRINE, 44
	learnset MOVE_BREAKING_SWIPE, 47
	learnset MOVE_HYPNOSIS, 50
	learnset MOVE_HAZE, 53
	learnset MOVE_DRAGON_PULSE, 56
	learnset MOVE_COIL, 59
	learnset MOVE_HYDRO_PUMP, 62
    terminatelearnset


levelup SPECIES_CASTFORM
	learnset MOVE_AMNESIA, 1
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_CLEAR_SMOG, 1
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_FUTURE_SIGHT, 1
	learnset MOVE_GUARD_SWAP, 1
	learnset MOVE_HEX, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_REFLECT_TYPE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_EMBER, 10
	learnset MOVE_POWDER_SNOW, 10
	learnset MOVE_HEADBUTT, 15
	learnset MOVE_RAIN_DANCE, 20
	learnset MOVE_SUNNY_DAY, 20
	learnset MOVE_HAIL, 20
	learnset MOVE_WEATHER_BALL, 30
	learnset MOVE_HYDRO_PUMP, 45
	learnset MOVE_FIRE_BLAST, 45
	learnset MOVE_BLIZZARD, 45
	learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_KECLEON
	learnset MOVE_DETECT, 1
	learnset MOVE_TRICK, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_BIND, 4
	learnset MOVE_SHADOW_SNEAK, 7
	learnset MOVE_FEINT, 10
	learnset MOVE_FURY_SWIPES, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_FAKE_OUT, 28
	learnset MOVE_CAMOUFLAGE, 32
	learnset MOVE_SHADOW_CLAW, 36
	learnset MOVE_SCREECH, 40
	learnset MOVE_SUCKER_PUNCH, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_SUBSTITUTE, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_FOUL_PLAY, 60
    terminatelearnset


levelup SPECIES_SHUPPET
	learnset MOVE_KNOCK_OFF, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_DISABLE, 10
	learnset MOVE_SHADOW_SNEAK, 13
	learnset MOVE_WILL_O_WISP, 16
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_OMINOUS_WIND, 22
	learnset MOVE_CURSE, 25
	learnset MOVE_HEX, 28
	learnset MOVE_EMBARGO, 31
	learnset MOVE_SUCKER_PUNCH, 34
	learnset MOVE_SNATCH, 37
	learnset MOVE_TRICK, 40
	learnset MOVE_GUNK_SHOT, 43
	learnset MOVE_GRUDGE, 46
	learnset MOVE_DESTINY_BOND, 50
    terminatelearnset


levelup SPECIES_BANETTE
	learnset MOVE_SCREECH, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_DISABLE, 10
	learnset MOVE_SHADOW_SNEAK, 13
	learnset MOVE_WILL_O_WISP, 16
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_OMINOUS_WIND, 22
	learnset MOVE_CURSE, 25
	learnset MOVE_HEX, 28
	learnset MOVE_EMBARGO, 31
	learnset MOVE_SHADOW_CLAW, 32
	learnset MOVE_SUCKER_PUNCH, 35
	learnset MOVE_SNATCH, 39
	learnset MOVE_TRICK, 43
	learnset MOVE_SLASH, 47
	learnset MOVE_RAGING_FURY, 51
	learnset MOVE_GRUDGE, 55
	learnset MOVE_DESTINY_BOND, 59
	learnset MOVE_CRUSH_CLAW, 63
    terminatelearnset


levelup SPECIES_DUSKULL
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_DISABLE, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_HAZE, 16
	learnset MOVE_MEAN_LOOK, 19
	learnset MOVE_IMPRISON, 22
	learnset MOVE_WILL_O_WISP, 25
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_OMINOUS_WIND, 31
	learnset MOVE_SHADOW_SNEAK, 34
	learnset MOVE_FEINT_ATTACK, 37
	learnset MOVE_SKILL_SWAP, 40
	learnset MOVE_HEX, 43
	learnset MOVE_LEECH_LIFE, 46
	learnset MOVE_FUTURE_SIGHT, 49
	learnset MOVE_SUCKER_PUNCH, 52
	learnset MOVE_MEMENTO, 55
	learnset MOVE_GRUDGE, 58
    terminatelearnset


levelup SPECIES_DUSCLOPS
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_DISABLE, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_HAZE, 16
	learnset MOVE_MEAN_LOOK, 19
	learnset MOVE_IMPRISON, 22
	learnset MOVE_WILL_O_WISP, 25
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_OMINOUS_WIND, 31
	learnset MOVE_SHADOW_SNEAK, 34
	learnset MOVE_FEINT_ATTACK, 37
	learnset MOVE_SHADOW_PUNCH, 37
	learnset MOVE_SKILL_SWAP, 41
	learnset MOVE_HEX, 45
	learnset MOVE_LEECH_LIFE, 49
	learnset MOVE_FUTURE_SIGHT, 53
	learnset MOVE_SUCKER_PUNCH, 57
	learnset MOVE_MEMENTO, 61
	learnset MOVE_GRUDGE, 65
    terminatelearnset


levelup SPECIES_TROPIUS
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_GUST, 1
	learnset MOVE_LEER, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_HEADBUTT, 4
	learnset MOVE_WHIRLWIND, 7
	learnset MOVE_STOMP, 10
	learnset MOVE_MAGICAL_LEAF, 14
	learnset MOVE_CURSE, 18
	learnset MOVE_BULLET_SEED, 22
	learnset MOVE_LEAF_TORNADO, 26
	learnset MOVE_NATURE_POWER, 30
	learnset MOVE_AIR_SLASH, 34
	learnset MOVE_DRAGON_DANCE, 38
	learnset MOVE_BODY_SLAM, 42
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_LEAF_BLADE, 50
	learnset MOVE_LEECH_SEED, 54
	learnset MOVE_SOLAR_BEAM, 58
	learnset MOVE_LEAF_STORM, 62
	learnset MOVE_DUAL_WINGBEAT, 66
    terminatelearnset


levelup SPECIES_CHIMECHO
	learnset MOVE_HEAL_BELL, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SWIFT, 6
	learnset MOVE_DISABLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_CONFUSION, 12
	learnset MOVE_CAPTIVATE, 14
	learnset MOVE_UPROAR, 16
	learnset MOVE_STORED_POWER, 18
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_YAWN, 22
	learnset MOVE_ENTRAINMENT, 25
	learnset MOVE_FUTURE_SIGHT, 28
	learnset MOVE_HYPNOSIS, 32
	learnset MOVE_WISH, 36
	learnset MOVE_COSMIC_POWER, 40
	learnset MOVE_HEAL_PULSE, 44
	learnset MOVE_SYNCHRONOISE, 48
	learnset MOVE_RECOVER, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_PERISH_SONG, 60
	learnset MOVE_ESPER_WING, 64
	learnset MOVE_HEALING_WISH, 68
    terminatelearnset


levelup SPECIES_ABSOL
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FEINT, 1
	learnset MOVE_LEER, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_PURSUIT, 10
	learnset MOVE_TAUNT, 13
	learnset MOVE_BITE, 16
	learnset MOVE_DOUBLE_TEAM, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_NIGHT_SLASH, 22
	learnset MOVE_SWORDS_DANCE, 25
	learnset MOVE_PSYCHO_CUT, 28
	learnset MOVE_DETECT, 31
	learnset MOVE_ME_FIRST, 34
	learnset MOVE_SUCKER_PUNCH, 37
	learnset MOVE_PLAY_ROUGH, 40
	learnset MOVE_MEGAHORN, 44
	learnset MOVE_FOUL_PLAY, 48
	learnset MOVE_FUTURE_SIGHT, 52
	learnset MOVE_PERISH_SONG, 56
	learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_WYNAUT
	learnset MOVE_AMNESIA, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_COUNTER, 1
	learnset MOVE_DESTINY_BOND, 1
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_SAFEGUARD, 1
	learnset MOVE_TICKLE, 1
    terminatelearnset


levelup SPECIES_SNORUNT
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SPITE, 6
	learnset MOVE_ICE_SHARD, 9
	learnset MOVE_SPIKES, 12
	learnset MOVE_BITE, 15
	learnset MOVE_DISABLE, 18
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_HEADBUTT, 24
	learnset MOVE_AVALANCHE, 27
	learnset MOVE_CRUNCH, 30
	learnset MOVE_FROST_BREATH, 33
	learnset MOVE_FAKE_TEARS, 36
	learnset MOVE_HEX, 40
	learnset MOVE_HAIL, 44
	learnset MOVE_SWITCHEROO, 48
	learnset MOVE_ICICLE_CRASH, 52
	learnset MOVE_BLIZZARD, 56
    terminatelearnset


levelup SPECIES_GLALIE
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SPITE, 6
	learnset MOVE_ICE_SHARD, 9
	learnset MOVE_SPIKES, 12
	learnset MOVE_BITE, 15
	learnset MOVE_DISABLE, 18
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_HEADBUTT, 24
	learnset MOVE_AVALANCHE, 27
	learnset MOVE_CRUNCH, 30
	learnset MOVE_ROCK_SLIDE, 33
	learnset MOVE_FAKE_TEARS, 36
	learnset MOVE_HEX, 40
	learnset MOVE_HAIL, 44
	learnset MOVE_SWITCHEROO, 48
	learnset MOVE_ICICLE_CRASH, 52
	learnset MOVE_HEADLONG_RUSH, 56
	learnset MOVE_HEAD_SMASH, 60
    terminatelearnset


levelup SPECIES_SPHEAL
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_POWDER_SNOW, 7
	learnset MOVE_SUPER_FANG, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_AURORA_BEAM, 22
	learnset MOVE_ROLLOUT, 25
	learnset MOVE_SLACK_OFF, 28
	learnset MOVE_BRINE, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_AQUA_RING, 38
	learnset MOVE_AQUA_TAIL, 42
	learnset MOVE_CURSE, 50
	learnset MOVE_CRUNCH, 54
	learnset MOVE_FISSURE, 58
    terminatelearnset


levelup SPECIES_SEALEO
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_POWDER_SNOW, 7
	learnset MOVE_SUPER_FANG, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_ICICLE_SPEAR, 21
	learnset MOVE_AURORA_BEAM, 23
	learnset MOVE_ROLLOUT, 26
	learnset MOVE_SLACK_OFF, 29
	learnset MOVE_BRINE, 32
	learnset MOVE_BODY_SLAM, 36
	learnset MOVE_AQUA_RING, 40
	learnset MOVE_AQUA_TAIL, 44
	learnset MOVE_CURSE, 52
	learnset MOVE_CRUNCH, 56
	learnset MOVE_FISSURE, 60
	learnset MOVE_SHEER_COLD, 64
    terminatelearnset


levelup SPECIES_WALREIN
	learnset MOVE_BELLY_DRUM, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_POWDER_SNOW, 7
	learnset MOVE_SUPER_FANG, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_YAWN, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_ICICLE_SPEAR, 21
	learnset MOVE_AURORA_BEAM, 23
	learnset MOVE_ROLLOUT, 26
	learnset MOVE_SLACK_OFF, 29
	learnset MOVE_BRINE, 32
	learnset MOVE_BODY_SLAM, 36
	learnset MOVE_AVALANCHE, 40
	learnset MOVE_AQUA_RING, 44
	learnset MOVE_AQUA_TAIL, 48
	learnset MOVE_CURSE, 56
	learnset MOVE_CRUNCH, 60
	learnset MOVE_FISSURE, 64
	learnset MOVE_SHEER_COLD, 68
    terminatelearnset


levelup SPECIES_CLAMPERL
	learnset MOVE_AQUA_RING, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_IRON_DEFENSE, 1
	learnset MOVE_WATER_PULSE, 15
	learnset MOVE_MUDDY_WATER, 30
	learnset MOVE_CONFUSE_RAY, 40
	learnset MOVE_SHELL_SMASH, 50
    terminatelearnset


levelup SPECIES_HUNTAIL
	learnset MOVE_BITE, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_REFRESH, 7
	learnset MOVE_SCARY_FACE, 10
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_WATER_PULSE, 16
	learnset MOVE_ICE_FANG, 20
	learnset MOVE_BRINE, 24
	learnset MOVE_BOUNCE, 28
	learnset MOVE_COIL, 32
	learnset MOVE_SUCKER_PUNCH, 36
	learnset MOVE_CAPTIVATE, 40
	learnset MOVE_AQUA_TAIL, 44
	learnset MOVE_MUDDY_WATER, 48
	learnset MOVE_SHELL_SMASH, 52
	learnset MOVE_RAIN_DANCE, 56
	learnset MOVE_BATON_PASS, 60
	learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_GOREBYSS
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_REFRESH, 7
	learnset MOVE_AGILITY, 10
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_WATER_PULSE, 16
	learnset MOVE_LOVELY_KISS, 20
	learnset MOVE_BRINE, 24
	learnset MOVE_BOUNCE, 28
	learnset MOVE_COIL, 32
	learnset MOVE_DRAINING_KISS, 36
	learnset MOVE_CAPTIVATE, 40
	learnset MOVE_AQUA_TAIL, 44
	learnset MOVE_MUDDY_WATER, 48
	learnset MOVE_SHELL_SMASH, 52
	learnset MOVE_RAIN_DANCE, 56
	learnset MOVE_BATON_PASS, 60
	learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_RELICANTH
	learnset MOVE_HARDEN, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HEADBUTT, 4
	learnset MOVE_MUD_SHOT, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_SAFEGUARD, 13
	learnset MOVE_ANCIENT_POWER, 16
	learnset MOVE_BRINE, 19
	learnset MOVE_YAWN, 22
	learnset MOVE_ROCK_SLIDE, 25
	learnset MOVE_MUDDY_WATER, 28
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_ROCK_BLAST, 36
	learnset MOVE_AQUA_TAIL, 40
	learnset MOVE_ZEN_HEADBUTT, 44
	learnset MOVE_SKULL_BASH, 48
	learnset MOVE_FLAIL, 52
	learnset MOVE_HYDRO_PUMP, 56
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_HEAD_SMASH, 64
    terminatelearnset


levelup SPECIES_LUVDISC
	learnset MOVE_TACKLE, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_AGILITY, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_LUCKY_CHANT, 13
	learnset MOVE_WATER_PULSE, 16
	learnset MOVE_DRAINING_KISS, 19
	learnset MOVE_ATTRACT, 22
	learnset MOVE_FLAIL, 25
	learnset MOVE_HEART_STAMP, 28
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_CAPTIVATE, 34
	learnset MOVE_MOONBLAST, 37
	learnset MOVE_AQUA_RING, 40
	learnset MOVE_BOUNCE, 43
	learnset MOVE_SAFEGUARD, 46
	learnset MOVE_HYDRO_PUMP, 50
	learnset MOVE_HEART_SWAP, 55
	learnset MOVE_LOVELY_KISS, 60
    terminatelearnset


levelup SPECIES_BAGON
	learnset MOVE_LEER, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_EMBER, 3
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_BITE, 10
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_BREAKING_SWIPE, 14
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SCARY_FACE, 18
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_DRAGON_RAGE, 22
	learnset MOVE_CRUNCH, 24
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_WISH, 30
	learnset MOVE_BODY_SLAM, 33
	learnset MOVE_FLAMETHROWER, 36
	learnset MOVE_DRAGON_RUSH, 40
	learnset MOVE_DOUBLE_EDGE, 44
	learnset MOVE_RAGING_FURY, 48
	learnset MOVE_OUTRAGE, 52
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_SHELGON
	learnset MOVE_WISH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_EMBER, 3
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_BITE, 10
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_BREAKING_SWIPE, 14
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SCARY_FACE, 18
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_DRAGON_RAGE, 22
	learnset MOVE_CRUNCH, 24
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_IRON_DEFENSE, 30
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_FLAMETHROWER, 38
	learnset MOVE_DRAGON_RUSH, 42
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_RAGING_FURY, 50
	learnset MOVE_OUTRAGE, 54
	learnset MOVE_HYDRO_PUMP, 58
    terminatelearnset


levelup SPECIES_SALAMENCE
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_WISH, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_EMBER, 3
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_BITE, 10
	learnset MOVE_BREAKING_SWIPE, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_SCARY_FACE, 18
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_DRAGON_RAGE, 22
	learnset MOVE_CRUNCH, 24
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_IRON_DEFENSE, 30
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_FLAMETHROWER, 38
	learnset MOVE_DRAGON_RUSH, 42
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_FLY, 50
	learnset MOVE_RAGING_FURY, 51
	learnset MOVE_OUTRAGE, 56
	learnset MOVE_HYDRO_PUMP, 61
	learnset MOVE_DUAL_WINGBEAT, 67
	learnset MOVE_DRAGON_DANCE, 72
    terminatelearnset


levelup SPECIES_BELDUM
	learnset MOVE_IRON_DEFENSE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_TAKE_DOWN, 15
    terminatelearnset


levelup SPECIES_METANG
	learnset MOVE_REFRESH, 1
	learnset MOVE_IRON_DEFENSE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_PURSUIT, 23
	learnset MOVE_BULLET_PUNCH, 26
	learnset MOVE_PSYCHIC, 29
	learnset MOVE_SMART_STRIKE, 32
	learnset MOVE_SCARY_FACE, 35
	learnset MOVE_ZEN_HEADBUTT, 38
	learnset MOVE_AGILITY, 41
	learnset MOVE_METEOR_MASH, 44
	learnset MOVE_GRAVITY, 48
	learnset MOVE_COSMIC_POWER, 52
	learnset MOVE_HYPER_BEAM, 56
	learnset MOVE_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_METAGROSS
	learnset MOVE_BODY_SLAM, 1
	learnset MOVE_DYNAMIC_PUNCH, 1
	learnset MOVE_REFRESH, 1
	learnset MOVE_IRON_DEFENSE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_PURSUIT, 23
	learnset MOVE_BULLET_PUNCH, 26
	learnset MOVE_PSYCHIC, 29
	learnset MOVE_SMART_STRIKE, 32
	learnset MOVE_SCARY_FACE, 35
	learnset MOVE_ZEN_HEADBUTT, 38
	learnset MOVE_AGILITY, 42
	learnset MOVE_METEOR_MASH, 45
	learnset MOVE_HAMMER_ARM, 49
	learnset MOVE_HEAVY_SLAM, 53
	learnset MOVE_GRAVITY, 57
	learnset MOVE_COSMIC_POWER, 61
	learnset MOVE_HYPER_BEAM, 65
	learnset MOVE_EXPLOSION, 69
	learnset MOVE_SHIFT_GEAR, 73
    terminatelearnset


levelup SPECIES_REGIROCK
	learnset MOVE_EXPLOSION, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_ROCK_THROW, 6
	learnset MOVE_CHARGE_BEAM, 10
	learnset MOVE_CURSE, 18
	learnset MOVE_ANCIENT_POWER, 22
	learnset MOVE_IRON_DEFENSE, 26
	learnset MOVE_HAMMER_ARM, 30
	learnset MOVE_LOCK_ON, 34
	learnset MOVE_ZAP_CANNON, 34
	learnset MOVE_SANDSTORM, 38
	learnset MOVE_STONE_EDGE, 42
	learnset MOVE_SUPERPOWER, 46
	learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_REGICE
	learnset MOVE_EXPLOSION, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_ICY_WIND, 6
	learnset MOVE_CHARGE_BEAM, 10
	learnset MOVE_CURSE, 18
	learnset MOVE_ANCIENT_POWER, 22
	learnset MOVE_AMNESIA, 26
	learnset MOVE_HAMMER_ARM, 30
	learnset MOVE_LOCK_ON, 34
	learnset MOVE_ZAP_CANNON, 34
	learnset MOVE_HAIL, 38
	learnset MOVE_ICE_BEAM, 42
	learnset MOVE_SUPERPOWER, 46
	learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_REGISTEEL
	learnset MOVE_EXPLOSION, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_METAL_CLAW, 6
	learnset MOVE_CHARGE_BEAM, 10
	learnset MOVE_CURSE, 18
	learnset MOVE_ANCIENT_POWER, 22
	learnset MOVE_IRON_DEFENSE, 26
	learnset MOVE_AMNESIA, 26
	learnset MOVE_HAMMER_ARM, 30
	learnset MOVE_LOCK_ON, 34
	learnset MOVE_ZAP_CANNON, 34
	learnset MOVE_GRAVITY, 38
	learnset MOVE_IRON_HEAD, 42
	learnset MOVE_FLASH_CANNON, 42
	learnset MOVE_SUPERPOWER, 46
	learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_LATIAS
	learnset MOVE_CHARM, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_SIMPLE_BEAM, 1
	learnset MOVE_TAILWIND, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_TRICK, 1
	learnset MOVE_MEMENTO, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_SAFEGUARD, 1
	learnset MOVE_DRAGON_DANCE, 10
	learnset MOVE_REFRESH, 14
	learnset MOVE_BREAKING_SWIPE, 18
	learnset MOVE_MAGIC_COAT, 22
	learnset MOVE_PSYCHO_SHIFT, 26
	learnset MOVE_HELPING_HAND, 30
	learnset MOVE_ZEN_HEADBUTT, 34
	learnset MOVE_RECOVER, 38
	learnset MOVE_ESPER_WING, 42
	learnset MOVE_DRAGON_PULSE, 46
	learnset MOVE_AURA_SPHERE, 50
    terminatelearnset


levelup SPECIES_LATIOS
	learnset MOVE_DRAGON_DANCE, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_SIMPLE_BEAM, 1
	learnset MOVE_TAILWIND, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_TRICK, 1
	learnset MOVE_MEMENTO, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_SAFEGUARD, 1
	learnset MOVE_DRAGON_DANCE, 10
	learnset MOVE_REFRESH, 14
	learnset MOVE_BREAKING_SWIPE, 18
	learnset MOVE_MAGIC_COAT, 22
	learnset MOVE_PSYCHO_SHIFT, 26
	learnset MOVE_HELPING_HAND, 30
	learnset MOVE_ZEN_HEADBUTT, 34
	learnset MOVE_RECOVER, 38
	learnset MOVE_ESPER_WING, 42
	learnset MOVE_DRAGON_PULSE, 46
	learnset MOVE_AURA_SPHERE, 50
    terminatelearnset


levelup SPECIES_KYOGRE
	learnset MOVE_WATER_PULSE, 1
	learnset MOVE_SCARY_FACE, 6
	learnset MOVE_AQUA_TAIL, 10
	learnset MOVE_BODY_SLAM, 14
	learnset MOVE_AQUA_RING, 18
	learnset MOVE_ICE_BEAM, 22
	learnset MOVE_CALM_MIND, 26
	learnset MOVE_MUDDY_WATER, 30
	learnset MOVE_WAVE_CRASH, 34
	learnset MOVE_HYDRO_PUMP, 38
	learnset MOVE_THUNDER, 42
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_WATER_SPOUT, 50
    terminatelearnset


levelup SPECIES_GROUDON
	learnset MOVE_MUD_SHOT, 1
	learnset MOVE_SCARY_FACE, 6
	learnset MOVE_SCORCHING_SANDS, 10
	learnset MOVE_LAVA_PLUME, 14
	learnset MOVE_REST, 18
	learnset MOVE_HAMMER_ARM, 22
	learnset MOVE_BULK_UP, 26
	learnset MOVE_INFERNO, 30
	learnset MOVE_RAGING_FURY, 34
	learnset MOVE_FIRE_BLAST, 38
	learnset MOVE_SOLAR_BEAM, 42
	learnset MOVE_EARTHQUAKE, 46
	learnset MOVE_ERUPTION, 50
    terminatelearnset


levelup SPECIES_RAYQUAZA
	learnset MOVE_V_CREATE, 1
	learnset MOVE_SCARY_FACE, 6
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_CRUNCH, 14
	learnset MOVE_AIR_SLASH, 18
	learnset MOVE_RAGING_FURY, 22
	learnset MOVE_EXTREME_SPEED, 26
	learnset MOVE_DRAGON_PULSE, 30
	learnset MOVE_FLY, 34
	learnset MOVE_DRAGON_DANCE, 38
	learnset MOVE_HYPER_VOICE, 42
	learnset MOVE_OUTRAGE, 46
	learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_JIRACHI
	learnset MOVE_DRACO_METEOR, 1
	learnset MOVE_HEART_STAMP, 1
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_METEOR_MASH, 1
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_WISH, 1
	learnset MOVE_PSYSHIELD_BASH, 1
	learnset MOVE_REST, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_HELPING_HAND, 6
	learnset MOVE_PSYCHIC, 10
	learnset MOVE_REFRESH, 14
	learnset MOVE_LUCKY_CHANT, 18
	learnset MOVE_ZEN_HEADBUTT, 22
	learnset MOVE_COSMIC_POWER, 26
	learnset MOVE_GRAVITY, 30
	learnset MOVE_IRON_HEAD, 34
	learnset MOVE_FUTURE_SIGHT, 38
	learnset MOVE_DOUBLE_EDGE, 42
	learnset MOVE_LAST_RESORT, 46
	learnset MOVE_DOOM_DESIRE, 50
    terminatelearnset


levelup SPECIES_DEOXYS
	learnset MOVE_METEOR_MASH, 1
	learnset MOVE_DARK_PULSE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_NIGHT_SHADE, 6
	learnset MOVE_TELEPORT, 10
	learnset MOVE_KNOCK_OFF, 14
	learnset MOVE_PURSUIT, 18
	learnset MOVE_PSYCHIC, 22
	learnset MOVE_SNATCH, 26
	learnset MOVE_PSYCHO_SHIFT, 30
	learnset MOVE_ZEN_HEADBUTT, 34
	learnset MOVE_COSMIC_POWER, 38
	learnset MOVE_RECOVER, 42
	learnset MOVE_PSYCHO_BOOST, 46
	learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_TURTWIG
	learnset MOVE_TACKLE, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_RAZOR_LEAF, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_BULLET_SEED, 13
	learnset MOVE_BITE, 16
	learnset MOVE_GROWTH, 19
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_LEECH_SEED, 28
	learnset MOVE_WIDE_GUARD, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_CRUNCH, 37
	learnset MOVE_LEAF_BLADE, 40
	learnset MOVE_HEAVY_SLAM, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_SLEEP_POWDER, 49
    terminatelearnset


levelup SPECIES_GROTLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_RAZOR_LEAF, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_BULLET_SEED, 13
	learnset MOVE_BITE, 16
	learnset MOVE_BULLDOZE, 18
	learnset MOVE_GROWTH, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_LEECH_SEED, 28
	learnset MOVE_WIDE_GUARD, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_CRUNCH, 37
	learnset MOVE_LEAF_BLADE, 40
	learnset MOVE_HEAVY_SLAM, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_SLEEP_POWDER, 49
	learnset MOVE_WOOD_HAMMER, 52
	learnset MOVE_OUTRAGE, 55
    terminatelearnset


levelup SPECIES_TORTERRA
	learnset MOVE_SANDSTORM, 1
	learnset MOVE_SUNNY_DAY, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_RAZOR_LEAF, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_BULLET_SEED, 13
	learnset MOVE_BITE, 16
	learnset MOVE_BULLDOZE, 18
	learnset MOVE_GROWTH, 20
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_AMNESIA, 25
	learnset MOVE_LEECH_SEED, 28
	learnset MOVE_WIDE_GUARD, 31
	learnset MOVE_EARTHQUAKE, 32
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_CRUNCH, 37
	learnset MOVE_LEAF_BLADE, 40
	learnset MOVE_HEAVY_SLAM, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_SLEEP_POWDER, 50
	learnset MOVE_WOOD_HAMMER, 54
	learnset MOVE_OUTRAGE, 58
	learnset MOVE_HEADLONG_RUSH, 62
	learnset MOVE_HEAD_SMASH, 66
	learnset MOVE_SHELL_SMASH, 70
    terminatelearnset


levelup SPECIES_CHIMCHAR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_TORMENT, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_HELPING_HAND, 13
	learnset MOVE_FLAME_WHEEL, 17
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_FIRE_SPIN, 22
	learnset MOVE_COVET, 25
	learnset MOVE_UPROAR, 28
	learnset MOVE_FOCUS_ENERGY, 31
	learnset MOVE_FEINT, 34
	learnset MOVE_CROSS_CHOP, 37
	learnset MOVE_RAGING_FURY, 40
	learnset MOVE_QUICK_GUARD, 43
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_INFERNO, 49
    terminatelearnset


levelup SPECIES_MONFERNO
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_TORMENT, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_HELPING_HAND, 13
	learnset MOVE_MACH_PUNCH, 14
	learnset MOVE_FLAME_WHEEL, 17
	learnset MOVE_DOUBLE_KICK, 20
	learnset MOVE_FIRE_SPIN, 22
	learnset MOVE_COVET, 25
	learnset MOVE_UPROAR, 28
	learnset MOVE_FOCUS_ENERGY, 31
	learnset MOVE_FEINT, 34
	learnset MOVE_CROSS_CHOP, 37
	learnset MOVE_RAGING_FURY, 40
	learnset MOVE_QUICK_GUARD, 43
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_INFERNO, 49
	learnset MOVE_SLACK_OFF, 52
	learnset MOVE_FIRE_LASH, 55
    terminatelearnset


levelup SPECIES_INFERNAPE
	learnset MOVE_BLAZE_KICK, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_TORMENT, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_HELPING_HAND, 13
	learnset MOVE_MACH_PUNCH, 14
	learnset MOVE_FLAME_WHEEL, 17
	learnset MOVE_DOUBLE_KICK, 20
	learnset MOVE_FIRE_SPIN, 22
	learnset MOVE_COVET, 25
	learnset MOVE_UPROAR, 28
	learnset MOVE_FOCUS_ENERGY, 31
	learnset MOVE_FEINT, 34
	learnset MOVE_VACUUM_WAVE, 36
	learnset MOVE_CROSS_CHOP, 37
	learnset MOVE_RAGING_FURY, 40
	learnset MOVE_QUICK_GUARD, 43
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_INFERNO, 50
	learnset MOVE_SLACK_OFF, 54
	learnset MOVE_FIRE_LASH, 58
	learnset MOVE_NASTY_PLOT, 62
	learnset MOVE_FLARE_BLITZ, 66
	learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_PIPLUP
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_PECK, 7
	learnset MOVE_CHARM, 10
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_DOUBLE_HIT, 17
	learnset MOVE_YAWN, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_AQUA_RING, 25
	learnset MOVE_FURY_ATTACK, 28
	learnset MOVE_AQUA_JET, 31
	learnset MOVE_AVALANCHE, 34
	learnset MOVE_SING, 37
	learnset MOVE_DRILL_PECK, 40
	learnset MOVE_DUAL_WINGBEAT, 43
	learnset MOVE_FEATHER_DANCE, 46
	learnset MOVE_CAPTIVATE, 49
    terminatelearnset


levelup SPECIES_PRINPLUP
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_PECK, 7
	learnset MOVE_CHARM, 10
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_DOUBLE_HIT, 17
	learnset MOVE_YAWN, 20
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_AQUA_RING, 25
	learnset MOVE_FURY_ATTACK, 28
	learnset MOVE_AQUA_JET, 31
	learnset MOVE_AVALANCHE, 34
	learnset MOVE_SING, 37
	learnset MOVE_STEEL_WING, 40
	learnset MOVE_DUAL_WINGBEAT, 43
	learnset MOVE_FEATHER_DANCE, 46
	learnset MOVE_CAPTIVATE, 49
	learnset MOVE_ROOST, 52
	learnset MOVE_DRILL_PECK, 55
    terminatelearnset


levelup SPECIES_EMPOLEON
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_PECK, 7
	learnset MOVE_CHARM, 10
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_DOUBLE_HIT, 17
	learnset MOVE_YAWN, 20
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_AQUA_RING, 25
	learnset MOVE_FURY_ATTACK, 28
	learnset MOVE_AQUA_JET, 31
	learnset MOVE_AVALANCHE, 34
	learnset MOVE_SMART_STRIKE, 36
	learnset MOVE_SING, 37
	learnset MOVE_STEEL_WING, 40
	learnset MOVE_DUAL_WINGBEAT, 43
	learnset MOVE_FEATHER_DANCE, 46
	learnset MOVE_CAPTIVATE, 50
	learnset MOVE_ROOST, 54
	learnset MOVE_DRILL_PECK, 58
	learnset MOVE_AGILITY, 62
	learnset MOVE_HYDRO_PUMP, 66
    terminatelearnset


levelup SPECIES_STARLY
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_WING_ATTACK, 8
	learnset MOVE_PURSUIT, 10
	learnset MOVE_FORESIGHT, 12
	learnset MOVE_FURY_ATTACK, 14
	learnset MOVE_ENDEAVOR, 17
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_REVENGE, 23
	learnset MOVE_RETALIATE, 26
	learnset MOVE_STEEL_WING, 29
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_AGILITY, 35
	learnset MOVE_TAILWIND, 38
	learnset MOVE_SKY_ATTACK, 42
    terminatelearnset


levelup SPECIES_STARAVIA
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_WING_ATTACK, 8
	learnset MOVE_PURSUIT, 10
	learnset MOVE_FORESIGHT, 12
	learnset MOVE_FURY_ATTACK, 14
	learnset MOVE_ENDEAVOR, 17
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_REVENGE, 23
	learnset MOVE_RETALIATE, 26
	learnset MOVE_STEEL_WING, 29
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_AGILITY, 36
	learnset MOVE_TAILWIND, 40
	learnset MOVE_SKY_ATTACK, 44
	learnset MOVE_DOUBLE_EDGE, 48
	learnset MOVE_BRAVE_BIRD, 52
	learnset MOVE_CLOSE_COMBAT, 56
    terminatelearnset


levelup SPECIES_STARAPTOR
	learnset MOVE_FEATHER_DANCE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_WING_ATTACK, 8
	learnset MOVE_PURSUIT, 10
	learnset MOVE_FORESIGHT, 12
	learnset MOVE_FURY_ATTACK, 14
	learnset MOVE_ENDEAVOR, 17
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_REVENGE, 23
	learnset MOVE_RETALIATE, 26
	learnset MOVE_STEEL_WING, 29
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_FINAL_GAMBIT, 34
	learnset MOVE_SKY_UPPERCUT, 34
	learnset MOVE_AGILITY, 38
	learnset MOVE_TAILWIND, 42
	learnset MOVE_SKY_ATTACK, 47
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_BRAVE_BIRD, 58
	learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset


levelup SPECIES_BIDOOF
	learnset MOVE_GROWL, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ENDURE, 4
	learnset MOVE_COVET, 7
	learnset MOVE_BITE, 10
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_QUICK_ATTACK, 14
	learnset MOVE_YAWN, 16
	learnset MOVE_HYPER_FANG, 18
	learnset MOVE_CURSE, 20
	learnset MOVE_SUPER_FANG, 22
	learnset MOVE_FLING, 25
	learnset MOVE_SKULL_BASH, 28
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_AMNESIA, 38
	learnset MOVE_TAKE_DOWN, 42
	learnset MOVE_SWORDS_DANCE, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_LAST_RESORT, 54
    terminatelearnset


levelup SPECIES_BIBAREL
	learnset MOVE_GROWL, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ENDURE, 4
	learnset MOVE_COVET, 7
	learnset MOVE_BITE, 10
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_QUICK_ATTACK, 14
	learnset MOVE_WATER_PULSE, 15
	learnset MOVE_YAWN, 17
	learnset MOVE_HYPER_FANG, 19
	learnset MOVE_CURSE, 21
	learnset MOVE_SUPER_FANG, 23
	learnset MOVE_AQUA_JET, 25
	learnset MOVE_FLING, 27
	learnset MOVE_SKULL_BASH, 29
	learnset MOVE_AQUA_TAIL, 32
	learnset MOVE_CRUNCH, 36
	learnset MOVE_AMNESIA, 40
	learnset MOVE_TAKE_DOWN, 44
	learnset MOVE_SWORDS_DANCE, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_LAST_RESORT, 56
	learnset MOVE_WAVE_CRASH, 60
    terminatelearnset


levelup SPECIES_KRICKETOT
	learnset MOVE_GROWL, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_STRUGGLE_BUG, 3
	learnset MOVE_UPROAR, 7
    terminatelearnset


levelup SPECIES_KRICKETUNE
	learnset MOVE_PERISH_SONG, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_STRUGGLE_BUG, 3
	learnset MOVE_UPROAR, 7
	learnset MOVE_ABSORB, 10
	learnset MOVE_BUG_BUZZ, 13
	learnset MOVE_SING, 16
	learnset MOVE_FURY_CUTTER, 19
	learnset MOVE_FOCUS_ENERGY, 22
	learnset MOVE_HYPER_VOICE, 25
	learnset MOVE_X_SCISSOR, 28
	learnset MOVE_SCREECH, 31
	learnset MOVE_LUNGE, 34
	learnset MOVE_TAUNT, 37
	learnset MOVE_HEAL_BELL, 40
	learnset MOVE_LEECH_LIFE, 43
	learnset MOVE_BOOMBURST, 46
	learnset MOVE_PERISH_SONG, 50
    terminatelearnset


levelup SPECIES_SHINX
	learnset MOVE_LEER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARGE, 4
	learnset MOVE_HOWL, 7
	learnset MOVE_HELPING_HAND, 9
	learnset MOVE_SPARK, 11
	learnset MOVE_BITE, 14
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_NUZZLE, 18
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_ICE_FANG, 20
	learnset MOVE_THUNDER_FANG, 20
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_FAKE_TEARS, 25
	learnset MOVE_REVENGE, 28
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_SCARY_FACE, 34
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_PLAY_ROUGH, 40
	learnset MOVE_WILD_CHARGE, 44
	learnset MOVE_CRUNCH, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_VOLT_TACKLE, 56
    terminatelearnset


levelup SPECIES_LUXIO
	learnset MOVE_LEER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARGE, 4
	learnset MOVE_HOWL, 7
	learnset MOVE_HELPING_HAND, 9
	learnset MOVE_SPARK, 11
	learnset MOVE_BITE, 14
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_NUZZLE, 18
	learnset MOVE_FIRE_FANG, 21
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_THUNDER_FANG, 21
	learnset MOVE_QUICK_ATTACK, 23
	learnset MOVE_FAKE_TEARS, 26
	learnset MOVE_REVENGE, 29
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_SCARY_FACE, 35
	learnset MOVE_DISCHARGE, 38
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_WILD_CHARGE, 46
	learnset MOVE_CRUNCH, 49
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_VOLT_TACKLE, 56
    terminatelearnset


levelup SPECIES_LUXRAY
	learnset MOVE_PSYCHIC_FANGS, 1
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_SUPERPOWER, 1
	learnset MOVE_HOWL, 7
	learnset MOVE_HELPING_HAND, 9
	learnset MOVE_SPARK, 11
	learnset MOVE_BITE, 14
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_NUZZLE, 18
	learnset MOVE_FIRE_FANG, 21
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_THUNDER_FANG, 21
	learnset MOVE_QUICK_ATTACK, 23
	learnset MOVE_FAKE_TEARS, 26
	learnset MOVE_REVENGE, 29
	learnset MOVE_NIGHT_SLASH, 30
	learnset MOVE_TAKE_DOWN, 33
	learnset MOVE_SCARY_FACE, 36
	learnset MOVE_DISCHARGE, 39
	learnset MOVE_PLAY_ROUGH, 43
	learnset MOVE_WILD_CHARGE, 47
	learnset MOVE_CRUNCH, 51
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_VOLT_TACKLE, 60
	learnset MOVE_FOUL_PLAY, 65
    terminatelearnset


levelup SPECIES_BUDEW
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_WORRY_SEED, 3
	learnset MOVE_PIN_MISSILE, 5
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_MAGICAL_LEAF, 9
	learnset MOVE_STUN_SPORE, 12
	learnset MOVE_GRASS_WHISTLE, 12
	learnset MOVE_VENOSHOCK, 15
	learnset MOVE_MEGA_DRAIN, 18
	learnset MOVE_EXTRASENSORY, 21
    terminatelearnset


levelup SPECIES_ROSERADE
	learnset MOVE_AROMATHERAPY, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SPIKES, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_EXTRASENSORY, 50
	learnset MOVE_SLEEP_POWDER, 55
	learnset MOVE_LEAF_STORM, 60
    terminatelearnset


levelup SPECIES_CRANIDOS
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_PURSUIT, 9
	learnset MOVE_ROCK_SLIDE, 12
	learnset MOVE_SCARY_FACE, 15
	learnset MOVE_TAKE_DOWN, 18
	learnset MOVE_ASSURANCE, 21
	learnset MOVE_CHIP_AWAY, 24
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_SCREECH, 30
	learnset MOVE_CRUNCH, 33
	learnset MOVE_ROCK_POLISH, 36
	learnset MOVE_HEAD_CHARGE, 39
	learnset MOVE_STONE_EDGE, 42
	learnset MOVE_HAMMER_ARM, 45
	learnset MOVE_HEADLONG_RUSH, 50
	learnset MOVE_HEAD_SMASH, 54
    terminatelearnset


levelup SPECIES_RAMPARDOS
	learnset MOVE_OUTRAGE, 1
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_PURSUIT, 9
	learnset MOVE_ROCK_SLIDE, 12
	learnset MOVE_SCARY_FACE, 15
	learnset MOVE_TAKE_DOWN, 18
	learnset MOVE_ASSURANCE, 21
	learnset MOVE_CHIP_AWAY, 24
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_ENDEAVOR, 30
	learnset MOVE_SCREECH, 31
	learnset MOVE_CRUNCH, 35
	learnset MOVE_ROCK_POLISH, 39
	learnset MOVE_HEAD_CHARGE, 43
	learnset MOVE_STONE_EDGE, 47
	learnset MOVE_HAMMER_ARM, 51
	learnset MOVE_HEADLONG_RUSH, 55
	learnset MOVE_RAGING_FURY, 59
	learnset MOVE_DRAGON_RUSH, 63
	learnset MOVE_ACCELEROCK, 67
	learnset MOVE_HEAD_SMASH, 71
    terminatelearnset


levelup SPECIES_SHIELDON
	learnset MOVE_ENDURE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_COUNTER, 6
	learnset MOVE_ANCIENT_POWER, 9
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_BODY_SLAM, 15
	learnset MOVE_ROCK_SLIDE, 18
	learnset MOVE_TAUNT, 21
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_SCREECH, 27
	learnset MOVE_PROTECT, 30
	learnset MOVE_ROCK_BLAST, 36
	learnset MOVE_HEAVY_SLAM, 39
	learnset MOVE_WIDE_GUARD, 42
	learnset MOVE_CURSE, 45
	learnset MOVE_METAL_BURST, 50
    terminatelearnset


levelup SPECIES_BASTIODON
	learnset MOVE_FISSURE, 1
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_PSYSHIELD_BASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_COUNTER, 6
	learnset MOVE_ANCIENT_POWER, 9
	learnset MOVE_HEADBUTT, 12
	learnset MOVE_BODY_SLAM, 15
	learnset MOVE_ROCK_SLIDE, 18
	learnset MOVE_TAUNT, 21
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_SCREECH, 27
	learnset MOVE_PROTECT, 30
	learnset MOVE_GUARD_SPLIT, 31
	learnset MOVE_ROCK_BLAST, 35
	learnset MOVE_HEAVY_SLAM, 39
	learnset MOVE_WIDE_GUARD, 43
	learnset MOVE_CURSE, 47
	learnset MOVE_STEALTH_ROCK, 51
	learnset MOVE_METAL_BURST, 55
    terminatelearnset


levelup SPECIES_BURMY
	learnset MOVE_TACKLE, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_ELECTROWEB, 1
	learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset


levelup SPECIES_WORMADAM
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_ELECTROWEB, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_LEAF_TORNADO, 25
	learnset MOVE_SUCKER_PUNCH, 27
	learnset MOVE_RAGE_POWDER, 29
	learnset MOVE_TOXIC_SPIKES, 32
	learnset MOVE_GROWTH, 35
	learnset MOVE_ENERGY_BALL, 38
	learnset MOVE_BUG_BUZZ, 41
	learnset MOVE_PSYCHIC, 44
	learnset MOVE_CAPTIVATE, 48
	learnset MOVE_ENDEAVOR, 52
	learnset MOVE_QUIVER_DANCE, 56
	learnset MOVE_LEAF_STORM, 60
    terminatelearnset


levelup SPECIES_MOTHIM
	learnset MOVE_TACKLE, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_ELECTROWEB, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_OMINOUS_WIND, 27
	learnset MOVE_LUNGE, 29
	learnset MOVE_PSYBEAM, 32
	learnset MOVE_GROWTH, 35
	learnset MOVE_TAILWIND, 38
	learnset MOVE_BUG_BUZZ, 41
	learnset MOVE_PSYCHIC, 44
	learnset MOVE_CAPTIVATE, 48
	learnset MOVE_ENDEAVOR, 52
	learnset MOVE_QUIVER_DANCE, 56
	learnset MOVE_HURRICANE, 60
    terminatelearnset


levelup SPECIES_COMBEE
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_BUG_BUZZ, 15
    terminatelearnset


levelup SPECIES_VESPIQUEN
	learnset MOVE_GUST, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_PIN_MISSILE, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_PURSUIT, 13
	learnset MOVE_SLASH, 17
	learnset MOVE_DEFEND_ORDER, 21
	learnset MOVE_HEAL_ORDER, 21
	learnset MOVE_ATTACK_ORDER, 21
	learnset MOVE_CAPTIVATE, 25
	learnset MOVE_TOXIC, 29
	learnset MOVE_AROMATHERAPY, 33
	learnset MOVE_AIR_SLASH, 37
	learnset MOVE_OMINOUS_WIND, 41
	learnset MOVE_TAILWIND, 45
	learnset MOVE_CROSS_POISON, 49
	learnset MOVE_REVENGE, 53
	learnset MOVE_DESTINY_BOND, 57
    terminatelearnset


levelup SPECIES_PACHIRISU
	learnset MOVE_CHARGE, 1
	learnset MOVE_BITE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 4
	learnset MOVE_SPARK, 7
	learnset MOVE_DEFENSE_CURL, 10
	learnset MOVE_COVET, 13
	learnset MOVE_FAKE_TEARS, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_SWIFT, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_NUZZLE, 28
	learnset MOVE_FOLLOW_ME, 32
	learnset MOVE_UPROAR, 36
	learnset MOVE_CHARM, 40
	learnset MOVE_HYPER_FANG, 44
	learnset MOVE_DISCHARGE, 48
	learnset MOVE_HELPING_HAND, 52
	learnset MOVE_MAGNET_RISE, 56
	learnset MOVE_LAST_RESORT, 60
    terminatelearnset


levelup SPECIES_BUIZEL
 	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_FURY_SWIPES, 12
	learnset MOVE_WHIRLPOOL, 14
	learnset MOVE_AQUA_JET, 16
	learnset MOVE_SOAK, 18
	learnset MOVE_WATER_PULSE, 20
	learnset MOVE_SONIC_BOOM, 22
	learnset MOVE_HELPING_HAND, 25
	learnset MOVE_HEADBUTT, 28
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_DOUBLE_HIT, 34
	learnset MOVE_ICE_FANG, 37
	learnset MOVE_TAIL_SLAP, 40
	learnset MOVE_LUNGE, 44
	learnset MOVE_AGILITY, 48
	learnset MOVE_SWITCHEROO, 52
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_FLOATZEL
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_FURY_SWIPES, 12
	learnset MOVE_WHIRLPOOL, 14
	learnset MOVE_AQUA_JET, 16
	learnset MOVE_SOAK, 18
	learnset MOVE_WATER_PULSE, 20
	learnset MOVE_SONIC_BOOM, 22
	learnset MOVE_HELPING_HAND, 25
	learnset MOVE_BRINE, 26
	learnset MOVE_HEADBUTT, 29
	learnset MOVE_AQUA_TAIL, 33
	learnset MOVE_DOUBLE_HIT, 36
	learnset MOVE_ICE_FANG, 39
	learnset MOVE_TAIL_SLAP, 43
	learnset MOVE_LUNGE, 47
	learnset MOVE_AGILITY, 51
	learnset MOVE_SWITCHEROO, 55
	learnset MOVE_HYDRO_PUMP, 59
	learnset MOVE_BATON_PASS, 63
    terminatelearnset


levelup SPECIES_CHERUBI
	learnset MOVE_ABSORB, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TICKLE, 3
	learnset MOVE_DEFENSE_CURL, 5
	learnset MOVE_LEECH_SEED, 8
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_MAGICAL_LEAF, 12
	learnset MOVE_NATURE_POWER, 14
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_SUNNY_DAY, 18
	learnset MOVE_AROMATHERAPY, 21
	learnset MOVE_MEGA_DRAIN, 24
	learnset MOVE_TAKE_DOWN, 27
	learnset MOVE_LEAF_TORNADO, 30
	learnset MOVE_MAGIC_COAT, 34
	learnset MOVE_GRASS_WHISTLE, 38
	learnset MOVE_HEAL_PULSE, 42
	learnset MOVE_ROLLOUT, 46
	learnset MOVE_PLAY_ROUGH, 50
	learnset MOVE_HEALING_WISH, 55
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_LEAF_STORM, 65
    terminatelearnset


levelup SPECIES_CHERRIM
	learnset MOVE_ABSORB, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TICKLE, 3
	learnset MOVE_DEFENSE_CURL, 5
	learnset MOVE_LEECH_SEED, 8
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_MAGICAL_LEAF, 12
	learnset MOVE_NATURE_POWER, 14
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_SUNNY_DAY, 18
	learnset MOVE_PETAL_DANCE, 18
	learnset MOVE_GROWTH, 20
	learnset MOVE_AROMATHERAPY, 22
	learnset MOVE_MEGA_DRAIN, 25
	learnset MOVE_TAKE_DOWN, 28
	learnset MOVE_LEAF_TORNADO, 31
	learnset MOVE_MAGIC_COAT, 35
	learnset MOVE_GRASS_WHISTLE, 39
	learnset MOVE_HEAL_PULSE, 43
	learnset MOVE_ROLLOUT, 47
	learnset MOVE_PLAY_ROUGH, 51
	learnset MOVE_HEALING_WISH, 56
	learnset MOVE_DOUBLE_EDGE, 62
	learnset MOVE_LEAF_STORM, 67
    terminatelearnset


levelup SPECIES_SHELLOS
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_HARDEN, 7
	learnset MOVE_WHIRLPOOL, 10
	learnset MOVE_MUD_SHOT, 12
	learnset MOVE_YAWN, 14
	learnset MOVE_SLUDGE, 16
	learnset MOVE_WATER_PULSE, 18
	learnset MOVE_STOCKPILE, 20
	learnset MOVE_SWALLOW, 22
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_CLEAR_SMOG, 26
	learnset MOVE_MUDDY_WATER, 28
	learnset MOVE_MUD_BOMB, 30
	learnset MOVE_CURSE, 31
	learnset MOVE_BRINE, 34
	learnset MOVE_COUNTER, 37
	learnset MOVE_MIRROR_COAT, 37
	learnset MOVE_ACID_ARMOR, 40
	learnset MOVE_SPIKES, 40
	learnset MOVE_BODY_SLAM, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset


levelup SPECIES_GASTRODON
	learnset MOVE_MEMENTO, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_HARDEN, 7
	learnset MOVE_WHIRLPOOL, 10
	learnset MOVE_MUD_SHOT, 12
	learnset MOVE_YAWN, 14
	learnset MOVE_SLUDGE, 16
	learnset MOVE_WATER_PULSE, 18
	learnset MOVE_STOCKPILE, 20
	learnset MOVE_SWALLOW, 22
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_CLEAR_SMOG, 26
	learnset MOVE_MUDDY_WATER, 28
	learnset MOVE_MUD_BOMB, 30
	learnset MOVE_CURSE, 33
	learnset MOVE_BRINE, 37
	learnset MOVE_COUNTER, 41
	learnset MOVE_MIRROR_COAT, 41
	learnset MOVE_ACID_ARMOR, 45
	learnset MOVE_SPIKES, 45
	learnset MOVE_BODY_SLAM, 49
	learnset MOVE_RECOVER, 53
	learnset MOVE_HYDRO_PUMP, 57
	learnset MOVE_TRUMP_CARD, 61
    terminatelearnset


levelup SPECIES_AMBIPOM
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_TICKLE, 8
	learnset MOVE_BATON_PASS, 11
	learnset MOVE_PURSUIT, 14
	learnset MOVE_FURY_SWIPES, 17
	learnset MOVE_COVET, 20
	learnset MOVE_QUICK_ATTACK, 23
	learnset MOVE_SCREECH, 26
	learnset MOVE_AGILITY, 29
	learnset MOVE_DOUBLE_HIT, 32
	learnset MOVE_FAKE_OUT, 35
	learnset MOVE_FLING, 38
	learnset MOVE_BOUNCE, 41
	learnset MOVE_NASTY_PLOT, 44
	learnset MOVE_SWITCHEROO, 47
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_TAIL_SLAP, 54
	learnset MOVE_ARM_THRUST, 58
    terminatelearnset


levelup SPECIES_DRIFLOON
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MINIMIZE, 4
	learnset MOVE_GUST, 7
	learnset MOVE_FOCUS_ENERGY, 10
	learnset MOVE_PAYBACK, 13
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_AIR_CUTTER, 19
	learnset MOVE_STOCKPILE, 22
	learnset MOVE_SWALLOW, 22
	learnset MOVE_SPIT_UP, 22
	learnset MOVE_HEX, 25
	learnset MOVE_AMNESIA, 28
	learnset MOVE_AIR_SLASH, 31
	learnset MOVE_HYPNOSIS, 34
	learnset MOVE_EXPLOSION, 38
	learnset MOVE_DISABLE, 42
	learnset MOVE_EXTRASENSORY, 46
	learnset MOVE_HAZE, 50
	learnset MOVE_MEMENTO, 54
	learnset MOVE_PAIN_SPLIT, 58
	learnset MOVE_DESTINY_BOND, 62
    terminatelearnset


levelup SPECIES_DRIFBLIM
	learnset MOVE_TAILWIND, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MINIMIZE, 4
	learnset MOVE_GUST, 7
	learnset MOVE_FOCUS_ENERGY, 10
	learnset MOVE_PAYBACK, 13
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_AIR_CUTTER, 19
	learnset MOVE_STOCKPILE, 22
	learnset MOVE_SWALLOW, 22
	learnset MOVE_SPIT_UP, 22
	learnset MOVE_HEX, 25
	learnset MOVE_AMNESIA, 29
	learnset MOVE_AIR_SLASH, 33
	learnset MOVE_HYPNOSIS, 37
	learnset MOVE_EXPLOSION, 41
	learnset MOVE_DISABLE, 45
	learnset MOVE_EXTRASENSORY, 49
	learnset MOVE_HAZE, 53
	learnset MOVE_MEMENTO, 57
	learnset MOVE_PAIN_SPLIT, 61
	learnset MOVE_DESTINY_BOND, 65
    terminatelearnset


levelup SPECIES_BUNEARY
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_DOUBLE_HIT, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_FORESIGHT, 13
	learnset MOVE_AGILITY, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_SWITCHEROO, 25
	learnset MOVE_AFTER_YOU, 28
	learnset MOVE_JUMP_KICK, 31
	learnset MOVE_COSMIC_POWER, 34
	learnset MOVE_CIRCLE_THROW, 37
	learnset MOVE_DIZZY_PUNCH, 40
	learnset MOVE_FOCUS_PUNCH, 44
	learnset MOVE_BLAZE_KICK, 48
	learnset MOVE_MACH_PUNCH, 52
	learnset MOVE_HEALING_WISH, 56
    terminatelearnset


levelup SPECIES_LOPUNNY
	learnset MOVE_HIGH_HORSEPOWER, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_DOUBLE_HIT, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_FORESIGHT, 13
	learnset MOVE_AGILITY, 16
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_SWITCHEROO, 25
	learnset MOVE_AFTER_YOU, 28
	learnset MOVE_JUMP_KICK, 31
	learnset MOVE_COSMIC_POWER, 34
	learnset MOVE_CIRCLE_THROW, 37
	learnset MOVE_DIZZY_PUNCH, 40
	learnset MOVE_FOCUS_PUNCH, 44
	learnset MOVE_BLAZE_KICK, 48
	learnset MOVE_MACH_PUNCH, 52
	learnset MOVE_HEALING_WISH, 56
	learnset MOVE_TRIPLE_AXEL, 60
	learnset MOVE_HIGH_JUMP_KICK, 64
	learnset MOVE_DOUBLE_EDGE, 68
	learnset MOVE_CLOSE_COMBAT, 72
    terminatelearnset


levelup SPECIES_MISMAGIUS
	learnset MOVE_SPITE, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_LUCKY_CHANT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MAGICAL_LEAF, 30
	learnset MOVE_HYPNOSIS, 40
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_NASTY_PLOT, 60
    terminatelearnset


levelup SPECIES_HONCHKROW
	learnset MOVE_SPITE, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_LUCKY_CHANT, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_HAZE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SUCKER_PUNCH, 30
	learnset MOVE_DRILL_PECK, 40
	learnset MOVE_NIGHT_SLASH, 50
	learnset MOVE_FOUL_PLAY, 60
    terminatelearnset


levelup SPECIES_GLAMEOW
	learnset MOVE_BITE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FEINT_ATTACK, 4
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_CHARM, 13
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_FAKE_OUT, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_AERIAL_ACE, 25
	learnset MOVE_U_TURN, 28
	learnset MOVE_FLAIL, 32
	learnset MOVE_COVET, 36
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_FOUL_PLAY, 44
	learnset MOVE_BODY_SLAM, 48
	learnset MOVE_PLAY_ROUGH, 52
	learnset MOVE_CRUNCH, 56
	learnset MOVE_LAST_RESORT, 60
    terminatelearnset


levelup SPECIES_PURUGLY
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_ASSIST, 1
	learnset MOVE_BITE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FEINT_ATTACK, 4
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_CHARM, 13
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_FAKE_OUT, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_AERIAL_ACE, 25
	learnset MOVE_WAKE_UP_SLAP, 26
	learnset MOVE_U_TURN, 29
	learnset MOVE_FLAIL, 33
	learnset MOVE_COVET, 37
	learnset MOVE_SUCKER_PUNCH, 41
	learnset MOVE_FOUL_PLAY, 45
	learnset MOVE_BODY_SLAM, 49
	learnset MOVE_PLAY_ROUGH, 53
	learnset MOVE_CRUNCH, 57
	learnset MOVE_LAST_RESORT, 61
    terminatelearnset


levelup SPECIES_CHINGLING
	learnset MOVE_TELEKINESIS, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SWIFT, 6
	learnset MOVE_DISABLE, 8
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_CONFUSION, 12
	learnset MOVE_CAPTIVATE, 14
	learnset MOVE_UPROAR, 16
	learnset MOVE_STORED_POWER, 18
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_HEAL_BELL, 22
	learnset MOVE_HYPNOSIS, 25
    terminatelearnset


levelup SPECIES_STUNKY
	learnset MOVE_BITE, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_ACID_SPRAY, 10
	learnset MOVE_ASSURANCE, 13
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_FLAME_BURST, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_FLAMETHROWER, 28
	learnset MOVE_NIGHT_SLASH, 31
	learnset MOVE_MEMENTO, 34
	learnset MOVE_HAZE, 38
	learnset MOVE_SUCKER_PUNCH, 42
	learnset MOVE_FOUL_PLAY, 46
	learnset MOVE_CRUNCH, 50
	learnset MOVE_DOUBLE_EDGE, 54
	learnset MOVE_GUNK_SHOT, 58
    terminatelearnset


levelup SPECIES_SKUNTANK
	learnset MOVE_FIRE_SPIN, 1
	learnset MOVE_BITE, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_ACID_SPRAY, 10
	learnset MOVE_ASSURANCE, 13
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_FLAME_BURST, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_SNARL, 26
	learnset MOVE_FLAMETHROWER, 29
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_MEMENTO, 37
	learnset MOVE_HAZE, 41
	learnset MOVE_SUCKER_PUNCH, 45
	learnset MOVE_FOUL_PLAY, 49
	learnset MOVE_CRUNCH, 53
	learnset MOVE_DOUBLE_EDGE, 57
	learnset MOVE_GUNK_SHOT, 61
    terminatelearnset


levelup SPECIES_BRONZOR
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_IMPRISON, 5
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_PSYWAVE, 13
	learnset MOVE_HYPNOSIS, 15
	learnset MOVE_EXTRASENSORY, 17
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_GYRO_BALL, 23
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_SAFEGUARD, 30
	learnset MOVE_HEX, 34
	learnset MOVE_FUTURE_SIGHT, 38
	learnset MOVE_PAYBACK, 42
	learnset MOVE_PSYSHIELD_BASH, 50
    terminatelearnset


levelup SPECIES_BRONZONG
	learnset MOVE_ALLY_SWITCH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_IMPRISON, 5
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_PSYWAVE, 13
	learnset MOVE_HYPNOSIS, 15
	learnset MOVE_EXTRASENSORY, 17
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_GYRO_BALL, 23
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_SAFEGUARD, 30
	learnset MOVE_HEX, 37
	learnset MOVE_FUTURE_SIGHT, 41
	learnset MOVE_PAYBACK, 45
	learnset MOVE_PSYSHIELD_BASH, 53
	learnset MOVE_HEAL_BELL, 57
	learnset MOVE_HEAVY_SLAM, 61
    terminatelearnset


levelup SPECIES_BONSLY
	learnset MOVE_COPYCAT, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_MIMIC, 7
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_HEADBUTT, 13
	learnset MOVE_SANDSTORM, 16
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_FOUL_PLAY, 22
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_STONE_EDGE, 28
	learnset MOVE_COUNTER, 31
	learnset MOVE_ROCK_SLIDE, 34
	learnset MOVE_STEALTH_ROCK, 38
	learnset MOVE_ROLE_PLAY, 42
	learnset MOVE_FAKE_TEARS, 46
	learnset MOVE_HEAD_SMASH, 50
	learnset MOVE_CURSE, 54
	learnset MOVE_DOUBLE_EDGE, 58
    terminatelearnset


levelup SPECIES_MIMEJR
	learnset MOVE_BARRIER, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_MEDITATE, 4
	learnset MOVE_MIMIC, 7
	learnset MOVE_DISARMING_VOICE, 10
	learnset MOVE_HYPNOSIS, 13
	learnset MOVE_TRICK, 16
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_HEALING_WISH, 25
	learnset MOVE_HEAL_PULSE, 28
	learnset MOVE_MAGICAL_LEAF, 31
	learnset MOVE_DAZZLING_GLEAM, 34
	learnset MOVE_FUTURE_SIGHT, 38
	learnset MOVE_ROLE_PLAY, 42
	learnset MOVE_QUICK_GUARD, 46
	learnset MOVE_WIDE_GUARD, 46
	learnset MOVE_PSYCHIC, 50
	learnset MOVE_CONFUSE_RAY, 54
	learnset MOVE_NASTY_PLOT, 58
    terminatelearnset


levelup SPECIES_HAPPINY
	learnset MOVE_METRONOME, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_POUND, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_SING, 6
	learnset MOVE_DOUBLE_SLAP, 8
	learnset MOVE_COVET, 10
	learnset MOVE_TAKE_DOWN, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_CAPTIVATE, 18
	learnset MOVE_PRESENT, 20
    terminatelearnset


levelup SPECIES_CHATOT
	learnset MOVE_GROWL, 1
	learnset MOVE_GUST, 1
	learnset MOVE_PECK, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_FURY_ATTACK, 4
	learnset MOVE_MIMIC, 7
	learnset MOVE_SING, 10
	learnset MOVE_MIRROR_MOVE, 13
	learnset MOVE_NIGHT_SHADE, 16
	learnset MOVE_SYNCHRONOISE, 19
	learnset MOVE_UPROAR, 22
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_OMINOUS_WIND, 28
	learnset MOVE_AGILITY, 32
	learnset MOVE_CHATTER, 36
	learnset MOVE_HYPER_VOICE, 40
	learnset MOVE_AIR_SLASH, 44
	learnset MOVE_TAILWIND, 48
	learnset MOVE_ROLE_PLAY, 52
	learnset MOVE_FEATHER_DANCE, 56
	learnset MOVE_NASTY_PLOT, 60
	learnset MOVE_SKY_ATTACK, 64
	learnset MOVE_BOOMBURST, 68
    terminatelearnset


levelup SPECIES_SPIRITOMB
	learnset MOVE_PURSUIT, 1
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_SHADOW_SNEAK, 1
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_DREAM_EATER, 13
	learnset MOVE_IMPRISON, 16
	learnset MOVE_OMINOUS_WIND, 19
	learnset MOVE_DISABLE, 22
	learnset MOVE_CURSE, 25
	learnset MOVE_HEX, 28
	learnset MOVE_ALLY_SWITCH, 31
	learnset MOVE_SUCKER_PUNCH, 34
	learnset MOVE_NASTY_PLOT, 37
	learnset MOVE_MEMENTO, 40
	learnset MOVE_PAIN_SPLIT, 43
	learnset MOVE_DESTINY_BOND, 46
	learnset MOVE_EXTRASENSORY, 50
	learnset MOVE_GRUDGE, 54
	learnset MOVE_NIGHTMARE, 58
	learnset MOVE_FOUL_PLAY, 62
    terminatelearnset


levelup SPECIES_GIBLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_MUD_SHOT, 10
	learnset MOVE_TAKE_DOWN, 13
	learnset MOVE_BREAKING_SWIPE, 16
	learnset MOVE_SCORCHING_SANDS, 19
	learnset MOVE_BULLDOZE, 22
	learnset MOVE_SLASH, 25
	learnset MOVE_SCARY_FACE, 28
	learnset MOVE_DUAL_CHOP, 31
	learnset MOVE_ROCK_SLIDE, 34
	learnset MOVE_SANDSTORM, 37
	learnset MOVE_DRAGON_RUSH, 40
	learnset MOVE_RAGING_FURY, 43
	learnset MOVE_STONE_EDGE, 46
	learnset MOVE_OUTRAGE, 50
    terminatelearnset


levelup SPECIES_GABITE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_MUD_SHOT, 10
	learnset MOVE_TAKE_DOWN, 13
	learnset MOVE_BREAKING_SWIPE, 16
	learnset MOVE_SCORCHING_SANDS, 19
	learnset MOVE_BULLDOZE, 22
	learnset MOVE_METAL_CLAW, 24
	learnset MOVE_SLASH, 27
	learnset MOVE_SCARY_FACE, 30
	learnset MOVE_DUAL_CHOP, 34
	learnset MOVE_ROCK_SLIDE, 38
	learnset MOVE_SANDSTORM, 42
	learnset MOVE_DRAGON_RUSH, 46
	learnset MOVE_RAGING_FURY, 50
	learnset MOVE_STONE_EDGE, 55
	learnset MOVE_OUTRAGE, 60
    terminatelearnset


levelup SPECIES_GARCHOMP
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_BODY_SLAM, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_MUD_SHOT, 10
	learnset MOVE_TAKE_DOWN, 13
	learnset MOVE_BREAKING_SWIPE, 16
	learnset MOVE_SCORCHING_SANDS, 19
	learnset MOVE_BULLDOZE, 22
	learnset MOVE_METAL_CLAW, 24
	learnset MOVE_SLASH, 27
	learnset MOVE_SCARY_FACE, 30
	learnset MOVE_DUAL_CHOP, 34
	learnset MOVE_ROCK_SLIDE, 38
	learnset MOVE_SANDSTORM, 42
	learnset MOVE_DRAGON_RUSH, 46
	learnset MOVE_CRUNCH, 48
	learnset MOVE_RAGING_FURY, 52
	learnset MOVE_STONE_EDGE, 58
	learnset MOVE_OUTRAGE, 62
	learnset MOVE_EXTREME_SPEED, 67
	learnset MOVE_SPIKES, 72
    terminatelearnset


levelup SPECIES_MUNCHLAX
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_METRONOME, 4
	learnset MOVE_PURSUIT, 7
	learnset MOVE_RECYCLE, 10
	learnset MOVE_CURSE, 14
	learnset MOVE_CHIP_AWAY, 18
	learnset MOVE_WHIRLWIND, 22
	learnset MOVE_GASTRO_ACID, 26
	learnset MOVE_BODY_SLAM, 30
	learnset MOVE_ROLLOUT, 33
	learnset MOVE_AMNESIA, 36
	learnset MOVE_ZEN_HEADBUTT, 42
	learnset MOVE_CRUNCH, 46
	learnset MOVE_BELLY_DRUM, 50
	learnset MOVE_HEAVY_SLAM, 54
    terminatelearnset


levelup SPECIES_RIOLU
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_MIND_READER, 1
	learnset MOVE_BITE, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_COUNTER, 4
	learnset MOVE_FOLLOW_ME, 7
	learnset MOVE_VACUUM_WAVE, 10
	learnset MOVE_HOWL, 12
	learnset MOVE_METAL_CLAW, 14
	learnset MOVE_FORCE_PALM, 16
	learnset MOVE_BITE, 18
	learnset MOVE_REVERSAL, 20
	learnset MOVE_SCREECH, 22
	learnset MOVE_CRUNCH, 24
	learnset MOVE_AURA_SPHERE, 26
	learnset MOVE_FLING, 28
	learnset MOVE_AGILITY, 30
	learnset MOVE_CROSS_CHOP, 33
	learnset MOVE_HELPING_HAND, 36
	learnset MOVE_ENDURE, 39
	learnset MOVE_FINAL_GAMBIT, 42
    terminatelearnset


levelup SPECIES_LUCARIO
	learnset MOVE_AURA_SPHERE, 1
	learnset MOVE_CROSS_CHOP, 1
	learnset MOVE_FINAL_GAMBIT, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_ROLE_PLAY, 4
	learnset MOVE_FOLLOW_ME, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_QUICK_GUARD, 14
	learnset MOVE_AGILITY, 18
	learnset MOVE_CRUNCH, 22
	learnset MOVE_METAL_CLAW, 26
	learnset MOVE_BONE_RUSH, 27
	learnset MOVE_DUAL_CHOP, 29
	learnset MOVE_ZEN_HEADBUTT, 32
	learnset MOVE_SKY_UPPERCUT, 35
	learnset MOVE_HELPING_HAND, 38
	learnset MOVE_BULLET_PUNCH, 42
	learnset MOVE_DRAGON_PULSE, 46
	learnset MOVE_BLAZE_KICK, 50
	learnset MOVE_HEAL_PULSE, 54
	learnset MOVE_METEOR_MASH, 58
	learnset MOVE_CLOSE_COMBAT, 62
	learnset MOVE_NASTY_PLOT, 66
	learnset MOVE_EXTREME_SPEED, 70
	learnset MOVE_HIGH_JUMP_KICK, 74
    terminatelearnset


levelup SPECIES_HIPPOPOTAS
	learnset MOVE_TACKLE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 7
	learnset MOVE_YAWN, 11
	learnset MOVE_BULLDOZE, 15
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_DIG, 23
	learnset MOVE_CRUNCH, 27
	learnset MOVE_BODY_SLAM, 31
	learnset MOVE_SCORCHING_SANDS, 34
	learnset MOVE_STOCKPILE, 37
	learnset MOVE_SWALLOW, 37
	learnset MOVE_SPIT_UP, 37
	learnset MOVE_DOUBLE_EDGE, 40
	learnset MOVE_WHIRLWIND, 43
	learnset MOVE_REVENGE, 46
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_SLACK_OFF, 52
	learnset MOVE_FISSURE, 55
    terminatelearnset


levelup SPECIES_HIPPOWDON
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 7
	learnset MOVE_YAWN, 11
	learnset MOVE_BULLDOZE, 15
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_DIG, 23
	learnset MOVE_CRUNCH, 27
	learnset MOVE_BODY_SLAM, 31
	learnset MOVE_SCORCHING_SANDS, 34
	learnset MOVE_CURSE, 34
	learnset MOVE_STOCKPILE, 38
	learnset MOVE_SWALLOW, 38
	learnset MOVE_SPIT_UP, 38
	learnset MOVE_DOUBLE_EDGE, 42
	learnset MOVE_WHIRLWIND, 46
	learnset MOVE_REVENGE, 50
	learnset MOVE_HIGH_HORSEPOWER, 54
	learnset MOVE_SLACK_OFF, 58
	learnset MOVE_FISSURE, 62
    terminatelearnset


levelup SPECIES_SKORUPI
	learnset MOVE_BITE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_LEER, 1
	learnset MOVE_KNOCK_OFF, 6
	learnset MOVE_PIN_MISSILE, 9
	learnset MOVE_ACUPRESSURE, 12
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_POISON_FANG, 18
	learnset MOVE_PURSUIT, 21
	learnset MOVE_TOXIC_SPIKES, 24
	learnset MOVE_TWINEEDLE, 27
	learnset MOVE_FOCUS_ENERGY, 30
	learnset MOVE_POISON_TAIL, 33
	learnset MOVE_SCARY_FACE, 36
	learnset MOVE_CRUNCH, 40
	learnset MOVE_NIGHT_SLASH, 44
	learnset MOVE_CROSS_POISON, 48
    terminatelearnset


levelup SPECIES_DRAPION
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_AGILITY, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_KNOCK_OFF, 6
	learnset MOVE_PIN_MISSILE, 9
	learnset MOVE_ACUPRESSURE, 12
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_POISON_FANG, 18
	learnset MOVE_PURSUIT, 21
	learnset MOVE_TOXIC_SPIKES, 24
	learnset MOVE_TWINEEDLE, 27
	learnset MOVE_FOCUS_ENERGY, 31
	learnset MOVE_POISON_TAIL, 35
	learnset MOVE_CRUNCH, 39
	learnset MOVE_STORM_THROW, 43
	learnset MOVE_NIGHT_SLASH, 47
	learnset MOVE_CROSS_POISON, 51
	learnset MOVE_LEECH_LIFE, 55
	learnset MOVE_FOUL_PLAY, 59
    terminatelearnset


levelup SPECIES_CROAGUNK
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_FAKE_OUT, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_REVENGE, 16
	learnset MOVE_BULLET_PUNCH, 19
	learnset MOVE_FEINT_ATTACK, 22
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_HELPING_HAND, 28
	learnset MOVE_COUNTER, 31
	learnset MOVE_PAYBACK, 34
	learnset MOVE_VACUUM_WAVE, 38
	learnset MOVE_NASTY_PLOT, 42
	learnset MOVE_DRAIN_PUNCH, 46
	learnset MOVE_CROSS_POISON, 50
	learnset MOVE_ACUPRESSURE, 54
	learnset MOVE_CLOSE_COMBAT, 58
    terminatelearnset


levelup SPECIES_TOXICROAK
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_HEADBUTT, 7
	learnset MOVE_FAKE_OUT, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_REVENGE, 16
	learnset MOVE_BULLET_PUNCH, 19
	learnset MOVE_FEINT_ATTACK, 22
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_HELPING_HAND, 28
	learnset MOVE_COUNTER, 31
	learnset MOVE_CROSS_CHOP, 33
	learnset MOVE_PAYBACK, 37
	learnset MOVE_VACUUM_WAVE, 41
	learnset MOVE_NASTY_PLOT, 45
	learnset MOVE_DRAIN_PUNCH, 49
	learnset MOVE_CROSS_POISON, 53
	learnset MOVE_ACUPRESSURE, 57
	learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_CARNIVINE
	learnset MOVE_BIND, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_BITE, 1
	learnset MOVE_VINE_WHIP, 6
	learnset MOVE_BUG_BITE, 9
	learnset MOVE_RAZOR_LEAF, 14
	learnset MOVE_INGRAIN, 18
	learnset MOVE_FEINT_ATTACK, 21
	learnset MOVE_SLEEP_POWDER, 24
	learnset MOVE_STUN_SPORE, 24
	learnset MOVE_POISON_FANG, 27
	learnset MOVE_SEED_BOMB, 30
	learnset MOVE_STOCKPILE, 33
	learnset MOVE_SPIT_UP, 33
	learnset MOVE_SWALLOW, 33
	learnset MOVE_CRUNCH, 36
	learnset MOVE_ENERGY_BALL, 39
	learnset MOVE_WRING_OUT, 42
	learnset MOVE_LEAF_TORNADO, 45
	learnset MOVE_LEECH_LIFE, 49
	learnset MOVE_POWER_WHIP, 54
    terminatelearnset


levelup SPECIES_FINNEON
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ATTRACT, 8
	learnset MOVE_GUST, 10
	learnset MOVE_WATER_PULSE, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_WHIRLPOOL, 16
	learnset MOVE_ROOST, 18
	learnset MOVE_BRINE, 20
	learnset MOVE_CAPTIVATE, 21
	learnset MOVE_ICY_WIND, 24
	learnset MOVE_AURORA_BEAM, 27
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_SILVER_WIND, 33
	learnset MOVE_AQUA_RING, 36
	learnset MOVE_TAILWIND, 39
	learnset MOVE_U_TURN, 42
	learnset MOVE_BOUNCE, 46
	learnset MOVE_SOAK, 50
    terminatelearnset


levelup SPECIES_LUMINEON
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ATTRACT, 8
	learnset MOVE_GUST, 10
	learnset MOVE_WATER_PULSE, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_WHIRLPOOL, 16
	learnset MOVE_ROOST, 18
	learnset MOVE_BRINE, 20
	learnset MOVE_CAPTIVATE, 21
	learnset MOVE_ICY_WIND, 24
	learnset MOVE_AURORA_BEAM, 27
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_AGILITY, 31
	learnset MOVE_SILVER_WIND, 34
	learnset MOVE_AQUA_RING, 39
	learnset MOVE_TAILWIND, 43
	learnset MOVE_U_TURN, 47
	learnset MOVE_BOUNCE, 51
	learnset MOVE_SOAK, 55
	learnset MOVE_QUIVER_DANCE, 59
	learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_MANTYKE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_AIR_CUTTER, 22
	learnset MOVE_TWISTER, 25
	learnset MOVE_AGILITY, 28
	learnset MOVE_BULLET_SEED, 31
	learnset MOVE_AQUA_RING, 34
	learnset MOVE_MIRROR_COAT, 37
	learnset MOVE_BOUNCE, 40
	learnset MOVE_TAILWIND, 43
	learnset MOVE_TAKE_DOWN, 46
	learnset MOVE_AIR_SLASH, 49
	learnset MOVE_HAZE, 53
	learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_SNOVER
	learnset MOVE_LEER, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_MIST, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_GROWTH, 4
	learnset MOVE_RAZOR_LEAF, 8
	learnset MOVE_SYNTHESIS, 12
	learnset MOVE_STOMP, 16
	learnset MOVE_BULLET_SEED, 20
	learnset MOVE_MAGICAL_LEAF, 24
	learnset MOVE_WATER_PULSE, 28
	learnset MOVE_ICE_SHARD, 32
	learnset MOVE_INGRAIN, 35
	learnset MOVE_GRASS_WHISTLE, 38
	learnset MOVE_AVALANCHE, 41
	learnset MOVE_SKULL_BASH, 44
	learnset MOVE_WOOD_HAMMER, 47
	learnset MOVE_ICICLE_CRASH, 50
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_BLIZZARD, 56
	learnset MOVE_SHEER_COLD, 59
    terminatelearnset


levelup SPECIES_ABOMASNOW
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_LEER, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_MIST, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_GROWTH, 4
	learnset MOVE_RAZOR_LEAF, 8
	learnset MOVE_SYNTHESIS, 12
	learnset MOVE_STOMP, 16
	learnset MOVE_BULLET_SEED, 20
	learnset MOVE_MAGICAL_LEAF, 24
	learnset MOVE_WATER_PULSE, 28
	learnset MOVE_ICE_SHARD, 32
	learnset MOVE_INGRAIN, 35
	learnset MOVE_GRASS_WHISTLE, 38
	learnset MOVE_NATURAL_GIFT, 40
	learnset MOVE_AVALANCHE, 43
	learnset MOVE_SKULL_BASH, 47
	learnset MOVE_WOOD_HAMMER, 51
	learnset MOVE_ICICLE_CRASH, 55
	learnset MOVE_DOUBLE_EDGE, 59
	learnset MOVE_BLIZZARD, 63
	learnset MOVE_SHEER_COLD, 67
    terminatelearnset


levelup SPECIES_WEAVILE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FLING, 1
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_SPITE, 10
	learnset MOVE_FEINT_ATTACK, 13
	learnset MOVE_FURY_SWIPES, 16
	learnset MOVE_COUNTER, 19
	learnset MOVE_METAL_CLAW, 22
	learnset MOVE_AGILITY, 25
	learnset MOVE_PURSUIT, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_NIGHT_SLASH, 32
	learnset MOVE_REVENGE, 36
	learnset MOVE_ASSURANCE, 39
	learnset MOVE_SNATCH, 43
	learnset MOVE_DOUBLE_HIT, 47
	learnset MOVE_SCREECH, 52
	learnset MOVE_FOCUS_PUNCH, 56
	learnset MOVE_FAKE_OUT, 60
	learnset MOVE_ICICLE_CRASH, 64
	learnset MOVE_ICE_SHARD, 68
	learnset MOVE_TRIPLE_AXEL, 76
    terminatelearnset


levelup SPECIES_MAGNEZONE
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_BARRIER, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_SONIC_BOOM, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_MAGNET_BOMB, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_MIRROR_SHOT, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_TRI_ATTACK, 30
	learnset MOVE_LOCK_ON, 32
	learnset MOVE_SIGNAL_BEAM, 36
	learnset MOVE_GYRO_BALL, 40
	learnset MOVE_MAGIC_COAT, 44
	learnset MOVE_RECYCLE, 48
	learnset MOVE_EXPLOSION, 53
	learnset MOVE_DISCHARGE, 57
	learnset MOVE_GRAVITY, 61
	learnset MOVE_ZAP_CANNON, 66
    terminatelearnset


levelup SPECIES_LICKILICKY
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_AMNESIA, 4
	learnset MOVE_REFRESH, 7
	learnset MOVE_SCREECH, 10
	learnset MOVE_ME_FIRST, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_STOMP, 19
	learnset MOVE_HELPING_HAND, 22
	learnset MOVE_DISABLE, 25
	learnset MOVE_SCREECH, 28
	learnset MOVE_CHIP_AWAY, 31
	learnset MOVE_MUDDY_WATER, 34
	learnset MOVE_ZEN_HEADBUTT, 37
	learnset MOVE_ROLLOUT, 40
	learnset MOVE_MAGNITUDE, 43
	learnset MOVE_BODY_SLAM, 46
	learnset MOVE_HAMMER_ARM, 50
	learnset MOVE_POWER_WHIP, 54
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_BELLY_DRUM, 62
	learnset MOVE_WRING_OUT, 66
    terminatelearnset


levelup SPECIES_RHYPERIOR
	learnset MOVE_AVALANCHE, 1
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_HEAT_CRASH, 1
	learnset MOVE_HYDRO_PUMP, 1
	learnset MOVE_STOMP, 7
	learnset MOVE_HORN_ATTACK, 10
	learnset MOVE_BULLDOZE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_CHIP_AWAY, 22
	learnset MOVE_REVERSAL, 25
	learnset MOVE_CRUSH_CLAW, 28
	learnset MOVE_FIRE_FANG, 31
	learnset MOVE_ICE_FANG, 31
	learnset MOVE_THUNDER_FANG, 31
	learnset MOVE_CRUNCH, 34
	learnset MOVE_HAMMER_ARM, 36
	learnset MOVE_TAKE_DOWN, 39
	learnset MOVE_HIGH_HORSEPOWER, 43
	learnset MOVE_DRAGON_RUSH, 47
	learnset MOVE_MEGAHORN, 51
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_HEAVY_SLAM, 59
	learnset MOVE_ROCK_WRECKER, 63
    terminatelearnset


levelup SPECIES_TANGROWTH
	learnset MOVE_GROWTH, 1
	learnset MOVE_BIND, 1
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_TICKLE, 4
	learnset MOVE_VINE_WHIP, 7
	learnset MOVE_CONFUSION, 10
	learnset MOVE_POISON_POWDER, 13
	learnset MOVE_STUN_SPORE, 13
	learnset MOVE_SLEEP_POWDER, 13
	learnset MOVE_LEAF_TORNADO, 16
	learnset MOVE_AMNESIA, 19
	learnset MOVE_PAYBACK, 22
	learnset MOVE_PAIN_SPLIT, 25
	learnset MOVE_BULLET_SEED, 28
	learnset MOVE_SYNTHESIS, 31
	learnset MOVE_WAKE_UP_SLAP, 34
	learnset MOVE_INGRAIN, 37
	learnset MOVE_RAGE_POWDER, 40
	learnset MOVE_WRING_OUT, 43
	learnset MOVE_ANCIENT_POWER, 50
	learnset MOVE_NATURE_POWER, 54
	learnset MOVE_LEECH_SEED, 58
	learnset MOVE_LEAF_STORM, 62
	learnset MOVE_POWER_WHIP, 66
    terminatelearnset


levelup SPECIES_ELECTIVIRE
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_SWIFT, 5
	learnset MOVE_SPARK, 8
	learnset MOVE_UPROAR, 10
	learnset MOVE_SCREECH, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_ELECTRO_BALL, 18
	learnset MOVE_BRICK_BREAK, 21
	learnset MOVE_HELPING_HAND, 24
	learnset MOVE_DUAL_CHOP, 27
	learnset MOVE_THUNDER_PUNCH, 32
	learnset MOVE_DYNAMIC_PUNCH, 35
	learnset MOVE_PSYCHIC, 39
	learnset MOVE_HAMMER_ARM, 43
	learnset MOVE_FOCUS_PUNCH, 47
	learnset MOVE_FEINT, 51
	learnset MOVE_CROSS_CHOP, 55
	learnset MOVE_DISCHARGE, 59
	learnset MOVE_GIGA_IMPACT, 63
	learnset MOVE_CLOSE_COMBAT, 67
	learnset MOVE_VOLT_TACKLE, 71
    terminatelearnset


levelup SPECIES_MAGMORTAR
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_CLEAR_SMOG, 5
	learnset MOVE_FIRE_SPIN, 8
	learnset MOVE_FEINT_ATTACK, 10
	learnset MOVE_MACH_PUNCH, 12
	learnset MOVE_FLAME_WHEEL, 14
	learnset MOVE_CONFUSE_RAY, 16
	learnset MOVE_FLAME_BURST, 18
	learnset MOVE_SCREECH, 21
	learnset MOVE_FIRE_PUNCH, 24
	learnset MOVE_WILL_O_WISP, 27
	learnset MOVE_LAVA_PLUME, 32
	learnset MOVE_CROSS_CHOP, 35
	learnset MOVE_BELLY_DRUM, 39
	learnset MOVE_SLUDGE_BOMB, 43
	learnset MOVE_SCORCHING_SANDS, 47
	learnset MOVE_FLARE_BLITZ, 51
	learnset MOVE_DYNAMIC_PUNCH, 55
	learnset MOVE_SOLAR_BEAM, 59
	learnset MOVE_GIGA_IMPACT, 63
	learnset MOVE_MOONBLAST, 67
	learnset MOVE_MAGMA_STORM, 71
    terminatelearnset


levelup SPECIES_TOGEKISS
	learnset MOVE_EXTREME_SPEED, 1
	learnset MOVE_FUTURE_SIGHT, 1
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_SMART_STRIKE, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_WISH, 40
	learnset MOVE_SKY_ATTACK, 45
	learnset MOVE_EXTRASENSORY, 55
	learnset MOVE_AIR_SLASH, 60
	learnset MOVE_MOONBLAST, 65
	learnset MOVE_NASTY_PLOT, 70
    terminatelearnset


levelup SPECIES_YANMEGA
	learnset MOVE_NIGHT_SLASH, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_SILVER_WIND, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_SONIC_BOOM, 16
	learnset MOVE_DETECT, 19
	learnset MOVE_STRUGGLE_BUG, 22
	learnset MOVE_OMINOUS_WIND, 25
	learnset MOVE_WING_ATTACK, 28
	learnset MOVE_AIR_CUTTER, 31
	learnset MOVE_ANCIENT_POWER, 34
	learnset MOVE_WHIRLWIND, 38
	learnset MOVE_LEECH_LIFE, 42
	learnset MOVE_REVERSAL, 46
	learnset MOVE_HYPNOSIS, 50
	learnset MOVE_BUG_BUZZ, 54
	learnset MOVE_AIR_SLASH, 58
    terminatelearnset


levelup SPECIES_LEAFEON
	learnset MOVE_WOOD_HAMMER, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_RAZOR_LEAF, 24
	learnset MOVE_AERIAL_ACE, 28
	learnset MOVE_FOCUS_ENERGY, 32
	learnset MOVE_NIGHT_SLASH, 36
	learnset MOVE_PSYCHO_CUT, 40
	learnset MOVE_LEAF_BLADE, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_POWER_WHIP, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_GLACEON
	learnset MOVE_EARTH_POWER, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SING, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_EXTRASENSORY, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_CAPTIVATE, 5
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_BITE, 13
	learnset MOVE_SWIFT, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_COVET, 22
	learnset MOVE_POWDER_SNOW, 24
	learnset MOVE_WATER_PULSE, 28
	learnset MOVE_HAZE, 32
	learnset MOVE_AURORA_BEAM, 36
	learnset MOVE_MIRROR_COAT, 40
	learnset MOVE_ICE_SHARD, 45
	learnset MOVE_SYNCHRONOISE, 50
	learnset MOVE_WISH, 55
	learnset MOVE_GLACIATE, 60
	learnset MOVE_LAST_RESORT, 65
    terminatelearnset


levelup SPECIES_GLISCOR
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_FEINT, 4
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_MUD_BOMB, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_METAL_CLAW, 19
	learnset MOVE_AGILITY, 22
	learnset MOVE_COUNTER, 25
	learnset MOVE_SCREECH, 28
	learnset MOVE_WING_ATTACK, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_POISON_TAIL, 37
	learnset MOVE_ACROBATICS, 40
	learnset MOVE_PIN_MISSILE, 44
	learnset MOVE_SKY_UPPERCUT, 48
	learnset MOVE_DOUBLE_EDGE, 52
	learnset MOVE_CROSS_POISON, 56
	learnset MOVE_TAILWIND, 60
	learnset MOVE_GUILLOTINE, 64
    terminatelearnset


levelup SPECIES_MAMOSWINE
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_PECK, 4
	learnset MOVE_BITE, 6
	learnset MOVE_POWDER_SNOW, 8
	learnset MOVE_FLAIL, 10
	learnset MOVE_MUD_BOMB, 12
	learnset MOVE_ICE_SHARD, 14
	learnset MOVE_CURSE, 16
	learnset MOVE_BULLDOZE, 18
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_ICICLE_SPEAR, 24
	learnset MOVE_ENDEAVOR, 27
	learnset MOVE_BODY_SLAM, 30
	learnset MOVE_AMNESIA, 33
	learnset MOVE_DOUBLE_HIT, 33
	learnset MOVE_AVALANCHE, 37
	learnset MOVE_ROAR, 41
	learnset MOVE_TAKE_DOWN, 45
	learnset MOVE_EARTHQUAKE, 49
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_ICICLE_CRASH, 57
	learnset MOVE_HIGH_HORSEPOWER, 61
	learnset MOVE_HEADLONG_RUSH, 65
    terminatelearnset


levelup SPECIES_PORYGON_Z
	learnset MOVE_LAST_RESORT, 1
	learnset MOVE_CONVERSION, 1
	learnset MOVE_CONVERSION_2, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_SIGNAL_BEAM, 16
	learnset MOVE_CHARGE_BEAM, 19
	learnset MOVE_WONDER_ROOM, 22
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_RECYCLE, 28
	learnset MOVE_TRI_ATTACK, 31
	learnset MOVE_TRICK, 34
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_AGILITY, 40
	learnset MOVE_MAGNET_RISE, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_LOCK_ON, 52
	learnset MOVE_FOUL_PLAY, 56
	learnset MOVE_NASTY_PLOT, 60
	learnset MOVE_ZAP_CANNON, 64
	learnset MOVE_HYPER_BEAM, 68
    terminatelearnset


levelup SPECIES_GALLADE
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_TRIPLE_AXEL, 1
	learnset MOVE_NIGHT_SLASH, 1
	learnset MOVE_LEAF_BLADE, 1
	learnset MOVE_DISARMING_VOICE, 6
	learnset MOVE_CAPTIVATE, 8
	learnset MOVE_LUCKY_CHANT, 10
	learnset MOVE_PSYBEAM, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_MAGICAL_LEAF, 19
	learnset MOVE_HEAL_PULSE, 20
	learnset MOVE_HYPNOSIS, 23
	learnset MOVE_DREAM_EATER, 26
	learnset MOVE_ALLY_SWITCH, 29
	learnset MOVE_SHADOW_SNEAK, 30
	learnset MOVE_DISABLE, 34
	learnset MOVE_SACRED_SWORD, 38
	learnset MOVE_SLASH, 42
	learnset MOVE_PSYCHO_CUT, 46
	learnset MOVE_RECOVER, 50
	learnset MOVE_QUICK_GUARD, 55
	learnset MOVE_WIDE_GUARD, 55
	learnset MOVE_LUNGE, 60
	learnset MOVE_CLOSE_COMBAT, 65
    terminatelearnset


levelup SPECIES_PROBOPASS
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_EXPLOSION, 4
	learnset MOVE_MAGNITUDE, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_SPARK, 13
	learnset MOVE_ROCK_BLAST, 16
	learnset MOVE_IRON_DEFENSE, 19
	learnset MOVE_THUNDER_WAVE, 22
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_CHARGE_BEAM, 28
	learnset MOVE_SANDSTORM, 31
	learnset MOVE_PAIN_SPLIT, 34
	learnset MOVE_MAGNET_RISE, 38
	learnset MOVE_GRAVITY, 42
	learnset MOVE_DISCHARGE, 46
	learnset MOVE_WIDE_GUARD, 50
	learnset MOVE_LOCK_ON, 54
	learnset MOVE_ZAP_CANNON, 58
	learnset MOVE_HEAD_SMASH, 62
    terminatelearnset


levelup SPECIES_DUSKNOIR
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_DRAIN_PUNCH, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_DISABLE, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_NIGHT_SHADE, 13
	learnset MOVE_HAZE, 16
	learnset MOVE_MEAN_LOOK, 19
	learnset MOVE_IMPRISON, 22
	learnset MOVE_WILL_O_WISP, 25
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_OMINOUS_WIND, 31
	learnset MOVE_SHADOW_SNEAK, 34
	learnset MOVE_FEINT_ATTACK, 37
	learnset MOVE_SHADOW_PUNCH, 37
	learnset MOVE_SKILL_SWAP, 41
	learnset MOVE_HEX, 45
	learnset MOVE_LEECH_LIFE, 49
	learnset MOVE_FUTURE_SIGHT, 53
	learnset MOVE_SUCKER_PUNCH, 57
	learnset MOVE_MEMENTO, 61
	learnset MOVE_GRUDGE, 65
	learnset MOVE_SHADOW_FORCE, 69
    terminatelearnset


levelup SPECIES_FROSLASS
	learnset MOVE_DESTINY_BOND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SPITE, 6
	learnset MOVE_ICE_SHARD, 9
	learnset MOVE_SPIKES, 12
	learnset MOVE_BITE, 15
	learnset MOVE_DISABLE, 18
	learnset MOVE_DRAINING_KISS, 21
	learnset MOVE_WILL_O_WISP, 24
	learnset MOVE_AVALANCHE, 27
	learnset MOVE_CAPTIVATE, 30
	learnset MOVE_OMINOUS_WIND, 33
	learnset MOVE_FAKE_TEARS, 36
	learnset MOVE_HEX, 40
	learnset MOVE_HAIL, 44
	learnset MOVE_SWITCHEROO, 48
	learnset MOVE_CONFUSE_RAY, 52
	learnset MOVE_SHADOW_BALL, 56
	learnset MOVE_BLIZZARD, 60
    terminatelearnset


levelup SPECIES_ROTOM
	learnset MOVE_TRICK, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_THUNDER_WAVE, 1
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_SHOCK_WAVE, 10
	learnset MOVE_DOUBLE_TEAM, 13
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_UPROAR, 19
	learnset MOVE_SUBSTITUTE, 22
	learnset MOVE_CHARGE_BEAM, 25
	learnset MOVE_WILL_O_WISP, 28
	learnset MOVE_ELECTRO_BALL, 31
	learnset MOVE_HEX, 34
	learnset MOVE_CHARGE, 37
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_DARK_PULSE, 43
	learnset MOVE_PAIN_SPLIT, 46
	learnset MOVE_SHADOW_BALL, 50
	learnset MOVE_THUNDERBOLT, 55
	learnset MOVE_STORED_POWER, 60
    terminatelearnset


levelup SPECIES_UXIE
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_MEMENTO, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_IMPRISON, 6
	learnset MOVE_ENDURE, 10
	learnset MOVE_SWIFT, 14
	learnset MOVE_YAWN, 18
	learnset MOVE_FUTURE_SIGHT, 22
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_NATURAL_GIFT, 30
	learnset MOVE_FLAIL, 34
	learnset MOVE_EXTRASENSORY, 38
	learnset MOVE_AMNESIA, 42
	learnset MOVE_HYPNOSIS, 46
	learnset MOVE_PSYCHIC, 50
    terminatelearnset


levelup SPECIES_MESPRIT
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_IMPRISON, 6
	learnset MOVE_PROTECT, 10
	learnset MOVE_SWIFT, 14
	learnset MOVE_LUCKY_CHANT, 18
	learnset MOVE_FUTURE_SIGHT, 22
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_NATURAL_GIFT, 30
	learnset MOVE_COPYCAT, 34
	learnset MOVE_EXTRASENSORY, 38
	learnset MOVE_CHARM, 42
	learnset MOVE_RECOVER, 46
	learnset MOVE_PSYCHIC, 50
    terminatelearnset


levelup SPECIES_AZELF
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_EXPLOSION, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_IMPRISON, 6
	learnset MOVE_DETECT, 10
	learnset MOVE_SWIFT, 14
	learnset MOVE_UPROAR, 18
	learnset MOVE_FUTURE_SIGHT, 22
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_NATURAL_GIFT, 30
	learnset MOVE_LAST_RESORT, 34
	learnset MOVE_EXTRASENSORY, 38
	learnset MOVE_NASTY_PLOT, 42
	learnset MOVE_DOUBLE_HIT, 46
	learnset MOVE_ESPER_WING, 50
    terminatelearnset


levelup SPECIES_DIALGA
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_METAL_CLAW, 6
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_SLASH, 14
	learnset MOVE_POWER_GEM, 18
	learnset MOVE_METAL_BURST, 22
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_DRAGON_PULSE, 30
	learnset MOVE_IRON_TAIL, 34
	learnset MOVE_AURA_SPHERE, 38
	learnset MOVE_EARTH_POWER, 42
	learnset MOVE_FLASH_CANNON, 46
	learnset MOVE_ROAR_OF_TIME, 50
    terminatelearnset


levelup SPECIES_PALKIA
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_WATER_PULSE, 6
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_SLASH, 14
	learnset MOVE_POWER_GEM, 18
	learnset MOVE_AQUA_RING, 22
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_DRAGON_PULSE, 30
	learnset MOVE_AQUA_TAIL, 34
	learnset MOVE_AURA_SPHERE, 38
	learnset MOVE_EARTH_POWER, 42
	learnset MOVE_HYDRO_PUMP, 46
	learnset MOVE_SPACIAL_REND, 50
    terminatelearnset


levelup SPECIES_HEATRAN
	learnset MOVE_ERUPTION, 1
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_LEER, 6
	learnset MOVE_FIRE_FANG, 10
	learnset MOVE_CRUNCH, 16
	learnset MOVE_SCARY_FACE, 22
	learnset MOVE_LAVA_PLUME, 26
	learnset MOVE_FIRE_SPIN, 30
	learnset MOVE_IRON_HEAD, 34
	learnset MOVE_SCORCHING_SANDS, 38
	learnset MOVE_HEAT_WAVE, 42
	learnset MOVE_STONE_EDGE, 46
	learnset MOVE_MAGMA_STORM, 50
    terminatelearnset


levelup SPECIES_REGIGIGAS
	learnset MOVE_CRUSH_CLAW, 1
	learnset MOVE_HEAVY_SLAM, 1
	learnset MOVE_DIZZY_PUNCH, 1
	learnset MOVE_KNOCK_OFF, 6
	learnset MOVE_CONFUSE_RAY, 10
	learnset MOVE_FORESIGHT, 14
	learnset MOVE_DRAIN_PUNCH, 18
	learnset MOVE_REVENGE, 22
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_HEADLONG_RUSH, 30
	learnset MOVE_NATURE_POWER, 38
	learnset MOVE_CRUSH_GRIP, 42
	learnset MOVE_SUPERPOWER, 46
	learnset MOVE_GIGA_IMPACT, 50
    terminatelearnset


levelup SPECIES_GIRATINA
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_OMINOUS_WIND, 6
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_SLASH, 14
	learnset MOVE_SHADOW_SNEAK, 18
	learnset MOVE_DESTINY_BOND, 22
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_HEX, 30
	learnset MOVE_SHADOW_CLAW, 34
	learnset MOVE_AURA_SPHERE, 38
	learnset MOVE_EARTH_POWER, 42
	learnset MOVE_DRAGON_PULSE, 46
	learnset MOVE_SHADOW_FORCE, 50
    terminatelearnset


levelup SPECIES_CRESSELIA
	learnset MOVE_CONFUSION, 1
	learnset MOVE_RECOVER, 1
	learnset MOVE_SAFEGUARD, 6
	learnset MOVE_MIST, 10
	learnset MOVE_AURORA_BEAM, 14
	learnset MOVE_FUTURE_SIGHT, 18
	learnset MOVE_SLASH, 22
	learnset MOVE_REFLECT, 26
	learnset MOVE_LIGHT_SCREEN, 26
	learnset MOVE_PSYCHO_SHIFT, 30
	learnset MOVE_PSYCHO_CUT, 34
	learnset MOVE_MOONLIGHT, 38
	learnset MOVE_PSYSHIELD_BASH, 42
	learnset MOVE_ESPER_WING, 46
	learnset MOVE_MOONBLAST, 50
    terminatelearnset


levelup SPECIES_PHIONE
	learnset MOVE_WATER_PULSE, 1
	learnset MOVE_CHARM, 6
	learnset MOVE_SUPERSONIC, 10
	learnset MOVE_BUBBLE_BEAM, 14
	learnset MOVE_ACID_ARMOR, 18
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_WHIRLPOOL, 26
	learnset MOVE_UPROAR, 30
	learnset MOVE_AQUA_RING, 34
	learnset MOVE_SIGNAL_BEAM, 38
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_RAIN_DANCE, 46
	learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_MANAPHY
	learnset MOVE_ACID_ARMOR, 1
	learnset MOVE_HEART_SWAP, 1
	learnset MOVE_TAIL_GLOW, 1
	learnset MOVE_CHARM, 6
	learnset MOVE_SUPERSONIC, 10
	learnset MOVE_BUBBLE_BEAM, 14
	learnset MOVE_ACID_ARMOR, 18
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_WHIRLPOOL, 26
	learnset MOVE_UPROAR, 30
	learnset MOVE_AQUA_RING, 34
	learnset MOVE_SIGNAL_BEAM, 38
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_RAIN_DANCE, 46
	learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_DARKRAI
	learnset MOVE_ROAR_OF_TIME, 1
	learnset MOVE_SPACIAL_REND, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_KNOCK_OFF, 1
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_FEINT_ATTACK, 14
	learnset MOVE_NIGHTMARE, 18
	learnset MOVE_DOUBLE_TEAM, 22
	learnset MOVE_HAZE, 26
	learnset MOVE_NIGHT_SHADE, 30
	learnset MOVE_SUCKER_PUNCH, 34
	learnset MOVE_DARK_VOID, 38
	learnset MOVE_NASTY_PLOT, 42
	learnset MOVE_DREAM_EATER, 46
	learnset MOVE_DARK_PULSE, 50
    terminatelearnset


levelup SPECIES_SHAYMIN
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_MAGICAL_LEAF, 6
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_SYNTHESIS, 14
	learnset MOVE_ZEN_HEADBUTT, 18
	learnset MOVE_NATURAL_GIFT, 22
	learnset MOVE_RECOVER, 26
	learnset MOVE_AROMATHERAPY, 30
	learnset MOVE_SLEEP_POWDER, 34
	learnset MOVE_EARTH_POWER, 38
	learnset MOVE_DRAINING_KISS, 42
	learnset MOVE_LEAF_STORM, 46
	learnset MOVE_SEED_FLARE, 50
    terminatelearnset


levelup SPECIES_ARCEUS
	learnset MOVE_ROAR_OF_TIME, 1
	learnset MOVE_SPACIAL_REND, 1
	learnset MOVE_SHADOW_FORCE, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_NATURAL_GIFT, 1
	learnset MOVE_GRAVITY, 6
	learnset MOVE_RAGING_FURY, 10
	learnset MOVE_HYPER_VOICE, 14
	learnset MOVE_EXTREME_SPEED, 18
	learnset MOVE_REFRESH, 22
	learnset MOVE_FUTURE_SIGHT, 26
	learnset MOVE_ESPER_WING, 30
	learnset MOVE_PERISH_SONG, 34
	learnset MOVE_OUTRAGE, 38
	learnset MOVE_RECOVER, 42
	learnset MOVE_BLAST_BURN, 46
	learnset MOVE_HYDRO_CANNON, 46
	learnset MOVE_JUDGMENT, 50
    terminatelearnset


levelup SPECIES_EGG
    learnset MOVE_SPLASH, 1
    terminatelearnset


levelup SPECIES_BAD_EGG
    learnset MOVE_SPLASH, 1
    terminatelearnset


levelup SPECIES_DEOXYS_ATTACK
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_TAUNT, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_SUPERPOWER, 37
    learnset MOVE_PSYCHO_SHIFT, 43
    learnset MOVE_ZEN_HEADBUTT, 49
    learnset MOVE_COSMIC_POWER, 55
    learnset MOVE_ZAP_CANNON, 61
    learnset MOVE_PSYCHO_BOOST, 67
    learnset MOVE_HYPER_BEAM, 73
    terminatelearnset


levelup SPECIES_DEOXYS_DEFENSE
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_SPIKES, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_SNATCH, 37
    learnset MOVE_PSYCHO_SHIFT, 43
    learnset MOVE_ZEN_HEADBUTT, 49
    learnset MOVE_IRON_DEFENSE, 55
    learnset MOVE_AMNESIA, 55
    learnset MOVE_RECOVER, 61
    learnset MOVE_PSYCHO_BOOST, 67
    learnset MOVE_COUNTER, 73
    learnset MOVE_MIRROR_COAT, 73
    terminatelearnset


levelup SPECIES_DEOXYS_SPEED
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_SWIFT, 37
    learnset MOVE_PSYCHO_SHIFT, 43
    learnset MOVE_ZEN_HEADBUTT, 49
    learnset MOVE_AGILITY, 55
    learnset MOVE_RECOVER, 61
    learnset MOVE_PSYCHO_BOOST, 67
    learnset MOVE_EXTREME_SPEED, 73
    terminatelearnset


levelup SPECIES_WORMADAM_SANDY
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_ELECTROWEB, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_MUD_BOMB, 25
	learnset MOVE_SUCKER_PUNCH, 27
	learnset MOVE_ROCK_BLAST, 29
	learnset MOVE_SPIKES, 32
	learnset MOVE_GROWTH, 35
	learnset MOVE_BULLDOZE, 38
	learnset MOVE_BUG_BUZZ, 41
	learnset MOVE_ZEN_HEADBUTT, 44
	learnset MOVE_CAPTIVATE, 48
	learnset MOVE_ENDEAVOR, 52
	learnset MOVE_QUIVER_DANCE, 56
	learnset MOVE_EARTHQUAKE, 60
    terminatelearnset


levelup SPECIES_WORMADAM_TRASHY
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_ELECTROWEB, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_MIRROR_SHOT, 25
	learnset MOVE_SUCKER_PUNCH, 27
	learnset MOVE_ALLY_SWITCH, 29
	learnset MOVE_STEALTH_ROCK, 32
	learnset MOVE_GROWTH, 35
	learnset MOVE_IRON_HEAD, 38
	learnset MOVE_BUG_BUZZ, 41
	learnset MOVE_PSYCHIC, 44
	learnset MOVE_CAPTIVATE, 48
	learnset MOVE_ENDEAVOR, 52
	learnset MOVE_QUIVER_DANCE, 56
	learnset MOVE_METAL_BURST, 60
    terminatelearnset


levelup SPECIES_GIRATINA_ORIGIN
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_OMINOUS_WIND, 6
    learnset MOVE_DRAGON_BREATH, 7
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_SHADOW_SNEAK, 19
    learnset MOVE_SLASH, 21
    learnset MOVE_HEX, 34
    learnset MOVE_SCARY_FACE, 35
    learnset MOVE_SHADOW_CLAW, 42
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_AURA_SPHERE, 47
    learnset MOVE_PAIN_SPLIT, 49
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_DESTINY_BOND, 56
    learnset MOVE_SHADOW_FORCE, 62
    terminatelearnset


levelup SPECIES_SHAYMIN_SKY
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_MAGICAL_LEAF, 6
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_QUICK_ATTACK, 14
	learnset MOVE_ZEN_HEADBUTT, 18
	learnset MOVE_NATURAL_GIFT, 22
	learnset MOVE_RECOVER, 26
	learnset MOVE_AROMATHERAPY, 30
	learnset MOVE_SLEEP_POWDER, 34
	learnset MOVE_AIR_SLASH, 38
	learnset MOVE_DRAINING_KISS, 42
	learnset MOVE_LEAF_STORM, 46
	learnset MOVE_SEED_FLARE, 50
    terminatelearnset


levelup SPECIES_ROTOM_HEAT
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_OMINOUS_WIND, 29
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_UPROAR, 33
    learnset MOVE_CHARGE, 34
    learnset MOVE_SUBSTITUTE, 38
    learnset MOVE_HEX, 42
    learnset MOVE_TRICK, 45
    learnset MOVE_DISCHARGE, 56
    terminatelearnset


levelup SPECIES_ROTOM_WASH
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_OMINOUS_WIND, 29
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_UPROAR, 33
    learnset MOVE_CHARGE, 34
    learnset MOVE_SUBSTITUTE, 38
    learnset MOVE_HEX, 42
    learnset MOVE_TRICK, 45
    learnset MOVE_DISCHARGE, 56
    terminatelearnset


levelup SPECIES_ROTOM_FROST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_OMINOUS_WIND, 29
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_UPROAR, 33
    learnset MOVE_CHARGE, 34
    learnset MOVE_SUBSTITUTE, 38
    learnset MOVE_HEX, 42
    learnset MOVE_TRICK, 45
    learnset MOVE_DISCHARGE, 56
    terminatelearnset


levelup SPECIES_ROTOM_FAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_OMINOUS_WIND, 29
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_UPROAR, 33
    learnset MOVE_CHARGE, 34
    learnset MOVE_SUBSTITUTE, 38
    learnset MOVE_HEX, 42
    learnset MOVE_TRICK, 45
    learnset MOVE_DISCHARGE, 56
    terminatelearnset


levelup SPECIES_ROTOM_MOW
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_OMINOUS_WIND, 29
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_UPROAR, 33
    learnset MOVE_CHARGE, 34
    learnset MOVE_SUBSTITUTE, 38
    learnset MOVE_HEX, 42
    learnset MOVE_TRICK, 45
    learnset MOVE_DISCHARGE, 56
    terminatelearnset




levelup SPECIES_508
    terminatelearnset


levelup SPECIES_509
    terminatelearnset


levelup SPECIES_510
    terminatelearnset


levelup SPECIES_511
    terminatelearnset


levelup SPECIES_512
    terminatelearnset


levelup SPECIES_513
    terminatelearnset


levelup SPECIES_514
    terminatelearnset


levelup SPECIES_515
    terminatelearnset


levelup SPECIES_516
    terminatelearnset


levelup SPECIES_517
    terminatelearnset


levelup SPECIES_518
    terminatelearnset


levelup SPECIES_519
    terminatelearnset


levelup SPECIES_520
    terminatelearnset


levelup SPECIES_521
    terminatelearnset


levelup SPECIES_522
    terminatelearnset


levelup SPECIES_523
    terminatelearnset


levelup SPECIES_524
    terminatelearnset


levelup SPECIES_525
    terminatelearnset


levelup SPECIES_526
    terminatelearnset


levelup SPECIES_527
    terminatelearnset


levelup SPECIES_528
    terminatelearnset


levelup SPECIES_529
    terminatelearnset


levelup SPECIES_530
    terminatelearnset


levelup SPECIES_531
    terminatelearnset


levelup SPECIES_532
    terminatelearnset


levelup SPECIES_533
    terminatelearnset


levelup SPECIES_534
    terminatelearnset


levelup SPECIES_535
    terminatelearnset


levelup SPECIES_536
    terminatelearnset


levelup SPECIES_537
    terminatelearnset


levelup SPECIES_538
    terminatelearnset


levelup SPECIES_539
    terminatelearnset


levelup SPECIES_540
    terminatelearnset


levelup SPECIES_541
    terminatelearnset


levelup SPECIES_542
    terminatelearnset


levelup SPECIES_543
    terminatelearnset


levelup SPECIES_VICTINI
	learnset MOVE_SECRET_POWER, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_HELPING_HAND, 4
	learnset MOVE_UPROAR, 8
	learnset MOVE_QUICK_ATTACK, 12
	learnset MOVE_CONFUSION, 16
	learnset MOVE_HEADBUTT, 20
	learnset MOVE_STORED_POWER, 24
	learnset MOVE_FLAME_BURST, 28
	learnset MOVE_ZEN_HEADBUTT, 32
	learnset MOVE_REVERSAL, 36
	learnset MOVE_BLAZE_KICK, 40
	learnset MOVE_PSYSHIELD_BASH, 44
	learnset MOVE_INFERNO, 48
	learnset MOVE_AGILITY, 52
	learnset MOVE_SEARING_SHOT, 56
	learnset MOVE_SCORCHING_SANDS, 56
	learnset MOVE_FUSION_BOLT, 60
	learnset MOVE_FUSION_FLARE, 60
	learnset MOVE_FLARE_BLITZ, 64
	learnset MOVE_GLACIATE, 68
	learnset MOVE_V_CREATE, 72
	learnset MOVE_FINAL_GAMBIT, 76
	learnset MOVE_BLUE_FLARE, 80
	learnset MOVE_BOLT_STRIKE, 80
    terminatelearnset


levelup SPECIES_SNIVY
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_LEAF_TORNADO, 13
	learnset MOVE_WORRY_SEED, 16
	learnset MOVE_CAPTIVATE, 19
	learnset MOVE_GLARE, 22
	learnset MOVE_MIRROR_COAT, 25
	learnset MOVE_DRAGON_RAGE, 28
	learnset MOVE_BODY_SLAM, 31
	learnset MOVE_NATURAL_GIFT, 34
	learnset MOVE_LEAF_BLADE, 37
	learnset MOVE_GASTRO_ACID, 40
	learnset MOVE_SYNTHESIS, 43
	learnset MOVE_PSYCHO_CUT, 46
	learnset MOVE_WRING_OUT, 49
    terminatelearnset


levelup SPECIES_SERVINE
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_LEAF_TORNADO, 13
	learnset MOVE_WORRY_SEED, 16
	learnset MOVE_CAPTIVATE, 17
	learnset MOVE_DRAGON_BREATH, 20
	learnset MOVE_GLARE, 22
	learnset MOVE_MIRROR_COAT, 25
	learnset MOVE_DRAGON_RAGE, 28
	learnset MOVE_HEART_STAMP, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_NATURAL_GIFT, 37
	learnset MOVE_LEAF_BLADE, 40
	learnset MOVE_GASTRO_ACID, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_PSYCHO_CUT, 49
	learnset MOVE_WRING_OUT, 52
	learnset MOVE_POWER_WHIP, 55
    terminatelearnset


levelup SPECIES_SERPERIOR
	learnset MOVE_OUTRAGE, 1
	learnset MOVE_COIL, 1
	learnset MOVE_LEER, 1
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_LEAF_TORNADO, 13
	learnset MOVE_WORRY_SEED, 16
	learnset MOVE_CAPTIVATE, 17
	learnset MOVE_DRAGON_BREATH, 20
	learnset MOVE_GLARE, 22
	learnset MOVE_MIRROR_COAT, 25
	learnset MOVE_DRAGON_RAGE, 28
	learnset MOVE_HEART_STAMP, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_BREAKING_SWIPE, 36
	learnset MOVE_NATURAL_GIFT, 37
	learnset MOVE_LEAF_BLADE, 40
	learnset MOVE_GASTRO_ACID, 43
	learnset MOVE_SYNTHESIS, 46
	learnset MOVE_PSYCHO_CUT, 50
	learnset MOVE_DRAGON_RUSH, 54
	learnset MOVE_POWER_WHIP, 58
	learnset MOVE_WRING_OUT, 62
	learnset MOVE_LEAF_STORM, 66
    terminatelearnset


levelup SPECIES_TEPIG
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SMOG, 7
	learnset MOVE_DEFENSE_CURL, 10
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_ASSURANCE, 19
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_ASSURANCE, 25
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_HEAT_CRASH, 31
	learnset MOVE_SLACK_OFF, 34
	learnset MOVE_WORK_UP, 37
	learnset MOVE_FLAMETHROWER, 40
	learnset MOVE_HEAVY_SLAM, 43
	learnset MOVE_ROAR, 46
	learnset MOVE_FIRE_BLAST, 49
    terminatelearnset


levelup SPECIES_PIGNITE
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SMOG, 7
	learnset MOVE_DEFENSE_CURL, 10
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_MUD_SHOT, 17
	learnset MOVE_ASSURANCE, 20
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_BULLDOZE, 25
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_HEAT_CRASH, 31
	learnset MOVE_SLACK_OFF, 34
	learnset MOVE_HAMMER_ARM, 37
	learnset MOVE_FLAMETHROWER, 40
	learnset MOVE_HEAVY_SLAM, 43
	learnset MOVE_CROSS_CHOP, 46
	learnset MOVE_SUCKER_PUNCH, 49
	learnset MOVE_FOCUS_PUNCH, 52
	learnset MOVE_FLARE_BLITZ, 55
    terminatelearnset


levelup SPECIES_EMBOAR
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SMOG, 7
	learnset MOVE_DEFENSE_CURL, 10
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_CURSE, 16
	learnset MOVE_MUD_SHOT, 17
	learnset MOVE_ASSURANCE, 20
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_BULLDOZE, 25
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_HEAT_CRASH, 31
	learnset MOVE_SLACK_OFF, 34
	learnset MOVE_FLAMETHROWER, 36
	learnset MOVE_HAMMER_ARM, 37
	learnset MOVE_HEAVY_SLAM, 40
	learnset MOVE_HIGH_HORSEPOWER, 43
	learnset MOVE_CROSS_CHOP, 46
	learnset MOVE_SUCKER_PUNCH, 50
	learnset MOVE_FOCUS_PUNCH, 54
	learnset MOVE_FLARE_BLITZ, 58
	learnset MOVE_HEAD_SMASH, 62
	learnset MOVE_V_CREATE, 66
	learnset MOVE_HEADLONG_RUSH, 70
    terminatelearnset


levelup SPECIES_OSHAWOTT
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_RAZOR_SHELL, 13
	learnset MOVE_FOCUS_ENERGY, 16
	learnset MOVE_BRINE, 19
	learnset MOVE_REVENGE, 22
	learnset MOVE_COVET, 25
	learnset MOVE_REVENGE, 28
	learnset MOVE_AIR_SLASH, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_WORK_UP, 37
	learnset MOVE_AQUA_TAIL, 40
	learnset MOVE_SUCKER_PUNCH, 43
	learnset MOVE_DRILL_RUN, 46
	learnset MOVE_TRUMP_CARD, 49
    terminatelearnset


levelup SPECIES_DEWOTT
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_RAZOR_SHELL, 13
	learnset MOVE_FOCUS_ENERGY, 16
	learnset MOVE_ROCK_SMASH, 17
	learnset MOVE_BRINE, 20
	learnset MOVE_REVENGE, 22
	learnset MOVE_COVET, 25
	learnset MOVE_AIR_SLASH, 28
	learnset MOVE_DRILL_RUN, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_SMART_STRIKE, 37
	learnset MOVE_AQUA_TAIL, 40
	learnset MOVE_SUCKER_PUNCH, 43
	learnset MOVE_PSYCHO_CUT, 46
	learnset MOVE_TRUMP_CARD, 49
	learnset MOVE_SUPERPOWER, 52
	learnset MOVE_HYDRO_PUMP, 55
    terminatelearnset


levelup SPECIES_SAMUROTT
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_RAZOR_SHELL, 13
	learnset MOVE_FOCUS_ENERGY, 16
	learnset MOVE_ROCK_SMASH, 17
	learnset MOVE_BRINE, 20
	learnset MOVE_REVENGE, 22
	learnset MOVE_COVET, 25
	learnset MOVE_AIR_SLASH, 28
	learnset MOVE_DRILL_RUN, 31
	learnset MOVE_SLASH, 34
	learnset MOVE_NIGHT_SLASH, 34
	learnset MOVE_SACRED_SWORD, 36
	learnset MOVE_SMART_STRIKE, 37
	learnset MOVE_AQUA_TAIL, 40
	learnset MOVE_SUCKER_PUNCH, 43
	learnset MOVE_PSYCHO_CUT, 46
	learnset MOVE_TRUMP_CARD, 50
	learnset MOVE_SUPERPOWER, 54
	learnset MOVE_MEGAHORN, 58
	learnset MOVE_HYDRO_PUMP, 62
	learnset MOVE_CLOSE_COMBAT, 66
	learnset MOVE_SHELL_SMASH, 70
    terminatelearnset


levelup SPECIES_PATRAT
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_BIDE, 4
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_HEADBUTT, 11
	learnset MOVE_LOW_KICK, 13
	learnset MOVE_HYPNOSIS, 15
	learnset MOVE_CRUNCH, 17
	learnset MOVE_REVENGE, 19
	learnset MOVE_HELPING_HAND, 21
	learnset MOVE_HYPER_FANG, 24
	learnset MOVE_DETECT, 27
	learnset MOVE_ASSURANCE, 30
	learnset MOVE_SCREECH, 33
	learnset MOVE_ZEN_HEADBUTT, 37
	learnset MOVE_FLAIL, 41
	learnset MOVE_SUPER_FANG, 45
	learnset MOVE_NASTY_PLOT, 49
	learnset MOVE_ENDEAVOR, 53
	learnset MOVE_BATON_PASS, 57
    terminatelearnset


levelup SPECIES_WATCHOG
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_BIDE, 4
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_HEADBUTT, 11
	learnset MOVE_LOW_KICK, 13
	learnset MOVE_HYPNOSIS, 15
	learnset MOVE_CRUNCH, 17
	learnset MOVE_REVENGE, 19
	learnset MOVE_RETALIATE, 20
	learnset MOVE_HELPING_HAND, 21
	learnset MOVE_HYPER_FANG, 24
	learnset MOVE_DETECT, 27
	learnset MOVE_ASSURANCE, 30
	learnset MOVE_SCREECH, 33
	learnset MOVE_ZEN_HEADBUTT, 37
	learnset MOVE_FLAIL, 41
	learnset MOVE_SUPER_FANG, 45
	learnset MOVE_NASTY_PLOT, 49
	learnset MOVE_ENDEAVOR, 53
	learnset MOVE_BATON_PASS, 57
	learnset MOVE_DOUBLE_EDGE, 61
    terminatelearnset


levelup SPECIES_LILLIPUP
	learnset MOVE_LEER, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LICK, 4
	learnset MOVE_BITE, 6
	learnset MOVE_ODOR_SLEUTH, 8
	learnset MOVE_HOWL, 10
	learnset MOVE_RETALIATE, 12
	learnset MOVE_PURSUIT, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_CRUNCH, 22
	learnset MOVE_YAWN, 26
	learnset MOVE_CHARM, 30
	learnset MOVE_PLAY_ROUGH, 34
	learnset MOVE_REVERSAL, 38
	learnset MOVE_PSYCHIC_FANGS, 42
	learnset MOVE_AFTER_YOU, 46
	learnset MOVE_GIGA_IMPACT, 50
	learnset MOVE_DOUBLE_EDGE, 54
	learnset MOVE_LAST_RESORT, 58
    terminatelearnset


levelup SPECIES_HERDIER
	learnset MOVE_LEER, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LICK, 4
	learnset MOVE_BITE, 6
	learnset MOVE_ODOR_SLEUTH, 8
	learnset MOVE_HOWL, 10
	learnset MOVE_RETALIATE, 12
	learnset MOVE_PURSUIT, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_CRUNCH, 23
	learnset MOVE_YAWN, 26
	learnset MOVE_CHARM, 31
	learnset MOVE_PLAY_ROUGH, 35
	learnset MOVE_REVERSAL, 39
	learnset MOVE_PSYCHIC_FANGS, 43
	learnset MOVE_AFTER_YOU, 47
	learnset MOVE_GIGA_IMPACT, 51
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_LAST_RESORT, 59
    terminatelearnset


levelup SPECIES_STOUTLAND
	learnset MOVE_LEER, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LICK, 4
	learnset MOVE_BITE, 6
	learnset MOVE_ODOR_SLEUTH, 8
	learnset MOVE_HOWL, 10
	learnset MOVE_RETALIATE, 12
	learnset MOVE_PURSUIT, 14
	learnset MOVE_HELPING_HAND, 16
	learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_CRUNCH, 23
	learnset MOVE_YAWN, 26
	learnset MOVE_CHARM, 31
	learnset MOVE_FIRE_FANG, 32
	learnset MOVE_ICE_FANG, 32
	learnset MOVE_THUNDER_FANG, 32
	learnset MOVE_PLAY_ROUGH, 36
	learnset MOVE_REVERSAL, 40
	learnset MOVE_PSYCHIC_FANGS, 44
	learnset MOVE_AFTER_YOU, 48
	learnset MOVE_GIGA_IMPACT, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_LAST_RESORT, 60
	learnset MOVE_HEADLONG_RUSH, 64
    terminatelearnset


levelup SPECIES_PURRLOIN
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_PAY_DAY, 6
	learnset MOVE_ASSIST, 8
	learnset MOVE_FAKE_OUT, 10
	learnset MOVE_FEINT_ATTACK, 12
	learnset MOVE_CAPTIVATE, 14
	learnset MOVE_TORMENT, 16
	learnset MOVE_FAKE_TEARS, 18
	learnset MOVE_ASSURANCE, 20
	learnset MOVE_HONE_CLAWS, 22
	learnset MOVE_TRICK, 24
	learnset MOVE_QUASH, 26
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_PSYCHO_CUT, 31
	learnset MOVE_YAWN, 34
	learnset MOVE_SPITE, 37
	learnset MOVE_SUCKER_PUNCH, 41
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_COPYCAT, 49
	learnset MOVE_FOUL_PLAY, 53
	learnset MOVE_NASTY_PLOT, 57
    terminatelearnset


levelup SPECIES_LIEPARD
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_PAY_DAY, 6
	learnset MOVE_ASSIST, 8
	learnset MOVE_FAKE_OUT, 10
	learnset MOVE_FEINT_ATTACK, 12
	learnset MOVE_CAPTIVATE, 14
	learnset MOVE_TORMENT, 16
	learnset MOVE_FAKE_TEARS, 18
	learnset MOVE_ASSURANCE, 20
	learnset MOVE_HONE_CLAWS, 23
	learnset MOVE_TRICK, 25
	learnset MOVE_QUASH, 27
	learnset MOVE_SLASH, 29
	learnset MOVE_NIGHT_SLASH, 29
	learnset MOVE_PSYCHO_CUT, 32
	learnset MOVE_YAWN, 35
	learnset MOVE_SPITE, 39
	learnset MOVE_SUCKER_PUNCH, 43
	learnset MOVE_PLAY_ROUGH, 47
	learnset MOVE_COPYCAT, 51
	learnset MOVE_FOUL_PLAY, 55
	learnset MOVE_NASTY_PLOT, 59
	learnset MOVE_BATON_PASS, 64
    terminatelearnset


levelup SPECIES_PANSAGE
	learnset MOVE_GRASS_PLEDGE, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_GROWTH, 8
	learnset MOVE_MAGICAL_LEAF, 10
	learnset MOVE_DISARMING_VOICE, 12
	learnset MOVE_LEECH_SEED, 14
	learnset MOVE_BULLET_SEED, 16
	learnset MOVE_BITE, 18
	learnset MOVE_SEED_BOMB, 20
	learnset MOVE_TORMENT, 22
	learnset MOVE_ENDEAVOR, 24
	learnset MOVE_CRUNCH, 26
	learnset MOVE_HYPER_VOICE, 28
	learnset MOVE_ACROBATICS, 31
	learnset MOVE_GRASS_KNOT, 34
	learnset MOVE_NASTY_PLOT, 38
	learnset MOVE_NATURAL_GIFT, 42
	learnset MOVE_BOOMBURST, 46
	learnset MOVE_RECYCLE, 50
	learnset MOVE_POWER_WHIP, 54
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_SIMISAGE
	learnset MOVE_CRUNCH, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_FURY_SWIPES, 1
	learnset MOVE_GRASS_PLEDGE, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SEED_BOMB, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WRING_OUT, 32
	learnset MOVE_GRASS_KNOT, 38
	learnset MOVE_ACROBATICS, 44
	learnset MOVE_BOOMBURST, 50
	learnset MOVE_POWER_WHIP, 56
	learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_PANSEAR
	learnset MOVE_FIRE_PLEDGE, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_INCINERATE, 5
	learnset MOVE_YAWN, 8
	learnset MOVE_FIRE_SPIN, 10
	learnset MOVE_DISARMING_VOICE, 12
	learnset MOVE_FLAME_CHARGE, 14
	learnset MOVE_LOW_KICK, 16
	learnset MOVE_BITE, 18
	learnset MOVE_FIRE_PUNCH, 20
	learnset MOVE_AMNESIA, 22
	learnset MOVE_ENDEAVOR, 24
	learnset MOVE_CRUNCH, 26
	learnset MOVE_DISABLE, 28
	learnset MOVE_ACROBATICS, 31
	learnset MOVE_BLAZE_KICK, 34
	learnset MOVE_NASTY_PLOT, 38
	learnset MOVE_NATURAL_GIFT, 42
	learnset MOVE_LAVA_PLUME, 46
	learnset MOVE_RECYCLE, 50
	learnset MOVE_FIRE_LASH, 54
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_SIMISEAR
	learnset MOVE_CRUNCH, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_FIRE_PLEDGE, 1
	learnset MOVE_FLAME_BURST, 1
	learnset MOVE_FURY_SWIPES, 1
	learnset MOVE_LICK, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WRING_OUT, 32
	learnset MOVE_BLAZE_KICK, 38
	learnset MOVE_ACROBATICS, 44
	learnset MOVE_LAVA_PLUME, 50
	learnset MOVE_FIRE_LASH, 56
	learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_PANPOUR
	learnset MOVE_WATER_PLEDGE, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_HELPING_HAND, 8
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_DISARMING_VOICE, 12
	learnset MOVE_BRINE, 14
	learnset MOVE_AQUA_RING, 16
	learnset MOVE_BITE, 18
	learnset MOVE_SCALD, 20
	learnset MOVE_TAUNT, 22
	learnset MOVE_ENDEAVOR, 24
	learnset MOVE_CRUNCH, 26
	learnset MOVE_FUTURE_SIGHT, 28
	learnset MOVE_ACROBATICS, 31
	learnset MOVE_AQUA_TAIL, 34
	learnset MOVE_NASTY_PLOT, 38
	learnset MOVE_NATURAL_GIFT, 42
	learnset MOVE_GLARE, 46
	learnset MOVE_RECYCLE, 50
	learnset MOVE_HYDRO_PUMP, 54
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_SIMIPOUR
	learnset MOVE_AQUA_TAIL, 1
	learnset MOVE_CRUNCH, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_FURY_SWIPES, 1
	learnset MOVE_LICK, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_SCALD, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WATER_PLEDGE, 1
	learnset MOVE_WRING_OUT, 32
	learnset MOVE_FUTURE_SIGHT, 38
	learnset MOVE_ACROBATICS, 44
	learnset MOVE_GLARE, 50
	learnset MOVE_HYDRO_PUMP, 56
	learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_MUNNA
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_MAGIC_ROOM, 1
	learnset MOVE_WONDER_ROOM, 1
	learnset MOVE_NIGHTMARE, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_ALLY_SWITCH, 10
	learnset MOVE_HYPNOSIS, 12
	learnset MOVE_DISARMING_VOICE, 14
	learnset MOVE_PSYBEAM, 17
	learnset MOVE_TRICK, 20
	learnset MOVE_ZEN_HEADBUTT, 23
	learnset MOVE_MOONLIGHT, 26
	learnset MOVE_YAWN, 29
	learnset MOVE_HEAL_BELL, 32
	learnset MOVE_FUTURE_SIGHT, 36
	learnset MOVE_DREAM_EATER, 40
	learnset MOVE_MOONBLAST, 44
	learnset MOVE_STORED_POWER, 48
	learnset MOVE_SYNCHRONOISE, 52
	learnset MOVE_BATON_PASS, 56
	learnset MOVE_HELPING_HAND, 60
	learnset MOVE_HEALING_WISH, 64
    terminatelearnset


levelup SPECIES_MUSHARNA
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_MAGIC_ROOM, 1
	learnset MOVE_NIGHTMARE, 1
	learnset MOVE_WONDER_ROOM, 1
	learnset MOVE_SHOCK_WAVE, 25
	learnset MOVE_DREAM_EATER, 35
	learnset MOVE_SYNCHRONOISE, 45
	learnset MOVE_YAWN, 50
	learnset MOVE_HEAL_BELL, 55
	learnset MOVE_MOONBLAST, 60
	learnset MOVE_HEALING_WISH, 65
    terminatelearnset


levelup SPECIES_PIDOVE
	learnset MOVE_GROWL, 1
	learnset MOVE_GUST, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_LEER, 4
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_HYPNOSIS, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_TAUNT, 14
	learnset MOVE_FOCUS_ENERGY, 16
	learnset MOVE_TAILWIND, 18
	learnset MOVE_UPROAR, 21
	learnset MOVE_DUAL_WINGBEAT, 24
	learnset MOVE_WISH, 27
	learnset MOVE_STEEL_WING, 31
	learnset MOVE_AIR_SLASH, 35
	learnset MOVE_LUCKY_CHANT, 39
	learnset MOVE_AGILITY, 43
	learnset MOVE_DETECT, 47
	learnset MOVE_BRAVE_BIRD, 51
	learnset MOVE_SKY_ATTACK, 55
    terminatelearnset


levelup SPECIES_TRANQUILL
	learnset MOVE_GROWL, 1
	learnset MOVE_GUST, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_LEER, 4
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_HYPNOSIS, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_TAUNT, 14
	learnset MOVE_FOCUS_ENERGY, 16
	learnset MOVE_TAILWIND, 18
	learnset MOVE_UPROAR, 21
	learnset MOVE_MORNING_SUN, 22
	learnset MOVE_DUAL_WINGBEAT, 25
	learnset MOVE_WISH, 28
	learnset MOVE_STEEL_WING, 32
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_LUCKY_CHANT, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_DETECT, 48
	learnset MOVE_BRAVE_BIRD, 52
	learnset MOVE_SKY_ATTACK, 56
    terminatelearnset


levelup SPECIES_UNFEZANT
	learnset MOVE_GROWL, 1
	learnset MOVE_GUST, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_LEER, 4
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_HYPNOSIS, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_TAUNT, 14
	learnset MOVE_FOCUS_ENERGY, 16
	learnset MOVE_TAILWIND, 18
	learnset MOVE_UPROAR, 21
	learnset MOVE_MORNING_SUN, 22
	learnset MOVE_DUAL_WINGBEAT, 25
	learnset MOVE_WISH, 28
	learnset MOVE_STEEL_WING, 32
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_AIR_SLASH, 37
	learnset MOVE_LUCKY_CHANT, 41
	learnset MOVE_AGILITY, 45
	learnset MOVE_DETECT, 49
	learnset MOVE_BRAVE_BIRD, 53
	learnset MOVE_SKY_ATTACK, 58
	learnset MOVE_BOOMBURST, 63
    terminatelearnset


levelup SPECIES_BLITZLE
	learnset MOVE_RAGE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_CHARGE, 4
	learnset MOVE_SHOCK_WAVE, 6
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_ME_FIRST, 10
	learnset MOVE_SPARK, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_PURSUIT, 22
	learnset MOVE_NUZZLE, 25
	learnset MOVE_STOMP, 28
	learnset MOVE_FLAME_CHARGE, 31
	learnset MOVE_DISCHARGE, 34
	learnset MOVE_TAKE_DOWN, 37
	learnset MOVE_BOUNCE, 40
	learnset MOVE_AGILITY, 43
	learnset MOVE_HIGH_HORSEPOWER, 47
	learnset MOVE_LUNGE, 51
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_FLARE_BLITZ, 59
    terminatelearnset


levelup SPECIES_ZEBSTRIKA
	learnset MOVE_RAGE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_CHARGE, 4
	learnset MOVE_SHOCK_WAVE, 6
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_ME_FIRST, 10
	learnset MOVE_SPARK, 13
	learnset MOVE_SCREECH, 16
	learnset MOVE_DOUBLE_KICK, 19
	learnset MOVE_PURSUIT, 22
	learnset MOVE_NUZZLE, 25
	learnset MOVE_SMART_STRIKE, 27
	learnset MOVE_STOMP, 30
	learnset MOVE_FLAME_CHARGE, 33
	learnset MOVE_DISCHARGE, 36
	learnset MOVE_TAKE_DOWN, 39
	learnset MOVE_BOUNCE, 43
	learnset MOVE_AGILITY, 47
	learnset MOVE_HIGH_HORSEPOWER, 51
	learnset MOVE_LUNGE, 55
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_FLARE_BLITZ, 65
	learnset MOVE_VOLT_TACKLE, 70
    terminatelearnset


levelup SPECIES_ROGGENROLA
	learnset MOVE_HARDEN, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_HEADBUTT, 10
	learnset MOVE_CURSE, 13
	learnset MOVE_MAGNITUDE, 16
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_GRAVITY, 22
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_ROCK_BLAST, 28
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_HEAVY_SLAM, 34
	learnset MOVE_SANDSTORM, 38
	learnset MOVE_AUTOTOMIZE, 42
	learnset MOVE_STONE_EDGE, 46
	learnset MOVE_EXPLOSION, 51
	learnset MOVE_WIDE_GUARD, 56
    terminatelearnset


levelup SPECIES_BOLDORE
	learnset MOVE_HARDEN, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_HEADBUTT, 10
	learnset MOVE_CURSE, 13
	learnset MOVE_MAGNITUDE, 16
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_GRAVITY, 22
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_POWER_GEM, 26
	learnset MOVE_ROCK_BLAST, 29
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_HEAVY_SLAM, 35
	learnset MOVE_SANDSTORM, 39
	learnset MOVE_AUTOTOMIZE, 43
	learnset MOVE_STONE_EDGE, 47
	learnset MOVE_EXPLOSION, 52
	learnset MOVE_WIDE_GUARD, 57
	learnset MOVE_ROCK_WRECKER, 62
    terminatelearnset


levelup SPECIES_GIGALITH
	learnset MOVE_HARDEN, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_HEADBUTT, 10
	learnset MOVE_CURSE, 13
	learnset MOVE_MAGNITUDE, 16
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_GRAVITY, 22
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_POWER_GEM, 26
	learnset MOVE_ROCK_BLAST, 29
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_HEAVY_SLAM, 35
	learnset MOVE_SANDSTORM, 39
	learnset MOVE_AUTOTOMIZE, 43
	learnset MOVE_STONE_EDGE, 47
	learnset MOVE_EXPLOSION, 52
	learnset MOVE_WIDE_GUARD, 57
	learnset MOVE_ROCK_WRECKER, 62
    terminatelearnset


levelup SPECIES_WOOBAT
	learnset MOVE_ASSURANCE, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_GUST, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_AFTER_YOU, 16
	learnset MOVE_HELPING_HAND, 19
	learnset MOVE_AIR_CUTTER, 22
	learnset MOVE_HEART_STAMP, 25
	learnset MOVE_AMNESIA, 28
	learnset MOVE_PSYCHIC_FANGS, 31
	learnset MOVE_UPROAR, 34
	learnset MOVE_DUAL_WINGBEAT, 37
	learnset MOVE_SIMPLE_BEAM, 40
	learnset MOVE_TRICK, 44
	learnset MOVE_STORED_POWER, 48
	learnset MOVE_AIR_SLASH, 52
	learnset MOVE_TAILWIND, 56
	learnset MOVE_NASTY_PLOT, 60
    terminatelearnset


levelup SPECIES_SWOOBAT
	learnset MOVE_SYNCHRONOISE, 1
	learnset MOVE_ASSURANCE, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_GUST, 10
	learnset MOVE_CONFUSION, 13
	learnset MOVE_AFTER_YOU, 16
	learnset MOVE_HELPING_HAND, 19
	learnset MOVE_AIR_CUTTER, 22
	learnset MOVE_HEART_STAMP, 25
	learnset MOVE_HEART_SWAP, 25
	learnset MOVE_AMNESIA, 28
	learnset MOVE_PSYCHIC_FANGS, 31
	learnset MOVE_UPROAR, 34
	learnset MOVE_DUAL_WINGBEAT, 38
	learnset MOVE_SIMPLE_BEAM, 42
	learnset MOVE_TRICK, 46
	learnset MOVE_STORED_POWER, 50
	learnset MOVE_AIR_SLASH, 54
	learnset MOVE_TAILWIND, 58
	learnset MOVE_NASTY_PLOT, 62
	learnset MOVE_ESPER_WING, 66
    terminatelearnset


levelup SPECIES_DRILBUR
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_RAPID_SPIN, 10
	learnset MOVE_MUD_SHOT, 13
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_METAL_CLAW, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_ROCK_BLAST, 25
	learnset MOVE_SMART_STRIKE, 28
	learnset MOVE_IRON_DEFENSE, 31
	learnset MOVE_SCORCHING_SANDS, 34
	learnset MOVE_CRUSH_CLAW, 38
	learnset MOVE_DRILL_RUN, 42
	learnset MOVE_SANDSTORM, 46
	learnset MOVE_SKULL_BASH, 50
	learnset MOVE_HIGH_HORSEPOWER, 54
	learnset MOVE_FISSURE, 58
    terminatelearnset


levelup SPECIES_EXCADRILL
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_RAPID_SPIN, 10
	learnset MOVE_MUD_SHOT, 13
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_METAL_CLAW, 19
	learnset MOVE_SLASH, 22
	learnset MOVE_ROCK_BLAST, 25
	learnset MOVE_SMART_STRIKE, 28
	learnset MOVE_IRON_DEFENSE, 31
	learnset MOVE_SCORCHING_SANDS, 35
	learnset MOVE_CRUSH_CLAW, 39
	learnset MOVE_DRILL_RUN, 43
	learnset MOVE_SANDSTORM, 47
	learnset MOVE_SKULL_BASH, 51
	learnset MOVE_HIGH_HORSEPOWER, 55
	learnset MOVE_FISSURE, 59
    terminatelearnset


levelup SPECIES_AUDINO
	learnset MOVE_DRAINING_KISS, 1
	learnset MOVE_HEAL_BELL, 1
	learnset MOVE_PAIN_SPLIT, 1
	learnset MOVE_PRESENT, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_POUND, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_AFTER_YOU, 8
	learnset MOVE_LUCKY_CHANT, 11
	learnset MOVE_SAFEGUARD, 13
	learnset MOVE_BESTOW, 15
	learnset MOVE_DOUBLE_SLAP, 18
	learnset MOVE_HEAL_PULSE, 22
	learnset MOVE_COVET, 26
	learnset MOVE_TAKE_DOWN, 30
	learnset MOVE_AMNESIA, 34
	learnset MOVE_REFRESH, 38
	learnset MOVE_ZEN_HEADBUTT, 42
	learnset MOVE_SIMPLE_BEAM, 46
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_WISH, 53
	learnset MOVE_MOONBLAST, 56
	learnset MOVE_ENTRAINMENT, 59
	learnset MOVE_LAST_RESORT, 62
    terminatelearnset


levelup SPECIES_TIMBURR
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LEER, 1
	learnset MOVE_POUND, 1
	learnset MOVE_BIDE, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_WAKE_UP_SLAP, 13
	learnset MOVE_CHIP_AWAY, 16
	learnset MOVE_FORCE_PALM, 19
	learnset MOVE_COUNTER, 22
	learnset MOVE_PAYBACK, 25
	learnset MOVE_HELPING_HAND, 28
	learnset MOVE_FLING, 31
	learnset MOVE_ROCK_BLAST, 34
	learnset MOVE_REVENGE, 37
	learnset MOVE_DYNAMIC_PUNCH, 40
	learnset MOVE_FOCUS_PUNCH, 44
	learnset MOVE_HAMMER_ARM, 48
	learnset MOVE_DRAIN_PUNCH, 52
	learnset MOVE_WIDE_GUARD, 56
	learnset MOVE_MACH_PUNCH, 60
    terminatelearnset


levelup SPECIES_GURDURR
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LEER, 1
	learnset MOVE_POUND, 1
	learnset MOVE_BIDE, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_WAKE_UP_SLAP, 13
	learnset MOVE_CHIP_AWAY, 16
	learnset MOVE_FORCE_PALM, 19
	learnset MOVE_COUNTER, 22
	learnset MOVE_PAYBACK, 25
	learnset MOVE_HELPING_HAND, 28
	learnset MOVE_FLING, 31
	learnset MOVE_ROCK_BLAST, 34
	learnset MOVE_REVENGE, 38
	learnset MOVE_DYNAMIC_PUNCH, 42
	learnset MOVE_FOCUS_PUNCH, 46
	learnset MOVE_HAMMER_ARM, 50
	learnset MOVE_DRAIN_PUNCH, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_MACH_PUNCH, 62
	learnset MOVE_HIGH_HORSEPOWER, 66
	learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_CONKELDURR
	learnset MOVE_CROSS_CHOP, 1
	learnset MOVE_WRING_OUT, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LEER, 1
	learnset MOVE_POUND, 1
	learnset MOVE_BIDE, 4
	learnset MOVE_FORESIGHT, 7
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_WAKE_UP_SLAP, 13
	learnset MOVE_CHIP_AWAY, 16
	learnset MOVE_FORCE_PALM, 19
	learnset MOVE_COUNTER, 22
	learnset MOVE_PAYBACK, 25
	learnset MOVE_HELPING_HAND, 28
	learnset MOVE_FLING, 31
	learnset MOVE_ROCK_BLAST, 34
	learnset MOVE_REVENGE, 38
	learnset MOVE_DYNAMIC_PUNCH, 42
	learnset MOVE_FOCUS_PUNCH, 46
	learnset MOVE_HAMMER_ARM, 50
	learnset MOVE_DRAIN_PUNCH, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_MACH_PUNCH, 62
	learnset MOVE_HIGH_HORSEPOWER, 66
	learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_TYMPOLE
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_AFTER_YOU, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_ACID, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_ECHOED_VOICE, 16
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_MIST, 25
	learnset MOVE_UPROAR, 28
	learnset MOVE_MUD_BOMB, 31
	learnset MOVE_GASTRO_ACID, 34
	learnset MOVE_HYPER_VOICE, 38
	learnset MOVE_AQUA_RING, 42
	learnset MOVE_MUDDY_WATER, 46
	learnset MOVE_REFRESH, 50
	learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_PALPITOAD
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_AFTER_YOU, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_ACID, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_ECHOED_VOICE, 16
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_MIST, 25
	learnset MOVE_UPROAR, 29
	learnset MOVE_MUD_BOMB, 33
	learnset MOVE_GASTRO_ACID, 36
	learnset MOVE_HYPER_VOICE, 39
	learnset MOVE_AQUA_RING, 43
	learnset MOVE_MUDDY_WATER, 47
	learnset MOVE_REFRESH, 51
	learnset MOVE_HYDRO_PUMP, 55
    terminatelearnset


levelup SPECIES_SEISMITOAD
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_AFTER_YOU, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_ACID, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_ECHOED_VOICE, 16
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_MIST, 25
	learnset MOVE_UPROAR, 29
	learnset MOVE_MUD_BOMB, 33
	learnset MOVE_GASTRO_ACID, 36
	learnset MOVE_HYPER_VOICE, 39
	learnset MOVE_AQUA_RING, 43
	learnset MOVE_MUDDY_WATER, 47
	learnset MOVE_REFRESH, 51
	learnset MOVE_HYDRO_PUMP, 55
	learnset MOVE_POWER_WHIP, 59
    terminatelearnset


levelup SPECIES_THROH
	learnset MOVE_STONE_EDGE, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_BIND, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LEER, 4
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_ENDURE, 15
	learnset MOVE_VITAL_THROW, 19
	learnset MOVE_BODY_SLAM, 22
	learnset MOVE_STORM_THROW, 25
	learnset MOVE_KNOCK_OFF, 28
	learnset MOVE_PAIN_SPLIT, 31
	learnset MOVE_PAYBACK, 34
	learnset MOVE_WIDE_GUARD, 37
	learnset MOVE_CIRCLE_THROW, 41
	learnset MOVE_HELPING_HAND, 45
	learnset MOVE_ZEN_HEADBUTT, 49
	learnset MOVE_HEADLONG_RUSH, 57
	learnset MOVE_REVERSAL, 61
	learnset MOVE_FOCUS_PUNCH, 65
    terminatelearnset


levelup SPECIES_SAWK
	learnset MOVE_DUAL_CHOP, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_BIND, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_LEER, 4
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_ENDURE, 15
	learnset MOVE_KARATE_CHOP, 19
	learnset MOVE_BODY_SLAM, 22
	learnset MOVE_BRICK_BREAK, 25
	learnset MOVE_KNOCK_OFF, 28
	learnset MOVE_PAIN_SPLIT, 31
	learnset MOVE_PAYBACK, 34
	learnset MOVE_QUICK_GUARD, 37
	learnset MOVE_LUNGE, 41
	learnset MOVE_HELPING_HAND, 45
	learnset MOVE_ZEN_HEADBUTT, 49
	learnset MOVE_BLAZE_KICK, 57
	learnset MOVE_CLOSE_COMBAT, 61
	learnset MOVE_REVERSAL, 65
    terminatelearnset


levelup SPECIES_SEWADDLE
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRUGGLE_BUG, 4
	learnset MOVE_ELECTROWEB, 7
	learnset MOVE_RAZOR_LEAF, 9
	learnset MOVE_BUG_BITE, 11
	learnset MOVE_HONE_CLAWS, 14
	learnset MOVE_WORRY_SEED, 17
	learnset MOVE_PSYCHIC_FANGS, 20
	learnset MOVE_ENDURE, 25
	learnset MOVE_AGILITY, 31
	learnset MOVE_BUG_BUZZ, 36
	learnset MOVE_FLAIL, 43
    terminatelearnset


levelup SPECIES_SWADLOON
	learnset MOVE_TACKLE, 1
	learnset MOVE_GRASS_WHISTLE, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_PROTECT, 21
	learnset MOVE_SYNTHESIS, 21
	learnset MOVE_IRON_DEFENSE, 23
    terminatelearnset


levelup SPECIES_LEAVANNY
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRUGGLE_BUG, 4
	learnset MOVE_ELECTROWEB, 7
	learnset MOVE_RAZOR_LEAF, 9
	learnset MOVE_BUG_BITE, 11
	learnset MOVE_HONE_CLAWS, 14
	learnset MOVE_WORRY_SEED, 17
	learnset MOVE_PSYCHIC_FANGS, 20
	learnset MOVE_SILVER_WIND, 22
	learnset MOVE_AIR_SLASH, 24
	learnset MOVE_SLASH, 26
	learnset MOVE_NIGHT_SLASH, 26
	learnset MOVE_HELPING_HAND, 29
	learnset MOVE_GRASS_WHISTLE, 32
	learnset MOVE_ME_FIRST, 36
	learnset MOVE_LEAF_BLADE, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_LUNGE, 48
	learnset MOVE_HEAL_BELL, 52
	learnset MOVE_CAMOUFLAGE, 56
	learnset MOVE_ENTRAINMENT, 60
	learnset MOVE_BATON_PASS, 64
    terminatelearnset


levelup SPECIES_VENIPEDE
	learnset MOVE_POISON_STING, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_PROTECT, 8
	learnset MOVE_POISON_FANG, 11
	learnset MOVE_SCREECH, 14
	learnset MOVE_BITE, 16
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_COIL, 20
	learnset MOVE_FURY_CUTTER, 23
	learnset MOVE_PAYBACK, 26
	learnset MOVE_PIN_MISSILE, 29
	learnset MOVE_AGILITY, 30
	learnset MOVE_TOXIC_SPIKES, 33
	learnset MOVE_SPIKES, 33
	learnset MOVE_SMART_STRIKE, 37
	learnset MOVE_POISON_TAIL, 41
	learnset MOVE_STEAMROLLER, 45
	learnset MOVE_TAKE_DOWN, 49
    terminatelearnset


levelup SPECIES_WHIRLIPEDE
	learnset MOVE_POISON_STING, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_PROTECT, 8
	learnset MOVE_POISON_FANG, 12
	learnset MOVE_SCREECH, 14
	learnset MOVE_BITE, 16
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_COIL, 20
	learnset MOVE_IRON_DEFENSE, 20
	learnset MOVE_FURY_CUTTER, 23
	learnset MOVE_PAYBACK, 26
	learnset MOVE_PIN_MISSILE, 29
	learnset MOVE_AGILITY, 30
	learnset MOVE_TOXIC_SPIKES, 34
	learnset MOVE_SPIKES, 34
	learnset MOVE_SMART_STRIKE, 38
	learnset MOVE_POISON_TAIL, 42
	learnset MOVE_STEAMROLLER, 46
	learnset MOVE_TAKE_DOWN, 50
	learnset MOVE_LUNGE, 55
    terminatelearnset


levelup SPECIES_SCOLIPEDE
	learnset MOVE_DOUBLE_EDGE, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_PROTECT, 8
	learnset MOVE_POISON_FANG, 12
	learnset MOVE_SCREECH, 14
	learnset MOVE_BITE, 16
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_COIL, 20
	learnset MOVE_IRON_DEFENSE, 20
	learnset MOVE_FURY_CUTTER, 23
	learnset MOVE_PIN_MISSILE, 27
	learnset MOVE_AGILITY, 30
	learnset MOVE_TWINEEDLE, 32
	learnset MOVE_TOXIC_SPIKES, 36
	learnset MOVE_SPIKES, 36
	learnset MOVE_SMART_STRIKE, 40
	learnset MOVE_POISON_TAIL, 44
	learnset MOVE_STEAMROLLER, 48
	learnset MOVE_TAKE_DOWN, 52
	learnset MOVE_CROSS_POISON, 56
	learnset MOVE_LUNGE, 60
	learnset MOVE_ENDEAVOR, 64
	learnset MOVE_MEGAHORN, 68
	learnset MOVE_BATON_PASS, 72
    terminatelearnset


levelup SPECIES_COTTONEE
	learnset MOVE_ABSORB, 1
	learnset MOVE_BEAT_UP, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_RAZOR_LEAF, 4
	learnset MOVE_WORRY_SEED, 7
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_SLEEP_POWDER, 10
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_GROWTH, 13
	learnset MOVE_MEGA_DRAIN, 16
	learnset MOVE_TICKLE, 19
	learnset MOVE_COTTON_SPORE, 22
	learnset MOVE_LEECH_SEED, 25
	learnset MOVE_SWITCHEROO, 28
	learnset MOVE_CHARM, 31
	learnset MOVE_DAZZLING_GLEAM, 34
	learnset MOVE_COTTON_GUARD, 37
	learnset MOVE_HELPING_HAND, 41
	learnset MOVE_ENERGY_BALL, 45
	learnset MOVE_ENDEAVOR, 49
	learnset MOVE_TAILWIND, 53
	learnset MOVE_MEMENTO, 57
    terminatelearnset


levelup SPECIES_WHIMSICOTT
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_SWITCHEROO, 1
	learnset MOVE_GUST, 25
	learnset MOVE_LEECH_SEED, 35
	learnset MOVE_HELPING_HAND, 40
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_TAILWIND, 55
    terminatelearnset


levelup SPECIES_PETILIL
	learnset MOVE_ABSORB, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_RAZOR_LEAF, 4
	learnset MOVE_WORRY_SEED, 7
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_SLEEP_POWDER, 10
	learnset MOVE_STUN_SPORE, 10
	learnset MOVE_GROWTH, 13
	learnset MOVE_MEGA_DRAIN, 16
	learnset MOVE_AROMATHERAPY, 19
	learnset MOVE_HELPING_HAND, 22
	learnset MOVE_LEECH_SEED, 25
	learnset MOVE_EXTRASENSORY, 28
	learnset MOVE_CHARM, 31
	learnset MOVE_ENTRAINMENT, 34
	learnset MOVE_RECOVER, 37
	learnset MOVE_INGRAIN, 41
	learnset MOVE_ENERGY_BALL, 45
	learnset MOVE_HEALING_WISH, 49
	learnset MOVE_QUIVER_DANCE, 53
	learnset MOVE_LEAF_STORM, 57
    terminatelearnset


levelup SPECIES_LILLIGANT
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_PETAL_DANCE, 25
	learnset MOVE_EXTRASENSORY, 35
	learnset MOVE_HELPING_HAND, 40
	learnset MOVE_QUIVER_DANCE, 50
	learnset MOVE_FIERY_DANCE, 55
    terminatelearnset


levelup SPECIES_BASCULIN
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_TACKLE, 4
	learnset MOVE_FLAIL, 8
	learnset MOVE_AQUA_JET, 12
	learnset MOVE_BITE, 16
	learnset MOVE_SCARY_FACE, 20
	learnset MOVE_HEADBUTT, 24
	learnset MOVE_SOAK, 28
	learnset MOVE_CRUNCH, 32
	learnset MOVE_TAKE_DOWN, 35
	learnset MOVE_AGILITY, 38
	learnset MOVE_FINAL_GAMBIT, 41
	learnset MOVE_AQUA_TAIL, 44
	learnset MOVE_REVENGE, 47
	learnset MOVE_PSYCHIC_FANGS, 50
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_WAVE_CRASH, 56
	learnset MOVE_HEAD_SMASH, 60
    terminatelearnset


levelup SPECIES_SANDILE
	learnset MOVE_LEER, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_BITE, 10
	learnset MOVE_TORMENT, 13
	learnset MOVE_HONE_CLAWS, 16
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_SPITE, 21
	learnset MOVE_PURSUIT, 23
	learnset MOVE_SCORCHING_SANDS, 25
	learnset MOVE_BEAT_UP, 28
	learnset MOVE_REVENGE, 31
	learnset MOVE_TORMENT, 34
	learnset MOVE_FOUL_PLAY, 38
	learnset MOVE_FIRE_FANG, 42
	learnset MOVE_THUNDER_FANG, 42
	learnset MOVE_HIGH_HORSEPOWER, 46
	learnset MOVE_RAGING_FURY, 50
	learnset MOVE_CRUNCH, 54
    terminatelearnset


levelup SPECIES_KROKOROK
	learnset MOVE_LEER, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_BITE, 10
	learnset MOVE_TORMENT, 13
	learnset MOVE_HONE_CLAWS, 16
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_SPITE, 21
	learnset MOVE_PURSUIT, 23
	learnset MOVE_SCORCHING_SANDS, 25
	learnset MOVE_ASSURANCE, 27
	learnset MOVE_BEAT_UP, 29
	learnset MOVE_REVENGE, 32
	learnset MOVE_TORMENT, 35
	learnset MOVE_FOUL_PLAY, 39
	learnset MOVE_FIRE_FANG, 43
	learnset MOVE_THUNDER_FANG, 43
	learnset MOVE_HIGH_HORSEPOWER, 47
	learnset MOVE_RAGING_FURY, 51
	learnset MOVE_CRUNCH, 55
	learnset MOVE_CLOSE_COMBAT, 59
	learnset MOVE_SUCKER_PUNCH, 63
    terminatelearnset


levelup SPECIES_KROOKODILE
	learnset MOVE_COUNTER, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_BITE, 10
	learnset MOVE_TORMENT, 13
	learnset MOVE_HONE_CLAWS, 16
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_SPITE, 21
	learnset MOVE_PURSUIT, 23
	learnset MOVE_SCORCHING_SANDS, 25
	learnset MOVE_ASSURANCE, 27
	learnset MOVE_BEAT_UP, 29
	learnset MOVE_REVENGE, 32
	learnset MOVE_TORMENT, 35
	learnset MOVE_FOUL_PLAY, 39
	learnset MOVE_PAYBACK, 40
	learnset MOVE_FIRE_FANG, 44
	learnset MOVE_THUNDER_FANG, 44
	learnset MOVE_HIGH_HORSEPOWER, 48
	learnset MOVE_RAGING_FURY, 52
	learnset MOVE_CRUNCH, 56
	learnset MOVE_CLOSE_COMBAT, 60
	learnset MOVE_SUCKER_PUNCH, 64
    terminatelearnset


levelup SPECIES_DARUMAKA
	learnset MOVE_YAWN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_INCINERATE, 6
	learnset MOVE_RAGE, 9
	learnset MOVE_FIRE_FANG, 11
	learnset MOVE_HEADBUTT, 14
	learnset MOVE_UPROAR, 17
	learnset MOVE_FACADE, 19
	learnset MOVE_FIRE_PUNCH, 22
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_EXTRASENSORY, 26
	learnset MOVE_FLAME_WHEEL, 28
	learnset MOVE_BELLY_DRUM, 30
	learnset MOVE_RAGING_FURY, 33
	learnset MOVE_LUNGE, 36
	learnset MOVE_ROLLOUT, 39
	learnset MOVE_FLARE_BLITZ, 42
	learnset MOVE_FOCUS_PUNCH, 45
    terminatelearnset


levelup SPECIES_DARMANITAN
	learnset MOVE_YAWN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_INCINERATE, 6
	learnset MOVE_RAGE, 9
	learnset MOVE_FIRE_FANG, 11
	learnset MOVE_HEADBUTT, 14
	learnset MOVE_UPROAR, 17
	learnset MOVE_FACADE, 19
	learnset MOVE_FIRE_PUNCH, 22
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_EXTRASENSORY, 26
	learnset MOVE_FLAME_WHEEL, 28
	learnset MOVE_BELLY_DRUM, 30
	learnset MOVE_RAGING_FURY, 33
	learnset MOVE_HAMMER_ARM, 35
	learnset MOVE_ZEN_HEADBUTT, 39
	learnset MOVE_LUNGE, 43
	learnset MOVE_ROLLOUT, 47
	learnset MOVE_FLARE_BLITZ, 51
	learnset MOVE_FOCUS_PUNCH, 55
    terminatelearnset


levelup SPECIES_MARACTUS
	learnset MOVE_BOUNCE, 1
	learnset MOVE_AFTER_YOU, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 4
	learnset MOVE_MEGA_DRAIN, 8
	learnset MOVE_LEECH_SEED, 12
	learnset MOVE_SUCKER_PUNCH, 16
	learnset MOVE_PIN_MISSILE, 20
	learnset MOVE_GIGA_DRAIN, 24
	learnset MOVE_SPIKES, 27
	learnset MOVE_SEED_BOMB, 30
	learnset MOVE_SYNTHESIS, 33
	learnset MOVE_COTTON_SPORE, 36
	learnset MOVE_SCALD, 39
	learnset MOVE_NEEDLE_ARM, 42
	learnset MOVE_DRAIN_PUNCH, 45
	learnset MOVE_PETAL_DANCE, 48
	learnset MOVE_ACUPRESSURE, 52
	learnset MOVE_WOOD_HAMMER, 56
	learnset MOVE_COTTON_GUARD, 60
    terminatelearnset


levelup SPECIES_DWEBBLE
	learnset MOVE_CURSE, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_WITHDRAW, 4
	learnset MOVE_ROCK_TOMB, 8
	learnset MOVE_BUG_BITE, 12
	learnset MOVE_FLAIL, 16
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_SPIKES, 22
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_SLASH, 27
	learnset MOVE_NIGHT_SLASH, 27
	learnset MOVE_ROCK_POLISH, 30
	learnset MOVE_ROCK_BLAST, 34
	learnset MOVE_X_SCISSOR, 38
	learnset MOVE_STEALTH_ROCK, 42
	learnset MOVE_SHELL_SMASH, 46
	learnset MOVE_ROCK_WRECKER, 50
    terminatelearnset


levelup SPECIES_CRUSTLE
	learnset MOVE_CURSE, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_WITHDRAW, 4
	learnset MOVE_ROCK_TOMB, 8
	learnset MOVE_BUG_BITE, 12
	learnset MOVE_FLAIL, 16
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_SPIKES, 22
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_SLASH, 27
	learnset MOVE_NIGHT_SLASH, 27
	learnset MOVE_ROCK_POLISH, 30
	learnset MOVE_ROCK_BLAST, 34
	learnset MOVE_IRON_DEFENSE, 38
	learnset MOVE_X_SCISSOR, 42
	learnset MOVE_STEALTH_ROCK, 46
	learnset MOVE_SHELL_SMASH, 50
	learnset MOVE_ROCK_WRECKER, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_ACCELEROCK, 62
    terminatelearnset


levelup SPECIES_SCRAGGY
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BEAT_UP, 4
	learnset MOVE_QUICK_GUARD, 7
	learnset MOVE_ACID_SPRAY, 10
	learnset MOVE_FEINT_ATTACK, 13
	learnset MOVE_BRICK_BREAK, 16
	learnset MOVE_DETECT, 19
	learnset MOVE_AMNESIA, 22
	learnset MOVE_FAKE_OUT, 25
	learnset MOVE_PAYBACK, 28
	learnset MOVE_CHIP_AWAY, 31
	learnset MOVE_DRAIN_PUNCH, 34
	learnset MOVE_ASSURANCE, 38
	learnset MOVE_ZEN_HEADBUTT, 42
	learnset MOVE_CRUNCH, 46
	learnset MOVE_HIGH_JUMP_KICK, 50
	learnset MOVE_DRAGON_DANCE, 54
	learnset MOVE_FOCUS_PUNCH, 58
	learnset MOVE_HEAD_SMASH, 62
    terminatelearnset


levelup SPECIES_SCRAFTY
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BEAT_UP, 4
	learnset MOVE_QUICK_GUARD, 7
	learnset MOVE_ACID_SPRAY, 10
	learnset MOVE_FEINT_ATTACK, 13
	learnset MOVE_BRICK_BREAK, 16
	learnset MOVE_DETECT, 19
	learnset MOVE_AMNESIA, 22
	learnset MOVE_FAKE_OUT, 25
	learnset MOVE_PAYBACK, 28
	learnset MOVE_REVENGE, 30
	learnset MOVE_CHIP_AWAY, 34
	learnset MOVE_DRAIN_PUNCH, 38
	learnset MOVE_ASSURANCE, 42
	learnset MOVE_ZEN_HEADBUTT, 46
	learnset MOVE_CRUNCH, 50
	learnset MOVE_HIGH_JUMP_KICK, 54
	learnset MOVE_DRAGON_DANCE, 58
	learnset MOVE_FOCUS_PUNCH, 62
	learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_SIGILYPH
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_GRAVITY, 1
	learnset MOVE_MIRACLE_EYE, 1
	learnset MOVE_SWIFT, 4
	learnset MOVE_HYPNOSIS, 7
	learnset MOVE_PSYWAVE, 10
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_GUST, 16
	learnset MOVE_PSYCHO_SHIFT, 19
	learnset MOVE_ANCIENT_POWER, 22
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_WHIRLWIND, 31
	learnset MOVE_FUTURE_SIGHT, 34
	learnset MOVE_SYNCHRONOISE, 37
	learnset MOVE_AIR_SLASH, 40
	learnset MOVE_TRICK, 44
	learnset MOVE_PSYCHIC, 48
	learnset MOVE_TAILWIND, 52
	learnset MOVE_ESPER_WING, 56
	learnset MOVE_MIRROR_MOVE, 60
	learnset MOVE_SKY_ATTACK, 64
    terminatelearnset


levelup SPECIES_YAMASK
	learnset MOVE_ASTONISH, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_HAZE, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_SPITE, 4
	learnset MOVE_FAKE_TEARS, 7
	learnset MOVE_TRICK, 10
	learnset MOVE_DISABLE, 16
	learnset MOVE_WILL_O_WISP, 19
	learnset MOVE_NIGHT_SHADE, 22
	learnset MOVE_ALLY_SWITCH, 25
	learnset MOVE_OMINOUS_WIND, 28
	learnset MOVE_CURSE, 31
	learnset MOVE_IRON_DEFENSE, 34
	learnset MOVE_HEX, 37
	learnset MOVE_MEAN_LOOK, 40
	learnset MOVE_WONDER_ROOM, 43
	learnset MOVE_NIGHTMARE, 46
	learnset MOVE_PAIN_SPLIT, 49
	learnset MOVE_GRUDGE, 55
	learnset MOVE_NASTY_PLOT, 58
	learnset MOVE_DESTINY_BOND, 62
    terminatelearnset


levelup SPECIES_COFAGRIGUS
	learnset MOVE_GUARD_SPLIT, 1
	learnset MOVE_POWER_SPLIT, 1
	learnset MOVE_HAZE, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_SPITE, 4
	learnset MOVE_FAKE_TEARS, 7
	learnset MOVE_TRICK, 10
	learnset MOVE_DISABLE, 16
	learnset MOVE_WILL_O_WISP, 19
	learnset MOVE_NIGHT_SHADE, 22
	learnset MOVE_ALLY_SWITCH, 25
	learnset MOVE_OMINOUS_WIND, 28
	learnset MOVE_CURSE, 31
	learnset MOVE_IRON_DEFENSE, 34
	learnset MOVE_SCARY_FACE, 34
	learnset MOVE_HEX, 38
	learnset MOVE_MEAN_LOOK, 41
	learnset MOVE_WONDER_ROOM, 44
	learnset MOVE_NIGHTMARE, 47
	learnset MOVE_PAIN_SPLIT, 50
	learnset MOVE_GRUDGE, 56
	learnset MOVE_NASTY_PLOT, 60
	learnset MOVE_DESTINY_BOND, 64
    terminatelearnset


levelup SPECIES_TIRTOUGA
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_PROTECT, 3
	learnset MOVE_AQUA_JET, 6
	learnset MOVE_SMACK_DOWN, 9
	learnset MOVE_ANCIENT_POWER, 12
	learnset MOVE_BITE, 15
	learnset MOVE_WHIRLPOOL, 18
	learnset MOVE_RAZOR_SHELL, 21
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_CRUNCH, 27
	learnset MOVE_CURSE, 30
	learnset MOVE_IRON_DEFENSE, 33
	learnset MOVE_AQUA_TAIL, 36
	learnset MOVE_BODY_SLAM, 39
	learnset MOVE_WIDE_GUARD, 42
	learnset MOVE_HYDRO_PUMP, 45
	learnset MOVE_SHELL_SMASH, 48
	learnset MOVE_WAVE_CRASH, 53
    terminatelearnset


levelup SPECIES_CARRACOSTA
	learnset MOVE_AQUA_JET, 1
	learnset MOVE_ACCELEROCK, 1
	learnset MOVE_PSYCHIC_FANGS, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_SMACK_DOWN, 9
	learnset MOVE_ANCIENT_POWER, 12
	learnset MOVE_BITE, 15
	learnset MOVE_WHIRLPOOL, 18
	learnset MOVE_RAZOR_SHELL, 21
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_CRUNCH, 27
	learnset MOVE_CURSE, 30
	learnset MOVE_IRON_DEFENSE, 33
	learnset MOVE_AQUA_TAIL, 36
	learnset MOVE_RAPID_SPIN, 37
	learnset MOVE_BODY_SLAM, 41
	learnset MOVE_WIDE_GUARD, 45
	learnset MOVE_HYDRO_PUMP, 49
	learnset MOVE_SHELL_SMASH, 53
	learnset MOVE_WAVE_CRASH, 58
    terminatelearnset


levelup SPECIES_ARCHEN
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_BITE, 3
	learnset MOVE_WING_ATTACK, 6
	learnset MOVE_DRAGON_BREATH, 9
	learnset MOVE_ANCIENT_POWER, 12
	learnset MOVE_ROCK_THROW, 15
	learnset MOVE_QUICK_GUARD, 18
	learnset MOVE_ROCK_TOMB, 21
	learnset MOVE_PLUCK, 24
	learnset MOVE_SCARY_FACE, 27
	learnset MOVE_CRUNCH, 30
	learnset MOVE_AGILITY, 33
	learnset MOVE_ASSURANCE, 36
	learnset MOVE_SWITCHEROO, 39
	learnset MOVE_ROCK_SLIDE, 42
	learnset MOVE_ENDEAVOR, 45
	learnset MOVE_ZEN_HEADBUTT, 48
	learnset MOVE_LUNGE, 51
    terminatelearnset


levelup SPECIES_ARCHEOPS
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_BITE, 3
	learnset MOVE_WING_ATTACK, 6
	learnset MOVE_DRAGON_BREATH, 9
	learnset MOVE_ANCIENT_POWER, 12
	learnset MOVE_ROCK_THROW, 15
	learnset MOVE_QUICK_GUARD, 18
	learnset MOVE_ROCK_TOMB, 21
	learnset MOVE_PLUCK, 24
	learnset MOVE_SCARY_FACE, 27
	learnset MOVE_CRUNCH, 30
	learnset MOVE_AGILITY, 33
	learnset MOVE_ASSURANCE, 36
	learnset MOVE_STEEL_WING, 37
	learnset MOVE_SWITCHEROO, 41
	learnset MOVE_ROCK_SLIDE, 45
	learnset MOVE_ENDEAVOR, 49
	learnset MOVE_ZEN_HEADBUTT, 53
	learnset MOVE_TAILWIND, 57
	learnset MOVE_LUNGE, 61
	learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_TRUBBISH
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_CURSE, 7
	learnset MOVE_ROCK_BLAST, 10
	learnset MOVE_ACID_SPRAY, 13
	learnset MOVE_TOXIC, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_CLEAR_SMOG, 22
	learnset MOVE_FLING, 25
	learnset MOVE_SLUDGE, 28
	learnset MOVE_RECYCLE, 31
	learnset MOVE_STOCKPILE, 34
	learnset MOVE_SWALLOW, 34
	learnset MOVE_CROSS_POISON, 37
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_PAIN_SPLIT, 44
	learnset MOVE_AMNESIA, 48
	learnset MOVE_PAYBACK, 52
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_SELF_DESTRUCT, 60
    terminatelearnset


levelup SPECIES_GARBODOR
	learnset MOVE_AUTOTOMIZE, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_CURSE, 7
	learnset MOVE_ROCK_BLAST, 10
	learnset MOVE_ACID_SPRAY, 13
	learnset MOVE_TOXIC, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_CLEAR_SMOG, 22
	learnset MOVE_FLING, 25
	learnset MOVE_SLUDGE, 28
	learnset MOVE_RECYCLE, 31
	learnset MOVE_STOCKPILE, 34
	learnset MOVE_SWALLOW, 34
	learnset MOVE_SPIKES, 36
	learnset MOVE_TOXIC_SPIKES, 36
	learnset MOVE_CROSS_POISON, 39
	learnset MOVE_BODY_SLAM, 42
	learnset MOVE_PAIN_SPLIT, 45
	learnset MOVE_AMNESIA, 49
	learnset MOVE_PAYBACK, 53
	learnset MOVE_DOUBLE_EDGE, 58
	learnset MOVE_SELF_DESTRUCT, 62
    terminatelearnset


levelup SPECIES_ZORUA
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_COVET, 7
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_TORMENT, 13
	learnset MOVE_FURY_SWIPES, 16
	learnset MOVE_IMPRISON, 19
	learnset MOVE_SCARY_FACE, 22
	learnset MOVE_FEINT_ATTACK, 25
	learnset MOVE_MEMENTO, 28
	learnset MOVE_PAYBACK, 31
	learnset MOVE_UPROAR, 34
	learnset MOVE_CAPTIVATE, 38
	learnset MOVE_SLASH, 42
	learnset MOVE_NIGHT_SLASH, 42
	learnset MOVE_COUNTER, 46
	learnset MOVE_SUCKER_PUNCH, 50
	learnset MOVE_HEX, 54
	learnset MOVE_NIGHT_DAZE, 58
	learnset MOVE_EXTRASENSORY, 62
    terminatelearnset


levelup SPECIES_ZOROARK
	learnset MOVE_AGILITY, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_PURSUIT, 4
	learnset MOVE_COVET, 7
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_TORMENT, 13
	learnset MOVE_FURY_SWIPES, 16
	learnset MOVE_IMPRISON, 19
	learnset MOVE_SCARY_FACE, 22
	learnset MOVE_FEINT_ATTACK, 25
	learnset MOVE_MEMENTO, 28
	learnset MOVE_SNARL, 30
	learnset MOVE_PAYBACK, 34
	learnset MOVE_UPROAR, 38
	learnset MOVE_CAPTIVATE, 42
	learnset MOVE_SLASH, 45
	learnset MOVE_NIGHT_SLASH, 45
	learnset MOVE_COUNTER, 48
	learnset MOVE_SUCKER_PUNCH, 51
	learnset MOVE_HEX, 54
	learnset MOVE_LUNGE, 57
	learnset MOVE_NIGHT_DAZE, 60
	learnset MOVE_EXTRASENSORY, 63
	learnset MOVE_FOUL_PLAY, 66
	learnset MOVE_NASTY_PLOT, 70
    terminatelearnset


levelup SPECIES_MINCCINO
	learnset MOVE_POUND, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_CAPTIVATE, 4
	learnset MOVE_AFTER_YOU, 7
	learnset MOVE_SWIFT, 10
	learnset MOVE_CHARM, 13
	learnset MOVE_FAKE_TEARS, 16
	learnset MOVE_COVET, 19
	learnset MOVE_TICKLE, 22
	learnset MOVE_DOUBLE_SLAP, 25
	learnset MOVE_SING, 28
	learnset MOVE_FLAIL, 31
	learnset MOVE_UPROAR, 34
	learnset MOVE_HELPING_HAND, 37
	learnset MOVE_TAIL_SLAP, 40
	learnset MOVE_WAKE_UP_SLAP, 44
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_TRIPLE_AXEL, 52
	learnset MOVE_ENCORE, 56
	learnset MOVE_LAST_RESORT, 60
    terminatelearnset


levelup SPECIES_CINCCINO
	learnset MOVE_LAST_RESORT, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SING, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_WAKE_UP_SLAP, 1
	learnset MOVE_TAIL_SLAP, 35
	learnset MOVE_BULLET_SEED, 45
	learnset MOVE_ROCK_BLAST, 55
	learnset MOVE_TRIPLE_AXEL, 65
    terminatelearnset


levelup SPECIES_GOTHITA
	learnset MOVE_CONFUSION, 1
	learnset MOVE_POUND, 1
	learnset MOVE_TORMENT, 4
	learnset MOVE_TICKLE, 7
	learnset MOVE_MEAN_LOOK, 10
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_CHARM, 16
	learnset MOVE_PAYBACK, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_HYPNOSIS, 25
	learnset MOVE_FAKE_TEARS, 28
	learnset MOVE_HELPING_HAND, 31
	learnset MOVE_FEINT_ATTACK, 34
	learnset MOVE_MAGIC_ROOM, 37
	learnset MOVE_FUTURE_SIGHT, 41
	learnset MOVE_HEAL_PULSE, 45
	learnset MOVE_DARK_PULSE, 49
	learnset MOVE_HEAL_BLOCK, 53
	learnset MOVE_NIGHT_DAZE, 57
    terminatelearnset


levelup SPECIES_GOTHORITA
	learnset MOVE_CONFUSION, 1
	learnset MOVE_POUND, 1
	learnset MOVE_TORMENT, 4
	learnset MOVE_TICKLE, 7
	learnset MOVE_MEAN_LOOK, 10
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_CHARM, 16
	learnset MOVE_PAYBACK, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_HYPNOSIS, 25
	learnset MOVE_FAKE_TEARS, 28
	learnset MOVE_FAKE_OUT, 30
	learnset MOVE_HELPING_HAND, 33
	learnset MOVE_FEINT_ATTACK, 36
	learnset MOVE_MAGIC_ROOM, 39
	learnset MOVE_FUTURE_SIGHT, 42
	learnset MOVE_HEAL_PULSE, 46
	learnset MOVE_DARK_PULSE, 50
	learnset MOVE_HEAL_BLOCK, 54
	learnset MOVE_NIGHT_DAZE, 58
    terminatelearnset


levelup SPECIES_GOTHITELLE
	learnset MOVE_ALLY_SWITCH, 1
	learnset MOVE_HEAL_BELL, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_POUND, 1
	learnset MOVE_TORMENT, 4
	learnset MOVE_TICKLE, 7
	learnset MOVE_MEAN_LOOK, 10
	learnset MOVE_MAGIC_COAT, 13
	learnset MOVE_CHARM, 16
	learnset MOVE_PAYBACK, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_HYPNOSIS, 25
	learnset MOVE_FAKE_TEARS, 28
	learnset MOVE_FAKE_OUT, 30
	learnset MOVE_HELPING_HAND, 33
	learnset MOVE_FEINT_ATTACK, 36
	learnset MOVE_MAGIC_ROOM, 39
	learnset MOVE_DARK_PULSE, 41
	learnset MOVE_FUTURE_SIGHT, 45
	learnset MOVE_HEAL_PULSE, 49
	learnset MOVE_NASTY_PLOT, 53
	learnset MOVE_HEAL_BLOCK, 57
	learnset MOVE_NIGHT_DAZE, 62
    terminatelearnset


levelup SPECIES_SOLOSIS
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ENDEAVOR, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_SNATCH, 7
	learnset MOVE_PSYWAVE, 10
	learnset MOVE_MAGIC_COAT, 13
	learnset MOVE_CHARM, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_ALLY_SWITCH, 25
	learnset MOVE_CONFUSE_RAY, 28
	learnset MOVE_HELPING_HAND, 31
	learnset MOVE_NIGHT_SHADE, 34
	learnset MOVE_WONDER_ROOM, 37
	learnset MOVE_FUTURE_SIGHT, 41
	learnset MOVE_PAIN_SPLIT, 45
	learnset MOVE_SKILL_SWAP, 49
	learnset MOVE_RECOVER, 53
	learnset MOVE_STORED_POWER, 57
    terminatelearnset


levelup SPECIES_DUOSION
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ENDEAVOR, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_SNATCH, 7
	learnset MOVE_PSYWAVE, 10
	learnset MOVE_MAGIC_COAT, 13
	learnset MOVE_CHARM, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_ALLY_SWITCH, 25
	learnset MOVE_CONFUSE_RAY, 28
	learnset MOVE_IMPRISON, 30
	learnset MOVE_HELPING_HAND, 33
	learnset MOVE_NIGHT_SHADE, 36
	learnset MOVE_WONDER_ROOM, 39
	learnset MOVE_FUTURE_SIGHT, 42
	learnset MOVE_PAIN_SPLIT, 46
	learnset MOVE_SKILL_SWAP, 50
	learnset MOVE_RECOVER, 54
	learnset MOVE_STORED_POWER, 58
    terminatelearnset


levelup SPECIES_REUNICLUS
	learnset MOVE_DRAIN_PUNCH, 1
	learnset MOVE_DIZZY_PUNCH, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ENDEAVOR, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_SNATCH, 7
	learnset MOVE_PSYWAVE, 10
	learnset MOVE_MAGIC_COAT, 13
	learnset MOVE_CHARM, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_PSYBEAM, 22
	learnset MOVE_ALLY_SWITCH, 25
	learnset MOVE_CONFUSE_RAY, 28
	learnset MOVE_IMPRISON, 30
	learnset MOVE_HELPING_HAND, 33
	learnset MOVE_NIGHT_SHADE, 36
	learnset MOVE_WONDER_ROOM, 39
	learnset MOVE_HAMMER_ARM, 41
	learnset MOVE_FUTURE_SIGHT, 45
	learnset MOVE_ACID_ARMOR, 49
	learnset MOVE_PAIN_SPLIT, 53
	learnset MOVE_SKILL_SWAP, 56
	learnset MOVE_RECOVER, 59
	learnset MOVE_STORED_POWER, 62
    terminatelearnset


levelup SPECIES_DUCKLETT
	learnset MOVE_DEFOG, 1
	learnset MOVE_PECK, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_WING_ATTACK, 7
	learnset MOVE_LUCKY_CHANT, 10
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_GUST, 16
	learnset MOVE_WATER_PULSE, 19
	learnset MOVE_AQUA_JET, 22
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_AQUA_RING, 28
	learnset MOVE_BRINE, 31
	learnset MOVE_ICY_WIND, 34
	learnset MOVE_BUBBLE_BEAM, 37
	learnset MOVE_UPROAR, 41
	learnset MOVE_MIRROR_MOVE, 45
	learnset MOVE_AIR_SLASH, 49
	learnset MOVE_TAILWIND, 53
	learnset MOVE_BRAVE_BIRD, 57
    terminatelearnset


levelup SPECIES_SWANNA
	learnset MOVE_DEFOG, 1
	learnset MOVE_PECK, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_WING_ATTACK, 7
	learnset MOVE_LUCKY_CHANT, 10
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_GUST, 16
	learnset MOVE_WATER_PULSE, 19
	learnset MOVE_AQUA_JET, 22
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_AQUA_RING, 28
	learnset MOVE_BRINE, 31
	learnset MOVE_ICY_WIND, 34
	learnset MOVE_ENDEAVOR, 35
	learnset MOVE_BUBBLE_BEAM, 38
	learnset MOVE_UPROAR, 42
	learnset MOVE_MIRROR_MOVE, 46
	learnset MOVE_AIR_SLASH, 50
	learnset MOVE_TAILWIND, 54
	learnset MOVE_BRAVE_BIRD, 58
	learnset MOVE_HYDRO_PUMP, 62
	learnset MOVE_SKY_ATTACK, 66
    terminatelearnset


levelup SPECIES_VANILLITE
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_HAIL, 1
	learnset MOVE_ICICLE_SPEAR, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_POWDER_SNOW, 12
	learnset MOVE_ICE_SHARD, 14
	learnset MOVE_MIRROR_SHOT, 17
	learnset MOVE_ICY_WIND, 20
	learnset MOVE_DISARMING_VOICE, 23
	learnset MOVE_ALLY_SWITCH, 26
	learnset MOVE_AURORA_BEAM, 29
	learnset MOVE_UPROAR, 32
	learnset MOVE_NATURAL_GIFT, 36
	learnset MOVE_REFRESH, 40
	learnset MOVE_ACID_ARMOR, 44
	learnset MOVE_FROST_BREATH, 48
	learnset MOVE_RAPID_SPIN, 52
    terminatelearnset


levelup SPECIES_VANILLISH
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_HAIL, 1
	learnset MOVE_ICICLE_SPEAR, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_POWDER_SNOW, 12
	learnset MOVE_ICE_SHARD, 14
	learnset MOVE_MIRROR_SHOT, 17
	learnset MOVE_ICY_WIND, 20
	learnset MOVE_DISARMING_VOICE, 23
	learnset MOVE_ALLY_SWITCH, 26
	learnset MOVE_AURORA_BEAM, 29
	learnset MOVE_UPROAR, 32
	learnset MOVE_NATURAL_GIFT, 36
	learnset MOVE_REFRESH, 40
	learnset MOVE_ACID_ARMOR, 44
	learnset MOVE_FROST_BREATH, 48
	learnset MOVE_RAPID_SPIN, 52
	learnset MOVE_EXTRASENSORY, 56
	learnset MOVE_HAZE, 60
    terminatelearnset


levelup SPECIES_VANILLUXE
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_HAIL, 1
	learnset MOVE_ICICLE_SPEAR, 4
	learnset MOVE_SWIFT, 7
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_POWDER_SNOW, 12
	learnset MOVE_ICE_SHARD, 14
	learnset MOVE_MIRROR_SHOT, 17
	learnset MOVE_ICY_WIND, 20
	learnset MOVE_DISARMING_VOICE, 23
	learnset MOVE_ALLY_SWITCH, 26
	learnset MOVE_AURORA_BEAM, 29
	learnset MOVE_UPROAR, 32
	learnset MOVE_NATURAL_GIFT, 36
	learnset MOVE_REFRESH, 40
	learnset MOVE_ACID_ARMOR, 44
	learnset MOVE_FROST_BREATH, 48
	learnset MOVE_RAPID_SPIN, 52
	learnset MOVE_EXTRASENSORY, 56
	learnset MOVE_HAZE, 61
	learnset MOVE_HYPER_VOICE, 66
	learnset MOVE_AUTOTOMIZE, 71
	learnset MOVE_SHEER_COLD, 76
    terminatelearnset


levelup SPECIES_DEERLING
	learnset MOVE_CAMOUFLAGE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_SYNTHESIS, 23
	learnset MOVE_JUMP_KICK, 26
	learnset MOVE_AROMATHERAPY, 29
	learnset MOVE_SEED_BOMB, 32
	learnset MOVE_CHARM, 35
	learnset MOVE_AGILITY, 38
	learnset MOVE_HIGH_HORSEPOWER, 41
	learnset MOVE_NATURE_POWER, 44
	learnset MOVE_DOUBLE_EDGE, 48
	learnset MOVE_SOLAR_BEAM, 52
    terminatelearnset


levelup SPECIES_SAWSBUCK
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_CAPTIVATE, 1
	learnset MOVE_CAMOUFLAGE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_SYNTHESIS, 23
	learnset MOVE_JUMP_KICK, 26
	learnset MOVE_AROMATHERAPY, 29
	learnset MOVE_SEED_BOMB, 32
	learnset MOVE_LUNGE, 34
	learnset MOVE_CHARM, 35
	learnset MOVE_AGILITY, 38
	learnset MOVE_HORN_LEECH, 40
	learnset MOVE_HIGH_HORSEPOWER, 42
	learnset MOVE_NATURE_POWER, 45
	learnset MOVE_MEGAHORN, 48
	learnset MOVE_DOUBLE_EDGE, 51
	learnset MOVE_BOUNCE, 55
	learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset


levelup SPECIES_EMOLGA
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_CHARGE, 7
	learnset MOVE_SPARK, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_SHOCK_WAVE, 16
	learnset MOVE_COVET, 19
	learnset MOVE_NUZZLE, 22
	learnset MOVE_ELECTRO_BALL, 26
	learnset MOVE_AIR_CUTTER, 30
	learnset MOVE_AGILITY, 34
	learnset MOVE_DUAL_WINGBEAT, 38
	learnset MOVE_TICKLE, 42
	learnset MOVE_TAILWIND, 45
	learnset MOVE_IRON_TAIL, 48
	learnset MOVE_HELPING_HAND, 51
	learnset MOVE_WILD_CHARGE, 54
	learnset MOVE_DISCHARGE, 58
	learnset MOVE_BATON_PASS, 62
	learnset MOVE_LAST_RESORT, 66
    terminatelearnset


levelup SPECIES_KARRABLAST
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ENDURE, 4
	learnset MOVE_COUNTER, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_ACID_SPRAY, 20
	learnset MOVE_BUG_BITE, 24
	learnset MOVE_FEINT_ATTACK, 28
	learnset MOVE_IRON_DEFENSE, 32
	learnset MOVE_FURY_CUTTER, 36
	learnset MOVE_SLASH, 40
	learnset MOVE_NIGHT_SLASH, 40
	learnset MOVE_BUG_BUZZ, 44
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_SCARY_FACE, 52
	learnset MOVE_MEGAHORN, 56
    terminatelearnset


levelup SPECIES_ESCAVALIER
	learnset MOVE_REVENGE, 1
	learnset MOVE_QUICK_GUARD, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ENDURE, 4
	learnset MOVE_COUNTER, 7
	learnset MOVE_FLAIL, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_HEADBUTT, 16
	learnset MOVE_ACID_SPRAY, 20
	learnset MOVE_BUG_BITE, 24
	learnset MOVE_FEINT_ATTACK, 28
	learnset MOVE_IRON_DEFENSE, 32
	learnset MOVE_FURY_CUTTER, 36
	learnset MOVE_SLASH, 39
	learnset MOVE_NIGHT_SLASH, 39
	learnset MOVE_TWINEEDLE, 42
	learnset MOVE_SMART_STRIKE, 45
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_RAZOR_SHELL, 51
	learnset MOVE_METAL_BURST, 54
	learnset MOVE_MEGAHORN, 57
	learnset MOVE_REVERSAL, 60
	learnset MOVE_DOUBLE_EDGE, 63
	learnset MOVE_CLOSE_COMBAT, 66
    terminatelearnset


levelup SPECIES_FOONGUS
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_GROWTH, 4
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_AFTER_YOU, 13
	learnset MOVE_DEFENSE_CURL, 16
	learnset MOVE_SLUDGE, 19
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_MEGA_DRAIN, 25
	learnset MOVE_FEINT_ATTACK, 28
	learnset MOVE_CLEAR_SMOG, 31
	learnset MOVE_GASTRO_ACID, 34
	learnset MOVE_WORRY_SEED, 37
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_RAGE_POWDER, 44
	learnset MOVE_SYNTHESIS, 48
	learnset MOVE_FOUL_PLAY, 52
	learnset MOVE_SPORE, 56
	learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset


levelup SPECIES_AMOONGUSS
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_GROWTH, 4
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_POISON_POWDER, 10
	learnset MOVE_AFTER_YOU, 13
	learnset MOVE_DEFENSE_CURL, 16
	learnset MOVE_SLUDGE, 19
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_MEGA_DRAIN, 25
	learnset MOVE_FEINT_ATTACK, 28
	learnset MOVE_CLEAR_SMOG, 31
	learnset MOVE_GASTRO_ACID, 34
	learnset MOVE_WORRY_SEED, 37
	learnset MOVE_INGRAIN, 39
	learnset MOVE_BODY_SLAM, 43
	learnset MOVE_RAGE_POWDER, 47
	learnset MOVE_SYNTHESIS, 51
	learnset MOVE_FOUL_PLAY, 55
	learnset MOVE_SPORE, 59
	learnset MOVE_SOLAR_BEAM, 63
    terminatelearnset


levelup SPECIES_FRILLISH
	learnset MOVE_ABSORB, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_NIGHT_SHADE, 8
	learnset MOVE_WATER_PULSE, 12
	learnset MOVE_SOAK, 16
	learnset MOVE_HEX, 20
	learnset MOVE_SPITE, 23
	learnset MOVE_BRINE, 26
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_SHADOW_BALL, 31
	learnset MOVE_WILL_O_WISP, 34
	learnset MOVE_WHIRLPOOL, 37
	learnset MOVE_ACID_ARMOR, 40
	learnset MOVE_RECOVER, 44
	learnset MOVE_HYDRO_PUMP, 48
	learnset MOVE_DESTINY_BOND, 52
	learnset MOVE_WATER_SPOUT, 56
    terminatelearnset


levelup SPECIES_JELLICENT
	learnset MOVE_TRICK, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_NIGHT_SHADE, 8
	learnset MOVE_WATER_PULSE, 12
	learnset MOVE_SOAK, 16
	learnset MOVE_HEX, 20
	learnset MOVE_SPITE, 23
	learnset MOVE_BRINE, 26
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_SHADOW_BALL, 31
	learnset MOVE_WILL_O_WISP, 34
	learnset MOVE_WHIRLPOOL, 38
	learnset MOVE_WRING_OUT, 40
	learnset MOVE_ACID_ARMOR, 42
	learnset MOVE_RECOVER, 47
	learnset MOVE_GIGA_DRAIN, 50
	learnset MOVE_HYDRO_PUMP, 53
	learnset MOVE_DESTINY_BOND, 56
	learnset MOVE_WATER_SPOUT, 60
    terminatelearnset


levelup SPECIES_ALOMOMOLA
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_POUND, 1
	learnset MOVE_PAIN_SPLIT, 1
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_AQUA_RING, 5
	learnset MOVE_AQUA_JET, 9
	learnset MOVE_DOUBLE_SLAP, 13
	learnset MOVE_HEAL_PULSE, 17
	learnset MOVE_PROTECT, 21
	learnset MOVE_WATER_PULSE, 25
	learnset MOVE_WAKE_UP_SLAP, 29
	learnset MOVE_SOAK, 33
	learnset MOVE_WISH, 37
	learnset MOVE_BRINE, 41
	learnset MOVE_SAFEGUARD, 45
	learnset MOVE_WHIRLPOOL, 49
	learnset MOVE_HELPING_HAND, 53
	learnset MOVE_HEALING_WISH, 57
	learnset MOVE_WIDE_GUARD, 61
	learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset


levelup SPECIES_JOLTIK
	learnset MOVE_ABSORB, 1
	learnset MOVE_INFESTATION, 1
	learnset MOVE_SPIDER_WEB, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_CAMOUFLAGE, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_NUZZLE, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_PIN_MISSILE, 16
	learnset MOVE_AGILITY, 19
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_ELECTROWEB, 28
	learnset MOVE_STRUGGLE_BUG, 31
	learnset MOVE_DISABLE, 34
	learnset MOVE_SLASH, 37
	learnset MOVE_NIGHT_SLASH, 37
	learnset MOVE_GASTRO_ACID, 40
	learnset MOVE_LUNGE, 44
	learnset MOVE_SUCKER_PUNCH, 48
	learnset MOVE_CROSS_POISON, 52
	learnset MOVE_DISCHARGE, 56
	learnset MOVE_LEECH_LIFE, 60
    terminatelearnset


levelup SPECIES_GALVANTULA
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_INFESTATION, 1
	learnset MOVE_SPIDER_WEB, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_CAMOUFLAGE, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_NUZZLE, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_PIN_MISSILE, 16
	learnset MOVE_AGILITY, 19
	learnset MOVE_MEGA_DRAIN, 22
	learnset MOVE_ELECTRO_BALL, 25
	learnset MOVE_ELECTROWEB, 28
	learnset MOVE_STRUGGLE_BUG, 31
	learnset MOVE_DISABLE, 34
	learnset MOVE_SLASH, 37
	learnset MOVE_NIGHT_SLASH, 37
	learnset MOVE_SPIKES, 39
	learnset MOVE_GASTRO_ACID, 42
	learnset MOVE_LUNGE, 45
	learnset MOVE_SUCKER_PUNCH, 49
	learnset MOVE_CROSS_POISON, 53
	learnset MOVE_DISCHARGE, 57
	learnset MOVE_LEECH_LIFE, 61
    terminatelearnset


levelup SPECIES_FERROSEED
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ACID_SPRAY, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_PAYBACK, 13
	learnset MOVE_PIN_MISSILE, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_MIRROR_SHOT, 22
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_BULLET_SEED, 28
	learnset MOVE_ASSURANCE, 31
	learnset MOVE_LEECH_SEED, 34
	learnset MOVE_METAL_CLAW, 37
	learnset MOVE_SPIKES, 40
	learnset MOVE_REVENGE, 44
	learnset MOVE_INGRAIN, 48
	learnset MOVE_GRAVITY, 52
	learnset MOVE_STEALTH_ROCK, 56
	learnset MOVE_SELF_DESTRUCT, 60
    terminatelearnset


levelup SPECIES_FERROTHORN
	learnset MOVE_WORRY_SEED, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ACID_SPRAY, 7
	learnset MOVE_CURSE, 10
	learnset MOVE_PAYBACK, 13
	learnset MOVE_PIN_MISSILE, 16
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_MIRROR_SHOT, 22
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_BULLET_SEED, 28
	learnset MOVE_ASSURANCE, 31
	learnset MOVE_LEECH_SEED, 34
	learnset MOVE_METAL_CLAW, 37
	learnset MOVE_SPIKES, 40
	learnset MOVE_REVENGE, 44
	learnset MOVE_INGRAIN, 48
	learnset MOVE_HEAVY_SLAM, 51
	learnset MOVE_GRAVITY, 54
	learnset MOVE_STEALTH_ROCK, 57
	learnset MOVE_SELF_DESTRUCT, 60
	learnset MOVE_POWER_WHIP, 64
    terminatelearnset


levelup SPECIES_KLINK
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_BIND, 4
	learnset MOVE_CHARGE, 8
	learnset MOVE_CHARGE_BEAM, 12
	learnset MOVE_IRON_DEFENSE, 15
	learnset MOVE_MIRROR_SHOT, 18
	learnset MOVE_AUTOTOMIZE, 21
	learnset MOVE_ALLY_SWITCH, 24
	learnset MOVE_SPARK, 27
	learnset MOVE_GEAR_GRIND, 30
	learnset MOVE_RAPID_SPIN, 33
	learnset MOVE_ASSURANCE, 36
	learnset MOVE_DISCHARGE, 39
	learnset MOVE_SHIFT_GEAR, 42
	learnset MOVE_FLAME_WHEEL, 45
	learnset MOVE_HIGH_HORSEPOWER, 48
	learnset MOVE_LOCK_ON, 51
	learnset MOVE_ZAP_CANNON, 54
	learnset MOVE_HYPER_BEAM, 57
    terminatelearnset


levelup SPECIES_KLANG
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_BIND, 4
	learnset MOVE_CHARGE, 8
	learnset MOVE_CHARGE_BEAM, 12
	learnset MOVE_IRON_DEFENSE, 15
	learnset MOVE_MIRROR_SHOT, 18
	learnset MOVE_AUTOTOMIZE, 21
	learnset MOVE_ALLY_SWITCH, 24
	learnset MOVE_SPARK, 27
	learnset MOVE_GEAR_GRIND, 30
	learnset MOVE_RAPID_SPIN, 33
	learnset MOVE_ASSURANCE, 36
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_SHIFT_GEAR, 43
	learnset MOVE_FLAME_WHEEL, 46
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_LOCK_ON, 52
	learnset MOVE_ZAP_CANNON, 56
	learnset MOVE_HYPER_BEAM, 59
    terminatelearnset


levelup SPECIES_KLINKLANG
	learnset MOVE_SUPERPOWER, 1
	learnset MOVE_GEAR_GRIND, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_BIND, 4
	learnset MOVE_CHARGE, 8
	learnset MOVE_CHARGE_BEAM, 12
	learnset MOVE_IRON_DEFENSE, 15
	learnset MOVE_MIRROR_SHOT, 18
	learnset MOVE_AUTOTOMIZE, 21
	learnset MOVE_ALLY_SWITCH, 24
	learnset MOVE_SPARK, 27
	learnset MOVE_GEAR_GRIND, 30
	learnset MOVE_RAPID_SPIN, 33
	learnset MOVE_ASSURANCE, 36
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_SHIFT_GEAR, 43
	learnset MOVE_FLAME_WHEEL, 46
	learnset MOVE_HIGH_HORSEPOWER, 49
	learnset MOVE_GRAVITY, 52
	learnset MOVE_LOCK_ON, 55
	learnset MOVE_ZAP_CANNON, 59
	learnset MOVE_HYPER_BEAM, 62
    terminatelearnset


levelup SPECIES_TYNAMO
	learnset MOVE_SHOCK_WAVE, 1
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_NUZZLE, 1
    terminatelearnset


levelup SPECIES_EELEKTRIK
	learnset MOVE_SPARK, 1
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_NUZZLE, 1
	learnset MOVE_BIND, 9
	learnset MOVE_ACID, 19
	learnset MOVE_CRUNCH, 30
	learnset MOVE_SPARK, 32
	learnset MOVE_DRAINING_KISS, 34
	learnset MOVE_GASTRO_ACID, 36
	learnset MOVE_BREAKING_SWIPE, 38
	learnset MOVE_CHARGE_BEAM, 40
	learnset MOVE_ACID_SPRAY, 42
	learnset MOVE_DISCHARGE, 45
	learnset MOVE_PSYCHIC_FANGS, 48
	learnset MOVE_COIL, 52
	learnset MOVE_LEECH_LIFE, 56
	learnset MOVE_ZAP_CANNON, 60
    terminatelearnset


levelup SPECIES_EELEKTROSS
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_CRUNCH, 1
	learnset MOVE_CRUSH_CLAW, 1
	learnset MOVE_DISCHARGE, 1
	learnset MOVE_DRAGON_PULSE, 1
	learnset MOVE_DRAINING_KISS, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_GASTRO_ACID, 1
	learnset MOVE_OUTRAGE, 1
	learnset MOVE_NUZZLE, 1
	learnset MOVE_PSYCHIC_FANGS, 50
	learnset MOVE_COIL, 55
	learnset MOVE_LEECH_LIFE, 60
	learnset MOVE_ZAP_CANNON, 65
	learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_ELGYEM
	learnset MOVE_CONFUSION, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TRICK_ROOM, 1
	learnset MOVE_IMPRISON, 6
	learnset MOVE_TELEPORT, 8
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_DISABLE, 14
	learnset MOVE_TRICK_ROOM, 17
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_PAIN_SPLIT, 24
	learnset MOVE_MYSTICAL_FIRE, 27
	learnset MOVE_UPROAR, 30
	learnset MOVE_WONDER_ROOM, 33
	learnset MOVE_ZEN_HEADBUTT, 36
	learnset MOVE_ROLE_PLAY, 40
	learnset MOVE_MOONBLAST, 43
	learnset MOVE_GUARD_SPLIT, 46
	learnset MOVE_POWER_SPLIT, 46
	learnset MOVE_COSMIC_POWER, 49
	learnset MOVE_NASTY_PLOT, 52
	learnset MOVE_PSYCHIC, 55
	learnset MOVE_RECOVER, 58
	learnset MOVE_DESTINY_BOND, 61
	learnset MOVE_PSYCHO_BOOST, 64
    terminatelearnset


levelup SPECIES_BEHEEYEM
	learnset MOVE_CONFUSION, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TRICK_ROOM, 1
	learnset MOVE_IMPRISON, 6
	learnset MOVE_TELEPORT, 8
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_DISABLE, 14
	learnset MOVE_TRICK_ROOM, 17
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_PAIN_SPLIT, 24
	learnset MOVE_MYSTICAL_FIRE, 27
	learnset MOVE_UPROAR, 30
	learnset MOVE_WONDER_ROOM, 33
	learnset MOVE_ZEN_HEADBUTT, 36
	learnset MOVE_TRICK, 37
	learnset MOVE_ROLE_PLAY, 41
	learnset MOVE_MOONBLAST, 45
	learnset MOVE_GUARD_SPLIT, 49
	learnset MOVE_POWER_SPLIT, 49
	learnset MOVE_COSMIC_POWER, 52
	learnset MOVE_NASTY_PLOT, 55
	learnset MOVE_PSYCHIC, 58
	learnset MOVE_RECOVER, 61
	learnset MOVE_DESTINY_BOND, 65
	learnset MOVE_PSYCHO_BOOST, 69
    terminatelearnset


levelup SPECIES_LITWICK
	learnset MOVE_ACID, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CAPTIVATE, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_IMPRISON, 4
	learnset MOVE_SPITE, 6
	learnset MOVE_FIRE_SPIN, 8
	learnset MOVE_SMOG, 10
	learnset MOVE_CONFUSE_RAY, 12
	learnset MOVE_HAZE, 14
	learnset MOVE_NIGHT_SHADE, 17
	learnset MOVE_WILL_O_WISP, 20
	learnset MOVE_TRICK, 23
	learnset MOVE_HEX, 26
	learnset MOVE_ACID_ARMOR, 29
	learnset MOVE_ALLY_SWITCH, 32
	learnset MOVE_CURSE, 35
	learnset MOVE_PAIN_SPLIT, 38
	learnset MOVE_INFERNO, 42
	learnset MOVE_SHADOW_BALL, 46
	learnset MOVE_OVERHEAT, 50
	learnset MOVE_MEMENTO, 54
    terminatelearnset


levelup SPECIES_LAMPENT
	learnset MOVE_CLEAR_SMOG, 1
	learnset MOVE_ACID, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CAPTIVATE, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_IMPRISON, 4
	learnset MOVE_SPITE, 6
	learnset MOVE_FIRE_SPIN, 8
	learnset MOVE_SMOG, 10
	learnset MOVE_CONFUSE_RAY, 12
	learnset MOVE_HAZE, 14
	learnset MOVE_NIGHT_SHADE, 17
	learnset MOVE_WILL_O_WISP, 20
	learnset MOVE_TRICK, 23
	learnset MOVE_HEX, 26
	learnset MOVE_FLAME_BURST, 27
	learnset MOVE_ACID_ARMOR, 29
	learnset MOVE_ALLY_SWITCH, 33
	learnset MOVE_CURSE, 37
	learnset MOVE_PAIN_SPLIT, 41
	learnset MOVE_INFERNO, 45
	learnset MOVE_SHADOW_BALL, 49
	learnset MOVE_POWER_SPLIT, 53
	learnset MOVE_OVERHEAT, 57
	learnset MOVE_MEMENTO, 61
    terminatelearnset


levelup SPECIES_CHANDELURE
	learnset MOVE_ACID_ARMOR, 1
	learnset MOVE_ALLY_SWITCH, 1
	learnset MOVE_CLEAR_SMOG, 1
	learnset MOVE_HAZE, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_NIGHT_SHADE, 1
	learnset MOVE_HEX, 40
	learnset MOVE_INFERNO, 50
	learnset MOVE_PAIN_SPLIT, 60
	learnset MOVE_OVERHEAT, 70
    terminatelearnset


levelup SPECIES_AXEW
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_BITE, 3
	learnset MOVE_FALSE_SWIPE, 6
	learnset MOVE_ASSURANCE, 9
	learnset MOVE_TAUNT, 12
	learnset MOVE_REVERSAL, 15
	learnset MOVE_DUAL_CHOP, 18
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_CRUNCH, 24
	learnset MOVE_DRAGON_DANCE, 27
	learnset MOVE_DRAGON_PULSE, 30
	learnset MOVE_SLASH, 33
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_FOCUS_ENERGY, 36
	learnset MOVE_BREAKING_SWIPE, 38
	learnset MOVE_SWORDS_DANCE, 42
	learnset MOVE_OUTRAGE, 46
	learnset MOVE_GUILLOTINE, 50
	learnset MOVE_GIGA_IMPACT, 54
    terminatelearnset


levelup SPECIES_FRAXURE
	learnset MOVE_BITE, 1
	learnset MOVE_FALSE_SWIPE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_ASSURANCE, 9
	learnset MOVE_TAUNT, 12
	learnset MOVE_REVERSAL, 15
	learnset MOVE_DUAL_CHOP, 18
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_CRUNCH, 24
	learnset MOVE_DRAGON_DANCE, 27
	learnset MOVE_DRAGON_PULSE, 30
	learnset MOVE_SLASH, 33
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_FOCUS_ENERGY, 36
	learnset MOVE_BREAKING_SWIPE, 38
	learnset MOVE_SWORDS_DANCE, 42
	learnset MOVE_SUPERPOWER, 46
	learnset MOVE_OUTRAGE, 48
	learnset MOVE_GUILLOTINE, 52
	learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset


levelup SPECIES_HAXORUS
	learnset MOVE_IRON_TAIL, 1
	learnset MOVE_RAGING_FURY, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_ASSURANCE, 9
	learnset MOVE_TAUNT, 12
	learnset MOVE_REVERSAL, 15
	learnset MOVE_DUAL_CHOP, 18
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_CRUNCH, 24
	learnset MOVE_DRAGON_DANCE, 27
	learnset MOVE_DRAGON_PULSE, 30
	learnset MOVE_SLASH, 33
	learnset MOVE_NIGHT_SLASH, 33
	learnset MOVE_FOCUS_ENERGY, 36
	learnset MOVE_BREAKING_SWIPE, 38
	learnset MOVE_SWORDS_DANCE, 42
	learnset MOVE_SUPERPOWER, 46
	learnset MOVE_OUTRAGE, 48
	learnset MOVE_GUILLOTINE, 52
	learnset MOVE_CROSS_POISON, 56
	learnset MOVE_PSYCHO_CUT, 60
	learnset MOVE_CLOSE_COMBAT, 64
	learnset MOVE_ENDEAVOR, 66
	learnset MOVE_GIGA_IMPACT, 70
    terminatelearnset


levelup SPECIES_CUBCHOO
	learnset MOVE_GROWL, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_FLAIL, 11
	learnset MOVE_BRINE, 14
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_AQUA_JET, 20
	learnset MOVE_CHARM, 24
	learnset MOVE_SLASH, 27
	learnset MOVE_NIGHT_SLASH, 27
	learnset MOVE_FROST_BREATH, 30
	learnset MOVE_HEAVY_SLAM, 33
	learnset MOVE_YAWN, 36
	learnset MOVE_ICE_FANG, 37
	learnset MOVE_REST, 39
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_SUPERPOWER, 45
	learnset MOVE_ICICLE_CRASH, 48
	learnset MOVE_BLIZZARD, 51
	learnset MOVE_SHEER_COLD, 55
    terminatelearnset


levelup SPECIES_BEARTIC
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_ICE_SHARD, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_FLAIL, 11
	learnset MOVE_BRINE, 14
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_AQUA_JET, 20
	learnset MOVE_CHARM, 24
	learnset MOVE_SLASH, 27
	learnset MOVE_NIGHT_SLASH, 27
	learnset MOVE_FROST_BREATH, 30
	learnset MOVE_HEAVY_SLAM, 33
	learnset MOVE_YAWN, 36
	learnset MOVE_ICE_FANG, 37
	learnset MOVE_REST, 39
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_SUPERPOWER, 45
	learnset MOVE_ICICLE_CRASH, 48
	learnset MOVE_HEAVY_SLAM, 51
	learnset MOVE_TRIPLE_AXEL, 54
	learnset MOVE_BLIZZARD, 57
	learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_CRYOGONAL
	learnset MOVE_TRIPLE_AXEL, 1
	learnset MOVE_ICE_SHARD, 1
	learnset MOVE_CONFUSE_RAY, 4
	learnset MOVE_RAPID_SPIN, 8
	learnset MOVE_ICY_WIND, 15
	learnset MOVE_HAZE, 20
	learnset MOVE_MIST, 20
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_AURORA_BEAM, 28
	learnset MOVE_NIGHT_SLASH, 32
	learnset MOVE_SLASH, 32
	learnset MOVE_FROST_BREATH, 36
	learnset MOVE_LIGHT_SCREEN, 40
	learnset MOVE_REFLECT, 40
	learnset MOVE_RECOVER, 44
	learnset MOVE_ICE_BEAM, 48
	learnset MOVE_ACID_ARMOR, 52
	learnset MOVE_SOLAR_BEAM, 56
	learnset MOVE_SHEER_COLD, 60
    terminatelearnset


levelup SPECIES_SHELMET
	learnset MOVE_ABSORB, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_ACID, 4
	learnset MOVE_CURSE, 7
	learnset MOVE_YAWN, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_GASTRO_ACID, 16
	learnset MOVE_ACID_ARMOR, 20
	learnset MOVE_STRUGGLE_BUG, 24
	learnset MOVE_GUARD_SWAP, 28
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_FURY_CUTTER, 36
	learnset MOVE_SPIKES, 40
	learnset MOVE_TOXIC_SPIKES, 40
	learnset MOVE_LEECH_LIFE, 44
	learnset MOVE_RECOVER, 48
	learnset MOVE_BATON_PASS, 52
	learnset MOVE_FINAL_GAMBIT, 56
    terminatelearnset


levelup SPECIES_ACCELGOR
	learnset MOVE_EXTREME_SPEED, 1
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_ACID, 4
	learnset MOVE_YAWN, 10
	learnset MOVE_PURSUIT, 13
	learnset MOVE_GASTRO_ACID, 16
	learnset MOVE_ACID_ARMOR, 20
	learnset MOVE_STRUGGLE_BUG, 24
	learnset MOVE_GUARD_SWAP, 28
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_FURY_CUTTER, 36
	learnset MOVE_SPIKES, 39
	learnset MOVE_TOXIC_SPIKES, 39
	learnset MOVE_LEECH_LIFE, 42
	learnset MOVE_GUARD_SPLIT, 45
	learnset MOVE_RECOVER, 48
	learnset MOVE_ENERGY_BALL, 51
	learnset MOVE_BUG_BUZZ, 54
	learnset MOVE_POWER_SWAP, 57
	learnset MOVE_FOCUS_BLAST, 60
	learnset MOVE_ME_FIRST, 63
	learnset MOVE_FINAL_GAMBIT, 66
    terminatelearnset


levelup SPECIES_STUNFISK
	learnset MOVE_SPITE, 1
	learnset MOVE_ENDEAVOR, 1
	learnset MOVE_NUZZLE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_ENDURE, 5
	learnset MOVE_MUD_SHOT, 10
	learnset MOVE_DISCHARGE, 15
	learnset MOVE_CHARGE, 20
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_REVENGE, 30
	learnset MOVE_BOUNCE, 35
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_PAIN_SPLIT, 44
	learnset MOVE_THUNDERBOLT, 48
	learnset MOVE_CURSE, 52
	learnset MOVE_FLAIL, 56
	learnset MOVE_EARTHQUAKE, 60
	learnset MOVE_THUNDER, 64
	learnset MOVE_FISSURE, 68
    terminatelearnset


levelup SPECIES_MIENFOO
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SWIFT, 4
	learnset MOVE_FORCE_PALM, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_VITAL_THROW, 13
	learnset MOVE_FEINT, 16
	learnset MOVE_ME_FIRST, 19
	learnset MOVE_QUICK_GUARD, 22
	learnset MOVE_BATON_PASS, 26
	learnset MOVE_FOCUS_PUNCH, 30
	learnset MOVE_ASSURANCE, 34
	learnset MOVE_PAYBACK, 38
	learnset MOVE_HONE_CLAWS, 42
	learnset MOVE_AURA_SPHERE, 46
	learnset MOVE_JUMP_KICK, 50
	learnset MOVE_BLAZE_KICK, 54
	learnset MOVE_WIDE_GUARD, 58
	learnset MOVE_HIGH_JUMP_KICK, 62
    terminatelearnset


levelup SPECIES_MIENSHAO
	learnset MOVE_REVERSAL, 1
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_POUND, 1
	learnset MOVE_SWIFT, 4
	learnset MOVE_FORCE_PALM, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_VITAL_THROW, 13
	learnset MOVE_FEINT, 16
	learnset MOVE_ME_FIRST, 19
	learnset MOVE_QUICK_GUARD, 22
	learnset MOVE_BATON_PASS, 26
	learnset MOVE_FOCUS_PUNCH, 30
	learnset MOVE_ASSURANCE, 34
	learnset MOVE_PAYBACK, 38
	learnset MOVE_HONE_CLAWS, 42
	learnset MOVE_AURA_SPHERE, 46
	learnset MOVE_JUMP_KICK, 50
	learnset MOVE_BLAZE_KICK, 55
	learnset MOVE_WIDE_GUARD, 60
	learnset MOVE_HIGH_JUMP_KICK, 65
	learnset MOVE_FAKE_OUT, 70
	learnset MOVE_CLOSE_COMBAT, 75
    terminatelearnset


levelup SPECIES_DRUDDIGON
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_BITE, 5
	learnset MOVE_DRAGON_TAIL, 10
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_SPIKES, 16
	learnset MOVE_SCARY_FACE, 20
	learnset MOVE_DUAL_WINGBEAT, 24
	learnset MOVE_SLASH, 28
	learnset MOVE_NIGHT_SLASH, 28
	learnset MOVE_BREAKING_SWIPE, 32
	learnset MOVE_CRUSH_CLAW, 36
	learnset MOVE_GLARE, 40
	learnset MOVE_CRUNCH, 44
	learnset MOVE_IRON_HEAD, 48
	learnset MOVE_SUCKER_PUNCH, 52
	learnset MOVE_POISON_TAIL, 56
	learnset MOVE_AQUA_TAIL, 56
	learnset MOVE_DRAGON_RUSH, 60
    terminatelearnset


levelup SPECIES_GOLETT
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POUND, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_FLING, 7
	learnset MOVE_ROLLOUT, 10
	learnset MOVE_DEFENSE_CURL, 13
	learnset MOVE_SHADOW_SNEAK, 16
	learnset MOVE_MAGNITUDE, 19
	learnset MOVE_NIGHT_SHADE, 22
	learnset MOVE_MUD_BOMB, 25
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_SCORCHING_SANDS, 32
	learnset MOVE_SHADOW_BALL, 36
	learnset MOVE_HEAVY_SLAM, 40
	learnset MOVE_DRAIN_PUNCH, 44
	learnset MOVE_HAMMER_ARM, 48
	learnset MOVE_DYNAMIC_PUNCH, 52
	learnset MOVE_SHADOW_PUNCH, 56
    terminatelearnset


levelup SPECIES_GOLURK
	learnset MOVE_HEAT_CRASH, 1
	learnset MOVE_FOCUS_PUNCH, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_CURSE, 4
	learnset MOVE_FLING, 7
	learnset MOVE_ROLLOUT, 10
	learnset MOVE_DEFENSE_CURL, 13
	learnset MOVE_SHADOW_SNEAK, 16
	learnset MOVE_MAGNITUDE, 19
	learnset MOVE_NIGHT_SHADE, 22
	learnset MOVE_MUD_BOMB, 25
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_SCORCHING_SANDS, 32
	learnset MOVE_SHADOW_BALL, 36
	learnset MOVE_HEAVY_SLAM, 40
	learnset MOVE_DRAIN_PUNCH, 44
	learnset MOVE_HIGH_HORSEPOWER, 48
	learnset MOVE_HAMMER_ARM, 52
	learnset MOVE_SHADOW_PUNCH, 56
	learnset MOVE_ZEN_HEADBUTT, 60
	learnset MOVE_DYNAMIC_PUNCH, 64
	learnset MOVE_CLOSE_COMBAT, 68
	learnset MOVE_SHADOW_FORCE, 72
    terminatelearnset


levelup SPECIES_PAWNIARD
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_LOW_KICK, 10
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_HONE_CLAWS, 16
	learnset MOVE_SNARL, 19
	learnset MOVE_TORMENT, 22
	learnset MOVE_ASSURANCE, 26
	learnset MOVE_BEAT_UP, 30
	learnset MOVE_MEAN_LOOK, 34
	learnset MOVE_REVENGE, 38
	learnset MOVE_IRON_HEAD, 40
	learnset MOVE_SLASH, 43
	learnset MOVE_NIGHT_SLASH, 43
	learnset MOVE_QUICK_GUARD, 46
	learnset MOVE_PSYCHO_CUT, 49
	learnset MOVE_SUCKER_PUNCH, 52
	learnset MOVE_METAL_BURST, 55
	learnset MOVE_FOUL_PLAY, 58
	learnset MOVE_GUILLOTINE, 61
    terminatelearnset


levelup SPECIES_BISHARP
	learnset MOVE_LEAF_BLADE, 1
	learnset MOVE_METAL_BURST, 1
	learnset MOVE_AIR_SLASH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_LOW_KICK, 10
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_HONE_CLAWS, 16
	learnset MOVE_SNARL, 19
	learnset MOVE_TORMENT, 22
	learnset MOVE_ASSURANCE, 26
	learnset MOVE_BEAT_UP, 30
	learnset MOVE_MEAN_LOOK, 34
	learnset MOVE_REVENGE, 38
	learnset MOVE_IRON_HEAD, 40
	learnset MOVE_SLASH, 43
	learnset MOVE_NIGHT_SLASH, 43
	learnset MOVE_QUICK_GUARD, 47
	learnset MOVE_PSYCHO_CUT, 51
	learnset MOVE_SUCKER_PUNCH, 55
	learnset MOVE_METAL_BURST, 59
	learnset MOVE_FOUL_PLAY, 63
	learnset MOVE_GUILLOTINE, 67
    terminatelearnset


levelup SPECIES_BOUFFALANT
	learnset MOVE_ZEN_HEADBUTT, 1
	learnset MOVE_SMART_STRIKE, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_REVENGE, 15
	learnset MOVE_SCARY_FACE, 20
	learnset MOVE_HORN_ATTACK, 25
	learnset MOVE_REVERSAL, 30
	learnset MOVE_ENDEAVOR, 34
	learnset MOVE_BODY_SLAM, 38
	learnset MOVE_FLAME_CHARGE, 40
	learnset MOVE_HEAD_CHARGE, 44
	learnset MOVE_CLOSE_COMBAT, 48
	learnset MOVE_MEGAHORN, 52
	learnset MOVE_HIGH_HORSEPOWER, 56
	learnset MOVE_OUTRAGE, 60
	learnset MOVE_COTTON_GUARD, 64
	learnset MOVE_GIGA_IMPACT, 68
	learnset MOVE_HEADLONG_RUSH, 72
    terminatelearnset


levelup SPECIES_RUFFLET
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_HONE_CLAWS, 6
	learnset MOVE_WING_ATTACK, 12
	learnset MOVE_ESPER_WING, 15
	learnset MOVE_TAILWIND, 18
	learnset MOVE_AERIAL_ACE, 21
	learnset MOVE_SCARY_FACE, 24
	learnset MOVE_WHIRLWIND, 27
	learnset MOVE_BULK_UP, 30
	learnset MOVE_AIR_SLASH, 33
	learnset MOVE_SLASH, 36
	learnset MOVE_NIGHT_SLASH, 36
	learnset MOVE_AGILITY, 39
	learnset MOVE_CRUSH_CLAW, 40
	learnset MOVE_SUPERPOWER, 42
	learnset MOVE_DUAL_WINGBEAT, 45
	learnset MOVE_QUICK_ATTACK, 48
	learnset MOVE_STEEL_WING, 52
	learnset MOVE_BRAVE_BIRD, 55
	learnset MOVE_ZEN_HEADBUTT, 58
	learnset MOVE_DEFOG, 62
	learnset MOVE_CLOSE_COMBAT, 65
    terminatelearnset


levelup SPECIES_BRAVIARY
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_HONE_CLAWS, 6
	learnset MOVE_WING_ATTACK, 12
	learnset MOVE_ESPER_WING, 15
	learnset MOVE_TAILWIND, 18
	learnset MOVE_AERIAL_ACE, 21
	learnset MOVE_SCARY_FACE, 24
	learnset MOVE_WHIRLWIND, 27
	learnset MOVE_BULK_UP, 30
	learnset MOVE_AIR_SLASH, 33
	learnset MOVE_SLASH, 36
	learnset MOVE_NIGHT_SLASH, 36
	learnset MOVE_AGILITY, 39
	learnset MOVE_CRUSH_CLAW, 40
	learnset MOVE_SUPERPOWER, 44
	learnset MOVE_DUAL_WINGBEAT, 47
	learnset MOVE_QUICK_ATTACK, 51
	learnset MOVE_STEEL_WING, 55
	learnset MOVE_BRAVE_BIRD, 58
	learnset MOVE_ZEN_HEADBUTT, 62
	learnset MOVE_DEFOG, 66
	learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_VULLABY
	learnset MOVE_LEER, 1
	learnset MOVE_GUST, 1
	learnset MOVE_FLATTER, 6
	learnset MOVE_WING_ATTACK, 12
	learnset MOVE_PLUCK, 15
	learnset MOVE_TAILWIND, 18
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_PAYBACK, 27
	learnset MOVE_NASTY_PLOT, 30
	learnset MOVE_DUAL_WINGBEAT, 33
	learnset MOVE_FAKE_TEARS, 36
	learnset MOVE_WHIRLWIND, 39
	learnset MOVE_DARK_PULSE, 40
	learnset MOVE_STEEL_WING, 42
	learnset MOVE_AIR_SLASH, 45
	learnset MOVE_SCARY_FACE, 48
	learnset MOVE_FOUL_PLAY, 52
	learnset MOVE_BRAVE_BIRD, 55
	learnset MOVE_ZEN_HEADBUTT, 58
	learnset MOVE_DEFOG, 62
	learnset MOVE_SUPERPOWER, 65
    terminatelearnset


levelup SPECIES_MANDIBUZZ
	learnset MOVE_LEER, 1
	learnset MOVE_GUST, 1
	learnset MOVE_FLATTER, 6
	learnset MOVE_WING_ATTACK, 12
	learnset MOVE_PLUCK, 15
	learnset MOVE_TAILWIND, 18
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_PAYBACK, 27
	learnset MOVE_NASTY_PLOT, 30
	learnset MOVE_DUAL_WINGBEAT, 33
	learnset MOVE_FAKE_TEARS, 36
	learnset MOVE_WHIRLWIND, 39
	learnset MOVE_DARK_PULSE, 40
	learnset MOVE_BONE_RUSH, 40
	learnset MOVE_STEEL_WING, 44
	learnset MOVE_AIR_SLASH, 47
	learnset MOVE_SCARY_FACE, 51
	learnset MOVE_FOUL_PLAY, 55
	learnset MOVE_BRAVE_BIRD, 58
	learnset MOVE_ZEN_HEADBUTT, 62
	learnset MOVE_DEFOG, 66
	learnset MOVE_SUPERPOWER, 70
    terminatelearnset


levelup SPECIES_HEATMOR
	learnset MOVE_RAGING_FURY, 1
	learnset MOVE_LICK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_INCINERATE, 11
	learnset MOVE_BUG_BITE, 14
	learnset MOVE_TICKLE, 17
	learnset MOVE_STOCKPILE, 20
	learnset MOVE_SPIT_UP, 20
	learnset MOVE_SWALLOW, 20
	learnset MOVE_SLASH, 25
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_CURSE, 28
	learnset MOVE_SCORCHING_SANDS, 32
	learnset MOVE_FLAME_BURST, 36
	learnset MOVE_HONE_CLAWS, 40
	learnset MOVE_AMNESIA, 44
	learnset MOVE_CROSS_CHOP, 47
	learnset MOVE_FIRE_SPIN, 50
	learnset MOVE_INFERNO, 54
	learnset MOVE_FIRE_LASH, 58
	learnset MOVE_FLARE_BLITZ, 62
	learnset MOVE_SUCKER_PUNCH, 66
	learnset MOVE_SUPERPOWER, 70
    terminatelearnset


levelup SPECIES_DURANT
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_INFESTATION, 5
	learnset MOVE_METAL_CLAW, 11
	learnset MOVE_BEAT_UP, 14
	learnset MOVE_BUG_BITE, 17
	learnset MOVE_BITE, 20
	learnset MOVE_AGILITY, 25
	learnset MOVE_FLAIL, 28
	learnset MOVE_X_SCISSOR, 32
	learnset MOVE_CRUNCH, 36
	learnset MOVE_IRON_DEFENSE, 40
	learnset MOVE_THUNDER_FANG, 44
	learnset MOVE_IRON_HEAD, 47
	learnset MOVE_ENTRAINMENT, 50
	learnset MOVE_LUNGE, 54
	learnset MOVE_METAL_BURST, 58
	learnset MOVE_BATON_PASS, 62
	learnset MOVE_GUILLOTINE, 66
	learnset MOVE_SUPERPOWER, 70
    terminatelearnset


levelup SPECIES_DEINO
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_BITE, 7
	learnset MOVE_ROAR, 10
	learnset MOVE_SCREECH, 13
	learnset MOVE_ASSURANCE, 17
	learnset MOVE_HEADBUTT, 21
	learnset MOVE_WORK_UP, 25
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_CRUNCH, 31
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_SCARY_FACE, 37
	learnset MOVE_DRAGON_PULSE, 40
	learnset MOVE_DARK_PULSE, 44
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_DRAGON_RUSH, 51
	learnset MOVE_NASTY_PLOT, 54
	learnset MOVE_OUTRAGE, 58
    terminatelearnset


levelup SPECIES_ZWEILOUS
	learnset MOVE_BITE, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 10
	learnset MOVE_SCREECH, 13
	learnset MOVE_ASSURANCE, 17
	learnset MOVE_HEADBUTT, 21
	learnset MOVE_WORK_UP, 25
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_CRUNCH, 32
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_SCARY_FACE, 37
	learnset MOVE_DOUBLE_HIT, 38
	learnset MOVE_DRAGON_PULSE, 40
	learnset MOVE_DARK_PULSE, 44
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_DRAGON_RUSH, 53
	learnset MOVE_HEAD_SMASH, 57
	learnset MOVE_NASTY_PLOT, 61
	learnset MOVE_OUTRAGE, 66
    terminatelearnset


levelup SPECIES_HYDREIGON
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_IRON_TAIL, 1
	learnset MOVE_SUPERPOWER, 1
	learnset MOVE_DOUBLE_HIT, 1
	learnset MOVE_STEALTH_ROCK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 12
	learnset MOVE_ASSURANCE, 16
	learnset MOVE_HEADBUTT, 20
	learnset MOVE_WORK_UP, 24
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_CRUNCH, 32
	learnset MOVE_SCARY_FACE, 36
	learnset MOVE_DRAGON_PULSE, 40
	learnset MOVE_DARK_PULSE, 44
	learnset MOVE_HYPER_VOICE, 48
	learnset MOVE_DRAGON_RUSH, 54
	learnset MOVE_HEAD_SMASH, 58
	learnset MOVE_TRI_ATTACK, 58
	learnset MOVE_OUTRAGE, 62
	learnset MOVE_HYDRO_PUMP, 66
	learnset MOVE_DRAGON_DANCE, 70
	learnset MOVE_NASTY_PLOT, 70
    terminatelearnset


levelup SPECIES_LARVESTA
	learnset MOVE_EMBER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_FLAME_CHARGE, 6
	learnset MOVE_STRUGGLE_BUG, 12
	learnset MOVE_SUNNY_DAY, 16
	learnset MOVE_BUG_BITE, 20
	learnset MOVE_SCREECH, 24
	learnset MOVE_STRING_SHOT, 28
	learnset MOVE_FLAME_WHEEL, 32
	learnset MOVE_LEECH_LIFE, 36
	learnset MOVE_BUG_BUZZ, 40
	learnset MOVE_ZEN_HEADBUTT, 44
	learnset MOVE_TAKE_DOWN, 48
	learnset MOVE_AMNESIA, 51
	learnset MOVE_RAGING_FURY, 56
	learnset MOVE_DOUBLE_EDGE, 60
	learnset MOVE_FLARE_BLITZ, 64
    terminatelearnset


levelup SPECIES_VOLCARONA
	learnset MOVE_FIERY_DANCE, 1
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_TAILWIND, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_GUST, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_FLAME_WHEEL, 24
	learnset MOVE_SCREECH, 30
	learnset MOVE_LEECH_LIFE, 36
	learnset MOVE_GIGA_DRAIN, 40
	learnset MOVE_RAGING_FURY, 44
	learnset MOVE_RAGE_POWDER, 48
	learnset MOVE_INFERNO, 52
	learnset MOVE_AMNESIA, 56
	learnset MOVE_HEAT_WAVE, 60
	learnset MOVE_BUG_BUZZ, 64
	learnset MOVE_FIERY_DANCE, 68
	learnset MOVE_QUIVER_DANCE, 72
    terminatelearnset


levelup SPECIES_COBALION
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_QUICK_GUARD, 14
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_IRON_DEFENSE, 22
	learnset MOVE_RETALIATE, 26
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_CALM_MIND, 38
	learnset MOVE_SWORDS_DANCE, 42
	learnset MOVE_FLASH_CANNON, 46
	learnset MOVE_SAFEGUARD, 50
	learnset MOVE_AIR_SLASH, 55
	learnset MOVE_SACRED_SWORD, 60
	learnset MOVE_ZEN_HEADBUTT, 65
	learnset MOVE_SMART_STRIKE, 70
	learnset MOVE_METAL_BURST, 80
	learnset MOVE_MEGAHORN, 85
	learnset MOVE_CLOSE_COMBAT, 90
    terminatelearnset


levelup SPECIES_TERRAKION
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_SMACK_DOWN, 10
	learnset MOVE_QUICK_GUARD, 14
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_SWORDS_DANCE, 22
	learnset MOVE_RETALIATE, 26
	learnset MOVE_WORK_UP, 30
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_EARTH_POWER, 38
	learnset MOVE_CALM_MIND, 42
	learnset MOVE_BLOCK, 46
	learnset MOVE_ROCK_SLIDE, 50
	learnset MOVE_AIR_SLASH, 55
	learnset MOVE_SACRED_SWORD, 60
	learnset MOVE_ZEN_HEADBUTT, 65
	learnset MOVE_SMART_STRIKE, 70
	learnset MOVE_STONE_EDGE, 80
	learnset MOVE_MEGAHORN, 85
	learnset MOVE_CLOSE_COMBAT, 90
    terminatelearnset


levelup SPECIES_VIRIZION
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_CALM_MIND, 1
	learnset MOVE_MAGICAL_LEAF, 10
	learnset MOVE_QUICK_GUARD, 14
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_GRASS_KNOT, 22
	learnset MOVE_RETALIATE, 26
	learnset MOVE_REVENGE, 30
	learnset MOVE_TAKE_DOWN, 34
	learnset MOVE_ENERGY_BALL, 38
	learnset MOVE_SAFEGUARD, 42
	learnset MOVE_LEAF_BLADE, 46
	learnset MOVE_WORK_UP, 50
	learnset MOVE_AIR_SLASH, 55
	learnset MOVE_SACRED_SWORD, 60
	learnset MOVE_ZEN_HEADBUTT, 65
	learnset MOVE_SMART_STRIKE, 70
	learnset MOVE_POWER_WHIP, 80
	learnset MOVE_MEGAHORN, 85
	learnset MOVE_CLOSE_COMBAT, 90
    terminatelearnset


levelup SPECIES_TORNADUS
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GUST, 1
	learnset MOVE_LEER, 5
	learnset MOVE_SWAGGER, 10
	learnset MOVE_BITE, 15
	learnset MOVE_AIR_CUTTER, 20
	learnset MOVE_AGILITY, 23
	learnset MOVE_TAILWIND, 26
	learnset MOVE_AIR_SLASH, 29
	learnset MOVE_CRUNCH, 32
	learnset MOVE_EXTRASENSORY, 35
	learnset MOVE_UPROAR, 38
	learnset MOVE_HAMMER_ARM, 41
	learnset MOVE_RAIN_DANCE, 44
	learnset MOVE_HURRICANE, 47
	learnset MOVE_FOUL_PLAY, 50
    terminatelearnset


levelup SPECIES_THUNDURUS
	learnset MOVE_ASTONISH, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_LEER, 5
	learnset MOVE_NASTY_PLOT, 10
	learnset MOVE_BITE, 15
	learnset MOVE_SHOCK_WAVE, 20
	learnset MOVE_AGILITY, 23
	learnset MOVE_CHARGE, 26
	learnset MOVE_VOLT_SWITCH, 29
	learnset MOVE_CRUNCH, 32
	learnset MOVE_DISCHARGE, 35
	learnset MOVE_UPROAR, 38
	learnset MOVE_HAMMER_ARM, 41
	learnset MOVE_RAIN_DANCE, 44
	learnset MOVE_THUNDER, 47
	learnset MOVE_SMART_STRIKE, 50
    terminatelearnset


levelup SPECIES_RESHIRAM
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_SCORCHING_SANDS, 1
	learnset MOVE_ESPER_WING, 1
	learnset MOVE_SLASH, 8
	learnset MOVE_TAILWIND, 12
	learnset MOVE_CRUNCH, 16
	learnset MOVE_EXTRASENSORY, 22
	learnset MOVE_DRAGON_PULSE, 26
	learnset MOVE_FLAMETHROWER, 30
	learnset MOVE_FIRE_BLAST, 34
	learnset MOVE_HYPER_VOICE, 38
	learnset MOVE_FUSION_FLARE, 42
	learnset MOVE_IMPRISON, 46
	learnset MOVE_OUTRAGE, 50
	learnset MOVE_BLUE_FLARE, 88
    terminatelearnset


levelup SPECIES_ZEKROM
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_BREAKING_SWIPE, 1
	learnset MOVE_DRAGON_DANCE, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_SLASH, 8
	learnset MOVE_TAILWIND, 12
	learnset MOVE_CRUNCH, 16
	learnset MOVE_ZEN_HEADBUTT, 22
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_THUNDERBOLT, 30
	learnset MOVE_THUNDER, 34
	learnset MOVE_HYPER_VOICE, 38
	learnset MOVE_FUSION_BOLT, 42
	learnset MOVE_IMPRISON, 46
	learnset MOVE_OUTRAGE, 50
	learnset MOVE_BOLT_STRIKE, 88
    terminatelearnset


levelup SPECIES_LANDORUS
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_LEER, 5
	learnset MOVE_BLOCK, 10
	learnset MOVE_BULLDOZE, 14
	learnset MOVE_ROCK_TOMB, 17
	learnset MOVE_SWORDS_DANCE, 20
	learnset MOVE_IMPRISON, 23
	learnset MOVE_ROCK_SLIDE, 26
	learnset MOVE_EARTH_POWER, 29
	learnset MOVE_EXTRASENSORY, 32
	learnset MOVE_STONE_EDGE, 35
	learnset MOVE_HAMMER_ARM, 38
	learnset MOVE_SANDSTORM, 41
	learnset MOVE_EARTHQUAKE, 44
	learnset MOVE_OUTRAGE, 47
	learnset MOVE_FISSURE, 50
    terminatelearnset


levelup SPECIES_KYUREM
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_DRAGON_DANCE, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_ICICLE_SPEAR, 1
	learnset MOVE_SLASH, 8
	learnset MOVE_ENDEAVOR, 14
	learnset MOVE_ICE_BEAM, 19
	learnset MOVE_DRAGON_PULSE, 24
	learnset MOVE_ICICLE_CRASH, 29
	learnset MOVE_HYPER_VOICE, 32
	learnset MOVE_SCARY_FACE, 35
	learnset MOVE_BLIZZARD, 38
	learnset MOVE_IMPRISON, 41
	learnset MOVE_OUTRAGE, 44
	learnset MOVE_GLACIATE, 47
	learnset MOVE_SHEER_COLD, 50
    terminatelearnset


levelup SPECIES_KELDEO
	learnset MOVE_SECRET_SWORD, 1
	learnset MOVE_AQUA_JET, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_BUBBLE_BEAM, 7
	learnset MOVE_QUICK_GUARD, 14
	learnset MOVE_DOUBLE_KICK, 21
	learnset MOVE_RETALIATE, 28
	learnset MOVE_AQUA_TAIL, 33
	learnset MOVE_TAKE_DOWN, 38
	learnset MOVE_SACRED_SWORD, 41
	learnset MOVE_SMART_STRIKE, 44
	learnset MOVE_HYDRO_PUMP, 47
	learnset MOVE_CLOSE_COMBAT, 50
    terminatelearnset


levelup SPECIES_MELOETTA
	learnset MOVE_PERISH_SONG, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_SING, 1
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_CONFUSION, 14
	learnset MOVE_SING, 17
	learnset MOVE_TEETER_DANCE, 20
	learnset MOVE_ACROBATICS, 23
	learnset MOVE_PSYBEAM, 26
	learnset MOVE_ECHOED_VOICE, 29
	learnset MOVE_U_TURN, 32
	learnset MOVE_WAKE_UP_SLAP, 35
	learnset MOVE_PSYCHIC, 38
	learnset MOVE_HYPER_VOICE, 41
	learnset MOVE_ROLE_PLAY, 44
	learnset MOVE_CLOSE_COMBAT, 47
	learnset MOVE_RELIC_SONG, 50
    terminatelearnset


levelup SPECIES_GENESECT
	learnset MOVE_SHIFT_GEAR, 1
	learnset MOVE_BLAZE_KICK, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_SCREECH, 7
	learnset MOVE_METAL_CLAW, 17
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_FLAME_CHARGE, 23
	learnset MOVE_EXTREME_SPEED, 26
	learnset MOVE_X_SCISSOR, 29
	learnset MOVE_MAGNET_RISE, 32
	learnset MOVE_BUG_BUZZ, 35
	learnset MOVE_SIMPLE_BEAM, 38
	learnset MOVE_ZAP_CANNON, 41
	learnset MOVE_LOCK_ON, 44
	learnset MOVE_TECHNO_BLAST, 47
	learnset MOVE_IRON_HEAD, 50
    terminatelearnset


levelup SPECIES_CHESPIN
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BITE, 11
    learnset MOVE_LEECH_SEED, 15
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_SEED_BOMB, 32
    learnset MOVE_MUD_SHOT, 35
    learnset MOVE_BULK_UP, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_PAIN_SPLIT, 45
    learnset MOVE_WOOD_HAMMER, 48
    terminatelearnset


levelup SPECIES_QUILLADIN
    learnset MOVE_NEEDLE_ARM, 0
    learnset MOVE_NEEDLE_ARM, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BITE, 11
    learnset MOVE_LEECH_SEED, 15
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_SEED_BOMB, 35
    learnset MOVE_MUD_SHOT, 39
    learnset MOVE_BULK_UP, 44
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_PAIN_SPLIT, 52
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset


levelup SPECIES_CHESNAUGHT
    learnset MOVE_SPIKY_SHIELD, 0
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_NEEDLE_ARM, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_BELLY_DRUM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BITE, 11
    learnset MOVE_LEECH_SEED, 15
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_SEED_BOMB, 35
    learnset MOVE_MUD_SHOT, 41
    learnset MOVE_BULK_UP, 48
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_PAIN_SPLIT, 60
    learnset MOVE_WOOD_HAMMER, 66
    learnset MOVE_HAMMER_ARM, 72
    learnset MOVE_GIGA_IMPACT, 78
    terminatelearnset


levelup SPECIES_FENNEKIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HOWL, 11
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_LUCKY_CHANT, 25
    learnset MOVE_LIGHT_SCREEN, 27
    learnset MOVE_PSYSHOCK, 31
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_WILL_O_WISP, 38
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_SUNNY_DAY, 43
    learnset MOVE_MAGIC_ROOM, 46
    learnset MOVE_FIRE_BLAST, 48
    terminatelearnset


levelup SPECIES_BRAIXEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HOWL, 11
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_FIRE_SPIN, 22
    learnset MOVE_LUCKY_CHANT, 28
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_PSYSHOCK, 36
    learnset MOVE_FLAMETHROWER, 41
    learnset MOVE_WILL_O_WISP, 45
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_SUNNY_DAY, 52
    learnset MOVE_MAGIC_ROOM, 56
    learnset MOVE_FIRE_BLAST, 59
    terminatelearnset


levelup SPECIES_DELPHOX
    learnset MOVE_MYSTICAL_FIRE, 0
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_SHADOW_BALL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HOWL, 11
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_FIRE_SPIN, 22
    learnset MOVE_LUCKY_CHANT, 28
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_WILL_O_WISP, 51
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_SUNNY_DAY, 62
    learnset MOVE_MAGIC_ROOM, 68
    learnset MOVE_FIRE_BLAST, 74
    learnset MOVE_FUTURE_SIGHT, 80
    terminatelearnset


levelup SPECIES_FROAKIE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 18
    learnset MOVE_ROUND, 21
    learnset MOVE_FLING, 25
    learnset MOVE_SMACK_DOWN, 29
    learnset MOVE_SUBSTITUTE, 35
    learnset MOVE_BOUNCE, 39
    learnset MOVE_DOUBLE_TEAM, 43
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_FROGADIER
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 19
    learnset MOVE_ROUND, 23
    learnset MOVE_FLING, 28
    learnset MOVE_SMACK_DOWN, 33
    learnset MOVE_SUBSTITUTE, 40
    learnset MOVE_BOUNCE, 45
    learnset MOVE_DOUBLE_TEAM, 50
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_GRENINJA
    learnset MOVE_WATER_SHURIKEN, 0
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_MAT_BLOCK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 19
    learnset MOVE_SHADOW_SNEAK, 23
    learnset MOVE_SPIKES, 28
    learnset MOVE_FEINT_ATTACK, 33
    learnset MOVE_SUBSTITUTE, 42
    learnset MOVE_EXTRASENSORY, 49
    learnset MOVE_DOUBLE_TEAM, 56
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_HAZE, 70
    learnset MOVE_NIGHT_SLASH, 77
    terminatelearnset


levelup SPECIES_BUNNELBY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_TACKLE, 3
    learnset MOVE_LASER_FOCUS, 6
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_DOUBLE_KICK, 18
    learnset MOVE_FLAIL, 21
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_TAKE_DOWN, 23
    learnset MOVE_ODOR_SLEUTH, 25
    learnset MOVE_DIG, 28
    learnset MOVE_BOUNCE, 32
    learnset MOVE_SWORDS_DANCE, 33
    learnset MOVE_SUPER_FANG, 40
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_FACADE, 47
    terminatelearnset


levelup SPECIES_DIGGERSBY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_DOUBLE_KICK, 19
    learnset MOVE_FLAIL, 22
    learnset MOVE_BULLDOZE, 23
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_DIG, 32
    learnset MOVE_BOUNCE, 37
    learnset MOVE_SWORDS_DANCE, 43
    learnset MOVE_SUPER_FANG, 50
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_FACADE, 54
    learnset MOVE_HAMMER_ARM, 58
    terminatelearnset


levelup SPECIES_FLETCHLING
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_EMBER, 10
    learnset MOVE_PECK, 10
    learnset MOVE_FLAIL, 15
    learnset MOVE_AGILITY, 19
    learnset MOVE_RAZOR_WIND, 25
    learnset MOVE_ACROBATICS, 28
    learnset MOVE_NATURAL_GIFT, 29
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_ROOST, 33
    learnset MOVE_FLAME_CHARGE, 34
    learnset MOVE_TAILWIND, 39
    learnset MOVE_ME_FIRST, 41
    learnset MOVE_STEEL_WING, 43
    learnset MOVE_FLY, 50
    terminatelearnset


levelup SPECIES_FLETCHINDER
    learnset MOVE_FLAME_CHARGE, 0
    learnset MOVE_EMBER, 0
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_PECK, 10
    learnset MOVE_FLAIL, 15
    learnset MOVE_AGILITY, 21
    learnset MOVE_RAZOR_WIND, 27
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_NATURAL_GIFT, 31
    learnset MOVE_AERIAL_ACE, 36
    learnset MOVE_FLAME_CHARGE, 38
    learnset MOVE_ROOST, 42
    learnset MOVE_TAILWIND, 46
    learnset MOVE_ME_FIRST, 46
    learnset MOVE_STEEL_WING, 52
    learnset MOVE_FLY, 64
    terminatelearnset


levelup SPECIES_TALONFLAME
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_PECK, 10
    learnset MOVE_FLAIL, 15
    learnset MOVE_AGILITY, 21
    learnset MOVE_RAZOR_WIND, 27
    learnset MOVE_NATURAL_GIFT, 31
    learnset MOVE_ACROBATICS, 32
    learnset MOVE_AERIAL_ACE, 38
    learnset MOVE_FLAME_CHARGE, 39
    learnset MOVE_ROOST, 46
    learnset MOVE_ME_FIRST, 49
    learnset MOVE_TAILWIND, 50
    learnset MOVE_STEEL_WING, 57
    learnset MOVE_FLY, 74
    learnset MOVE_BRAVE_BIRD, 74
    terminatelearnset


levelup SPECIES_SCATTERBUG
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_BUG_BITE, 15
    terminatelearnset


levelup SPECIES_SPEWPA
    learnset MOVE_PROTECT, 0
    learnset MOVE_PROTECT, 1
    learnset MOVE_HARDEN, 1
    terminatelearnset


levelup SPECIES_VIVILLON
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_LITLEO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WORK_UP, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 15
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_ECHOED_VOICE, 33
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_INCINERATE, 46
    learnset MOVE_OVERHEAT, 50
    terminatelearnset


levelup SPECIES_PYROAR
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WORK_UP, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 15
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_ECHOED_VOICE, 33
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_INCINERATE, 51
    learnset MOVE_OVERHEAT, 57
    terminatelearnset


levelup SPECIES_FLABEBE
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_GRASSY_TERRAIN, 24
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_MISTY_TERRAIN, 37
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_PETAL_DANCE, 45
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset


levelup SPECIES_FLOETTE
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_GRASSY_TERRAIN, 27
    learnset MOVE_PETAL_BLIZZARD, 33
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_MISTY_TERRAIN, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_FLORGES
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 1
    learnset MOVE_WISH, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_AROMATHERAPY, 1
    terminatelearnset


levelup SPECIES_SKIDDO
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_TAIL_WHIP, 9
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_WORRY_SEED, 16
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_TAKE_DOWN, 22
    learnset MOVE_BULLDOZE, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_BULK_UP, 34
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_HORN_LEECH, 42
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_MILK_DRINK, 50
    terminatelearnset


levelup SPECIES_GOGOAT
    learnset MOVE_AERIAL_ACE, 0
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_TAIL_WHIP, 9
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_WORRY_SEED, 16
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_TAKE_DOWN, 22
    learnset MOVE_BULLDOZE, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_BULK_UP, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_HORN_LEECH, 47
    learnset MOVE_LEAF_BLADE, 55
    learnset MOVE_MILK_DRINK, 58
    terminatelearnset


levelup SPECIES_PANCHAM
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_WORK_UP, 15
    learnset MOVE_COMET_PUNCH, 15
    learnset MOVE_LOW_SWEEP, 16
    learnset MOVE_CIRCLE_THROW, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_VITAL_THROW, 27
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_CRUNCH, 35
    learnset MOVE_PARTING_SHOT, 42
    learnset MOVE_ENTRAINMENT, 43
    learnset MOVE_SKY_UPPERCUT, 48
    terminatelearnset


levelup SPECIES_PANGORO
    learnset MOVE_NIGHT_SLASH, 0
    learnset MOVE_BULLET_PUNCH, 0
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_LOW_SWEEP, 1
    learnset MOVE_ENTRAINMENT, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_WORK_UP, 15
    learnset MOVE_COMET_PUNCH, 15
    learnset MOVE_CIRCLE_THROW, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_VITAL_THROW, 27
    learnset MOVE_LOW_SWEEP, 35
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_CRUNCH, 38
    learnset MOVE_PARTING_SHOT, 46
    learnset MOVE_ENTRAINMENT, 48
    learnset MOVE_SKY_UPPERCUT, 52
    learnset MOVE_HAMMER_ARM, 63
    learnset MOVE_TAUNT, 65
    terminatelearnset


levelup SPECIES_FURFROU
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_ESPURR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_COVET, 11
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_LIGHT_SCREEN, 22
    learnset MOVE_PSYSHOCK, 29
    learnset MOVE_REFLECT, 30
    terminatelearnset


levelup SPECIES_MEOWSTIC
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_COVET, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_COVET, 11
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_CHARM, 21
    learnset MOVE_DISARMING_VOICE, 22
    learnset MOVE_LIGHT_SCREEN, 24
    learnset MOVE_MIRACLE_EYE, 31
    learnset MOVE_PSYSHOCK, 32
    learnset MOVE_REFLECT, 34
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_ROLE_PLAY, 35
    learnset MOVE_IMPRISON, 44
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_QUICK_GUARD, 50
    learnset MOVE_MISTY_TERRAIN, 54
    terminatelearnset


levelup SPECIES_HONEDGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_SHADOW_SNEAK, 11
    learnset MOVE_AUTOTOMIZE, 12
    learnset MOVE_METAL_SOUND, 12
    learnset MOVE_PURSUIT, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_SLASH, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_POWER_TRICK, 39
    learnset MOVE_SWORDS_DANCE, 44
    learnset MOVE_SACRED_SWORD, 47
    terminatelearnset


levelup SPECIES_DOUBLADE
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_METAL_SOUND, 12
    learnset MOVE_PURSUIT, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_AUTOTOMIZE, 18
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_IRON_HEAD, 41
    learnset MOVE_POWER_TRICK, 42
    learnset MOVE_SWORDS_DANCE, 50
    learnset MOVE_SACRED_SWORD, 53
    terminatelearnset


levelup SPECIES_AEGISLASH
    learnset MOVE_KINGS_SHIELD, 0
    learnset MOVE_KINGS_SHIELD, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_METAL_SOUND, 1
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_POWER_TRICK, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_PURSUIT, 1
    terminatelearnset


levelup SPECIES_SPRITZEE
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_DRAINING_KISS, 14
    learnset MOVE_AROMATHERAPY, 18
    learnset MOVE_ATTRACT, 23
    learnset MOVE_CALM_MIND, 25
    learnset MOVE_FLAIL, 28
    learnset MOVE_MISTY_TERRAIN, 32
    learnset MOVE_CHARM, 32
    learnset MOVE_MOONBLAST, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_SKILL_SWAP, 41
    learnset MOVE_DISARMING_VOICE, 50
    terminatelearnset


levelup SPECIES_AROMATISSE
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_SWEET_KISS, 6
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_ECHOED_VOICE, 13
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_AROMATHERAPY, 18
    learnset MOVE_ATTRACT, 23
    learnset MOVE_CALM_MIND, 25
    learnset MOVE_FLAIL, 28
    learnset MOVE_DISARMING_VOICE, 29
    learnset MOVE_MISTY_TERRAIN, 32
    learnset MOVE_CHARM, 32
    learnset MOVE_MOONBLAST, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_SKILL_SWAP, 41
    learnset MOVE_PSYCH_UP, 52
    learnset MOVE_REFLECT, 57
    terminatelearnset


levelup SPECIES_SWIRLIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ROUND, 15
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_COTTON_SPORE, 20
    learnset MOVE_STRING_SHOT, 21
    learnset MOVE_ENDEAVOR, 30
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_WISH, 37
    learnset MOVE_COTTON_GUARD, 38
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_LIGHT_SCREEN, 58
    learnset MOVE_SAFEGUARD, 67
    terminatelearnset


levelup SPECIES_SLURPUFF
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ROUND, 15
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_COTTON_SPORE, 20
    learnset MOVE_STRING_SHOT, 21
    learnset MOVE_ENDEAVOR, 30
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_WISH, 37
    learnset MOVE_COTTON_GUARD, 38
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_STICKY_WEB, 42
    learnset MOVE_LIGHT_SCREEN, 58
    learnset MOVE_SAFEGUARD, 67
    terminatelearnset


levelup SPECIES_INKAY
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_REFLECT, 4
    learnset MOVE_WRAP, 6
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_SWAGGER, 15
    learnset MOVE_PAYBACK, 17
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_FOUL_PLAY, 21
    learnset MOVE_PLUCK, 22
    learnset MOVE_TOPSY_TURVY, 26
    learnset MOVE_SWITCHEROO, 27
    learnset MOVE_SLASH, 31
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_PSYCHO_CUT, 32
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_SUPERPOWER, 43
    terminatelearnset


levelup SPECIES_MALAMAR
    learnset MOVE_REVERSAL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_REFLECT, 4
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_SWAGGER, 15
    learnset MOVE_PAYBACK, 17
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_HYPNOSIS, 18
    learnset MOVE_PLUCK, 22
    learnset MOVE_FOUL_PLAY, 23
    learnset MOVE_SWITCHEROO, 28
    learnset MOVE_TOPSY_TURVY, 29
    learnset MOVE_SLASH, 31
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_PSYCHO_CUT, 32
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_SUPERPOWER, 47
    terminatelearnset


levelup SPECIES_BINACLE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SHELL_SMASH, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_MUD_SLAP, 18
    learnset MOVE_CLAMP, 20
    learnset MOVE_SLASH, 21
    learnset MOVE_FURY_CUTTER, 23
    learnset MOVE_ANCIENT_POWER, 23
    learnset MOVE_ROCK_POLISH, 24
    learnset MOVE_HONE_CLAWS, 32
    learnset MOVE_RAZOR_SHELL, 40
    learnset MOVE_SHELL_SMASH, 40
    learnset MOVE_NIGHT_SLASH, 41
    learnset MOVE_CROSS_CHOP, 46
    terminatelearnset


levelup SPECIES_BARBARACLE
    learnset MOVE_SKULL_BASH, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SHELL_SMASH, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_WITHDRAW, 7
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_MUD_SLAP, 18
    learnset MOVE_CLAMP, 20
    learnset MOVE_SLASH, 21
    learnset MOVE_FURY_CUTTER, 23
    learnset MOVE_ANCIENT_POWER, 23
    learnset MOVE_ROCK_POLISH, 24
    learnset MOVE_HONE_CLAWS, 32
    learnset MOVE_RAZOR_SHELL, 41
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_NIGHT_SLASH, 44
    learnset MOVE_CROSS_CHOP, 51
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_SKULL_BASH, 65
    terminatelearnset


levelup SPECIES_SKRELP
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_FEINT_ATTACK, 5
    learnset MOVE_ACID, 9
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_TAIL_WHIP, 12
    learnset MOVE_BUBBLE, 12
    learnset MOVE_CAMOUFLAGE, 19
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_POISON_TAIL, 24
    learnset MOVE_WATER_PULSE, 27
    learnset MOVE_TOXIC, 33
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_DRAGON_PULSE, 44
    learnset MOVE_SLUDGE_BOMB, 44
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_DRAGALGE
    learnset MOVE_TWISTER, 0
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_ACID, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_FEINT_ATTACK, 1
    learnset MOVE_FEINT_ATTACK, 5
    learnset MOVE_TAIL_WHIP, 12
    learnset MOVE_BUBBLE, 12
    learnset MOVE_ACID, 15
    learnset MOVE_CAMOUFLAGE, 19
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_POISON_TAIL, 24
    learnset MOVE_WATER_PULSE, 27
    learnset MOVE_TOXIC, 33
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_SLUDGE_BOMB, 45
    learnset MOVE_DRAGON_PULSE, 46
    learnset MOVE_HYDRO_PUMP, 51
    learnset MOVE_DRAGON_TAIL, 59
    learnset MOVE_OUTRAGE, 66
    terminatelearnset


levelup SPECIES_CLAUNCHER
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 6
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_FLAIL, 12
    learnset MOVE_BUBBLE, 12
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_HONE_CLAWS, 25
    learnset MOVE_AQUA_JET, 28
    learnset MOVE_SMACK_DOWN, 28
    learnset MOVE_SWORDS_DANCE, 30
    learnset MOVE_WATER_PULSE, 31
    learnset MOVE_AURA_SPHERE, 40
    learnset MOVE_CRABHAMMER, 43
    learnset MOVE_BOUNCE, 45
    learnset MOVE_MUDDY_WATER, 49
    terminatelearnset


levelup SPECIES_CLAWITZER
    learnset MOVE_AURA_SPHERE, 0
    learnset MOVE_DARK_PULSE, 1
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_VICE_GRIP, 9
    learnset MOVE_BUBBLE, 12
    learnset MOVE_FLAIL, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_HONE_CLAWS, 25
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_SMACK_DOWN, 30
    learnset MOVE_SWORDS_DANCE, 30
    learnset MOVE_WATER_PULSE, 31
    learnset MOVE_AURA_SPHERE, 42
    learnset MOVE_CRABHAMMER, 47
    learnset MOVE_BOUNCE, 49
    learnset MOVE_MUDDY_WATER, 56
    terminatelearnset


levelup SPECIES_HELIOPTILE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POUND, 4
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_CHARGE, 13
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_RAZOR_WIND, 22
    learnset MOVE_PARABOLIC_CHARGE, 26
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_VOLT_SWITCH, 31
    learnset MOVE_THUNDER_WAVE, 31
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_ELECTRIFY, 42
    learnset MOVE_THUNDER, 44
    terminatelearnset


levelup SPECIES_HELIOLISK
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_PARABOLIC_CHARGE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_ELECTRIFY, 1
    learnset MOVE_THUNDER, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_RAZOR_WIND, 1
    terminatelearnset


levelup SPECIES_TYRUNT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_ROAR, 4
    learnset MOVE_BIDE, 12
    learnset MOVE_CHARM, 15
    learnset MOVE_STEALTH_ROCK, 15
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_BITE, 16
    learnset MOVE_STOMP, 17
    learnset MOVE_DRAGON_TAIL, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_DRAGON_CLAW, 36
    learnset MOVE_THRASH, 40
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_HORN_DRILL, 48
    terminatelearnset


levelup SPECIES_TYRANTRUM
    learnset MOVE_ROCK_SLIDE, 0
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_ROAR, 6
    learnset MOVE_BIDE, 12
    learnset MOVE_CHARM, 15
    learnset MOVE_STEALTH_ROCK, 15
    learnset MOVE_BITE, 16
    learnset MOVE_STOMP, 17
    learnset MOVE_DRAGON_TAIL, 24
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_DRAGON_CLAW, 36
    learnset MOVE_THRASH, 42
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_HORN_DRILL, 53
    learnset MOVE_HEAD_SMASH, 62
    learnset MOVE_GIGA_IMPACT, 63
    terminatelearnset


levelup SPECIES_AMAURA
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_TAKE_DOWN, 15
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_THUNDER_WAVE, 17
    learnset MOVE_MIST, 19
    learnset MOVE_ENCORE, 22
    learnset MOVE_ROUND, 22
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_AVALANCHE, 34
    learnset MOVE_NATURE_POWER, 36
    learnset MOVE_FREEZE_DRY, 36
    learnset MOVE_HAIL, 43
    learnset MOVE_ICE_BEAM, 44
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_HYPER_BEAM, 56
    learnset MOVE_BLIZZARD, 58
    terminatelearnset


levelup SPECIES_AURORUS
    learnset MOVE_FREEZE_DRY, 0
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_TAKE_DOWN, 15
    learnset MOVE_THUNDER_WAVE, 17
    learnset MOVE_MIST, 19
    learnset MOVE_ROUND, 22
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_AVALANCHE, 34
    learnset MOVE_FREEZE_DRY, 36
    learnset MOVE_NATURE_POWER, 37
    learnset MOVE_HAIL, 46
    learnset MOVE_ENCORE, 46
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_HYPER_BEAM, 64
    learnset MOVE_BLIZZARD, 66
    terminatelearnset


levelup SPECIES_SYLVEON
    learnset MOVE_DISARMING_VOICE, 0
    learnset MOVE_FAIRY_WIND, 0
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_COVET, 1
    learnset MOVE_BITE, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_BABY_DOLL_EYES, 12
    learnset MOVE_SWIFT, 18
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_LIGHT_SCREEN, 28
    learnset MOVE_MISTY_TERRAIN, 32
    learnset MOVE_SKILL_SWAP, 33
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_PSYCH_UP, 45
    learnset MOVE_LAST_RESORT, 48
    terminatelearnset


levelup SPECIES_HAWLUCHA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_KARATE_CHOP, 4
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_DETECT, 8
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_ENCORE, 17
    learnset MOVE_SUBMISSION, 24
    learnset MOVE_ROOST, 24
    learnset MOVE_FLING, 24
    learnset MOVE_FEATHER_DANCE, 29
    learnset MOVE_BOUNCE, 29
    learnset MOVE_TAUNT, 32
    learnset MOVE_FLYING_PRESS, 36
    learnset MOVE_ENDEAVOR, 44
    learnset MOVE_HIGH_JUMP_KICK, 46
    learnset MOVE_SWORDS_DANCE, 49
    learnset MOVE_SKY_ATTACK, 52
    learnset MOVE_SKY_DROP, 55
    terminatelearnset


levelup SPECIES_DEDENNE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_CHARGE, 10
    learnset MOVE_THUNDER_SHOCK, 11
    learnset MOVE_CHARM, 17
    learnset MOVE_NUZZLE, 20
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_THUNDER_WAVE, 23
    learnset MOVE_VOLT_SWITCH, 28
    learnset MOVE_REST, 32
    learnset MOVE_SNORE, 33
    learnset MOVE_CHARGE_BEAM, 34
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_ENTRAINMENT, 47
    learnset MOVE_SUPER_FANG, 50
    learnset MOVE_THUNDER, 53
    terminatelearnset


levelup SPECIES_CARBINK
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SHARPEN, 8
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_GUARD_SPLIT, 15
    learnset MOVE_REFLECT, 18
    learnset MOVE_FLAIL, 24
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_ROCK_POLISH, 25
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_STEALTH_ROCK, 36
    learnset MOVE_SKILL_SWAP, 40
    learnset MOVE_LIGHT_SCREEN, 44
    learnset MOVE_POWER_GEM, 45
    learnset MOVE_MOONBLAST, 52
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_SAFEGUARD, 70
    terminatelearnset


levelup SPECIES_GOOMY
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_ABSORB, 5
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 13
    learnset MOVE_BIDE, 13
    learnset MOVE_FLAIL, 23
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_RAIN_DANCE, 27
    learnset MOVE_DRAGON_PULSE, 38
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_CURSE, 41
    learnset MOVE_MUDDY_WATER, 44
    terminatelearnset


levelup SPECIES_SLIGGOO
    learnset MOVE_ACID_SPRAY, 0
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_PROTECT, 12
    learnset MOVE_BIDE, 13
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_FLAIL, 23
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_RAIN_DANCE, 27
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_BODY_SLAM, 41
    learnset MOVE_CURSE, 43
    learnset MOVE_MUDDY_WATER, 47
    terminatelearnset


levelup SPECIES_GOODRA
    learnset MOVE_AQUA_TAIL, 0
    learnset MOVE_AQUA_TAIL, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_PROTECT, 12
    learnset MOVE_BIDE, 13
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_FLAIL, 23
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_RAIN_DANCE, 27
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_BODY_SLAM, 41
    learnset MOVE_CURSE, 43
    learnset MOVE_MUDDY_WATER, 48
    learnset MOVE_OUTRAGE, 55
    learnset MOVE_POWER_WHIP, 59
    terminatelearnset


levelup SPECIES_KLEFKI
    learnset MOVE_FAIRY_LOCK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SPIKES, 15
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_CRAFTY_SHIELD, 19
    learnset MOVE_TORMENT, 21
    learnset MOVE_DRAINING_KISS, 21
    learnset MOVE_RECYCLE, 33
    learnset MOVE_IMPRISON, 33
    learnset MOVE_MIRROR_SHOT, 34
    learnset MOVE_FLASH_CANNON, 36
    learnset MOVE_FOUL_PLAY, 38
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_MAGIC_ROOM, 44
    learnset MOVE_HEAL_BLOCK, 50
    learnset MOVE_LAST_RESORT, 52
    terminatelearnset


levelup SPECIES_PHANTUMP
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_BRANCH_POKE, 4
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_LEECH_SEED, 15
    learnset MOVE_GROWTH, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_HEX, 20
    learnset MOVE_WILL_O_WISP, 23
    learnset MOVE_INGRAIN, 27
    learnset MOVE_CURSE, 30
    learnset MOVE_HORN_LEECH, 40
    learnset MOVE_PHANTOM_FORCE, 40
    learnset MOVE_DESTINY_BOND, 43
    learnset MOVE_FORESTS_CURSE, 44
    learnset MOVE_WOOD_HAMMER, 46
    terminatelearnset


levelup SPECIES_TREVENANT
    learnset MOVE_SHADOW_CLAW, 0
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BRANCH_POKE, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_GROWTH, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_HEX, 20
    learnset MOVE_WILL_O_WISP, 23
    learnset MOVE_LEECH_SEED, 23
    learnset MOVE_INGRAIN, 27
    learnset MOVE_CURSE, 30
    learnset MOVE_HORN_LEECH, 40
    learnset MOVE_PHANTOM_FORCE, 40
    learnset MOVE_DESTINY_BOND, 43
    learnset MOVE_FORESTS_CURSE, 44
    learnset MOVE_WOOD_HAMMER, 46
    terminatelearnset


levelup SPECIES_PUMPKABOO
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    terminatelearnset


levelup SPECIES_GOURGEIST
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    learnset MOVE_PHANTOM_FORCE, 52
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_BERGMITE
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_TACKLE, 3
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_CURSE, 15
    learnset MOVE_PROTECT, 15
    learnset MOVE_SHARPEN, 20
    learnset MOVE_BITE, 21
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_AVALANCHE, 27
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_ICE_BALL, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_RAPID_SPIN, 35
    learnset MOVE_RECOVER, 37
    learnset MOVE_BLIZZARD, 40
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset


levelup SPECIES_AVALUGG
    learnset MOVE_BODY_SLAM, 0
    learnset MOVE_BODY_SLAM, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_SKULL_BASH, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_CURSE, 15
    learnset MOVE_PROTECT, 15
    learnset MOVE_SHARPEN, 20
    learnset MOVE_BITE, 21
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_AVALANCHE, 29
    learnset MOVE_ICE_BALL, 30
    learnset MOVE_RAPID_SPIN, 35
    learnset MOVE_RECOVER, 39
    learnset MOVE_BLIZZARD, 43
    learnset MOVE_CRUNCH, 47
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_SKULL_BASH, 55
    terminatelearnset


levelup SPECIES_NOIBAT
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_GUST, 7
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_DOUBLE_TEAM, 12
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_BITE, 16
    learnset MOVE_AGILITY, 18
    learnset MOVE_AIR_CUTTER, 23
    learnset MOVE_RAZOR_WIND, 31
    learnset MOVE_WHIRLWIND, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_SUPER_FANG, 37
    learnset MOVE_SCREECH, 40
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_TAILWIND, 42
    learnset MOVE_HURRICANE, 54
    terminatelearnset


levelup SPECIES_NOIVERN
    learnset MOVE_DRAGON_PULSE, 0
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GUST, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_BOOMBURST, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_GUST, 11
    learnset MOVE_DOUBLE_TEAM, 12
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_BITE, 16
    learnset MOVE_AGILITY, 18
    learnset MOVE_AIR_CUTTER, 23
    learnset MOVE_RAZOR_WIND, 31
    learnset MOVE_WHIRLWIND, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_SUPER_FANG, 37
    learnset MOVE_SCREECH, 40
    learnset MOVE_AIR_SLASH, 43
    learnset MOVE_TAILWIND, 43
    learnset MOVE_HURRICANE, 58
    learnset MOVE_BOOMBURST, 68
    learnset MOVE_DRAGON_PULSE, 70
    terminatelearnset


levelup SPECIES_XERNEAS
    learnset MOVE_TACKLE, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_AROMATHERAPY, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_LIGHT_SCREEN, 5
    learnset MOVE_AURORA_BEAM, 10
    learnset MOVE_GRAVITY, 18
    learnset MOVE_AROMATHERAPY, 25
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_GEOMANCY, 41
    learnset MOVE_PSYCH_UP, 43
    learnset MOVE_HORN_LEECH, 44
    learnset MOVE_INGRAIN, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_MISTY_TERRAIN, 50
    learnset MOVE_TAKE_DOWN, 50
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_HEAL_PULSE, 65
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_GIGA_IMPACT, 86
    terminatelearnset


levelup SPECIES_YVELTAL
    learnset MOVE_GUST, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_RAZOR_WIND, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_ROOST, 1
    learnset MOVE_TAUNT, 5
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_SNARL, 13
    learnset MOVE_AIR_SLASH, 23
    learnset MOVE_DISABLE, 24
    learnset MOVE_TAILWIND, 25
    learnset MOVE_ROOST, 30
    learnset MOVE_OBLIVION_WING, 38
    learnset MOVE_DARK_PULSE, 41
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_PHANTOM_FORCE, 55
    learnset MOVE_FOUL_PLAY, 55
    learnset MOVE_DRAGON_RUSH, 64
    learnset MOVE_HURRICANE, 70
    learnset MOVE_FOCUS_BLAST, 73
    learnset MOVE_SKY_ATTACK, 86
    learnset MOVE_HYPER_BEAM, 86
    terminatelearnset


levelup SPECIES_ZYGARDE
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 1
    learnset MOVE_CORE_ENFORCER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 24
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 84
    terminatelearnset


levelup SPECIES_DIANCIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SHARPEN, 5
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_REFLECT, 12
    learnset MOVE_GUARD_SPLIT, 13
    learnset MOVE_FLAIL, 25
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_ROCK_POLISH, 35
    learnset MOVE_STEALTH_ROCK, 45
    learnset MOVE_SKILL_SWAP, 46
    learnset MOVE_TRICK_ROOM, 46
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_LIGHT_SCREEN, 50
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_SAFEGUARD, 70
    learnset MOVE_DIAMOND_STORM, 71
    terminatelearnset


levelup SPECIES_HOOPA
    learnset MOVE_HYPERSPACE_HOLE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_ALLY_SWITCH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_MAGIC_COAT, 10
    learnset MOVE_LIGHT_SCREEN, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SKILL_SWAP, 25
    learnset MOVE_POWER_SPLIT, 29
    learnset MOVE_GUARD_SPLIT, 29
    learnset MOVE_PHANTOM_FORCE, 35
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_WONDER_ROOM, 50
    learnset MOVE_TRICK_ROOM, 50
    learnset MOVE_SHADOW_BALL, 55
    learnset MOVE_NASTY_PLOT, 68
    learnset MOVE_PSYCHIC, 75
    learnset MOVE_HYPERSPACE_HOLE, 85
    terminatelearnset


levelup SPECIES_VOLCANION
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_STEAM_ERUPTION, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_LEER, 6
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_STOMP, 35
    learnset MOVE_MIST, 35
    learnset MOVE_INCINERATE, 36
    learnset MOVE_HAZE, 37
    learnset MOVE_SCALD, 40
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_FLARE_BLITZ, 68
    learnset MOVE_OVERHEAT, 75
    learnset MOVE_STEAM_ERUPTION, 78
    learnset MOVE_EXPLOSION, 83
    terminatelearnset


levelup SPECIES_ROWLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEAFAGE, 3
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 8
    learnset MOVE_PECK, 8
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_OMINOUS_WIND, 16
    learnset MOVE_FORESIGHT, 18
    learnset MOVE_SYNTHESIS, 21
    learnset MOVE_PLUCK, 21
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_FURY_ATTACK, 29
    learnset MOVE_LEAF_BLADE, 32
    learnset MOVE_NASTY_PLOT, 34
    learnset MOVE_FEATHER_DANCE, 35
    learnset MOVE_BRAVE_BIRD, 39
    terminatelearnset


levelup SPECIES_DARTRIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 8
    learnset MOVE_ASTONISH, 11
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_OMINOUS_WIND, 16
    learnset MOVE_FORESIGHT, 19
    learnset MOVE_SYNTHESIS, 23
    learnset MOVE_PLUCK, 24
    learnset MOVE_FURY_ATTACK, 33
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_LEAF_BLADE, 40
    learnset MOVE_NASTY_PLOT, 41
    learnset MOVE_FEATHER_DANCE, 45
    learnset MOVE_BRAVE_BIRD, 50
    terminatelearnset


levelup SPECIES_DECIDUEYE
    learnset MOVE_SPIRIT_SHACKLE, 0
    learnset MOVE_SPIRIT_SHACKLE, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 8
    learnset MOVE_ASTONISH, 11
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_OMINOUS_WIND, 16
    learnset MOVE_FORESIGHT, 19
    learnset MOVE_SYNTHESIS, 23
    learnset MOVE_PLUCK, 24
    learnset MOVE_FURY_ATTACK, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_NASTY_PLOT, 44
    learnset MOVE_LEAF_BLADE, 44
    learnset MOVE_FEATHER_DANCE, 50
    learnset MOVE_BRAVE_BIRD, 56
    terminatelearnset


levelup SPECIES_LITTEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_EMBER, 3
    learnset MOVE_GROWL, 4
    learnset MOVE_LICK, 6
    learnset MOVE_LEER, 11
    learnset MOVE_ROAR, 13
    learnset MOVE_DOUBLE_KICK, 17
    learnset MOVE_FIRE_FANG, 17
    learnset MOVE_BITE, 18
    learnset MOVE_FURY_SWIPES, 19
    learnset MOVE_SWAGGER, 26
    learnset MOVE_SCARY_FACE, 31
    learnset MOVE_FLAMETHROWER, 32
    learnset MOVE_THRASH, 32
    learnset MOVE_FLARE_BLITZ, 39
    learnset MOVE_OUTRAGE, 46
    terminatelearnset


levelup SPECIES_TORRACAT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_LICK, 8
    learnset MOVE_LEER, 11
    learnset MOVE_ROAR, 13
    learnset MOVE_DOUBLE_KICK, 18
    learnset MOVE_BITE, 19
    learnset MOVE_FIRE_FANG, 19
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_SWAGGER, 31
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_THRASH, 41
    learnset MOVE_FLARE_BLITZ, 50
    learnset MOVE_OUTRAGE, 55
    terminatelearnset


levelup SPECIES_INCINEROAR
    learnset MOVE_DARKEST_LARIAT, 0
    learnset MOVE_DARKEST_LARIAT, 1
    learnset MOVE_CROSS_CHOP, 1
    learnset MOVE_THROAT_CHOP, 1
    learnset MOVE_BULK_UP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_LICK, 8
    learnset MOVE_LEER, 11
    learnset MOVE_ROAR, 13
    learnset MOVE_DOUBLE_KICK, 18
    learnset MOVE_BITE, 19
    learnset MOVE_FIRE_FANG, 19
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_SWAGGER, 30
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_FLAMETHROWER, 44
    learnset MOVE_THRASH, 44
    learnset MOVE_FLARE_BLITZ, 56
    learnset MOVE_OUTRAGE, 60
    learnset MOVE_CROSS_CHOP, 66
    terminatelearnset


levelup SPECIES_POPPLIO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_GROWL, 4
    learnset MOVE_DISARMING_VOICE, 6
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_BABY_DOLL_EYES, 11
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_SING, 21
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_ENCORE, 21
    learnset MOVE_DOUBLE_SLAP, 29
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_MOONBLAST, 34
    learnset MOVE_MISTY_TERRAIN, 35
    learnset MOVE_HYDRO_PUMP, 39
    learnset MOVE_CAPTIVATE, 39
    terminatelearnset


levelup SPECIES_BRIONNE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_BABY_DOLL_EYES, 11
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_SING, 23
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_ENCORE, 24
    learnset MOVE_DOUBLE_SLAP, 33
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_MISTY_TERRAIN, 44
    learnset MOVE_CAPTIVATE, 46
    learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_PRIMARINA
    learnset MOVE_SPARKLING_ARIA, 0
    learnset MOVE_SPARKLING_ARIA, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_DISARMING_VOICE, 9
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_BABY_DOLL_EYES, 11
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_SING, 23
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_ENCORE, 24
    learnset MOVE_DOUBLE_SLAP, 33
    learnset MOVE_HYPER_VOICE, 41
    learnset MOVE_MISTY_TERRAIN, 47
    learnset MOVE_MOONBLAST, 47
    learnset MOVE_CAPTIVATE, 49
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_PIKIPEK
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_ROCK_SMASH, 9
    learnset MOVE_SUPERSONIC, 13
    learnset MOVE_PLUCK, 15
    learnset MOVE_ROOST, 19
    learnset MOVE_FURY_ATTACK, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_DRILL_PECK, 27
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_FEATHER_DANCE, 33
    learnset MOVE_HYPER_VOICE, 37
    terminatelearnset


levelup SPECIES_TRUMBEAK
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_ROCK_SMASH, 9
    learnset MOVE_SUPERSONIC, 13
    learnset MOVE_PLUCK, 16
    learnset MOVE_ROOST, 21
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_SCREECH, 29
    learnset MOVE_DRILL_PECK, 32
    learnset MOVE_BULLET_SEED, 37
    learnset MOVE_FEATHER_DANCE, 40
    learnset MOVE_HYPER_VOICE, 45
    terminatelearnset


levelup SPECIES_TOUCANNON
    learnset MOVE_BEAK_BLAST, 0
    learnset MOVE_BEAK_BLAST, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_ROCK_SMASH, 9
    learnset MOVE_SUPERSONIC, 13
    learnset MOVE_PLUCK, 16
    learnset MOVE_ROOST, 21
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_BEAK_BLAST, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_BULLET_SEED, 40
    learnset MOVE_FEATHER_DANCE, 44
    learnset MOVE_HYPER_VOICE, 50
    terminatelearnset


levelup SPECIES_YUNGOOS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 3
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_ODOR_SLEUTH, 13
    learnset MOVE_BIDE, 16
    learnset MOVE_BITE, 19
    learnset MOVE_MUD_SLAP, 22
    learnset MOVE_SUPER_FANG, 25
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_SCARY_FACE, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_HYPER_FANG, 37
    learnset MOVE_YAWN, 40
    learnset MOVE_THRASH, 43
    learnset MOVE_REST, 46
    terminatelearnset


levelup SPECIES_GUMSHOOS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 3
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_ODOR_SLEUTH, 13
    learnset MOVE_BIDE, 16
    learnset MOVE_BITE, 19
    learnset MOVE_MUD_SLAP, 23
    learnset MOVE_SUPER_FANG, 27
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_SCARY_FACE, 35
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HYPER_FANG, 43
    learnset MOVE_YAWN, 47
    learnset MOVE_THRASH, 51
    learnset MOVE_REST, 55
    terminatelearnset


levelup SPECIES_GRUBBIN
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_BUG_BITE, 11
    learnset MOVE_BITE, 12
    learnset MOVE_SPARK, 18
    learnset MOVE_ACROBATICS, 19
    learnset MOVE_STICKY_WEB, 25
    learnset MOVE_X_SCISSOR, 27
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DIG, 34
    terminatelearnset


levelup SPECIES_CHARJABUG
    learnset MOVE_CHARGE, 0
    learnset MOVE_CHARGE, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_BITE, 12
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_SPARK, 19
    learnset MOVE_ACROBATICS, 19
    learnset MOVE_STICKY_WEB, 29
    learnset MOVE_X_SCISSOR, 33
    learnset MOVE_CRUNCH, 34
    learnset MOVE_DIG, 43
    learnset MOVE_IRON_DEFENSE, 53
    learnset MOVE_DISCHARGE, 54
    terminatelearnset


levelup SPECIES_VIKAVOLT
    learnset MOVE_THUNDERBOLT, 0
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_DIG, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_BITE, 12
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_SPARK, 19
    learnset MOVE_ACROBATICS, 19
    learnset MOVE_STICKY_WEB, 29
    learnset MOVE_BUG_BUZZ, 33
    learnset MOVE_GUILLOTINE, 34
    learnset MOVE_DIG, 37
    learnset MOVE_FLY, 50
    learnset MOVE_AGILITY, 53
    learnset MOVE_ZAP_CANNON, 53
    terminatelearnset


levelup SPECIES_CRABRAWLER
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LEER, 9
    learnset MOVE_PURSUIT, 13
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_POWER_UP_PUNCH, 22
    learnset MOVE_DIZZY_PUNCH, 25
    learnset MOVE_PAYBACK, 29
    learnset MOVE_REVERSAL, 33
    learnset MOVE_CRABHAMMER, 37
    learnset MOVE_IRON_DEFENSE, 42
    learnset MOVE_DYNAMIC_PUNCH, 45
    learnset MOVE_CLOSE_COMBAT, 49
    terminatelearnset


levelup SPECIES_CRABOMINABLE
    learnset MOVE_ICE_PUNCH, 0
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LEER, 9
    learnset MOVE_PURSUIT, 13
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_POWER_UP_PUNCH, 22
    learnset MOVE_DIZZY_PUNCH, 25
    learnset MOVE_AVALANCHE, 29
    learnset MOVE_REVERSAL, 33
    learnset MOVE_ICE_HAMMER, 37
    learnset MOVE_IRON_DEFENSE, 42
    learnset MOVE_DYNAMIC_PUNCH, 45
    learnset MOVE_CLOSE_COMBAT, 49
    terminatelearnset


levelup SPECIES_ORICORIO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_DOUBLE_SLAP, 23
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_ROOST, 30
    learnset MOVE_CAPTIVATE, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_MIRROR_MOVE, 43
    learnset MOVE_AGILITY, 46
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_CUTIEFLY
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_SILVER_WIND, 13
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_STRUGGLE_BUG, 17
    learnset MOVE_AROMATHERAPY, 32
    learnset MOVE_SWITCHEROO, 36
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_BUG_BUZZ, 37
    learnset MOVE_QUIVER_DANCE, 47
    terminatelearnset


levelup SPECIES_RIBOMBEE
    learnset MOVE_POLLEN_PUFF, 0
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_COVET, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_SILVER_WIND, 13
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_STRUGGLE_BUG, 17
    learnset MOVE_SWEET_SCENT, 21
    learnset MOVE_AROMATHERAPY, 36
    learnset MOVE_SWITCHEROO, 40
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_QUIVER_DANCE, 57
    terminatelearnset


levelup SPECIES_ROCKRUFF
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_BITE, 13
    learnset MOVE_HOWL, 14
    learnset MOVE_ODOR_SLEUTH, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_ROAR, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_CRUNCH, 37
    learnset MOVE_STEALTH_ROCK, 37
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset


levelup SPECIES_LYCANROC
    learnset MOVE_SUCKER_PUNCH, 0
    learnset MOVE_ACCELEROCK, 0
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_ACCELEROCK, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_BITE, 13
    learnset MOVE_HOWL, 14
    learnset MOVE_ODOR_SLEUTH, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_ROAR, 28
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_CRUNCH, 41
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_STEALTH_ROCK, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 54
    terminatelearnset


levelup SPECIES_WISHIWASHI
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_BRINE, 12
    learnset MOVE_TEARFUL_LOOK, 18
    learnset MOVE_BEAT_UP, 19
    learnset MOVE_DIVE, 24
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_UPROAR, 28
    learnset MOVE_SOAK, 34
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_ENDEAVOR, 44
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_MAREANIE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 1
    learnset MOVE_PECK, 5
    learnset MOVE_BITE, 9
    learnset MOVE_WIDE_GUARD, 10
    learnset MOVE_VENOSHOCK, 19
    learnset MOVE_TOXIC_SPIKES, 22
    learnset MOVE_RECOVER, 26
    learnset MOVE_SPIKE_CANNON, 29
    learnset MOVE_PIN_MISSILE, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_VENOM_DRENCH, 40
    learnset MOVE_LIQUIDATION, 41
    learnset MOVE_POISON_JAB, 41
    terminatelearnset


levelup SPECIES_TOXAPEX
    learnset MOVE_BANEFUL_BUNKER, 0
    learnset MOVE_BANEFUL_BUNKER, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_BITE, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_PECK, 5
    learnset MOVE_BITE, 9
    learnset MOVE_WIDE_GUARD, 17
    learnset MOVE_VENOSHOCK, 19
    learnset MOVE_TOXIC_SPIKES, 22
    learnset MOVE_RECOVER, 26
    learnset MOVE_SPIKE_CANNON, 29
    learnset MOVE_PIN_MISSILE, 37
    learnset MOVE_TOXIC, 39
    learnset MOVE_VENOM_DRENCH, 42
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_LIQUIDATION, 45
    terminatelearnset


levelup SPECIES_MUDBRAY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_MUD_SPORT, 3
    learnset MOVE_ROTOTILLER, 8
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_IRON_DEFENSE, 15
    learnset MOVE_STOMP, 16
    learnset MOVE_STRENGTH, 20
    learnset MOVE_BIDE, 22
    learnset MOVE_HIGH_HORSEPOWER, 26
    learnset MOVE_COUNTER, 29
    learnset MOVE_HEAVY_SLAM, 31
    learnset MOVE_EARTHQUAKE, 36
    learnset MOVE_MEGA_KICK, 41
    learnset MOVE_SUPERPOWER, 44
    terminatelearnset


levelup SPECIES_MUDSDALE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_MUD_SPORT, 3
    learnset MOVE_ROTOTILLER, 8
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_DOUBLE_KICK, 15
    learnset MOVE_STOMP, 16
    learnset MOVE_STRENGTH, 20
    learnset MOVE_BIDE, 22
    learnset MOVE_HIGH_HORSEPOWER, 26
    learnset MOVE_IRON_DEFENSE, 29
    learnset MOVE_COUNTER, 32
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_EARTHQUAKE, 43
    learnset MOVE_MEGA_KICK, 50
    learnset MOVE_SUPERPOWER, 55
    terminatelearnset


levelup SPECIES_DEWPIDER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_INFESTATION, 5
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_SPIDER_WEB, 8
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_BITE, 14
    learnset MOVE_AQUA_RING, 19
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_CRUNCH, 27
    learnset MOVE_SOAK, 28
    learnset MOVE_LUNGE, 36
    learnset MOVE_LEECH_LIFE, 37
    learnset MOVE_ENTRAINMENT, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_MIRROR_COAT, 44
    terminatelearnset


levelup SPECIES_ARAQUANID
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SOAK, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_SPIDER_WEB, 1
    learnset MOVE_INFESTATION, 5
    learnset MOVE_SPIDER_WEB, 8
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_AQUA_RING, 20
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BITE, 21
    learnset MOVE_CRUNCH, 31
    learnset MOVE_SOAK, 32
    learnset MOVE_LUNGE, 44
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_ENTRAINMENT, 49
    learnset MOVE_LIQUIDATION, 53
    learnset MOVE_MIRROR_COAT, 56
    terminatelearnset


levelup SPECIES_FOMANTIS
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_GROWTH, 9
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_INGRAIN, 14
    learnset MOVE_SWEET_SCENT, 27
    learnset MOVE_SLASH, 28
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_SYNTHESIS, 31
    learnset MOVE_LEAF_BLADE, 32
    learnset MOVE_SUNNY_DAY, 45
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset


levelup SPECIES_LURANTIS
    learnset MOVE_PETAL_BLIZZARD, 0
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_GROWTH, 14
    learnset MOVE_INGRAIN, 19
    learnset MOVE_SLASH, 28
    learnset MOVE_SWEET_SCENT, 29
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_SYNTHESIS, 32
    learnset MOVE_LEAF_BLADE, 34
    learnset MOVE_SUNNY_DAY, 52
    learnset MOVE_SOLAR_BLADE, 55
    terminatelearnset


levelup SPECIES_MORELULL
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_FLASH, 8
    learnset MOVE_CONFUSE_RAY, 13
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_INGRAIN, 14
    learnset MOVE_MOONLIGHT, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_STRENGTH_SAP, 28
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_DAZZLING_GLEAM, 32
    learnset MOVE_SPORE, 36
    learnset MOVE_MOONBLAST, 39
    learnset MOVE_DREAM_EATER, 43
    learnset MOVE_SPOTLIGHT, 46
    terminatelearnset


levelup SPECIES_SHIINOTIC
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_FLASH, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_FLASH, 8
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_MOONLIGHT, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_INGRAIN, 22
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_STRENGTH_SAP, 30
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_SPORE, 42
    learnset MOVE_MOONBLAST, 47
    learnset MOVE_DREAM_EATER, 52
    learnset MOVE_SPOTLIGHT, 53
    terminatelearnset


levelup SPECIES_SALANDIT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_EMBER, 7
    learnset MOVE_SMOG, 10
    learnset MOVE_DRAGON_RAGE, 13
    learnset MOVE_SWEET_SCENT, 14
    learnset MOVE_POISON_FANG, 15
    learnset MOVE_DOUBLE_SLAP, 21
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_NASTY_PLOT, 28
    learnset MOVE_INCINERATE, 30
    learnset MOVE_VENOSHOCK, 35
    learnset MOVE_TOXIC, 42
    learnset MOVE_DRAGON_PULSE, 43
    learnset MOVE_VENOM_DRENCH, 45
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_ENDEAVOR, 60
    terminatelearnset


levelup SPECIES_SALAZZLE
    learnset MOVE_FIRE_LASH, 0
    learnset MOVE_CAPTIVATE, 0
    learnset MOVE_FIRE_LASH, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ENDEAVOR, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_CAPTIVATE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_DRAGON_RAGE, 13
    learnset MOVE_SWEET_SCENT, 14
    learnset MOVE_POISON_FANG, 15
    learnset MOVE_SMOG, 16
    learnset MOVE_DOUBLE_SLAP, 21
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_NASTY_PLOT, 28
    learnset MOVE_INCINERATE, 30
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_TOXIC, 48
    learnset MOVE_DRAGON_PULSE, 49
    learnset MOVE_VENOM_DRENCH, 51
    learnset MOVE_FLAMETHROWER, 51
    terminatelearnset


levelup SPECIES_STUFFUL
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_BABY_DOLL_EYES, 6
    learnset MOVE_BRUTAL_SWING, 12
    learnset MOVE_PAYBACK, 15
    learnset MOVE_ENDURE, 16
    learnset MOVE_STRENGTH, 20
    learnset MOVE_FLAIL, 23
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_HAMMER_ARM, 32
    learnset MOVE_THRASH, 36
    learnset MOVE_PAIN_SPLIT, 40
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset


levelup SPECIES_BEWEAR
    learnset MOVE_BIND, 0
    learnset MOVE_BIND, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_PAYBACK, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_BABY_DOLL_EYES, 10
    learnset MOVE_BRUTAL_SWING, 12
    learnset MOVE_ENDURE, 16
    learnset MOVE_STRENGTH, 20
    learnset MOVE_PAYBACK, 23
    learnset MOVE_FLAIL, 24
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_HAMMER_ARM, 36
    learnset MOVE_THRASH, 42
    learnset MOVE_PAIN_SPLIT, 48
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_SUPERPOWER, 60
    terminatelearnset


levelup SPECIES_BOUNSWEET
    learnset MOVE_SPLASH, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_AROMATIC_MIST, 32
    learnset MOVE_AROMATHERAPY, 36
    terminatelearnset


levelup SPECIES_STEENEE
    learnset MOVE_DOUBLE_SLAP, 0
    learnset MOVE_FLAIL, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_DOUBLE_SLAP, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_MAGICAL_LEAF, 21
    learnset MOVE_STOMP, 28
    learnset MOVE_TEETER_DANCE, 29
    learnset MOVE_AROMATIC_MIST, 36
    learnset MOVE_CAPTIVATE, 37
    learnset MOVE_AROMATHERAPY, 43
    learnset MOVE_LEAF_STORM, 48
    terminatelearnset


levelup SPECIES_TSAREENA
    learnset MOVE_TROP_KICK, 0
    learnset MOVE_TROP_KICK, 1
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_PUNISHMENT, 1
    learnset MOVE_DOUBLE_SLAP, 1
    learnset MOVE_SWAGGER, 5
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_MAGICAL_LEAF, 21
    learnset MOVE_STOMP, 28
    learnset MOVE_TEETER_DANCE, 29
    learnset MOVE_AROMATIC_MIST, 36
    learnset MOVE_CAPTIVATE, 37
    learnset MOVE_AROMATHERAPY, 43
    learnset MOVE_LEAF_STORM, 48
    learnset MOVE_HIGH_JUMP_KICK, 53
    learnset MOVE_POWER_WHIP, 53
    terminatelearnset


levelup SPECIES_COMFEY
    learnset MOVE_WRAP, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_VINE_WHIP, 3
    learnset MOVE_HELPING_HAND, 6
    learnset MOVE_DRAINING_KISS, 8
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_MAGICAL_LEAF, 12
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_GROWTH, 13
    learnset MOVE_WRAP, 16
    learnset MOVE_SYNTHESIS, 22
    learnset MOVE_NATURAL_GIFT, 22
    learnset MOVE_SWEET_KISS, 23
    learnset MOVE_GRASS_KNOT, 28
    learnset MOVE_PETAL_BLIZZARD, 29
    learnset MOVE_FLORAL_HEALING, 33
    learnset MOVE_SWEET_SCENT, 36
    learnset MOVE_AROMATHERAPY, 39
    learnset MOVE_PETAL_DANCE, 42
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_GRASSY_TERRAIN, 47
    terminatelearnset


levelup SPECIES_ORANGURU
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_AFTER_YOU, 4
    learnset MOVE_TAUNT, 8
    learnset MOVE_STORED_POWER, 15
    learnset MOVE_QUASH, 18
    learnset MOVE_PSYCH_UP, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_CALM_MIND, 23
    learnset MOVE_NASTY_PLOT, 27
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_INSTRUCT, 41
    learnset MOVE_TRICK_ROOM, 44
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_FOUL_PLAY, 46
    learnset MOVE_FUTURE_SIGHT, 53
    terminatelearnset


levelup SPECIES_PASSIMIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_BEAT_UP, 15
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_TAKE_DOWN, 23
    learnset MOVE_BESTOW, 25
    learnset MOVE_BULK_UP, 33
    learnset MOVE_FLING, 34
    learnset MOVE_THRASH, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_CLOSE_COMBAT, 46
    learnset MOVE_REVERSAL, 50
    learnset MOVE_GIGA_IMPACT, 55
    terminatelearnset


levelup SPECIES_WIMPOD
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DEFENSE_CURL, 1
    terminatelearnset


levelup SPECIES_GOLISOPOD
    learnset MOVE_FIRST_IMPRESSION, 0
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_SPITE, 13
    learnset MOVE_SLASH, 24
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_SUCKER_PUNCH, 27
    learnset MOVE_SWORDS_DANCE, 28
    learnset MOVE_RAZOR_SHELL, 29
    learnset MOVE_PIN_MISSILE, 38
    learnset MOVE_LIQUIDATION, 45
    terminatelearnset


levelup SPECIES_SANDYGAST
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SAND_TOMB, 11
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_HYPNOSIS, 28
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_EARTH_POWER, 47
    learnset MOVE_SHORE_UP, 52
    learnset MOVE_SANDSTORM, 57
    terminatelearnset


levelup SPECIES_PALOSSAND
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_SAND_TOMB, 14
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_HYPNOSIS, 28
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_SHADOW_BALL, 44
    learnset MOVE_EARTH_POWER, 50
    learnset MOVE_SHORE_UP, 57
    learnset MOVE_SANDSTORM, 64
    terminatelearnset


levelup SPECIES_PYUKUMUKU
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_TAUNT, 9
    learnset MOVE_SAFEGUARD, 14
    learnset MOVE_COUNTER, 18
    learnset MOVE_PURIFY, 23
    learnset MOVE_CURSE, 27
    learnset MOVE_GASTRO_ACID, 32
    learnset MOVE_PAIN_SPLIT, 36
    learnset MOVE_RECOVER, 41
    learnset MOVE_SOAK, 45
    learnset MOVE_TOXIC, 50
    learnset MOVE_MEMENTO, 54
    terminatelearnset


levelup SPECIES_TYPE_NULL
    learnset MOVE_TACKLE, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_RAGE, 5
    learnset MOVE_PURSUIT, 10
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_IMPRISON, 15
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_CRUSH_CLAW, 25
    learnset MOVE_METAL_SOUND, 31
    learnset MOVE_DOUBLE_HIT, 33
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_AIR_SLASH, 44
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_IRON_HEAD, 47
    learnset MOVE_TRI_ATTACK, 53
    learnset MOVE_PUNISHMENT, 65
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_RAZOR_WIND, 70
    learnset MOVE_HEAL_BLOCK, 85
    terminatelearnset


levelup SPECIES_SILVALLY
    learnset MOVE_MULTI_ATTACK, 0
    learnset MOVE_MULTI_ATTACK, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_POISON_FANG, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_HEAL_BLOCK, 1
    learnset MOVE_RAGE, 5
    learnset MOVE_PURSUIT, 10
    learnset MOVE_BITE, 15
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_CRUSH_CLAW, 25
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_METAL_SOUND, 31
    learnset MOVE_DOUBLE_HIT, 33
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_AIR_SLASH, 44
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_CRUNCH, 47
    learnset MOVE_TRI_ATTACK, 53
    learnset MOVE_PUNISHMENT, 65
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_RAZOR_WIND, 70
    learnset MOVE_PARTING_SHOT, 71
    terminatelearnset


levelup SPECIES_MINIOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_KOMALA
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_STOCKPILE, 6
    learnset MOVE_SPIT_UP, 6
    learnset MOVE_SWALLOW, 6
    learnset MOVE_RAPID_SPIN, 11
    learnset MOVE_YAWN, 16
    learnset MOVE_SLAM, 21
    learnset MOVE_FLAIL, 26
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_WOOD_HAMMER, 41
    learnset MOVE_THRASH, 46
    terminatelearnset


levelup SPECIES_TURTONATOR
    learnset MOVE_SMOG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOG, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_ENDURE, 16
    learnset MOVE_FLAIL, 16
    learnset MOVE_INCINERATE, 16
    learnset MOVE_IRON_DEFENSE, 24
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_FLAMETHROWER, 32
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_SHELL_SMASH, 40
    learnset MOVE_SHELL_TRAP, 42
    learnset MOVE_OVERHEAT, 48
    learnset MOVE_EXPLOSION, 52
    terminatelearnset


levelup SPECIES_TOGEDEMARU
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_CHARGE, 11
    learnset MOVE_THUNDER_SHOCK, 15
    learnset MOVE_SPARK, 21
    learnset MOVE_NUZZLE, 21
    learnset MOVE_MAGNET_RISE, 30
    learnset MOVE_FELL_STINGER, 35
    learnset MOVE_ZING_ZAP, 36
    learnset MOVE_PIN_MISSILE, 37
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_ELECTRIC_TERRAIN, 43
    learnset MOVE_WILD_CHARGE, 48
    learnset MOVE_SPIKY_SHIELD, 54
    terminatelearnset


levelup SPECIES_MIMIKYU
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_MIMIC, 21
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_SLASH, 34
    learnset MOVE_HONE_CLAWS, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_PLAY_ROUGH, 50
    learnset MOVE_PAIN_SPLIT, 55
    terminatelearnset


levelup SPECIES_BRUXISH
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_CONFUSION, 9
    learnset MOVE_BITE, 12
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_DISABLE, 20
    learnset MOVE_PSYWAVE, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_AQUA_TAIL, 33
    learnset MOVE_SCREECH, 36
    learnset MOVE_PSYCHIC_FANGS, 41
    learnset MOVE_SYNCHRONOISE, 44
    terminatelearnset


levelup SPECIES_DRAMPA
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_TWISTER, 5
    learnset MOVE_PROTECT, 9
    learnset MOVE_GLARE, 14
    learnset MOVE_DRAGON_RAGE, 21
    learnset MOVE_NATURAL_GIFT, 25
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_LIGHT_SCREEN, 29
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_DRAGON_PULSE, 37
    learnset MOVE_FLY, 45
    learnset MOVE_HYPER_VOICE, 49
    learnset MOVE_OUTRAGE, 54
    terminatelearnset


levelup SPECIES_DHELMISE
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_WRAP, 8
    learnset MOVE_MEGA_DRAIN, 8
    learnset MOVE_GROWTH, 16
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_SWITCHEROO, 24
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_WHIRLPOOL, 29
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_HEAVY_SLAM, 42
    learnset MOVE_SLAM, 42
    learnset MOVE_ANCHOR_SHOT, 42
    learnset MOVE_ENERGY_BALL, 49
    learnset MOVE_PHANTOM_FORCE, 57
    learnset MOVE_POWER_WHIP, 61
    terminatelearnset


levelup SPECIES_JANGMO_O
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_BIDE, 9
    learnset MOVE_DRAGON_TAIL, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_WORK_UP, 24
    learnset MOVE_SCREECH, 28
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_DRAGON_CLAW, 36
    learnset MOVE_NOBLE_ROAR, 40
    learnset MOVE_DRAGON_DANCE, 44
    learnset MOVE_OUTRAGE, 48
    terminatelearnset


levelup SPECIES_HAKAMO_O
    learnset MOVE_SKY_UPPERCUT, 0
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_SKY_UPPERCUT, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BIDE, 9
    learnset MOVE_PROTECT, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_DRAGON_TAIL, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_WORK_UP, 24
    learnset MOVE_SCREECH, 28
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_DRAGON_CLAW, 37
    learnset MOVE_NOBLE_ROAR, 42
    learnset MOVE_DRAGON_DANCE, 48
    learnset MOVE_OUTRAGE, 53
    learnset MOVE_CLOSE_COMBAT, 59
    terminatelearnset


levelup SPECIES_KOMMO_O
    learnset MOVE_CLANGING_SCALES, 0
    learnset MOVE_CLANGING_SCALES, 1
    learnset MOVE_BELLY_DRUM, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_SKY_UPPERCUT, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BIDE, 9
    learnset MOVE_PROTECT, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_DRAGON_TAIL, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_WORK_UP, 24
    learnset MOVE_SCREECH, 28
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_DRAGON_CLAW, 37
    learnset MOVE_NOBLE_ROAR, 44
    learnset MOVE_DRAGON_DANCE, 51
    learnset MOVE_OUTRAGE, 59
    learnset MOVE_CLOSE_COMBAT, 67
    learnset MOVE_CLANGOROUS_SOUL, 68
    learnset MOVE_BOOMBURST, 76
    terminatelearnset


levelup SPECIES_TAPU_KOKO
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_POWER_SWAP, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_FAIRY_WIND, 10
    learnset MOVE_SPARK, 14
    learnset MOVE_FALSE_SWIPE, 15
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_CHARGE, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_MIRROR_MOVE, 38
    learnset MOVE_AGILITY, 43
    learnset MOVE_DISCHARGE, 46
    learnset MOVE_WILD_CHARGE, 46
    learnset MOVE_NATURES_MADNESS, 49
    learnset MOVE_MEAN_LOOK, 50
    learnset MOVE_ELECTRO_BALL, 58
    learnset MOVE_BRAVE_BIRD, 65
    learnset MOVE_POWER_SWAP, 70
    learnset MOVE_ELECTRIC_TERRAIN, 75
    terminatelearnset


levelup SPECIES_TAPU_LELE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYCHIC_TERRAIN, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_AROMATHERAPY, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_DRAINING_KISS, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_PSYWAVE, 8
    learnset MOVE_AROMATHERAPY, 10
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SWEET_SCENT, 28
    learnset MOVE_AROMATIC_MIST, 30
    learnset MOVE_FLATTER, 38
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_EXTRASENSORY, 43
    learnset MOVE_NATURES_MADNESS, 49
    learnset MOVE_SKILL_SWAP, 49
    learnset MOVE_MEAN_LOOK, 50
    learnset MOVE_TICKLE, 52
    learnset MOVE_MOONBLAST, 59
    learnset MOVE_PSYCHIC_TERRAIN, 75
    terminatelearnset


levelup SPECIES_TAPU_BULU
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_DISABLE, 10
    learnset MOVE_GIGA_DRAIN, 14
    learnset MOVE_HORN_ATTACK, 19
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_WHIRLWIND, 25
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_HORN_LEECH, 36
    learnset MOVE_ROTOTILLER, 38
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_NATURES_MADNESS, 49
    learnset MOVE_MEAN_LOOK, 50
    learnset MOVE_MEGAHORN, 59
    learnset MOVE_WOOD_HAMMER, 60
    learnset MOVE_SKULL_BASH, 64
    learnset MOVE_GRASSY_TERRAIN, 75
    terminatelearnset


levelup SPECIES_TAPU_FINI
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_MIST, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_MIST, 10
    learnset MOVE_HAZE, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_WHIRLPOOL, 14
    learnset MOVE_REFRESH, 26
    learnset MOVE_BRINE, 28
    learnset MOVE_AQUA_RING, 32
    learnset MOVE_DEFOG, 33
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_SURF, 40
    learnset MOVE_MUDDY_WATER, 46
    learnset MOVE_SOAK, 46
    learnset MOVE_NATURES_MADNESS, 49
    learnset MOVE_MEAN_LOOK, 50
    learnset MOVE_MOONBLAST, 60
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_MISTY_TERRAIN, 75
    terminatelearnset


levelup SPECIES_COSMOG
    learnset MOVE_SPLASH, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_TELEPORT, 23
    terminatelearnset


levelup SPECIES_COSMOEM
    learnset MOVE_COSMIC_POWER, 0
    learnset MOVE_COSMIC_POWER, 1
    learnset MOVE_TELEPORT, 1
    terminatelearnset


levelup SPECIES_SOLGALEO
    learnset MOVE_SUNSTEEL_STRIKE, 0
    learnset MOVE_SUNSTEEL_STRIKE, 1
    learnset MOVE_COSMIC_POWER, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_WAKE_UP_SLAP, 1
    learnset MOVE_IRON_HEAD, 7
    learnset MOVE_METAL_SOUND, 13
    learnset MOVE_ZEN_HEADBUTT, 20
    learnset MOVE_FLASH_CANNON, 25
    learnset MOVE_MORNING_SUN, 33
    learnset MOVE_CRUNCH, 39
    learnset MOVE_METAL_BURST, 46
    learnset MOVE_SOLAR_BEAM, 55
    learnset MOVE_WILD_CHARGE, 56
    learnset MOVE_NOBLE_ROAR, 59
    learnset MOVE_FLARE_BLITZ, 65
    learnset MOVE_WIDE_GUARD, 72
    learnset MOVE_GIGA_IMPACT, 78
    terminatelearnset


levelup SPECIES_LUNALA
    learnset MOVE_MOONGEIST_BEAM, 0
    learnset MOVE_MOONGEIST_BEAM, 1
    learnset MOVE_COSMIC_POWER, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_CONFUSE_RAY, 13
    learnset MOVE_AIR_SLASH, 20
    learnset MOVE_SHADOW_BALL, 25
    learnset MOVE_MOONLIGHT, 33
    learnset MOVE_NIGHT_DAZE, 39
    learnset MOVE_MAGIC_COAT, 46
    learnset MOVE_MOONBLAST, 51
    learnset MOVE_PHANTOM_FORCE, 62
    learnset MOVE_DREAM_EATER, 64
    learnset MOVE_WIDE_GUARD, 72
    learnset MOVE_HYPER_BEAM, 78
    terminatelearnset


levelup SPECIES_NIHILEGO
    learnset MOVE_WRAP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POWER_SPLIT, 1
    learnset MOVE_GUARD_SPLIT, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_ACID, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_ACID, 5
    learnset MOVE_TICKLE, 10
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_POWER_SPLIT, 25
    learnset MOVE_GUARD_SPLIT, 25
    learnset MOVE_VENOSHOCK, 26
    learnset MOVE_HEADBUTT, 27
    learnset MOVE_ACID_SPRAY, 29
    learnset MOVE_SAFEGUARD, 31
    learnset MOVE_TOXIC_SPIKES, 34
    learnset MOVE_POWER_GEM, 43
    learnset MOVE_VENOM_DRENCH, 48
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_STEALTH_ROCK, 56
    learnset MOVE_WONDER_ROOM, 65
    learnset MOVE_HEAD_SMASH, 71
    terminatelearnset


levelup SPECIES_BUZZWOLE
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_COMET_PUNCH, 7
    learnset MOVE_FELL_STINGER, 10
    learnset MOVE_VITAL_THROW, 16
    learnset MOVE_BULK_UP, 16
    learnset MOVE_TAUNT, 17
    learnset MOVE_ENDURE, 24
    learnset MOVE_LEECH_LIFE, 29
    learnset MOVE_REVERSAL, 30
    learnset MOVE_MEGA_PUNCH, 35
    learnset MOVE_FOCUS_ENERGY, 45
    learnset MOVE_LUNGE, 46
    learnset MOVE_COUNTER, 49
    learnset MOVE_HAMMER_ARM, 53
    learnset MOVE_DYNAMIC_PUNCH, 54
    learnset MOVE_SUPERPOWER, 65
    learnset MOVE_FOCUS_PUNCH, 71
    terminatelearnset


levelup SPECIES_PHEROMOSA
    learnset MOVE_FEINT, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWIFT, 7
    learnset MOVE_QUICK_GUARD, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_FEINT, 19
    learnset MOVE_LOW_KICK, 20
    learnset MOVE_SILVER_WIND, 23
    learnset MOVE_STOMP, 24
    learnset MOVE_DOUBLE_KICK, 25
    learnset MOVE_JUMP_KICK, 31
    learnset MOVE_TRIPLE_KICK, 36
    learnset MOVE_AGILITY, 38
    learnset MOVE_BOUNCE, 40
    learnset MOVE_LUNGE, 45
    learnset MOVE_BUG_BUZZ, 56
    learnset MOVE_ME_FIRST, 59
    learnset MOVE_SPEED_SWAP, 63
    learnset MOVE_QUIVER_DANCE, 65
    learnset MOVE_HIGH_JUMP_KICK, 68
    terminatelearnset


levelup SPECIES_XURKITREE
    learnset MOVE_WRAP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_GLOW, 1
    learnset MOVE_SPARK, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_CHARGE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_INGRAIN, 16
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_SPARK, 20
    learnset MOVE_SIGNAL_BEAM, 31
    learnset MOVE_EERIE_IMPULSE, 32
    learnset MOVE_THUNDER_PUNCH, 32
    learnset MOVE_HYPNOSIS, 36
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_THUNDERBOLT, 46
    learnset MOVE_MAGNET_RISE, 50
    learnset MOVE_ELECTRIC_TERRAIN, 56
    learnset MOVE_POWER_WHIP, 62
    learnset MOVE_ION_DELUGE, 67
    learnset MOVE_ZAP_CANNON, 71
    terminatelearnset


levelup SPECIES_CELESTEELA
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_WIDE_GUARD, 10
    learnset MOVE_SMACK_DOWN, 13
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_INGRAIN, 25
    learnset MOVE_IRON_HEAD, 29
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_AUTOTOMIZE, 36
    learnset MOVE_FLASH_CANNON, 38
    learnset MOVE_LEECH_SEED, 38
    learnset MOVE_SEED_BOMB, 47
    learnset MOVE_IRON_DEFENSE, 54
    learnset MOVE_SKULL_BASH, 62
    learnset MOVE_HEAVY_SLAM, 63
    learnset MOVE_DOUBLE_EDGE, 68
    terminatelearnset


levelup SPECIES_KARTANA
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_VACUUM_WAVE, 1
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_CUT, 1
    learnset MOVE_RAZOR_LEAF, 8
    learnset MOVE_FALSE_SWIPE, 8
    learnset MOVE_CUT, 15
    learnset MOVE_AIR_CUTTER, 20
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_SYNTHESIS, 30
    learnset MOVE_NIGHT_SLASH, 33
    learnset MOVE_LASER_FOCUS, 37
    learnset MOVE_DETECT, 40
    learnset MOVE_X_SCISSOR, 47
    learnset MOVE_LEAF_BLADE, 49
    learnset MOVE_DEFOG, 50
    learnset MOVE_SWORDS_DANCE, 51
    learnset MOVE_AIR_SLASH, 59
    learnset MOVE_SACRED_SWORD, 60
    learnset MOVE_PSYCHO_CUT, 67
    learnset MOVE_GUILLOTINE, 71
    terminatelearnset


levelup SPECIES_GUZZLORD
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_BELCH, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_SWALLOW, 5
    learnset MOVE_STOCKPILE, 5
    learnset MOVE_KNOCK_OFF, 10
    learnset MOVE_STOMP, 11
    learnset MOVE_BRUTAL_SWING, 13
    learnset MOVE_STEAMROLLER, 19
    learnset MOVE_DRAGON_TAIL, 23
    learnset MOVE_STOMPING_TANTRUM, 25
    learnset MOVE_WIDE_GUARD, 25
    learnset MOVE_IRON_TAIL, 29
    learnset MOVE_CRUNCH, 33
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_HAMMER_ARM, 44
    learnset MOVE_GASTRO_ACID, 46
    learnset MOVE_HEAVY_SLAM, 54
    learnset MOVE_THRASH, 56
    learnset MOVE_BELCH, 60
    learnset MOVE_DRAGON_RUSH, 63
    learnset MOVE_WRING_OUT, 67
    learnset MOVE_GIGA_IMPACT, 70
    terminatelearnset


levelup SPECIES_NECROZMA
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MIRROR_SHOT, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_GRAVITY, 31
    learnset MOVE_PSYCHO_CUT, 34
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_PHOTON_GEYSER, 61
    learnset MOVE_AUTOTOMIZE, 64
    learnset MOVE_WRING_OUT, 67
    learnset MOVE_PRISMATIC_LASER, 81
    terminatelearnset


levelup SPECIES_MAGEARNA
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_CRAFTY_SHIELD, 1
    learnset MOVE_GEAR_UP, 1
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_DEFENSE_CURL, 6
    learnset MOVE_LUCKY_CHANT, 9
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_GEAR_UP, 24
    learnset MOVE_MIRROR_SHOT, 25
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_MIND_READER, 37
    learnset MOVE_SHIFT_GEAR, 48
    learnset MOVE_CRAFTY_SHIELD, 54
    learnset MOVE_FLASH_CANNON, 57
    learnset MOVE_IRON_HEAD, 60
    learnset MOVE_FLEUR_CANNON, 70
    learnset MOVE_PAIN_SPLIT, 71
    learnset MOVE_AURA_SPHERE, 73
    learnset MOVE_SYNCHRONOISE, 73
    learnset MOVE_ZAP_CANNON, 84
    learnset MOVE_HEART_SWAP, 89
    learnset MOVE_TRUMP_CARD, 97
    terminatelearnset


levelup SPECIES_MARSHADOW
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_FEINT, 11
    learnset MOVE_ROLLING_KICK, 15
    learnset MOVE_FORCE_PALM, 16
    learnset MOVE_ROLE_PLAY, 18
    learnset MOVE_COPYCAT, 20
    learnset MOVE_SHADOW_PUNCH, 21
    learnset MOVE_JUMP_KICK, 35
    learnset MOVE_ASSURANCE, 36
    learnset MOVE_SUCKER_PUNCH, 50
    learnset MOVE_PSYCH_UP, 52
    learnset MOVE_DRAIN_PUNCH, 54
    learnset MOVE_SPECTRAL_THIEF, 59
    learnset MOVE_ENDEAVOR, 76
    learnset MOVE_CLOSE_COMBAT, 76
    learnset MOVE_LASER_FOCUS, 81
    terminatelearnset


levelup SPECIES_POIPOLE
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_ACID, 1
    learnset MOVE_FURY_ATTACK, 7
    learnset MOVE_CHARM, 20
    learnset MOVE_VENOSHOCK, 21
    learnset MOVE_FELL_STINGER, 29
    learnset MOVE_VENOM_DRENCH, 29
    learnset MOVE_NASTY_PLOT, 36
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_TOXIC, 52
    learnset MOVE_GASTRO_ACID, 56
    terminatelearnset


levelup SPECIES_NAGANADEL
    learnset MOVE_AIR_CUTTER, 0
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_ACID, 1
    learnset MOVE_FURY_ATTACK, 7
    learnset MOVE_CHARM, 20
    learnset MOVE_VENOSHOCK, 21
    learnset MOVE_FELL_STINGER, 29
    learnset MOVE_VENOM_DRENCH, 29
    learnset MOVE_NASTY_PLOT, 36
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_TOXIC, 52
    learnset MOVE_AIR_SLASH, 53
    learnset MOVE_GASTRO_ACID, 56
    learnset MOVE_DRAGON_PULSE, 61
    learnset MOVE_DRAGON_RUSH, 70
    terminatelearnset


levelup SPECIES_STAKATAKA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_PROTECT, 10
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_STOMP, 15
    learnset MOVE_ROCK_SLIDE, 15
    learnset MOVE_BIDE, 17
    learnset MOVE_BLOCK, 20
    learnset MOVE_AUTOTOMIZE, 33
    learnset MOVE_STEALTH_ROCK, 39
    learnset MOVE_WIDE_GUARD, 40
    learnset MOVE_TAKE_DOWN, 40
    learnset MOVE_ROCK_BLAST, 43
    learnset MOVE_IRON_DEFENSE, 43
    learnset MOVE_MAGNET_RISE, 45
    learnset MOVE_IRON_HEAD, 49
    learnset MOVE_DOUBLE_EDGE, 65
    terminatelearnset


levelup SPECIES_BLACEPHALON
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_EMBER, 10
    learnset MOVE_STORED_POWER, 13
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_MAGIC_COAT, 16
    learnset MOVE_FLAME_BURST, 17
    learnset MOVE_NIGHT_SHADE, 18
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_INCINERATE, 30
    learnset MOVE_HYPNOSIS, 35
    learnset MOVE_MYSTICAL_FIRE, 40
    learnset MOVE_CALM_MIND, 41
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_FIRE_BLAST, 51
    learnset MOVE_TRICK, 53
    learnset MOVE_WILL_O_WISP, 55
    learnset MOVE_MIND_BLOWN, 64
    terminatelearnset


levelup SPECIES_ZERAORA
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SNARL, 1
    learnset MOVE_SPARK, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_SWIPES, 9
    learnset MOVE_SNARL, 19
    learnset MOVE_FAKE_OUT, 22
    learnset MOVE_VOLT_SWITCH, 24
    learnset MOVE_QUICK_GUARD, 27
    learnset MOVE_SLASH, 28
    learnset MOVE_HONE_CLAWS, 32
    learnset MOVE_CHARGE, 33
    learnset MOVE_THUNDER_PUNCH, 39
    learnset MOVE_WILD_CHARGE, 55
    learnset MOVE_DISCHARGE, 57
    learnset MOVE_PLASMA_FISTS, 67
    learnset MOVE_CLOSE_COMBAT, 73
    learnset MOVE_AGILITY, 80
    terminatelearnset


levelup SPECIES_MELTAN
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TAIL_WHIP, 8
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_ACID_ARMOR, 32
    learnset MOVE_FLASH_CANNON, 40
    terminatelearnset


levelup SPECIES_MELMETAL
    learnset MOVE_THUNDER_PUNCH, 0
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_ACID_ARMOR, 32
    learnset MOVE_FLASH_CANNON, 40
    learnset MOVE_MEGA_PUNCH, 48
    learnset MOVE_PROTECT, 56
    learnset MOVE_DISCHARGE, 64
    learnset MOVE_DYNAMIC_PUNCH, 72
    learnset MOVE_SUPERPOWER, 80
    learnset MOVE_DOUBLE_IRON_BASH, 88
    learnset MOVE_HYPER_BEAM, 96
    terminatelearnset


levelup SPECIES_GROOKEY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_TAUNT, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCREECH, 17
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_SLAM, 24
    learnset MOVE_UPROAR, 28
    learnset MOVE_WOOD_HAMMER, 32
    learnset MOVE_ENDEAVOR, 36
    terminatelearnset


levelup SPECIES_THWACKEY
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCREECH, 19
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_SLAM, 30
    learnset MOVE_UPROAR, 36
    learnset MOVE_WOOD_HAMMER, 42
    learnset MOVE_ENDEAVOR, 48
    terminatelearnset


levelup SPECIES_RILLABOOM
    learnset MOVE_DRUM_BEATING, 1
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCREECH, 19
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_SLAM, 30
    learnset MOVE_UPROAR, 38
    learnset MOVE_WOOD_HAMMER, 46
    learnset MOVE_ENDEAVOR, 54
    learnset MOVE_BOOMBURST, 62
    terminatelearnset


levelup SPECIES_SCORBUNNY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_AGILITY, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_COUNTER, 28
    learnset MOVE_BOUNCE, 32
    learnset MOVE_DOUBLE_EDGE, 36
    terminatelearnset


levelup SPECIES_RABOOT
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_AGILITY, 24
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_COUNTER, 36
    learnset MOVE_BOUNCE, 42
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset


levelup SPECIES_CINDERACE
    learnset MOVE_PYRO_BALL, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_AGILITY, 24
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_COUNTER, 38
    learnset MOVE_BOUNCE, 46
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_COURT_CHANGE, 62
    terminatelearnset


levelup SPECIES_SOBBLE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_BIND, 8
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 17
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_U_TURN, 24
    learnset MOVE_LIQUIDATION, 28
    learnset MOVE_SOAK, 32
    learnset MOVE_RAIN_DANCE, 36
    terminatelearnset


levelup SPECIES_DRIZZILE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BIND, 1
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 19
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_U_TURN, 30
    learnset MOVE_LIQUIDATION, 36
    learnset MOVE_SOAK, 42
    learnset MOVE_RAIN_DANCE, 48
    terminatelearnset


levelup SPECIES_INTELEON
    learnset MOVE_SNIPE_SHOT, 1
    learnset MOVE_ACROBATICS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BIND, 1
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 19
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_U_TURN, 30
    learnset MOVE_LIQUIDATION, 38
    learnset MOVE_SOAK, 46
    learnset MOVE_RAIN_DANCE, 54
    learnset MOVE_HYDRO_PUMP, 62
    terminatelearnset


levelup SPECIES_SKWOVET
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 5
    learnset MOVE_STUFF_CHEEKS, 10
    learnset MOVE_STOCKPILE, 15
    learnset MOVE_SWALLOW, 15
    learnset MOVE_SPIT_UP, 15
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_REST, 25
    learnset MOVE_COUNTER, 30
    learnset MOVE_BULLET_SEED, 35
    learnset MOVE_SUPER_FANG, 40
    learnset MOVE_BELCH, 45
    terminatelearnset


levelup SPECIES_GREEDENT
    learnset MOVE_COVET, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 1
    learnset MOVE_STUFF_CHEEKS, 1
    learnset MOVE_STOCKPILE, 15
    learnset MOVE_SWALLOW, 15
    learnset MOVE_SPIT_UP, 15
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_REST, 27
    learnset MOVE_COUNTER, 34
    learnset MOVE_BULLET_SEED, 41
    learnset MOVE_SUPER_FANG, 48
    learnset MOVE_BELCH, 55
    terminatelearnset


levelup SPECIES_ROOKIDEE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWER_TRIP, 4
    learnset MOVE_HONE_CLAWS, 8
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_PLUCK, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_SCARY_FACE, 24
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_BRAVE_BIRD, 36
    terminatelearnset


levelup SPECIES_CORVISQUIRE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWER_TRIP, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_PLUCK, 16
    learnset MOVE_TAUNT, 22
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_SWAGGER, 40
    learnset MOVE_BRAVE_BIRD, 46
    terminatelearnset


levelup SPECIES_CORVIKNIGHT
    learnset MOVE_STEEL_WING, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_METAL_SOUND, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWER_TRIP, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_PLUCK, 16
    learnset MOVE_TAUNT, 22
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_SWAGGER, 42
    learnset MOVE_BRAVE_BIRD, 50
    terminatelearnset


levelup SPECIES_BLIPBUG
    learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset


levelup SPECIES_DOTTLER
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset


levelup SPECIES_ORBEETLE
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_CONFUSE_RAY, 4
    learnset MOVE_MAGIC_COAT, 8
    learnset MOVE_AGILITY, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_ALLY_SWITCH, 24
    learnset MOVE_BUG_BUZZ, 28
    learnset MOVE_MIRROR_COAT, 32
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_AFTER_YOU, 40
    learnset MOVE_CALM_MIND, 44
    learnset MOVE_PSYCHIC_TERRAIN, 48
    terminatelearnset


levelup SPECIES_NICKIT
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BEAT_UP, 4
    learnset MOVE_HONE_CLAWS, 8
    learnset MOVE_SNARL, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_NASTY_PLOT, 20
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_TAIL_SLAP, 32
    learnset MOVE_FOUL_PLAY, 36
    terminatelearnset


levelup SPECIES_THIEVUL
    learnset MOVE_THIEF, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BEAT_UP, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_SNARL, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_NASTY_PLOT, 22
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_TAIL_SLAP, 40
    learnset MOVE_FOUL_PLAY, 46
    learnset MOVE_PARTING_SHOT, 52
    terminatelearnset


levelup SPECIES_GOSSIFLEUR
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 4
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_LEAF_TORNADO, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_HYPER_VOICE, 28
    learnset MOVE_AROMATHERAPY, 32
    learnset MOVE_LEAF_STORM, 36
    terminatelearnset


levelup SPECIES_ELDEGOSS
    learnset MOVE_COTTON_SPORE, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_LEAF_TORNADO, 23
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_LEAF_STORM, 46
    learnset MOVE_COTTON_GUARD, 52
    terminatelearnset


levelup SPECIES_WOOLOO
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_COPYCAT, 8
    learnset MOVE_GUARD_SPLIT, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_GUARD_SWAP, 28
    learnset MOVE_REVERSAL, 32
    learnset MOVE_COTTON_GUARD, 36
    learnset MOVE_DOUBLE_EDGE, 40
    terminatelearnset


levelup SPECIES_DUBWOOL
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_GUARD_SPLIT, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_GUARD_SWAP, 32
    learnset MOVE_REVERSAL, 38
    learnset MOVE_COTTON_GUARD, 44
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_LAST_RESORT, 56
    terminatelearnset


levelup SPECIES_CHEWTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 7
    learnset MOVE_PROTECT, 14
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_COUNTER, 28
    learnset MOVE_JAW_LOCK, 35
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_BODY_SLAM, 49
    terminatelearnset


levelup SPECIES_DREDNAW
    learnset MOVE_ROCK_TOMB, 1
    learnset MOVE_RAZOR_SHELL, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_ROCK_POLISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_COUNTER, 30
    learnset MOVE_JAW_LOCK, 39
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_BODY_SLAM, 57
    learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_YAMPER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 5
    learnset MOVE_BITE, 10
    learnset MOVE_ROAR, 15
    learnset MOVE_SPARK, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_CRUNCH, 30
    learnset MOVE_CHARGE, 35
    learnset MOVE_WILD_CHARGE, 40
    learnset MOVE_PLAY_ROUGH, 45
    terminatelearnset


levelup SPECIES_BOLTUND
    learnset MOVE_ELECTRIFY, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_ROAR, 15
    learnset MOVE_SPARK, 20
    learnset MOVE_CHARM, 28
    learnset MOVE_CRUNCH, 34
    learnset MOVE_CHARGE, 41
    learnset MOVE_WILD_CHARGE, 48
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_ELECTRIC_TERRAIN, 62
    terminatelearnset


levelup SPECIES_ROLYCOLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_ROCK_POLISH, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_INCINERATE, 25
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_HEAT_CRASH, 35
    learnset MOVE_ROCK_BLAST, 40
    terminatelearnset


levelup SPECIES_CARKOL
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SMACK_DOWN, 1
    learnset MOVE_ROCK_POLISH, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_INCINERATE, 27
    learnset MOVE_STEALTH_ROCK, 35
    learnset MOVE_HEAT_CRASH, 41
    learnset MOVE_ROCK_BLAST, 48
    learnset MOVE_BURN_UP, 55
    terminatelearnset


levelup SPECIES_COALOSSAL
    learnset MOVE_TAR_SHOT, 1
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SMACK_DOWN, 1
    learnset MOVE_ROCK_POLISH, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_INCINERATE, 27
    learnset MOVE_STEALTH_ROCK, 37
    learnset MOVE_HEAT_CRASH, 45
    learnset MOVE_ROCK_BLAST, 54
    learnset MOVE_BURN_UP, 63
    terminatelearnset


levelup SPECIES_APPLIN
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ASTONISH, 1
    terminatelearnset


levelup SPECIES_FLAPPLE
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_ACID_SPRAY, 4
    learnset MOVE_ACROBATICS, 8
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_DRAGON_DANCE, 24
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_GRAV_APPLE, 32
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_FLY, 40
    learnset MOVE_DRAGON_RUSH, 44
    terminatelearnset


levelup SPECIES_APPLETUN
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_CURSE, 4
    learnset MOVE_STOMP, 8
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_RECOVER, 24
    learnset MOVE_APPLE_ACID, 28
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_ENERGY_BALL, 44
    terminatelearnset


levelup SPECIES_SILICOBRA
    learnset MOVE_WRAP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_MINIMIZE, 5
    learnset MOVE_BRUTAL_SWING, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_GLARE, 25
    learnset MOVE_DIG, 30
    learnset MOVE_SANDSTORM, 35
    learnset MOVE_SLAM, 40
    learnset MOVE_COIL, 45
    learnset MOVE_SAND_TOMB, 50
    terminatelearnset


levelup SPECIES_SANDACONDA
    learnset MOVE_SKULL_BASH, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_MINIMIZE, 1
    learnset MOVE_BRUTAL_SWING, 1
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_GLARE, 25
    learnset MOVE_DIG, 30
    learnset MOVE_SANDSTORM, 35
    learnset MOVE_SLAM, 42
    learnset MOVE_COIL, 49
    learnset MOVE_SAND_TOMB, 51
    terminatelearnset


levelup SPECIES_CRAMORANT
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SPIT_UP, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_PLUCK, 21
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_AMNESIA, 42
    learnset MOVE_THRASH, 49
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_ARROKUDA
    learnset MOVE_PECK, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_FURY_ATTACK, 6
    learnset MOVE_BITE, 12
    learnset MOVE_AGILITY, 18
    learnset MOVE_DIVE, 24
    learnset MOVE_LASER_FOCUS, 30
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset


levelup SPECIES_BARRASKEWDA
    learnset MOVE_THROAT_CHOP, 1
    learnset MOVE_PECK, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_AGILITY, 18
    learnset MOVE_DIVE, 24
    learnset MOVE_LASER_FOCUS, 32
    learnset MOVE_CRUNCH, 40
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset


levelup SPECIES_TOXEL
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_ACID, 1
    terminatelearnset


levelup SPECIES_TOXTRICITY
    learnset MOVE_SPARK, 1
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_ACID, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_LEER, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_CHARGE, 4
    learnset MOVE_SHOCK_WAVE, 8
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_SCREECH, 24
    learnset MOVE_SWAGGER, 28
    learnset MOVE_TOXIC, 32
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_OVERDRIVE, 44
    learnset MOVE_BOOMBURST, 48
    learnset MOVE_SHIFT_GEAR, 52
    terminatelearnset


levelup SPECIES_SIZZLIPEDE
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_BITE, 10
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_COIL, 25
    learnset MOVE_SLAM, 30
    learnset MOVE_FIRE_SPIN, 35
    learnset MOVE_CRUNCH, 40
    learnset MOVE_FIRE_LASH, 45
    learnset MOVE_LUNGE, 50
    learnset MOVE_BURN_UP, 55
    terminatelearnset


levelup SPECIES_CENTISKORCH
    learnset MOVE_INFERNO, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_COIL, 25
    learnset MOVE_SLAM, 32
    learnset MOVE_FIRE_SPIN, 39
    learnset MOVE_CRUNCH, 46
    learnset MOVE_FIRE_LASH, 53
    learnset MOVE_LUNGE, 60
    learnset MOVE_BURN_UP, 67
    terminatelearnset


levelup SPECIES_CLOBBOPUS
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FEINT, 5
    learnset MOVE_BIND, 10
    learnset MOVE_DETECT, 15
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_BULK_UP, 25
    learnset MOVE_SUBMISSION, 30
    learnset MOVE_TAUNT, 35
    learnset MOVE_REVERSAL, 40
    learnset MOVE_SUPERPOWER, 45
    terminatelearnset


levelup SPECIES_GRAPPLOCT
    learnset MOVE_OCTOLOCK, 1
    learnset MOVE_OCTAZOOKA, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_BIND, 1
    learnset MOVE_DETECT, 15
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_BULK_UP, 25
    learnset MOVE_SUBMISSION, 30
    learnset MOVE_TAUNT, 35
    learnset MOVE_REVERSAL, 40
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_TOPSY_TURVY, 50
    terminatelearnset


levelup SPECIES_SINISTEA
    learnset MOVE_ASTONISH, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_AROMATIC_MIST, 6
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_PROTECT, 18
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_NASTY_PLOT, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_SHELL_SMASH, 60
    terminatelearnset


levelup SPECIES_POLTEAGEIST
    learnset MOVE_TEATIME, 1
    learnset MOVE_STRENGTH_SAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_PROTECT, 18
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_NASTY_PLOT, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_SHELL_SMASH, 60
    learnset MOVE_CURSE, 66
    terminatelearnset


levelup SPECIES_HATENNA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_AROMATHERAPY, 15
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HEAL_PULSE, 25
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_CALM_MIND, 35
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_HEALING_WISH, 45
    terminatelearnset


levelup SPECIES_HATTREM
    learnset MOVE_BRUTAL_SWING, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_AROMATHERAPY, 15
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HEAL_PULSE, 25
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_HEALING_WISH, 51
    terminatelearnset


levelup SPECIES_HATTERENE
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_BRUTAL_SWING, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_AROMATHERAPY, 15
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HEAL_PULSE, 25
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_PSYCHIC, 46
    learnset MOVE_HEALING_WISH, 55
    learnset MOVE_MAGIC_POWDER, 64
    terminatelearnset


levelup SPECIES_IMPIDIMP
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FLATTER, 8
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_TORMENT, 28
    learnset MOVE_DARK_PULSE, 33
    learnset MOVE_NASTY_PLOT, 36
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_FOUL_PLAY, 44
    terminatelearnset


levelup SPECIES_MORGREM
    learnset MOVE_FALSE_SURRENDER, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FLATTER, 1
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_TORMENT, 28
    learnset MOVE_DARK_PULSE, 35
    learnset MOVE_NASTY_PLOT, 40
    learnset MOVE_PLAY_ROUGH, 46
    learnset MOVE_FOUL_PLAY, 52
    terminatelearnset


levelup SPECIES_GRIMMSNARL
    learnset MOVE_SPIRIT_BREAK, 1
    learnset MOVE_FALSE_SURRENDER, 1
    learnset MOVE_BULK_UP, 1
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FLATTER, 1
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_TORMENT, 28
    learnset MOVE_DARK_PULSE, 35
    learnset MOVE_NASTY_PLOT, 40
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_FOUL_PLAY, 56
    learnset MOVE_HAMMER_ARM, 64
    terminatelearnset


levelup SPECIES_OBSTAGOON
    learnset MOVE_OBSTRUCT, 1
    learnset MOVE_CROSS_CHOP, 1
    learnset MOVE_SUBMISSION, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SNARL, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_HONE_CLAWS, 15
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_REST, 23
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_SCARY_FACE, 35
    learnset MOVE_COUNTER, 42
    learnset MOVE_TAUNT, 49
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset


levelup SPECIES_PERRSERKER
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PAY_DAY, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_SWAGGER, 24
    learnset MOVE_FURY_SWIPES, 31
    learnset MOVE_SCREECH, 36
    learnset MOVE_SLASH, 42
    learnset MOVE_METAL_SOUND, 48
    learnset MOVE_THRASH, 54
    terminatelearnset


levelup SPECIES_CURSOLA
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_SPITE, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_HEX, 25
    learnset MOVE_CURSE, 30
    learnset MOVE_STRENGTH_SAP, 35
    learnset MOVE_POWER_GEM, 40
    learnset MOVE_NIGHT_SHADE, 45
    learnset MOVE_GRUDGE, 50
    learnset MOVE_MIRROR_COAT, 55
    terminatelearnset


levelup SPECIES_SIRFETCHD
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_BRUTAL_SWING, 20
    learnset MOVE_DETECT, 25
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_DEFOG, 35
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_SLAM, 50
    learnset MOVE_LEAF_BLADE, 55
    learnset MOVE_FINAL_GAMBIT, 60
    learnset MOVE_BRAVE_BIRD, 65
    learnset MOVE_METEOR_ASSAULT, 70
    terminatelearnset


levelup SPECIES_MR_RIME
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_SLACK_OFF, 1
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_BLOCK, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_POUND, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ALLY_SWITCH, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_DOUBLE_KICK, 24
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_FREEZE_DRY, 44
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_TEETER_DANCE, 52
    terminatelearnset


levelup SPECIES_RUNERIGUS
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_DISABLE, 12
    learnset MOVE_BRUTAL_SWING, 16
    learnset MOVE_CRAFTY_SHIELD, 20
    learnset MOVE_HEX, 24
    learnset MOVE_MEAN_LOOK, 28
    learnset MOVE_SLAM, 32
    learnset MOVE_CURSE, 38
    learnset MOVE_SHADOW_BALL, 44
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_POWER_SPLIT, 56
    learnset MOVE_GUARD_SPLIT, 56
    learnset MOVE_DESTINY_BOND, 62
    terminatelearnset


levelup SPECIES_MILCERY
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_SWEET_SCENT, 10
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_FALINKS
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BULK_UP, 20
    learnset MOVE_ENDURE, 25
    learnset MOVE_REVERSAL, 30
    learnset MOVE_FIRST_IMPRESSION, 35
    learnset MOVE_NO_RETREAT, 40
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_CLOSE_COMBAT, 50
    learnset MOVE_MEGAHORN, 55
    learnset MOVE_COUNTER, 60
    terminatelearnset


levelup SPECIES_PINCURCHIN
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_CHARGE, 10
    learnset MOVE_FURY_ATTACK, 15
    learnset MOVE_SPARK, 20
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_RECOVER, 30
    learnset MOVE_CURSE, 35
    learnset MOVE_ELECTRIC_TERRAIN, 40
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_ZING_ZAP, 50
    learnset MOVE_ACUPRESSURE, 55
    learnset MOVE_DISCHARGE, 60
    terminatelearnset


levelup SPECIES_SNOM
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset


levelup SPECIES_FROSMOTH
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_ATTRACT, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_INFESTATION, 8
    learnset MOVE_MIST, 12
    learnset MOVE_DEFOG, 16
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_HAIL, 28
    learnset MOVE_BUG_BUZZ, 32
    learnset MOVE_AURORA_VEIL, 36
    learnset MOVE_BLIZZARD, 40
    learnset MOVE_TAILWIND, 44
    learnset MOVE_WIDE_GUARD, 48
    learnset MOVE_QUIVER_DANCE, 52
    terminatelearnset


levelup SPECIES_STONJOURNER
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_BLOCK, 1
    learnset MOVE_ROCK_POLISH, 6
    learnset MOVE_ROCK_TOMB, 12
    learnset MOVE_GRAVITY, 18
    learnset MOVE_STOMP, 24
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_WIDE_GUARD, 48
    learnset MOVE_HEAVY_SLAM, 54
    learnset MOVE_STONE_EDGE, 60
    learnset MOVE_MEGA_KICK, 66
    terminatelearnset


levelup SPECIES_EISCUE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MIST, 6
    learnset MOVE_WEATHER_BALL, 12
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_AMNESIA, 30
    learnset MOVE_FREEZE_DRY, 36
    learnset MOVE_HAIL, 42
    learnset MOVE_AURORA_VEIL, 48
    learnset MOVE_SURF, 54
    learnset MOVE_BLIZZARD, 60
    terminatelearnset


levelup SPECIES_INDEEDEE
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_ENCORE, 5
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_AFTER_YOU, 25
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_CALM_MIND, 40
    learnset MOVE_POWER_SPLIT, 45
    learnset MOVE_PSYCHIC_TERRAIN, 50
    learnset MOVE_LAST_RESORT, 55
    terminatelearnset


levelup SPECIES_MORPEKO
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_POWER_TRIP, 10
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_FLATTER, 20
    learnset MOVE_BITE, 25
    learnset MOVE_SPARK, 30
    learnset MOVE_TORMENT, 35
    learnset MOVE_AGILITY, 40
    learnset MOVE_BULLET_SEED, 45
    learnset MOVE_CRUNCH, 50
    learnset MOVE_AURA_WHEEL, 55
    learnset MOVE_THRASH, 60
    terminatelearnset


levelup SPECIES_CUFANT
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 20
    learnset MOVE_IRON_DEFENSE, 25
    learnset MOVE_DIG, 30
    learnset MOVE_STRENGTH, 35
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_HIGH_HORSEPOWER, 50
    learnset MOVE_SUPERPOWER, 55
    terminatelearnset


levelup SPECIES_COPPERAJAH
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 20
    learnset MOVE_IRON_DEFENSE, 25
    learnset MOVE_DIG, 30
    learnset MOVE_STRENGTH, 37
    learnset MOVE_IRON_HEAD, 44
    learnset MOVE_PLAY_ROUGH, 51
    learnset MOVE_HIGH_HORSEPOWER, 58
    learnset MOVE_SUPERPOWER, 65
    terminatelearnset


levelup SPECIES_DRACOZOLT
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CHARGE, 7
    learnset MOVE_AERIAL_ACE, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_PLUCK, 28
    learnset MOVE_DRAGON_TAIL, 35
    learnset MOVE_STOMP, 42
    learnset MOVE_SLAM, 49
    learnset MOVE_DISCHARGE, 56
    learnset MOVE_BOLT_BEAK, 63
    learnset MOVE_DRAGON_PULSE, 70
    learnset MOVE_DRAGON_RUSH, 77
    terminatelearnset


levelup SPECIES_ARCTOZOLT
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CHARGE, 7
    learnset MOVE_ECHOED_VOICE, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_PLUCK, 28
    learnset MOVE_AVALANCHE, 35
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_SLAM, 49
    learnset MOVE_DISCHARGE, 56
    learnset MOVE_BOLT_BEAK, 63
    learnset MOVE_ICICLE_CRASH, 70
    learnset MOVE_BLIZZARD, 77
    terminatelearnset


levelup SPECIES_DRACOVISH
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PROTECT, 7
    learnset MOVE_BRUTAL_SWING, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_BITE, 28
    learnset MOVE_DRAGON_BREATH, 35
    learnset MOVE_STOMP, 42
    learnset MOVE_SUPER_FANG, 49
    learnset MOVE_CRUNCH, 56
    learnset MOVE_FISHIOUS_REND, 63
    learnset MOVE_DRAGON_PULSE, 70
    learnset MOVE_DRAGON_RUSH, 77
    terminatelearnset


levelup SPECIES_ARCTOVISH
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PROTECT, 7
    learnset MOVE_ICY_WIND, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_BITE, 28
    learnset MOVE_AURORA_VEIL, 35
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_SUPER_FANG, 49
    learnset MOVE_CRUNCH, 56
    learnset MOVE_FISHIOUS_REND, 63
    learnset MOVE_ICICLE_CRASH, 70
    learnset MOVE_BLIZZARD, 77
    terminatelearnset


levelup SPECIES_DURALUDON
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_HONE_CLAWS, 12
    learnset MOVE_METAL_SOUND, 18
    learnset MOVE_BREAKING_SWIPE, 24
    learnset MOVE_DRAGON_TAIL, 30
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_LASER_FOCUS, 42
    learnset MOVE_DRAGON_CLAW, 48
    learnset MOVE_FLASH_CANNON, 54
    learnset MOVE_METAL_BURST, 60
    learnset MOVE_HYPER_BEAM, 66
    terminatelearnset


levelup SPECIES_DREEPY
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    terminatelearnset


levelup SPECIES_DRAKLOAK
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_LOCK_ON, 6
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_HEX, 18
    learnset MOVE_AGILITY, 24
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_U_TURN, 36
    learnset MOVE_DRAGON_DANCE, 42
    learnset MOVE_PHANTOM_FORCE, 48
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_DRAGON_RUSH, 61
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_LAST_RESORT, 72
    terminatelearnset


levelup SPECIES_DRAGAPULT
    learnset MOVE_DRAGON_DARTS, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_LOCK_ON, 6
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_HEX, 18
    learnset MOVE_AGILITY, 24
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_U_TURN, 36
    learnset MOVE_DRAGON_DANCE, 42
    learnset MOVE_PHANTOM_FORCE, 48
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_DRAGON_RUSH, 63
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_LAST_RESORT, 78
    terminatelearnset


levelup SPECIES_ZACIAN
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_SWORDS_DANCE, 22
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_CRUNCH, 55
    learnset MOVE_MOONBLAST, 66
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    terminatelearnset


levelup SPECIES_ZAMAZENTA
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_IRON_DEFENSE, 22
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_CRUNCH, 55
    learnset MOVE_MOONBLAST, 66
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    terminatelearnset


levelup SPECIES_ETERNATUS
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_TOXIC, 8
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_DRAGON_DANCE, 24
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_DYNAMAX_CANNON, 56
    learnset MOVE_COSMIC_POWER, 64
    learnset MOVE_RECOVER, 72
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_ETERNABEAM, 88
    terminatelearnset


levelup SPECIES_KUBFU
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ENDURE, 4
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_DETECT, 28
    learnset MOVE_BULK_UP, 32
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_DYNAMIC_PUNCH, 40
    learnset MOVE_COUNTER, 44
    learnset MOVE_CLOSE_COMBAT, 48
    learnset MOVE_FOCUS_PUNCH, 52
    terminatelearnset


levelup SPECIES_URSHIFU
    learnset MOVE_WICKED_BLOW, 0
    learnset MOVE_WICKED_BLOW, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ENDURE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_DETECT, 28
    learnset MOVE_BULK_UP, 32
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_DYNAMIC_PUNCH, 40
    learnset MOVE_COUNTER, 44
    learnset MOVE_CLOSE_COMBAT, 48
    learnset MOVE_FOCUS_PUNCH, 52
    terminatelearnset


levelup SPECIES_ZARUDE
    learnset MOVE_BIND, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 6
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_GROWTH, 18
    learnset MOVE_FURY_SWIPES, 24
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_GRASS_KNOT, 36
    learnset MOVE_BITE, 42
    learnset MOVE_U_TURN, 48
    learnset MOVE_SWAGGER, 54
    learnset MOVE_ENERGY_BALL, 60
    learnset MOVE_SYNTHESIS, 66
    learnset MOVE_HAMMER_ARM, 72
    learnset MOVE_THRASH, 78
    learnset MOVE_POWER_WHIP, 84
    learnset MOVE_JUNGLE_HEALING, 90
    terminatelearnset


levelup SPECIES_REGIELEKI
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_ELECTROWEB, 6
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_EXTREME_SPEED, 30
    learnset MOVE_THUNDER_CAGE, 36
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_MAGNET_RISE, 48
    learnset MOVE_THRASH, 54
    learnset MOVE_LOCK_ON, 60
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 72
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_REGIDRAGO
    learnset MOVE_TWISTER, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_BITE, 6
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_FOCUS_ENERGY, 24
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DRAGON_CLAW, 36
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_DRAGON_DANCE, 48
    learnset MOVE_THRASH, 54
    learnset MOVE_LASER_FOCUS, 60
    learnset MOVE_DRAGON_ENERGY, 66
    learnset MOVE_HYPER_BEAM, 72
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_GLASTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DOUBLE_KICK, 6
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_TORMENT, 24
    learnset MOVE_MIST, 30
    learnset MOVE_ICICLE_CRASH, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_IRON_DEFENSE, 48
    learnset MOVE_THRASH, 54
    learnset MOVE_TAUNT, 60
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_SWORDS_DANCE, 72
    terminatelearnset


levelup SPECIES_SPECTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DOUBLE_KICK, 6
    learnset MOVE_HEX, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_HAZE, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_AGILITY, 48
    learnset MOVE_THRASH, 54
    learnset MOVE_DISABLE, 60
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_NASTY_PLOT, 72
    terminatelearnset


levelup SPECIES_CALYREX
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_LEECH_SEED, 64
    learnset MOVE_HEAL_PULSE, 72
    learnset MOVE_SOLAR_BEAM, 80
    learnset MOVE_FUTURE_SIGHT, 88
    terminatelearnset


levelup SPECIES_WYRDEER
    learnset MOVE_PSYSHIELD_BASH, 0
    learnset MOVE_PSYSHIELD_BASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 3
    learnset MOVE_ASTONISH, 7
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_STOMP, 13
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_CONFUSE_RAY, 23
    learnset MOVE_CALM_MIND, 27
    learnset MOVE_ROLE_PLAY, 32
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_IMPRISON, 49
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_MEGAHORN, 62
    terminatelearnset


levelup SPECIES_KLEAVOR
    learnset MOVE_STONE_AXE, 0
    learnset MOVE_STONE_AXE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_FALSE_SWIPE, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_DOUBLE_HIT, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_AGILITY, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_SWORDS_DANCE, 44
    terminatelearnset


levelup SPECIES_URSALUNA
    learnset MOVE_HEADLONG_RUSH, 0
    learnset MOVE_HEADLONG_RUSH, 1
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_COVET, 1
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_PAYBACK, 13
    learnset MOVE_SWEET_SCENT, 17
    learnset MOVE_SLASH, 22
    learnset MOVE_PLAY_NICE, 25
    learnset MOVE_PLAY_ROUGH, 29
    learnset MOVE_SCARY_FACE, 35
    learnset MOVE_REST, 41
    learnset MOVE_SNORE, 41
    learnset MOVE_HIGH_HORSEPOWER, 48
    learnset MOVE_THRASH, 56
    learnset MOVE_HAMMER_ARM, 64
    terminatelearnset


levelup SPECIES_BASCULEGION
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_SHADOW_BALL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FLAIL, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SOAK, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_UPROAR, 40
    learnset MOVE_WAVE_CRASH, 44
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 56
    terminatelearnset


levelup SPECIES_SNEASLER
    learnset MOVE_DIRE_CLAW, 0
    learnset MOVE_DIRE_CLAW, 1
    learnset MOVE_FLING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAUNT, 6
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_POISON_JAB, 24
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_HONE_CLAWS, 36
    learnset MOVE_SLASH, 42
    learnset MOVE_AGILITY, 48
    learnset MOVE_SCREECH, 54
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_OVERQWIL
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_BITE, 8
    learnset MOVE_FELL_STINGER, 12
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_SPIKES, 20
    learnset MOVE_BRINE, 24
    learnset MOVE_BARB_BARRAGE, 28
    learnset MOVE_PIN_MISSILE, 32
    learnset MOVE_TOXIC_SPIKES, 36
    learnset MOVE_SPIT_UP, 40
    learnset MOVE_STOCKPILE, 40
    learnset MOVE_TOXIC, 44
    learnset MOVE_CRUNCH, 48
    learnset MOVE_ACUPRESSURE, 52
    learnset MOVE_DESTINY_BOND, 56
    terminatelearnset


levelup SPECIES_ENAMORUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_TORMENT, 5
    learnset MOVE_FLATTER, 10
    learnset MOVE_TWISTER, 15
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_IRON_DEFENSE, 25
    learnset MOVE_IMPRISON, 30
    learnset MOVE_MYSTICAL_FIRE, 35
    learnset MOVE_DAZZLING_GLEAM, 40
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_UPROAR, 50
    learnset MOVE_SUPERPOWER, 55
    learnset MOVE_HEALING_WISH, 60
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_SPRINGTIDE_STORM, 75
    terminatelearnset


levelup SPECIES_SPRIGATITO
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 7
    learnset MOVE_HONE_CLAWS, 10
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_SEED_BOMB, 17
    learnset MOVE_U_TURN, 21
    learnset MOVE_WORRY_SEED, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_PLAY_ROUGH, 36
    terminatelearnset

levelup SPECIES_FLORAGATO
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 7
    learnset MOVE_HONE_CLAWS, 10
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_SEED_BOMB, 20
    learnset MOVE_U_TURN, 24
    learnset MOVE_WORRY_SEED, 28
    learnset MOVE_SLASH, 33
    learnset MOVE_ENERGY_BALL, 38
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_LEAF_STORM, 46
    terminatelearnset

levelup SPECIES_MEOWSCARADA
    learnset MOVE_FLOWER_TRICK, 0
    learnset MOVE_FLOWER_TRICK, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 7
    learnset MOVE_HONE_CLAWS, 10
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_SEED_BOMB, 20
    learnset MOVE_U_TURN, 24
    learnset MOVE_WORRY_SEED, 29
    learnset MOVE_SLASH, 33
    learnset MOVE_NIGHT_SLASH, 38
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_PLAY_ROUGH, 47
    learnset MOVE_KNOCK_OFF, 52
    learnset MOVE_GRASSY_TERRAIN, 58
    learnset MOVE_LEAF_STORM, 64
    terminatelearnset

levelup SPECIES_FUECOCO
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROUND, 7
    learnset MOVE_BITE, 12
    learnset MOVE_INCINERATE, 15
    learnset MOVE_YAWN, 17
    learnset MOVE_SNARL, 21
    learnset MOVE_ROAR, 25
    learnset MOVE_FLAMETHROWER, 28
    learnset MOVE_HYPER_VOICE, 32
    learnset MOVE_FIRE_BLAST, 36
    terminatelearnset

levelup SPECIES_CROCALOR
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 7
    learnset MOVE_ROUND, 10
    learnset MOVE_BITE, 12
    learnset MOVE_YAWN, 15
    learnset MOVE_INCINERATE, 17
    learnset MOVE_SNARL, 24
    learnset MOVE_ROAR, 28
    learnset MOVE_FLAMETHROWER, 32
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_WILL_O_WISP, 42
    learnset MOVE_FIRE_BLAST, 47
    terminatelearnset

levelup SPECIES_SKELEDIRGE
    learnset MOVE_TORCH_SONG, 0
    learnset MOVE_TORCH_SONG, 1
    learnset MOVE_SING, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 7
    learnset MOVE_ROUND, 10
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_BITE, 15
    learnset MOVE_INCINERATE, 17
    learnset MOVE_SNARL, 24
    learnset MOVE_ROAR, 28
    learnset MOVE_FLAMETHROWER, 32
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_WILL_O_WISP, 47
    learnset MOVE_HEX, 47
    learnset MOVE_FIRE_BLAST, 58
    learnset MOVE_OVERHEAT, 64
    terminatelearnset

levelup SPECIES_QUAXLY
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WORK_UP, 7
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_AQUA_CUTTER, 21
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_LIQUIDATION, 35
    terminatelearnset

levelup SPECIES_QUAXWELL
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WORK_UP, 7
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_LOW_SWEEP, 19
    learnset MOVE_AQUA_CUTTER, 23
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_FOCUS_ENERGY, 32
    learnset MOVE_ACROBATICS, 38
    learnset MOVE_LIQUIDATION, 43
    learnset MOVE_FEATHER_DANCE, 48
    terminatelearnset

levelup SPECIES_QUAQUAVAL
    learnset MOVE_AQUA_STEP, 0
    learnset MOVE_AQUA_STEP, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WORK_UP, 7
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_AQUA_CUTTER, 21
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_FOCUS_ENERGY, 32
    learnset MOVE_MEGA_KICK, 38
    learnset MOVE_ACROBATICS, 42
    learnset MOVE_LIQUIDATION, 47
    learnset MOVE_FEATHER_DANCE, 52
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_WAVE_CRASH, 64
    terminatelearnset

levelup SPECIES_LECHONK
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_COVET, 15
    learnset MOVE_DIG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_YAWN, 24
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_WORK_UP, 30
    learnset MOVE_UPROAR, 32
    learnset MOVE_DOUBLE_EDGE, 35
    terminatelearnset

levelup SPECIES_OINKOLOGNE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_COVET, 15
    learnset MOVE_DIG, 17
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_YAWN, 27
    learnset MOVE_WORK_UP, 34
    learnset MOVE_UPROAR, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_EARTH_POWER, 48
    learnset MOVE_BELCH, 54
    terminatelearnset

levelup SPECIES_TAROUNTULA
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 5
    learnset MOVE_ASSURANCE, 8
    learnset MOVE_FEINT, 11
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_BLOCK, 18
    learnset MOVE_COUNTER, 22
    learnset MOVE_HEADBUTT, 25
    learnset MOVE_STICKY_WEB, 29
    learnset MOVE_GASTRO_ACID, 33
    learnset MOVE_CIRCLE_THROW, 36
    learnset MOVE_THROAT_CHOP, 40
    learnset MOVE_SKITTER_SMACK, 44
    terminatelearnset

levelup SPECIES_SPIDOPS
    learnset MOVE_SILK_TRAP, 0
    learnset MOVE_SILK_TRAP, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 5
    learnset MOVE_ASSURANCE, 8
    learnset MOVE_FEINT, 11
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_BLOCK, 19
    learnset MOVE_COUNTER, 24
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_STICKY_WEB, 33
    learnset MOVE_GASTRO_ACID, 37
    learnset MOVE_CIRCLE_THROW, 41
    learnset MOVE_THROAT_CHOP, 45
    learnset MOVE_SKITTER_SMACK, 49
    terminatelearnset

levelup SPECIES_NYMBLE
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_ASTONISH, 6
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_SCREECH, 14
    learnset MOVE_ENDURE, 18
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_FEINT, 26
    learnset MOVE_AGILITY, 30
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_FIRST_IMPRESSION, 41
    terminatelearnset

levelup SPECIES_LOKIX
    learnset MOVE_LUNGE, 0
    learnset MOVE_LUNGE, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_ASTONISH, 6
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_SCREECH, 14
    learnset MOVE_ENDURE, 18
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_FEINT, 28
    learnset MOVE_AGILITY, 32
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_FIRST_IMPRESSION, 44
    learnset MOVE_BOUNCE, 48
    learnset MOVE_AXE_KICK, 53
    terminatelearnset

levelup SPECIES_PAWMI
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_THUNDER_SHOCK, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CHARGE, 8
    learnset MOVE_NUZZLE, 12
    learnset MOVE_DIG, 15
    learnset MOVE_BITE, 19
    learnset MOVE_SPARK, 23
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_ENTRAINMENT, 31
    learnset MOVE_SLAM, 35
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_AGILITY, 40
    learnset MOVE_WILD_CHARGE, 44
    terminatelearnset

levelup SPECIES_PAWMO
    learnset MOVE_ARM_THRUST, 0
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_THUNDER_SHOCK, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CHARGE, 8
    learnset MOVE_NUZZLE, 12
    learnset MOVE_DIG, 15
    learnset MOVE_BITE, 19
    learnset MOVE_SPARK, 23
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_SLAM, 32
    learnset MOVE_ENTRAINMENT, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_AGILITY, 46
    learnset MOVE_WILD_CHARGE, 52
    terminatelearnset

levelup SPECIES_PAWMOT
    learnset MOVE_REVIVAL_BLESSING, 0
    learnset MOVE_REVIVAL_BLESSING, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_WILD_CHARGE, 1
    learnset MOVE_THUNDER_SHOCK, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CHARGE, 8
    learnset MOVE_NUZZLE, 12
    learnset MOVE_DIG, 15
    learnset MOVE_BITE, 19
    learnset MOVE_SPARK, 23
    learnset MOVE_ARM_THRUST, 25
    learnset MOVE_THUNDER_WAVE, 29
    learnset MOVE_SLAM, 33
    learnset MOVE_ENTRAINMENT, 39
    learnset MOVE_CLOSE_COMBAT, 44
    learnset MOVE_DISCHARGE, 49
    learnset MOVE_AGILITY, 54
    learnset MOVE_DOUBLE_SHOCK, 60
    terminatelearnset

levelup SPECIES_TANDEMAUS
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_SUPER_FANG, 11
    learnset MOVE_DOUBLE_HIT, 14
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_ENCORE, 22
    learnset MOVE_PLAY_ROUGH, 26
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_BEAT_UP, 37
    learnset MOVE_COPYCAT, 41
    learnset MOVE_POPULATION_BOMB, 46
    terminatelearnset

levelup SPECIES_MAUSHOLD
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_POUND, 1
    learnset MOVE_TIDY_UP, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_SUPER_FANG, 11
    learnset MOVE_DOUBLE_HIT, 14
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_ENCORE, 22
    learnset MOVE_PLAY_ROUGH, 29
    learnset MOVE_HYPER_VOICE, 33
    learnset MOVE_CHARM, 37
    learnset MOVE_BEAT_UP, 41
    learnset MOVE_COPYCAT, 46
    learnset MOVE_POPULATION_BOMB, 53
    terminatelearnset

levelup SPECIES_FIDOUGH
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 3
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_COVET, 8
    learnset MOVE_BITE, 11
    learnset MOVE_BABY_DOLL_EYES, 15
    learnset MOVE_PLAY_ROUGH, 18
    learnset MOVE_WORK_UP, 22
    learnset MOVE_BATON_PASS, 26
    learnset MOVE_ROAR, 30
    learnset MOVE_DOUBLE_EDGE, 33
    learnset MOVE_CHARM, 36
    learnset MOVE_CRUNCH, 40
    learnset MOVE_LAST_RESORT, 45
    terminatelearnset

levelup SPECIES_DACHSBUN
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 3
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_COVET, 8
    learnset MOVE_BITE, 11
    learnset MOVE_BABY_DOLL_EYES, 15
    learnset MOVE_PLAY_ROUGH, 18
    learnset MOVE_WORK_UP, 22
    learnset MOVE_BATON_PASS, 29
    learnset MOVE_ROAR, 33
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_CHARM, 42
    learnset MOVE_CRUNCH, 47
    learnset MOVE_LAST_RESORT, 53
    terminatelearnset

levelup SPECIES_SMOLIV
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_GROWTH, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FLAIL, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_GRASSY_TERRAIN, 23
    learnset MOVE_SEED_BOMB, 27
    learnset MOVE_ENERGY_BALL, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_TERRAIN_PULSE, 38
    terminatelearnset

levelup SPECIES_DOLLIV
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_GROWTH, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FLAIL, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_GRASSY_TERRAIN, 23
    learnset MOVE_SEED_BOMB, 29
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_LEECH_SEED, 37
    learnset MOVE_TERRAIN_PULSE, 42
    terminatelearnset

levelup SPECIES_ARBOLIVA
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_GROWTH, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FLAIL, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_GRASSY_TERRAIN, 23
    learnset MOVE_SEED_BOMB, 29
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_LEECH_SEED, 39
    learnset MOVE_TERRAIN_PULSE, 46
    learnset MOVE_PETAL_BLIZZARD, 52
    learnset MOVE_PETAL_DANCE, 58
    terminatelearnset

levelup SPECIES_SQUAWKABILLY
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_FURY_ATTACK, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_COPYCAT, 27
    learnset MOVE_FLY, 30
    learnset MOVE_FACADE, 34
    learnset MOVE_SWAGGER, 38
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 47
    learnset MOVE_REVERSAL, 52
    terminatelearnset

levelup SPECIES_NACLI
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_ROCK_POLISH, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_IRON_DEFENSE, 20
    learnset MOVE_RECOVER, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_STEALTH_ROCK, 33
    learnset MOVE_HEAVY_SLAM, 35
    learnset MOVE_EARTHQUAKE, 40
    learnset MOVE_STONE_EDGE, 45
    terminatelearnset

levelup SPECIES_NACLSTACK
    learnset MOVE_SALT_CURE, 0
    learnset MOVE_SALT_CURE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_ROCK_POLISH, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_IRON_DEFENSE, 20
    learnset MOVE_RECOVER, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_STEALTH_ROCK, 38
    learnset MOVE_HEAVY_SLAM, 41
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_STONE_EDGE, 51
    terminatelearnset

levelup SPECIES_GARGANACL
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_BLOCK, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_ROCK_POLISH, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SALT_CURE, 24
    learnset MOVE_RECOVER, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_STEALTH_ROCK, 40
    learnset MOVE_HEAVY_SLAM, 44
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_EXPLOSION, 60
    terminatelearnset

levelup SPECIES_CHARCADET
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_NIGHT_SHADE, 20
    learnset MOVE_FLAME_CHARGE, 24
    learnset MOVE_INCINERATE, 28
    learnset MOVE_LAVA_PLUME, 32
    terminatelearnset

levelup SPECIES_ARMAROUGE
    learnset MOVE_PSYSHOCK, 0
    learnset MOVE_PSYSHOCK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_NIGHT_SHADE, 20
    learnset MOVE_FLAME_CHARGE, 24
    learnset MOVE_INCINERATE, 28
    learnset MOVE_LAVA_PLUME, 32
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_ALLY_SWITCH, 42
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_EXPANDING_FORCE, 56
    learnset MOVE_ARMOR_CANNON, 62
    terminatelearnset

levelup SPECIES_CERULEDGE
    learnset MOVE_SHADOW_CLAW, 0
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_NIGHT_SHADE, 20
    learnset MOVE_FLAME_CHARGE, 24
    learnset MOVE_INCINERATE, 28
    learnset MOVE_LAVA_PLUME, 32
    learnset MOVE_SWORDS_DANCE, 37
    learnset MOVE_ALLY_SWITCH, 42
    learnset MOVE_BITTER_BLADE, 48
    learnset MOVE_PSYCHO_CUT, 56
    learnset MOVE_FLARE_BLITZ, 62
    terminatelearnset

levelup SPECIES_TADBULB
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SLACK_OFF, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_WATER_GUN, 11
    learnset MOVE_CHARGE, 17
    learnset MOVE_SPARK, 21
    learnset MOVE_MUD_SHOT, 24
    learnset MOVE_FLAIL, 25
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_WEATHER_BALL, 36
    learnset MOVE_ELECTRIC_TERRAIN, 40
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_ZAP_CANNON, 50
    terminatelearnset

levelup SPECIES_BELLIBOLT
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SLACK_OFF, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_WATER_GUN, 11
    learnset MOVE_CHARGE, 17
    learnset MOVE_SPARK, 21
    learnset MOVE_MUD_SHOT, 24
    learnset MOVE_FLAIL, 25
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_WEATHER_BALL, 36
    learnset MOVE_ELECTRIC_TERRAIN, 40
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_ZAP_CANNON, 50
    terminatelearnset

levelup SPECIES_WATTREL
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_PLUCK, 11
    learnset MOVE_SPARK, 15
    learnset MOVE_UPROAR, 19
    learnset MOVE_ROOST, 23
    learnset MOVE_DUAL_WINGBEAT, 27
    learnset MOVE_AGILITY, 32
    learnset MOVE_VOLT_SWITCH, 37
    learnset MOVE_DISCHARGE, 43
    terminatelearnset

levelup SPECIES_KILOWATTREL
    learnset MOVE_ELECTRO_BALL, 0
    learnset MOVE_ELECTRO_BALL, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_PLUCK, 11
    learnset MOVE_SPARK, 15
    learnset MOVE_UPROAR, 19
    learnset MOVE_ROOST, 24
    learnset MOVE_DUAL_WINGBEAT, 30
    learnset MOVE_AGILITY, 36
    learnset MOVE_VOLT_SWITCH, 43
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_HURRICANE, 55
    terminatelearnset

levelup SPECIES_MASCHIFF
    learnset MOVE_LEER, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_HONE_CLAWS, 10
    learnset MOVE_BITE, 14
    learnset MOVE_ROAR, 18
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_PAYBACK, 26
    learnset MOVE_CRUNCH, 31
    learnset MOVE_SWAGGER, 35
    learnset MOVE_REVERSAL, 39
    learnset MOVE_JAW_LOCK, 43
    learnset MOVE_DOUBLE_EDGE, 49
    terminatelearnset

levelup SPECIES_MABOSSTIFF
    learnset MOVE_COMEUPPANCE, 0
    learnset MOVE_COMEUPPANCE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_HONE_CLAWS, 10
    learnset MOVE_BITE, 14
    learnset MOVE_ROAR, 18
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_PAYBACK, 26
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SWAGGER, 39
    learnset MOVE_REVERSAL, 43
    learnset MOVE_JAW_LOCK, 48
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_OUTRAGE, 60
    terminatelearnset

levelup SPECIES_SHROODLE
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ACID_SPRAY, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_SWITCHEROO, 11
    learnset MOVE_POISON_FANG, 14
    learnset MOVE_FLATTER, 18
    learnset MOVE_SLASH, 21
    learnset MOVE_U_TURN, 25
    learnset MOVE_POISON_JAB, 29
    learnset MOVE_TAUNT, 33
    learnset MOVE_SUBSTITUTE, 36
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_GUNK_SHOT, 45
    terminatelearnset

levelup SPECIES_GRAFAIAI
    learnset MOVE_DOODLE, 0
    learnset MOVE_DOODLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ACID_SPRAY, 5
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_SWITCHEROO, 11
    learnset MOVE_POISON_FANG, 14
    learnset MOVE_FLATTER, 18
    learnset MOVE_SLASH, 21
    learnset MOVE_U_TURN, 25
    learnset MOVE_POISON_JAB, 33
    learnset MOVE_TAUNT, 37
    learnset MOVE_SUBSTITUTE, 40
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_GUNK_SHOT, 51
    terminatelearnset

levelup SPECIES_BRAMBLIN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_BULLET_SEED, 13
    learnset MOVE_INFESTATION, 17
    learnset MOVE_HEX, 21
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_DISABLE, 29
    learnset MOVE_PHANTOM_FORCE, 35
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_CURSE, 45
    learnset MOVE_PAIN_SPLIT, 50
    learnset MOVE_POWER_WHIP, 55
    terminatelearnset

levelup SPECIES_BRAMBLEGHAST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_BULLET_SEED, 13
    learnset MOVE_INFESTATION, 17
    learnset MOVE_HEX, 21
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_DISABLE, 29
    learnset MOVE_PHANTOM_FORCE, 35
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_CURSE, 45
    learnset MOVE_PAIN_SPLIT, 50
    learnset MOVE_POWER_WHIP, 55
    terminatelearnset

levelup SPECIES_TOEDSCOOL
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_TACKLE, 15
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MUD_SHOT, 24
    learnset MOVE_HEX, 28
    learnset MOVE_SEED_BOMB, 32
    learnset MOVE_SPORE, 36
    learnset MOVE_GROWTH, 40
    learnset MOVE_GIGA_DRAIN, 44
    learnset MOVE_EARTH_POWER, 48
    learnset MOVE_POWER_WHIP, 52
    terminatelearnset

levelup SPECIES_TOEDSCRUEL
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_REFLECT_TYPE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_TACKLE, 15
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MUD_SHOT, 24
    learnset MOVE_HEX, 28
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_SPORE, 40
    learnset MOVE_GROWTH, 44
    learnset MOVE_GIGA_DRAIN, 48
    learnset MOVE_EARTH_POWER, 54
    learnset MOVE_POWER_WHIP, 58
    terminatelearnset

levelup SPECIES_KLAWF
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_ROCK_SMASH, 9
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_METAL_CLAW, 17
    learnset MOVE_PROTECT, 21
    learnset MOVE_ROCK_BLAST, 24
    learnset MOVE_X_SCISSOR, 29
    learnset MOVE_SWORDS_DANCE, 33
    learnset MOVE_FLAIL, 37
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_HIGH_HORSEPOWER, 47
    learnset MOVE_IRON_DEFENSE, 51
    learnset MOVE_GUILLOTINE, 56
    terminatelearnset

levelup SPECIES_CAPSAKID
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 4
    learnset MOVE_GROWTH, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SUNNY_DAY, 17
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_CRUNCH, 38
    learnset MOVE_SEED_BOMB, 44
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset

levelup SPECIES_SCOVILLAIN
    learnset MOVE_FLAMETHROWER, 0
    learnset MOVE_SPICY_EXTRACT, 0
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_SPICY_EXTRACT, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 4
    learnset MOVE_GROWTH, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SUNNY_DAY, 17
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_WORRY_SEED, 33
    learnset MOVE_CRUNCH, 38
    learnset MOVE_SEED_BOMB, 44
    learnset MOVE_OVERHEAT, 48
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset

levelup SPECIES_RELLOR
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_DIG, 29
    learnset MOVE_LUNGE, 35
    terminatelearnset

levelup SPECIES_RABSCA
    learnset MOVE_REVIVAL_BLESSING, 0
    learnset MOVE_REVIVAL_BLESSING, 1
    learnset MOVE_PSYCH_UP, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_LUNGE, 35
    learnset MOVE_GUARD_SWAP, 40
    learnset MOVE_POWER_SWAP, 40
    learnset MOVE_SPEED_SWAP, 40
    learnset MOVE_BUG_BUZZ, 45
    learnset MOVE_PSYCHIC, 50
    terminatelearnset

levelup SPECIES_FLITTLE
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_PLUCK, 24
    learnset MOVE_AGILITY, 29
    learnset MOVE_UPROAR, 34
    terminatelearnset

levelup SPECIES_ESPATHRA
    learnset MOVE_LUMINA_CRASH, 0
    learnset MOVE_LUMINA_CRASH, 1
    learnset MOVE_DRILL_PECK, 1
    learnset MOVE_FEATHER_DANCE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_PLUCK, 24
    learnset MOVE_AGILITY, 29
    learnset MOVE_UPROAR, 34
    learnset MOVE_DAZZLING_GLEAM, 43
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_LAST_RESORT, 54
    terminatelearnset

levelup SPECIES_TINKATINK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_SWEET_KISS, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_SLAM, 27
    learnset MOVE_FLASH_CANNON, 31
    learnset MOVE_PLAY_ROUGH, 35
    learnset MOVE_FAKE_OUT, 39
    learnset MOVE_FLATTER, 43
    learnset MOVE_SKITTER_SMACK, 47
    learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_TINKATUFF
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_SWEET_KISS, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_SLAM, 27
    learnset MOVE_FLASH_CANNON, 31
    learnset MOVE_PLAY_ROUGH, 35
    learnset MOVE_FAKE_OUT, 39
    learnset MOVE_FLATTER, 43
    learnset MOVE_SKITTER_SMACK, 47
    learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_TINKATON
    learnset MOVE_GIGATON_HAMMER, 0
    learnset MOVE_GIGATON_HAMMER, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_SWEET_KISS, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_SLAM, 27
    learnset MOVE_FLASH_CANNON, 31
    learnset MOVE_PLAY_ROUGH, 35
    learnset MOVE_FAKE_OUT, 39
    learnset MOVE_FLATTER, 43
    learnset MOVE_SKITTER_SMACK, 47
    learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_WIGLETT
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_WRAP, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_SLAM, 20
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_DIG, 28
    learnset MOVE_SUCKER_PUNCH, 32
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_LIQUIDATION, 40
    terminatelearnset

levelup SPECIES_WUGTRIO
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_TRIPLE_DIVE, 30
    learnset MOVE_DIG, 36
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_THROAT_CHOP, 48
    learnset MOVE_LIQUIDATION, 54
    terminatelearnset

levelup SPECIES_BOMBIRDIER
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_LEER, 1
    learnset MOVE_MEMENTO, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_THIEF, 7
    learnset MOVE_ROCK_THROW, 11
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_PLUCK, 20
    learnset MOVE_TORMENT, 24
    learnset MOVE_ROCK_TOMB, 29
    learnset MOVE_PAYBACK, 36
    learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_ROCK_SLIDE, 47
    learnset MOVE_KNOCK_OFF, 53
    learnset MOVE_PARTING_SHOT, 60
    terminatelearnset

levelup SPECIES_FINIZEN
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_CHARM, 25
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_ENCORE, 34
    learnset MOVE_AQUA_TAIL, 39
    learnset MOVE_MIST, 44
    learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset

levelup SPECIES_PALAFIN
    learnset MOVE_FLIP_TURN, 0
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_JET_PUNCH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_CHARM, 25
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_ENCORE, 34
    learnset MOVE_AQUA_TAIL, 39
    learnset MOVE_MIST, 44
    learnset MOVE_HYDRO_PUMP, 50
    learnset MOVE_FOCUS_PUNCH, 55
    learnset MOVE_WAVE_CRASH, 61
    terminatelearnset

levelup SPECIES_VAROOM
    learnset MOVE_LICK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 41
    learnset MOVE_SPIN_OUT, 46
    learnset MOVE_GUNK_SHOT, 50
    terminatelearnset

levelup SPECIES_REVAVROOM
    learnset MOVE_SHIFT_GEAR, 0
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_LICK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 46
    learnset MOVE_SPIN_OUT, 52
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset

levelup SPECIES_CYCLIZAR
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_RAPID_SPIN, 7
    learnset MOVE_TAUNT, 11
    learnset MOVE_BREAKING_SWIPE, 14
    learnset MOVE_QUICK_ATTACK, 18
    learnset MOVE_BITE, 23
    learnset MOVE_U_TURN, 27
    learnset MOVE_SHED_TAIL, 31
    learnset MOVE_DRAGON_CLAW, 36
    learnset MOVE_SHIFT_GEAR, 40
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_DOUBLE_EDGE, 51
    learnset MOVE_DRAGON_RUSH, 57
    terminatelearnset

levelup SPECIES_ORTHWORM
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_IRON_HEAD, 21
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_DIG, 30
    learnset MOVE_SANDSTORM, 34
    learnset MOVE_IRON_DEFENSE, 38
    learnset MOVE_IRON_TAIL, 43
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_SHED_TAIL, 52
    terminatelearnset

levelup SPECIES_GLIMMET
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SMACK_DOWN, 1
    learnset MOVE_ACID_SPRAY, 7
    learnset MOVE_ANCIENT_POWER, 11
    learnset MOVE_ROCK_POLISH, 15
    learnset MOVE_STEALTH_ROCK, 18
    learnset MOVE_VENOSHOCK, 22
    learnset MOVE_SANDSTORM, 26
    learnset MOVE_SELF_DESTRUCT, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_ACID_ARMOR, 41
    learnset MOVE_SLUDGE_WAVE, 46
    terminatelearnset

levelup SPECIES_GLIMMORA
    learnset MOVE_MORTAL_SPIN, 0
    learnset MOVE_MORTAL_SPIN, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SMACK_DOWN, 1
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_ACID_SPRAY, 7
    learnset MOVE_ANCIENT_POWER, 11
    learnset MOVE_ROCK_POLISH, 15
    learnset MOVE_STEALTH_ROCK, 18
    learnset MOVE_VENOSHOCK, 22
    learnset MOVE_SANDSTORM, 26
    learnset MOVE_SELF_DESTRUCT, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_ACID_ARMOR, 44
    learnset MOVE_SLUDGE_WAVE, 50
    terminatelearnset

levelup SPECIES_GREAVARD
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 3
    learnset MOVE_BITE, 6
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_ROAR, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DIG, 16
    learnset MOVE_REST, 24
    learnset MOVE_CRUNCH, 28
    learnset MOVE_PLAY_ROUGH, 32
    learnset MOVE_HELPING_HAND, 37
    learnset MOVE_PHANTOM_FORCE, 41
    learnset MOVE_CHARM, 46
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_HOUNDSTONE
    learnset MOVE_LAST_RESPECTS, 0
    learnset MOVE_LAST_RESPECTS, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 3
    learnset MOVE_BITE, 6
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_ROAR, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DIG, 16
    learnset MOVE_REST, 24
    learnset MOVE_CRUNCH, 28
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_HELPING_HAND, 41
    learnset MOVE_PHANTOM_FORCE, 46
    learnset MOVE_CHARM, 51
    learnset MOVE_DOUBLE_EDGE, 58
    terminatelearnset

levelup SPECIES_FLAMIGO
    learnset MOVE_COPYCAT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_DETECT, 9
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_FOCUS_ENERGY, 15
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_PAYBACK, 27
    learnset MOVE_ROOST, 31
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_MEGA_KICK, 39
    learnset MOVE_WIDE_GUARD, 44
    learnset MOVE_THROAT_CHOP, 48
    learnset MOVE_BRAVE_BIRD, 54
    terminatelearnset

levelup SPECIES_CETODDLE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 6
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_REST, 15
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_FLAIL, 25
    learnset MOVE_AVALANCHE, 27
    learnset MOVE_BOUNCE, 31
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_AMNESIA, 40
    learnset MOVE_ICE_SPINNER, 44
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_BLIZZARD, 53
    terminatelearnset

levelup SPECIES_CETITAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 6
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_REST, 15
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_FLAIL, 25
    learnset MOVE_AVALANCHE, 27
    learnset MOVE_BOUNCE, 31
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_AMNESIA, 40
    learnset MOVE_ICE_SPINNER, 44
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_BLIZZARD, 53
    terminatelearnset

levelup SPECIES_VELUZA
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PLUCK, 7
    learnset MOVE_WATER_PULSE, 11
    learnset MOVE_FOCUS_ENERGY, 15
    learnset MOVE_SLASH, 20
    learnset MOVE_AQUA_CUTTER, 25
    learnset MOVE_FILLET_AWAY, 30
    learnset MOVE_NIGHT_SLASH, 35
    learnset MOVE_PSYCHO_CUT, 40
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_CRUNCH, 50
    learnset MOVE_FINAL_GAMBIT, 55
    terminatelearnset

levelup SPECIES_DONDOZO
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_FLAIL, 10
    learnset MOVE_REST, 15
    learnset MOVE_SLEEP_TALK, 15
    learnset MOVE_DIVE, 20
    learnset MOVE_NOBLE_ROAR, 25
    learnset MOVE_SOAK, 30
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_RAIN_DANCE, 45
    learnset MOVE_ORDER_UP, 50
    learnset MOVE_HEAVY_SLAM, 55
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_WAVE_CRASH, 65
    terminatelearnset

levelup SPECIES_TATSUGIRI
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_SOAK, 23
    learnset MOVE_TAUNT, 28
    learnset MOVE_MEMENTO, 34
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_NASTY_PLOT, 43
    learnset MOVE_MIRROR_COAT, 47
    learnset MOVE_DRAGON_PULSE, 52
    terminatelearnset

levelup SPECIES_ANNIHILAPE
    learnset MOVE_SHADOW_PUNCH, 0
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_FINAL_GAMBIT, 1
    learnset MOVE_FLING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_KARATE_CHOP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_FURY_SWIPES, 5
    learnset MOVE_LOW_KICK, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_SEISMIC_TOSS, 15
    learnset MOVE_SWAGGER, 17
    learnset MOVE_CROSS_CHOP, 22
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_PUNISHMENT, 30
    learnset MOVE_THRASH, 30
    learnset MOVE_RAGE_FIST, 35
    learnset MOVE_CLOSE_COMBAT, 39
    learnset MOVE_SCREECH, 44
    learnset MOVE_STOMPING_TANTRUM, 48
    learnset MOVE_OUTRAGE, 53
    learnset MOVE_FINAL_GAMBIT, 57
    terminatelearnset

levelup SPECIES_CLODSIRE
    learnset MOVE_AMNESIA, 0
    learnset MOVE_AMNESIA, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TOXIC_SPIKES, 4
    learnset MOVE_MUD_SHOT, 8
    learnset MOVE_POISON_TAIL, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_YAWN, 21
    learnset MOVE_POISON_JAB, 24
    learnset MOVE_SLUDGE_WAVE, 30
    learnset MOVE_MEGAHORN, 36
    learnset MOVE_TOXIC, 40
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset

levelup SPECIES_FARIGIRAF
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GUARD_SWAP, 1
    learnset MOVE_POWER_SWAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_STOMP, 14
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_AGILITY, 23
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_TWIN_BEAM, 32
    learnset MOVE_CRUNCH, 37
    learnset MOVE_BATON_PASS, 41
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_PSYCHIC, 50
    terminatelearnset

levelup SPECIES_DUDUNSPARCE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_GLARE, 12
    learnset MOVE_SCREECH, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_DRILL_RUN, 24
    learnset MOVE_YAWN, 28
    learnset MOVE_HYPER_DRILL, 32
    learnset MOVE_ROOST, 36
    learnset MOVE_DRAGON_RUSH, 40
    learnset MOVE_COIL, 44
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_HURRICANE, 56
    learnset MOVE_BOOMBURST, 62
    terminatelearnset

levelup SPECIES_KINGAMBIT
    learnset MOVE_KOWTOW_CLEAVE, 0
    learnset MOVE_KOWTOW_CLEAVE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TORMENT, 15
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_METAL_SOUND, 30
    learnset MOVE_SLASH, 35
    learnset MOVE_NIGHT_SLASH, 40
    learnset MOVE_EMBARGO, 41
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_RETALIATE, 50
    learnset MOVE_IRON_HEAD, 57
    learnset MOVE_SWORDS_DANCE, 64
    learnset MOVE_GUILLOTINE, 71
    terminatelearnset

levelup SPECIES_GREAT_TUSK
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_BULLDOZE, 7
    learnset MOVE_TAUNT, 14
    learnset MOVE_RAPID_SPIN, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_GIGA_IMPACT, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_ENDEAVOR, 70
    learnset MOVE_MEGAHORN, 77
    learnset MOVE_HEAD_SMASH, 84
    learnset MOVE_HEADLONG_RUSH, 91
    terminatelearnset

levelup SPECIES_SCREAM_TAIL
    learnset MOVE_DISABLE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_SING, 1
    learnset MOVE_HOWL, 7
    learnset MOVE_NOBLE_ROAR, 14
    learnset MOVE_BITE, 21
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_REST, 35
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_HYPER_VOICE, 49
    learnset MOVE_PSYCHIC_FANGS, 56
    learnset MOVE_CRUNCH, 63
    learnset MOVE_WISH, 70
    learnset MOVE_GYRO_BALL, 77
    learnset MOVE_PERISH_SONG, 84
    learnset MOVE_BOOMBURST, 91
    terminatelearnset

levelup SPECIES_BRUTE_BONNET
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_SYNTHESIS, 21
    learnset MOVE_CLEAR_SMOG, 28
    learnset MOVE_PAYBACK, 35
    learnset MOVE_THRASH, 42
    learnset MOVE_GIGA_DRAIN, 49
    learnset MOVE_SUCKER_PUNCH, 56
    learnset MOVE_SPORE, 63
    learnset MOVE_INGRAIN, 70
    learnset MOVE_RAGE_POWDER, 77
    learnset MOVE_SOLAR_BEAM, 91
    terminatelearnset

levelup SPECIES_FLUTTER_MANE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_PSYBEAM, 7
    learnset MOVE_MEAN_LOOK, 14
    learnset MOVE_MEMENTO, 21
    learnset MOVE_WISH, 28
    learnset MOVE_PAIN_SPLIT, 32
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_MYSTICAL_FIRE, 49
    learnset MOVE_POWER_GEM, 56
    learnset MOVE_PSYSHOCK, 63
    learnset MOVE_PHANTOM_FORCE, 70
    learnset MOVE_PAIN_SPLIT, 77
    learnset MOVE_MOONBLAST, 84
    learnset MOVE_PERISH_SONG, 91
    terminatelearnset

levelup SPECIES_SLITHER_WING
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_GUST, 1
    learnset MOVE_POISON_POWDER, 7
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_STOMP, 21
    learnset MOVE_LOW_SWEEP, 28
    learnset MOVE_MORNING_SUN, 35
    learnset MOVE_LUNGE, 42
    learnset MOVE_SUPERPOWER, 49
    learnset MOVE_BULK_UP, 56
    learnset MOVE_DUAL_WINGBEAT, 63
    learnset MOVE_FIRST_IMPRESSION, 70
    learnset MOVE_WHIRLWIND, 77
    learnset MOVE_LEECH_LIFE, 84
    learnset MOVE_THRASH, 91
    terminatelearnset

levelup SPECIES_SANDY_SHOCKS
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_SPARK, 7
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_CHARGE_BEAM, 21
    learnset MOVE_TRI_ATTACK, 28
    learnset MOVE_SCREECH, 35
    learnset MOVE_HEAVY_SLAM, 42
    learnset MOVE_METAL_SOUND, 49
    learnset MOVE_DISCHARGE, 56
    learnset MOVE_EARTH_POWER, 63
    learnset MOVE_MIRROR_COAT, 70
    learnset MOVE_GRAVITY, 77
    learnset MOVE_ZAP_CANNON, 84
    learnset MOVE_MAGNETIC_FLUX, 91
    terminatelearnset

levelup SPECIES_IRON_TREADS
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_BULLDOZE, 7
    learnset MOVE_RAPID_SPIN, 21
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_HEAVY_SLAM, 56
    learnset MOVE_WILD_CHARGE, 63
    learnset MOVE_ENDEAVOR, 70
    learnset MOVE_MEGAHORN, 77
    learnset MOVE_GIGA_IMPACT, 84
    learnset MOVE_STEEL_ROLLER, 91
    terminatelearnset

levelup SPECIES_IRON_BUNDLE
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_PRESENT, 1
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_WHIRLPOOL, 14
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_HELPING_HAND, 35
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_FLIP_TURN, 49
    learnset MOVE_ICE_BEAM, 56
    learnset MOVE_AGILITY, 63
    learnset MOVE_SNOWSCAPE, 70
    learnset MOVE_HYDRO_PUMP, 77
    learnset MOVE_AURORA_VEIL, 84
    learnset MOVE_BLIZZARD, 91
    terminatelearnset

levelup SPECIES_IRON_HANDS
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_WHIRLWIND, 14
    learnset MOVE_THUNDER_PUNCH, 21
    learnset MOVE_SLAM, 28
    learnset MOVE_FORCE_PALM, 35
    learnset MOVE_SEISMIC_TOSS, 42
    learnset MOVE_CHARGE, 49
    learnset MOVE_WILD_CHARGE, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_DETECT, 70
    learnset MOVE_HEAVY_SLAM, 77
    learnset MOVE_BELLY_DRUM, 84
    learnset MOVE_FOCUS_PUNCH, 91
    terminatelearnset

levelup SPECIES_IRON_JUGULIS
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_ROAR, 7
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_DRAGON_BREATH, 21
    learnset MOVE_SNARL, 28
    learnset MOVE_CRUNCH, 35
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_KNOCK_OFF, 63
    learnset MOVE_DARK_PULSE, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_DRAGON_PULSE, 84
    learnset MOVE_HYPER_BEAM, 91
    terminatelearnset

levelup SPECIES_IRON_MOTH
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_GUST, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_FIRE_SPIN, 14
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_LUNGE, 28
    learnset MOVE_SCREECH, 35
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_SLUDGE_WAVE, 49
    learnset MOVE_FIERY_DANCE, 56
    learnset MOVE_METAL_SOUND, 63
    learnset MOVE_MORNING_SUN, 70
    learnset MOVE_HURRICANE, 77
    learnset MOVE_BUG_BUZZ, 84
    learnset MOVE_OVERHEAT, 91
    terminatelearnset

levelup SPECIES_IRON_THORNS
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_BITE, 28
    learnset MOVE_CHARGE, 35
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_SANDSTORM, 49
    learnset MOVE_WILD_CHARGE, 56
    learnset MOVE_PIN_MISSILE, 63
    learnset MOVE_EARTHQUAKE, 70
    learnset MOVE_STEALTH_ROCK, 77
    learnset MOVE_STONE_EDGE, 84
    learnset MOVE_GIGA_IMPACT, 91
    terminatelearnset

levelup SPECIES_FRIGIBAX
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ICY_WIND, 6
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 18
    learnset MOVE_BITE, 24
    learnset MOVE_ICE_FANG, 29
    learnset MOVE_DRAGON_CLAW, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_ICE_BEAM, 40
    learnset MOVE_CRUNCH, 44
    learnset MOVE_ICICLE_CRASH, 48
    terminatelearnset

levelup SPECIES_ARCTIBAX
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ICY_WIND, 6
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 18
    learnset MOVE_BITE, 24
    learnset MOVE_ICE_FANG, 29
    learnset MOVE_DRAGON_CLAW, 32
    learnset MOVE_TAKE_DOWN, 40
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_CRUNCH, 50
    learnset MOVE_ICICLE_CRASH, 55
    terminatelearnset

levelup SPECIES_BAXCALIBUR
    learnset MOVE_GLAIVE_RUSH, 0
    learnset MOVE_GLAIVE_RUSH, 1
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SNOWSCAPE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ICY_WIND, 6
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 18
    learnset MOVE_BITE, 24
    learnset MOVE_ICE_FANG, 29
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_CRUNCH, 55
    learnset MOVE_ICICLE_CRASH, 62
    terminatelearnset

levelup SPECIES_GIMMIGHOUL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_GHOLDENGO
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_CONFUSE_RAY, 14
    learnset MOVE_SUBSTITUTE, 21
    learnset MOVE_METAL_SOUND, 28
    learnset MOVE_SHADOW_BALL, 35
    learnset MOVE_RECOVER, 42
    learnset MOVE_POWER_GEM, 49
    learnset MOVE_MAKE_IT_RAIN, 56
    learnset MOVE_NASTY_PLOT, 63
    learnset MOVE_MEMENTO, 70
    terminatelearnset

levelup SPECIES_WO_CHIEN
    learnset MOVE_ABSORB, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_LEECH_SEED, 25
    learnset MOVE_GROWTH, 30
    learnset MOVE_INGRAIN, 35
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_RUINATION, 50
    learnset MOVE_FOUL_PLAY, 55
    learnset MOVE_POWER_WHIP, 60
    learnset MOVE_GRASSY_TERRAIN, 65
    learnset MOVE_KNOCK_OFF, 70
    learnset MOVE_LEAF_STORM, 75
    terminatelearnset

levelup SPECIES_CHIEN_PAO
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_ICY_WIND, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_HAZE, 15
    learnset MOVE_MIST, 15
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_SWORDS_DANCE, 25
    learnset MOVE_SNOWSCAPE, 30
    learnset MOVE_NIGHT_SLASH, 35
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_ICICLE_CRASH, 45
    learnset MOVE_RUINATION, 50
    learnset MOVE_SUCKER_PUNCH, 55
    learnset MOVE_SACRED_SWORD, 60
    learnset MOVE_RECOVER, 65
    learnset MOVE_THROAT_CHOP, 70
    learnset MOVE_SHEER_COLD, 75
    terminatelearnset

levelup SPECIES_TING_LU
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_SPIKES, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_STOMP, 15
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_WHIRLWIND, 25
    learnset MOVE_TAUNT, 30
    learnset MOVE_THRASH, 35
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_STOMPING_TANTRUM, 45
    learnset MOVE_RUINATION, 50
    learnset MOVE_THROAT_CHOP, 55
    learnset MOVE_ROCK_SLIDE, 60
    learnset MOVE_MEMENTO, 65
    learnset MOVE_EARTHQUAKE, 70
    learnset MOVE_FISSURE, 75
    terminatelearnset

levelup SPECIES_CHI_YU
    learnset MOVE_EMBER, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_FLAME_WHEEL, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_FLAME_CHARGE, 20
    learnset MOVE_INCINERATE, 25
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_NASTY_PLOT, 35
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_LAVA_PLUME, 45
    learnset MOVE_RUINATION, 50
    learnset MOVE_BOUNCE, 55
    learnset MOVE_SWAGGER, 60
    learnset MOVE_INFERNO, 65
    learnset MOVE_MEMENTO, 70
    learnset MOVE_OVERHEAT, 75
    terminatelearnset

levelup SPECIES_ROARING_MOON
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_LEER, 1
    learnset MOVE_INCINERATE, 7
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_NIGHT_SLASH, 49
    learnset MOVE_DRAGON_DANCE, 56
    learnset MOVE_DRAGON_RUSH, 63
    learnset MOVE_FLY, 70
    learnset MOVE_THROAT_CHOP, 77
    learnset MOVE_ROOST, 84
    learnset MOVE_DOUBLE_EDGE, 91
    terminatelearnset

levelup SPECIES_IRON_VALIANT
    learnset MOVE_DISABLE, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_HYPNOSIS, 7
    learnset MOVE_FEINT, 14
    learnset MOVE_FUTURE_SIGHT, 21
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_PSYCHO_CUT, 35
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_LEAF_BLADE, 49
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_KNOCK_OFF, 70
    learnset MOVE_DESTINY_BOND, 77
    learnset MOVE_QUICK_GUARD, 84
    learnset MOVE_WIDE_GUARD, 84
    learnset MOVE_SPIRIT_BREAK, 91
    terminatelearnset

levelup SPECIES_KORAIDON
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_DRAIN_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_COLLISION_COURSE, 56
    learnset MOVE_SCREECH, 63
    learnset MOVE_COUNTER, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_CLOSE_COMBAT, 84
    learnset MOVE_FLARE_BLITZ, 91
    learnset MOVE_GIGA_IMPACT, 981
    terminatelearnset

levelup SPECIES_MIRAIDON
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SHOCK_WAVE, 7
    learnset MOVE_CHARGE, 14
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_ELECTRO_DRIFT, 56
    learnset MOVE_METAL_SOUND, 63
    learnset MOVE_MIRROR_COAT, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_THUNDER, 84
    learnset MOVE_OVERHEAT, 91
    learnset MOVE_HYPER_BEAM, 98
    terminatelearnset

levelup SPECIES_WALKING_WAKE
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_BITE, 7
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_NOBLE_ROAR, 21
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_BREAKING_SWIPE, 35
    learnset MOVE_DRAGON_RUSH, 42
    learnset MOVE_HYDRO_STEAM, 56
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_FLAMETHROWER, 77
    learnset MOVE_HYDRO_PUMP, 84
    terminatelearnset

levelup SPECIES_IRON_LEAVES
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_QUASH, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_MAGICAL_LEAF, 7
    learnset MOVE_RETALIATE, 14
    learnset MOVE_QUICK_GUARD, 21
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_SWORDS_DANCE, 35
    learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_LEAF_BLADE, 49
    learnset MOVE_PSYBLADE, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_IMPRISON, 70
    learnset MOVE_MEGAHORN, 77
    learnset MOVE_ALLY_SWITCH, 84
    learnset MOVE_SOLAR_BLADE, 91
    terminatelearnset

levelup SPECIES_DIPPLIN
    learnset MOVE_DOUBLE_HIT, 0
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_DRAGON_TAIL, 4
    learnset MOVE_GROWTH, 8
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_SYRUP_BOMB, 28
    learnset MOVE_DRAGON_PULSE, 32
    learnset MOVE_RECOVER, 36
    learnset MOVE_ENERGY_BALL, 40
    learnset MOVE_SUBSTITUTE, 44
    terminatelearnset

levelup SPECIES_POLTCHAGEIST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ABSORB, 6
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_FOUL_PLAY, 18
    learnset MOVE_MEGA_DRAIN, 24
    learnset MOVE_HEX, 30
    learnset MOVE_RAGE_POWDER, 36
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset

levelup SPECIES_SINISTCHA
    learnset MOVE_MATCHA_GOTCHA, 0
    learnset MOVE_MATCHA_GOTCHA, 0
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ABSORB, 6
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_FOUL_PLAY, 18
    learnset MOVE_MEGA_DRAIN, 24
    learnset MOVE_HEX, 30
    learnset MOVE_RAGE_POWDER, 36
    learnset MOVE_STRENGTH_SAP, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset

levelup SPECIES_OKIDOGI
    learnset MOVE_BITE, 1
    learnset MOVE_BULK_UP, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_HOWL, 8
    learnset MOVE_POISON_FANG, 16
    learnset MOVE_FORCE_PALM, 24
    learnset MOVE_COUNTER, 32
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_BRUTAL_SWING, 48
    learnset MOVE_CRUNCH, 56
    learnset MOVE_SUPERPOWER, 64
    learnset MOVE_GIGA_IMPACT, 72
    terminatelearnset

levelup SPECIES_MUNKIDORI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_FLATTER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_CLEAR_SMOG, 24
    learnset MOVE_POISON_JAB, 32
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_SLUDGE_WAVE, 48
    learnset MOVE_NASTY_PLOT, 56
    learnset MOVE_FUTURE_SIGHT, 64
    learnset MOVE_PARTING_SHOT, 72
    terminatelearnset

levelup SPECIES_FEZANDIPITI
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_ATTRACT, 16
    learnset MOVE_WING_ATTACK, 24
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_TAIL_SLAP, 40
    learnset MOVE_BEAT_UP, 48
    learnset MOVE_FLATTER, 56
    learnset MOVE_SWAGGER, 56
    learnset MOVE_ROOST, 64
    learnset MOVE_MOONBLAST, 72
    terminatelearnset

levelup SPECIES_OGERPON
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_ARCHALUDON
    learnset MOVE_ELECTRO_SHOT, 0
    learnset MOVE_ELECTRO_SHOT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_HONE_CLAWS, 12
    learnset MOVE_METAL_SOUND, 18
    learnset MOVE_BREAKING_SWIPE, 24
    learnset MOVE_DRAGON_TAIL, 30
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_FOCUS_ENERGY, 42
    learnset MOVE_DRAGON_CLAW, 48
    learnset MOVE_FLASH_CANNON, 54
    learnset MOVE_METAL_BURST, 60
    learnset MOVE_HYPER_BEAM, 66
    terminatelearnset

levelup SPECIES_HYDRAPPLE
    learnset MOVE_FICKLE_BEAM, 0
    learnset MOVE_FICKLE_BEAM, 1
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_DRAGON_TAIL, 4
    learnset MOVE_GROWTH, 8
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_SYRUP_BOMB, 28
    learnset MOVE_DRAGON_PULSE, 32
    learnset MOVE_RECOVER, 36
    learnset MOVE_ENERGY_BALL, 40
    learnset MOVE_SUBSTITUTE, 44
    terminatelearnset

levelup SPECIES_GOUGING_FIRE
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_INCINERATE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_FIRE_FANG, 7
    learnset MOVE_HOWL, 14
    learnset MOVE_BITE, 21
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_CRUSH_CLAW, 35
    learnset MOVE_MORNING_SUN, 42
    learnset MOVE_BURNING_BULWARK, 49
    learnset MOVE_DRAGON_RUSH, 56
    learnset MOVE_FIRE_BLAST, 63
    learnset MOVE_LAVA_PLUME, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_FLARE_BLITZ, 84
    learnset MOVE_RAGING_FURY, 91
    terminatelearnset

levelup SPECIES_RAGING_BOLT
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_SHOCK_WAVE, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_CHARGE, 7
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_ELECTRIC_TERRAIN, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_DRAGON_TAIL, 35
    learnset MOVE_CALM_MIND, 42
    learnset MOVE_THUNDERCLAP, 49
    learnset MOVE_DRAGON_HAMMER, 56
    learnset MOVE_RISING_VOLTAGE, 63
    learnset MOVE_DRAGON_PULSE, 70
    learnset MOVE_ZAP_CANNON, 77
    learnset MOVE_BODY_PRESS, 84
    learnset MOVE_THUNDER, 91
    terminatelearnset

levelup SPECIES_IRON_BOULDER
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_SLASH, 14
    learnset MOVE_AGILITY, 21
    learnset MOVE_PSYCHO_CUT, 28
    learnset MOVE_COUNTER, 35
    learnset MOVE_ROCK_TOMB, 42
    learnset MOVE_SACRED_SWORD, 49
    learnset MOVE_MIGHTY_CLEAVE, 56
    learnset MOVE_SWORDS_DANCE, 63
    learnset MOVE_MEGAHORN, 70
    learnset MOVE_QUICK_GUARD, 77
    learnset MOVE_STONE_EDGE, 84
    learnset MOVE_GIGA_IMPACT, 91
    terminatelearnset

levelup SPECIES_IRON_CROWN
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SMART_STRIKE, 7
    learnset MOVE_SLASH, 14
    learnset MOVE_IRON_DEFENSE, 21
    learnset MOVE_PSYSHOCK, 28
    learnset MOVE_PSYCHO_CUT, 35
    learnset MOVE_FLASH_CANNON, 42
    learnset MOVE_SACRED_SWORD, 49
    learnset MOVE_TACHYON_CUTTER, 56
    learnset MOVE_FUTURE_SIGHT, 63
    learnset MOVE_VOLT_SWITCH, 70
    learnset MOVE_QUICK_GUARD, 77
    learnset MOVE_METAL_BURST, 84
    learnset MOVE_HYPER_BEAM, 91
    terminatelearnset

levelup SPECIES_TERAPAGOS
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_PROTECT, 30
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_HEAVY_SLAM, 50
    learnset MOVE_TERA_STARSTORM, 60
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_ROCK_POLISH, 80
    learnset MOVE_GYRO_BALL, 90
    terminatelearnset

levelup SPECIES_PECHARUNT
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MEMENTO, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_WITHDRAW, 8
    learnset MOVE_DESTINY_BOND, 16
    learnset MOVE_FAKE_TEARS, 24
    learnset MOVE_PARTING_SHOT, 32
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_MALIGNANT_CHAIN, 48
    learnset MOVE_TOXIC, 56
    learnset MOVE_NASTY_PLOT, 64
    learnset MOVE_RECOVER, 72
    terminatelearnset


levelup SPECIES_MEGA_VENUSAUR
    learnset MOVE_PETAL_BLIZZARD, 0
    learnset MOVE_PETAL_DANCE, 0
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_VINE_WHIP, 9
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_SEED_BOMB, 20
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_SWEET_SCENT, 26
    learnset MOVE_GROWTH, 28
    learnset MOVE_SYNTHESIS, 40
    learnset MOVE_WORRY_SEED, 41
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_PETAL_BLIZZARD, 50
    learnset MOVE_SOLAR_BEAM, 55
    terminatelearnset


levelup SPECIES_MEGA_CHARIZARD_X
    learnset MOVE_AIR_SLASH, 0
    learnset MOVE_WING_ATTACK, 0
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_DRAGON_CLAW, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_EMBER, 7
    learnset MOVE_SMOKESCREEN, 10
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_DRAGON_RAGE, 17
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_SLASH, 31
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_FIRE_SPIN, 50
    learnset MOVE_INFERNO, 57
    learnset MOVE_FLARE_BLITZ, 69
    learnset MOVE_HEAT_WAVE, 71
    terminatelearnset


levelup SPECIES_MEGA_CHARIZARD_Y
    learnset MOVE_AIR_SLASH, 0
    learnset MOVE_WING_ATTACK, 0
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_DRAGON_CLAW, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_EMBER, 7
    learnset MOVE_SMOKESCREEN, 10
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_DRAGON_RAGE, 17
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_SLASH, 31
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_FIRE_SPIN, 50
    learnset MOVE_INFERNO, 57
    learnset MOVE_FLARE_BLITZ, 69
    learnset MOVE_HEAT_WAVE, 71
    terminatelearnset


levelup SPECIES_MEGA_BLASTOISE
    learnset MOVE_FLASH_CANNON, 0
    learnset MOVE_FLASH_CANNON, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_WITHDRAW, 10
    learnset MOVE_BUBBLE, 13
    learnset MOVE_RAPID_SPIN, 14
    learnset MOVE_BITE, 14
    learnset MOVE_WATER_PULSE, 21
    learnset MOVE_PROTECT, 22
    learnset MOVE_AQUA_TAIL, 31
    learnset MOVE_SHELL_SMASH, 35
    learnset MOVE_RAIN_DANCE, 38
    learnset MOVE_IRON_DEFENSE, 44
    learnset MOVE_SKULL_BASH, 48
    learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_MEGA_BEEDRILL
    learnset MOVE_TWINEEDLE, 0
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_FURY_ATTACK, 11
    learnset MOVE_RAGE, 14
    learnset MOVE_PURSUIT, 17
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_VENOSHOCK, 23
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_TOXIC_SPIKES, 29
    learnset MOVE_PIN_MISSILE, 32
    learnset MOVE_POISON_JAB, 35
    learnset MOVE_AGILITY, 38
    learnset MOVE_ENDEAVOR, 41
    learnset MOVE_FELL_STINGER, 44
    terminatelearnset


levelup SPECIES_MEGA_PIDGEOT
    learnset MOVE_HURRICANE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_GUST, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 9
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_WHIRLWIND, 17
    learnset MOVE_TWISTER, 22
    learnset MOVE_FEATHER_DANCE, 27
    learnset MOVE_AGILITY, 32
    learnset MOVE_WING_ATTACK, 38
    learnset MOVE_ROOST, 44
    learnset MOVE_TAILWIND, 50
    learnset MOVE_MIRROR_MOVE, 56
    learnset MOVE_AIR_SLASH, 62
    learnset MOVE_HURRICANE, 68
    terminatelearnset


levelup SPECIES_MEGA_ALAKAZAM
    learnset MOVE_KINESIS, 0
    learnset MOVE_CONFUSION, 1
    learnset MOVE_KINESIS, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_REFLECT, 17
    learnset MOVE_DISABLE, 18
    learnset MOVE_PSYCHO_CUT, 23
    learnset MOVE_MIRACLE_EYE, 23
    learnset MOVE_ALLY_SWITCH, 24
    learnset MOVE_RECOVER, 27
    learnset MOVE_PSYSHOCK, 30
    learnset MOVE_TELEKINESIS, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_ROLE_PLAY, 40
    learnset MOVE_FUTURE_SIGHT, 44
    learnset MOVE_CALM_MIND, 45
    learnset MOVE_TRICK, 46
    terminatelearnset


levelup SPECIES_MEGA_SLOWBRO
    learnset MOVE_WITHDRAW, 0
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_YAWN, 9
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_CONFUSION, 12
    learnset MOVE_DISABLE, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_ZEN_HEADBUTT, 27
    learnset MOVE_SURF, 30
    learnset MOVE_AMNESIA, 34
    learnset MOVE_SLACK_OFF, 34
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_PSYCH_UP, 50
    learnset MOVE_RAIN_DANCE, 50
    learnset MOVE_HEAL_PULSE, 58
    terminatelearnset


levelup SPECIES_MEGA_GENGAR
    learnset MOVE_SHADOW_PUNCH, 0
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_REFLECT_TYPE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_MEAN_LOOK, 8
    learnset MOVE_SPITE, 10
    learnset MOVE_CURSE, 16
    learnset MOVE_PAYBACK, 19
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_NIGHT_SHADE, 23
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_HEX, 38
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_DARK_PULSE, 42
    learnset MOVE_DREAM_EATER, 50
    learnset MOVE_DESTINY_BOND, 52
    learnset MOVE_NIGHTMARE, 61
    terminatelearnset


levelup SPECIES_MEGA_KANGASKHAN
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_TAIL_WHIP, 10
    learnset MOVE_BITE, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_RAGE, 22
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_DOUBLE_HIT, 25
    learnset MOVE_MEGA_PUNCH, 25
    learnset MOVE_CHIP_AWAY, 31
    learnset MOVE_DIZZY_PUNCH, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_ENDURE, 41
    learnset MOVE_REVERSAL, 46
    learnset MOVE_OUTRAGE, 47
    learnset MOVE_LAST_RESORT, 52
    terminatelearnset


levelup SPECIES_MEGA_PINSIR
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIND, 6
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_HARDEN, 11
    learnset MOVE_REVENGE, 15
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_DOUBLE_HIT, 23
    learnset MOVE_VITAL_THROW, 23
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_STORM_THROW, 27
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_STRENGTH, 36
    learnset MOVE_SUBMISSION, 38
    learnset MOVE_SWORDS_DANCE, 40
    learnset MOVE_THRASH, 43
    learnset MOVE_GUILLOTINE, 48
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset


levelup SPECIES_MEGA_GYARADOS
    learnset MOVE_BITE, 0
    learnset MOVE_BITE, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_THRASH, 1
    learnset MOVE_WHIRLPOOL, 4
    learnset MOVE_BRINE, 12
    learnset MOVE_ICE_FANG, 16
    learnset MOVE_WATERFALL, 21
    learnset MOVE_LEER, 21
    learnset MOVE_SCARY_FACE, 23
    learnset MOVE_TWISTER, 24
    learnset MOVE_CRUNCH, 31
    learnset MOVE_AQUA_TAIL, 31
    learnset MOVE_DRAGON_RAGE, 36
    learnset MOVE_RAIN_DANCE, 38
    learnset MOVE_DRAGON_DANCE, 40
    learnset MOVE_HYDRO_PUMP, 40
    learnset MOVE_HURRICANE, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset


levelup SPECIES_MEGA_AERODACTYL
    learnset MOVE_BITE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_ROAR, 17
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_CRUNCH, 31
    learnset MOVE_AGILITY, 34
    learnset MOVE_TAKE_DOWN, 40
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_SKY_DROP, 49
    learnset MOVE_HYPER_BEAM, 59
    learnset MOVE_GIGA_IMPACT, 69
    terminatelearnset


levelup SPECIES_MEGA_MEWTWO_X
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_SWIFT, 8
    learnset MOVE_PSYCH_UP, 22
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_PSYCHO_CUT, 25
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_POWER_SWAP, 49
    learnset MOVE_GUARD_SWAP, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_AMNESIA, 53
    learnset MOVE_FUTURE_SIGHT, 53
    learnset MOVE_AURA_SPHERE, 54
    learnset MOVE_BARRIER, 64
    learnset MOVE_RECOVER, 66
    learnset MOVE_MIST, 74
    learnset MOVE_PSYSTRIKE, 85
    learnset MOVE_ME_FIRST, 93
    terminatelearnset


levelup SPECIES_MEGA_MEWTWO_Y
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_SWIFT, 8
    learnset MOVE_PSYCH_UP, 22
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_PSYCHO_CUT, 25
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_POWER_SWAP, 49
    learnset MOVE_GUARD_SWAP, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_AMNESIA, 53
    learnset MOVE_FUTURE_SIGHT, 53
    learnset MOVE_AURA_SPHERE, 54
    learnset MOVE_BARRIER, 64
    learnset MOVE_RECOVER, 66
    learnset MOVE_MIST, 74
    learnset MOVE_PSYSTRIKE, 85
    learnset MOVE_ME_FIRST, 93
    terminatelearnset


levelup SPECIES_MEGA_AMPHAROS
    learnset MOVE_THUNDER_PUNCH, 0
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ZAP_CANNON, 1
    learnset MOVE_MAGNETIC_FLUX, 1
    learnset MOVE_ION_DELUGE, 1
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_CHARGE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_ELECTRO_BALL, 25
    learnset MOVE_CONFUSE_RAY, 29
    learnset MOVE_POWER_GEM, 35
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_COTTON_GUARD, 46
    learnset MOVE_SIGNAL_BEAM, 51
    learnset MOVE_LIGHT_SCREEN, 57
    learnset MOVE_THUNDER, 62
    learnset MOVE_DRAGON_PULSE, 65
    terminatelearnset


levelup SPECIES_MEGA_STEELIX
    learnset MOVE_CRUNCH, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ROCK_POLISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_CURSE, 10
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_AUTOTOMIZE, 13
    learnset MOVE_RAGE, 13
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_GYRO_BALL, 20
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_SCREECH, 27
    learnset MOVE_SAND_TOMB, 28
    learnset MOVE_SLAM, 32
    learnset MOVE_CRUNCH, 37
    learnset MOVE_DIG, 43
    learnset MOVE_IRON_TAIL, 44
    learnset MOVE_SANDSTORM, 45
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_MAGNET_RISE, 60
    terminatelearnset


levelup SPECIES_MEGA_SCIZOR
    learnset MOVE_BULLET_PUNCH, 0
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_PURSUIT, 9
    learnset MOVE_FALSE_SWIPE, 13
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_FOCUS_ENERGY, 17
    learnset MOVE_AGILITY, 17
    learnset MOVE_FURY_CUTTER, 25
    learnset MOVE_SLASH, 26
    learnset MOVE_DOUBLE_HIT, 33
    learnset MOVE_RAZOR_WIND, 33
    learnset MOVE_IRON_DEFENSE, 34
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_NIGHT_SLASH, 45
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_FEINT, 61
    terminatelearnset


levelup SPECIES_MEGA_HERACROSS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_ENDURE, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_ENDURE, 10
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_CHIP_AWAY, 16
    learnset MOVE_HORN_ATTACK, 20
    learnset MOVE_COUNTER, 22
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_PIN_MISSILE, 33
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_THROAT_CHOP, 40
    learnset MOVE_THRASH, 45
    learnset MOVE_MEGAHORN, 46
    learnset MOVE_REVERSAL, 46
    learnset MOVE_SWORDS_DANCE, 50
    learnset MOVE_CLOSE_COMBAT, 52
    terminatelearnset


levelup SPECIES_MEGA_HOUNDOOM
    learnset MOVE_INFERNO, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_HOWL, 4
    learnset MOVE_SMOG, 8
    learnset MOVE_ROAR, 13
    learnset MOVE_BITE, 16
    learnset MOVE_ODOR_SLEUTH, 20
    learnset MOVE_BEAT_UP, 26
    learnset MOVE_FIRE_FANG, 30
    learnset MOVE_FEINT_ATTACK, 35
    learnset MOVE_EMBARGO, 41
    learnset MOVE_FOUL_PLAY, 45
    learnset MOVE_FLAMETHROWER, 50
    learnset MOVE_CRUNCH, 56
    learnset MOVE_NASTY_PLOT, 60
    learnset MOVE_INFERNO, 65
    terminatelearnset


levelup SPECIES_MEGA_TYRANITAR
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_PAYBACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SANDSTORM, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_BITE, 9
    learnset MOVE_CHIP_AWAY, 14
    learnset MOVE_SCREECH, 15
    learnset MOVE_ROCK_SLIDE, 16
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_STOMPING_TANTRUM, 18
    learnset MOVE_SANDSTORM, 27
    learnset MOVE_DARK_PULSE, 28
    learnset MOVE_THRASH, 35
    learnset MOVE_CRUNCH, 36
    learnset MOVE_PAYBACK, 41
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_HYPER_BEAM, 61
    learnset MOVE_GIGA_IMPACT, 69
    terminatelearnset


levelup SPECIES_MEGA_SCEPTILE
    learnset MOVE_DUAL_CHOP, 0
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_MEGA_DRAIN, 8
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_PURSUIT, 18
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_DETECT, 24
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_AGILITY, 28
    learnset MOVE_SLAM, 31
    learnset MOVE_LEAF_BLADE, 33
    learnset MOVE_QUICK_GUARD, 34
    learnset MOVE_DOUBLE_TEAM, 35
    learnset MOVE_X_SCISSOR, 45
    learnset MOVE_FALSE_SWIPE, 51
    learnset MOVE_ENDEAVOR, 56
    learnset MOVE_SCREECH, 58
    learnset MOVE_LEAF_STORM, 63
    terminatelearnset


levelup SPECIES_MEGA_BLAZIKEN
    learnset MOVE_BLAZE_KICK, 0
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_FEATHER_DANCE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BLAZE_KICK, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_HIGH_JUMP_KICK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_PECK, 14
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_QUICK_ATTACK, 25
    learnset MOVE_BOUNCE, 30
    learnset MOVE_SLASH, 33
    learnset MOVE_FOCUS_ENERGY, 35
    learnset MOVE_BULK_UP, 40
    learnset MOVE_BLAZE_KICK, 42
    learnset MOVE_BRAVE_BIRD, 50
    learnset MOVE_REVERSAL, 56
    learnset MOVE_SKY_UPPERCUT, 57
    learnset MOVE_FLARE_BLITZ, 63
    terminatelearnset


levelup SPECIES_MEGA_SWAMPERT
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SURF, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_MUD_SLAP, 9
    learnset MOVE_FORESIGHT, 12
    learnset MOVE_SUPERSONIC, 15
    learnset MOVE_BIDE, 18
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_PROTECT, 21
    learnset MOVE_MUD_BOMB, 22
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_AMNESIA, 35
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_SCREECH, 49
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_ENDEAVOR, 56
    learnset MOVE_HYDRO_PUMP, 63
    learnset MOVE_HAMMER_ARM, 63
    terminatelearnset


levelup SPECIES_MEGA_GARDEVOIR
    learnset MOVE_DAZZLING_GLEAM, 0
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DOUBLE_TEAM, 6
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_TELEPORT, 12
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_WISH, 21
    learnset MOVE_LIFE_DEW, 23
    learnset MOVE_HYPNOSIS, 27
    learnset MOVE_CALM_MIND, 30
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_IMPRISON, 35
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_CAPTIVATE, 44
    learnset MOVE_FUTURE_SIGHT, 52
    learnset MOVE_DREAM_EATER, 54
    learnset MOVE_STORED_POWER, 58
    learnset MOVE_MOONBLAST, 62
    terminatelearnset


levelup SPECIES_MEGA_SABLEYE
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 4
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_NIGHT_SHADE, 14
    learnset MOVE_DISABLE, 15
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_DETECT, 16
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_FURY_SWIPES, 17
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_PUNISHMENT, 24
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_SHADOW_CLAW, 31
    learnset MOVE_QUASH, 36
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_MEAN_LOOK, 40
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_FOUL_PLAY, 44
    terminatelearnset


levelup SPECIES_MEGA_MAWILE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_BITE, 10
    learnset MOVE_BATON_PASS, 15
    learnset MOVE_VICE_GRIP, 17
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_SWEET_SCENT, 23
    learnset MOVE_FAKE_TEARS, 25
    learnset MOVE_STOCKPILE, 27
    learnset MOVE_SWALLOW, 27
    learnset MOVE_SPIT_UP, 27
    learnset MOVE_SUCKER_PUNCH, 27
    learnset MOVE_IRON_DEFENSE, 28
    learnset MOVE_CRUNCH, 28
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_TAUNT, 40
    learnset MOVE_PLAY_ROUGH, 48
    terminatelearnset


levelup SPECIES_MEGA_AGGRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_ROCK_TOMB, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_ROAR, 15
    learnset MOVE_PROTECT, 18
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_IRON_HEAD, 25
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_IRON_TAIL, 46
    learnset MOVE_AUTOTOMIZE, 49
    learnset MOVE_IRON_DEFENSE, 52
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_HEAVY_SLAM, 65
    learnset MOVE_METAL_BURST, 76
    terminatelearnset


levelup SPECIES_MEGA_MEDICHAM
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_MEDITATE, 4
    learnset MOVE_CONFUSION, 7
    learnset MOVE_DETECT, 9
    learnset MOVE_ENDURE, 12
    learnset MOVE_FEINT, 15
    learnset MOVE_FORCE_PALM, 17
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_CALM_MIND, 23
    learnset MOVE_MIND_READER, 25
    learnset MOVE_HIGH_JUMP_KICK, 28
    learnset MOVE_PSYCH_UP, 31
    learnset MOVE_ACUPRESSURE, 33
    learnset MOVE_POWER_TRICK, 36
    learnset MOVE_REVERSAL, 42
    learnset MOVE_RECOVER, 47
    learnset MOVE_COUNTER, 53
    terminatelearnset


levelup SPECIES_MEGA_MANECTRIC
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_LEER, 4
    learnset MOVE_HOWL, 7
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_SPARK, 13
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_BITE, 21
    learnset MOVE_THUNDER_FANG, 21
    learnset MOVE_ROAR, 32
    learnset MOVE_DISCHARGE, 33
    learnset MOVE_CHARGE, 44
    learnset MOVE_WILD_CHARGE, 45
    learnset MOVE_THUNDER, 54
    learnset MOVE_ELECTRIC_TERRAIN, 60
    terminatelearnset


levelup SPECIES_MEGA_SHARPEDO
    learnset MOVE_SLASH, 0
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_FANG, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_BITE, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_RAGE, 4
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_ASSURANCE, 15
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_SCREECH, 21
    learnset MOVE_ICE_FANG, 22
    learnset MOVE_SWAGGER, 25
    learnset MOVE_POISON_FANG, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_AGILITY, 42
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_SKULL_BASH, 51
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_TAUNT, 56
    learnset MOVE_NIGHT_SLASH, 62
    terminatelearnset


levelup SPECIES_MEGA_CAMERUPT
    learnset MOVE_ROCK_SLIDE, 0
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_FISSURE, 1
    learnset MOVE_ERUPTION, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_EMBER, 8
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_FLAME_BURST, 15
    learnset MOVE_AMNESIA, 19
    learnset MOVE_LAVA_PLUME, 22
    learnset MOVE_EARTH_POWER, 26
    learnset MOVE_CURSE, 29
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_YAWN, 39
    learnset MOVE_EARTHQUAKE, 46
    learnset MOVE_ERUPTION, 52
    learnset MOVE_FISSURE, 59
    terminatelearnset


levelup SPECIES_MEGA_ALTARIA
    learnset MOVE_DRAGON_PULSE, 0
    learnset MOVE_DRAGON_BREATH, 0
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_PLUCK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_MIST, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_SKY_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SING, 1
    learnset MOVE_ASTONISH, 3
    learnset MOVE_FURY_ATTACK, 9
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_MIST, 14
    learnset MOVE_ROUND, 16
    learnset MOVE_SAFEGUARD, 17
    learnset MOVE_SING, 17
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_NATURAL_GIFT, 20
    learnset MOVE_REFRESH, 26
    learnset MOVE_DRAGON_DANCE, 30
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_COTTON_GUARD, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_MOONBLAST, 47
    learnset MOVE_PERISH_SONG, 48
    learnset MOVE_SKY_ATTACK, 57
    terminatelearnset


levelup SPECIES_MEGA_BANETTE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_SCREECH, 4
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_SPITE, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_HEX, 22
    learnset MOVE_CURSE, 26
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_SNATCH, 46
    learnset MOVE_GRUDGE, 52
    learnset MOVE_TRICK, 58
    learnset MOVE_PHANTOM_FORCE, 64
    terminatelearnset


levelup SPECIES_MEGA_ABSOL
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_LEER, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_KNOCK_OFF, 10
    learnset MOVE_PURSUIT, 10
    learnset MOVE_DOUBLE_TEAM, 11
    learnset MOVE_TAUNT, 16
    learnset MOVE_BITE, 16
    learnset MOVE_DETECT, 23
    learnset MOVE_SLASH, 23
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_FOCUS_ENERGY, 35
    learnset MOVE_SWORDS_DANCE, 35
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_ME_FIRST, 41
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_RAZOR_WIND, 49
    learnset MOVE_FUTURE_SIGHT, 51
    learnset MOVE_PERISH_SONG, 55
    terminatelearnset


levelup SPECIES_MEGA_GLALIE
    learnset MOVE_FREEZE_DRY, 0
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_SHEER_COLD, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_PROTECT, 25
    learnset MOVE_BITE, 27
    learnset MOVE_ICE_FANG, 32
    learnset MOVE_FROST_BREATH, 33
    learnset MOVE_HEADBUTT, 41
    learnset MOVE_HAIL, 50
    learnset MOVE_CRUNCH, 51
    learnset MOVE_BLIZZARD, 58
    learnset MOVE_SHEER_COLD, 61
    terminatelearnset


levelup SPECIES_MEGA_SALAMENCE
    learnset MOVE_FLY, 0
    learnset MOVE_FLY, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_LEER, 7
    learnset MOVE_BITE, 10
    learnset MOVE_DRAGON_BREATH, 13
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_CRUNCH, 25
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_DRAGON_CLAW, 31
    learnset MOVE_FOCUS_ENERGY, 34
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_OUTRAGE, 64
    learnset MOVE_DOUBLE_EDGE, 68
    terminatelearnset


levelup SPECIES_MEGA_METAGROSS
    learnset MOVE_HAMMER_ARM, 0
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_FLASH_CANNON, 16
    learnset MOVE_ZEN_HEADBUTT, 18
    learnset MOVE_PURSUIT, 23
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_BULLET_PUNCH, 26
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_METEOR_MASH, 48
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_AGILITY, 57
    learnset MOVE_HYPER_BEAM, 71
    terminatelearnset


levelup SPECIES_MEGA_LATIAS
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_WISH, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_WATER_SPORT, 4
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_CHARM, 7
    learnset MOVE_STORED_POWER, 10
    learnset MOVE_REFRESH, 13
    learnset MOVE_CONFUSION, 15
    learnset MOVE_RECOVER, 20
    learnset MOVE_TAILWIND, 20
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_MIST_BALL, 29
    learnset MOVE_WISH, 30
    learnset MOVE_HEAL_PULSE, 34
    learnset MOVE_ZEN_HEADBUTT, 40
    learnset MOVE_REFLECT_TYPE, 46
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_PSYCHO_SHIFT, 53
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_GUARD_SPLIT, 56
    learnset MOVE_HEALING_WISH, 65
    terminatelearnset


levelup SPECIES_MEGA_LATIOS
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_DRAGON_DANCE, 1
    learnset MOVE_MEMENTO, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_HEAL_BLOCK, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_PROTECT, 4
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_DRAGON_DANCE, 7
    learnset MOVE_STORED_POWER, 10
    learnset MOVE_REFRESH, 13
    learnset MOVE_CONFUSION, 15
    learnset MOVE_RECOVER, 20
    learnset MOVE_TAILWIND, 20
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_LUSTER_PURGE, 29
    learnset MOVE_ALLY_SWITCH, 30
    learnset MOVE_HEAL_PULSE, 34
    learnset MOVE_TELEKINESIS, 36
    learnset MOVE_ZEN_HEADBUTT, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_PSYCHO_SHIFT, 53
    learnset MOVE_SIMPLE_BEAM, 55
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_POWER_SPLIT, 56
    learnset MOVE_MEMENTO, 65
    terminatelearnset


levelup SPECIES_MEGA_RAYQUAZA
    learnset MOVE_DRAGON_ASCENT, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_CRUNCH, 14
    learnset MOVE_ANCIENT_POWER, 15
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_EXTREME_SPEED, 35
    learnset MOVE_DRAGON_DANCE, 37
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_REST, 45
    learnset MOVE_HYPER_VOICE, 59
    learnset MOVE_FLY, 63
    learnset MOVE_HURRICANE, 72
    learnset MOVE_OUTRAGE, 80
    learnset MOVE_HYPER_BEAM, 90
    terminatelearnset


levelup SPECIES_MEGA_LOPUNNY
    learnset MOVE_RETURN, 0
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_MAGIC_COAT, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_RETURN, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_BOUNCE, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_ENDURE, 6
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_JUMP_KICK, 23
    learnset MOVE_AFTER_YOU, 26
    learnset MOVE_BATON_PASS, 27
    learnset MOVE_HEADBUTT, 32
    learnset MOVE_CHARM, 34
    learnset MOVE_AGILITY, 34
    learnset MOVE_DIZZY_PUNCH, 36
    learnset MOVE_FLATTER, 44
    learnset MOVE_ENTRAINMENT, 46
    learnset MOVE_BOUNCE, 51
    learnset MOVE_HEALING_WISH, 57
    learnset MOVE_HIGH_JUMP_KICK, 60
    terminatelearnset


levelup SPECIES_MEGA_GARCHOMP
    learnset MOVE_CRUNCH, 0
    learnset MOVE_CRUNCH, 1
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_SANDSTORM, 1
    learnset MOVE_SAND_ATTACK, 3
    learnset MOVE_DRAGON_RAGE, 7
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_SAND_TOMB, 19
    learnset MOVE_BITE, 27
    learnset MOVE_SLASH, 31
    learnset MOVE_DRAGON_CLAW, 37
    learnset MOVE_SANDSTORM, 39
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_DIG, 46
    learnset MOVE_DRAGON_RUSH, 69
    terminatelearnset


levelup SPECIES_MEGA_LUCARIO
    learnset MOVE_AURA_SPHERE, 0
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FORCE_PALM, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_FINAL_GAMBIT, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_COUNTER, 9
    learnset MOVE_FEINT, 11
    learnset MOVE_LASER_FOCUS, 16
    learnset MOVE_POWER_UP_PUNCH, 17
    learnset MOVE_METAL_SOUND, 26
    learnset MOVE_SWORDS_DANCE, 30
    learnset MOVE_QUICK_GUARD, 32
    learnset MOVE_BONE_RUSH, 32
    learnset MOVE_CALM_MIND, 34
    learnset MOVE_ME_FIRST, 37
    learnset MOVE_WORK_UP, 42
    learnset MOVE_HEAL_PULSE, 47
    learnset MOVE_METEOR_MASH, 48
    learnset MOVE_DRAGON_PULSE, 55
    learnset MOVE_CLOSE_COMBAT, 57
    learnset MOVE_EXTREME_SPEED, 60
    terminatelearnset


levelup SPECIES_MEGA_ABOMASNOW
    learnset MOVE_ICE_PUNCH, 0
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_AURORA_VEIL, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_MIST, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_GRASS_WHISTLE, 13
    learnset MOVE_ICY_WIND, 17
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_MIST, 21
    learnset MOVE_SWAGGER, 23
    learnset MOVE_INGRAIN, 33
    learnset MOVE_WOOD_HAMMER, 39
    learnset MOVE_BLIZZARD, 48
    learnset MOVE_SHEER_COLD, 56
    terminatelearnset


levelup SPECIES_MEGA_GALLADE
    learnset MOVE_SLASH, 0
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_DRAINING_KISS, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_PSYCHIC, 1
    learnset MOVE_DREAM_EATER, 1
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_LEAF_BLADE, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DOUBLE_TEAM, 6
    learnset MOVE_TELEPORT, 12
    learnset MOVE_FURY_CUTTER, 14
    learnset MOVE_AERIAL_ACE, 17
    learnset MOVE_HELPING_HAND, 21
    learnset MOVE_FEINT, 25
    learnset MOVE_SWORDS_DANCE, 30
    learnset MOVE_FALSE_SWIPE, 32
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_QUICK_GUARD, 35
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_PROTECT, 37
    learnset MOVE_WIDE_GUARD, 40
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_STORED_POWER, 58
    terminatelearnset


levelup SPECIES_MEGA_AUDINO
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_HYPER_VOICE, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_BABY_DOLL_EYES, 7
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_REFRESH, 9
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_ZEN_HEADBUTT, 20
    learnset MOVE_ATTRACT, 21
    learnset MOVE_LIFE_DEW, 24
    learnset MOVE_SECRET_POWER, 25
    learnset MOVE_TAKE_DOWN, 32
    learnset MOVE_AFTER_YOU, 34
    learnset MOVE_SIMPLE_BEAM, 40
    learnset MOVE_HEAL_PULSE, 40
    learnset MOVE_ENTRAINMENT, 41
    learnset MOVE_HYPER_VOICE, 46
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_MISTY_TERRAIN, 56
    learnset MOVE_LAST_RESORT, 58
    terminatelearnset


levelup SPECIES_MEGA_DIANCIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SHARPEN, 5
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_REFLECT, 12
    learnset MOVE_GUARD_SPLIT, 13
    learnset MOVE_FLAIL, 25
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_ROCK_POLISH, 35
    learnset MOVE_STEALTH_ROCK, 45
    learnset MOVE_SKILL_SWAP, 46
    learnset MOVE_TRICK_ROOM, 46
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_LIGHT_SCREEN, 50
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_SAFEGUARD, 70
    learnset MOVE_DIAMOND_STORM, 71
    terminatelearnset

levelup SPECIES_KYOGRE_PRIMAL
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_BODY_SLAM, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_AQUA_TAIL, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_CALM_MIND, 32
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_MUDDY_WATER, 42
    learnset MOVE_AQUA_RING, 42
    learnset MOVE_SHEER_COLD, 54
    learnset MOVE_ORIGIN_PULSE, 54
    learnset MOVE_HYDRO_PUMP, 73
    learnset MOVE_DOUBLE_EDGE, 80
    learnset MOVE_WATER_SPOUT, 90
    terminatelearnset


levelup SPECIES_GROUDON_PRIMAL
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_LAVA_PLUME, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_EARTH_POWER, 11
    learnset MOVE_LAVA_PLUME, 20
    learnset MOVE_EARTHQUAKE, 30
    learnset MOVE_BULK_UP, 32
    learnset MOVE_REST, 42
    learnset MOVE_FISSURE, 54
    learnset MOVE_PRECIPICE_BLADES, 54
    learnset MOVE_HAMMER_ARM, 56
    learnset MOVE_SOLAR_BEAM, 71
    learnset MOVE_FIRE_BLAST, 73
    learnset MOVE_ERUPTION, 90
    terminatelearnset


levelup SPECIES_RATTATA_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 22
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_DOUBLE_EDGE, 31
    learnset MOVE_ENDEAVOR, 34
    terminatelearnset


levelup SPECIES_RATICATE_ALOLAN
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 24
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_ENDEAVOR, 44
    terminatelearnset


levelup SPECIES_RAICHU_ALOLAN
    learnset MOVE_PSYCHIC, 0
    learnset MOVE_PSYCHIC, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_ELECTRO_BALL, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_SPARK, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_SLAM, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_THUNDER, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SPEED_SWAP, 1
    terminatelearnset


levelup SPECIES_SANDSHREW_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MIST, 3
    learnset MOVE_BIDE, 3
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_BALL, 7
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_FURY_CUTTER, 11
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_FURY_SWIPES, 22
    learnset MOVE_IRON_DEFENSE, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_IRON_HEAD, 31
    learnset MOVE_GYRO_BALL, 35
    learnset MOVE_SWORDS_DANCE, 38
    learnset MOVE_HAIL, 42
    learnset MOVE_BLIZZARD, 45
    terminatelearnset


levelup SPECIES_SANDSLASH_ALOLAN
    learnset MOVE_ICICLE_SPEAR, 0
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_SLASH, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_HAIL, 1
    learnset MOVE_BLIZZARD, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MIST, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ICE_BALL, 1
    terminatelearnset


levelup SPECIES_VULPIX_ALOLAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISABLE, 4
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_ROAR, 7
    learnset MOVE_ICE_SHARD, 8
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_SPITE, 12
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_AURORA_BEAM, 25
    learnset MOVE_HEX, 26
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_MIST, 30
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_SAFEGUARD, 34
    learnset MOVE_IMPRISON, 37
    learnset MOVE_AURORA_VEIL, 44
    learnset MOVE_CAPTIVATE, 47
    learnset MOVE_SHEER_COLD, 48
    learnset MOVE_GRUDGE, 48
    learnset MOVE_BLIZZARD, 49
    terminatelearnset


levelup SPECIES_NINETALES_ALOLAN
    learnset MOVE_DAZZLING_GLEAM, 0
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_AURORA_BEAM, 1
    learnset MOVE_EXTRASENSORY, 1
    learnset MOVE_ICE_BEAM, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_MIST, 1
    learnset MOVE_AURORA_VEIL, 1
    learnset MOVE_SHEER_COLD, 1
    learnset MOVE_GRUDGE, 1
    learnset MOVE_BLIZZARD, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_SAFEGUARD, 1
    terminatelearnset


levelup SPECIES_DIGLETT_ALOLAN
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_SANDSTORM, 28
    learnset MOVE_IRON_HEAD, 29
    learnset MOVE_DIG, 31
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_EARTHQUAKE, 39
    learnset MOVE_FISSURE, 43
    terminatelearnset


levelup SPECIES_DUGTRIO_ALOLAN
    learnset MOVE_SAND_TOMB, 0
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_SANDSTORM, 30
    learnset MOVE_IRON_HEAD, 31
    learnset MOVE_DIG, 35
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_FISSURE, 53
    terminatelearnset


levelup SPECIES_MEOWTH_ALOLAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SCRATCH, 8
    learnset MOVE_FAKE_OUT, 9
    learnset MOVE_BITE, 11
    learnset MOVE_PAY_DAY, 20
    learnset MOVE_TAUNT, 22
    learnset MOVE_FURY_SWIPES, 22
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_FEINT, 25
    learnset MOVE_SCREECH, 25
    learnset MOVE_ASSURANCE, 31
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_NASTY_PLOT, 39
    learnset MOVE_PLAY_ROUGH, 44
    learnset MOVE_CAPTIVATE, 46
    learnset MOVE_NIGHT_SLASH, 49
    terminatelearnset


levelup SPECIES_PERSIAN_ALOLAN
    learnset MOVE_POWER_GEM, 0
    learnset MOVE_SWIFT, 0
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_QUASH, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FAKE_OUT, 9
    learnset MOVE_BITE, 11
    learnset MOVE_PAY_DAY, 12
    learnset MOVE_TAUNT, 22
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_FURY_SWIPES, 23
    learnset MOVE_SCREECH, 27
    learnset MOVE_POWER_GEM, 32
    learnset MOVE_ASSURANCE, 35
    learnset MOVE_SLASH, 37
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_NIGHT_SLASH, 50
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_CAPTIVATE, 56
    learnset MOVE_FEINT, 65
    learnset MOVE_DARK_PULSE, 69
    terminatelearnset


levelup SPECIES_GEODUDE_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_CHARGE, 4
    learnset MOVE_ROCK_POLISH, 6
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SPARK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_THUNDER_PUNCH, 22
    learnset MOVE_SELF_DESTRUCT, 24
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_ROCK_BLAST, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_EXPLOSION, 36
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_STONE_EDGE, 42
    terminatelearnset


levelup SPECIES_GRAVELER_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_ROCK_POLISH, 1
    learnset MOVE_CHARGE, 4
    learnset MOVE_ROCK_POLISH, 6
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SPARK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_THUNDER_PUNCH, 22
    learnset MOVE_SELF_DESTRUCT, 24
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_STONE_EDGE, 54
    terminatelearnset


levelup SPECIES_GOLEM_ALOLAN
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_ROCK_POLISH, 1
    learnset MOVE_CHARGE, 4
    learnset MOVE_ROCK_POLISH, 6
    learnset MOVE_STEAMROLLER, 10
    learnset MOVE_SPARK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_THUNDER_PUNCH, 22
    learnset MOVE_SELF_DESTRUCT, 24
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_HEAVY_SLAM, 60
    terminatelearnset


levelup SPECIES_GRIMER_ALOLAN
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_BITE, 7
    learnset MOVE_DISABLE, 12
    learnset MOVE_ACID_SPRAY, 15
    learnset MOVE_POISON_FANG, 18
    learnset MOVE_MINIMIZE, 21
    learnset MOVE_FLING, 26
    learnset MOVE_KNOCK_OFF, 29
    learnset MOVE_CRUNCH, 32
    learnset MOVE_SCREECH, 37
    learnset MOVE_GUNK_SHOT, 40
    learnset MOVE_ACID_ARMOR, 43
    learnset MOVE_BELCH, 46
    learnset MOVE_MEMENTO, 48
    terminatelearnset


levelup SPECIES_MUK_ALOLAN
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BITE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_BITE, 7
    learnset MOVE_DISABLE, 12
    learnset MOVE_ACID_SPRAY, 15
    learnset MOVE_POISON_FANG, 18
    learnset MOVE_MINIMIZE, 21
    learnset MOVE_FLING, 26
    learnset MOVE_KNOCK_OFF, 29
    learnset MOVE_CRUNCH, 32
    learnset MOVE_SCREECH, 37
    learnset MOVE_GUNK_SHOT, 40
    learnset MOVE_ACID_ARMOR, 46
    learnset MOVE_BELCH, 52
    learnset MOVE_MEMENTO, 57
    terminatelearnset


levelup SPECIES_EXEGGUTOR_ALOLAN
    learnset MOVE_DRAGON_HAMMER, 0
    learnset MOVE_DRAGON_HAMMER, 1
    learnset MOVE_SEED_BOMB, 1
    learnset MOVE_PSYSHOCK, 1
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_EXTRASENSORY, 1
    learnset MOVE_UPROAR, 1
    learnset MOVE_WORRY_SEED, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_BARRAGE, 1
    learnset MOVE_PSYSHOCK, 17
    learnset MOVE_EGG_BOMB, 27
    learnset MOVE_WOOD_HAMMER, 37
    learnset MOVE_LEAF_STORM, 47
    terminatelearnset


levelup SPECIES_MAROWAK_ALOLAN
    learnset MOVE_SHADOW_BONE, 0
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_BONE_CLUB, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_BONE_CLUB, 7
    learnset MOVE_FLAME_WHEEL, 11
    learnset MOVE_LEER, 13
    learnset MOVE_HEX, 16
    learnset MOVE_FLING, 27
    learnset MOVE_SHADOW_BONE, 27
    learnset MOVE_WILL_O_WISP, 29
    learnset MOVE_STOMPING_TANTRUM, 32
    learnset MOVE_BONEMERANG, 35
    learnset MOVE_THRASH, 44
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_BONE_RUSH, 46
    learnset MOVE_FLARE_BLITZ, 56
    learnset MOVE_RETALIATE, 59
    terminatelearnset


levelup SPECIES_RATICATE_ALOLAN_LARGE
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 24
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_ENDEAVOR, 44
    terminatelearnset


levelup SPECIES_MAROWAK_ALOLAN_LARGE
    learnset MOVE_SHADOW_BONE, 0
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_BONE_CLUB, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_BONE_CLUB, 7
    learnset MOVE_FLAME_WHEEL, 11
    learnset MOVE_LEER, 13
    learnset MOVE_HEX, 16
    learnset MOVE_FLING, 27
    learnset MOVE_SHADOW_BONE, 27
    learnset MOVE_WILL_O_WISP, 29
    learnset MOVE_STOMPING_TANTRUM, 32
    learnset MOVE_BONEMERANG, 35
    learnset MOVE_THRASH, 44
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_BONE_RUSH, 46
    learnset MOVE_FLARE_BLITZ, 56
    learnset MOVE_RETALIATE, 59
    terminatelearnset


levelup SPECIES_GUMSHOOS_LARGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 3
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_ODOR_SLEUTH, 13
    learnset MOVE_BIDE, 16
    learnset MOVE_BITE, 19
    learnset MOVE_MUD_SLAP, 23
    learnset MOVE_SUPER_FANG, 27
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_SCARY_FACE, 35
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HYPER_FANG, 43
    learnset MOVE_YAWN, 47
    learnset MOVE_THRASH, 51
    learnset MOVE_REST, 55
    terminatelearnset


levelup SPECIES_VIKAVOLT_LARGE
    learnset MOVE_THUNDERBOLT, 0
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_DIG, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_BITE, 12
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_SPARK, 19
    learnset MOVE_ACROBATICS, 19
    learnset MOVE_STICKY_WEB, 29
    learnset MOVE_BUG_BUZZ, 33
    learnset MOVE_GUILLOTINE, 34
    learnset MOVE_DIG, 37
    learnset MOVE_FLY, 50
    learnset MOVE_AGILITY, 53
    learnset MOVE_ZAP_CANNON, 53
    terminatelearnset


levelup SPECIES_RIBOMBEE_LARGE
    learnset MOVE_POLLEN_PUFF, 0
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_COVET, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_SILVER_WIND, 13
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_STRUGGLE_BUG, 17
    learnset MOVE_SWEET_SCENT, 21
    learnset MOVE_AROMATHERAPY, 36
    learnset MOVE_SWITCHEROO, 40
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_QUIVER_DANCE, 57
    terminatelearnset


levelup SPECIES_ARAQUANID_LARGE
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SOAK, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_SPIDER_WEB, 1
    learnset MOVE_INFESTATION, 5
    learnset MOVE_SPIDER_WEB, 8
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_AQUA_RING, 20
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BITE, 21
    learnset MOVE_CRUNCH, 31
    learnset MOVE_SOAK, 32
    learnset MOVE_LUNGE, 44
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_ENTRAINMENT, 49
    learnset MOVE_LIQUIDATION, 53
    learnset MOVE_MIRROR_COAT, 56
    terminatelearnset


levelup SPECIES_LURANTIS_LARGE
    learnset MOVE_PETAL_BLIZZARD, 0
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_GROWTH, 14
    learnset MOVE_INGRAIN, 19
    learnset MOVE_SLASH, 28
    learnset MOVE_SWEET_SCENT, 29
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_SYNTHESIS, 32
    learnset MOVE_LEAF_BLADE, 34
    learnset MOVE_SUNNY_DAY, 52
    learnset MOVE_SOLAR_BLADE, 55
    terminatelearnset


levelup SPECIES_SALAZZLE_LARGE
    learnset MOVE_FIRE_LASH, 0
    learnset MOVE_CAPTIVATE, 0
    learnset MOVE_FIRE_LASH, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ENDEAVOR, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_CAPTIVATE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_DRAGON_RAGE, 13
    learnset MOVE_SWEET_SCENT, 14
    learnset MOVE_POISON_FANG, 15
    learnset MOVE_SMOG, 16
    learnset MOVE_DOUBLE_SLAP, 21
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_NASTY_PLOT, 28
    learnset MOVE_INCINERATE, 30
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_TOXIC, 48
    learnset MOVE_DRAGON_PULSE, 49
    learnset MOVE_VENOM_DRENCH, 51
    learnset MOVE_FLAMETHROWER, 51
    terminatelearnset


levelup SPECIES_TOGEDEMARU_LARGE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_CHARGE, 11
    learnset MOVE_THUNDER_SHOCK, 15
    learnset MOVE_SPARK, 21
    learnset MOVE_NUZZLE, 21
    learnset MOVE_MAGNET_RISE, 30
    learnset MOVE_FELL_STINGER, 35
    learnset MOVE_ZING_ZAP, 36
    learnset MOVE_PIN_MISSILE, 37
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_ELECTRIC_TERRAIN, 43
    learnset MOVE_WILD_CHARGE, 48
    learnset MOVE_SPIKY_SHIELD, 54
    terminatelearnset


levelup SPECIES_MIMIKYU_LARGE
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_MIMIC, 21
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_SLASH, 34
    learnset MOVE_HONE_CLAWS, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_PLAY_ROUGH, 50
    learnset MOVE_PAIN_SPLIT, 55
    terminatelearnset


levelup SPECIES_KOMMO_O_LARGE
    learnset MOVE_CLANGING_SCALES, 0
    learnset MOVE_CLANGING_SCALES, 1
    learnset MOVE_BELLY_DRUM, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_SKY_UPPERCUT, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BIDE, 9
    learnset MOVE_PROTECT, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_DRAGON_TAIL, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_WORK_UP, 24
    learnset MOVE_SCREECH, 28
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_DRAGON_CLAW, 37
    learnset MOVE_NOBLE_ROAR, 44
    learnset MOVE_DRAGON_DANCE, 51
    learnset MOVE_OUTRAGE, 59
    learnset MOVE_CLOSE_COMBAT, 67
    learnset MOVE_CLANGOROUS_SOUL, 68
    learnset MOVE_BOOMBURST, 76
    terminatelearnset


levelup SPECIES_MIMIKYU_BUSTED_LARGE
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_MIMIC, 21
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_SLASH, 34
    learnset MOVE_HONE_CLAWS, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_PLAY_ROUGH, 50
    learnset MOVE_PAIN_SPLIT, 55
    terminatelearnset


levelup SPECIES_MEOWTH_GALARIAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SCRATCH, 8
    learnset MOVE_FAKE_OUT, 9
    learnset MOVE_METAL_CLAW, 11
    learnset MOVE_PAY_DAY, 20
    learnset MOVE_TAUNT, 22
    learnset MOVE_FURY_SWIPES, 22
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_HONE_CLAWS, 25
    learnset MOVE_SCREECH, 25
    learnset MOVE_SWAGGER, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_METAL_SOUND, 39
    learnset MOVE_THRASH, 44
    learnset MOVE_CAPTIVATE, 46
    learnset MOVE_SLASH, 49
    terminatelearnset


levelup SPECIES_PONYTA_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_CONFUSION, 10
    learnset MOVE_FAIRY_WIND, 15
    learnset MOVE_AGILITY, 20
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_STOMP, 30
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_TAKE_DOWN, 41
    learnset MOVE_DAZZLING_GLEAM, 45
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_HEALING_WISH, 55
    terminatelearnset


levelup SPECIES_RAPIDASH_GALARIAN
    learnset MOVE_PSYCHO_CUT, 0
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FAIRY_WIND, 15
    learnset MOVE_AGILITY, 20
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_STOMP, 30
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_TAKE_DOWN, 43
    learnset MOVE_DAZZLING_GLEAM, 49
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_HEALING_WISH, 63
    terminatelearnset


levelup SPECIES_SLOWPOKE_GALARIAN
    learnset MOVE_CURSE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ACID, 6
    learnset MOVE_YAWN, 9
    learnset MOVE_CONFUSION, 12
    learnset MOVE_DISABLE, 15
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ZEN_HEADBUTT, 24
    learnset MOVE_AMNESIA, 27
    learnset MOVE_SURF, 30
    learnset MOVE_SLACK_OFF, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_PSYCH_UP, 39
    learnset MOVE_RAIN_DANCE, 42
    learnset MOVE_HEAL_PULSE, 45
    terminatelearnset


levelup SPECIES_SLOWBRO_GALARIAN
    learnset MOVE_SHELL_SIDE_ARM, 0
    learnset MOVE_SHELL_SIDE_ARM, 1
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_ACID, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_YAWN, 9
    learnset MOVE_CONFUSION, 12
    learnset MOVE_DISABLE, 15
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ZEN_HEADBUTT, 24
    learnset MOVE_AMNESIA, 27
    learnset MOVE_SURF, 30
    learnset MOVE_SLACK_OFF, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_PSYCH_UP, 39
    learnset MOVE_RAIN_DANCE, 42
    learnset MOVE_HEAL_PULSE, 45
    terminatelearnset


levelup SPECIES_FARFETCHD_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FURY_CUTTER, 10
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_BRUTAL_SWING, 20
    learnset MOVE_DETECT, 25
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_DEFOG, 35
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_SLAM, 50
    learnset MOVE_LEAF_BLADE, 55
    learnset MOVE_FINAL_GAMBIT, 60
    learnset MOVE_BRAVE_BIRD, 65
    terminatelearnset


levelup SPECIES_WEEZING_GALARIAN
    learnset MOVE_DOUBLE_HIT, 0
    learnset MOVE_STRANGE_STEAM, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_CLEAR_SMOG, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SLUDGE, 20
    learnset MOVE_FAIRY_WIND, 24
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_SLUDGE_BOMB, 32
    learnset MOVE_TOXIC, 38
    learnset MOVE_BELCH, 44
    learnset MOVE_EXPLOSION, 50
    learnset MOVE_MEMENTO, 56
    learnset MOVE_DESTINY_BOND, 62
    learnset MOVE_MISTY_TERRAIN, 68
    terminatelearnset


levelup SPECIES_MR_MIME_GALARIAN
    learnset MOVE_COPYCAT, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_POUND, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ALLY_SWITCH, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_DOUBLE_KICK, 24
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_FREEZE_DRY, 44
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_TEETER_DANCE, 52
    terminatelearnset


levelup SPECIES_ARTICUNO_GALARIAN
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_REFLECT, 10
    learnset MOVE_HYPNOSIS, 15
    learnset MOVE_AGILITY, 20
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_TAILWIND, 30
    learnset MOVE_PSYCHO_CUT, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_FREEZING_GLARE, 45
    learnset MOVE_DREAM_EATER, 50
    learnset MOVE_HURRICANE, 55
    learnset MOVE_MIND_READER, 60
    learnset MOVE_FUTURE_SIGHT, 65
    learnset MOVE_TRICK_ROOM, 70
    terminatelearnset


levelup SPECIES_ZAPDOS_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LIGHT_SCREEN, 10
    learnset MOVE_PLUCK, 15
    learnset MOVE_AGILITY, 20
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_QUICK_GUARD, 40
    learnset MOVE_THUNDEROUS_KICK, 45
    learnset MOVE_BULK_UP, 50
    learnset MOVE_COUNTER, 55
    learnset MOVE_DETECT, 60
    learnset MOVE_CLOSE_COMBAT, 65
    learnset MOVE_REVERSAL, 70
    terminatelearnset


levelup SPECIES_MOLTRES_GALARIAN
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PAYBACK, 5
    learnset MOVE_SAFEGUARD, 10
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_AGILITY, 20
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_AFTER_YOU, 40
    learnset MOVE_FIERY_WRATH, 45
    learnset MOVE_NASTY_PLOT, 50
    learnset MOVE_HURRICANE, 55
    learnset MOVE_ENDURE, 60
    learnset MOVE_MEMENTO, 65
    learnset MOVE_SKY_ATTACK, 70
    terminatelearnset


levelup SPECIES_SLOWKING_GALARIAN
    learnset MOVE_EERIE_SPELL, 0
    learnset MOVE_CHILLY_RECEPTION, 1
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_TOXIC, 1
    learnset MOVE_ACID, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_YAWN, 9
    learnset MOVE_CONFUSION, 12
    learnset MOVE_DISABLE, 15
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ZEN_HEADBUTT, 24
    learnset MOVE_AMNESIA, 27
    learnset MOVE_SURF, 30
    learnset MOVE_SLACK_OFF, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_PSYCH_UP, 39
    learnset MOVE_RAIN_DANCE, 42
    learnset MOVE_HEAL_PULSE, 45
    terminatelearnset


levelup SPECIES_CORSOLA_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_DISABLE, 10
    learnset MOVE_SPITE, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_HEX, 25
    learnset MOVE_CURSE, 30
    learnset MOVE_STRENGTH_SAP, 35
    learnset MOVE_POWER_GEM, 40
    learnset MOVE_NIGHT_SHADE, 45
    learnset MOVE_GRUDGE, 50
    learnset MOVE_MIRROR_COAT, 55
    terminatelearnset


levelup SPECIES_ZIGZAGOON_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 3
    learnset MOVE_LICK, 6
    learnset MOVE_SNARL, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BABY_DOLL_EYES, 15
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_REST, 21
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_SCARY_FACE, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_DOUBLE_EDGE, 36
    terminatelearnset


levelup SPECIES_LINOONE_GALARIAN
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SNARL, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_HONE_CLAWS, 15
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_REST, 23
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_SCARY_FACE, 33
    learnset MOVE_COUNTER, 38
    learnset MOVE_TAUNT, 43
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset


levelup SPECIES_DARUMAKA_GALARIAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAUNT, 4
    learnset MOVE_BITE, 8
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_WORK_UP, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ICE_PUNCH, 28
    learnset MOVE_UPROAR, 32
    learnset MOVE_BELLY_DRUM, 36
    learnset MOVE_BLIZZARD, 40
    learnset MOVE_THRASH, 44
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset


levelup SPECIES_DARMANITAN_GALARIAN
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_BITE, 1
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_WORK_UP, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ICE_PUNCH, 28
    learnset MOVE_UPROAR, 32
    learnset MOVE_BELLY_DRUM, 38
    learnset MOVE_BLIZZARD, 44
    learnset MOVE_THRASH, 50
    learnset MOVE_SUPERPOWER, 56
    terminatelearnset


levelup SPECIES_YAMASK_GALARIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 4
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_DISABLE, 12
    learnset MOVE_BRUTAL_SWING, 16
    learnset MOVE_CRAFTY_SHIELD, 20
    learnset MOVE_HEX, 24
    learnset MOVE_MEAN_LOOK, 28
    learnset MOVE_SLAM, 32
    learnset MOVE_CURSE, 36
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_POWER_SPLIT, 48
    learnset MOVE_GUARD_SPLIT, 48
    learnset MOVE_DESTINY_BOND, 52
    terminatelearnset


levelup SPECIES_STUNFISK_GALARIAN
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_ENDURE, 5
    learnset MOVE_MUD_SHOT, 10
    learnset MOVE_REVENGE, 15
    learnset MOVE_METAL_SOUND, 20
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_IRON_DEFENSE, 30
    learnset MOVE_BOUNCE, 35
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_SNAP_TRAP, 45
    learnset MOVE_FLAIL, 50
    learnset MOVE_FISSURE, 55
    terminatelearnset

levelup SPECIES_PIKACHU_COSPLAY
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_ROCK_STAR
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_BELLE
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_POP_STAR
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_PH_D
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_LIBRE
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_ORIGINAL_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_HOENN_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_SINNOH_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_UNOVA_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_KALOS_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_ALOLA_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_PARTNER_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_PIKACHU_WORLD_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_DOUBLE_TEAM, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_SPARK, 22
    learnset MOVE_NUZZLE, 29
    learnset MOVE_SLAM, 32
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_THUNDER, 50
    learnset MOVE_WILD_CHARGE, 50
    terminatelearnset


levelup SPECIES_CASTFORM_SUNNY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_HAIL, 20
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_HYDRO_PUMP, 35
    learnset MOVE_FIRE_BLAST, 35
    learnset MOVE_BLIZZARD, 35
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_CASTFORM_RAINY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_HAIL, 20
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_HYDRO_PUMP, 35
    learnset MOVE_FIRE_BLAST, 35
    learnset MOVE_BLIZZARD, 35
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_CASTFORM_SNOWY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_HAIL, 20
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_HYDRO_PUMP, 35
    learnset MOVE_FIRE_BLAST, 35
    learnset MOVE_BLIZZARD, 35
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_CHERRIM_SUNSHINE
    learnset MOVE_SUNNY_DAY, 0
    learnset MOVE_PETAL_DANCE, 0
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_GROWTH, 7
    learnset MOVE_HELPING_HAND, 14
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_LEECH_SEED, 19
    learnset MOVE_SUNNY_DAY, 22
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_WORRY_SEED, 39
    learnset MOVE_PETAL_BLIZZARD, 45
    learnset MOVE_LUCKY_CHANT, 48
    learnset MOVE_SOLAR_BEAM, 49
    learnset MOVE_PETAL_DANCE, 62
    terminatelearnset


levelup SPECIES_SHELLOS_EAST_SEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 2
    learnset MOVE_HARDEN, 4
    learnset MOVE_WATER_PULSE, 11
    learnset MOVE_MUD_BOMB, 11
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_RECOVER, 26
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_RAIN_DANCE, 31
    learnset MOVE_MUDDY_WATER, 33
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_MEMENTO, 45
    terminatelearnset


levelup SPECIES_GASTRODON_EAST_SEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_RECOVER, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_MUD_SPORT, 2
    learnset MOVE_HARDEN, 4
    learnset MOVE_WATER_PULSE, 11
    learnset MOVE_MUD_BOMB, 11
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_RAIN_DANCE, 34
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_EARTH_POWER, 39
    learnset MOVE_MEMENTO, 53
    learnset MOVE_RECOVER, 54
    terminatelearnset


levelup SPECIES_DIALGA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_FLASH_CANNON, 40
    learnset MOVE_AURA_SPHERE, 42
    learnset MOVE_METAL_BURST, 45
    learnset MOVE_EARTH_POWER, 53
    learnset MOVE_IRON_TAIL, 62
    learnset MOVE_ROAR_OF_TIME, 68
    terminatelearnset


levelup SPECIES_PALKIA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_WATER_PULSE, 6
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_AURA_SPHERE, 42
    learnset MOVE_AQUA_TAIL, 53
    learnset MOVE_EARTH_POWER, 53
    learnset MOVE_SPACIAL_REND, 64
    learnset MOVE_HYDRO_PUMP, 70
    terminatelearnset


levelup SPECIES_BASCULIN_BLUE_STRIPED
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_UPROAR, 3
    learnset MOVE_HEADBUTT, 5
    learnset MOVE_BITE, 7
    learnset MOVE_AQUA_JET, 9
    learnset MOVE_CHIP_AWAY, 11
    learnset MOVE_TAKE_DOWN, 14
    learnset MOVE_CRUNCH, 17
    learnset MOVE_AQUA_TAIL, 20
    learnset MOVE_SOAK, 23
    learnset MOVE_DOUBLE_EDGE, 26
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_FLAIL, 34
    learnset MOVE_FINAL_GAMBIT, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_HEAD_SMASH, 46
    terminatelearnset


levelup SPECIES_BASCULIN_WHITE_STRIPED
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FLAIL, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SOAK, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_UPROAR, 40
    learnset MOVE_WAVE_CRASH, 44
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 56
    terminatelearnset


levelup SPECIES_DARMANITAN_ZEN_MODE
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_INCINERATE, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_INCINERATE, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_FIRE_FANG, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SWAGGER, 17
    learnset MOVE_FACADE, 19
    learnset MOVE_FIRE_PUNCH, 22
    learnset MOVE_WORK_UP, 25
    learnset MOVE_THRASH, 27
    learnset MOVE_BELLY_DRUM, 30
    learnset MOVE_FLARE_BLITZ, 33
    learnset MOVE_TAUNT, 39
    learnset MOVE_SUPERPOWER, 47
    learnset MOVE_OVERHEAT, 54
    terminatelearnset


levelup SPECIES_DARMANITAN_ZEN_MODE_GALARIAN
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_INCINERATE, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_INCINERATE, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_FIRE_FANG, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SWAGGER, 17
    learnset MOVE_FACADE, 19
    learnset MOVE_FIRE_PUNCH, 22
    learnset MOVE_WORK_UP, 25
    learnset MOVE_THRASH, 27
    learnset MOVE_BELLY_DRUM, 30
    learnset MOVE_FLARE_BLITZ, 33
    learnset MOVE_TAUNT, 39
    learnset MOVE_SUPERPOWER, 47
    learnset MOVE_OVERHEAT, 54
    terminatelearnset


levelup SPECIES_DEERLING_SUMMER
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_SOLAR_BEAM, 51
    terminatelearnset


levelup SPECIES_DEERLING_AUTUMN
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_SOLAR_BEAM, 51
    terminatelearnset


levelup SPECIES_DEERLING_WINTER
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_SOLAR_BEAM, 51
    terminatelearnset


levelup SPECIES_SAWSBUCK_SUMMER
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 44
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset


levelup SPECIES_SAWSBUCK_AUTUMN
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 44
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset


levelup SPECIES_SAWSBUCK_WINTER
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 44
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset


levelup SPECIES_TORNADUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 15
    learnset MOVE_AIR_CUTTER, 20
    learnset MOVE_AGILITY, 25
    learnset MOVE_TAILWIND, 30
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_CRUNCH, 40
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_UPROAR, 50
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_RAIN_DANCE, 60
    learnset MOVE_HURRICANE, 65
    learnset MOVE_THRASH, 70
    learnset MOVE_BLEAKWIND_STORM, 77
    terminatelearnset


levelup SPECIES_THUNDURUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 15
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_AGILITY, 25
    learnset MOVE_CHARGE, 30
    learnset MOVE_VOLT_SWITCH, 35
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_UPROAR, 50
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_RAIN_DANCE, 60
    learnset MOVE_THUNDER, 65
    learnset MOVE_THRASH, 70
    learnset MOVE_WILDBOLT_STORM, 75
    terminatelearnset


levelup SPECIES_LANDORUS_THERIAN
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_SMACK_DOWN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BLOCK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_IMPRISON, 30
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_STONE_EDGE, 50
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_SANDSTORM, 60
    learnset MOVE_EARTHQUAKE, 65
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_FISSURE, 75
    learnset MOVE_SANDSEAR_STORM, 80
    terminatelearnset


levelup SPECIES_KYUREM_WHITE
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_DRAGON_DANCE, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_ICICLE_SPEAR, 1
	learnset MOVE_SLASH, 8
	learnset MOVE_ENDEAVOR, 14
	learnset MOVE_ICE_BEAM, 19
	learnset MOVE_DRAGON_PULSE, 24
	learnset MOVE_ICICLE_CRASH, 29
	learnset MOVE_HYPER_VOICE, 32
	learnset MOVE_SCARY_FACE, 35
	learnset MOVE_BLIZZARD, 38
	learnset MOVE_IMPRISON, 41
	learnset MOVE_OUTRAGE, 44
	learnset MOVE_GLACIATE, 47
	learnset MOVE_SHEER_COLD, 50
	learnset MOVE_ESPER_WING, 70
	learnset MOVE_FUSION_FLARE, 70
	learnset MOVE_ICE_BEAM, 70
	learnset MOVE_ICE_BURN, 70
    terminatelearnset


levelup SPECIES_KYUREM_BLACK
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_DRAGON_DANCE, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_ICICLE_SPEAR, 1
	learnset MOVE_SLASH, 8
	learnset MOVE_ENDEAVOR, 14
	learnset MOVE_ICE_BEAM, 19
	learnset MOVE_DRAGON_PULSE, 24
	learnset MOVE_ICICLE_CRASH, 29
	learnset MOVE_HYPER_VOICE, 32
	learnset MOVE_SCARY_FACE, 35
	learnset MOVE_BLIZZARD, 38
	learnset MOVE_IMPRISON, 41
	learnset MOVE_OUTRAGE, 44
	learnset MOVE_GLACIATE, 47
	learnset MOVE_SHEER_COLD, 50
	learnset MOVE_DRAGON_DANCE, 70
	learnset MOVE_FUSION_BOLT, 70
	learnset MOVE_ICICLE_CRASH, 70
	learnset MOVE_FREEZE_SHOCK, 70
    terminatelearnset


levelup SPECIES_KELDEO_RESOLUTE
    learnset MOVE_SECRET_SWORD, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_BUBBLE_BEAM, 1
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_RETALIATE, 29
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_QUICK_GUARD, 33
    learnset MOVE_AQUA_TAIL, 35
    learnset MOVE_SACRED_SWORD, 46
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_WORK_UP, 61
    learnset MOVE_HYDRO_PUMP, 64
    learnset MOVE_CLOSE_COMBAT, 71
    terminatelearnset


levelup SPECIES_MELOETTA_PIROUETTE
    learnset MOVE_ROUND, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SING, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CONFUSION, 11
    learnset MOVE_SING, 16
    learnset MOVE_TEETER_DANCE, 21
    learnset MOVE_ACROBATICS, 26
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_U_TURN, 43
    learnset MOVE_WAKE_UP_SLAP, 50
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_ROLE_PLAY, 71
    learnset MOVE_CLOSE_COMBAT, 78
    learnset MOVE_PERISH_SONG, 85
    terminatelearnset


levelup SPECIES_GENESECT_DOUSE_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_FLAME_CHARGE, 23
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_LOCK_ON, 46
    learnset MOVE_MAGNET_RISE, 49
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 68
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 84
    terminatelearnset


levelup SPECIES_GENESECT_SHOCK_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_FLAME_CHARGE, 23
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_LOCK_ON, 46
    learnset MOVE_MAGNET_RISE, 49
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 68
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 84
    terminatelearnset


levelup SPECIES_GENESECT_BURN_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_FLAME_CHARGE, 23
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_LOCK_ON, 46
    learnset MOVE_MAGNET_RISE, 49
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 68
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 84
    terminatelearnset


levelup SPECIES_GENESECT_CHILL_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_FLAME_CHARGE, 23
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_LOCK_ON, 46
    learnset MOVE_MAGNET_RISE, 49
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 68
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 84
    terminatelearnset


levelup SPECIES_GRENINJA_BATTLE_BOND
    learnset MOVE_WATER_SHURIKEN, 0
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_MAT_BLOCK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 19
    learnset MOVE_SHADOW_SNEAK, 23
    learnset MOVE_SPIKES, 28
    learnset MOVE_FEINT_ATTACK, 33
    learnset MOVE_SUBSTITUTE, 42
    learnset MOVE_EXTRASENSORY, 49
    learnset MOVE_DOUBLE_TEAM, 56
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_HAZE, 70
    learnset MOVE_NIGHT_SLASH, 77
    terminatelearnset


levelup SPECIES_GRENINJA_ASH
    learnset MOVE_WATER_SHURIKEN, 0
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_MAT_BLOCK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 19
    learnset MOVE_SHADOW_SNEAK, 23
    learnset MOVE_SPIKES, 28
    learnset MOVE_FEINT_ATTACK, 33
    learnset MOVE_SUBSTITUTE, 42
    learnset MOVE_EXTRASENSORY, 49
    learnset MOVE_DOUBLE_TEAM, 56
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_HAZE, 70
    learnset MOVE_NIGHT_SLASH, 77
    terminatelearnset


levelup SPECIES_VIVILLON_POLAR
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_TUNDRA
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_CONTINENTAL
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_GARDEN
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_ELEGANT
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_MEADOW
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_MODERN
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_MARINE
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_ARCHIPELAGO
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_HIGH_PLAINS
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_SANDSTORM
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_RIVER
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_MONSOON
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_SAVANNA
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_SUN
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_OCEAN
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_JUNGLE
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_FANCY
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_VIVILLON_POKE_BALL
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_AROMATHERAPY, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_SAFEGUARD, 41
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_HURRICANE, 50
    learnset MOVE_POWDER, 55
    terminatelearnset


levelup SPECIES_FLABEBE_YELLOW_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_GRASSY_TERRAIN, 24
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_MISTY_TERRAIN, 37
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_PETAL_DANCE, 45
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset


levelup SPECIES_FLABEBE_ORANGE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_GRASSY_TERRAIN, 24
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_MISTY_TERRAIN, 37
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_PETAL_DANCE, 45
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset


levelup SPECIES_FLABEBE_BLUE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_GRASSY_TERRAIN, 24
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_MISTY_TERRAIN, 37
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_PETAL_DANCE, 45
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset


levelup SPECIES_FLABEBE_WHITE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_GRASSY_TERRAIN, 24
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_MISTY_TERRAIN, 37
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_PETAL_DANCE, 45
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset


levelup SPECIES_FLOETTE_YELLOW_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_GRASSY_TERRAIN, 27
    learnset MOVE_PETAL_BLIZZARD, 33
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_MISTY_TERRAIN, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_FLOETTE_ORANGE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_GRASSY_TERRAIN, 27
    learnset MOVE_PETAL_BLIZZARD, 33
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_MISTY_TERRAIN, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_FLOETTE_BLUE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_GRASSY_TERRAIN, 27
    learnset MOVE_PETAL_BLIZZARD, 33
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_MISTY_TERRAIN, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_FLOETTE_WHITE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_GRASSY_TERRAIN, 27
    learnset MOVE_PETAL_BLIZZARD, 33
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_MISTY_TERRAIN, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_FLOETTE_ETERNAL_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_GRASSY_TERRAIN, 27
    learnset MOVE_PETAL_BLIZZARD, 33
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_MISTY_TERRAIN, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_LIGHT_OF_RUIN, 50
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_SOLAR_BEAM, 58
    terminatelearnset


levelup SPECIES_FLORGES_YELLOW_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 1
    learnset MOVE_WISH, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_AROMATHERAPY, 1
    terminatelearnset


levelup SPECIES_FLORGES_ORANGE_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 1
    learnset MOVE_WISH, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_AROMATHERAPY, 1
    terminatelearnset


levelup SPECIES_FLORGES_BLUE_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 1
    learnset MOVE_WISH, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_AROMATHERAPY, 1
    terminatelearnset


levelup SPECIES_FLORGES_WHITE_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 1
    learnset MOVE_WISH, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_AROMATHERAPY, 1
    terminatelearnset


levelup SPECIES_FURFROU_HEART
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_STAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_DIAMOND
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_DEBUTANTE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_MATRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_DANDY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_LA_REINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_KABUKI
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_FURFROU_PHARAOH
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_ODOR_SLEUTH, 27
    learnset MOVE_RETALIATE, 33
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_COTTON_GUARD, 48
    terminatelearnset


levelup SPECIES_AEGISLASH_BLADE
    learnset MOVE_KINGS_SHIELD, 0
    learnset MOVE_KINGS_SHIELD, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_METAL_SOUND, 1
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_POWER_TRICK, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_PURSUIT, 1
    terminatelearnset


levelup SPECIES_PUMPKABOO_SMALL
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    terminatelearnset


levelup SPECIES_PUMPKABOO_LARGE
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    terminatelearnset


levelup SPECIES_PUMPKABOO_SUPER
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    terminatelearnset


levelup SPECIES_GOURGEIST_SMALL
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    learnset MOVE_PHANTOM_FORCE, 52
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_GOURGEIST_LARGE
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    learnset MOVE_PHANTOM_FORCE, 52
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_GOURGEIST_SUPER
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_TRICK_OR_TREAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCARY_FACE, 14
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_TRICK_OR_TREAT, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_TRICK, 40
    learnset MOVE_PAIN_SPLIT, 43
    learnset MOVE_PHANTOM_FORCE, 52
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_XERNEAS_ACTIVE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_AROMATHERAPY, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_LIGHT_SCREEN, 5
    learnset MOVE_AURORA_BEAM, 10
    learnset MOVE_GRAVITY, 18
    learnset MOVE_AROMATHERAPY, 25
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_GEOMANCY, 41
    learnset MOVE_PSYCH_UP, 43
    learnset MOVE_HORN_LEECH, 44
    learnset MOVE_INGRAIN, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_MISTY_TERRAIN, 50
    learnset MOVE_TAKE_DOWN, 50
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_HEAL_PULSE, 65
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_GIGA_IMPACT, 86
    terminatelearnset


levelup SPECIES_ZYGARDE_10
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 1
    learnset MOVE_CORE_ENFORCER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 24
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 84
    terminatelearnset


levelup SPECIES_ZYGARDE_10_POWER_CONSTRUCT
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 1
    learnset MOVE_CORE_ENFORCER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 24
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 84
    terminatelearnset


levelup SPECIES_ZYGARDE_50_POWER_CONSTRUCT
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 1
    learnset MOVE_CORE_ENFORCER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 24
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 84
    terminatelearnset


levelup SPECIES_ZYGARDE_10_COMPLETE
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 1
    learnset MOVE_CORE_ENFORCER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 24
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 84
    terminatelearnset


levelup SPECIES_ZYGARDE_50_COMPLETE
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 1
    learnset MOVE_CORE_ENFORCER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 24
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 84
    terminatelearnset


levelup SPECIES_HOOPA_UNBOUND
    learnset MOVE_HYPERSPACE_FURY, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_ALLY_SWITCH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_MAGIC_COAT, 10
    learnset MOVE_LIGHT_SCREEN, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SKILL_SWAP, 25
    learnset MOVE_POWER_SPLIT, 29
    learnset MOVE_GUARD_SPLIT, 29
    learnset MOVE_PHANTOM_FORCE, 35
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_WONDER_ROOM, 50
    learnset MOVE_TRICK_ROOM, 50
    learnset MOVE_SHADOW_BALL, 55
    learnset MOVE_NASTY_PLOT, 68
    learnset MOVE_PSYCHIC, 75
    learnset MOVE_HYPERSPACE_FURY, 85
    terminatelearnset


levelup SPECIES_ORICORIO_POM_POM
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_DOUBLE_SLAP, 23
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_ROOST, 30
    learnset MOVE_CAPTIVATE, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_MIRROR_MOVE, 43
    learnset MOVE_AGILITY, 46
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ORICORIO_PAU
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_DOUBLE_SLAP, 23
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_ROOST, 30
    learnset MOVE_CAPTIVATE, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_MIRROR_MOVE, 43
    learnset MOVE_AGILITY, 46
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ORICORIO_SENSU
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_DOUBLE_SLAP, 23
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_ROOST, 30
    learnset MOVE_CAPTIVATE, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_MIRROR_MOVE, 43
    learnset MOVE_AGILITY, 46
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ROCKRUFF_OWN_TEMPO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_BITE, 13
    learnset MOVE_HOWL, 14
    learnset MOVE_ODOR_SLEUTH, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_ROAR, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_CRUNCH, 37
    learnset MOVE_STEALTH_ROCK, 37
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset


levelup SPECIES_LYCANROC_MIDNIGHT
    learnset MOVE_COUNTER, 0
    learnset MOVE_COUNTER, 1
    learnset MOVE_ENDURE, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_BITE, 13
    learnset MOVE_HOWL, 14
    learnset MOVE_ODOR_SLEUTH, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_ROAR, 28
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_CRUNCH, 41
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_STEALTH_ROCK, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 54
    terminatelearnset


levelup SPECIES_LYCANROC_DUSK
    learnset MOVE_CRUSH_CLAW, 0
    learnset MOVE_THRASH, 0
    learnset MOVE_CRUSH_CLAW, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_ACCELEROCK, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_ENDURE, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_THRASH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_BITE, 13
    learnset MOVE_HOWL, 14
    learnset MOVE_ODOR_SLEUTH, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_ROAR, 28
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_CRUNCH, 41
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_STEALTH_ROCK, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 54
    terminatelearnset


levelup SPECIES_WISHIWASHI_SCHOOL
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_BRINE, 12
    learnset MOVE_TEARFUL_LOOK, 18
    learnset MOVE_BEAT_UP, 19
    learnset MOVE_DIVE, 24
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_UPROAR, 28
    learnset MOVE_SOAK, 34
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_ENDEAVOR, 44
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_ORANGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_YELLOW
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_GREEN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_BLUE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_INDIGO
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_VIOLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_RED
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_ORANGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_YELLOW
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_GREEN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_BLUE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_INDIGO
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_VIOLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_SELF_DESTRUCT, 22
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_COSMIC_POWER, 36
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MIMIKYU_BUSTED
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_MIMIC, 21
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_SLASH, 34
    learnset MOVE_HONE_CLAWS, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_PLAY_ROUGH, 50
    learnset MOVE_PAIN_SPLIT, 55
    terminatelearnset


levelup SPECIES_NECROZMA_DUSK_MANE
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MIRROR_SHOT, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_GRAVITY, 31
    learnset MOVE_PSYCHO_CUT, 34
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_PHOTON_GEYSER, 61
    learnset MOVE_AUTOTOMIZE, 64
    learnset MOVE_WRING_OUT, 67
    learnset MOVE_PRISMATIC_LASER, 81
    terminatelearnset


levelup SPECIES_NECROZMA_DAWN_WINGS
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MIRROR_SHOT, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_GRAVITY, 31
    learnset MOVE_PSYCHO_CUT, 34
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_PHOTON_GEYSER, 61
    learnset MOVE_AUTOTOMIZE, 64
    learnset MOVE_WRING_OUT, 67
    learnset MOVE_PRISMATIC_LASER, 81
    terminatelearnset


levelup SPECIES_NECROZMA_ULTRA_DUSK_MANE
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MIRROR_SHOT, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_GRAVITY, 31
    learnset MOVE_PSYCHO_CUT, 34
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_PHOTON_GEYSER, 61
    learnset MOVE_AUTOTOMIZE, 64
    learnset MOVE_WRING_OUT, 67
    learnset MOVE_PRISMATIC_LASER, 81
    terminatelearnset


levelup SPECIES_NECROZMA_ULTRA_DAWN_WINGS
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MIRROR_SHOT, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_GRAVITY, 31
    learnset MOVE_PSYCHO_CUT, 34
    learnset MOVE_ROCK_BLAST, 34
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_PHOTON_GEYSER, 61
    learnset MOVE_AUTOTOMIZE, 64
    learnset MOVE_WRING_OUT, 67
    learnset MOVE_PRISMATIC_LASER, 81
    terminatelearnset


levelup SPECIES_MAGEARNA_ORIGINAL
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_CRAFTY_SHIELD, 1
    learnset MOVE_GEAR_UP, 1
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_DEFENSE_CURL, 6
    learnset MOVE_LUCKY_CHANT, 9
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_GEAR_UP, 24
    learnset MOVE_MIRROR_SHOT, 25
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_MIND_READER, 37
    learnset MOVE_SHIFT_GEAR, 48
    learnset MOVE_CRAFTY_SHIELD, 54
    learnset MOVE_FLASH_CANNON, 57
    learnset MOVE_IRON_HEAD, 60
    learnset MOVE_FLEUR_CANNON, 70
    learnset MOVE_PAIN_SPLIT, 71
    learnset MOVE_AURA_SPHERE, 73
    learnset MOVE_SYNCHRONOISE, 73
    learnset MOVE_ZAP_CANNON, 84
    learnset MOVE_HEART_SWAP, 89
    learnset MOVE_TRUMP_CARD, 97
    terminatelearnset

levelup SPECIES_PIKACHU_PARTNER
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_DOUBLE_TEAM, 12
    learnset MOVE_THUNDER_WAVE, 15
    learnset MOVE_LIGHT_SCREEN, 18
    learnset MOVE_THUNDERBOLT, 21
    learnset MOVE_SLAM, 24
    learnset MOVE_AGILITY, 27
    learnset MOVE_THUNDER, 30
    terminatelearnset

levelup SPECIES_EEVEE_PARTNER
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_BITE, 17
    learnset MOVE_SWIFT, 21
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_HELPING_HAND, 31
    terminatelearnset

levelup SPECIES_CRAMORANT_GULPING
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SPIT_UP, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_PLUCK, 21
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_AMNESIA, 42
    learnset MOVE_THRASH, 49
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_CRAMORANT_GORGING
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SPIT_UP, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_PLUCK, 21
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_AMNESIA, 42
    learnset MOVE_THRASH, 49
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_TOXTRICITY_LOW_KEY
    learnset MOVE_SPARK, 1
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_ACID, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_LEER, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_CHARGE, 4
    learnset MOVE_SHOCK_WAVE, 8
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_VENOM_DRENCH, 20
    learnset MOVE_SCREECH, 24
    learnset MOVE_SWAGGER, 28
    learnset MOVE_TOXIC, 32
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_OVERDRIVE, 44
    learnset MOVE_BOOMBURST, 48
    learnset MOVE_MAGNETIC_FLUX, 52
    terminatelearnset


levelup SPECIES_SINISTEA_ANTIQUE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_AROMATIC_MIST, 6
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_PROTECT, 18
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_NASTY_PLOT, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_SHELL_SMASH, 60
    terminatelearnset


levelup SPECIES_POLTEAGEIST_ANTIQUE
    learnset MOVE_TEATIME, 1
    learnset MOVE_STRENGTH_SAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_PROTECT, 18
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_NASTY_PLOT, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_SHELL_SMASH, 60
    learnset MOVE_CURSE, 66
    terminatelearnset


levelup SPECIES_ALCREMIE_BERRY_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_LOVE_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_STAR_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_CLOVER_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_FLOWER_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_RIBBON_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_FILLER_1
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_FILLER_2
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 25
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_ENTRAINMENT, 50
    terminatelearnset


levelup SPECIES_EISCUE_NOICE_FACE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MIST, 6
    learnset MOVE_WEATHER_BALL, 12
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_AMNESIA, 30
    learnset MOVE_FREEZE_DRY, 36
    learnset MOVE_HAIL, 42
    learnset MOVE_AURORA_VEIL, 48
    learnset MOVE_SURF, 54
    learnset MOVE_BLIZZARD, 60
    terminatelearnset


levelup SPECIES_MORPEKO_HANGRY
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_POWER_TRIP, 10
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_FLATTER, 20
    learnset MOVE_BITE, 25
    learnset MOVE_SPARK, 30
    learnset MOVE_TORMENT, 35
    learnset MOVE_AGILITY, 40
    learnset MOVE_BULLET_SEED, 45
    learnset MOVE_CRUNCH, 50
    learnset MOVE_AURA_WHEEL, 55
    learnset MOVE_THRASH, 60
    terminatelearnset


levelup SPECIES_ZACIAN_CROWNED
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_SWORDS_DANCE, 22
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_CRUNCH, 55
    learnset MOVE_MOONBLAST, 66
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    terminatelearnset


levelup SPECIES_ZAMAZENTA_CROWNED
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_IRON_DEFENSE, 22
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_CRUNCH, 55
    learnset MOVE_MOONBLAST, 66
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    terminatelearnset


levelup SPECIES_ETERNATUS_ETERNAMAX
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_TOXIC, 8
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_DRAGON_DANCE, 24
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_DYNAMAX_CANNON, 56
    learnset MOVE_COSMIC_POWER, 64
    learnset MOVE_RECOVER, 72
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_ETERNABEAM, 88
    terminatelearnset


levelup SPECIES_URSHIFU_RAPID_STRIKE
    learnset MOVE_SURGING_STRIKES, 0
    learnset MOVE_SURGING_STRIKES, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ENDURE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_DETECT, 28
    learnset MOVE_BULK_UP, 32
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_DYNAMIC_PUNCH, 40
    learnset MOVE_COUNTER, 44
    learnset MOVE_CLOSE_COMBAT, 48
    learnset MOVE_FOCUS_PUNCH, 52
    terminatelearnset


levelup SPECIES_ZARUDE_DADA
    learnset MOVE_BIND, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 6
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_GROWTH, 18
    learnset MOVE_FURY_SWIPES, 24
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_GRASS_KNOT, 36
    learnset MOVE_BITE, 42
    learnset MOVE_U_TURN, 48
    learnset MOVE_SWAGGER, 54
    learnset MOVE_ENERGY_BALL, 60
    learnset MOVE_SYNTHESIS, 66
    learnset MOVE_HAMMER_ARM, 72
    learnset MOVE_THRASH, 78
    learnset MOVE_POWER_WHIP, 84
    learnset MOVE_JUNGLE_HEALING, 90
    terminatelearnset


levelup SPECIES_CALYREX_ICE_RIDER
    learnset MOVE_GLACIAL_LANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_AVALANCHE, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_MIST, 1
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_THRASH, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_LEECH_SEED, 64
    learnset MOVE_HEAL_PULSE, 72
    learnset MOVE_SOLAR_BEAM, 80
    learnset MOVE_FUTURE_SIGHT, 88
    terminatelearnset


levelup SPECIES_CALYREX_SHADOW_RIDER
    learnset MOVE_ASTRAL_BARRAGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HEX, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_SHADOW_BALL, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_THRASH, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_LEECH_SEED, 64
    learnset MOVE_HEAL_PULSE, 72
    learnset MOVE_SOLAR_BEAM, 80
    learnset MOVE_FUTURE_SIGHT, 88
    terminatelearnset


levelup SPECIES_ENAMORUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_TORMENT, 5
    learnset MOVE_FLATTER, 10
    learnset MOVE_TWISTER, 15
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_IRON_DEFENSE, 25
    learnset MOVE_IMPRISON, 30
    learnset MOVE_MYSTICAL_FIRE, 35
    learnset MOVE_DAZZLING_GLEAM, 40
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_UPROAR, 50
    learnset MOVE_SUPERPOWER, 55
    learnset MOVE_HEALING_WISH, 60
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_SPRINGTIDE_STORM, 75
    terminatelearnset


levelup SPECIES_GROWLITHE_HISUIAN
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HOWL, 4
    learnset MOVE_BITE, 8
    learnset MOVE_FLAME_WHEEL, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_RETALIATE, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_ROAR, 44
    learnset MOVE_ROCK_SLIDE, 48
    learnset MOVE_REVERSAL, 52
    learnset MOVE_FLARE_BLITZ, 56
    terminatelearnset


levelup SPECIES_ARCANINE_HISUIAN
    learnset MOVE_EXTREME_SPEED, 0
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_BITE, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_FLAMETHROWER, 5
	learnset MOVE_RAGING_FURY, 64
    terminatelearnset


levelup SPECIES_VOLTORB_HISUIAN
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_BULLET_SEED, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_SCREECH, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ENERGY_BALL, 29
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_EXPLOSION, 41
    learnset MOVE_GYRO_BALL, 46
    learnset MOVE_GRASSY_TERRAIN, 50
    terminatelearnset


levelup SPECIES_ELECTRODE_HISUIAN
    learnset MOVE_CHLOROBLAST, 0
    learnset MOVE_CHLOROBLAST, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_BULLET_SEED, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_SCREECH, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ENERGY_BALL, 29
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_EXPLOSION, 41
    learnset MOVE_GYRO_BALL, 46
    learnset MOVE_GRASSY_TERRAIN, 50
    terminatelearnset


levelup SPECIES_TYPHLOSION_HISUIAN
    learnset MOVE_INFERNAL_PARADE, 0
    learnset MOVE_INFERNAL_PARADE, 1
    learnset MOVE_ERUPTION, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 24
    learnset MOVE_SWIFT, 31
    learnset MOVE_FLAME_CHARGE, 35
    learnset MOVE_LAVA_PLUME, 43
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_INFERNO, 56
    learnset MOVE_ROLLOUT, 61
    learnset MOVE_OVERHEAT, 74
    terminatelearnset


levelup SPECIES_QWILFISH_HISUIAN
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_BITE, 8
    learnset MOVE_FELL_STINGER, 12
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_SPIKES, 20
    learnset MOVE_BRINE, 24
    learnset MOVE_BARB_BARRAGE, 28
    learnset MOVE_PIN_MISSILE, 32
    learnset MOVE_TOXIC_SPIKES, 36
    learnset MOVE_SPIT_UP, 40
    learnset MOVE_STOCKPILE, 40
    learnset MOVE_TOXIC, 44
    learnset MOVE_CRUNCH, 48
    learnset MOVE_ACUPRESSURE, 52
    learnset MOVE_DESTINY_BOND, 56
    terminatelearnset


levelup SPECIES_SNEASEL_HISUIAN
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAUNT, 6
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_POISON_JAB, 24
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_HONE_CLAWS, 36
    learnset MOVE_SLASH, 42
    learnset MOVE_AGILITY, 48
    learnset MOVE_SCREECH, 54
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_SAMUROTT_HISUIAN
    learnset MOVE_CEASELESS_EDGE, 0
    learnset MOVE_CEASELESS_EDGE, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_SLASH, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_RAZOR_SHELL, 18
    learnset MOVE_FURY_CUTTER, 21
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_AERIAL_ACE, 29
    learnset MOVE_AQUA_JET, 34
    learnset MOVE_ENCORE, 39
    learnset MOVE_AQUA_TAIL, 46
    learnset MOVE_RETALIATE, 51
    learnset MOVE_SWORDS_DANCE, 58
    learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_LILLIGANT_HISUIAN
    learnset MOVE_VICTORY_DANCE, 0
    learnset MOVE_VICTORY_DANCE, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_LEAF_BLADE, 1
    learnset MOVE_MEGA_KICK, 1
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ENTRAINMENT, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_AXE_KICK, 5
    terminatelearnset


levelup SPECIES_ZORUA_HISUIAN
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TORMENT, 4
    learnset MOVE_HONE_CLAWS, 8
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_CURSE, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_SPITE, 28
    learnset MOVE_AGILITY, 32
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_BITTER_MALICE, 40
    learnset MOVE_NASTY_PLOT, 44
    learnset MOVE_FOUL_PLAY, 48
    terminatelearnset


levelup SPECIES_ZOROARK_HISUIAN
    learnset MOVE_SHADOW_CLAW, 0
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_CURSE, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_SPITE, 28
    learnset MOVE_AGILITY, 34
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_BITTER_MALICE, 46
    learnset MOVE_NASTY_PLOT, 52
    learnset MOVE_FOUL_PLAY, 58
    terminatelearnset


levelup SPECIES_BRAVIARY_HISUIAN
    learnset MOVE_ESPER_WING, 0
    learnset MOVE_ESPER_WING, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PECK, 1
    learnset MOVE_SKY_ATTACK, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_TAILWIND, 18
    learnset MOVE_SCARY_FACE, 24
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_SLASH, 36
    learnset MOVE_WHIRLWIND, 42
    learnset MOVE_CRUSH_CLAW, 48
    learnset MOVE_AIR_SLASH, 57
    learnset MOVE_DEFOG, 64
    learnset MOVE_THRASH, 72
    learnset MOVE_HURRICANE, 80
    terminatelearnset


levelup SPECIES_SLIGGOO_HISUIAN
    learnset MOVE_SHELTER, 0
    learnset MOVE_SHELTER, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID_ARMOR, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PROTECT, 15
    learnset MOVE_FLAIL, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_RAIN_DANCE, 30
    learnset MOVE_DRAGON_PULSE, 35
    learnset MOVE_CURSE, 43
    learnset MOVE_IRON_HEAD, 49
    learnset MOVE_MUDDY_WATER, 56
    terminatelearnset


levelup SPECIES_GOODRA_HISUIAN
    learnset MOVE_IRON_TAIL, 0
    learnset MOVE_IRON_TAIL, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_SHELTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PROTECT, 15
    learnset MOVE_FLAIL, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_RAIN_DANCE, 30
    learnset MOVE_DRAGON_PULSE, 35
    learnset MOVE_CURSE, 43
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_IRON_HEAD, 49
    learnset MOVE_MUDDY_WATER, 58
    learnset MOVE_HEAVY_SLAM, 67
    terminatelearnset


levelup SPECIES_AVALUGG_HISUIAN
    learnset MOVE_ROCK_SLIDE, 0
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_CURSE, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_PROTECT, 15
    learnset MOVE_AVALANCHE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_RECOVER, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_BLIZZARD, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_MOUNTAIN_GALE, 61
    terminatelearnset


levelup SPECIES_DECIDUEYE_HISUIAN
    learnset MOVE_TRIPLE_ARROWS, 0
    learnset MOVE_TRIPLE_ARROWS, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_PECK, 9
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_PLUCK, 25
    learnset MOVE_BULK_UP, 30
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_LEAF_BLADE, 44
    learnset MOVE_FEATHER_DANCE, 51
    learnset MOVE_BRAVE_BIRD, 58
    terminatelearnset


levelup SPECIES_KLEAVOR_LORD
    learnset MOVE_STONE_AXE, 0
    learnset MOVE_STONE_AXE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_FALSE_SWIPE, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_DOUBLE_HIT, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_AGILITY, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_SWORDS_DANCE, 44
    terminatelearnset


levelup SPECIES_LILLIGANT_LADY
    learnset MOVE_VICTORY_DANCE, 0
    learnset MOVE_VICTORY_DANCE, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_LEAF_BLADE, 1
    learnset MOVE_MEGA_KICK, 1
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ENTRAINMENT, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_AXE_KICK, 5
    terminatelearnset


levelup SPECIES_ARCANINE_LORD
    learnset MOVE_EXTREME_SPEED, 0
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_BITE, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_FLAMETHROWER, 5
    learnset MOVE_RAGING_FURY, 64
    terminatelearnset


levelup SPECIES_ELECTRODE_LORD
    learnset MOVE_CHLOROBLAST, 0
    learnset MOVE_CHLOROBLAST, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_BULLET_SEED, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_SCREECH, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ENERGY_BALL, 29
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_EXPLOSION, 41
    learnset MOVE_GYRO_BALL, 46
    learnset MOVE_GRASSY_TERRAIN, 50
    terminatelearnset


levelup SPECIES_AVALUGG_LORD
    learnset MOVE_ROCK_SLIDE, 0
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_CURSE, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_PROTECT, 15
    learnset MOVE_AVALANCHE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_RECOVER, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_BLIZZARD, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_MOUNTAIN_GALE, 61
    terminatelearnset


levelup SPECIES_UNFEZANT_FEMALE
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_AIR_CUTTER, 15
    learnset MOVE_TAUNT, 19
    learnset MOVE_DETECT, 29
    learnset MOVE_SWAGGER, 33
    learnset MOVE_FEATHER_DANCE, 34
    learnset MOVE_ROOST, 35
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_RAZOR_WIND, 38
    learnset MOVE_FACADE, 55
    learnset MOVE_TAILWIND, 58
    learnset MOVE_SKY_ATTACK, 66
    terminatelearnset


levelup SPECIES_FRILLISH_FEMALE
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_ABSORB, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_RECOVER, 22
    learnset MOVE_RAIN_DANCE, 25
    learnset MOVE_BRINE, 27
    learnset MOVE_OMINOUS_WIND, 27
    learnset MOVE_HEX, 30
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_WHIRLPOOL, 36
    learnset MOVE_HYDRO_PUMP, 44
    learnset MOVE_DESTINY_BOND, 44
    learnset MOVE_WATER_SPOUT, 54
    learnset MOVE_WRING_OUT, 55
    terminatelearnset


levelup SPECIES_JELLICENT_FEMALE
    learnset MOVE_ACID_ARMOR, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_WATER_SPOUT, 1
    learnset MOVE_WRING_OUT, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_NIGHT_SHADE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_RECOVER, 22
    learnset MOVE_RAIN_DANCE, 25
    learnset MOVE_BRINE, 27
    learnset MOVE_OMINOUS_WIND, 27
    learnset MOVE_HEX, 31
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_WHIRLPOOL, 36
    learnset MOVE_HYDRO_PUMP, 47
    learnset MOVE_DESTINY_BOND, 48
    learnset MOVE_WATER_SPOUT, 61
    learnset MOVE_WRING_OUT, 61
    terminatelearnset


levelup SPECIES_PYROAR_FEMALE
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WORK_UP, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 15
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_ECHOED_VOICE, 33
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_INCINERATE, 51
    learnset MOVE_OVERHEAT, 57
    terminatelearnset


levelup SPECIES_MEOWSTIC_FEMALE
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_ME_FIRST, 1
    learnset MOVE_COVET, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_COVET, 11
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_CHARGE_BEAM, 21
    learnset MOVE_DISARMING_VOICE, 22
    learnset MOVE_LIGHT_SCREEN, 24
    learnset MOVE_STORED_POWER, 31
    learnset MOVE_PSYSHOCK, 32
    learnset MOVE_REFLECT, 34
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_ROLE_PLAY, 35
    learnset MOVE_EXTRASENSORY, 39
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_SIGNAL_BEAM, 45
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_FUTURE_SIGHT, 54
    terminatelearnset


levelup SPECIES_INDEEDEE_FEMALE
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_BATON_PASS, 5
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_FOLLOW_ME, 25
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_CALM_MIND, 40
    learnset MOVE_GUARD_SPLIT, 45
    learnset MOVE_PSYCHIC_TERRAIN, 50
    learnset MOVE_HEALING_WISH, 55
    terminatelearnset


levelup SPECIES_BASCULEGION_FEMALE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_SHADOW_BALL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FLAIL, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SOAK, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_UPROAR, 40
    learnset MOVE_WAVE_CRASH, 44
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 56
    terminatelearnset

levelup SPECIES_MAUSHOLD_FAMILY_OF_THREE
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_POUND, 1
    learnset MOVE_TIDY_UP, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_SUPER_FANG, 11
    learnset MOVE_DOUBLE_HIT, 14
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_ENCORE, 22
    learnset MOVE_PLAY_ROUGH, 29
    learnset MOVE_HYPER_VOICE, 33
    learnset MOVE_CHARM, 37
    learnset MOVE_BEAT_UP, 41
    learnset MOVE_COPYCAT, 46
    learnset MOVE_POPULATION_BOMB, 53
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_BLUE_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_FURY_ATTACK, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_COPYCAT, 27
    learnset MOVE_FLY, 30
    learnset MOVE_FACADE, 34
    learnset MOVE_SWAGGER, 38
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 47
    learnset MOVE_REVERSAL, 52
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_FURY_ATTACK, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_COPYCAT, 27
    learnset MOVE_FLY, 30
    learnset MOVE_FACADE, 34
    learnset MOVE_SWAGGER, 38
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 47
    learnset MOVE_REVERSAL, 52
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_WHITE_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_FURY_ATTACK, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_COPYCAT, 27
    learnset MOVE_FLY, 30
    learnset MOVE_FACADE, 34
    learnset MOVE_SWAGGER, 38
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 47
    learnset MOVE_REVERSAL, 52
    terminatelearnset

levelup SPECIES_PALAFIN_HERO
    learnset MOVE_JET_PUNCH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_CHARM, 25
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_ENCORE, 34
    learnset MOVE_AQUA_TAIL, 39
    learnset MOVE_MIST, 44
    learnset MOVE_HYDRO_PUMP, 50
    learnset MOVE_FOCUS_PUNCH, 55
    learnset MOVE_WAVE_CRASH, 61
    terminatelearnset

levelup SPECIES_TATSUGIRI_DROOPY
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_SOAK, 23
    learnset MOVE_TAUNT, 28
    learnset MOVE_MEMENTO, 34
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_NASTY_PLOT, 43
    learnset MOVE_MIRROR_COAT, 47
    learnset MOVE_DRAGON_PULSE, 52
    terminatelearnset

levelup SPECIES_TATSUGIRI_STRETCHY
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_SOAK, 23
    learnset MOVE_TAUNT, 28
    learnset MOVE_MEMENTO, 34
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_NASTY_PLOT, 43
    learnset MOVE_MIRROR_COAT, 47
    learnset MOVE_DRAGON_PULSE, 52
    terminatelearnset

levelup SPECIES_DUDUNSPARCE_THREE_SEGMENT
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_GLARE, 12
    learnset MOVE_SCREECH, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_DRILL_RUN, 24
    learnset MOVE_YAWN, 28
    learnset MOVE_HYPER_DRILL, 32
    learnset MOVE_ROOST, 36
    learnset MOVE_DRAGON_RUSH, 40
    learnset MOVE_COIL, 44
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_HURRICANE, 56
    learnset MOVE_BOOMBURST, 62
    terminatelearnset

levelup SPECIES_GIMMIGHOUL_ROAMING
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_WOOPER_PALDEAN
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_POISON_TAIL, 8
    learnset MOVE_TOXIC_SPIKES, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_YAWN, 21
    learnset MOVE_POISON_JAB, 24
    learnset MOVE_SLUDGE_WAVE, 28
    learnset MOVE_AMNESIA, 32
    learnset MOVE_TOXIC, 36
    learnset MOVE_EARTHQUAKE, 40
    terminatelearnset

levelup SPECIES_TAUROS_COMBAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WORK_UP, 5
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_ASSURANCE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SCARY_FACE, 25
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RAGING_BULL, 35
    learnset MOVE_REST, 40
    learnset MOVE_SWAGGER, 45
    learnset MOVE_THRASH, 50
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_TAUROS_BLAZE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WORK_UP, 5
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_FLAME_CHARGE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SCARY_FACE, 25
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RAGING_BULL, 35
    learnset MOVE_REST, 40
    learnset MOVE_SWAGGER, 45
    learnset MOVE_THRASH, 50
    learnset MOVE_FLARE_BLITZ, 55
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_TAUROS_AQUA
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WORK_UP, 5
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_AQUA_JET, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SCARY_FACE, 25
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RAGING_BULL, 35
    learnset MOVE_REST, 40
    learnset MOVE_SWAGGER, 45
    learnset MOVE_THRASH, 50
    learnset MOVE_WAVE_CRASH, 55
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_OINKOLOGNE_FEMALE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 3
    learnset MOVE_ECHOED_VOICE, 6
    learnset MOVE_MUD_SHOT, 9
    learnset MOVE_COVET, 12
    learnset MOVE_DIG, 15
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_YAWN, 23
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_WORK_UP, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_EARTH_POWER, 45
    learnset MOVE_BELCH, 51
    terminatelearnset

levelup SPECIES_REVAVROOM_SEGIN
    learnset MOVE_SHIFT_GEAR, 0
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_LICK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 46
    learnset MOVE_SPIN_OUT, 52
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset

levelup SPECIES_REVAVROOM_SCHEDAR
    learnset MOVE_SHIFT_GEAR, 0
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_LICK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 46
    learnset MOVE_SPIN_OUT, 52
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset

levelup SPECIES_REVAVROOM_NAVI
    learnset MOVE_SHIFT_GEAR, 0
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_LICK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 46
    learnset MOVE_SPIN_OUT, 52
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset

levelup SPECIES_REVAVROOM_RUCHBAH
    learnset MOVE_SHIFT_GEAR, 0
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_LICK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 46
    learnset MOVE_SPIN_OUT, 52
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset

levelup SPECIES_REVAVROOM_CAPH
    learnset MOVE_SHIFT_GEAR, 0
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_LICK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SLUDGE, 13
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SCREECH, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SWAGGER, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_UPROAR, 46
    learnset MOVE_SPIN_OUT, 52
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset

levelup SPECIES_KORAIDON_LIMITED_BUILD
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_DRAIN_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_COLLISION_COURSE, 56
    learnset MOVE_SCREECH, 63
    learnset MOVE_COUNTER, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_CLOSE_COMBAT, 84
    learnset MOVE_FLARE_BLITZ, 91
    learnset MOVE_GIGA_IMPACT, 981
    terminatelearnset

levelup SPECIES_KORAIDON_SPRINTING_BUILD
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_DRAIN_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_COLLISION_COURSE, 56
    learnset MOVE_SCREECH, 63
    learnset MOVE_COUNTER, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_CLOSE_COMBAT, 84
    learnset MOVE_FLARE_BLITZ, 91
    learnset MOVE_GIGA_IMPACT, 981
    terminatelearnset

levelup SPECIES_KORAIDON_SWIMMING_BUILD
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_DRAIN_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_COLLISION_COURSE, 56
    learnset MOVE_SCREECH, 63
    learnset MOVE_COUNTER, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_CLOSE_COMBAT, 84
    learnset MOVE_FLARE_BLITZ, 91
    learnset MOVE_GIGA_IMPACT, 981
    terminatelearnset

levelup SPECIES_KORAIDON_GLIDING_BUILD
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_DRAIN_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_COLLISION_COURSE, 56
    learnset MOVE_SCREECH, 63
    learnset MOVE_COUNTER, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_CLOSE_COMBAT, 84
    learnset MOVE_FLARE_BLITZ, 91
    learnset MOVE_GIGA_IMPACT, 981
    terminatelearnset

levelup SPECIES_MIRAIDON_LOW_POWER_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SHOCK_WAVE, 7
    learnset MOVE_CHARGE, 14
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_ELECTRO_DRIFT, 56
    learnset MOVE_METAL_SOUND, 63
    learnset MOVE_MIRROR_COAT, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_THUNDER, 84
    learnset MOVE_OVERHEAT, 91
    learnset MOVE_HYPER_BEAM, 98
    terminatelearnset

levelup SPECIES_MIRAIDON_DRIVE_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SHOCK_WAVE, 7
    learnset MOVE_CHARGE, 14
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_ELECTRO_DRIFT, 56
    learnset MOVE_METAL_SOUND, 63
    learnset MOVE_MIRROR_COAT, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_THUNDER, 84
    learnset MOVE_OVERHEAT, 91
    learnset MOVE_HYPER_BEAM, 98
    terminatelearnset

levelup SPECIES_MIRAIDON_AQUATIC_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SHOCK_WAVE, 7
    learnset MOVE_CHARGE, 14
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_ELECTRO_DRIFT, 56
    learnset MOVE_METAL_SOUND, 63
    learnset MOVE_MIRROR_COAT, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_THUNDER, 84
    learnset MOVE_OVERHEAT, 91
    learnset MOVE_HYPER_BEAM, 98
    terminatelearnset

levelup SPECIES_MIRAIDON_GLIDE_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SHOCK_WAVE, 7
    learnset MOVE_CHARGE, 14
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_AGILITY, 35
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_ELECTRO_DRIFT, 56
    learnset MOVE_METAL_SOUND, 63
    learnset MOVE_MIRROR_COAT, 70
    learnset MOVE_OUTRAGE, 77
    learnset MOVE_THUNDER, 84
    learnset MOVE_OVERHEAT, 91
    learnset MOVE_HYPER_BEAM, 98
    terminatelearnset

levelup SPECIES_POLTCHAGEIST_MASTERPIECE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ABSORB, 6
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_FOUL_PLAY, 18
    learnset MOVE_MEGA_DRAIN, 24
    learnset MOVE_HEX, 30
    learnset MOVE_RAGE_POWDER, 36
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset

levelup SPECIES_SINISTCHA_MASTERPIECE
    learnset MOVE_MATCHA_GOTCHA, 0
    learnset MOVE_MATCHA_GOTCHA, 0
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ABSORB, 6
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_FOUL_PLAY, 18
    learnset MOVE_MEGA_DRAIN, 24
    learnset MOVE_HEX, 30
    learnset MOVE_RAGE_POWDER, 36
    learnset MOVE_STRENGTH_SAP, 42
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_MEMENTO, 54
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset

levelup SPECIES_OGERPON_WELLSPRING_MASK
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_OGERPON_HEARTHFLAME_MASK
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_OGERPON_CORNERSTONE_MASK
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_OGERPON_TEAL_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_OGERPON_WELLSPRING_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_OGERPON_HEARTHFLAME_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_OGERPON_CORNERSTONE_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_HORN_LEECH, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_GROWTH, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_IVY_CUDGEL, 30
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 54
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_WOOD_HAMMER, 66
    terminatelearnset

levelup SPECIES_URSALUNA_BLOODMOON
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_HEADLONG_RUSH, 1
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_PAYBACK, 13
    learnset MOVE_HARDEN, 17
    learnset MOVE_SLASH, 22
    learnset MOVE_PLAY_NICE, 25
    learnset MOVE_SCARY_FACE, 35
    learnset MOVE_REST, 41
    learnset MOVE_SNORE, 41
    learnset MOVE_EARTH_POWER, 48
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_HAMMER_ARM, 64
    learnset MOVE_BLOOD_MOON, 70
    terminatelearnset

levelup SPECIES_TERAPAGOS_TERASTAL
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_PROTECT, 30
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_HEAVY_SLAM, 50
    learnset MOVE_TERA_STARSTORM, 60
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_ROCK_POLISH, 80
    learnset MOVE_GYRO_BALL, 90
    terminatelearnset

levelup SPECIES_TERAPAGOS_STELLAR
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_PROTECT, 30
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_HEAVY_SLAM, 50
    learnset MOVE_TERA_STARSTORM, 60
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_ROCK_POLISH, 80
    learnset MOVE_GYRO_BALL, 90
    terminatelearnset
