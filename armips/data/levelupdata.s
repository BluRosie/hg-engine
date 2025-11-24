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
    learnset MOVE_GROWL, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_SLEEP_POWDER, 20
    learnset MOVE_RAZOR_LEAF, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_SWEET_SCENT, 30
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_WORRY_SEED, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_IVYSAUR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_SLEEP_POWDER, 20
    learnset MOVE_RAZOR_LEAF, 26
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_WORRY_SEED, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_VENUSAUR
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_PETAL_DANCE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_POISON_POWDER, 26
    learnset MOVE_SLEEP_POWDER, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_SWEET_SCENT, 38
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_WORRY_SEED, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_SOLAR_BEAM, 52
    terminatelearnset

levelup SPECIES_CHARMANDER
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_FIRE_SPIN, 36
    learnset MOVE_INFERNO, 38
    learnset MOVE_FLARE_BLITZ, 42
    terminatelearnset

levelup SPECIES_CHARMELEON
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_FIRE_SPIN, 36
    learnset MOVE_INFERNO, 38
    learnset MOVE_FLARE_BLITZ, 42
    terminatelearnset

levelup SPECIES_CHARIZARD
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_DRAGON_CLAW, 8
    learnset MOVE_HEAT_WAVE, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_EMBER, 20
    learnset MOVE_SMOKESCREEN, 26
    learnset MOVE_FLARE_BLITZ, 28
    learnset MOVE_SHADOW_CLAW, 30
    learnset MOVE_DRAGON_BREATH, 34
    learnset MOVE_DRAGON_RAGE, 36
    learnset MOVE_FIRE_FANG, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_SLASH, 45
    learnset MOVE_FLAME_BURST, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_FIRE_SPIN, 54
    learnset MOVE_INFERNO, 56
    terminatelearnset

levelup SPECIES_SQUIRTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_BITE, 16
    learnset MOVE_BUBBLE, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_AQUA_TAIL, 30
    learnset MOVE_SHELL_SMASH, 34
    learnset MOVE_SKULL_BASH, 42
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_WARTORTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_BUBBLE, 12
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_BITE, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_AQUA_TAIL, 30
    learnset MOVE_SHELL_SMASH, 36
    learnset MOVE_SKULL_BASH, 42
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_BLASTOISE
    learnset MOVE_FLASH_CANNON, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_BUBBLE, 16
    learnset MOVE_RAPID_SPIN, 20
    learnset MOVE_BITE, 26
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SHELL_SMASH, 36
    learnset MOVE_SKULL_BASH, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_CATERPIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_BUG_BITE, 8
    terminatelearnset

levelup SPECIES_METAPOD
    learnset MOVE_HARDEN, 1
    terminatelearnset

levelup SPECIES_BUTTERFREE
    learnset MOVE_GUST, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_STRING_SHOT, 16
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_POISON_POWDER, 26
    learnset MOVE_STUN_SPORE, 28
    learnset MOVE_SLEEP_POWDER, 30
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_SILVER_WIND, 36
    learnset MOVE_WHIRLWIND, 38
    learnset MOVE_SAFEGUARD, 42
    learnset MOVE_BUG_BUZZ, 45
    learnset MOVE_AIR_SLASH, 48
    learnset MOVE_RAGE_POWDER, 52
    learnset MOVE_CAPTIVATE, 54
    learnset MOVE_TAILWIND, 56
    terminatelearnset

levelup SPECIES_WEEDLE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_BUG_BITE, 8
    terminatelearnset

levelup SPECIES_KAKUNA
    learnset MOVE_HARDEN, 1
    terminatelearnset

levelup SPECIES_BEEDRILL
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_POISON_JAB, 30
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_FELL_STINGER, 38
    terminatelearnset

levelup SPECIES_PIDGEY
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_WHIRLWIND, 12
    learnset MOVE_TWISTER, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_WING_ATTACK, 28
    learnset MOVE_ROOST, 30
    learnset MOVE_TAILWIND, 34
    learnset MOVE_MIRROR_MOVE, 36
    learnset MOVE_AIR_SLASH, 38
    learnset MOVE_HURRICANE, 42
    terminatelearnset

levelup SPECIES_PIDGEOTTO
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_WHIRLWIND, 12
    learnset MOVE_TWISTER, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_WING_ATTACK, 28
    learnset MOVE_ROOST, 30
    learnset MOVE_TAILWIND, 34
    learnset MOVE_MIRROR_MOVE, 36
    learnset MOVE_AIR_SLASH, 38
    learnset MOVE_HURRICANE, 42
    terminatelearnset

levelup SPECIES_PIDGEOT
    learnset MOVE_HURRICANE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_GUST, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_TWISTER, 20
    learnset MOVE_FEATHER_DANCE, 26
    learnset MOVE_WING_ATTACK, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_MIRROR_MOVE, 38
    learnset MOVE_AIR_SLASH, 42
    terminatelearnset

levelup SPECIES_RATTATA
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_HYPER_FANG, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_ENDEAVOR, 38
    terminatelearnset

levelup SPECIES_RATICATE
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_HYPER_FANG, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_SUPER_FANG, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_ENDEAVOR, 45
    terminatelearnset

levelup SPECIES_SPEAROW
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_LEER, 8
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_MIRROR_MOVE, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_DRILL_PECK, 36
    terminatelearnset

levelup SPECIES_FEAROW
    learnset MOVE_DRILL_RUN, 1
    learnset MOVE_PLUCK, 5
    learnset MOVE_PECK, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_LEER, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FURY_ATTACK, 20
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_MIRROR_MOVE, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_FOCUS_ENERGY, 36
    learnset MOVE_ROOST, 38
    learnset MOVE_DRILL_PECK, 42
    terminatelearnset

levelup SPECIES_EKANS
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_BITE, 9
    learnset MOVE_GLARE, 12
    learnset MOVE_POISON_FANG, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_SEED_BOMB, 24
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_MUD_BOMB, 31
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_BELCH, 38
    learnset MOVE_STOMPING_TANTRUM, 41
    learnset MOVE_SUCKER_PUNCH, 44
    learnset MOVE_GUNK_SHOT, 49
terminatelearnset

levelup SPECIES_ARBOK
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_BITE, 9
    learnset MOVE_GLARE, 12
    learnset MOVE_POISON_FANG, 17
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_CRUNCH, 22
    learnset MOVE_SEED_BOMB, 25
    learnset MOVE_ACID_SPRAY, 29
    learnset MOVE_MUD_BOMB, 32
    learnset MOVE_POISON_JAB, 35
    learnset MOVE_BELCH, 39
    learnset MOVE_STOMPING_TANTRUM, 43
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_GUNK_SHOT, 55
terminatelearnset


levelup SPECIES_PIKACHU
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_RAICHU
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_NUZZLE, 16
    learnset MOVE_CHARM, 16
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_DOUBLE_TEAM, 26
    learnset MOVE_ELECTRO_BALL, 28
    learnset MOVE_FEINT, 30
    learnset MOVE_SPARK, 34
    learnset MOVE_SLAM, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_THUNDER, 52
    learnset MOVE_THUNDER_SHOCK, 54
    learnset MOVE_GROWL, 58
    learnset MOVE_QUICK_ATTACK, 60
    terminatelearnset

levelup SPECIES_SANDSHREW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_POISON_STING, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_RAPID_SPIN, 20
    learnset MOVE_MAGNITUDE, 26
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_SWIFT, 30
    learnset MOVE_FURY_SWIPES, 34
    learnset MOVE_SAND_TOMB, 36
    learnset MOVE_SLASH, 42
    learnset MOVE_DIG, 45
    learnset MOVE_GYRO_BALL, 48
    learnset MOVE_EARTHQUAKE, 56
    terminatelearnset

levelup SPECIES_SANDSLASH
    learnset MOVE_CRUSH_CLAW, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_POISON_STING, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_RAPID_SPIN, 26
    learnset MOVE_MAGNITUDE, 28
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_SWIFT, 34
    learnset MOVE_FURY_SWIPES, 36
    learnset MOVE_SAND_TOMB, 38
    learnset MOVE_SLASH, 42
    learnset MOVE_DIG, 45
    learnset MOVE_GYRO_BALL, 48
    learnset MOVE_EARTHQUAKE, 56
    terminatelearnset

levelup SPECIES_NIDORAN_F
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_BITE, 10
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_SLUDGE, 18
    learnset MOVE_MUD_SLAP, 22
    learnset MOVE_SLUDGE_BOMB, 26
    learnset MOVE_EARTH_POWER, 30
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_SLUDGE_WAVE, 46
terminatelearnset

levelup SPECIES_NIDORINA
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_BITE, 10
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_SLUDGE, 19
    learnset MOVE_MUD_SLAP, 24
    learnset MOVE_SLUDGE_BOMB, 29
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_SUPER_FANG, 39
    learnset MOVE_BODY_SLAM, 44
    learnset MOVE_CRUNCH, 49
    learnset MOVE_SLUDGE_WAVE, 54
terminatelearnset

levelup SPECIES_NIDOQUEEN
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_ICE_BEAM, 1
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_BITE, 10
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_SLUDGE, 19
    learnset MOVE_MUD_SHOT, 25
    learnset MOVE_SLUDGE_BOMB, 31
    learnset MOVE_EARTH_POWER, 37
    learnset MOVE_SUPER_FANG, 43
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_CRUNCH, 55
    learnset MOVE_SLUDGE_WAVE, 61
    learnset MOVE_EARTHQUAKE, 65
terminatelearnset

levelup SPECIES_NIDORAN_M
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_POISON_FANG, 18
    learnset MOVE_MUD_SLAP, 22
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_DRILL_RUN, 30
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_THRASH, 38
    learnset MOVE_MEGAHORN, 42
    learnset MOVE_GUNK_SHOT, 46
terminatelearnset

levelup SPECIES_NIDORINO
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_POISON_FANG, 19
    learnset MOVE_MUD_SLAP, 24
    learnset MOVE_POISON_JAB, 29
    learnset MOVE_DRILL_RUN, 34
    learnset MOVE_SUPER_FANG, 39
    learnset MOVE_THRASH, 44
    learnset MOVE_MEGAHORN, 49
    learnset MOVE_GUNK_SHOT, 54
terminatelearnset

levelup SPECIES_NIDOKING
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_POISON_FANG, 19
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_POISON_JAB, 31
    learnset MOVE_DRILL_RUN, 37
    learnset MOVE_SUPER_FANG, 43
    learnset MOVE_THRASH, 49
    learnset MOVE_MEGAHORN, 55
    learnset MOVE_GUNK_SHOT, 61
    learnset MOVE_EARTHQUAKE, 65
terminatelearnset

levelup SPECIES_CLEFAIRY
    learnset MOVE_SING, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_ENCORE, 16
    learnset MOVE_CHARM, 12
    learnset MOVE_SPLASH, 16
    learnset MOVE_POUND, 20
    learnset MOVE_COPYCAT, 26
    learnset MOVE_GROWL, 28
    learnset MOVE_DEFENSE_CURL, 30
    learnset MOVE_SPOTLIGHT, 34
    learnset MOVE_DOUBLE_SLAP, 36
    learnset MOVE_STORED_POWER, 38
    learnset MOVE_LIFE_DEW, 45
    learnset MOVE_BESTOW, 48
    learnset MOVE_WAKE_UP_SLAP, 52
    learnset MOVE_METRONOME, 54
    learnset MOVE_FOLLOW_ME, 56
    learnset MOVE_MOONLIGHT, 58
    learnset MOVE_AFTER_YOU, 60
    learnset MOVE_GRAVITY, 65
    learnset MOVE_LUCKY_CHANT, 70
    learnset MOVE_METEOR_MASH, 74
    learnset MOVE_BODY_SLAM, 76
    learnset MOVE_MOONBLAST, 80
    learnset MOVE_HEALING_WISH, 80
    terminatelearnset

levelup SPECIES_CLEFABLE
    learnset MOVE_SING, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_ENCORE, 16
    learnset MOVE_CHARM, 12
    learnset MOVE_STORED_POWER, 16
    learnset MOVE_AFTER_YOU, 26
    learnset MOVE_LIFE_DEW, 28
    learnset MOVE_METRONOME, 30
    learnset MOVE_MOONLIGHT, 34
    learnset MOVE_GRAVITY, 36
    learnset MOVE_METEOR_MASH, 38
    learnset MOVE_FOLLOW_ME, 42
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_HEALING_WISH, 52
    learnset MOVE_SPLASH, 54
    learnset MOVE_POUND, 56
    learnset MOVE_COPYCAT, 58
    learnset MOVE_GROWL, 60
    learnset MOVE_DEFENSE_CURL, 65
    learnset MOVE_SPOTLIGHT, 68
    learnset MOVE_DOUBLE_SLAP, 70
    terminatelearnset

levelup SPECIES_VULPIX
    learnset MOVE_EMBER, 1
    learnset MOVE_DISABLE, 8
    learnset MOVE_ROAR, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_SPITE, 20
    learnset MOVE_INCINERATE, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_PAYBACK, 30
    learnset MOVE_WILL_O_WISP, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_HEX, 38
    learnset MOVE_FIRE_SPIN, 42
    learnset MOVE_FLAME_BURST, 45
    learnset MOVE_EXTRASENSORY, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_IMPRISON, 54
    learnset MOVE_SAFEGUARD, 56
    learnset MOVE_CAPTIVATE, 58
    learnset MOVE_INFERNO, 60
    learnset MOVE_GRUDGE, 65
    learnset MOVE_FIRE_BLAST, 68
    terminatelearnset

levelup SPECIES_NINETALES
    learnset MOVE_INCINERATE, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_WILL_O_WISP, 12
    learnset MOVE_EXTRASENSORY, 16
    learnset MOVE_FLAMETHROWER, 20
    learnset MOVE_IMPRISON, 26
    learnset MOVE_FIRE_SPIN, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_INFERNO, 34
    learnset MOVE_GRUDGE, 36
    learnset MOVE_FIRE_BLAST, 38
    learnset MOVE_EMBER, 42
    learnset MOVE_DISABLE, 48
    learnset MOVE_QUICK_ATTACK, 52
    terminatelearnset

levelup SPECIES_JIGGLYPUFF
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_SING, 12
    learnset MOVE_POUND, 16
    learnset MOVE_COPYCAT, 20
    learnset MOVE_DEFENSE_CURL, 26
    learnset MOVE_ECHOED_VOICE, 28
    learnset MOVE_COVET, 30
    learnset MOVE_PLAY_NICE, 34
    learnset MOVE_DOUBLE_SLAP, 36
    learnset MOVE_SWALLOW, 42
    learnset MOVE_SPIT_UP, 45
    learnset MOVE_ROUND, 48
    learnset MOVE_ROLLOUT, 52
    learnset MOVE_REST, 54
    learnset MOVE_BODY_SLAM, 56
    learnset MOVE_WAKE_UP_SLAP, 58
    learnset MOVE_MIMIC, 60
    learnset MOVE_GYRO_BALL, 65
    learnset MOVE_HYPER_VOICE, 68
    learnset MOVE_PLAY_ROUGH, 70
    learnset MOVE_DOUBLE_EDGE, 74
    terminatelearnset

levelup SPECIES_WIGGLYTUFF
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_ECHOED_VOICE, 12
    learnset MOVE_COVET, 16
    learnset MOVE_SWALLOW, 26
    learnset MOVE_SPIT_UP, 28
    learnset MOVE_ROUND, 30
    learnset MOVE_REST, 34
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_MIMIC, 38
    learnset MOVE_GYRO_BALL, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_SING, 54
    learnset MOVE_POUND, 56
    learnset MOVE_COPYCAT, 58
    learnset MOVE_DEFENSE_CURL, 60
    learnset MOVE_DOUBLE_SLAP, 65
    terminatelearnset

levelup SPECIES_ZUBAT
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_BITE, 11
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_AIR_CUTTER, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_HAZE, 20
    learnset MOVE_X_SCISSOR, 23
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_DUAL_WINGBEAT, 31
    learnset MOVE_CROSS_POISON, 35
    learnset MOVE_LEECH_LIFE, 38
    learnset MOVE_SLUDGE_BOMB, 42
    learnset MOVE_BRAVE_BIRD, 45
terminatelearnset

levelup SPECIES_GOLBAT
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_BITE, 11
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_AIR_CUTTER, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_HAZE, 20
    learnset MOVE_X_SCISSOR, 24
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_CROSS_POISON, 38
    learnset MOVE_LEECH_LIFE, 44
    learnset MOVE_SLUDGE_BOMB, 48
    learnset MOVE_BRAVE_BIRD, 50
terminatelearnset

levelup SPECIES_CROBAT
    learnset MOVE_U_TURN, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_BITE, 11
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_AIR_CUTTER, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_HAZE, 20
    learnset MOVE_X_SCISSOR, 24
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_CROSS_POISON, 38
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_SLUDGE_BOMB, 50
    learnset MOVE_BRAVE_BIRD, 55
terminatelearnset

levelup SPECIES_ODDISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_WORRY_SEED, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_ACID, 9
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_LUCKY_CHANT, 25
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_TOXIC, 36
    learnset MOVE_SLUDGE_BOMB, 40
    learnset MOVE_MOONBLAST, 44
    learnset MOVE_MOONLIGHT, 48
    learnset MOVE_SOLAR_BEAM, 56
    terminatelearnset

levelup SPECIES_GLOOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_WORRY_SEED, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_ACID, 9
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_LUCKY_CHANT, 25
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_TOXIC, 36
    learnset MOVE_SLUDGE_BOMB, 40
    learnset MOVE_MOONBLAST, 44
    learnset MOVE_MOONLIGHT, 48
    learnset MOVE_SOLAR_BEAM, 56
    terminatelearnset

levelup SPECIES_VILEPLUME
    learnset MOVE_ABSORB, 1
    learnset MOVE_WORRY_SEED, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_ACID, 9
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_LUCKY_CHANT, 25
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_TOXIC, 36
    learnset MOVE_SLUDGE_BOMB, 40
    learnset MOVE_MOONBLAST, 44
    learnset MOVE_MOONLIGHT, 48
    learnset MOVE_SOLAR_BEAM, 56
    terminatelearnset

levelup SPECIES_PARAS
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_POISON_POWDER, 6
    learnset MOVE_BUG_BITE, 11
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_SPORE, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_AROMATHERAPY, 27
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_TOXIC, 34
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_RAGE_POWDER, 48
    learnset MOVE_LEECH_LIFE, 55
terminatelearnset

levelup SPECIES_PARASECT
    learnset MOVE_CROSS_POISON, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_POISON_POWDER, 6
    learnset MOVE_BUG_BITE, 11
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_SPORE, 21
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_X_SCISSOR, 33
    learnset MOVE_TOXIC, 36
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SEED_BOMB, 48
    learnset MOVE_RAGE_POWDER, 54
    learnset MOVE_LEECH_LIFE, 60
terminatelearnset


levelup SPECIES_VENONAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_FORESIGHT, 8
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_STUN_SPORE, 26
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_SLEEP_POWDER, 30
    learnset MOVE_LEECH_LIFE, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_POISON_FANG, 38
    learnset MOVE_PSYCHIC, 42
    terminatelearnset

levelup SPECIES_VENOMOTH
    learnset MOVE_GUST, 1
    learnset MOVE_BUG_BUZZ, 8
    learnset MOVE_SILVER_WIND, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_DISABLE, 16
    learnset MOVE_FORESIGHT, 20
    learnset MOVE_SUPERSONIC, 26
    learnset MOVE_CONFUSION, 28
    learnset MOVE_POISON_POWDER, 30
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_STUN_SPORE, 36
    learnset MOVE_SIGNAL_BEAM, 38
    learnset MOVE_SLEEP_POWDER, 42
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_POISON_FANG, 52
    learnset MOVE_PSYCHIC, 54
    terminatelearnset

levelup SPECIES_DIGLETT
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_MAGNITUDE, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_MUD_BOMB, 28
    learnset MOVE_SLASH, 34
    learnset MOVE_DIG, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_FISSURE, 45
    terminatelearnset

levelup SPECIES_DUGTRIO
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_TRI_ATTACK, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_ASTONISH, 20
    learnset MOVE_MUD_SLAP, 28
    learnset MOVE_MAGNITUDE, 30
    learnset MOVE_BULLDOZE, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_MUD_BOMB, 38
    learnset MOVE_SLASH, 45
    learnset MOVE_DIG, 48
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_FISSURE, 56
    terminatelearnset

levelup SPECIES_MEOWTH
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_BITE, 16
    learnset MOVE_PAY_DAY, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_FEINT, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_ASSURANCE, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_CAPTIVATE, 45
    learnset MOVE_NIGHT_SLASH, 48
    terminatelearnset

levelup SPECIES_PERSIAN
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_SWIFT, 5
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_SCRATCH, 20
    learnset MOVE_PLAY_ROUGH, 26
    learnset MOVE_BITE, 28
    learnset MOVE_PAY_DAY, 30
    learnset MOVE_TAUNT, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_FURY_SWIPES, 38
    learnset MOVE_SCREECH, 42
    learnset MOVE_ASSURANCE, 45
    learnset MOVE_SLASH, 48
    learnset MOVE_CAPTIVATE, 54
    learnset MOVE_NIGHT_SLASH, 56
    terminatelearnset

levelup SPECIES_PSYDUCK
    learnset MOVE_SCRATCH, 1
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_DISABLE, 26
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_PSYCH_UP, 38
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_GOLDUCK
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ME_FIRST, 16
    learnset MOVE_WATER_SPORT, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_DISABLE, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_SOAK, 42
    learnset MOVE_PSYCH_UP, 45
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_MANKEY
    learnset MOVE_COVET, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LOW_KICK, 8
    learnset MOVE_LEER, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_KARATE_CHOP, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_SEISMIC_TOSS, 28
    learnset MOVE_SWAGGER, 30
    learnset MOVE_CROSS_CHOP, 34
    learnset MOVE_ASSURANCE, 36
    learnset MOVE_PUNISHMENT, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_CLOSE_COMBAT, 45
    learnset MOVE_SCREECH, 48
    learnset MOVE_STOMPING_TANTRUM, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_FINAL_GAMBIT, 56
    terminatelearnset

levelup SPECIES_PRIMEAPE
    learnset MOVE_RAGE, 1
    learnset MOVE_FINAL_GAMBIT, 5
    learnset MOVE_FLING, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_LEER, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_KARATE_CHOP, 28
    learnset MOVE_PURSUIT, 30
    learnset MOVE_SEISMIC_TOSS, 34
    learnset MOVE_SWAGGER, 36
    learnset MOVE_CROSS_CHOP, 38
    learnset MOVE_ASSURANCE, 42
    learnset MOVE_PUNISHMENT, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_CLOSE_COMBAT, 52
    learnset MOVE_SCREECH, 54
    learnset MOVE_STOMPING_TANTRUM, 56
    learnset MOVE_OUTRAGE, 58
    terminatelearnset

levelup SPECIES_GROWLITHE
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 16
    learnset MOVE_FLAME_WHEEL, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_ROAR, 38
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_REVERSAL, 45
    learnset MOVE_FLARE_BLITZ, 48
    terminatelearnset

levelup SPECIES_ARCANINE
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_BITE, 8
    learnset MOVE_CRUNCH, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLARE_BLITZ, 26
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_LEER, 34
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_RETALIATE, 38
    learnset MOVE_REVERSAL, 42
    learnset MOVE_ROAR, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_FLAMETHROWER, 52
    terminatelearnset

levelup SPECIES_POLIWAG
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HYPNOSIS, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_POUND, 16
    learnset MOVE_BUBBLE, 12
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_WAKE_UP_SLAP, 34
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_HYDRO_PUMP, 38
    learnset MOVE_MUD_BOMB, 45
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset

levelup SPECIES_POLIWHIRL
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HYPNOSIS, 5
    learnset MOVE_POUND, 8
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_WATER_SPORT, 12
    learnset MOVE_BUBBLE, 16
    learnset MOVE_DOUBLE_SLAP, 20
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_WAKE_UP_SLAP, 36
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_MUD_BOMB, 45
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset

levelup SPECIES_POLIWRATH
    learnset MOVE_SUBMISSION, 1
    learnset MOVE_CIRCLE_THROW, 5
    learnset MOVE_MIND_READER, 8
    learnset MOVE_DYNAMIC_PUNCH, 16
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_EARTH_POWER, 26
    learnset MOVE_HYDRO_PUMP, 28
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_WATER_GUN, 36
    learnset MOVE_HYPNOSIS, 38
    learnset MOVE_POUND, 42
    learnset MOVE_MUD_SHOT, 45
    learnset MOVE_DOUBLE_SLAP, 48
    terminatelearnset

levelup SPECIES_ABRA
    terminatelearnset

levelup SPECIES_KADABRA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_KINESIS, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_PSYCHO_CUT, 20
    learnset MOVE_MIRACLE_EYE, 26
    learnset MOVE_ALLY_SWITCH, 28
    learnset MOVE_RECOVER, 30
    learnset MOVE_PSYSHOCK, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_ROLE_PLAY, 42
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset

levelup SPECIES_ALAKAZAM
    learnset MOVE_KINESIS, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_PSYCHO_CUT, 20
    learnset MOVE_MIRACLE_EYE, 26
    learnset MOVE_ALLY_SWITCH, 28
    learnset MOVE_RECOVER, 30
    learnset MOVE_PSYSHOCK, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_ROLE_PLAY, 42
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset

levelup SPECIES_MACHOP
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_KARATE_CHOP, 16
    learnset MOVE_FORESIGHT, 12
    learnset MOVE_LOW_SWEEP, 16
    learnset MOVE_REVENGE, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_VITAL_THROW, 28
    learnset MOVE_WAKE_UP_SLAP, 30
    learnset MOVE_SEISMIC_TOSS, 34
    learnset MOVE_STRENGTH, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_DUAL_CHOP, 42
    learnset MOVE_SUBMISSION, 45
    learnset MOVE_CROSS_CHOP, 52
    learnset MOVE_DYNAMIC_PUNCH, 54
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_MACHOKE
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_REVENGE, 16
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_FORESIGHT, 16
    learnset MOVE_LOW_SWEEP, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_VITAL_THROW, 28
    learnset MOVE_WAKE_UP_SLAP, 30
    learnset MOVE_STRENGTH, 34
    learnset MOVE_SEISMIC_TOSS, 36
    learnset MOVE_DUAL_CHOP, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_SUBMISSION, 45
    learnset MOVE_CROSS_CHOP, 52
    learnset MOVE_DYNAMIC_PUNCH, 54
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_MACHAMP
    learnset MOVE_STRENGTH, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_LOW_KICK, 8
    learnset MOVE_LEER, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_REVENGE, 16
    learnset MOVE_KARATE_CHOP, 20
    learnset MOVE_FORESIGHT, 26
    learnset MOVE_LOW_SWEEP, 28
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_VITAL_THROW, 34
    learnset MOVE_WAKE_UP_SLAP, 36
    learnset MOVE_SEISMIC_TOSS, 38
    learnset MOVE_DUAL_CHOP, 42
    learnset MOVE_SCARY_FACE, 45
    learnset MOVE_SUBMISSION, 48
    learnset MOVE_CROSS_CHOP, 54
    learnset MOVE_DYNAMIC_PUNCH, 56
    learnset MOVE_DOUBLE_EDGE, 58
    terminatelearnset

levelup SPECIES_BELLSPROUT
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_ACID, 9
    learnset MOVE_SLEEP_POWDER, 13
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_STUN_SPORE, 21
    learnset MOVE_RAZOR_LEAF, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_SLUDGE_BOMB, 30
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_TOXIC, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_LEAF_BLADE, 46
    learnset MOVE_WRING_OUT, 50
terminatelearnset

levelup SPECIES_WEEPINBELL
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_ACID, 9
    learnset MOVE_SLEEP_POWDER, 13
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_STUN_SPORE, 21
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_SLUDGE_BOMB, 31
    learnset MOVE_ENERGY_BALL, 35
    learnset MOVE_TOXIC, 39
    learnset MOVE_POISON_JAB, 44
    learnset MOVE_LEAF_BLADE, 49
    learnset MOVE_WRING_OUT, 54
terminatelearnset

levelup SPECIES_VICTREEBEL
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_ACID, 9
    learnset MOVE_SLEEP_POWDER, 13
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_STUN_SPORE, 21
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_SLUDGE_BOMB, 31
    learnset MOVE_ENERGY_BALL, 35
    learnset MOVE_TOXIC, 40
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_LEAF_BLADE, 52
    learnset MOVE_WRING_OUT, 58
    learnset MOVE_LEAF_STORM, 64
    learnset MOVE_GUNK_SHOT, 70
terminatelearnset

levelup SPECIES_TENTACOOL
    learnset MOVE_POISON_STING, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_ACID, 8
    learnset MOVE_CONSTRICT, 16
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_WRAP, 16
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_BUBBLE_BEAM, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_HEX, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_BRINE, 48
    learnset MOVE_SURF, 52
    learnset MOVE_SLUDGE_WAVE, 54
    learnset MOVE_HYDRO_PUMP, 56
    learnset MOVE_WRING_OUT, 58
    terminatelearnset

levelup SPECIES_TENTACRUEL
    learnset MOVE_REFLECT_TYPE, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_ACID, 16
    learnset MOVE_WRAP, 12
    learnset MOVE_WRING_OUT, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_CONSTRICT, 26
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_ACID_SPRAY, 34
    learnset MOVE_BUBBLE_BEAM, 36
    learnset MOVE_SCREECH, 42
    learnset MOVE_HEX, 48
    learnset MOVE_POISON_JAB, 52
    learnset MOVE_BRINE, 54
    learnset MOVE_SURF, 56
    learnset MOVE_SLUDGE_WAVE, 58
    learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset

levelup SPECIES_GEODUDE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_MAGNITUDE, 16
    learnset MOVE_ROCK_THROW, 20
    learnset MOVE_SMACK_DOWN, 26
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_ROCK_BLAST, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_EXPLOSION, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset

levelup SPECIES_GRAVELER
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_MAGNITUDE, 16
    learnset MOVE_ROCK_THROW, 20
    learnset MOVE_SMACK_DOWN, 26
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_ROCK_BLAST, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_EXPLOSION, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset

levelup SPECIES_GOLEM
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_MUD_SPORT, 16
    learnset MOVE_STEAMROLLER, 16
    learnset MOVE_MAGNITUDE, 20
    learnset MOVE_ROCK_THROW, 26
    learnset MOVE_SMACK_DOWN, 28
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_SELF_DESTRUCT, 34
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_STONE_EDGE, 52
    terminatelearnset

levelup SPECIES_PONYTA
    learnset MOVE_GROWL, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_EMBER, 8
	learnset MOVE_FIRE_SPIN, 11
    learnset MOVE_FLAME_WHEEL, 14
    learnset MOVE_DOUBLE_KICK, 17
	learnset MOVE_BOUNCE, 20
    learnset MOVE_MORNING_SUN, 25
    learnset MOVE_HIGH_HORSEPOWER, 34
    learnset MOVE_JUMP_KICK, 40
    learnset MOVE_OVERHEAT, 46
    learnset MOVE_FLARE_BLITZ, 50
terminatelearnset

levelup SPECIES_RAPIDASH
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_EMBER, 9
    learnset MOVE_FLAME_WHEEL, 13
    learnset MOVE_FIRE_SPIN, 17
    learnset MOVE_BOUNCE, 21
    learnset MOVE_BLAZE_KICK, 26
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_FIRE_LASH, 33
    learnset MOVE_HIGH_HORSEPOWER, 35
    learnset MOVE_JUMP_KICK, 42
    learnset MOVE_OVERHEAT, 48
    learnset MOVE_FLARE_BLITZ, 55
terminatelearnset


levelup SPECIES_SLOWPOKE
    learnset MOVE_TACKLE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_YAWN, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_SURF, 36
    learnset MOVE_SLACK_OFF, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_PSYCH_UP, 45
    learnset MOVE_HEAL_PULSE, 52
    terminatelearnset

levelup SPECIES_SLOWBRO
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_GROWL, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_YAWN, 20
    learnset MOVE_CONFUSION, 26
    learnset MOVE_DISABLE, 28
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_SURF, 42
    learnset MOVE_SLACK_OFF, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_PSYCH_UP, 52
    learnset MOVE_HEAL_PULSE, 56
    terminatelearnset

levelup SPECIES_MAGNEMITE
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SCREECH, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_SHOCK_WAVE, 12
    learnset MOVE_SONIC_BOOM, 17
    learnset MOVE_MAGNET_BOMB, 19
    learnset MOVE_FLASH, 23
    learnset MOVE_RECYCLE, 25
    learnset MOVE_DISCHARGE, 29
    learnset MOVE_MIRROR_SHOT, 31
    learnset MOVE_ELECTROWEB, 35
    learnset MOVE_SIGNAL_BEAM, 37
    learnset MOVE_THUNDERBOLT, 41
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_METAL_SOUND, 47
    learnset MOVE_EXPLOSION, 49
terminatelearnset

levelup SPECIES_MAGNETON
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SCREECH, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_SHOCK_WAVE, 12
    learnset MOVE_SONIC_BOOM, 17
    learnset MOVE_MAGNET_BOMB, 19
    learnset MOVE_FLASH, 23
    learnset MOVE_RECYCLE, 25
    learnset MOVE_DISCHARGE, 29
    learnset MOVE_TRI_ATTACK, 30
    learnset MOVE_MIRROR_SHOT, 32
    learnset MOVE_ELECTROWEB, 37
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_FLASH_CANNON, 48
    learnset MOVE_METAL_SOUND, 53
    learnset MOVE_EXPLOSION, 58
terminatelearnset


levelup SPECIES_FARFETCHD
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_CUT, 16
    learnset MOVE_FURY_ATTACK, 20
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_SLASH, 26
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_REVENGE, 38
	learnset MOVE_POISON_JAB, 41
	learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_BRAVE_BIRD, 50
	learnset MOVE_FEATHER_DANCE, 53
    terminatelearnset

levelup SPECIES_DODUO
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_RAGE, 16
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_PLUCK, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_UPROAR, 30
    learnset MOVE_ACUPRESSURE, 34
    learnset MOVE_JUMP_KICK, 38
    learnset MOVE_DRILL_PECK, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_THRASH, 48
    terminatelearnset

levelup SPECIES_DODRIO
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_PECK, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_RAGE, 12
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_PLUCK, 26
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_UPROAR, 34
    learnset MOVE_ACUPRESSURE, 36
    learnset MOVE_JUMP_KICK, 42
    learnset MOVE_DRILL_PECK, 45
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_THRASH, 52
    terminatelearnset

levelup SPECIES_SEEL
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_ENCORE, 12
    learnset MOVE_ICE_SHARD, 16
    learnset MOVE_REST, 20
    learnset MOVE_AQUA_RING, 26
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_BRINE, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_DIVE, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_SAFEGUARD, 48
    terminatelearnset

levelup SPECIES_DEWGONG
    learnset MOVE_SHEER_COLD, 1
    learnset MOVE_HEADBUTT, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_SIGNAL_BEAM, 16
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_ENCORE, 16
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_REST, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_AQUA_JET, 34
    learnset MOVE_BRINE, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_DIVE, 42
    learnset MOVE_AQUA_TAIL, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_SAFEGUARD, 52
    terminatelearnset

levelup SPECIES_GRIMER
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_DISABLE, 12
    learnset MOVE_SLUDGE, 16
    learnset MOVE_MUD_BOMB, 19
    learnset MOVE_SLUDGE_BOMB, 25
	learnset MOVE_THUNDER_PUNCH, 29
    learnset MOVE_SLUDGE_WAVE, 34
    learnset MOVE_SCREECH, 38
    learnset MOVE_GUNK_SHOT, 38
    learnset MOVE_MEMENTO, 44
	learnset MOVE_DARK_PULSE, 48
	learnset MOVE_MORTAL_SPIN, 53
    terminatelearnset

levelup SPECIES_MUK
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_DISABLE, 12
    learnset MOVE_SLUDGE, 16
    learnset MOVE_MUD_BOMB, 19
    learnset MOVE_SLUDGE_BOMB, 25
	learnset MOVE_THUNDER_PUNCH, 29
    learnset MOVE_SLUDGE_WAVE, 34
    learnset MOVE_SCREECH, 38
    learnset MOVE_GUNK_SHOT, 38
    learnset MOVE_MEMENTO, 44
	learnset MOVE_DARK_PULSE, 48
	learnset MOVE_MORTAL_SPIN, 53
    terminatelearnset

levelup SPECIES_SHELLDER
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_ICICLE_SPEAR, 16
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_LEER, 16
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_PROTECT, 26
    learnset MOVE_CLAMP, 28
    learnset MOVE_WHIRLPOOL, 30
    learnset MOVE_AURORA_BEAM, 34
    learnset MOVE_RAZOR_SHELL, 36
    learnset MOVE_BRINE, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_SHELL_SMASH, 48
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_CLOYSTER
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_ICICLE_CRASH, 5
    learnset MOVE_LEER, 12
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_RAZOR_SHELL, 30
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_SHELL_SMASH, 38
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_TACKLE, 45
    learnset MOVE_WATER_GUN, 48
    learnset MOVE_ICE_SHARD, 54
    learnset MOVE_SPIKE_CANNON, 56
    terminatelearnset

levelup SPECIES_GASTLY
    learnset MOVE_LICK, 1
    learnset MOVE_CONFUSE_RAY, 5
    learnset MOVE_HYPNOSIS, 8
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_PAYBACK, 20
    learnset MOVE_NIGHT_SHADE, 26
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_HEX, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_DREAM_EATER, 38
    learnset MOVE_DESTINY_BOND, 42
    learnset MOVE_NIGHTMARE, 45
    terminatelearnset

levelup SPECIES_HAUNTER
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_LICK, 5
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_MEAN_LOOK, 12
    learnset MOVE_SPITE, 16
    learnset MOVE_PAYBACK, 26
    learnset MOVE_NIGHT_SHADE, 28
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_HEX, 34
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_DARK_PULSE, 38
    learnset MOVE_DREAM_EATER, 42
    learnset MOVE_DESTINY_BOND, 45
    learnset MOVE_NIGHTMARE, 48
    terminatelearnset

levelup SPECIES_GENGAR
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_PERISH_SONG, 5
    learnset MOVE_REFLECT_TYPE, 8
    learnset MOVE_LICK, 16
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_MEAN_LOOK, 20
    learnset MOVE_SPITE, 26
    learnset MOVE_PAYBACK, 30
    learnset MOVE_NIGHT_SHADE, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_HEX, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_DREAM_EATER, 48
    learnset MOVE_DESTINY_BOND, 52
    learnset MOVE_NIGHTMARE, 54
    terminatelearnset

levelup SPECIES_ONIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SCREECH, 10
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_ROCK_TOMB, 14
    learnset MOVE_BLOCK, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_IRON_HEAD, 20
    learnset MOVE_SMACK_DOWN, 22
    learnset MOVE_SAND_TOMB, 25
    learnset MOVE_IRON_TAIL, 28
    learnset MOVE_DIG, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SELF_DESTRUCT, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_EXPLOSION, 52
    learnset MOVE_EARTHQUAKE, 57
terminatelearnset

levelup SPECIES_DROWZEE
    learnset MOVE_POUND, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_DISABLE, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_WAKE_UP_SLAP, 20
    learnset MOVE_PSYSHOCK, 26
    learnset MOVE_WISH, 30
    learnset MOVE_YAWN, 34
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_SWAGGER, 42
    learnset MOVE_FOUL_PLAY, 49
    learnset MOVE_PSYCHIC, 53
    learnset MOVE_FUTURE_SIGHT, 57
terminatelearnset

levelup SPECIES_HYPNO
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_DISABLE, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_WAKE_UP_SLAP, 20
    learnset MOVE_PSYSHOCK, 26
    learnset MOVE_WISH, 30
    learnset MOVE_YAWN, 34
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_SWAGGER, 42
    learnset MOVE_FOUL_PLAY, 49
    learnset MOVE_PSYCHIC, 53
    learnset MOVE_FUTURE_SIGHT, 57
terminatelearnset

levelup SPECIES_KRABBY
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_BUBBLE, 16
    learnset MOVE_VICE_GRIP, 12
    learnset MOVE_HARDEN, 16
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_MUD_SHOT, 26
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_STOMP, 34
    learnset MOVE_RAZOR_SHELL, 36
    learnset MOVE_SLAM, 38
    learnset MOVE_FLAIL, 42
    learnset MOVE_BRINE, 45
    learnset MOVE_GUILLOTINE, 52
    learnset MOVE_CRABHAMMER, 54
    terminatelearnset

levelup SPECIES_KINGLER
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_HAMMER_ARM, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_LEER, 16
    learnset MOVE_HARDEN, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_MUD_SPORT, 20
    learnset MOVE_BUBBLE, 26
    learnset MOVE_VICE_GRIP, 28
    learnset MOVE_MUD_SHOT, 30
    learnset MOVE_BUBBLE_BEAM, 34
    learnset MOVE_PROTECT, 36
    learnset MOVE_STOMP, 38
    learnset MOVE_RAZOR_SHELL, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_FLAIL, 48
    learnset MOVE_GUILLOTINE, 54
    learnset MOVE_BRINE, 56
    learnset MOVE_CRABHAMMER, 58
    terminatelearnset

levelup SPECIES_VOLTORB
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SONIC_BOOM, 8
    learnset MOVE_EERIE_IMPULSE, 16
    learnset MOVE_SPARK, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_CHARGE_BEAM, 26
    learnset MOVE_SWIFT, 28
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_SELF_DESTRUCT, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_MAGNET_RISE, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_GYRO_BALL, 48
    learnset MOVE_MIRROR_COAT, 52
    terminatelearnset

levelup SPECIES_ELECTRODE
    learnset MOVE_MAGNETIC_FLUX, 1
    learnset MOVE_CHARGE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_SONIC_BOOM, 16
    learnset MOVE_EERIE_IMPULSE, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_ROLLOUT, 20
    learnset MOVE_SCREECH, 26
    learnset MOVE_CHARGE_BEAM, 28
    learnset MOVE_SWIFT, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_SELF_DESTRUCT, 36
    learnset MOVE_LIGHT_SCREEN, 38
    learnset MOVE_MAGNET_RISE, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_GYRO_BALL, 52
    learnset MOVE_MIRROR_COAT, 54
    terminatelearnset

levelup SPECIES_EXEGGCUTE
    learnset MOVE_ABSORB, 1
    learnset MOVE_HYPNOSIS, 5
    learnset MOVE_BARRAGE, 8
    learnset MOVE_UPROAR, 16
    learnset MOVE_REFLECT, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_STUN_SPORE, 26
    learnset MOVE_POISON_POWDER, 28
    learnset MOVE_CONFUSION, 30
    learnset MOVE_BULLET_SEED, 34
    learnset MOVE_SLEEP_POWDER, 36
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_NATURAL_GIFT, 45
    learnset MOVE_WORRY_SEED, 48
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_SOLAR_BEAM, 54
    learnset MOVE_BESTOW, 56
    terminatelearnset

levelup SPECIES_EXEGGUTOR
    learnset MOVE_STOMP, 1
    learnset MOVE_SEED_BOMB, 5
    learnset MOVE_PSYSHOCK, 8
    learnset MOVE_WOOD_HAMMER, 16
    learnset MOVE_LEAF_STORM, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_CONFUSION, 20
    learnset MOVE_SYNTHESIS, 26
    learnset MOVE_BULLET_SEED, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_WORRY_SEED, 38
    learnset MOVE_SOLAR_BEAM, 42
    learnset MOVE_ABSORB, 45
    learnset MOVE_HYPNOSIS, 48
    learnset MOVE_REFLECT, 52
    learnset MOVE_LEECH_SEED, 54
    learnset MOVE_BARRAGE, 56
    learnset MOVE_EGG_BOMB, 58
    terminatelearnset

levelup SPECIES_CUBONE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BONE_CLUB, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_LEER, 16
    learnset MOVE_FALSE_SWIPE, 20
    learnset MOVE_RAGE, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_FLING, 30
    learnset MOVE_RETALIATE, 34
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_BONEMERANG, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_BONE_RUSH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_MAROWAK
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_BONE_CLUB, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_LEER, 20
    learnset MOVE_RAGE, 26
    learnset MOVE_FLING, 28
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_BONEMERANG, 36
    learnset MOVE_RETALIATE, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_BONE_RUSH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_HITMONLEE
    learnset MOVE_ROLLING_KICK, 1
    learnset MOVE_ROLLING_KICK, 20
    learnset MOVE_LOW_KICK, 26
    learnset MOVE_MEGA_KICK, 34
    learnset MOVE_REVENGE, 36
	learnset MOVE_BLAZE_KICK, 40
    learnset MOVE_ROLLING_KICK, 44
    learnset MOVE_JUMP_KICK, 48
	learnset MOVE_LASER_FOCUS, 53
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_HIGH_JUMP_KICK, 65
    terminatelearnset

levelup SPECIES_HITMONCHAN
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_COMET_PUNCH, 20
    learnset MOVE_MACH_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_SKY_UPPERCUT, 38
    learnset MOVE_BULLET_PUNCH, 44
    learnset MOVE_SHADOW_PUNCH, 50
    learnset MOVE_MEGA_PUNCH, 55
    learnset MOVE_CLOSE_COMBAT, 62
    terminatelearnset

levelup SPECIES_LICKITUNG
    learnset MOVE_LICK, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_WRAP, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_DISABLE, 16
    learnset MOVE_STOMP, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_ME_FIRST, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_REFRESH, 38
    learnset MOVE_POWER_WHIP, 42
    learnset MOVE_WRING_OUT, 45
    terminatelearnset

levelup SPECIES_KOFFING
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SMOG, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_CLEAR_SMOG, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SLUDGE, 20
    learnset MOVE_HAZE, 26
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_GYRO_BALL, 30
    learnset MOVE_SLUDGE_BOMB, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_BELCH, 38
    learnset MOVE_EXPLOSION, 42
    learnset MOVE_MEMENTO, 45
    learnset MOVE_DESTINY_BOND, 48
    terminatelearnset

levelup SPECIES_WEEZING
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_HEAT_WAVE, 5
    learnset MOVE_POISON_GAS, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_SMOG, 12
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_SLUDGE, 28
    learnset MOVE_HAZE, 30
    learnset MOVE_SELF_DESTRUCT, 34
    learnset MOVE_GYRO_BALL, 36
    learnset MOVE_SLUDGE_BOMB, 38
    learnset MOVE_TOXIC, 42
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_BELCH, 48
    learnset MOVE_DESTINY_BOND, 52
    learnset MOVE_MEMENTO, 54
    terminatelearnset

levelup SPECIES_RHYHORN
    learnset MOVE_TACKLE, 1
    learnset MOVE_HORN_ATTACK, 8
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_ROCK_BLAST, 30
    learnset MOVE_DRILL_RUN, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_MEGAHORN, 45
    learnset MOVE_HORN_DRILL, 48
    terminatelearnset

levelup SPECIES_RHYDON
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_HORN_DRILL, 16
    learnset MOVE_HORN_ATTACK, 20
    learnset MOVE_FURY_ATTACK, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_STOMP, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_ROCK_BLAST, 36
    learnset MOVE_DRILL_RUN, 38
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_MEGAHORN, 52
    terminatelearnset

levelup SPECIES_CHANSEY
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_COVET, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_POUND, 16
    learnset MOVE_COPYCAT, 20
    learnset MOVE_DEFENSE_CURL, 26
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_GROWL, 30
    learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_REFRESH, 38
    learnset MOVE_LIFE_DEW, 42
    learnset MOVE_DOUBLE_SLAP, 45
    learnset MOVE_BESTOW, 48
    learnset MOVE_SING, 52
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_FLING, 56
    learnset MOVE_SOFT_BOILED, 58
    learnset MOVE_HELPING_HAND, 60
    learnset MOVE_HEAL_PULSE, 65
    learnset MOVE_LIGHT_SCREEN, 68
    learnset MOVE_EGG_BOMB, 70
    learnset MOVE_LAST_RESORT, 74
    learnset MOVE_HEALING_WISH, 76
    terminatelearnset

levelup SPECIES_TANGELA
    learnset MOVE_ABSORB, 1
    learnset MOVE_BIND, 5
    learnset MOVE_INGRAIN, 8
    learnset MOVE_CONSTRICT, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_STUN_SPORE, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_POISON_POWDER, 28
    learnset MOVE_SLEEP_POWDER, 30
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_ANCIENT_POWER, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_NATURAL_GIFT, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_TICKLE, 48
    learnset MOVE_WRING_OUT, 52
    learnset MOVE_POWER_WHIP, 54
    terminatelearnset

levelup SPECIES_KANGASKHAN
    learnset MOVE_POUND, 1
    learnset MOVE_COMET_PUNCH, 8
    learnset MOVE_LEER, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_BITE, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_RAGE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_MEGA_PUNCH, 38
    learnset MOVE_CHIP_AWAY, 42
    learnset MOVE_DIZZY_PUNCH, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_SUCKER_PUNCH, 52
    learnset MOVE_ENDURE, 54
    learnset MOVE_REVERSAL, 56
    learnset MOVE_OUTRAGE, 58
    learnset MOVE_LAST_RESORT, 60
    terminatelearnset

levelup SPECIES_HORSEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TWISTER, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_FOCUS_ENERGY, 26
    learnset MOVE_OCTAZOOKA, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_SEADRA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TWISTER, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_FOCUS_ENERGY, 26
    learnset MOVE_OCTAZOOKA, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_GOLDEEN
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_HORN_ATTACK, 12
    learnset MOVE_TRIPLE_DIVE, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_AQUA_CUTTER, 26
    learnset MOVE_POISON_JAB, 30
    learnset MOVE_WATERFALL, 34
    learnset MOVE_SOAK, 38
    learnset MOVE_MEGAHORN, 42
    terminatelearnset

levelup SPECIES_SEAKING
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_HORN_ATTACK, 12
    learnset MOVE_TRIPLE_DIVE, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_AQUA_CUTTER, 26
    learnset MOVE_POISON_JAB, 30
    learnset MOVE_WATERFALL, 34
    learnset MOVE_SOAK, 38
	learnset MOVE_DRILL_RUN, 42
    learnset MOVE_MEGAHORN, 46
	learnset MOVE_FLIP_TURN, 52
    terminatelearnset

levelup SPECIES_STARYU
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_PSYWAVE, 12
    learnset MOVE_SWIFT, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_CAMOUFLAGE, 28
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_GYRO_BALL, 36
    learnset MOVE_BRINE, 38
    learnset MOVE_RECOVER, 42
    learnset MOVE_REFLECT_TYPE, 45
    learnset MOVE_POWER_GEM, 48
    learnset MOVE_LIGHT_SCREEN, 52
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_SURF, 56
    learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset

levelup SPECIES_STARMIE
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_BRINE, 12
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_POWER_GEM, 20
    learnset MOVE_PSYCHIC, 26
    learnset MOVE_SURF, 28
    learnset MOVE_RECOVER, 30
    learnset MOVE_HYDRO_PUMP, 36
    learnset MOVE_TACKLE, 38
    learnset MOVE_HARDEN, 42
    learnset MOVE_WATER_GUN, 45
    learnset MOVE_CONFUSE_RAY, 48
    learnset MOVE_SPOTLIGHT, 52
    terminatelearnset

levelup SPECIES_MR_MIME
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_POUND, 12
    learnset MOVE_COPYCAT, 16
    learnset MOVE_ENCORE, 26
    learnset MOVE_MAGICAL_LEAF, 30
    learnset MOVE_CONFUSION, 36
    learnset MOVE_MEDITATE, 38
    learnset MOVE_DOUBLE_SLAP, 42
    learnset MOVE_PSYWAVE, 45
    learnset MOVE_PROTECT, 48
    learnset MOVE_MIMIC, 52
    learnset MOVE_PSYBEAM, 54
    learnset MOVE_RECYCLE, 56
    learnset MOVE_ROLE_PLAY, 58
    learnset MOVE_LIGHT_SCREEN, 60
    learnset MOVE_REFLECT, 65
    learnset MOVE_SUCKER_PUNCH, 74
    learnset MOVE_SAFEGUARD, 76
    learnset MOVE_PSYCHIC, 80
    learnset MOVE_DAZZLING_GLEAM, 80
    learnset MOVE_TEETER_DANCE, 80
    terminatelearnset

levelup SPECIES_SCYTHER
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_DOUBLE_HIT, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_X_SCISSOR, 36
    terminatelearnset

levelup SPECIES_JYNX
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LICK, 5
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_POWDER_SNOW, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_SING, 17
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_EXTRASENSORY, 26
    learnset MOVE_ICY_WIND, 29
    learnset MOVE_ENCORE, 34
    learnset MOVE_ICE_BEAM, 39
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_LOVELY_KISS, 49
    learnset MOVE_BLIZZARD, 54
terminatelearnset


levelup SPECIES_ELECTABUZZ
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_FLASH, 8
    learnset MOVE_KARATE_CHOP, 11
    learnset MOVE_SHOCK_WAVE, 14
    learnset MOVE_THUNDER_WAVE, 17
    learnset MOVE_SCREECH, 20
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_THUNDER_PUNCH, 26
    learnset MOVE_ELECTROWEB, 29
    learnset MOVE_FEINT, 34
    learnset MOVE_THUNDERBOLT, 39
    learnset MOVE_CROSS_CHOP, 44
    learnset MOVE_WILD_CHARGE, 49
    learnset MOVE_THUNDER, 54
terminatelearnset


levelup SPECIES_MAGMAR
    learnset MOVE_SMOG, 1
    learnset MOVE_LEER, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_FLAME_WHEEL, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_FIRE_PUNCH, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_LOW_KICK, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_FIRE_BLAST, 52
    learnset MOVE_HYPER_BEAM, 54
    terminatelearnset

levelup SPECIES_PINSIR
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_BIND, 16
    learnset MOVE_SEISMIC_TOSS, 12
    learnset MOVE_REVENGE, 16
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_VITAL_THROW, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_STORM_THROW, 34
    learnset MOVE_X_SCISSOR, 36
    learnset MOVE_STRENGTH, 38
    learnset MOVE_SUBMISSION, 42
    learnset MOVE_THRASH, 48
    learnset MOVE_GUILLOTINE, 52
    learnset MOVE_SUPERPOWER, 54
    terminatelearnset

levelup SPECIES_TAUROS
    learnset MOVE_TACKLE, 1
    learnset MOVE_PAYBACK, 16
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_HORN_ATTACK, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_RAGING_BULL, 28
    learnset MOVE_REST, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_THRASH, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_GIGA_IMPACT, 42
    terminatelearnset

levelup SPECIES_MAGIKARP
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_FLAIL, 8
    terminatelearnset

levelup SPECIES_GYARADOS
    learnset MOVE_BITE, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_SPLASH, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_LEER, 12
    learnset MOVE_TWISTER, 16
    learnset MOVE_THRASH, 20
    learnset MOVE_WHIRLPOOL, 26
    learnset MOVE_BRINE, 28
    learnset MOVE_ICE_FANG, 30
    learnset MOVE_WATERFALL, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_DRAGON_RAGE, 45
    learnset MOVE_HYDRO_PUMP, 54
    learnset MOVE_HURRICANE, 56
    learnset MOVE_HYPER_BEAM, 58
    terminatelearnset

levelup SPECIES_LAPRAS
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_SING, 8
    learnset MOVE_MIST, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_ICE_SHARD, 16
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_BRINE, 30
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_PERISH_SONG, 42
    learnset MOVE_HYDRO_PUMP, 45
    learnset MOVE_SHEER_COLD, 48
    terminatelearnset

levelup SPECIES_DITTO
    learnset MOVE_TRANSFORM, 1
    terminatelearnset

levelup SPECIES_EEVEE
    learnset MOVE_COVET, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_SWIFT, 28
    learnset MOVE_REFRESH, 30
    learnset MOVE_BITE, 34
    learnset MOVE_COPYCAT, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_CHARM, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_TRUMP_CARD, 52
    learnset MOVE_LAST_RESORT, 54
    terminatelearnset

levelup SPECIES_VAPOREON
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_COVET, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_BITE, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_HELPING_HAND, 30
    learnset MOVE_TACKLE, 34
    learnset MOVE_GROWL, 36
    learnset MOVE_SAND_ATTACK, 42
    learnset MOVE_QUICK_ATTACK, 45
    learnset MOVE_BABY_DOLL_EYES, 48
    learnset MOVE_WATER_PULSE, 52
    learnset MOVE_AURORA_BEAM, 54
    learnset MOVE_HAZE, 56
    learnset MOVE_AQUA_RING, 58
    learnset MOVE_MUDDY_WATER, 65
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_LAST_RESORT, 70
    terminatelearnset

levelup SPECIES_JOLTEON
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_COVET, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_BITE, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_HELPING_HAND, 30
    learnset MOVE_TACKLE, 34
    learnset MOVE_GROWL, 36
    learnset MOVE_SAND_ATTACK, 42
    learnset MOVE_QUICK_ATTACK, 45
    learnset MOVE_BABY_DOLL_EYES, 48
    learnset MOVE_DOUBLE_KICK, 52
    learnset MOVE_THUNDER_FANG, 54
    learnset MOVE_THUNDER_WAVE, 56
    learnset MOVE_PIN_MISSILE, 58
    learnset MOVE_DISCHARGE, 65
    learnset MOVE_THUNDER, 68
    learnset MOVE_LAST_RESORT, 70
    terminatelearnset

levelup SPECIES_FLAREON
    learnset MOVE_EMBER, 1
    learnset MOVE_COVET, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_COPYCAT, 16
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_CHARM, 20
    learnset MOVE_DOUBLE_EDGE, 26
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_TACKLE, 30
    learnset MOVE_GROWL, 34
    learnset MOVE_SAND_ATTACK, 38
    learnset MOVE_QUICK_ATTACK, 42
    learnset MOVE_BABY_DOLL_EYES, 45
    learnset MOVE_BITE, 48
    learnset MOVE_FIRE_FANG, 52
    learnset MOVE_SMOG, 54
    learnset MOVE_FIRE_SPIN, 56
    learnset MOVE_SCARY_FACE, 58
    learnset MOVE_LAVA_PLUME, 60
    learnset MOVE_FLARE_BLITZ, 65
    learnset MOVE_LAST_RESORT, 68
    terminatelearnset

levelup SPECIES_PORYGON
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 5
    learnset MOVE_CONVERSION_2, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_MAGNET_RISE, 20
    learnset MOVE_RECYCLE, 26
    learnset MOVE_RECOVER, 30
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_LOCK_ON, 42
    learnset MOVE_MAGIC_COAT, 45
    learnset MOVE_ZAP_CANNON, 48
    terminatelearnset

levelup SPECIES_OMANYTE
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_BITE, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_BRINE, 15
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_TICKLE, 25
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_SURF, 35
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_PROTECT, 45
    learnset MOVE_POWER_GEM, 50
    learnset MOVE_HYDRO_PUMP, 55
terminatelearnset

levelup SPECIES_OMASTAR
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_BITE, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_BRINE, 15
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_TICKLE, 25
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_SURF, 35
    learnset MOVE_CRUNCH, 40
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_PROTECT, 47
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_HYDRO_PUMP, 60
terminatelearnset

levelup SPECIES_KABUTO
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_LEER, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_ENDURE, 26
    learnset MOVE_BRINE, 28
    learnset MOVE_MEGA_DRAIN, 30
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_PROTECT, 36
    learnset MOVE_LEECH_LIFE, 38
    learnset MOVE_METAL_SOUND, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_WRING_OUT, 48
    learnset MOVE_STONE_EDGE, 52
    terminatelearnset

levelup SPECIES_KABUTOPS
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_FEINT, 8
    learnset MOVE_ABSORB, 16
    learnset MOVE_HARDEN, 12
    learnset MOVE_SCRATCH, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_LEER, 26
    learnset MOVE_MUD_SHOT, 28
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_ENDURE, 34
    learnset MOVE_BRINE, 36
    learnset MOVE_MEGA_DRAIN, 38
    learnset MOVE_ANCIENT_POWER, 42
    learnset MOVE_PROTECT, 45
    learnset MOVE_LEECH_LIFE, 48
    learnset MOVE_METAL_SOUND, 52
    learnset MOVE_LIQUIDATION, 54
    learnset MOVE_WRING_OUT, 56
    learnset MOVE_STONE_EDGE, 58
    terminatelearnset

levelup SPECIES_AERODACTYL
    learnset MOVE_BITE, 1
    learnset MOVE_ANCIENT_POWER, 5
    learnset MOVE_IRON_HEAD, 8
    learnset MOVE_ICE_FANG, 16
    learnset MOVE_FIRE_FANG, 12
    learnset MOVE_THUNDER_FANG, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_SUPERSONIC, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_SKY_DROP, 48
    learnset MOVE_HYPER_BEAM, 52
    learnset MOVE_GIGA_IMPACT, 54
    terminatelearnset

levelup SPECIES_SNORLAX
    learnset MOVE_RECYCLE, 1
    learnset MOVE_COVET, 5
    learnset MOVE_SWALLOW, 16
    learnset MOVE_SCREECH, 12
    learnset MOVE_FLING, 16
    learnset MOVE_METRONOME, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_LAST_RESORT, 28
    learnset MOVE_LICK, 30
    learnset MOVE_TACKLE, 34
    learnset MOVE_DEFENSE_CURL, 36
    learnset MOVE_BLOCK, 38
    learnset MOVE_YAWN, 42
    learnset MOVE_BITE, 45
    learnset MOVE_CHIP_AWAY, 48
    learnset MOVE_REST, 52
    learnset MOVE_SNORE, 54
    learnset MOVE_SLEEP_TALK, 58
    learnset MOVE_BODY_SLAM, 60
    learnset MOVE_CRUNCH, 65
    learnset MOVE_ROLLOUT, 68
    learnset MOVE_HEAVY_SLAM, 70
    learnset MOVE_HAMMER_ARM, 74
    learnset MOVE_GIGA_IMPACT, 80
    learnset MOVE_HIGH_HORSEPOWER, 80
    learnset MOVE_BELCH, 80
    terminatelearnset

levelup SPECIES_ARTICUNO
    learnset MOVE_GUST, 1
    learnset MOVE_MIST, 5
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_ICE_SHARD, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_REFLECT, 20
    learnset MOVE_FREEZE_DRY, 26
    learnset MOVE_MIND_READER, 28
    learnset MOVE_TAILWIND, 30
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_ROOST, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_HURRICANE, 45
    learnset MOVE_SHEER_COLD, 48
    terminatelearnset

levelup SPECIES_ZAPDOS
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_WAVE, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_PLUCK, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_CHARGE, 20
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_ROOST, 38
    learnset MOVE_THUNDER, 42
    learnset MOVE_MAGNETIC_FLUX, 45
    learnset MOVE_ZAP_CANNON, 48
    terminatelearnset

levelup SPECIES_MOLTRES
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 5
    learnset MOVE_WING_ATTACK, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_INCINERATE, 28
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_ENDURE, 36
    learnset MOVE_HEAT_WAVE, 38
    learnset MOVE_ROOST, 45
    learnset MOVE_SOLAR_BEAM, 48
    learnset MOVE_HURRICANE, 52
    learnset MOVE_SKY_ATTACK, 54
    learnset MOVE_BURN_UP, 56
    terminatelearnset

levelup SPECIES_DRATINI
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TWISTER, 8
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_DRAGON_RAGE, 12
    learnset MOVE_DRAGON_TAIL, 16
    learnset MOVE_SLAM, 26
    learnset MOVE_AQUA_TAIL, 28
    learnset MOVE_DRAGON_RUSH, 30
    learnset MOVE_SAFEGUARD, 34
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_DRAGONAIR
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TWISTER, 8
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_DRAGON_RAGE, 12
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_SLAM, 26
    learnset MOVE_AQUA_TAIL, 28
    learnset MOVE_DRAGON_RUSH, 30
    learnset MOVE_SAFEGUARD, 34
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_DRAGONITE
    learnset MOVE_HURRICANE, 1
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_ROOST, 8
    learnset MOVE_EXTREME_SPEED, 16
    learnset MOVE_FIRE_PUNCH, 12
    learnset MOVE_THUNDER_PUNCH, 16
    learnset MOVE_WRAP, 20
    learnset MOVE_LEER, 26
    learnset MOVE_TWISTER, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_DRAGON_RAGE, 34
    learnset MOVE_DRAGON_TAIL, 38
    learnset MOVE_SLAM, 42
    learnset MOVE_AQUA_TAIL, 45
    learnset MOVE_DRAGON_RUSH, 48
    learnset MOVE_SAFEGUARD, 52
    learnset MOVE_OUTRAGE, 56
    learnset MOVE_HYPER_BEAM, 60
    terminatelearnset

levelup SPECIES_MEWTWO
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_LASER_FOCUS, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_CONFUSION, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_PSYCH_UP, 28
    learnset MOVE_PSYCHO_CUT, 30
    learnset MOVE_MIRACLE_EYE, 34
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_FUTURE_SIGHT, 48
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_RECOVER, 56
    learnset MOVE_MIST, 58
    learnset MOVE_PSYSTRIKE, 60
    learnset MOVE_ME_FIRST, 65
    terminatelearnset

levelup SPECIES_MEW
    learnset MOVE_POUND, 1
    learnset MOVE_REFLECT_TYPE, 5
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_LIFE_DEW, 16
    learnset MOVE_METRONOME, 26
    learnset MOVE_IMPRISON, 28
    learnset MOVE_TRANSFORM, 30
    learnset MOVE_AURA_SPHERE, 34
    learnset MOVE_PSYCHIC, 36
    terminatelearnset

levelup SPECIES_CHIKORITA
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_RAZOR_LEAF, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_SYNTHESIS, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_SWEET_SCENT, 28
    learnset MOVE_LIGHT_SCREEN, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_SAFEGUARD, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_AROMATHERAPY, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_BAYLEEF
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_POWDER, 5
    learnset MOVE_RAZOR_LEAF, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_SYNTHESIS, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_SWEET_SCENT, 28
    learnset MOVE_LIGHT_SCREEN, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_SAFEGUARD, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_AROMATHERAPY, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_MEGANIUM
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PETAL_BLIZZARD, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_TACKLE, 16
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_REFLECT, 26
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_LEECH_SEED, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_SAFEGUARD, 42
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_AROMATHERAPY, 48
    learnset MOVE_SOLAR_BEAM, 52
    terminatelearnset

levelup SPECIES_CYNDAQUIL
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_DEFENSE_CURL, 20
    learnset MOVE_FLAME_CHARGE, 26
    learnset MOVE_SWIFT, 28
    learnset MOVE_LAVA_PLUME, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_INFERNO, 36
    learnset MOVE_ROLLOUT, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_ERUPTION, 48
    terminatelearnset

levelup SPECIES_QUILAVA
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_DEFENSE_CURL, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_LAVA_PLUME, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_INFERNO, 36
    learnset MOVE_ROLLOUT, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_ERUPTION, 48
    terminatelearnset

levelup SPECIES_TYPHLOSION
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_ERUPTION, 8
    learnset MOVE_GYRO_BALL, 16
    learnset MOVE_LEER, 12
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_TACKLE, 20
    learnset MOVE_QUICK_ATTACK, 26
    learnset MOVE_FLAME_WHEEL, 28
    learnset MOVE_DEFENSE_CURL, 30
    learnset MOVE_SWIFT, 34
    learnset MOVE_FLAME_CHARGE, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_INFERNO, 45
    learnset MOVE_ROLLOUT, 48
    learnset MOVE_OVERHEAT, 52
    terminatelearnset

levelup SPECIES_TOTODILE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_RAGE, 16
    learnset MOVE_BITE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_CHIP_AWAY, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_THRASH, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_CROCONAW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_RAGE, 16
    learnset MOVE_BITE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_CHIP_AWAY, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_THRASH, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_FERALIGATR
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_RAGE, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_FLAIL, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_SCREECH, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_AQUA_TAIL, 45
    learnset MOVE_SUPERPOWER, 48
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_SENTRET
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_THUNDER_PUNCH, 16
    learnset MOVE_FOLLOW_ME, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_SHADOW_CLAW, 40
    learnset MOVE_HYPER_VOICE, 45
    terminatelearnset

levelup SPECIES_FURRET
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_THUNDER_PUNCH, 16
    learnset MOVE_FOLLOW_ME, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_SHADOW_CLAW, 40
    learnset MOVE_HYPER_VOICE, 45
	learnset MOVE_DOUBLE_EDGE, 50
    terminatelearnset

levelup SPECIES_HOOTHOOT
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_DEFOG, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_EXTRASENSORY, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_ROOST, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_HYPNOSIS, 42
    learnset MOVE_DREAM_EATER, 45
    terminatelearnset

levelup SPECIES_NOCTOWL
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PECK, 8
    learnset MOVE_SKY_ATTACK, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_REFLECT, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_EXTRASENSORY, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_ROOST, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_HYPNOSIS, 42
    learnset MOVE_DREAM_EATER, 45
    terminatelearnset

levelup SPECIES_LEDYBA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_REFLECT, 12
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_POUNCE, 16
    learnset MOVE_AERIAL_ACE, 19
    learnset MOVE_COMET_PUNCH, 22
    learnset MOVE_DEFOG, 26
    learnset MOVE_TAILWIND, 29
    learnset MOVE_ENCORE, 32
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_BUG_BUZZ, 40
terminatelearnset

levelup SPECIES_LEDIAN
	learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_REFLECT, 12
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_POUNCE, 16
	learnset MOVE_MACH_PUNCH, 19
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_COMET_PUNCH, 24
    learnset MOVE_DEFOG, 26
    learnset MOVE_TAILWIND, 29
    learnset MOVE_ENCORE, 32
    learnset MOVE_KNOCK_OFF, 35
    learnset MOVE_LUNGE, 40
	learnset MOVE_BUG_BUZZ, 44
	learnset MOVE_DIZZY_PUNCH, 48
terminatelearnset


levelup SPECIES_SPINARAK
    learnset MOVE_POISON_STING, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_POUNCE, 8
    learnset MOVE_POISON_FANG, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_NIGHT_SHADE, 19
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_ELECTROWEB, 31
    learnset MOVE_U_TURN, 36
    learnset MOVE_LEECH_LIFE, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_CROSS_POISON, 48
    learnset MOVE_STICKY_WEB, 52
    learnset MOVE_LUNGE, 54
    terminatelearnset

levelup SPECIES_ARIADOS
    learnset MOVE_POISON_STING, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_POUNCE, 8
    learnset MOVE_POISON_FANG, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_NIGHT_SHADE, 19
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_ELECTROWEB, 31
    learnset MOVE_U_TURN, 36
    learnset MOVE_LEECH_LIFE, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_CROSS_POISON, 48
    learnset MOVE_STICKY_WEB, 55
    learnset MOVE_LUNGE, 60
    terminatelearnset

levelup SPECIES_CROBAT
    learnset MOVE_CROSS_POISON, 1
    learnset MOVE_TAILWIND, 5
    learnset MOVE_TOXIC, 8
    learnset MOVE_SCREECH, 16
    learnset MOVE_ABSORB, 12
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_ASTONISH, 20
    learnset MOVE_MEAN_LOOK, 26
    learnset MOVE_BITE, 28
    learnset MOVE_WING_ATTACK, 30
    learnset MOVE_POISON_FANG, 34
    learnset MOVE_AIR_CUTTER, 36
    learnset MOVE_SWIFT, 38
    learnset MOVE_QUICK_GUARD, 42
    learnset MOVE_CONFUSE_RAY, 45
    learnset MOVE_HAZE, 48
    learnset MOVE_VENOSHOCK, 52
    learnset MOVE_LEECH_LIFE, 54
    learnset MOVE_AIR_SLASH, 56
    terminatelearnset

levelup SPECIES_CHINCHOU
    learnset MOVE_BUBBLE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_FLASH, 6
    learnset MOVE_ELECTRO_BALL, 9
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_SHOCK_WAVE, 24
    learnset MOVE_SPARK, 23
    learnset MOVE_FLAIL, 28
    learnset MOVE_SIGNAL_BEAM, 32
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SURF, 39
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_HEAL_BELL, 45
    learnset MOVE_THUNDERBOLT, 47
    learnset MOVE_HYDRO_PUMP, 50
terminatelearnset

levelup SPECIES_LANTURN
    learnset MOVE_BUBBLE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_FLASH, 6
    learnset MOVE_ELECTRO_BALL, 9
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_SHOCK_WAVE, 23
    learnset MOVE_SPARK, 23
    learnset MOVE_FLAIL, 29
    learnset MOVE_SIGNAL_BEAM, 32
    learnset MOVE_DISCHARGE, 35
    learnset MOVE_SURF, 41
    learnset MOVE_ICE_BEAM, 44
    learnset MOVE_HEAL_BELL, 48
    learnset MOVE_THUNDERBOLT, 51
    learnset MOVE_HYDRO_PUMP, 55
terminatelearnset


levelup SPECIES_PICHU
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_CHARM, 8
    learnset MOVE_PLAY_NICE, 16
    learnset MOVE_SWEET_KISS, 12
    learnset MOVE_NUZZLE, 16
    learnset MOVE_THUNDER_WAVE, 26
    terminatelearnset

levelup SPECIES_CLEFFA
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 5
    learnset MOVE_COPYCAT, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_SING, 12
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_ENCORE, 20
    learnset MOVE_DISARMING_VOICE, 26
    learnset MOVE_MAGICAL_LEAF, 28
    terminatelearnset

levelup SPECIES_IGGLYBUFF
    learnset MOVE_SING, 1
    learnset MOVE_POUND, 5
    learnset MOVE_COPYCAT, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_DEFENSE_CURL, 12
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_DISARMING_VOICE, 20
    learnset MOVE_DISABLE, 26
    terminatelearnset

levelup SPECIES_TOGEPI
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 5
    learnset MOVE_CHARM, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_METRONOME, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_ENCORE, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_BESTOW, 30
    learnset MOVE_FOLLOW_ME, 34
    learnset MOVE_SAFEGUARD, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_AFTER_YOU, 42
    learnset MOVE_WISH, 45
    learnset MOVE_LAST_RESORT, 52
    terminatelearnset

levelup SPECIES_TOGETIC
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_POUND, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_CHARM, 20
    learnset MOVE_METRONOME, 26
    learnset MOVE_YAWN, 28
    learnset MOVE_ENCORE, 30
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_BESTOW, 36
    learnset MOVE_FOLLOW_ME, 38
    learnset MOVE_SAFEGUARD, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_AFTER_YOU, 48
    learnset MOVE_WISH, 52
    learnset MOVE_LAST_RESORT, 56
    terminatelearnset

levelup SPECIES_NATU
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_NIGHT_SHADE, 6
    learnset MOVE_CONFUSION, 12
    learnset MOVE_LUCKY_CHANT, 13
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_OMINOUS_WIND, 23
    learnset MOVE_WISH, 26
    learnset MOVE_PSYCHIC, 30
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_U_TURN, 40
    learnset MOVE_DEFOG, 44
    learnset MOVE_FUTURE_SIGHT, 50
terminatelearnset

levelup SPECIES_XATU
    learnset MOVE_TAILWIND, 1
    learnset MOVE_PSYCHO_SHIFT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_NIGHT_SHADE, 6
    learnset MOVE_CONFUSION, 12
    learnset MOVE_LUCKY_CHANT, 15
    learnset MOVE_AIR_CUTTER, 17
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_DRILL_PECK, 22
    learnset MOVE_OMINOUS_WIND, 24
    learnset MOVE_WISH, 29
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_U_TURN, 48
    learnset MOVE_DEFOG, 54
    learnset MOVE_ROOST, 58
    learnset MOVE_FUTURE_SIGHT, 63
terminatelearnset

levelup SPECIES_MAREEP
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_GROWL, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_HEAL_BELL, 29
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_SIGNAL_BEAM, 39
    learnset MOVE_POWER_GEM, 43
    learnset MOVE_THUNDERBOLT, 46
terminatelearnset

levelup SPECIES_FLAAFFY
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_GROWL, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_THUNDER_PUNCH, 19
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_HEAL_BELL, 33
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_SIGNAL_BEAM, 46
    learnset MOVE_POWER_GEM, 51
    learnset MOVE_THUNDERBOLT, 55
terminatelearnset

levelup SPECIES_AMPHAROS
    learnset MOVE_ELECTROWEB, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_GROWL, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_THUNDER_PUNCH, 19
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_HEAL_BELL, 34
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_DRAGON_BREATH, 44
    learnset MOVE_SIGNAL_BEAM, 48
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_THUNDERBOLT, 60
    learnset MOVE_DRAGON_PULSE, 66
terminatelearnset


levelup SPECIES_BELLOSSOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_WORRY_SEED, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_DRAINING_KISS, 24
    learnset MOVE_LUCKY_CHANT, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_MOONLIGHT, 40
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_MOONBLAST, 52
    learnset MOVE_TOXIC, 58
    learnset MOVE_STRENGTH_SAP, 64
terminatelearnset

levelup SPECIES_MARILL
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_CHARM, 5
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_SING, 10
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SLAM, 20
    learnset MOVE_COVET, 23
    learnset MOVE_AQUA_TAIL, 28
    learnset MOVE_AQUA_JET, 31
    learnset MOVE_DOUBLE_EDGE, 37
    learnset MOVE_SUPERPOWER, 40
    learnset MOVE_HYDRO_PUMP, 45
    learnset MOVE_PLAY_ROUGH, 48
terminatelearnset

levelup SPECIES_AZUMARILL
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_CHARM, 5
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_SING, 10
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SLAM, 21
    learnset MOVE_COVET, 25
    learnset MOVE_AQUA_TAIL, 30
    learnset MOVE_AQUA_JET, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_SUPERPOWER, 44
    learnset MOVE_HYDRO_PUMP, 50
    learnset MOVE_PLAY_ROUGH, 54
terminatelearnset

levelup SPECIES_SUDOWOODO
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_FLAIL, 8
    learnset MOVE_MIMIC, 11
    learnset MOVE_ACCELEROCK, 14 
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_LOW_KICK, 28
    learnset MOVE_FALSE_SURRENDER, 33
    learnset MOVE_THUNDER_PUNCH, 38
	learnset MOVE_ICE_PUNCH, 38
	learnset MOVE_FIRE_PUNCH, 38
	learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_SUCKER_PUNCH, 44
    learnset MOVE_WOOD_HAMMER, 48
    learnset MOVE_HAMMER_ARM, 53
    learnset MOVE_HEAD_SMASH, 60
    terminatelearnset

levelup SPECIES_POLITOED
    learnset MOVE_BOUNCE, 1
    learnset MOVE_SWAGGER, 5
    learnset MOVE_HYPER_VOICE, 8
    learnset MOVE_PERISH_SONG, 16
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_EARTH_POWER, 26
    learnset MOVE_HYDRO_PUMP, 28
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_WATER_GUN, 36
    learnset MOVE_HYPNOSIS, 38
    learnset MOVE_POUND, 42
    learnset MOVE_MUD_SHOT, 45
    learnset MOVE_DOUBLE_SLAP, 48
    terminatelearnset

levelup SPECIES_HOPPIP
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GUST, 12
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_HELPING_HAND, 27
    learnset MOVE_RAGE_POWDER, 31
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_U_TURN, 40
    learnset MOVE_WORRY_SEED, 44
    terminatelearnset

levelup SPECIES_SKIPLOOM
	learnset MOVE_ACROBATICS, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GUST, 12
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_HELPING_HAND, 27
    learnset MOVE_RAGE_POWDER, 31
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_U_TURN, 40
    learnset MOVE_WORRY_SEED, 44
    learnset MOVE_MEMENTO, 57
    terminatelearnset

levelup SPECIES_JUMPLUFF
	learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GUST, 12
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_HELPING_HAND, 27
    learnset MOVE_RAGE_POWDER, 31
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_U_TURN, 40
    learnset MOVE_WORRY_SEED, 44
    learnset MOVE_DAZZLING_GLEAM, 48
    learnset MOVE_ENERGY_BALL, 52
    learnset MOVE_MEMENTO, 57
	learnset MOVE_HURRICANE, 60
    terminatelearnset

levelup SPECIES_AIPOM
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_TICKLE, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_SCREECH, 28
    learnset MOVE_DOUBLE_HIT, 34
    learnset MOVE_FLING, 36
    learnset MOVE_LAST_RESORT, 42
    terminatelearnset

levelup SPECIES_SUNKERN
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEECH_SEED, 6
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_GIGA_DRAIN, 20
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_LEAF_STORM, 30
    learnset MOVE_SLUDGE_BOMB, 34
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_EARTH_POWER, 42
	learnset MOVE_CHLOROBLAST, 48
    terminatelearnset

levelup SPECIES_SUNFLORA
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEECH_SEED, 6
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_GIGA_DRAIN, 20
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_LEAF_STORM, 30
    learnset MOVE_SLUDGE_BOMB, 34
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_EARTH_POWER, 42
	learnset MOVE_CHLOROBLAST, 48
    terminatelearnset

levelup SPECIES_YANMA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FORESIGHT, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_SONIC_BOOM, 12
    learnset MOVE_DETECT, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_UPROAR, 26
    learnset MOVE_PURSUIT, 28
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_HYPNOSIS, 34
    learnset MOVE_WING_ATTACK, 36
    learnset MOVE_SCREECH, 38
    learnset MOVE_U_TURN, 42
    learnset MOVE_AIR_SLASH, 45
    learnset MOVE_BUG_BUZZ, 48
    terminatelearnset

levelup SPECIES_WOOPER
    learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_MUD_SHOT, 5
	learnset MOVE_WATER_GUN, 10
    learnset MOVE_AQUA_TAIL, 14
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_AQUA_TAIL, 28
    learnset MOVE_MUD_BOMB, 34
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_STONE_EDGE, 45
    learnset MOVE_EARTHQUAKE, 50
    terminatelearnset

levelup SPECIES_QUAGSIRE
    learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_MUD_SHOT, 5
	learnset MOVE_WATER_GUN, 10
    learnset MOVE_AQUA_TAIL, 14
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_AQUA_TAIL, 28
    learnset MOVE_MUD_BOMB, 34
	learnset MOVE_MUDDY_WATER, 40
	learnset MOVE_STONE_EDGE, 45
    learnset MOVE_EARTHQUAKE, 50
    terminatelearnset

levelup SPECIES_ESPEON
    learnset MOVE_CONFUSION, 1
    learnset MOVE_COVET, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_HELPING_HAND, 1
	learnset MOVE_PSYBEAM, 20
	learnset MOVE_CHARM, 23
	learnset MOVE_DRAINING_KISS, 27
    learnset MOVE_PSYSHOCK, 30
    learnset MOVE_BABY_DOLL_EYES, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_MORNING_SUN, 47
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_LAST_RESORT, 60
    terminatelearnset

levelup SPECIES_UMBREON
    learnset MOVE_THIEF, 1
    learnset MOVE_COVET, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SNARL, 20
	learnset MOVE_CHARM, 23
	learnset MOVE_CRUNCH, 27
    learnset MOVE_MOONLIGHT, 30
    learnset MOVE_BABY_DOLL_EYES, 33
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_SCREECH, 50
	learnset MOVE_DETECT, 54
    learnset MOVE_LAST_RESORT, 60
    terminatelearnset


levelup SPECIES_MURKROW
    learnset MOVE_PECK, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_PURSUIT, 8
    learnset MOVE_HAZE, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_TAUNT, 26
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_MEAN_LOOK, 30
    learnset MOVE_FOUL_PLAY, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_TORMENT, 42
    learnset MOVE_QUASH, 45
    terminatelearnset

levelup SPECIES_SLOWKING
    learnset MOVE_CHILLY_RECEPTION, 1
    learnset MOVE_FUTURE_SIGHT, 5
    learnset MOVE_GROWL, 16
    learnset MOVE_POWER_GEM, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_TACKLE, 26
    learnset MOVE_WATER_GUN, 28
    learnset MOVE_YAWN, 30
    learnset MOVE_CONFUSION, 34
    learnset MOVE_DISABLE, 36
    learnset MOVE_WATER_PULSE, 38
    learnset MOVE_HEADBUTT, 42
    learnset MOVE_SURF, 48
    learnset MOVE_SLACK_OFF, 52
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_PSYCH_UP, 56
    learnset MOVE_HEAL_PULSE, 60
    terminatelearnset

levelup SPECIES_MISDREAVUS
    learnset MOVE_GROWL, 1
    learnset MOVE_PSYWAVE, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_HEX, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_PAIN_SPLIT, 28
    learnset MOVE_PAYBACK, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_PERISH_SONG, 36
    learnset MOVE_GRUDGE, 38
    learnset MOVE_POWER_GEM, 42
    terminatelearnset

levelup SPECIES_UNOWN
    learnset MOVE_HIDDEN_POWER, 1
    terminatelearnset

levelup SPECIES_WOBBUFFET
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_MIRROR_COAT, 8
    learnset MOVE_COUNTER, 16
    learnset MOVE_SPLASH, 12
    learnset MOVE_CHARM, 16
    learnset MOVE_ENCORE, 20
    terminatelearnset

levelup SPECIES_GIRAFARIG
    learnset MOVE_ASTONISH, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_ODOR_SLEUTH, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_STOMP, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_PSYCHIC, 52
    terminatelearnset

levelup SPECIES_PINECO
    learnset MOVE_TACKLE, 1
	learnset MOVE_INFESTATION, 5
    learnset MOVE_BUG_BITE, 9
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_STRUGGLE_BUG, 20
    learnset MOVE_PAYBACK, 23
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_GYRO_BALL, 30
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset

levelup SPECIES_FORRETRESS
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 1
	learnset MOVE_INFESTATION, 5
    learnset MOVE_BUG_BITE, 9
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_STRUGGLE_BUG, 20
    learnset MOVE_PAYBACK, 23
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_GYRO_BALL, 30
	learnset MOVE_ZAP_CANNON, 36
	learnset MOVE_EXPLOSION, 40
    learnset MOVE_DOUBLE_EDGE, 44
	learnset MOVE_HEAVY_SLAM, 50
	learnset MOVE_ICE_SPINNER, 54
    terminatelearnset

levelup SPECIES_DUNSPARCE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_GLARE, 19
    learnset MOVE_ANCIENT_POWER, 23
    learnset MOVE_DRILL_RUN, 26
    learnset MOVE_YAWN, 29
    learnset MOVE_HYPER_DRILL, 34
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_DRAGON_RUSH, 44
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_AQUA_TAIL, 52
	learnset MOVE_BOOMBURST, 58
    terminatelearnset

levelup SPECIES_GLIGAR
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_TWINEEDLE, 14
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_NIGHT_SLASH, 25
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_FLY, 30
    learnset MOVE_X_SCISSOR, 34
    learnset MOVE_KNOCK_OFF, 39
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_ACROBATICS, 52
    learnset MOVE_U_TURN, 60
terminatelearnset

levelup SPECIES_STEELIX
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SCREECH, 10
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_ROCK_TOMB, 14
    learnset MOVE_BLOCK, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_IRON_HEAD, 20
    learnset MOVE_SMACK_DOWN, 22
    learnset MOVE_SAND_TOMB, 25
    learnset MOVE_IRON_TAIL, 28
    learnset MOVE_DIG, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SELF_DESTRUCT, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_GYRO_BALL, 48
    learnset MOVE_EXPLOSION, 53
    learnset MOVE_EARTHQUAKE, 59
    learnset MOVE_HEAVY_SLAM, 64
    learnset MOVE_MAGNET_RISE, 70
terminatelearnset


levelup SPECIES_SNUBBULL
    learnset MOVE_BITE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_LICK, 5
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_FAKE_TEARS, 13
    learnset MOVE_SNARL, 18
    learnset MOVE_COVET, 18
	learnset MOVE_THUNDER_FANG, 23
	learnset MOVE_FIRE_FANG, 23
	learnset MOVE_ICE_FANG, 23
    learnset MOVE_ROAR, 28
    learnset MOVE_CHARM, 32
    learnset MOVE_SUBMISSION, 36
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_CRUNCH, 48
terminatelearnset

levelup SPECIES_GRANBULL
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_LICK, 5
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_FAKE_TEARS, 13
    learnset MOVE_SNARL, 18
    learnset MOVE_COVET, 18
	learnset MOVE_THUNDER_FANG, 23
	learnset MOVE_FIRE_FANG, 23
	learnset MOVE_ICE_FANG, 23
    learnset MOVE_ROAR, 28
    learnset MOVE_CHARM, 32
    learnset MOVE_SUBMISSION, 36
    learnset MOVE_CRUNCH, 40
    learnset MOVE_SUPERPOWER, 44
    learnset MOVE_PLAY_ROUGH, 49
    learnset MOVE_JAW_LOCK, 56
terminatelearnset


levelup SPECIES_QWILFISH
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_HYDRO_PUMP, 16
    learnset MOVE_DESTINY_BOND, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_HARDEN, 26
    learnset MOVE_BUBBLE, 30
    learnset MOVE_ROLLOUT, 34
    learnset MOVE_BRINE, 36
    learnset MOVE_REVENGE, 38
    learnset MOVE_PIN_MISSILE, 45
    learnset MOVE_SPIT_UP, 52
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_AQUA_TAIL, 58
    learnset MOVE_TOXIC, 60
    learnset MOVE_ACUPRESSURE, 65
    terminatelearnset

levelup SPECIES_SCIZOR
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_AIR_SLASH, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_LEER, 16
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_FALSE_SWIPE, 26
    learnset MOVE_FEINT, 28
    learnset MOVE_PURSUIT, 30
    learnset MOVE_METAL_CLAW, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FOCUS_ENERGY, 38
    learnset MOVE_SLASH, 42
    learnset MOVE_DOUBLE_HIT, 45
    learnset MOVE_RAZOR_WIND, 48
    learnset MOVE_X_SCISSOR, 54
    learnset MOVE_IRON_HEAD, 56
    learnset MOVE_LASER_FOCUS, 58
    learnset MOVE_NIGHT_SLASH, 60
    terminatelearnset

levelup SPECIES_SHUCKLE
    learnset MOVE_WRAP, 5
    learnset MOVE_STICKY_WEB, 8
    learnset MOVE_CONSTRICT, 16
    learnset MOVE_BIDE, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_ENCORE, 20
    learnset MOVE_STRUGGLE_BUG, 26
    learnset MOVE_ROCK_THROW, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_REST, 34
    learnset MOVE_BUG_BITE, 36
    learnset MOVE_GASTRO_ACID, 38
    learnset MOVE_ROCK_SLIDE, 48
    learnset MOVE_SHELL_SMASH, 54
    learnset MOVE_STONE_EDGE, 56
    terminatelearnset

levelup SPECIES_HERACROSS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ARM_THRUST, 8
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_NIGHT_SLASH, 12
    learnset MOVE_HORN_ATTACK, 16
    learnset MOVE_ENDURE, 20
    learnset MOVE_FEINT, 26
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_FURY_ATTACK, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_PIN_MISSILE, 42
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_THROAT_CHOP, 48
    learnset MOVE_THRASH, 52
    learnset MOVE_MEGAHORN, 54
    learnset MOVE_REVERSAL, 56
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_SNEASEL
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_BEAT_UP, 28
    learnset MOVE_SCREECH, 34
    learnset MOVE_SLASH, 36
    terminatelearnset

levelup SPECIES_TEDDIURSA
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_COVET, 5
    learnset MOVE_FLING, 8
    learnset MOVE_LICK, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_PAYBACK, 20
    learnset MOVE_SWEET_SCENT, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_PLAY_NICE, 30
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_REST, 38
    learnset MOVE_SNORE, 42
    learnset MOVE_THRASH, 45
    terminatelearnset

levelup SPECIES_URSARING
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_LICK, 8
    learnset MOVE_COVET, 16
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_PAYBACK, 20
    learnset MOVE_SWEET_SCENT, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_PLAY_NICE, 30
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_REST, 38
    learnset MOVE_SNORE, 42
    learnset MOVE_HIGH_HORSEPOWER, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_HAMMER_ARM, 52
    terminatelearnset

levelup SPECIES_SLUGMA
    learnset MOVE_YAWN, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_HARDEN, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_LAVA_PLUME, 34
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_RECOVER, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_EARTH_POWER, 48
    terminatelearnset

levelup SPECIES_MAGCARGO
    learnset MOVE_SHELL_SMASH, 1
    learnset MOVE_EARTH_POWER, 5
    learnset MOVE_YAWN, 8
    learnset MOVE_SMOG, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_HARDEN, 20
    learnset MOVE_INCINERATE, 26
    learnset MOVE_CLEAR_SMOG, 28
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_FLAME_BURST, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_FLAMETHROWER, 52
    terminatelearnset

levelup SPECIES_SWINUB
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_MUD_SPORT, 16
    learnset MOVE_POWDER_SNOW, 12
    learnset MOVE_MUD_BOMB, 16
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_ENDURE, 26
    learnset MOVE_FLAIL, 28
    learnset MOVE_ICY_WIND, 30
    learnset MOVE_MIST, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_BLIZZARD, 45
    terminatelearnset

levelup SPECIES_PILOSWINE
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_PECK, 26
    learnset MOVE_ODOR_SLEUTH, 28
    learnset MOVE_MUD_SPORT, 30
    learnset MOVE_ICE_SHARD, 34
    learnset MOVE_MUD_BOMB, 36
    learnset MOVE_ENDURE, 38
    learnset MOVE_ICY_WIND, 42
    learnset MOVE_MIST, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_THRASH, 56
    learnset MOVE_BLIZZARD, 58
    terminatelearnset

levelup SPECIES_CORSOLA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_REFRESH, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_SPIKE_CANNON, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_LUCKY_CHANT, 30
    learnset MOVE_ENDURE, 34
    learnset MOVE_BRINE, 36
    learnset MOVE_RECOVER, 42
    learnset MOVE_ROCK_BLAST, 45
    learnset MOVE_LIFE_DEW, 48
    learnset MOVE_FLAIL, 52
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_EARTH_POWER, 56
    learnset MOVE_MIRROR_COAT, 58
    terminatelearnset

levelup SPECIES_REMORAID
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_PSYBEAM, 8
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_LOCK_ON, 20
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_BULLET_SEED, 30
    learnset MOVE_ICE_BEAM, 34
    learnset MOVE_HYDRO_PUMP, 36
    learnset MOVE_SOAK, 38
    learnset MOVE_HYPER_BEAM, 42
    terminatelearnset

levelup SPECIES_OCTILLERY
    learnset MOVE_OCTAZOOKA, 1
    learnset MOVE_GUNK_SHOT, 5
    learnset MOVE_ROCK_BLAST, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_WRAP, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_FOCUS_ENERGY, 26
    learnset MOVE_CONSTRICT, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_AURORA_BEAM, 34
    learnset MOVE_BUBBLE_BEAM, 36
    learnset MOVE_LOCK_ON, 38
    learnset MOVE_WRING_OUT, 42
    learnset MOVE_SIGNAL_BEAM, 45
    learnset MOVE_BULLET_SEED, 48
    learnset MOVE_ICE_BEAM, 52
    learnset MOVE_HYDRO_PUMP, 54
    learnset MOVE_SOAK, 56
    learnset MOVE_HYPER_BEAM, 58
    terminatelearnset

levelup SPECIES_DELIBIRD
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
	learnset MOVE_CHARGE, 9
    learnset MOVE_TWISTER, 12
	learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_DISCHARGE, 24
    learnset MOVE_AIR_SLASH, 27
	learnset MOVE_VOLT_SWITCH, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_CRUNCH, 40
    learnset MOVE_THUNDERBOLT, 43
    learnset MOVE_FLASH_CANNON, 47
    learnset MOVE_THUNDERCLAP, 50
    learnset MOVE_CLANGOROUS_SOUL, 53
	learnset MOVE_POWER_GEM, 58
	learnset MOVE_DYNAMAX_CANNON, 67
    terminatelearnset

levelup SPECIES_MANTINE
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_BULLET_SEED, 5
    learnset MOVE_ROOST, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_SIGNAL_BEAM, 26
    learnset MOVE_BUBBLE, 28
    learnset MOVE_BUBBLE_BEAM, 30
    learnset MOVE_CONFUSE_RAY, 34
    learnset MOVE_WATER_PULSE, 36
    learnset MOVE_WIDE_GUARD, 38
    learnset MOVE_HEADBUTT, 42
    learnset MOVE_AIR_SLASH, 48
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_AQUA_RING, 54
    learnset MOVE_BOUNCE, 56
    learnset MOVE_HYDRO_PUMP, 58
    terminatelearnset

levelup SPECIES_SKARMORY
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_FEINT, 26
    learnset MOVE_SWIFT, 30
    learnset MOVE_STEEL_WING, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_DRILL_PECK, 38
    learnset MOVE_AUTOTOMIZE, 45
    learnset MOVE_METAL_SOUND, 48
    learnset MOVE_AIR_SLASH, 52
    learnset MOVE_BRAVE_BIRD, 56
    learnset MOVE_NIGHT_SLASH, 58
    terminatelearnset

levelup SPECIES_HOUNDOUR
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOG, 16
    learnset MOVE_ROAR, 12
    learnset MOVE_BITE, 16
    learnset MOVE_ODOR_SLEUTH, 20
    learnset MOVE_BEAT_UP, 26
    learnset MOVE_FIRE_FANG, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_FOUL_PLAY, 36
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_INFERNO, 48
    terminatelearnset

levelup SPECIES_HOUNDOOM
    learnset MOVE_INFERNO, 1
    learnset MOVE_THUNDER_FANG, 8
    learnset MOVE_LEER, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_SMOG, 20
    learnset MOVE_ROAR, 26
    learnset MOVE_BITE, 28
    learnset MOVE_ODOR_SLEUTH, 30
    learnset MOVE_BEAT_UP, 34
    learnset MOVE_FIRE_FANG, 36
    learnset MOVE_FEINT_ATTACK, 38
    learnset MOVE_EMBARGO, 42
    learnset MOVE_FOUL_PLAY, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_CRUNCH, 52
    terminatelearnset

levelup SPECIES_KINGDRA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TWISTER, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_FOCUS_ENERGY, 26
    learnset MOVE_OCTAZOOKA, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_PHANPY
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ROCK_THROW, 6
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_CHARM, 18
    learnset MOVE_SLAM, 22
    learnset MOVE_RAPID_SPIN, 25
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_MAGNITUDE, 35
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_EARTHQUAKE, 45
terminatelearnset

levelup SPECIES_DONPHAN
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ROCK_THROW, 6
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_SLAM, 24
    learnset MOVE_RAPID_SPIN, 25
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_MAGNITUDE, 35
    learnset MOVE_HIGH_HORSEPOWER, 40
    learnset MOVE_ROCK_SLIDE, 46
    learnset MOVE_BODY_SLAM, 50
    learnset MOVE_HEAD_SMASH, 57
    learnset MOVE_EARTHQUAKE, 65
terminatelearnset


levelup SPECIES_PORYGON2
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_CONVERSION, 8
    learnset MOVE_RECYCLE, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_ZAP_CANNON, 16
    learnset MOVE_MAGIC_COAT, 20
    learnset MOVE_CONVERSION_2, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_THUNDER_SHOCK, 30
    learnset MOVE_RECOVER, 36
    learnset MOVE_SIGNAL_BEAM, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_TRI_ATTACK, 45
    learnset MOVE_LOCK_ON, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_STANTLER
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_STOMP, 12
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_ROLE_PLAY, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_IMPRISON, 36
    learnset MOVE_DOUBLE_EDGE, 38
    terminatelearnset

levelup SPECIES_SMEARGLE
    learnset MOVE_SKETCH, 1
    terminatelearnset

levelup SPECIES_TYROGUE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_FAKE_OUT, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_FORESIGHT, 12
    terminatelearnset

levelup SPECIES_HITMONTOP
    learnset MOVE_ROLLING_KICK, 1
    learnset MOVE_ROLLING_KICK, 20
    learnset MOVE_MACH_PUNCH, 26
    learnset MOVE_TRIPLE_KICK, 32
	learnset MOVE_DETECT, 36
    learnset MOVE_BRICK_BREAK, 42
    learnset MOVE_WIDE_GUARD, 48
	learnset MOVE_QUICK_GUARD, 48
    learnset MOVE_TRIPLE_AXEL, 52
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_SMOOCHUM
    learnset MOVE_POUND, 1
    learnset MOVE_LICK, 5
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_POWDER_SNOW, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_SING, 16
    learnset MOVE_FAKE_TEARS, 19
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_EXTRASENSORY, 26
    learnset MOVE_ICY_WIND, 29
    learnset MOVE_ENCORE, 33
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_LOVELY_KISS, 45
    learnset MOVE_BLIZZARD, 49
terminatelearnset

levelup SPECIES_ELEKID
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_FLASH, 8
    learnset MOVE_KARATE_CHOP, 11
    learnset MOVE_SHOCK_WAVE, 14
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_THUNDER_PUNCH, 26
    learnset MOVE_ELECTROWEB, 29
    learnset MOVE_FEINT, 33
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_CROSS_CHOP, 41
    learnset MOVE_WILD_CHARGE, 45
    learnset MOVE_THUNDER, 49
terminatelearnset


levelup SPECIES_MAGBY
    learnset MOVE_SMOG, 1
    learnset MOVE_LEER, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_FLAME_WHEEL, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_FIRE_PUNCH, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_LOW_KICK, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_FIRE_BLAST, 52
    terminatelearnset

levelup SPECIES_MILTANK
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_WAKE_UP_SLAP, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_HEAL_BELL, 31
	learnset MOVE_BULLDOZE, 34
    learnset MOVE_REVERSAL, 36
    learnset MOVE_HIGH_HORSEPOWER, 40
    learnset MOVE_CHARM, 45
    learnset MOVE_PLAY_ROUGH, 48
	learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset

levelup SPECIES_BLISSEY
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_COVET, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_POUND, 16
    learnset MOVE_COPYCAT, 20
    learnset MOVE_DEFENSE_CURL, 26
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_GROWL, 30
    learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_REFRESH, 38
    learnset MOVE_LIFE_DEW, 42
    learnset MOVE_DOUBLE_SLAP, 45
    learnset MOVE_BESTOW, 48
    learnset MOVE_SING, 52
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_FLING, 56
    learnset MOVE_SOFT_BOILED, 58
    learnset MOVE_HELPING_HAND, 60
    learnset MOVE_HEAL_PULSE, 65
    learnset MOVE_LIGHT_SCREEN, 68
    learnset MOVE_EGG_BOMB, 70
    learnset MOVE_LAST_RESORT, 74
    learnset MOVE_HEALING_WISH, 76
    terminatelearnset

levelup SPECIES_RAIKOU
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_LEER, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_EXTRASENSORY, 16
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_BITE, 26
    learnset MOVE_SPARK, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_THUNDER_FANG, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_REFLECT, 45
    learnset MOVE_THUNDER, 52
    learnset MOVE_ZAP_CANNON, 54
    terminatelearnset

levelup SPECIES_ENTEI
    learnset MOVE_SACRED_FIRE, 1
    learnset MOVE_EXTREME_SPEED, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_LEER, 16
    learnset MOVE_STOMP, 12
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_ERUPTION, 20
    learnset MOVE_EXTRASENSORY, 26
    learnset MOVE_LAVA_PLUME, 28
    learnset MOVE_BITE, 30
    learnset MOVE_FLAME_WHEEL, 34
    learnset MOVE_ROAR, 36
    learnset MOVE_FIRE_SPIN, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_FIRE_FANG, 48
    learnset MOVE_CRUNCH, 52
    learnset MOVE_SWAGGER, 56
    learnset MOVE_FIRE_BLAST, 60
    terminatelearnset

levelup SPECIES_SUICUNE
    learnset MOVE_SHEER_COLD, 1
    learnset MOVE_EXTREME_SPEED, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_LEER, 16
    learnset MOVE_GUST, 12
    learnset MOVE_MIST, 16
    learnset MOVE_BITE, 20
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_ROAR, 34
    learnset MOVE_AURORA_BEAM, 36
    learnset MOVE_ICE_FANG, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_TAILWIND, 45
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_SURF, 54
    learnset MOVE_EXTRASENSORY, 56
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_BLIZZARD, 60
    terminatelearnset

levelup SPECIES_LARVITAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_CHIP_AWAY, 12
    learnset MOVE_SCREECH, 16
    learnset MOVE_ROCK_SLIDE, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_PAYBACK, 30
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_THRASH, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_PUPITAR
    learnset MOVE_TACKLE, 5
    learnset MOVE_LEER, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_PAYBACK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCREECH, 26
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_DARK_PULSE, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_HYPER_BEAM, 54
    terminatelearnset

levelup SPECIES_TYRANITAR
    learnset MOVE_THUNDER_FANG, 5
    learnset MOVE_ICE_FANG, 8
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_LEER, 16
    learnset MOVE_ROCK_THROW, 20
    learnset MOVE_PAYBACK, 26
    learnset MOVE_BITE, 28
    learnset MOVE_SCREECH, 34
    learnset MOVE_CHIP_AWAY, 36
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_STOMPING_TANTRUM, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_THRASH, 52
    learnset MOVE_CRUNCH, 54
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_HYPER_BEAM, 60
    learnset MOVE_GIGA_IMPACT, 65
    terminatelearnset

levelup SPECIES_LUGIA
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_GUST, 5
    learnset MOVE_WHIRLWIND, 8
    learnset MOVE_WEATHER_BALL, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_MIST, 16
    learnset MOVE_EXTRASENSORY, 20
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_AEROBLAST, 30
    learnset MOVE_PUNISHMENT, 34
    learnset MOVE_HYDRO_PUMP, 36
    learnset MOVE_RECOVER, 42
    learnset MOVE_FUTURE_SIGHT, 45
    learnset MOVE_NATURAL_GIFT, 48
    learnset MOVE_SKY_ATTACK, 52
    terminatelearnset

levelup SPECIES_HO_OH
    learnset MOVE_GUST, 1
    learnset MOVE_WHIRLWIND, 5
    learnset MOVE_WEATHER_BALL, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_BRAVE_BIRD, 16
    learnset MOVE_EXTRASENSORY, 20
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_SACRED_FIRE, 30
    learnset MOVE_PUNISHMENT, 34
    learnset MOVE_FIRE_BLAST, 36
    learnset MOVE_RECOVER, 42
    learnset MOVE_FUTURE_SIGHT, 45
    learnset MOVE_NATURAL_GIFT, 48
    learnset MOVE_SKY_ATTACK, 52
    learnset MOVE_BURN_UP, 54
    terminatelearnset

levelup SPECIES_CELEBI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HEAL_BELL, 5
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_RECOVER, 16
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_LIFE_DEW, 28
    learnset MOVE_NATURAL_GIFT, 30
    learnset MOVE_HEAL_BLOCK, 34
    learnset MOVE_FUTURE_SIGHT, 36
    learnset MOVE_HEALING_WISH, 38
    learnset MOVE_LEAF_STORM, 42
    learnset MOVE_PERISH_SONG, 45
    terminatelearnset

levelup SPECIES_TREECKO
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_ABSORB, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SLAM, 36
    learnset MOVE_QUICK_GUARD, 38
    learnset MOVE_DOUBLE_TEAM, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_LEAF_STORM, 48
    learnset MOVE_SCREECH, 52
    learnset MOVE_ENDEAVOR, 54
    terminatelearnset

levelup SPECIES_GROVYLE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_FALSE_SWIPE, 5
    learnset MOVE_X_SCISSOR, 8
    learnset MOVE_ENERGY_BALL, 16
    learnset MOVE_POUND, 12
    learnset MOVE_LEER, 16
    learnset MOVE_VINE_WHIP, 20
    learnset MOVE_QUICK_ATTACK, 26
    learnset MOVE_ABSORB, 28
    learnset MOVE_MEGA_DRAIN, 30
    learnset MOVE_PURSUIT, 34
    learnset MOVE_ASSURANCE, 36
    learnset MOVE_DETECT, 38
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_SLAM, 48
    learnset MOVE_QUICK_GUARD, 52
    learnset MOVE_LEAF_BLADE, 54
    learnset MOVE_DOUBLE_TEAM, 56
    learnset MOVE_ENDEAVOR, 58
    learnset MOVE_SCREECH, 60
    learnset MOVE_LEAF_STORM, 65
    terminatelearnset

levelup SPECIES_SCEPTILE
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_FALSE_SWIPE, 8
    learnset MOVE_X_SCISSOR, 16
    learnset MOVE_ENERGY_BALL, 12
    learnset MOVE_POUND, 16
    learnset MOVE_LEER, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_LEAF_STORM, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_ABSORB, 36
    learnset MOVE_MEGA_DRAIN, 38
    learnset MOVE_PURSUIT, 42
    learnset MOVE_ASSURANCE, 45
    learnset MOVE_DETECT, 48
    learnset MOVE_GIGA_DRAIN, 52
    learnset MOVE_SLAM, 56
    learnset MOVE_LEAF_BLADE, 58
    learnset MOVE_QUICK_GUARD, 60
    learnset MOVE_DOUBLE_TEAM, 65
    learnset MOVE_ENDEAVOR, 68
    learnset MOVE_SCREECH, 70
    terminatelearnset

levelup SPECIES_TORCHIC
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_PECK, 26
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_FIRE_SPIN, 30
    learnset MOVE_BOUNCE, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_FLAME_BURST, 38
    learnset MOVE_FOCUS_ENERGY, 42
    learnset MOVE_FEATHER_DANCE, 45
    learnset MOVE_REVERSAL, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_FLARE_BLITZ, 54
    learnset MOVE_MIRROR_MOVE, 56
    terminatelearnset

levelup SPECIES_COMBUSKEN
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_FLAMETHROWER, 5
    learnset MOVE_FEATHER_DANCE, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_EMBER, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_SAND_ATTACK, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_FLAME_CHARGE, 30
    learnset MOVE_PECK, 34
    learnset MOVE_AERIAL_ACE, 36
    learnset MOVE_BOUNCE, 38
    learnset MOVE_SLASH, 42
    learnset MOVE_FOCUS_ENERGY, 45
    learnset MOVE_BLAZE_KICK, 52
    learnset MOVE_MIRROR_MOVE, 54
    learnset MOVE_REVERSAL, 56
    learnset MOVE_SKY_UPPERCUT, 58
    learnset MOVE_FLARE_BLITZ, 60
    terminatelearnset

levelup SPECIES_BLAZIKEN
    learnset MOVE_BLAZE_KICK, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_FIRE_PUNCH, 8
    learnset MOVE_BRAVE_BIRD, 16
    learnset MOVE_FLAMETHROWER, 12
    learnset MOVE_FEATHER_DANCE, 16
    learnset MOVE_SCRATCH, 20
    learnset MOVE_GROWL, 26
    learnset MOVE_EMBER, 28
    learnset MOVE_QUICK_ATTACK, 30
    learnset MOVE_FLARE_BLITZ, 34
    learnset MOVE_HIGH_JUMP_KICK, 36
    learnset MOVE_SAND_ATTACK, 38
    learnset MOVE_DETECT, 42
    learnset MOVE_FLAME_CHARGE, 45
    learnset MOVE_PECK, 48
    learnset MOVE_AERIAL_ACE, 52
    learnset MOVE_BOUNCE, 54
    learnset MOVE_SLASH, 56
    learnset MOVE_FOCUS_ENERGY, 58
    learnset MOVE_REVERSAL, 65
    learnset MOVE_SKY_UPPERCUT, 68
    terminatelearnset

levelup SPECIES_MUDKIP
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_FORESIGHT, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_ROCK_THROW, 26
    learnset MOVE_BIDE, 28
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_PROTECT, 34
    learnset MOVE_MUD_SPORT, 36
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_SURF, 48
    learnset MOVE_SCREECH, 52
    learnset MOVE_WHIRLPOOL, 54
    learnset MOVE_ENDEAVOR, 56
    learnset MOVE_HYDRO_PUMP, 58
    terminatelearnset

levelup SPECIES_MARSHTOMP
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_EARTHQUAKE, 5
    learnset MOVE_SURF, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_ROCK_SMASH, 20
    learnset MOVE_MUD_SLAP, 26
    learnset MOVE_ROCK_THROW, 28
    learnset MOVE_FORESIGHT, 30
    learnset MOVE_SUPERSONIC, 34
    learnset MOVE_BIDE, 36
    learnset MOVE_WATER_PULSE, 38
    learnset MOVE_PROTECT, 42
    learnset MOVE_MUD_BOMB, 45
    learnset MOVE_ROCK_SLIDE, 48
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_MUDDY_WATER, 56
    learnset MOVE_SCREECH, 58
    learnset MOVE_ENDEAVOR, 60
    learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset

levelup SPECIES_SWAMPERT
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_HAMMER_ARM, 5
    learnset MOVE_EARTHQUAKE, 8
    learnset MOVE_SURF, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 20
    learnset MOVE_ROCK_SMASH, 26
    learnset MOVE_MUD_SLAP, 28
    learnset MOVE_ROCK_THROW, 30
    learnset MOVE_FORESIGHT, 34
    learnset MOVE_SUPERSONIC, 36
    learnset MOVE_BIDE, 38
    learnset MOVE_WATER_PULSE, 42
    learnset MOVE_PROTECT, 45
    learnset MOVE_MUD_BOMB, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_MUDDY_WATER, 58
    learnset MOVE_SCREECH, 60
    learnset MOVE_ENDEAVOR, 65
    learnset MOVE_HYDRO_PUMP, 68
    terminatelearnset

levelup SPECIES_POOCHYENA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_BITE, 10
    learnset MOVE_BABY_DOLL_EYES, 12
    learnset MOVE_YAWN, 15
    learnset MOVE_COVET, 18
    learnset MOVE_CHARM, 21
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ICE_FANG, 23
    learnset MOVE_THUNDER_FANG, 23
    learnset MOVE_CRUNCH, 26
    learnset MOVE_PLAY_ROUGH, 30
    learnset MOVE_SUPER_FANG, 33
    learnset MOVE_SUCKER_PUNCH, 36
terminatelearnset

levelup SPECIES_MIGHTYENA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_BITE, 10
    learnset MOVE_BABY_DOLL_EYES, 12
    learnset MOVE_YAWN, 15
    learnset MOVE_COVET, 18
    learnset MOVE_SCARY_FACE, 22
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_THUNDER_FANG, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_SUPER_FANG, 38
    learnset MOVE_SUCKER_PUNCH, 42
	learnset MOVE_PSYCHIC_FANGS, 50
terminatelearnset


levelup SPECIES_ZIGZAGOON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_ODOR_SLEUTH, 20
    learnset MOVE_COVET, 26
    learnset MOVE_MUD_SPORT, 28
    learnset MOVE_PIN_MISSILE, 30
    learnset MOVE_BESTOW, 34
    learnset MOVE_REST, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_FLAIL, 42
    learnset MOVE_FLING, 45
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_LINOONE
    learnset MOVE_SLASH, 1
    learnset MOVE_PIN_MISSILE, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_PLAY_ROUGH, 28
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_ODOR_SLEUTH, 36
    learnset MOVE_COVET, 42
    learnset MOVE_MUD_SPORT, 45
    learnset MOVE_FURY_SWIPES, 48
    learnset MOVE_BESTOW, 52
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_REST, 56
    learnset MOVE_FLAIL, 58
    learnset MOVE_FLING, 60
    learnset MOVE_DOUBLE_EDGE, 65
    terminatelearnset

levelup SPECIES_WURMPLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_POISON_STING, 8
    learnset MOVE_BUG_BITE, 16
    terminatelearnset

levelup SPECIES_SILCOON
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_ASTONISH, 9
    learnset MOVE_CONFUSE_RAY, 12
	learnset MOVE_PSYBEAM, 16
    learnset MOVE_HEX, 20
    learnset MOVE_DRAINING_KISS, 24
    learnset MOVE_REFLECT, 27
    learnset MOVE_LIGHT_SCREEN, 27
	learnset MOVE_MYSTICAL_FIRE, 30
	learnset MOVE_BITTER_MALICE, 36
    learnset MOVE_DAZZLING_GLEAM, 40
    learnset MOVE_AURA_SPHERE, 43
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_INSTRUCT, 50
	learnset MOVE_STRANGE_STEAM, 54
	learnset MOVE_LUNAR_BLESSING, 58
	learnset MOVE_MOONGEIST_BEAM, 67
    terminatelearnset

levelup SPECIES_BEAUTIFLY
    learnset MOVE_GUST, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_MORNING_SUN, 16
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_SILVER_WIND, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_WHIRLWIND, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_BUG_BUZZ, 34
    learnset MOVE_RAGE, 36
    terminatelearnset

levelup SPECIES_CASCOON
    learnset MOVE_POUND, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SEISMIC_TOSS, 9
    learnset MOVE_STOMP, 12
	learnset MOVE_BULLDOZE, 16
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_STOMPING_TANTRUM, 27
	learnset MOVE_HEAT_CRASH, 30
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_HAMMER_ARM, 40
    learnset MOVE_SLACK_OFF, 43
    learnset MOVE_THROAT_CHOP, 47
    learnset MOVE_STONE_EDGE, 50
	learnset MOVE_BODY_PRESS, 54
	learnset MOVE_HEAVY_SLAM, 58
	learnset MOVE_HEADLONG_RUSH, 67
    terminatelearnset

levelup SPECIES_DUSTOX
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_MOONLIGHT, 16
    learnset MOVE_VENOSHOCK, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_SILVER_WIND, 20
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_WHIRLWIND, 28
    learnset MOVE_TOXIC, 30
    learnset MOVE_BUG_BUZZ, 34
    learnset MOVE_PROTECT, 36
    terminatelearnset

levelup SPECIES_LOTAD
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ABSORB, 6
    learnset MOVE_BUBBLE, 9
    learnset MOVE_NATURAL_GIFT, 12
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_NATURE_POWER, 24
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SCALD, 40
    learnset MOVE_HYDRO_PUMP, 48
terminatelearnset

levelup SPECIES_LOMBRE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ABSORB, 6
    learnset MOVE_BUBBLE, 9
    learnset MOVE_NATURAL_GIFT, 12
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_MAGICAL_LEAF, 24
    learnset MOVE_NATURE_POWER, 30
    learnset MOVE_SEED_BOMB, 35
    learnset MOVE_KNOCK_OFF, 39
    learnset MOVE_SURF, 43
    learnset MOVE_TEETER_DANCE, 48
    learnset MOVE_ENERGY_BALL, 52
    learnset MOVE_HYDRO_PUMP, 64
terminatelearnset

levelup SPECIES_LUDICOLO
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ABSORB, 6
    learnset MOVE_BUBBLE, 9
    learnset MOVE_NATURAL_GIFT, 12
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_MAGICAL_LEAF, 24
    learnset MOVE_NATURE_POWER, 30
    learnset MOVE_SEED_BOMB, 35
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_SURF, 45
    learnset MOVE_TEETER_DANCE, 51
    learnset MOVE_ENERGY_BALL, 56
    learnset MOVE_HYDRO_PUMP, 69
terminatelearnset

levelup SPECIES_SEEDOT
    learnset MOVE_BIDE, 1
    learnset MOVE_NATURE_POWER, 10
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_EXPLOSION, 25
terminatelearnset

levelup SPECIES_NUZLEAF
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_TORMENT, 9
    learnset MOVE_FAKE_OUT, 14
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_LEAF_BLADE, 26
    learnset MOVE_SWAGGER, 32
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_FOUL_PLAY, 38
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_SUCKER_PUNCH, 46
    learnset MOVE_NIGHT_SLASH, 50
    learnset MOVE_SOLAR_BLADE, 60
terminatelearnset

levelup SPECIES_SHIFTRY
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_TORMENT, 9
    learnset MOVE_FAKE_OUT, 14
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_LEAF_BLADE, 26
    learnset MOVE_SWAGGER, 32
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_FOUL_PLAY, 39
    learnset MOVE_ENERGY_BALL, 44
    learnset MOVE_SUCKER_PUNCH, 49
    learnset MOVE_NIGHT_SLASH, 54
    learnset MOVE_SOLAR_BLADE, 65
terminatelearnset

levelup SPECIES_TAILLOW
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_QUICK_GUARD, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_ENDEAVOR, 34
    learnset MOVE_BRAVE_BIRD, 36
    learnset MOVE_REVERSAL, 38
    terminatelearnset

levelup SPECIES_SWELLOW
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_AIR_SLASH, 5
    learnset MOVE_PLUCK, 8
    learnset MOVE_PECK, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_WING_ATTACK, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_QUICK_GUARD, 34
    learnset MOVE_ENDEAVOR, 38
    learnset MOVE_REVERSAL, 42
    terminatelearnset

levelup SPECIES_WINGULL
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_AIR_CUTTER, 20
    learnset MOVE_MIST, 26
    learnset MOVE_PURSUIT, 28
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_ROOST, 38
    learnset MOVE_HURRICANE, 42
    terminatelearnset

levelup SPECIES_PELIPPER
    learnset MOVE_PROTECT, 1
    learnset MOVE_SOAK, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_AIR_SLASH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 20
    learnset MOVE_TAILWIND, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_HURRICANE, 30
    learnset MOVE_HYDRO_PUMP, 34
    learnset MOVE_WATER_SPORT, 36
    learnset MOVE_WING_ATTACK, 38
    learnset MOVE_WATER_PULSE, 42
    learnset MOVE_PAYBACK, 45
    learnset MOVE_BRINE, 48
    learnset MOVE_MIST, 52
    learnset MOVE_SWALLOW, 56
    learnset MOVE_SPIT_UP, 58
    learnset MOVE_FLING, 60
    learnset MOVE_ROOST, 65
    terminatelearnset

levelup SPECIES_RALTS
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_LUCKY_CHANT, 14
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_HEAL_PULSE, 19
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_IMPRISON, 29
    learnset MOVE_FUTURE_SIGHT, 32
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_HYPNOSIS, 37
    learnset MOVE_DREAM_EATER, 39
terminatelearnset

levelup SPECIES_KIRLIA
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_LUCKY_CHANT, 14
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_HEAL_PULSE, 19
    learnset MOVE_DRAINING_KISS, 23
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_IMPRISON, 33
    learnset MOVE_FUTURE_SIGHT, 37
    learnset MOVE_DAZZLING_GLEAM, 40
    learnset MOVE_HYPNOSIS, 42
    learnset MOVE_DREAM_EATER, 45
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_MOONBLAST, 55
terminatelearnset

levelup SPECIES_GARDEVOIR
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_WISH, 14
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_HEAL_PULSE, 19
    learnset MOVE_DRAINING_KISS, 23
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_IMPRISON, 33
    learnset MOVE_FUTURE_SIGHT, 37
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_HYPNOSIS, 44
    learnset MOVE_DREAM_EATER, 48
    learnset MOVE_PSYCHIC, 53
    learnset MOVE_MOONBLAST, 60
terminatelearnset

levelup SPECIES_SURSKIT
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_HAZE, 22
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_STICKY_WEB, 40
    terminatelearnset

levelup SPECIES_MASQUERAIN
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_AIR_CUTTER, 22
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_STUN_SPORE, 30
	learnset MOVE_AIR_SLASH, 34
	learnset MOVE_BUG_BUZZ, 38
	learnset MOVE_SCALD, 42
	learnset MOVE_HURRICANE, 48
	learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_SHROOMISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_FAKE_TEARS, 18
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_SYNTHESIS, 29
    learnset MOVE_TOXIC, 33
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_SPORE, 40
terminatelearnset

levelup SPECIES_BRELOOM
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_SPORE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_WORRY_SEED, 21
    learnset MOVE_MACH_PUNCH, 23
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_FACADE, 44
    learnset MOVE_SYNTHESIS, 50
    learnset MOVE_SKY_UPPERCUT, 55
terminatelearnset

levelup SPECIES_SLAKOTH
    learnset MOVE_SCRATCH, 1
    learnset MOVE_YAWN, 5
    learnset MOVE_ENCORE, 8
    learnset MOVE_SLACK_OFF, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_COVET, 20
    learnset MOVE_CHIP_AWAY, 26
    learnset MOVE_COUNTER, 28
    learnset MOVE_FLAIL, 30
    learnset MOVE_PLAY_ROUGH, 34
    terminatelearnset

levelup SPECIES_VIGOROTH
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_ENCORE, 16
    learnset MOVE_UPROAR, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_ENDURE, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_COUNTER, 30
    learnset MOVE_FOCUS_PUNCH, 34
    terminatelearnset

levelup SPECIES_SLAKING
    learnset MOVE_SWAGGER, 1
    learnset MOVE_HAMMER_ARM, 5
    learnset MOVE_PUNISHMENT, 8
    learnset MOVE_FLING, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_YAWN, 16
    learnset MOVE_ENCORE, 20
    learnset MOVE_SLACK_OFF, 26
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_COVET, 34
    learnset MOVE_CHIP_AWAY, 36
    learnset MOVE_COUNTER, 38
    learnset MOVE_FLAIL, 42
    terminatelearnset

levelup SPECIES_NINCADA
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_ABSORB, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_BIDE, 28
    learnset MOVE_MIND_READER, 30
    learnset MOVE_DIG, 34
    terminatelearnset

levelup SPECIES_NINJASK
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SCREECH, 5
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_MUD_SLAP, 16
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_DIG, 26
    learnset MOVE_SAND_ATTACK, 28
    learnset MOVE_SCRATCH, 30
    learnset MOVE_HARDEN, 34
    learnset MOVE_FALSE_SWIPE, 36
    learnset MOVE_BUG_BITE, 38
    learnset MOVE_ABSORB, 42
    learnset MOVE_FURY_SWIPES, 48
    learnset MOVE_MIND_READER, 52
    learnset MOVE_SLASH, 54
    learnset MOVE_X_SCISSOR, 58
    terminatelearnset

levelup SPECIES_SHEDINJA
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_GRUDGE, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_DIG, 12
    learnset MOVE_SCRATCH, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_HARDEN, 26
    learnset MOVE_FALSE_SWIPE, 28
    learnset MOVE_ABSORB, 30
    learnset MOVE_CONFUSE_RAY, 34
    learnset MOVE_SHADOW_SNEAK, 36
    learnset MOVE_FURY_SWIPES, 38
    learnset MOVE_MIND_READER, 42
    learnset MOVE_SPITE, 45
    learnset MOVE_HEAL_BLOCK, 48
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_PHANTOM_FORCE, 54
    terminatelearnset

levelup SPECIES_WHISMUR
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_STOMP, 12
    learnset MOVE_REST, 16
    learnset MOVE_DISARMING_VOICE, 20
    learnset MOVE_SUPERSONIC, 26
    learnset MOVE_ROAR, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_SYNCHRONOISE, 38
    terminatelearnset

levelup SPECIES_LOUDRED
    learnset MOVE_BITE, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_POUND, 8
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_STOMP, 16
    learnset MOVE_REST, 20
    learnset MOVE_SLEEP_TALK, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_SYNCHRONOISE, 38
    learnset MOVE_HYPER_VOICE, 42
    terminatelearnset

levelup SPECIES_EXPLOUD
    learnset MOVE_CRUNCH, 1
    learnset MOVE_BITE, 5
    learnset MOVE_ICE_FANG, 8
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_THUNDER_FANG, 12
    learnset MOVE_ASTONISH, 16
    learnset MOVE_POUND, 20
    learnset MOVE_ECHOED_VOICE, 26
    learnset MOVE_BOOMBURST, 30
    learnset MOVE_STOMP, 34
    learnset MOVE_REST, 36
    learnset MOVE_SLEEP_TALK, 38
    learnset MOVE_SUPERSONIC, 42
    learnset MOVE_ROAR, 45
    learnset MOVE_SCREECH, 48
    learnset MOVE_UPROAR, 52
    learnset MOVE_SYNCHRONOISE, 54
    learnset MOVE_HYPER_VOICE, 56
    learnset MOVE_HYPER_BEAM, 58
    terminatelearnset

levelup SPECIES_MAKUHITA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ARM_THRUST, 6
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_PAYBACK, 20
    learnset MOVE_VITAL_THROW, 22
    learnset MOVE_SMELLING_SALTS, 25
    learnset MOVE_SEISMIC_TOSS, 28
    learnset MOVE_KNOCK_OFF, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_BULLET_PUNCH, 37
    learnset MOVE_THROAT_CHOP, 40
    learnset MOVE_HEAVY_SLAM, 43
    learnset MOVE_CLOSE_COMBAT, 46
terminatelearnset


levelup SPECIES_HARIYAMA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_FORCE_PALM, 13
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_PAYBACK, 19
    learnset MOVE_VITAL_THROW, 22
    learnset MOVE_SMELLING_SALTS, 26
    learnset MOVE_SEISMIC_TOSS, 30
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_BULLET_PUNCH, 42
    learnset MOVE_THROAT_CHOP, 45
    learnset MOVE_HEAVY_SLAM, 48
    learnset MOVE_CLOSE_COMBAT, 55
terminatelearnset


levelup SPECIES_AZURILL
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_BUBBLE, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_BOUNCE, 30
    terminatelearnset

levelup SPECIES_NOSEPASS
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_BLOCK, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_THUNDER_WAVE, 12
    learnset MOVE_REST, 16
    learnset MOVE_SPARK, 20
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_ROCK_BLAST, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_ZAP_CANNON, 48
    terminatelearnset

levelup SPECIES_SKITTY
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_TACKLE, 16
    learnset MOVE_FORESIGHT, 12
    learnset MOVE_SING, 16
    learnset MOVE_ATTRACT, 20
    learnset MOVE_DISARMING_VOICE, 26
    learnset MOVE_DOUBLE_SLAP, 28
    learnset MOVE_COPYCAT, 30
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_WAKE_UP_SLAP, 38
    learnset MOVE_ASSIST, 42
    learnset MOVE_COVET, 45
    learnset MOVE_HEAL_BELL, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_CAPTIVATE, 54
    learnset MOVE_PLAY_ROUGH, 56
    terminatelearnset

levelup SPECIES_DELCATTY
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SING, 5
    learnset MOVE_ATTRACT, 8
    learnset MOVE_DOUBLE_SLAP, 16
    terminatelearnset

levelup SPECIES_SABLEYE
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_FORESIGHT, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_FURY_SWIPES, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_PUNISHMENT, 38
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_SHADOW_CLAW, 45
    learnset MOVE_QUASH, 48
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_MEAN_LOOK, 56
    learnset MOVE_SHADOW_BALL, 58
    learnset MOVE_FOUL_PLAY, 60
    terminatelearnset

levelup SPECIES_MAWILE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_ROUGH, 8
    learnset MOVE_IRON_HEAD, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_FAIRY_WIND, 16
    learnset MOVE_BITE, 20
    learnset MOVE_VICE_GRIP, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_FAKE_TEARS, 36
    learnset MOVE_SWALLOW, 42
    learnset MOVE_SPIT_UP, 45
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_CRUNCH, 54
    terminatelearnset

levelup SPECIES_ARON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_IRON_HEAD, 22
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_BULLDOZE, 31
    learnset MOVE_IRON_TAIL, 34
    learnset MOVE_STONE_EDGE, 37
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_BODY_PRESS, 43
    learnset MOVE_HEAVY_SLAM, 46
    learnset MOVE_HEAD_SMASH, 49
terminatelearnset

levelup SPECIES_LAIRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_IRON_HEAD, 22
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_BULLDOZE, 33
    learnset MOVE_IRON_TAIL, 37
    learnset MOVE_STONE_EDGE, 41
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_BODY_PRESS, 49
    learnset MOVE_HEAVY_SLAM, 53
    learnset MOVE_HEAD_SMASH, 57
terminatelearnset

levelup SPECIES_AGGRON
    learnset MOVE_HEAT_CRASH, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_IRON_HEAD, 22
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_BULLDOZE, 33
    learnset MOVE_IRON_TAIL, 37
    learnset MOVE_STONE_EDGE, 41
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_BODY_PRESS, 52
    learnset MOVE_HEAVY_SLAM, 57
    learnset MOVE_HEAD_SMASH, 62
    learnset MOVE_EARTHQUAKE, 68
terminatelearnset

levelup SPECIES_MEDITITE
    learnset MOVE_BIDE, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_CONFUSION, 7
    learnset MOVE_DETECT, 9
    learnset MOVE_ENDURE, 12
    learnset MOVE_SEISMIC_TOSS, 15
    learnset MOVE_FORCE_PALM, 20
    learnset MOVE_MEGA_PUNCH, 25
    learnset MOVE_SUBMISSION, 28
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_PSYCH_UP, 38
    learnset MOVE_PSYCHO_CUT, 40
    learnset MOVE_HIGH_JUMP_KICK, 44
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_RECOVER, 50
    learnset MOVE_CLOSE_COMBAT, 55
terminatelearnset

levelup SPECIES_MEDICHAM
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_CONFUSION, 7
    learnset MOVE_DETECT, 9
    learnset MOVE_ENDURE, 12
    learnset MOVE_SEISMIC_TOSS, 15
    learnset MOVE_FORCE_PALM, 20
    learnset MOVE_MEGA_PUNCH, 25
    learnset MOVE_SUBMISSION, 28
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_PSYCH_UP, 39
    learnset MOVE_PSYCHO_CUT, 44
    learnset MOVE_HIGH_JUMP_KICK, 48
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_RECOVER, 55
    learnset MOVE_CLOSE_COMBAT, 62
terminatelearnset


levelup SPECIES_ELECTRIKE
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 5
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_BITE, 28
    learnset MOVE_THUNDER_FANG, 30
    learnset MOVE_ROAR, 34
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_CHARGE, 38
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_THUNDER, 45
    terminatelearnset

levelup SPECIES_MANECTRIC
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_LEER, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_SPARK, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_ODOR_SLEUTH, 30
    learnset MOVE_BITE, 34
    learnset MOVE_THUNDER_FANG, 36
    learnset MOVE_ROAR, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_CHARGE, 45
    learnset MOVE_WILD_CHARGE, 48
    learnset MOVE_THUNDER, 52
    terminatelearnset

levelup SPECIES_PLUSLE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_FAKE_OUT, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_ELECTRO_BALL, 29
    learnset MOVE_DRAINING_KISS, 32
	learnset MOVE_ENCORE, 35
    learnset MOVE_CHARM, 38
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_ELECTROWEB, 45
    learnset MOVE_VOLT_SWITCH, 48
    learnset MOVE_LAST_RESORT, 52
    terminatelearnset

levelup SPECIES_MINUN
    learnset MOVE_NUZZLE, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SPARK, 20
    learnset MOVE_ENCORE, 26
    learnset MOVE_SWIFT, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_COPYCAT, 36
    learnset MOVE_FAKE_TEARS, 38
    learnset MOVE_CHARGE, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_TRUMP_CARD, 54
    learnset MOVE_THUNDER, 56
    learnset MOVE_ENTRAINMENT, 60
    terminatelearnset

levelup SPECIES_VOLBEAT
    learnset MOVE_FLASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_MOONLIGHT, 20
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_HELPING_HAND, 36
    learnset MOVE_BUG_BUZZ, 38
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_INFESTATION, 48
    terminatelearnset

levelup SPECIES_ILLUMISE
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_MOONLIGHT, 20
    learnset MOVE_WISH, 26
    learnset MOVE_ENCORE, 28
    learnset MOVE_FLATTER, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_HELPING_HAND, 36
    learnset MOVE_BUG_BUZZ, 38
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_COVET, 45
    learnset MOVE_INFESTATION, 48
    terminatelearnset

levelup SPECIES_ROSELIA
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_WORRY_SEED, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MAGICAL_LEAF, 26
    learnset MOVE_GRASS_WHISTLE, 28
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_TOXIC, 42
    learnset MOVE_PETAL_BLIZZARD, 45
    learnset MOVE_INGRAIN, 48
    learnset MOVE_AROMATHERAPY, 52
    learnset MOVE_PETAL_DANCE, 54
    terminatelearnset

levelup SPECIES_GULPIN
    learnset MOVE_POUND, 1
    learnset MOVE_YAWN, 5
    learnset MOVE_POISON_GAS, 8
    learnset MOVE_SLUDGE, 16
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_ENCORE, 20
    learnset MOVE_TOXIC, 26
    learnset MOVE_SPIT_UP, 30
    learnset MOVE_SWALLOW, 34
    learnset MOVE_SLUDGE_BOMB, 36
    learnset MOVE_GASTRO_ACID, 38
    learnset MOVE_BELCH, 42
    learnset MOVE_WRING_OUT, 45
    learnset MOVE_GUNK_SHOT, 48
    terminatelearnset

levelup SPECIES_SWALOT
    learnset MOVE_BODY_SLAM, 1
    learnset MOVE_VENOM_DRENCH, 5
    learnset MOVE_GUNK_SHOT, 8
    learnset MOVE_WRING_OUT, 16
    learnset MOVE_POUND, 12
    learnset MOVE_YAWN, 16
    learnset MOVE_POISON_GAS, 20
    learnset MOVE_SLUDGE, 26
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_ENCORE, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_SPIT_UP, 42
    learnset MOVE_SWALLOW, 45
    learnset MOVE_SLUDGE_BOMB, 48
    learnset MOVE_GASTRO_ACID, 52
    learnset MOVE_BELCH, 54
    terminatelearnset

levelup SPECIES_CARVANHA
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_RAGE, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_POISON_FANG, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_SCREECH, 28
    learnset MOVE_ICE_FANG, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_TAKE_DOWN, 45
    terminatelearnset

levelup SPECIES_SHARPEDO
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_AQUA_JET, 8
    learnset MOVE_LEER, 16
    learnset MOVE_POISON_FANG, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_FEINT, 20
    learnset MOVE_BITE, 26
    learnset MOVE_RAGE, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_ICE_FANG, 38
    learnset MOVE_SWAGGER, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_LIQUIDATION, 52
    learnset MOVE_SKULL_BASH, 54
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_TAUNT, 58
    terminatelearnset

levelup SPECIES_WAILMER
    learnset MOVE_SPLASH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_MIST, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_WHIRLPOOL, 26
    learnset MOVE_BRINE, 28
    learnset MOVE_REST, 30
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_DIVE, 36
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_BOUNCE, 42
    learnset MOVE_WATER_SPOUT, 48
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_WAILORD
    learnset MOVE_SOAK, 1
    learnset MOVE_NOBLE_ROAR, 5
    learnset MOVE_SPLASH, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_ASTONISH, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_HEAVY_SLAM, 20
    learnset MOVE_ROLLOUT, 26
    learnset MOVE_MIST, 28
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_WHIRLPOOL, 34
    learnset MOVE_BRINE, 36
    learnset MOVE_REST, 38
    learnset MOVE_DIVE, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_BOUNCE, 52
    learnset MOVE_WATER_SPOUT, 54
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset

levelup SPECIES_NUMEL
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_FLAME_BURST, 16
    learnset MOVE_LAVA_PLUME, 26
    learnset MOVE_EARTH_POWER, 28
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_YAWN, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset

levelup SPECIES_CAMERUPT
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_FISSURE, 5
    learnset MOVE_ERUPTION, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_EMBER, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_MAGNITUDE, 26
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_LAVA_PLUME, 34
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_YAWN, 45
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset

levelup SPECIES_TORKOAL
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_SMOKESCREEN, 12
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_FLAME_WHEEL, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_LAVA_PLUME, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_FLAIL, 45
    learnset MOVE_HEAT_WAVE, 48
    learnset MOVE_INFERNO, 54
    learnset MOVE_SHELL_SMASH, 56
    learnset MOVE_ERUPTION, 58
    terminatelearnset

levelup SPECIES_SPOINK
    learnset MOVE_SPLASH, 1
    learnset MOVE_PSYWAVE, 5
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_PSYCH_UP, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_MAGIC_COAT, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_REST, 30
    learnset MOVE_SNORE, 34
    learnset MOVE_PSYSHOCK, 36
    learnset MOVE_PAYBACK, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_BOUNCE, 45
    terminatelearnset

levelup SPECIES_GRUMPIG
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_BELCH, 5
    learnset MOVE_SPLASH, 8
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_ODOR_SLEUTH, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_PSYCH_UP, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_MAGIC_COAT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_POWER_GEM, 34
    learnset MOVE_REST, 36
    learnset MOVE_SNORE, 38
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_PAYBACK, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_BOUNCE, 52
    terminatelearnset

levelup SPECIES_SPINDA
    learnset MOVE_TACKLE, 1
    learnset MOVE_COPYCAT, 5
    learnset MOVE_FEINT_ATTACK, 8
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_DIZZY_PUNCH, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_UPROAR, 28
    learnset MOVE_PSYCH_UP, 30
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_FLAIL, 36
    learnset MOVE_THRASH, 38
    terminatelearnset

levelup SPECIES_TRAPINCH
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_BIDE, 12
    learnset MOVE_LASER_FOCUS, 16
    learnset MOVE_MUD_SLAP, 20
    learnset MOVE_SAND_TOMB, 26
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_DIG, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_SUPERPOWER, 52
    learnset MOVE_HYPER_BEAM, 54
    learnset MOVE_FISSURE, 56
    terminatelearnset

levelup SPECIES_VIBRAVA
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_LASER_FOCUS, 5
    learnset MOVE_BULLDOZE, 8
    learnset MOVE_DIG, 16
    learnset MOVE_CRUNCH, 12
    learnset MOVE_SUPERPOWER, 16
    learnset MOVE_FISSURE, 20
    learnset MOVE_SAND_ATTACK, 26
    learnset MOVE_ASTONISH, 28
    learnset MOVE_SUPERSONIC, 30
    learnset MOVE_BITE, 34
    learnset MOVE_SONIC_BOOM, 36
    learnset MOVE_FEINT_ATTACK, 38
    learnset MOVE_BIDE, 42
    learnset MOVE_MUD_SLAP, 45
    learnset MOVE_SAND_TOMB, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_DRAGON_TAIL, 54
    learnset MOVE_SCREECH, 56
    learnset MOVE_BUG_BUZZ, 58
    learnset MOVE_EARTH_POWER, 60
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_HYPER_BEAM, 70
    learnset MOVE_UPROAR, 74
    learnset MOVE_BOOMBURST, 76
    learnset MOVE_DRAGON_RUSH, 80
    terminatelearnset

levelup SPECIES_FLYGON
    learnset MOVE_DRAGON_CLAW, 1
    learnset MOVE_DRAGON_BREATH, 5
    learnset MOVE_FEINT, 16
    learnset MOVE_LASER_FOCUS, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_DIG, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_SUPERPOWER, 28
    learnset MOVE_FISSURE, 30
    learnset MOVE_SAND_ATTACK, 34
    learnset MOVE_ASTONISH, 36
    learnset MOVE_SUPERSONIC, 38
    learnset MOVE_BITE, 42
    learnset MOVE_SONIC_BOOM, 45
    learnset MOVE_FEINT_ATTACK, 48
    learnset MOVE_BIDE, 52
    learnset MOVE_MUD_SLAP, 54
    learnset MOVE_SAND_TOMB, 56
    learnset MOVE_ROCK_SLIDE, 58
    learnset MOVE_SCREECH, 60
    learnset MOVE_DRAGON_TAIL, 65
    learnset MOVE_BUG_BUZZ, 68
    learnset MOVE_EARTH_POWER, 70
    learnset MOVE_EARTHQUAKE, 76
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_UPROAR, 80
    learnset MOVE_DRAGON_RUSH, 80
    learnset MOVE_BOOMBURST, 80
    terminatelearnset

levelup SPECIES_CACNEA
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 5
    learnset MOVE_THIEF, 8
	learnset MOVE_CUT, 12
    learnset MOVE_COVET, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_NEEDLE_ARM, 26
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_SPIKY_SHIELD, 32
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_POISON_JAB, 50
	learnset MOVE_ROCK_SLIDE, 56
    learnset MOVE_DESTINY_BOND, 62
    terminatelearnset

levelup SPECIES_CACTURNE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 5
    learnset MOVE_THIEF, 8
	learnset MOVE_COVET, 12
    learnset MOVE_CUT, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_NEEDLE_ARM, 26
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_SPIKY_SHIELD, 32
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_POISON_JAB, 50
	learnset MOVE_ROCK_SLIDE, 56
    learnset MOVE_DESTINY_BOND, 62
    terminatelearnset

levelup SPECIES_SWABLU
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_MIST, 16
    learnset MOVE_ROUND, 20
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_SING, 28
    learnset MOVE_DRAGON_BREATH, 30
    learnset MOVE_NATURAL_GIFT, 34
    learnset MOVE_REFRESH, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_MIRROR_MOVE, 42
    learnset MOVE_DRAGON_PULSE, 48
    learnset MOVE_MOONBLAST, 52
    learnset MOVE_PERISH_SONG, 54
    terminatelearnset

levelup SPECIES_ALTARIA
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_DRAGON_BREATH, 5
    learnset MOVE_PLUCK, 8
    learnset MOVE_PECK, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_MIST, 20
    learnset MOVE_SKY_ATTACK, 26
    learnset MOVE_ASTONISH, 28
    learnset MOVE_SING, 30
    learnset MOVE_FURY_ATTACK, 34
    learnset MOVE_ROUND, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_NATURAL_GIFT, 42
    learnset MOVE_REFRESH, 45
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_PERISH_SONG, 58
    terminatelearnset

levelup SPECIES_ZANGOOSE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_PURSUIT, 12
    learnset MOVE_SLASH, 20
    learnset MOVE_REVENGE, 26
    learnset MOVE_CRUSH_CLAW, 28
    learnset MOVE_FALSE_SWIPE, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_DETECT, 36
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_TAUNT, 42
    learnset MOVE_CLOSE_COMBAT, 48
    terminatelearnset

levelup SPECIES_SEVIPER
    learnset MOVE_WRAP, 1
    learnset MOVE_SWAGGER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_LICK, 16
    learnset MOVE_POISON_TAIL, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_VENOSHOCK, 26
    learnset MOVE_GLARE, 28
    learnset MOVE_POISON_FANG, 30
    learnset MOVE_VENOM_DRENCH, 34
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_GASTRO_ACID, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_HAZE, 45
    learnset MOVE_CRUNCH, 52
    learnset MOVE_BELCH, 54
    learnset MOVE_WRING_OUT, 58
    terminatelearnset

levelup SPECIES_LUNATONE
    learnset MOVE_MOONBLAST, 1
    learnset MOVE_MOONLIGHT, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_POWER_GEM, 20
    learnset MOVE_PSYSHOCK, 26
    learnset MOVE_HYPNOSIS, 28
    learnset MOVE_PSYWAVE, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_EMBARGO, 38
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_HEAL_BLOCK, 48
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_FUTURE_SIGHT, 54
    learnset MOVE_EXPLOSION, 58
    terminatelearnset

levelup SPECIES_SOLROCK
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_MORNING_SUN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_FIRE_SPIN, 26
    learnset MOVE_PSYWAVE, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_EMBARGO, 36
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_HEAL_BLOCK, 48
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_SOLAR_BEAM, 54
    learnset MOVE_EXPLOSION, 58
    terminatelearnset

levelup SPECIES_BARBOACH
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_MUD_BOMB, 12
    learnset MOVE_REST, 16
    learnset MOVE_SNORE, 18
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_MAGNITUDE, 23
    learnset MOVE_SPARK, 27
    learnset MOVE_BULLDOZE, 32
    learnset MOVE_MUDDY_WATER, 36
	learnset MOVE_EARTH_POWER, 39
	learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_FUTURE_SIGHT, 48
    learnset MOVE_SCALD, 51
	learnset MOVE_BLIZZARD, 57
	learnset MOVE_EARTHQUAKE, 62
    terminatelearnset

levelup SPECIES_WHISCASH
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_MUD_BOMB, 12
    learnset MOVE_REST, 16
    learnset MOVE_SNORE, 18
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_MAGNITUDE, 23
    learnset MOVE_SPARK, 27
    learnset MOVE_BULLDOZE, 32
    learnset MOVE_MUDDY_WATER, 36
	learnset MOVE_EARTH_POWER, 39
	learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_FUTURE_SIGHT, 48
    learnset MOVE_SCALD, 51
	learnset MOVE_BLIZZARD, 57
	learnset MOVE_EARTHQUAKE, 62
    terminatelearnset

levelup SPECIES_CORPHISH
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_LEER, 16
    learnset MOVE_VICE_GRIP, 12
    learnset MOVE_BUBBLE_BEAM, 16
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_TAUNT, 26
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_RAZOR_SHELL, 36
    learnset MOVE_CRUNCH, 42
    learnset MOVE_CRABHAMMER, 45
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_GUILLOTINE, 52
    terminatelearnset

levelup SPECIES_CRAWDAUNT
    learnset MOVE_SWIFT, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_LEER, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_BUBBLE, 16
    learnset MOVE_VICE_GRIP, 20
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_PROTECT, 34
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_RAZOR_SHELL, 38
    learnset MOVE_CRUNCH, 45
    learnset MOVE_CRABHAMMER, 48
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_GUILLOTINE, 54
    terminatelearnset

levelup SPECIES_BALTOY
    learnset MOVE_POWER_TRICK, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REFRESH, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MUD_SHOT, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_ANCIENT_POWER, 19
    learnset MOVE_RAPID_SPIN, 22
    learnset MOVE_SKILL_SWAP, 25
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_EXTRASENSORY, 30
    learnset MOVE_GUARD_SPLIT, 34
    learnset MOVE_POWER_SPLIT, 34
    learnset MOVE_EARTH_POWER, 37
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_POWER_GEM, 43
    learnset MOVE_EXPLOSION, 46
    learnset MOVE_EARTHQUAKE, 49
terminatelearnset

levelup SPECIES_CLAYDOL
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_POWER_TRICK, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REFRESH, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MUD_SHOT, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_ANCIENT_POWER, 19
    learnset MOVE_RAPID_SPIN, 22
    learnset MOVE_SKILL_SWAP, 25
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_EXTRASENSORY, 31
    learnset MOVE_GUARD_SPLIT, 34
    learnset MOVE_POWER_SPLIT, 34
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_POWER_GEM, 50
    learnset MOVE_EXPLOSION, 55
    learnset MOVE_EARTHQUAKE, 60
terminatelearnset


levelup SPECIES_LILEEP
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID, 4
    learnset MOVE_BLOCK, 7
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_MEGA_DRAIN, 15
    learnset MOVE_BIND, 20
    learnset MOVE_RECOVER, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_INGRAIN, 38
    learnset MOVE_MIRROR_COAT, 44
    learnset MOVE_POWER_GEM, 50
    learnset MOVE_ENERGY_BALL, 55
    learnset MOVE_POWER_WHIP, 59
terminatelearnset

levelup SPECIES_CRADILY
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID, 4
    learnset MOVE_BLOCK, 7
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_MEGA_DRAIN, 15
    learnset MOVE_BIND, 20
    learnset MOVE_RECOVER, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_INGRAIN, 38
    learnset MOVE_MIRROR_COAT, 45
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_ENERGY_BALL, 59
    learnset MOVE_POWER_WHIP, 65
terminatelearnset


levelup SPECIES_ANORITH
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_MUD_SPORT, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_BUG_BITE, 28
    learnset MOVE_BRINE, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_PROTECT, 42
    learnset MOVE_X_SCISSOR, 45
    terminatelearnset

levelup SPECIES_ARMALDO
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_MUD_SPORT, 12
    learnset MOVE_SCRATCH, 16
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_BUG_BITE, 28
    learnset MOVE_BRINE, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_PROTECT, 42
    learnset MOVE_X_SCISSOR, 45
    terminatelearnset

levelup SPECIES_FEEBAS
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_FLAIL, 8
    terminatelearnset

levelup SPECIES_MILOTIC
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_SPLASH, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_WRAP, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_WATER_SPORT, 20
    learnset MOVE_REFRESH, 26
    learnset MOVE_DISARMING_VOICE, 28
    learnset MOVE_TWISTER, 30
    learnset MOVE_AQUA_RING, 34
    learnset MOVE_LIFE_DEW, 36
    learnset MOVE_CAPTIVATE, 38
    learnset MOVE_ATTRACT, 42
    learnset MOVE_DRAGON_TAIL, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_AQUA_TAIL, 52
    learnset MOVE_SAFEGUARD, 54
    learnset MOVE_SURF, 56
    learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset

levelup SPECIES_CASTFORM
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_WEATHER_BALL, 28
    learnset MOVE_HYDRO_PUMP, 30
    learnset MOVE_FIRE_BLAST, 34
    learnset MOVE_BLIZZARD, 36
    learnset MOVE_HURRICANE, 38
    terminatelearnset

levelup SPECIES_KECLEON
    learnset MOVE_THIEF, 1
    learnset MOVE_ASTONISH, 8
    learnset MOVE_LICK, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_BIND, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_FEINT, 26
    learnset MOVE_FURY_SWIPES, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_ANCIENT_POWER, 36
    learnset MOVE_SLASH, 38
    learnset MOVE_CAMOUFLAGE, 42
    learnset MOVE_SHADOW_CLAW, 45
    learnset MOVE_SCREECH, 48
    learnset MOVE_SUCKER_PUNCH, 54
    learnset MOVE_SYNCHRONOISE, 56
    terminatelearnset

levelup SPECIES_SHUPPET
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_SCREECH, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_SPITE, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_HEX, 26
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_GRUDGE, 42
    learnset MOVE_PHANTOM_FORCE, 48
    terminatelearnset

levelup SPECIES_BANETTE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_KNOCK_OFF, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_HEX, 28
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_EMBARGO, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_GRUDGE, 45
    terminatelearnset

levelup SPECIES_DUSKULL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_DISABLE, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_FORESIGHT, 16
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PAYBACK, 30
    learnset MOVE_HEX, 34
    learnset MOVE_MEAN_LOOK, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset

levelup SPECIES_DUSCLOPS
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 5
    learnset MOVE_ICE_PUNCH, 8
    learnset MOVE_THUNDER_PUNCH, 16
    learnset MOVE_GRAVITY, 12
    learnset MOVE_BIND, 16
    learnset MOVE_ASTONISH, 20
    learnset MOVE_LEER, 26
    learnset MOVE_DISABLE, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_FUTURE_SIGHT, 34
    learnset MOVE_NIGHT_SHADE, 36
    learnset MOVE_FORESIGHT, 38
    learnset MOVE_CONFUSE_RAY, 42
    learnset MOVE_PURSUIT, 45
    learnset MOVE_WILL_O_WISP, 48
    learnset MOVE_HEX, 54
    learnset MOVE_PAYBACK, 56
    learnset MOVE_MEAN_LOOK, 58
    learnset MOVE_SHADOW_BALL, 60
    terminatelearnset

levelup SPECIES_TROPIUS
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_LEER, 5
    learnset MOVE_GUST, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_STOMP, 20
    learnset MOVE_MAGICAL_LEAF, 26
    learnset MOVE_WHIRLWIND, 28
    learnset MOVE_LEAF_TORNADO, 30
    learnset MOVE_NATURAL_GIFT, 34
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_BESTOW, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SOLAR_BEAM, 48
    terminatelearnset

levelup SPECIES_CHIMECHO
	learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_CONFUSION, 12
    learnset MOVE_YAWN, 14
    learnset MOVE_LAST_RESORT, 16
    learnset MOVE_UPROAR, 20
	learnset MOVE_EXTRASENSORY, 26
	learnset MOVE_DISABLE, 29
	learnset MOVE_SWEET_KISS, 31
	learnset MOVE_PSYCHIC, 34
	learnset MOVE_DAZZLING_GLEAM, 38
	learnset MOVE_FOLLOW_ME, 41
	learnset MOVE_CALM_MIND, 45
	learnset MOVE_FUTURE_SIGHT, 50
    terminatelearnset

levelup SPECIES_ABSOL
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PERISH_SONG, 8
    learnset MOVE_FUTURE_SIGHT, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_TAUNT, 30
    learnset MOVE_BITE, 34
    learnset MOVE_DETECT, 36
    learnset MOVE_SLASH, 38
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_FOCUS_ENERGY, 45
    learnset MOVE_PSYCHO_CUT, 52
    learnset MOVE_ME_FIRST, 54
    learnset MOVE_SUCKER_PUNCH, 56
    learnset MOVE_RAZOR_WIND, 58
    terminatelearnset

levelup SPECIES_WYNAUT
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 5
    learnset MOVE_SAFEGUARD, 8
    learnset MOVE_DESTINY_BOND, 16
    learnset MOVE_SPLASH, 12
    learnset MOVE_CHARM, 16
    learnset MOVE_ENCORE, 20
    terminatelearnset

levelup SPECIES_SNORUNT
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_BITE, 26
    learnset MOVE_ICE_FANG, 28
    learnset MOVE_FROST_BREATH, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_BLIZZARD, 42
    terminatelearnset

levelup SPECIES_GLALIE
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_SHEER_COLD, 5
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_LEER, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_BITE, 30
    learnset MOVE_ICE_FANG, 34
    learnset MOVE_FROST_BREATH, 36
    learnset MOVE_HEADBUTT, 38
    learnset MOVE_CRUNCH, 45
    learnset MOVE_BLIZZARD, 48
    terminatelearnset

levelup SPECIES_SPHEAL
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_ICE_BALL, 16
    learnset MOVE_BRINE, 20
    learnset MOVE_ENCORE, 26
    learnset MOVE_REST, 28
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_SNORE, 34
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_SURF, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_SHEER_COLD, 48
    terminatelearnset

levelup SPECIES_SEALEO
    learnset MOVE_SWAGGER, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_ICE_BALL, 20
    learnset MOVE_BRINE, 26
    learnset MOVE_ENCORE, 28
    learnset MOVE_REST, 30
    learnset MOVE_AURORA_BEAM, 34
    learnset MOVE_SNORE, 36
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_SURF, 42
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_SHEER_COLD, 52
    terminatelearnset

levelup SPECIES_WALREIN
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_SWAGGER, 5
    learnset MOVE_CRUNCH, 8
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_DEFENSE_CURL, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 20
    learnset MOVE_POWDER_SNOW, 26
    learnset MOVE_ICE_BALL, 28
    learnset MOVE_BRINE, 30
    learnset MOVE_ENCORE, 34
    learnset MOVE_REST, 36
    learnset MOVE_AURORA_BEAM, 38
    learnset MOVE_SNORE, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_SURF, 48
    learnset MOVE_BLIZZARD, 54
    learnset MOVE_SHEER_COLD, 56
    terminatelearnset

levelup SPECIES_CLAMPERL
    learnset MOVE_CLAMP, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_WHIRLPOOL, 8
    learnset MOVE_SHELL_SMASH, 12
    terminatelearnset

levelup SPECIES_HUNTAIL
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_BITE, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_BRINE, 26
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_DIVE, 30
    learnset MOVE_CRUNCH, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_GOREBYSS
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_AQUA_RING, 26
    learnset MOVE_CAPTIVATE, 28
    learnset MOVE_DIVE, 30
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_RELICANTH
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_FLAIL, 8
    learnset MOVE_HEAD_SMASH, 16
    learnset MOVE_MUD_SPORT, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROCK_TOMB, 26
    learnset MOVE_DIVE, 28
    learnset MOVE_YAWN, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_REST, 38
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset

levelup SPECIES_LUVDISC
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_HEART_STAMP, 28
    learnset MOVE_FLAIL, 30
    learnset MOVE_SWEET_KISS, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_CAPTIVATE, 38
    learnset MOVE_AQUA_RING, 42
    learnset MOVE_SOAK, 45
    learnset MOVE_HYDRO_PUMP, 48
    learnset MOVE_SAFEGUARD, 52
    terminatelearnset

levelup SPECIES_BAGON
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_BITE, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_CRUNCH, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_OUTRAGE, 38
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset

levelup SPECIES_SHELGON
    learnset MOVE_PROTECT, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_LEER, 8
    learnset MOVE_BITE, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_RAGE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_FOCUS_ENERGY, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset

levelup SPECIES_SALAMENCE
    learnset MOVE_FLY, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_DRAGON_TAIL, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_LEER, 12
    learnset MOVE_BITE, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_THUNDER_FANG, 28
    learnset MOVE_RAGE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FOCUS_ENERGY, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_BELDUM
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAKE_DOWN, 5
    terminatelearnset

levelup SPECIES_METANG
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_BULLET_PUNCH, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_ZEN_HEADBUTT, 20
    learnset MOVE_FLASH_CANNON, 26
    learnset MOVE_PURSUIT, 28
    learnset MOVE_MIRACLE_EYE, 30
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_METEOR_MASH, 38
    learnset MOVE_HYPER_BEAM, 48
    terminatelearnset

levelup SPECIES_METAGROSS
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_BULLET_PUNCH, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_MAGNET_RISE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FLASH_CANNON, 26
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_PURSUIT, 30
    learnset MOVE_MIRACLE_EYE, 34
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_METEOR_MASH, 42
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_REGIROCK
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_EXPLOSION, 8
    learnset MOVE_STOMP, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_ROCK_SLIDE, 20
    learnset MOVE_HAMMER_ARM, 30
    learnset MOVE_STONE_EDGE, 34
    learnset MOVE_SUPERPOWER, 36
    learnset MOVE_LOCK_ON, 38
    learnset MOVE_ZAP_CANNON, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_REGICE
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ICY_WIND, 5
    learnset MOVE_EXPLOSION, 8
    learnset MOVE_STOMP, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_ICE_BEAM, 26
    learnset MOVE_HAMMER_ARM, 30
    learnset MOVE_BLIZZARD, 34
    learnset MOVE_SUPERPOWER, 36
    learnset MOVE_LOCK_ON, 38
    learnset MOVE_ZAP_CANNON, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_REGISTEEL
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 5
    learnset MOVE_EXPLOSION, 8
    learnset MOVE_STOMP, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_IRON_HEAD, 26
    learnset MOVE_FLASH_CANNON, 28
    learnset MOVE_HAMMER_ARM, 36
    learnset MOVE_HEAVY_SLAM, 38
    learnset MOVE_SUPERPOWER, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_ZAP_CANNON, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_LATIAS
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_CHARM, 5
    learnset MOVE_HEALING_WISH, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_WISH, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_WATER_SPORT, 26
    learnset MOVE_REFRESH, 28
    learnset MOVE_CONFUSION, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_DRAGON_BREATH, 38
    learnset MOVE_MIST_BALL, 42
    learnset MOVE_HEAL_PULSE, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_REFLECT_TYPE, 52
    learnset MOVE_DRAGON_PULSE, 54
    learnset MOVE_PSYCHO_SHIFT, 56
    learnset MOVE_PSYCHIC, 58
    terminatelearnset

levelup SPECIES_LATIOS
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_MEMENTO, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_HEAL_BLOCK, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_PROTECT, 26
    learnset MOVE_REFRESH, 28
    learnset MOVE_CONFUSION, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_DRAGON_BREATH, 38
    learnset MOVE_LUSTER_PURGE, 42
    learnset MOVE_ALLY_SWITCH, 45
    learnset MOVE_HEAL_PULSE, 48
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_DRAGON_PULSE, 56
    learnset MOVE_PSYCHO_SHIFT, 58
    learnset MOVE_SIMPLE_BEAM, 60
    learnset MOVE_PSYCHIC, 65
    terminatelearnset

levelup SPECIES_KYOGRE
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_ANCIENT_POWER, 5
    learnset MOVE_BODY_SLAM, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_AQUA_TAIL, 12
    learnset MOVE_ICE_BEAM, 20
    learnset MOVE_MUDDY_WATER, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_SHEER_COLD, 30
    learnset MOVE_ORIGIN_PULSE, 34
    learnset MOVE_HYDRO_PUMP, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_WATER_SPOUT, 42
    terminatelearnset

levelup SPECIES_GROUDON
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_ANCIENT_POWER, 5
    learnset MOVE_LAVA_PLUME, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_EARTH_POWER, 12
    learnset MOVE_EARTHQUAKE, 16
    learnset MOVE_REST, 26
    learnset MOVE_FISSURE, 28
    learnset MOVE_PRECIPICE_BLADES, 30
    learnset MOVE_HAMMER_ARM, 34
    learnset MOVE_SOLAR_BEAM, 36
    learnset MOVE_FIRE_BLAST, 38
    learnset MOVE_ERUPTION, 42
    terminatelearnset

levelup SPECIES_RAYQUAZA
    learnset MOVE_DRAGON_ASCENT, 1
    learnset MOVE_TWISTER, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_AIR_SLASH, 16
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_CRUNCH, 16
    learnset MOVE_EXTREME_SPEED, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_REST, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_FLY, 36
    learnset MOVE_HURRICANE, 38
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_JIRACHI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WISH, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_REFRESH, 16
    learnset MOVE_LUCKY_CHANT, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_PSYCHIC, 28
    learnset MOVE_REST, 30
    learnset MOVE_GRAVITY, 34
    learnset MOVE_METEOR_MASH, 36
    learnset MOVE_HEALING_WISH, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_FUTURE_SIGHT, 45
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_DOOM_DESIRE, 54
    terminatelearnset

levelup SPECIES_DEOXYS
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_KNOCK_OFF, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_PSYCHIC, 20
    learnset MOVE_PSYCHO_SHIFT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RECOVER, 36
    learnset MOVE_PSYCHO_BOOST, 38
    learnset MOVE_HYPER_BEAM, 42
    terminatelearnset

levelup SPECIES_TURTWIG
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 8
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_BITE, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_LEAF_STORM, 36
    terminatelearnset

levelup SPECIES_GROTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 8
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_BITE, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_LEAF_STORM, 36
    terminatelearnset

levelup SPECIES_TORTERRA
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WOOD_HAMMER, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_ABSORB, 12
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_BITE, 26
    learnset MOVE_MEGA_DRAIN, 28
    learnset MOVE_LEECH_SEED, 30
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_LEAF_STORM, 42
    terminatelearnset

levelup SPECIES_CHIMCHAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_TORMENT, 26
    learnset MOVE_FACADE, 28
    learnset MOVE_FIRE_SPIN, 30
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_SLACK_OFF, 36
    learnset MOVE_FLAMETHROWER, 38
    terminatelearnset

levelup SPECIES_MONFERNO
    learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FEINT, 26
    learnset MOVE_TORMENT, 28
    learnset MOVE_CLOSE_COMBAT, 30
    learnset MOVE_FIRE_SPIN, 34
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_SLACK_OFF, 38
    learnset MOVE_FLARE_BLITZ, 42
    terminatelearnset

levelup SPECIES_INFERNAPE
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_MACH_PUNCH, 5
    learnset MOVE_FLARE_BLITZ, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_LEER, 12
    learnset MOVE_EMBER, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_FLAME_WHEEL, 28
    learnset MOVE_FEINT, 30
    learnset MOVE_PUNISHMENT, 34
    learnset MOVE_FIRE_SPIN, 36
    learnset MOVE_ACROBATICS, 38
    terminatelearnset

levelup SPECIES_PIPLUP
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_PECK, 12
    learnset MOVE_BUBBLE_BEAM, 16
    learnset MOVE_BIDE, 20
    learnset MOVE_FURY_ATTACK, 26
    learnset MOVE_BRINE, 28
    learnset MOVE_WHIRLPOOL, 30
    learnset MOVE_MIST, 34
    learnset MOVE_DRILL_PECK, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_PRINPLUP
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_BUBBLE, 16
    learnset MOVE_WATER_SPORT, 12
    learnset MOVE_PECK, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_BIDE, 26
    learnset MOVE_FURY_ATTACK, 28
    learnset MOVE_BRINE, 30
    learnset MOVE_WHIRLPOOL, 34
    learnset MOVE_MIST, 36
    learnset MOVE_DRILL_PECK, 38
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset

levelup SPECIES_EMPOLEON
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_METAL_CLAW, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_BUBBLE, 12
    learnset MOVE_PECK, 20
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_SWAGGER, 28
    learnset MOVE_FURY_ATTACK, 30
    learnset MOVE_BRINE, 34
    learnset MOVE_WHIRLPOOL, 36
    learnset MOVE_MIST, 38
    learnset MOVE_DRILL_PECK, 42
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_STARLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_AERIAL_ACE, 10
    learnset MOVE_ENDEAVOR, 15
    learnset MOVE_WHIRLWIND, 20
    learnset MOVE_DUAL_WINGBEAT, 25
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_FINAL_GAMBIT, 35
    learnset MOVE_BRAVE_BIRD, 40
    learnset MOVE_DOUBLE_EDGE, 45
terminatelearnset

levelup SPECIES_STARAVIA
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_AERIAL_ACE, 9
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_WHIRLWIND, 22
    learnset MOVE_DUAL_WINGBEAT, 28
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_FINAL_GAMBIT, 40
    learnset MOVE_BRAVE_BIRD, 45
    learnset MOVE_DOUBLE_EDGE, 50
terminatelearnset

levelup SPECIES_STARAPTOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_AERIAL_ACE, 9
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_WHIRLWIND, 22
    learnset MOVE_DUAL_WINGBEAT, 28
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_TAILWIND, 38
    learnset MOVE_CLOSE_COMBAT, 41
    learnset MOVE_BRAVE_BIRD, 47
    learnset MOVE_DOUBLE_EDGE, 53
    learnset MOVE_MIRROR_MOVE, 60
terminatelearnset


levelup SPECIES_BIDOOF
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_HYPER_FANG, 28
    learnset MOVE_SUPER_FANG, 30
    learnset MOVE_SUPERPOWER, 38
    terminatelearnset

levelup SPECIES_BIBAREL
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_AQUA_CUTTER, 23
	learnset MOVE_CRUNCH, 27
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_SUPERPOWER, 38
	learnset MOVE_AQUA_TAIL, 42
	learnset MOVE_WOOD_HAMMER, 45
	learnset MOVE_DOUBLE_EDGE, 50
    terminatelearnset

levelup SPECIES_KRICKETOT
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_BUG_BITE, 8
    terminatelearnset

levelup SPECIES_KRICKETUNE
    learnset MOVE_KARATE_CHOP, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BIDE, 8
	learnset MOVE_FURY_CUTTER, 12
    learnset MOVE_CUT, 16
    learnset MOVE_SLASH, 20
	learnset MOVE_NIGHT_SLASH, 20
	learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_THROAT_CHOP, 28
    learnset MOVE_CROSS_CHOP, 35
	learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_LEAF_BLADE, 48
    learnset MOVE_LEECH_LIFE, 53
    learnset MOVE_CROSS_POISON, 60
    learnset MOVE_CLOSE_COMBAT, 65
    terminatelearnset

levelup SPECIES_SHINX
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_SPARK, 9
    learnset MOVE_NUZZLE, 12
    learnset MOVE_BITE, 16
    learnset MOVE_COVET, 19
    learnset MOVE_CHARM, 23
    learnset MOVE_WILD_CHARGE, 29
    learnset MOVE_CRUNCH, 33
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_ZING_ZAP, 45
terminatelearnset

levelup SPECIES_LUXIO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_SPARK, 9
    learnset MOVE_NUZZLE, 13
    learnset MOVE_BITE, 18
    learnset MOVE_COVET, 22
    learnset MOVE_CHARM, 27
    learnset MOVE_WILD_CHARGE, 31
    learnset MOVE_CRUNCH, 36
    learnset MOVE_THUNDERBOLT, 40
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_ZING_ZAP, 49
terminatelearnset

levelup SPECIES_LUXRAY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_SPARK, 9
    learnset MOVE_NUZZLE, 13
    learnset MOVE_BITE, 18
    learnset MOVE_COVET, 22
    learnset MOVE_CHARM, 27
    learnset MOVE_WILD_CHARGE, 33
    learnset MOVE_CRUNCH, 38
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_ZING_ZAP, 55
terminatelearnset


levelup SPECIES_BUDEW
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_WORRY_SEED, 16
    learnset MOVE_WATER_SPORT, 12
    learnset MOVE_MEGA_DRAIN, 16
    terminatelearnset

levelup SPECIES_ROSERADE
    learnset MOVE_POISON_STING, 5
    learnset MOVE_VENOM_DRENCH, 8
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_SWEET_SCENT, 26
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_SYNTHESIS, 30
    learnset MOVE_TOXIC, 34
    learnset MOVE_PETAL_BLIZZARD, 36
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_INGRAIN, 42
    learnset MOVE_PETAL_DANCE, 45
    learnset MOVE_ABSORB, 48
    learnset MOVE_STUN_SPORE, 54
    learnset MOVE_WORRY_SEED, 56
    learnset MOVE_WEATHER_BALL, 58
    terminatelearnset

levelup SPECIES_CRANIDOS
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_PURSUIT, 16
    learnset MOVE_TAKE_DOWN, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_CHIP_AWAY, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_HEAD_SMASH, 36
    terminatelearnset

levelup SPECIES_RAMPARDOS
    learnset MOVE_ENDEAVOR, 1
    learnset MOVE_HEADBUTT, 5
    learnset MOVE_LEER, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_PURSUIT, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_HEAD_SMASH, 38
    terminatelearnset

levelup SPECIES_SHIELDON
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_TAKE_DOWN, 12
    learnset MOVE_SWAGGER, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_ENDURE, 28
    learnset MOVE_METAL_BURST, 30
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_HEAVY_SLAM, 36
    terminatelearnset

levelup SPECIES_BASTIODON
    learnset MOVE_BLOCK, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_METAL_SOUND, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_SWAGGER, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ENDURE, 30
    learnset MOVE_METAL_BURST, 34
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_HEAVY_SLAM, 38
    terminatelearnset

levelup SPECIES_BURMY
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_HIDDEN_POWER, 16
    terminatelearnset

levelup SPECIES_WORMADAM
    learnset MOVE_SUCKER_PUNCH, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_CONFUSION, 20
    learnset MOVE_RAZOR_LEAF, 26
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_CAPTIVATE, 34
    learnset MOVE_FLAIL, 36
    learnset MOVE_ATTRACT, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_LEAF_STORM, 45
    learnset MOVE_BUG_BUZZ, 48
    terminatelearnset

levelup SPECIES_MOTHIM
    learnset MOVE_TACKLE, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_HIDDEN_POWER, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_GUST, 20
    learnset MOVE_POISON_POWDER, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_CAMOUFLAGE, 30
    learnset MOVE_SILVER_WIND, 34
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_LUNGE, 42
    learnset MOVE_BUG_BUZZ, 45
    terminatelearnset

levelup SPECIES_COMBEE
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_GUST, 5
    learnset MOVE_STRUGGLE_BUG, 8
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_BUG_BUZZ, 12
    terminatelearnset

levelup SPECIES_VESPIQUEN
    learnset MOVE_SLASH, 1
    learnset MOVE_STRUGGLE_BUG, 5
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_GUST, 12
    learnset MOVE_POISON_STING, 16
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_FELL_STINGER, 26
    learnset MOVE_DESTINY_BOND, 28
    learnset MOVE_FURY_CUTTER, 30
    learnset MOVE_AROMATIC_MIST, 34
    learnset MOVE_PURSUIT, 36
    learnset MOVE_FURY_SWIPES, 38
    learnset MOVE_AROMATHERAPY, 42
    learnset MOVE_POWER_GEM, 45
    learnset MOVE_DEFEND_ORDER, 48
    learnset MOVE_HEAL_ORDER, 52
    learnset MOVE_AIR_SLASH, 54
    learnset MOVE_SWAGGER, 56
    learnset MOVE_TOXIC, 58
    learnset MOVE_CAPTIVATE, 60
    learnset MOVE_ATTACK_ORDER, 65
    terminatelearnset

levelup SPECIES_PACHIRISU
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_SPARK, 12
    learnset MOVE_ENDURE, 16
    learnset MOVE_NUZZLE, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_ELECTRO_BALL, 28
    learnset MOVE_SWEET_KISS, 30
    learnset MOVE_THUNDER_WAVE, 34
    learnset MOVE_SUPER_FANG, 36
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_LAST_RESORT, 42
    learnset MOVE_HYPER_FANG, 45
    terminatelearnset

levelup SPECIES_BUIZEL
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_AQUA_JET, 26
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_WHIRLPOOL, 30
    learnset MOVE_RAZOR_WIND, 34
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset

levelup SPECIES_FLOATZEL
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_CRUNCH, 5
    learnset MOVE_SONIC_BOOM, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_SPORT, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_WATER_GUN, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_SWIFT, 28
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_DOUBLE_HIT, 34
    learnset MOVE_WHIRLPOOL, 36
    learnset MOVE_RAZOR_WIND, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_CHERUBI
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_WORRY_SEED, 30
    learnset MOVE_PETAL_BLIZZARD, 34
    learnset MOVE_LUCKY_CHANT, 36
    learnset MOVE_SOLAR_BEAM, 38
    terminatelearnset

levelup SPECIES_CHERRIM
    learnset MOVE_PETAL_DANCE, 5
    learnset MOVE_FLOWER_SHIELD, 8
    learnset MOVE_MORNING_SUN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_MAGICAL_LEAF, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_PETAL_BLIZZARD, 38
    learnset MOVE_LUCKY_CHANT, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_SHELLOS
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_MUD_BOMB, 16
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_RECOVER, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_MEMENTO, 42
    terminatelearnset

levelup SPECIES_GASTRODON
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_RECOVER, 16
    learnset MOVE_MUD_SPORT, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_MUD_BOMB, 20
    learnset MOVE_HIDDEN_POWER, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_MEMENTO, 42
    terminatelearnset

levelup SPECIES_AMBIPOM
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_ASTONISH, 12
    learnset MOVE_TICKLE, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_SWIFT, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_FLING, 38
    learnset MOVE_LAST_RESORT, 45
    terminatelearnset

levelup SPECIES_DRIFLOON
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_FOCUS_ENERGY, 5
    learnset MOVE_HYPNOSIS, 9
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_AIR_CUTTER, 17
    learnset MOVE_PAYBACK, 20
    learnset MOVE_OMINOUS_WIND, 24
    learnset MOVE_HEX, 28
    learnset MOVE_DEFOG, 33
    learnset MOVE_SELF_DESTRUCT, 40
    learnset MOVE_SHADOW_BALL, 44
    learnset MOVE_ACROBATICS, 51
    learnset MOVE_TAILWIND, 55
    learnset MOVE_EXPLOSION, 60
terminatelearnset

levelup SPECIES_DRIFBLIM
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_FOCUS_ENERGY, 5
    learnset MOVE_HYPNOSIS, 9
    learnset MOVE_NIGHT_SHADE, 14
    learnset MOVE_PAYBACK, 18
    learnset MOVE_AIR_CUTTER, 23
    learnset MOVE_OMINOUS_WIND, 28
    learnset MOVE_HEX, 33
    learnset MOVE_DEFOG, 37
    learnset MOVE_SELF_DESTRUCT, 43
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_ACROBATICS, 56
    learnset MOVE_TAILWIND, 61
    learnset MOVE_EXPLOSION, 67
terminatelearnset

levelup SPECIES_BUNEARY
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_FORESIGHT, 5
    learnset MOVE_BABY_DOLL_EYES, 12
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_COVET, 18
	learnset MOVE_THIEF, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_DIZZY_PUNCH, 30
    learnset MOVE_CHARM, 44
    learnset MOVE_HEALING_WISH, 60
terminatelearnset

levelup SPECIES_LOPUNNY
    learnset MOVE_U_TURN, 1
    learnset MOVE_TRIPLE_AXEL, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DIZZY_PUNCH, 20
    learnset MOVE_BOUNCE, 22
    learnset MOVE_JUMP_KICK, 25
    learnset MOVE_RETURN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_FAKE_OUT, 38
    learnset MOVE_COPYCAT, 42
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_HIGH_JUMP_KICK, 60
terminatelearnset

levelup SPECIES_MISMAGIUS
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_POWER_GEM, 5
    learnset MOVE_PHANTOM_FORCE, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MAGICAL_LEAF, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_PSYWAVE, 20
    learnset MOVE_SPITE, 26
    learnset MOVE_ASTONISH, 28
    terminatelearnset

levelup SPECIES_HONCHKROW
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_SUCKER_PUNCH, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_PURSUIT, 16
    learnset MOVE_HAZE, 12
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_FOUL_PLAY, 28
    learnset MOVE_QUASH, 30
    learnset MOVE_DARK_PULSE, 34
    terminatelearnset

levelup SPECIES_GLAMEOW
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_CHARM, 20
    learnset MOVE_ASSIST, 26
    learnset MOVE_CAPTIVATE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_ATTRACT, 36
    learnset MOVE_PLAY_ROUGH, 42
    terminatelearnset

levelup SPECIES_PURUGLY
    learnset MOVE_SWAGGER, 1
    learnset MOVE_FAKE_OUT, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_ASSIST, 28
    learnset MOVE_CAPTIVATE, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_ATTRACT, 38
    terminatelearnset

levelup SPECIES_CHINGLING
    learnset MOVE_WRAP, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_CONFUSION, 12
    learnset MOVE_YAWN, 14
    learnset MOVE_LAST_RESORT, 16
    learnset MOVE_UPROAR, 20
	learnset MOVE_EXTRASENSORY, 25
    terminatelearnset

levelup SPECIES_STUNKY
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_FEINT, 16
    learnset MOVE_SMOKESCREEN, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_ACID_SPRAY, 20
    learnset MOVE_SCREECH, 26
    learnset MOVE_BITE, 28
    learnset MOVE_VENOSHOCK, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_MEMENTO, 38
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_VENOM_DRENCH, 48
    learnset MOVE_BELCH, 52
    learnset MOVE_EXPLOSION, 54
    terminatelearnset

levelup SPECIES_SKUNTANK
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_POISON_GAS, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_FEINT, 16
    learnset MOVE_SMOKESCREEN, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_BITE, 30
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_MEMENTO, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_NIGHT_SLASH, 48
    learnset MOVE_VENOM_DRENCH, 52
    learnset MOVE_BELCH, 54
    learnset MOVE_EXPLOSION, 56
    terminatelearnset

levelup SPECIES_BRONZOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_IMPRISON, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_PAYBACK, 26
    learnset MOVE_GYRO_BALL, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_EXTRASENSORY, 36
    learnset MOVE_METAL_SOUND, 38
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_HEAVY_SLAM, 45
    learnset MOVE_HEAL_BLOCK, 48
    terminatelearnset

levelup SPECIES_BRONZONG
    learnset MOVE_BLOCK, 1
    learnset MOVE_WEATHER_BALL, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_PAYBACK, 20
    learnset MOVE_HYPNOSIS, 28
    learnset MOVE_IMPRISON, 30
    learnset MOVE_PSYWAVE, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_GYRO_BALL, 42
    learnset MOVE_EXTRASENSORY, 48
    learnset MOVE_METAL_SOUND, 52
    learnset MOVE_FUTURE_SIGHT, 54
    learnset MOVE_HEAVY_SLAM, 56
    learnset MOVE_HEAL_BLOCK, 58
    terminatelearnset

levelup SPECIES_BONSLY
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_FLAIL, 8
    learnset MOVE_MIMIC, 11
    learnset MOVE_ACCELEROCK, 14 
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_LOW_KICK, 28
    learnset MOVE_FALSE_SURRENDER, 33
    learnset MOVE_THUNDER_PUNCH, 38
	learnset MOVE_ICE_PUNCH, 38
	learnset MOVE_FIRE_PUNCH, 38
    learnset MOVE_SUCKER_PUNCH, 44
    learnset MOVE_WOOD_HAMMER, 48
    learnset MOVE_HAMMER_ARM, 53
    terminatelearnset

levelup SPECIES_MIMEJR
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 5
    learnset MOVE_CONFUSION, 16
    learnset MOVE_TICKLE, 12
    learnset MOVE_MEDITATE, 16
    learnset MOVE_DOUBLE_SLAP, 20
    learnset MOVE_ENCORE, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_MIMIC, 34
    learnset MOVE_PSYBEAM, 36
    learnset MOVE_RECYCLE, 38
    learnset MOVE_ROLE_PLAY, 42
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_REFLECT, 48
    learnset MOVE_SUCKER_PUNCH, 56
    learnset MOVE_SAFEGUARD, 58
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_DAZZLING_GLEAM, 65
    learnset MOVE_TEETER_DANCE, 68
    terminatelearnset

levelup SPECIES_HAPPINY
    learnset MOVE_POUND, 5
    learnset MOVE_COPYCAT, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_DEFENSE_CURL, 12
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_REFRESH, 20
    learnset MOVE_DISARMING_VOICE, 26
    learnset MOVE_COVET, 28
    terminatelearnset

levelup SPECIES_CHATOT
    learnset MOVE_HYPER_VOICE, 1
    learnset MOVE_CHATTER, 5
    learnset MOVE_CONFIDE, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_PECK, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_MIRROR_MOVE, 20
    learnset MOVE_SING, 26
    learnset MOVE_FURY_ATTACK, 28
    learnset MOVE_ROUND, 30
    learnset MOVE_MIMIC, 34
    learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_ROOST, 38
    learnset MOVE_UPROAR, 42
    learnset MOVE_SYNCHRONOISE, 45
    learnset MOVE_FEATHER_DANCE, 48
    terminatelearnset

levelup SPECIES_SPIRITOMB
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_CONFUSE_RAY, 5
    learnset MOVE_PURSUIT, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_PAYBACK, 26
    learnset MOVE_HEX, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_HYPNOSIS, 38
    learnset MOVE_MEMENTO, 42
    learnset MOVE_DREAM_EATER, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DARK_PULSE, 52
    terminatelearnset

levelup SPECIES_GIBLE
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_BITE, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_DIG, 36
    learnset MOVE_DRAGON_RUSH, 38
    terminatelearnset

levelup SPECIES_GABITE
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_SAND_TOMB, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_BITE, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_DIG, 38
    learnset MOVE_DRAGON_RUSH, 42
    terminatelearnset

levelup SPECIES_GARCHOMP
    learnset MOVE_CRUNCH, 1
    learnset MOVE_DUAL_CHOP, 5
    learnset MOVE_SAND_TOMB, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_DRAGON_RAGE, 26
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_BITE, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_DRAGON_CLAW, 38
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_DIG, 45
    learnset MOVE_DRAGON_RUSH, 48
    terminatelearnset

levelup SPECIES_MUNCHLAX
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_LAST_RESORT, 8
    learnset MOVE_RECYCLE, 16
    learnset MOVE_METRONOME, 12
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_DEFENSE_CURL, 20
    learnset MOVE_COVET, 26
    learnset MOVE_BITE, 28
    learnset MOVE_CHIP_AWAY, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_SWALLOW, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_FLING, 48
    learnset MOVE_ROLLOUT, 52
    learnset MOVE_FLAIL, 54
    learnset MOVE_NATURAL_GIFT, 58
    terminatelearnset

levelup SPECIES_RIOLU
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_ENDURE, 5
    learnset MOVE_FORESIGHT, 8
    learnset MOVE_FEINT, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_COUNTER, 16
    learnset MOVE_ROCK_SMASH, 26
    learnset MOVE_SCREECH, 28
    learnset MOVE_FORCE_PALM, 30
    learnset MOVE_QUICK_GUARD, 34
    learnset MOVE_COPYCAT, 38
    learnset MOVE_REVERSAL, 45
    learnset MOVE_HELPING_HAND, 48
    learnset MOVE_FINAL_GAMBIT, 52
    terminatelearnset

levelup SPECIES_LUCARIO
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_SCREECH, 16
    learnset MOVE_FORCE_PALM, 20
    learnset MOVE_HELPING_HAND, 26
    learnset MOVE_COPYCAT, 28
    learnset MOVE_FINAL_GAMBIT, 30
    learnset MOVE_REVERSAL, 34
    learnset MOVE_QUICK_ATTACK, 36
    learnset MOVE_DETECT, 38
    learnset MOVE_FEINT, 42
    learnset MOVE_METAL_CLAW, 45
    learnset MOVE_LASER_FOCUS, 48
    learnset MOVE_FORESIGHT, 52
    learnset MOVE_COUNTER, 54
    learnset MOVE_POWER_UP_PUNCH, 56
    learnset MOVE_METAL_SOUND, 58
    learnset MOVE_QUICK_GUARD, 65
    learnset MOVE_BONE_RUSH, 68
    learnset MOVE_ME_FIRST, 74
    learnset MOVE_HEAL_PULSE, 76
    learnset MOVE_METEOR_MASH, 80
    learnset MOVE_DRAGON_PULSE, 80
    learnset MOVE_CLOSE_COMBAT, 80
    learnset MOVE_EXTREME_SPEED, 80
    terminatelearnset

levelup SPECIES_HIPPOPOTAS
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BITE, 8
    learnset MOVE_YAWN, 16
    learnset MOVE_DIG, 12
    learnset MOVE_SAND_TOMB, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CRUNCH, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_REST, 34
    learnset MOVE_EARTHQUAKE, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_FISSURE, 42
    learnset MOVE_SLACK_OFF, 45
    terminatelearnset

levelup SPECIES_HIPPOWDON
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 5
    learnset MOVE_THUNDER_FANG, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_DIG, 26
    learnset MOVE_SAND_TOMB, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CRUNCH, 36
    learnset MOVE_ROAR, 38
    learnset MOVE_REST, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_FISSURE, 52
    learnset MOVE_SLACK_OFF, 54
    terminatelearnset

levelup SPECIES_SKORUPI
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_POISON_FANG, 12
    learnset MOVE_KNOCK_OFF, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_BUG_BITE, 26
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_FELL_STINGER, 36
    learnset MOVE_ACUPRESSURE, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_TOXIC, 45
    learnset MOVE_NIGHT_SLASH, 48
    learnset MOVE_X_SCISSOR, 52
    learnset MOVE_CROSS_POISON, 54
    learnset MOVE_CRUNCH, 56
    terminatelearnset

levelup SPECIES_DRAPION
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 5
    learnset MOVE_FIRE_FANG, 8
    learnset MOVE_POISON_STING, 16
    learnset MOVE_LEER, 12
    learnset MOVE_FELL_STINGER, 20
    learnset MOVE_BITE, 26
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_POISON_FANG, 30
    learnset MOVE_PURSUIT, 34
    learnset MOVE_BUG_BITE, 36
    learnset MOVE_PIN_MISSILE, 38
    learnset MOVE_VENOSHOCK, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_TOXIC, 52
    learnset MOVE_SCARY_FACE, 54
    learnset MOVE_NIGHT_SLASH, 56
    learnset MOVE_X_SCISSOR, 58
    learnset MOVE_CROSS_POISON, 60
    learnset MOVE_CRUNCH, 65
    terminatelearnset

levelup SPECIES_CROAGUNK
    learnset MOVE_POISON_STING, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_FAKE_OUT, 8
	learnset MOVE_VACUUM_WAVE, 10
	learnset MOVE_MUD_SHOT, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_LOW_SWEEP, 20
    learnset MOVE_REVENGE, 20
	learnset MOVE_SEISMIC_TOSS, 24
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_AURA_SPHERE, 35
    learnset MOVE_VENOSHOCK, 39
    learnset MOVE_TOXIC, 42
    learnset MOVE_CROSS_CHOP, 45
    learnset MOVE_GUNK_SHOT, 50
    learnset MOVE_BELCH, 55
    terminatelearnset

levelup SPECIES_TOXICROAK
    learnset MOVE_POISON_STING, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_FAKE_OUT, 8
	learnset MOVE_VACUUM_WAVE, 10
	learnset MOVE_MUD_SHOT, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_LOW_SWEEP, 20
    learnset MOVE_REVENGE, 20
	learnset MOVE_SEISMIC_TOSS, 24
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_AURA_SPHERE, 35
    learnset MOVE_VENOSHOCK, 39
    learnset MOVE_TOXIC, 42
    learnset MOVE_CROSS_CHOP, 45
    learnset MOVE_GUNK_SHOT, 50
    learnset MOVE_BELCH, 55
    terminatelearnset

levelup SPECIES_CARNIVINE
    learnset MOVE_BIND, 1
    learnset MOVE_BITE, 8
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_INGRAIN, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_LEAF_TORNADO, 26
    learnset MOVE_SPIT_UP, 30
    learnset MOVE_SWALLOW, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_WRING_OUT, 38
    learnset MOVE_POWER_WHIP, 42
    terminatelearnset

levelup SPECIES_FINNEON
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_ATTRACT, 8
    learnset MOVE_GUST, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_CAPTIVATE, 20
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_WHIRLPOOL, 30
    learnset MOVE_U_TURN, 34
    learnset MOVE_BOUNCE, 36
    learnset MOVE_SILVER_WIND, 38
    learnset MOVE_SOAK, 42
    terminatelearnset

levelup SPECIES_LUMINEON
    learnset MOVE_SOAK, 1
    learnset MOVE_GUST, 5
    learnset MOVE_POUND, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_ATTRACT, 12
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_CAPTIVATE, 26
    learnset MOVE_SAFEGUARD, 28
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_WHIRLPOOL, 34
    learnset MOVE_U_TURN, 36
    learnset MOVE_BOUNCE, 38
    learnset MOVE_SILVER_WIND, 42
    terminatelearnset

levelup SPECIES_MANTYKE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_WIDE_GUARD, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_AQUA_RING, 42
    learnset MOVE_BOUNCE, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_SNOVER
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_GRASS_WHISTLE, 12
    learnset MOVE_MIST, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_ICE_SHARD, 26
    learnset MOVE_SWAGGER, 28
    learnset MOVE_INGRAIN, 30
    learnset MOVE_WOOD_HAMMER, 34
    learnset MOVE_BLIZZARD, 36
    learnset MOVE_SHEER_COLD, 38
    terminatelearnset

levelup SPECIES_ABOMASNOW
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_LEER, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_MIST, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_GRASS_WHISTLE, 28
    learnset MOVE_ICE_SHARD, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_INGRAIN, 36
    learnset MOVE_WOOD_HAMMER, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_SHEER_COLD, 45
    terminatelearnset

levelup SPECIES_WEAVILE
    learnset MOVE_REVENGE, 1
    learnset MOVE_ASSURANCE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_BEAT_UP, 16
    learnset MOVE_SLASH, 16
    learnset MOVE_SCRATCH, 20
    learnset MOVE_LEER, 26
    learnset MOVE_TAUNT, 28
    learnset MOVE_ICE_SHARD, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_METAL_CLAW, 38
    learnset MOVE_ICY_WIND, 42
    learnset MOVE_FURY_SWIPES, 45
    learnset MOVE_FLING, 54
    learnset MOVE_SCREECH, 58
    learnset MOVE_PUNISHMENT, 60
    learnset MOVE_NIGHT_SLASH, 65
    learnset MOVE_DARK_PULSE, 68
    terminatelearnset

levelup SPECIES_MAGNEZONE
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SUPERSONIC, 6
    learnset MOVE_SCREECH, 8
    learnset MOVE_THUNDER_WAVE, 12
    learnset MOVE_SHOCK_WAVE, 14
    learnset MOVE_SONIC_BOOM, 20
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_FLASH, 27
    learnset MOVE_RECYCLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_TRI_ATTACK, 35
    learnset MOVE_MIRROR_SHOT, 38
    learnset MOVE_ELECTROWEB, 43
    learnset MOVE_SIGNAL_BEAM, 47
    learnset MOVE_THUNDERBOLT, 52
    learnset MOVE_FLASH_CANNON, 56
    learnset MOVE_METAL_SOUND, 61
    learnset MOVE_EXPLOSION, 67
terminatelearnset

levelup SPECIES_LICKILICKY
    learnset MOVE_LICK, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_WRING_OUT, 12
    learnset MOVE_POWER_WHIP, 16
    learnset MOVE_WRAP, 20
    learnset MOVE_DISABLE, 26
    learnset MOVE_STOMP, 28
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_SLAM, 36
    learnset MOVE_ME_FIRST, 38
    learnset MOVE_SCREECH, 42
    learnset MOVE_REFRESH, 45
    learnset MOVE_GYRO_BALL, 52
    terminatelearnset

levelup SPECIES_RHYPERIOR
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_ROCK_WRECKER, 16
    learnset MOVE_HORN_DRILL, 20
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_HORN_ATTACK, 28
    learnset MOVE_FURY_ATTACK, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_STOMP, 36
    learnset MOVE_CHIP_AWAY, 38
    learnset MOVE_ROCK_BLAST, 42
    learnset MOVE_DRILL_RUN, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_MEGAHORN, 56
    terminatelearnset

levelup SPECIES_TANGROWTH
    learnset MOVE_BLOCK, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_BIND, 8
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_INGRAIN, 16
    learnset MOVE_CONSTRICT, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_MEGA_DRAIN, 28
    learnset MOVE_POISON_POWDER, 30
    learnset MOVE_SLEEP_POWDER, 34
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_ANCIENT_POWER, 38
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_NATURAL_GIFT, 45
    learnset MOVE_SLAM, 48
    learnset MOVE_TICKLE, 52
    learnset MOVE_WRING_OUT, 54
    learnset MOVE_POWER_WHIP, 56
    terminatelearnset

levelup SPECIES_ELECTIVIRE
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_FLASH, 8
    learnset MOVE_KARATE_CHOP, 11
    learnset MOVE_SHOCK_WAVE, 14
    learnset MOVE_THUNDER_WAVE, 17
    learnset MOVE_SCREECH, 20
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_THUNDER_PUNCH, 26
    learnset MOVE_ELECTROWEB, 29
    learnset MOVE_FEINT, 34
    learnset MOVE_THUNDERBOLT, 39
    learnset MOVE_CROSS_CHOP, 45
    learnset MOVE_WILD_CHARGE, 51
    learnset MOVE_THUNDER, 57
terminatelearnset


levelup SPECIES_MAGMORTAR
    learnset MOVE_SMOG, 1
    learnset MOVE_LEER, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_THUNDER_PUNCH, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_FIRE_SPIN, 26
    learnset MOVE_FLAME_WHEEL, 28
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_FLAME_BURST, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_FIRE_PUNCH, 38
    learnset MOVE_LAVA_PLUME, 42
    learnset MOVE_LOW_KICK, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_FIRE_BLAST, 54
    learnset MOVE_HYPER_BEAM, 56
    terminatelearnset

levelup SPECIES_TOGEKISS
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_SKY_ATTACK, 8
    learnset MOVE_AURA_SPHERE, 16
    learnset MOVE_EXTREME_SPEED, 12
    learnset MOVE_TRI_ATTACK, 16
    learnset MOVE_CHARM, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_YAWN, 28
    learnset MOVE_METRONOME, 30
    learnset MOVE_AFTER_YOU, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_FOLLOW_ME, 42
    learnset MOVE_LAST_RESORT, 48
    learnset MOVE_WISH, 52
    learnset MOVE_GROWL, 54
    learnset MOVE_POUND, 56
    learnset MOVE_SWEET_KISS, 58
    learnset MOVE_LIFE_DEW, 60
    terminatelearnset

levelup SPECIES_YANMEGA
    learnset MOVE_BUG_BUZZ, 1
    learnset MOVE_AIR_SLASH, 5
    learnset MOVE_NIGHT_SLASH, 8
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_FORESIGHT, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_DOUBLE_TEAM, 26
    learnset MOVE_SONIC_BOOM, 28
    learnset MOVE_DETECT, 30
    learnset MOVE_SUPERSONIC, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_PURSUIT, 38
    learnset MOVE_ANCIENT_POWER, 42
    learnset MOVE_FEINT, 45
    learnset MOVE_SLASH, 48
    learnset MOVE_SCREECH, 52
    learnset MOVE_U_TURN, 54
    terminatelearnset

levelup SPECIES_LEAFEON
    learnset MOVE_CUT, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_HELPING_HAND, 1
	learnset MOVE_RAZOR_LEAF, 20
	learnset MOVE_CHARM, 23
	learnset MOVE_SEED_BOMB, 27
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_BABY_DOLL_EYES, 33
    learnset MOVE_LEAF_BLADE, 36
    learnset MOVE_YAWN, 42
    learnset MOVE_U_TURN, 47
    learnset MOVE_SOLAR_BLADE, 50
    learnset MOVE_SPIRIT_BREAK, 54
    learnset MOVE_LAST_RESORT, 60
    terminatelearnset

levelup SPECIES_GLACEON
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_HELPING_HAND, 1
	learnset MOVE_ICY_WIND, 20
	learnset MOVE_CHARM, 23
	learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_BABY_DOLL_EYES, 33
    learnset MOVE_SPARKLING_ARIA, 36
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_DAZZLING_GLEAM, 47
    learnset MOVE_BLIZZARD, 50
    learnset MOVE_MIRROR_COAT, 54
    learnset MOVE_LAST_RESORT, 60
    terminatelearnset

levelup SPECIES_GLISCOR
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_NIGHT_SLASH, 25
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_FLY, 30
    learnset MOVE_X_SCISSOR, 34
    learnset MOVE_KNOCK_OFF, 41
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_ACROBATICS, 56
    learnset MOVE_U_TURN, 65
terminatelearnset

levelup SPECIES_MAMOSWINE
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_ICE_FANG, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_FURY_ATTACK, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_PECK, 30
    learnset MOVE_ODOR_SLEUTH, 34
    learnset MOVE_MUD_SPORT, 36
    learnset MOVE_ICE_SHARD, 38
    learnset MOVE_MUD_BOMB, 42
    learnset MOVE_ENDURE, 45
    learnset MOVE_MIST, 52
    learnset MOVE_ICY_WIND, 54
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_THRASH, 65
    learnset MOVE_BLIZZARD, 68
    terminatelearnset

levelup SPECIES_PORYGON_Z
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_CONVERSION, 12
    learnset MOVE_RECYCLE, 16
    learnset MOVE_MAGNET_RISE, 20
    learnset MOVE_ZAP_CANNON, 26
    learnset MOVE_MAGIC_COAT, 28
    learnset MOVE_CONVERSION_2, 30
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_THUNDER_SHOCK, 36
    learnset MOVE_RECOVER, 42
    learnset MOVE_SIGNAL_BEAM, 45
    learnset MOVE_EMBARGO, 48
    learnset MOVE_DISCHARGE, 52
    learnset MOVE_TRI_ATTACK, 54
    learnset MOVE_LOCK_ON, 56
    learnset MOVE_HYPER_BEAM, 58
    terminatelearnset

levelup SPECIES_GALLADE
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_IMPRISON, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_LIFE_DEW, 28
    learnset MOVE_CHARM, 30
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_DREAM_EATER, 38
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_LEER, 45
    learnset MOVE_FURY_CUTTER, 48
    learnset MOVE_DOUBLE_TEAM, 52
    learnset MOVE_CONFUSION, 54
    learnset MOVE_STORED_POWER, 56
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_LEAF_BLADE, 60
    learnset MOVE_AERIAL_ACE, 68
    learnset MOVE_HELPING_HAND, 70
    learnset MOVE_FEINT, 74
    learnset MOVE_FALSE_SWIPE, 80
    learnset MOVE_HEAL_PULSE, 80
    learnset MOVE_QUICK_GUARD, 80
    learnset MOVE_PSYCHO_CUT, 80
    learnset MOVE_PROTECT, 80
    learnset MOVE_WIDE_GUARD, 80
    terminatelearnset

levelup SPECIES_PROBOPASS
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_MAGNETIC_FLUX, 5
    learnset MOVE_MAGNET_RISE, 8
    learnset MOVE_GRAVITY, 16
    learnset MOVE_WIDE_GUARD, 12
    learnset MOVE_TACKLE, 16
    learnset MOVE_BLOCK, 26
    learnset MOVE_MAGNET_BOMB, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_REST, 34
    learnset MOVE_SPARK, 36
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_ROCK_BLAST, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_EARTH_POWER, 54
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_LOCK_ON, 58
    learnset MOVE_ZAP_CANNON, 60
    terminatelearnset

levelup SPECIES_DUSKNOIR
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 5
    learnset MOVE_ICE_PUNCH, 8
    learnset MOVE_THUNDER_PUNCH, 16
    learnset MOVE_GRAVITY, 12
    learnset MOVE_BIND, 16
    learnset MOVE_ASTONISH, 20
    learnset MOVE_LEER, 26
    learnset MOVE_DISABLE, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_FUTURE_SIGHT, 34
    learnset MOVE_NIGHT_SHADE, 36
    learnset MOVE_FORESIGHT, 38
    learnset MOVE_CONFUSE_RAY, 42
    learnset MOVE_PURSUIT, 45
    learnset MOVE_WILL_O_WISP, 48
    learnset MOVE_HEX, 54
    learnset MOVE_PAYBACK, 56
    learnset MOVE_MEAN_LOOK, 58
    learnset MOVE_SHADOW_BALL, 60
    learnset MOVE_DESTINY_BOND, 65
    terminatelearnset

levelup SPECIES_FROSLASS
    learnset MOVE_HEX, 1
    learnset MOVE_OMINOUS_WIND, 5
    learnset MOVE_DESTINY_BOND, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_BITE, 12
    learnset MOVE_ICE_FANG, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_POWDER_SNOW, 28
    learnset MOVE_ASTONISH, 30
    learnset MOVE_LEER, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_ICE_SHARD, 38
    learnset MOVE_ICY_WIND, 42
    learnset MOVE_DRAINING_KISS, 45
    learnset MOVE_FROST_BREATH, 48
    learnset MOVE_CONFUSE_RAY, 52
    learnset MOVE_WAKE_UP_SLAP, 54
    learnset MOVE_WILL_O_WISP, 56
    learnset MOVE_CAPTIVATE, 58
    learnset MOVE_SHADOW_BALL, 65
    learnset MOVE_BLIZZARD, 70
    terminatelearnset

levelup SPECIES_ROTOM
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_DISCHARGE, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_THUNDER_SHOCK, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HEX, 42
    terminatelearnset

levelup SPECIES_UXIE
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REST, 5
    learnset MOVE_MEMENTO, 8
    learnset MOVE_NATURAL_GIFT, 16
    learnset MOVE_FLAIL, 12
    learnset MOVE_SWIFT, 16
    learnset MOVE_ENDURE, 20
    learnset MOVE_IMPRISON, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_EXTRASENSORY, 30
    learnset MOVE_YAWN, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FUTURE_SIGHT, 42
    terminatelearnset

levelup SPECIES_MESPRIT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REST, 5
    learnset MOVE_HEALING_WISH, 8
    learnset MOVE_NATURAL_GIFT, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_SWIFT, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_IMPRISON, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_LUCKY_CHANT, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_FLATTER, 45
    terminatelearnset

levelup SPECIES_AZELF
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REST, 5
    learnset MOVE_NATURAL_GIFT, 8
    learnset MOVE_LAST_RESORT, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_DETECT, 16
    learnset MOVE_IMPRISON, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_EXTRASENSORY, 28
    learnset MOVE_UPROAR, 34
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_FUTURE_SIGHT, 38
    learnset MOVE_EXPLOSION, 42
    terminatelearnset

levelup SPECIES_DIALGA
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_METAL_CLAW, 5
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 12
    learnset MOVE_DRAGON_CLAW, 16
    learnset MOVE_POWER_GEM, 20
    learnset MOVE_FLASH_CANNON, 26
    learnset MOVE_AURA_SPHERE, 28
    learnset MOVE_METAL_BURST, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_IRON_TAIL, 36
    learnset MOVE_ROAR_OF_TIME, 38
    terminatelearnset

levelup SPECIES_PALKIA
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_WATER_PULSE, 5
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 12
    learnset MOVE_AQUA_RING, 16
    learnset MOVE_DRAGON_CLAW, 20
    learnset MOVE_POWER_GEM, 26
    learnset MOVE_AURA_SPHERE, 28
    learnset MOVE_AQUA_TAIL, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_SPACIAL_REND, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_HEATRAN
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_MAGMA_STORM, 8
    learnset MOVE_HEAT_WAVE, 16
    learnset MOVE_EARTH_POWER, 12
    learnset MOVE_IRON_HEAD, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_FIRE_FANG, 28
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_METAL_SOUND, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_STONE_EDGE, 42
    terminatelearnset

levelup SPECIES_REGIGIGAS
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSE_RAY, 5
    learnset MOVE_HEAVY_SLAM, 8
    learnset MOVE_CRUSH_GRIP, 16
    learnset MOVE_FIRE_PUNCH, 12
    learnset MOVE_ICE_PUNCH, 16
    learnset MOVE_THUNDER_PUNCH, 20
    learnset MOVE_DIZZY_PUNCH, 26
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_FORESIGHT, 30
    learnset MOVE_REVENGE, 34
    learnset MOVE_STOMP, 36
    learnset MOVE_PROTECT, 38
    learnset MOVE_PAYBACK, 42
    learnset MOVE_MEGA_PUNCH, 45
    learnset MOVE_BODY_PRESS, 48
    learnset MOVE_WIDE_GUARD, 52
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_HAMMER_ARM, 56
    learnset MOVE_GIGA_IMPACT, 58
    terminatelearnset

levelup SPECIES_GIRATINA
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_DEFOG, 5
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_OMINOUS_WIND, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_HEX, 26
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_AURA_SPHERE, 34
    learnset MOVE_PAIN_SPLIT, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_DESTINY_BOND, 42
    learnset MOVE_SHADOW_FORCE, 45
    terminatelearnset

levelup SPECIES_CRESSELIA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_LUNAR_DANCE, 8
    learnset MOVE_PSYCHO_SHIFT, 16
    learnset MOVE_PSYCHO_CUT, 12
    learnset MOVE_MOONLIGHT, 16
    learnset MOVE_MIST, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_FUTURE_SIGHT, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_MOONBLAST, 42
    terminatelearnset

levelup SPECIES_PHIONE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 5
    learnset MOVE_CHARM, 8
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_WHIRLPOOL, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_DIVE, 30
    terminatelearnset

levelup SPECIES_MANAPHY
    learnset MOVE_BUBBLE, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_BUBBLE_BEAM, 16
    learnset MOVE_WHIRLPOOL, 26
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_DIVE, 34
    terminatelearnset

levelup SPECIES_DARKRAI
    learnset MOVE_OMINOUS_WIND, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_NIGHTMARE, 16
    learnset MOVE_DOUBLE_TEAM, 20
    learnset MOVE_HAZE, 26
    learnset MOVE_DARK_VOID, 28
    learnset MOVE_DREAM_EATER, 34
    learnset MOVE_DARK_PULSE, 36
    terminatelearnset

levelup SPECIES_SHAYMIN
    learnset MOVE_MAGICAL_LEAF, 5
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_SYNTHESIS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_NATURAL_GIFT, 16
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_AROMATHERAPY, 26
    learnset MOVE_ENERGY_BALL, 28
    learnset MOVE_SWEET_KISS, 30
    learnset MOVE_HEALING_WISH, 34
    learnset MOVE_SEED_FLARE, 36
    terminatelearnset

levelup SPECIES_ARCEUS
    learnset MOVE_SEISMIC_TOSS, 1
    learnset MOVE_NATURAL_GIFT, 8
    learnset MOVE_PUNISHMENT, 16
    learnset MOVE_GRAVITY, 12
    learnset MOVE_EARTH_POWER, 16
    learnset MOVE_HYPER_VOICE, 20
    learnset MOVE_EXTREME_SPEED, 26
    learnset MOVE_REFRESH, 28
    learnset MOVE_FUTURE_SIGHT, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_HYPER_BEAM, 36
    learnset MOVE_PERISH_SONG, 38
    learnset MOVE_JUDGMENT, 42
    terminatelearnset

levelup SPECIES_EGG
    learnset MOVE_SPLASH, 1
    terminatelearnset

levelup SPECIES_BAD_EGG
    learnset MOVE_SPLASH, 1
    terminatelearnset

levelup SPECIES_DEOXYS_ATTACK
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_TAUNT, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_PSYCHIC, 20
    learnset MOVE_SUPERPOWER, 26
    learnset MOVE_PSYCHO_SHIFT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_ZAP_CANNON, 36
    learnset MOVE_PSYCHO_BOOST, 38
    learnset MOVE_HYPER_BEAM, 42
    terminatelearnset

levelup SPECIES_DEOXYS_DEFENSE
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_KNOCK_OFF, 12
    learnset MOVE_PSYCHIC, 20
    learnset MOVE_PSYCHO_SHIFT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RECOVER, 38
    learnset MOVE_PSYCHO_BOOST, 42
    learnset MOVE_COUNTER, 45
    learnset MOVE_MIRROR_COAT, 48
    terminatelearnset

levelup SPECIES_DEOXYS_SPEED
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_KNOCK_OFF, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_PSYCHIC, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_PSYCHO_SHIFT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RECOVER, 36
    learnset MOVE_PSYCHO_BOOST, 38
    learnset MOVE_EXTREME_SPEED, 42
    terminatelearnset

levelup SPECIES_WORMADAM_SANDY
    learnset MOVE_SUCKER_PUNCH, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_CONFUSION, 20
    learnset MOVE_ROCK_BLAST, 26
    learnset MOVE_HARDEN, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_CAPTIVATE, 34
    learnset MOVE_FLAIL, 36
    learnset MOVE_ATTRACT, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_FISSURE, 45
    learnset MOVE_BUG_BUZZ, 48
    terminatelearnset

levelup SPECIES_WORMADAM_TRASHY
    learnset MOVE_SUCKER_PUNCH, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_CONFUSION, 20
    learnset MOVE_MIRROR_SHOT, 26
    learnset MOVE_METAL_SOUND, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_CAPTIVATE, 34
    learnset MOVE_FLAIL, 36
    learnset MOVE_ATTRACT, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_BUG_BUZZ, 48
    terminatelearnset

levelup SPECIES_GIRATINA_ORIGIN
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_DEFOG, 5
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_OMINOUS_WIND, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_HEX, 26
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_AURA_SPHERE, 34
    learnset MOVE_PAIN_SPLIT, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_DESTINY_BOND, 42
    learnset MOVE_SHADOW_FORCE, 45
    terminatelearnset

levelup SPECIES_SHAYMIN_SKY
    learnset MOVE_MAGICAL_LEAF, 5
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_NATURAL_GIFT, 16
    learnset MOVE_WORRY_SEED, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_ENERGY_BALL, 28
    learnset MOVE_SWEET_KISS, 30
    learnset MOVE_LEAF_STORM, 34
    learnset MOVE_SEED_FLARE, 36
    terminatelearnset

levelup SPECIES_ROTOM_HEAT
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_DISCHARGE, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_THUNDER_SHOCK, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HEX, 42
    terminatelearnset

levelup SPECIES_ROTOM_WASH
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_DISCHARGE, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_THUNDER_SHOCK, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HEX, 42
    terminatelearnset

levelup SPECIES_ROTOM_FROST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_DISCHARGE, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_THUNDER_SHOCK, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HEX, 42
    terminatelearnset

levelup SPECIES_ROTOM_FAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_DISCHARGE, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_THUNDER_SHOCK, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HEX, 42
    terminatelearnset

levelup SPECIES_ROTOM_MOW
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_DISCHARGE, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_THUNDER_SHOCK, 20
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_OMINOUS_WIND, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HEX, 42
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
    learnset MOVE_V_CREATE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FLAME_CHARGE, 8
    learnset MOVE_CONFUSION, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_SEARING_SHOT, 16
    learnset MOVE_INCINERATE, 20
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_ENDURE, 30
    learnset MOVE_FLAME_BURST, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_REVERSAL, 38
    learnset MOVE_STORED_POWER, 42
    learnset MOVE_INFERNO, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_FLARE_BLITZ, 52
    learnset MOVE_FINAL_GAMBIT, 54
    learnset MOVE_OVERHEAT, 56
    terminatelearnset

levelup SPECIES_SNIVY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_WRAP, 16
    learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_LEAF_BLADE, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_WRING_OUT, 38
    learnset MOVE_GASTRO_ACID, 42
    learnset MOVE_LEAF_STORM, 45
    terminatelearnset

levelup SPECIES_SERVINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_WRAP, 16
    learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_LEAF_BLADE, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_WRING_OUT, 38
    learnset MOVE_GASTRO_ACID, 42
    learnset MOVE_LEAF_STORM, 45
    terminatelearnset

levelup SPECIES_SERPERIOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_WRAP, 16
    learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_LEAF_BLADE, 30
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_WRING_OUT, 38
    learnset MOVE_GASTRO_ACID, 42
    learnset MOVE_LEAF_STORM, 45
    terminatelearnset

levelup SPECIES_TEPIG
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 8
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_DEFENSE_CURL, 12
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_SMOG, 20
    learnset MOVE_ROLLOUT, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_HEAT_CRASH, 30
    learnset MOVE_ASSURANCE, 34
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_HEAD_SMASH, 38
    learnset MOVE_ROAR, 42
    learnset MOVE_FLARE_BLITZ, 45
    terminatelearnset

levelup SPECIES_PIGNITE
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_EMBER, 16
    learnset MOVE_ODOR_SLEUTH, 12
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_FLAME_CHARGE, 20
    learnset MOVE_SMOG, 26
    learnset MOVE_ROLLOUT, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_HEAT_CRASH, 34
    learnset MOVE_ASSURANCE, 36
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_HEAD_SMASH, 42
    learnset MOVE_ROAR, 45
    learnset MOVE_FLARE_BLITZ, 48
    terminatelearnset

levelup SPECIES_EMBOAR
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_HAMMER_ARM, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_EMBER, 12
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_DEFENSE_CURL, 20
    learnset MOVE_FLAME_CHARGE, 26
    learnset MOVE_SMOG, 28
    learnset MOVE_ROLLOUT, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_HEAT_CRASH, 36
    learnset MOVE_ASSURANCE, 38
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_HEAD_SMASH, 45
    learnset MOVE_ROAR, 48
    learnset MOVE_FLARE_BLITZ, 52
    terminatelearnset

levelup SPECIES_OSHAWOTT
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_RAZOR_SHELL, 16
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_REVENGE, 28
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_ENCORE, 34
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_RETALIATE, 38
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_DEWOTT
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_RAZOR_SHELL, 16
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_REVENGE, 28
    learnset MOVE_AQUA_JET, 30
    learnset MOVE_ENCORE, 34
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_RETALIATE, 38
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset

levelup SPECIES_SAMUROTT
    learnset MOVE_SLASH, 1
    learnset MOVE_MEGAHORN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_RAZOR_SHELL, 26
    learnset MOVE_FURY_CUTTER, 28
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_REVENGE, 34
    learnset MOVE_AQUA_JET, 36
    learnset MOVE_ENCORE, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_RETALIATE, 45
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_PATRAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_BIDE, 16
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_CRUNCH, 20
    learnset MOVE_HYPNOSIS, 26
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_AFTER_YOU, 30
    learnset MOVE_FOCUS_ENERGY, 34
    learnset MOVE_HYPER_FANG, 38
    learnset MOVE_MEAN_LOOK, 45
    learnset MOVE_SLAM, 52
    terminatelearnset

levelup SPECIES_WATCHOG
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_TACKLE, 8
    learnset MOVE_LEER, 16
    learnset MOVE_BITE, 12
    learnset MOVE_LOW_KICK, 16
    learnset MOVE_BIDE, 20
    learnset MOVE_DETECT, 26
    learnset MOVE_SAND_ATTACK, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_HYPNOSIS, 34
    learnset MOVE_SUPER_FANG, 36
    learnset MOVE_AFTER_YOU, 38
    learnset MOVE_FOCUS_ENERGY, 42
    learnset MOVE_PSYCH_UP, 45
    learnset MOVE_HYPER_FANG, 48
    learnset MOVE_MEAN_LOOK, 54
    learnset MOVE_SLAM, 58
    terminatelearnset

levelup SPECIES_LILLIPUP
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_BABY_DOLL_EYES, 12
    learnset MOVE_COVET, 14
    learnset MOVE_TAKE_DOWN, 18
    learnset MOVE_SUBMISSION, 22
    learnset MOVE_ROAR, 25
    learnset MOVE_PLAY_ROUGH, 30
    learnset MOVE_CRUNCH, 35
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_FACADE, 42
terminatelearnset

levelup SPECIES_HERDIER
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_COVET, 14
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_SUBMISSION, 23
    learnset MOVE_ROAR, 27
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_FACADE, 48
    learnset MOVE_SUPERPOWER, 52
terminatelearnset

levelup SPECIES_STOUTLAND
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_COVET, 14
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_SUBMISSION, 23
    learnset MOVE_ROAR, 28
    learnset MOVE_PLAY_ROUGH, 35
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_FACADE, 50
    learnset MOVE_CLOSE_COMBAT, 55
terminatelearnset


levelup SPECIES_PURRLOIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_NIGHT_SLASH, 20
    learnset MOVE_TORMENT, 22
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_SLASH, 30
    learnset MOVE_CAPTIVATE, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_NIGHT_SLASH, 45
    learnset MOVE_PLAY_ROUGH, 52
    terminatelearnset

levelup SPECIES_LIEPARD
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_NIGHT_SLASH, 20
    learnset MOVE_TORMENT, 22
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_SLASH, 30
    learnset MOVE_CAPTIVATE, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_NIGHT_SLASH, 45
    learnset MOVE_PLAY_ROUGH, 52
    terminatelearnset

levelup SPECIES_PANSAGE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TICKLE, 4
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_BITE, 12
	learnset MOVE_CUT, 16
    learnset MOVE_SMACK_DOWN, 20
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_LEAF_BLADE, 38
    learnset MOVE_CROSS_CHOP, 41
    learnset MOVE_GRASSY_GLIDE, 45
    learnset MOVE_HEAD_SMASH, 50
	learnset MOVE_DETECT, 55
    terminatelearnset

levelup SPECIES_SIMISAGE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TICKLE, 4
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_BITE, 12
	learnset MOVE_CUT, 16
    learnset MOVE_SMACK_DOWN, 20
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_LEAF_BLADE, 38
    learnset MOVE_CROSS_CHOP, 41
    learnset MOVE_GRASSY_GLIDE, 45
    learnset MOVE_HEAD_SMASH, 50
	learnset MOVE_DETECT, 55
    terminatelearnset

levelup SPECIES_PANSEAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TICKLE, 4
    learnset MOVE_EMBER, 8
    learnset MOVE_BITE, 12
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_PSYBEAM, 20
	learnset MOVE_REFLECT, 26
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_PSYCHIC_FANGS, 32
    learnset MOVE_MYSTICAL_FIRE, 36
    learnset MOVE_WILL_O_WISP, 38
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_FLARE_BLITZ, 50
	learnset MOVE_DETECT, 55
    terminatelearnset

levelup SPECIES_SIMISEAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TICKLE, 4
    learnset MOVE_EMBER, 8
    learnset MOVE_BITE, 12
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_PSYBEAM, 20
	learnset MOVE_REFLECT, 26
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_PSYCHIC_FANGS, 32
    learnset MOVE_MYSTICAL_FIRE, 36
    learnset MOVE_WILL_O_WISP, 38
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_FLARE_BLITZ, 50
	learnset MOVE_DETECT, 55
    terminatelearnset

levelup SPECIES_PANPOUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TICKLE, 4
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_BITE, 12
    learnset MOVE_BRINE, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_CHILLING_WATER, 26
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_LOW_KICK, 32
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_SCALD, 38
    learnset MOVE_ICY_WIND, 41
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_FLIP_TURN, 50
	learnset MOVE_ICE_BEAM, 55
    terminatelearnset

levelup SPECIES_SIMIPOUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TICKLE, 4
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_BITE, 12
    learnset MOVE_BRINE, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_CHILLING_WATER, 26
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_LOW_KICK, 32
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_SCALD, 38
    learnset MOVE_ICY_WIND, 41
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_FLIP_TURN, 50
	learnset MOVE_ICE_BEAM, 55
    terminatelearnset

levelup SPECIES_MUNNA
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TELEKINESIS, 5
    learnset MOVE_LUCKY_CHANT, 8
    learnset MOVE_YAWN, 12
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HEAL_BELL, 18
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_HYPNOSIS, 22
    learnset MOVE_PSYSHOCK, 25
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_MOONLIGHT, 32
    learnset MOVE_LOVELY_KISS, 35
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_MOONBLAST, 42
    learnset MOVE_FUTURE_SIGHT, 45
    learnset MOVE_DREAM_EATER, 50
    learnset MOVE_DARK_VOID, 60
terminatelearnset

levelup SPECIES_MUSHARNA
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_WISH, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TELEKINESIS, 5
    learnset MOVE_LUCKY_CHANT, 8
    learnset MOVE_YAWN, 12
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HEAL_BELL, 18
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_HYPNOSIS, 22
    learnset MOVE_PSYSHOCK, 25
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_MOONLIGHT, 35
    learnset MOVE_LOVELY_KISS, 39
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_FUTURE_SIGHT, 52
    learnset MOVE_DREAM_EATER, 58
    learnset MOVE_DARK_VOID, 69
terminatelearnset


levelup SPECIES_PIDOVE
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_DETECT, 20
    learnset MOVE_ROOST, 26
    learnset MOVE_SWAGGER, 28
    learnset MOVE_FEATHER_DANCE, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_RAZOR_WIND, 36
    learnset MOVE_TAILWIND, 38
    learnset MOVE_FACADE, 42
    learnset MOVE_SKY_ATTACK, 45
    terminatelearnset

levelup SPECIES_TRANQUILL
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_DETECT, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_ROOST, 28
    learnset MOVE_FEATHER_DANCE, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_RAZOR_WIND, 36
    learnset MOVE_FACADE, 38
    learnset MOVE_TAILWIND, 42
    learnset MOVE_SKY_ATTACK, 45
    terminatelearnset

levelup SPECIES_UNFEZANT
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_DETECT, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_FEATHER_DANCE, 28
    learnset MOVE_ROOST, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_RAZOR_WIND, 36
    learnset MOVE_FACADE, 38
    learnset MOVE_TAILWIND, 42
    learnset MOVE_SKY_ATTACK, 45
    terminatelearnset

levelup SPECIES_BLITZLE
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_SPARK, 12
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_PURSUIT, 20
    learnset MOVE_STOMP, 24
	learnset MOVE_BOUNCE, 28
    learnset MOVE_DISCHARGE, 31
	learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_WILD_CHARGE, 40
	learnset MOVE_PSYCHIC_FANGS, 45
    learnset MOVE_VOLT_TACKLE, 50
    terminatelearnset

levelup SPECIES_ZEBSTRIKA
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_SPARK, 12
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_PURSUIT, 20
    learnset MOVE_STOMP, 24
	learnset MOVE_BOUNCE, 28
    learnset MOVE_DISCHARGE, 31
	learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_WILD_CHARGE, 40
	learnset MOVE_PSYCHIC_FANGS, 45
    learnset MOVE_VOLT_TACKLE, 50
    terminatelearnset

levelup SPECIES_ROGGENROLA
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BLOCK, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_ROCK_BLAST, 17
    learnset MOVE_MUD_BOMB, 21
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_SELF_DESTRUCT, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_SAND_TOMB, 37
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_EXPLOSION, 49
terminatelearnset

levelup SPECIES_BOLDORE
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BLOCK, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_ROCK_BLAST, 17
    learnset MOVE_MUD_BOMB, 21
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_SAND_TOMB, 40
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_STONE_EDGE, 50
    learnset MOVE_EXPLOSION, 55
terminatelearnset

levelup SPECIES_GIGALITH
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BLOCK, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_ROCK_BLAST, 17
    learnset MOVE_MUD_BOMB, 21
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_SAND_TOMB, 41
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_STONE_EDGE, 53
    learnset MOVE_EXPLOSION, 61
terminatelearnset


levelup SPECIES_WOOBAT
    learnset MOVE_GUST, 1
    learnset MOVE_ATTRACT, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_HEART_STAMP, 12
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_IMPRISON, 26
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_SIMPLE_BEAM, 45
    terminatelearnset

levelup SPECIES_SWOOBAT
    learnset MOVE_GUST, 1
    learnset MOVE_ATTRACT, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_ODOR_SLEUTH, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_HEART_STAMP, 20
    learnset MOVE_AIR_CUTTER, 26
    learnset MOVE_IMPRISON, 28
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_SIMPLE_BEAM, 45
    terminatelearnset

levelup SPECIES_DRILBUR
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_MUD_SPORT, 16
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_CRUSH_CLAW, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_DRILL_RUN, 45
    learnset MOVE_FISSURE, 48
    terminatelearnset

levelup SPECIES_EXCADRILL
    learnset MOVE_HORN_DRILL, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_MUD_SPORT, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_METAL_CLAW, 28
    learnset MOVE_CRUSH_CLAW, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_DIG, 36
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_DRILL_RUN, 52
    learnset MOVE_FISSURE, 54
    terminatelearnset

levelup SPECIES_AUDINO
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_LAST_RESORT, 8
    learnset MOVE_HYPER_VOICE, 16
    learnset MOVE_GROWL, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_DISARMING_VOICE, 28
    learnset MOVE_REFRESH, 30
    learnset MOVE_DOUBLE_SLAP, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_ATTRACT, 38
    learnset MOVE_LIFE_DEW, 42
    learnset MOVE_SECRET_POWER, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_AFTER_YOU, 52
    learnset MOVE_SIMPLE_BEAM, 54
    learnset MOVE_HEAL_PULSE, 56
    learnset MOVE_ENTRAINMENT, 58
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset

levelup SPECIES_TIMBURR
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_LOW_KICK, 11
    learnset MOVE_ROCK_THROW, 14
    learnset MOVE_WAKE_UP_SLAP, 16
    learnset MOVE_CHIP_AWAY, 22
    learnset MOVE_PAYBACK, 25
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_HAMMER_ARM, 40
    learnset MOVE_STONE_EDGE, 43
    learnset MOVE_MACH_PUNCH, 46
    learnset MOVE_SUPERPOWER, 49
terminatelearnset


levelup SPECIES_GURDURR
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    learnset MOVE_CHIP_AWAY, 24
    learnset MOVE_PAYBACK, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_SCARY_FACE, 41
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_MACH_PUNCH, 53
    learnset MOVE_SUPERPOWER, 57
terminatelearnset


levelup SPECIES_CONKELDURR
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    learnset MOVE_CHIP_AWAY, 23
    learnset MOVE_PAYBACK, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_SCARY_FACE, 44
    learnset MOVE_HAMMER_ARM, 48
    learnset MOVE_STONE_EDGE, 55
    learnset MOVE_MACH_PUNCH, 60
    learnset MOVE_SUPERPOWER, 65
terminatelearnset


levelup SPECIES_TYMPOLE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_MUDDY_WATER, 25
    learnset MOVE_HYPER_VOICE, 29
    learnset MOVE_HYDRO_PUMP, 36
    learnset MOVE_BOOMBURST, 40
terminatelearnset

levelup SPECIES_PALPITOAD
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_MUD_SHOT, 17
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_MUDDY_WATER, 25
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_HYDRO_PUMP, 48
    learnset MOVE_BOOMBURST, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_EARTHQUAKE, 60
terminatelearnset

levelup SPECIES_SEISMITOAD
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_MUD_SHOT, 17
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_MUDDY_WATER, 25
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_HYDRO_PUMP, 52
    learnset MOVE_BOOMBURST, 57
    learnset MOVE_SLUDGE_BOMB, 60
    learnset MOVE_EARTHQUAKE, 65
terminatelearnset


levelup SPECIES_THROH
    learnset MOVE_BIND, 1
    learnset MOVE_LEER, 5
    learnset MOVE_MAT_BLOCK, 8
    learnset MOVE_BIDE, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_REVENGE, 16
    learnset MOVE_CIRCLE_THROW, 20
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_VITAL_THROW, 28
    learnset MOVE_STORM_THROW, 30
    learnset MOVE_SEISMIC_TOSS, 34
    learnset MOVE_WIDE_GUARD, 36
    learnset MOVE_ENDURE, 42
    learnset MOVE_REVERSAL, 45
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset

levelup SPECIES_SAWK
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BIDE, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_LOW_SWEEP, 16
    learnset MOVE_KARATE_CHOP, 20
    learnset MOVE_QUICK_GUARD, 26
    learnset MOVE_COUNTER, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_RETALIATE, 36
    learnset MOVE_ENDURE, 38
    learnset MOVE_REVERSAL, 42
    learnset MOVE_CLOSE_COMBAT, 45
    terminatelearnset

levelup SPECIES_SEWADDLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ELECTROWEB, 16
    learnset MOVE_PROTECT, 20
    terminatelearnset

levelup SPECIES_SWADLOON
	learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ELECTROWEB, 16
    learnset MOVE_PROTECT, 20
	learnset MOVE_GRASS_KNOT, 24
	learnset MOVE_SKITTER_SMACK, 28
	learnset MOVE_STICKY_WEB, 32
	learnset MOVE_FIRST_IMPRESSION, 36
    terminatelearnset

levelup SPECIES_LEAVANNY
	learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ELECTROWEB, 16
    learnset MOVE_PROTECT, 20
	learnset MOVE_GRASS_KNOT, 24
	learnset MOVE_SKITTER_SMACK, 28
	learnset MOVE_STICKY_WEB, 32
	learnset MOVE_FIRST_IMPRESSION, 36
	learnset MOVE_TROP_KICK, 40
	learnset MOVE_POUNCE, 45
	learnset MOVE_CROSS_POISON, 48
	learnset MOVE_TRIPLE_AXEL, 52
	learnset MOVE_POLLEN_PUFF, 58
    terminatelearnset

levelup SPECIES_VENIPEDE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_SCREECH, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_POISON_TAIL, 20
    learnset MOVE_BUG_BITE, 26
    learnset MOVE_VENOSHOCK, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_STEAMROLLER, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_VENOM_DRENCH, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset

levelup SPECIES_WHIRLIPEDE
    learnset MOVE_POISON_STING, 5
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_PROTECT, 12
    learnset MOVE_SCREECH, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_POISON_TAIL, 26
    learnset MOVE_BUG_BITE, 28
    learnset MOVE_VENOSHOCK, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_STEAMROLLER, 38
    learnset MOVE_TOXIC, 42
    learnset MOVE_VENOM_DRENCH, 45
    learnset MOVE_ROCK_CLIMB, 48
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_SCOLIPEDE
    learnset MOVE_POISON_STING, 8
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_MEGAHORN, 20
    learnset MOVE_SCREECH, 26
    learnset MOVE_PURSUIT, 28
    learnset MOVE_POISON_TAIL, 30
    learnset MOVE_BUG_BITE, 34
    learnset MOVE_VENOSHOCK, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_STEAMROLLER, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_ROCK_CLIMB, 52
    learnset MOVE_VENOM_DRENCH, 54
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_COTTONEE
    learnset MOVE_ABSORB, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_POISON_POWDER, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_COTTON_SPORE, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_ENERGY_BALL, 38
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_SOLAR_BEAM, 52
    terminatelearnset

levelup SPECIES_WHIMSICOTT
    learnset MOVE_GUST, 1
    learnset MOVE_TAILWIND, 5
    learnset MOVE_MOONBLAST, 8
    learnset MOVE_MEMENTO, 16
    learnset MOVE_HURRICANE, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_POISON_POWDER, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_LEECH_SEED, 36
    learnset MOVE_COTTON_SPORE, 38
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_SOLAR_BEAM, 54
    learnset MOVE_ABSORB, 56
    learnset MOVE_HELPING_HAND, 58
    learnset MOVE_FAIRY_WIND, 60
    learnset MOVE_STUN_SPORE, 65
    terminatelearnset

levelup SPECIES_PETILIL
    learnset MOVE_ABSORB, 1
    learnset MOVE_MEGA_DRAIN, 8
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_SLEEP_POWDER, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_AFTER_YOU, 38
    learnset MOVE_ENTRAINMENT, 45
    learnset MOVE_LEAF_STORM, 48
    terminatelearnset

levelup SPECIES_LILLIGANT
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_AFTER_YOU, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_ENERGY_BALL, 12
    learnset MOVE_ENTRAINMENT, 16
    learnset MOVE_GIGA_DRAIN, 20
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_LEAF_STORM, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_MEGA_DRAIN, 36
    learnset MOVE_PETAL_BLIZZARD, 38
    learnset MOVE_SLEEP_POWDER, 45
    learnset MOVE_STUN_SPORE, 48
    learnset MOVE_SYNTHESIS, 54
    learnset MOVE_TEETER_DANCE, 56
    learnset MOVE_MAGICAL_LEAF, 58
    terminatelearnset

levelup SPECIES_BASCULIN
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_UPROAR, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_CHIP_AWAY, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_FLAIL, 45
    learnset MOVE_FINAL_GAMBIT, 48
    learnset MOVE_THRASH, 52
    learnset MOVE_HEAD_SMASH, 54
    terminatelearnset

levelup SPECIES_SANDILE
    learnset MOVE_POWER_TRIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_BITE, 16
    learnset MOVE_SAND_TOMB, 20
    learnset MOVE_TORMENT, 26
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_MUD_SLAP, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_EMBARGO, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_DIG, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_FOUL_PLAY, 52
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_THRASH, 56
    terminatelearnset

levelup SPECIES_KROKOROK
    learnset MOVE_POWER_TRIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_RAGE, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SAND_TOMB, 20
    learnset MOVE_TORMENT, 26
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_MUD_SLAP, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_DIG, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_FOUL_PLAY, 52
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_THRASH, 56
    terminatelearnset

levelup SPECIES_KROOKODILE
    learnset MOVE_POWER_TRIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_RAGE, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SAND_TOMB, 20
    learnset MOVE_TORMENT, 26
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_MUD_SLAP, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_DIG, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_FOUL_PLAY, 48
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_THRASH, 56
    learnset MOVE_OUTRAGE, 58
    terminatelearnset

levelup SPECIES_DARUMAKA
    learnset MOVE_EMBER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BITE, 16
    learnset MOVE_INCINERATE, 12
    learnset MOVE_RAGE, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_TAUNT, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_FACADE, 30
    learnset MOVE_FIRE_PUNCH, 36
    learnset MOVE_UPROAR, 38
    learnset MOVE_FLARE_BLITZ, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_OVERHEAT, 52
    learnset MOVE_SUPERPOWER, 54
    terminatelearnset

levelup SPECIES_DARMANITAN
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_BITE, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_INCINERATE, 20
    learnset MOVE_RAGE, 26
    learnset MOVE_FIRE_FANG, 28
    learnset MOVE_SWAGGER, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_FIRE_PUNCH, 42
    learnset MOVE_UPROAR, 45
    learnset MOVE_FLARE_BLITZ, 52
    learnset MOVE_THRASH, 54
    learnset MOVE_SUPERPOWER, 56
    learnset MOVE_OVERHEAT, 58
    terminatelearnset

levelup SPECIES_MARACTUS
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_PECK, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_AFTER_YOU, 16
    learnset MOVE_INGRAIN, 12
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_PIN_MISSILE, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_NEEDLE_ARM, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_COTTON_SPORE, 48
    learnset MOVE_PETAL_BLIZZARD, 52
    learnset MOVE_ACUPRESSURE, 54
    learnset MOVE_PETAL_DANCE, 58
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset

levelup SPECIES_DWEBBLE
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_ROCK_BLAST, 5
    learnset MOVE_SAND_ATTACK, 9
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_SLASH, 26
    learnset MOVE_NIGHT_SLASH, 26
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_LEECH_LIFE, 46
    learnset MOVE_STONE_EDGE, 49
terminatelearnset

levelup SPECIES_CRUSTLE
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_ROCK_BLAST, 5
    learnset MOVE_BLOCK, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_SLASH, 17
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_BUG_BITE, 24
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_LEECH_LIFE, 50
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_ROCK_WRECKER, 62
terminatelearnset


levelup SPECIES_SCRAGGY
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_HEADBUTT, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_PAYBACK, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_BEAT_UP, 26
    learnset MOVE_SWAGGER, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_HIGH_JUMP_KICK, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_ROCK_CLIMB, 48
    learnset MOVE_FOCUS_PUNCH, 52
    learnset MOVE_HEAD_SMASH, 54
    terminatelearnset

levelup SPECIES_SCRAFTY
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PAYBACK, 8
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_BEAT_UP, 26
    learnset MOVE_SWAGGER, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_HIGH_JUMP_KICK, 45
    learnset MOVE_ROCK_CLIMB, 48
    learnset MOVE_FOCUS_PUNCH, 52
    learnset MOVE_HEAD_SMASH, 54
    terminatelearnset

levelup SPECIES_SIGILYPH
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_MIRACLE_EYE, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_PSYWAVE, 12
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_WHIRLWIND, 26
    learnset MOVE_GRAVITY, 28
    learnset MOVE_TAILWIND, 30
    learnset MOVE_SYNCHRONOISE, 34
    learnset MOVE_MIRROR_MOVE, 36
    learnset MOVE_AIR_SLASH, 38
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_REFLECT, 48
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_SKY_ATTACK, 54
    terminatelearnset

levelup SPECIES_YAMASK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_HAZE, 8
    learnset MOVE_DISABLE, 16
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_CRAFTY_SHIELD, 20
    learnset MOVE_HEX, 26
    learnset MOVE_OMINOUS_WIND, 28
    learnset MOVE_MEAN_LOOK, 34
    learnset MOVE_GRUDGE, 36
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_DESTINY_BOND, 52
    terminatelearnset

levelup SPECIES_COFAGRIGUS
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_HAZE, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_WILL_O_WISP, 26
    learnset MOVE_CRAFTY_SHIELD, 28
    learnset MOVE_HEX, 30
    learnset MOVE_OMINOUS_WIND, 34
    learnset MOVE_MEAN_LOOK, 38
    learnset MOVE_GRUDGE, 42
    learnset MOVE_SHADOW_BALL, 45
    learnset MOVE_DARK_PULSE, 54
    learnset MOVE_DESTINY_BOND, 56
    terminatelearnset

levelup SPECIES_TIRTOUGA
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SMACK_DOWN, 5
    learnset MOVE_AQUA_JET, 8
    learnset MOVE_BITE, 11
    learnset MOVE_BLOCK, 15
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_BRINE, 21
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_PROTECT, 31
    learnset MOVE_RAZOR_SHELL, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_KNOCK_OFF, 41
    learnset MOVE_HYDRO_PUMP, 45
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_STONE_EDGE, 51
terminatelearnset

levelup SPECIES_CARRACOSTA
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SMACK_DOWN, 5
    learnset MOVE_AQUA_JET, 8
    learnset MOVE_BITE, 11
    learnset MOVE_BLOCK, 15
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_BRINE, 21
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_PROTECT, 31
    learnset MOVE_RAZOR_SHELL, 35
    learnset MOVE_POWER_GEM, 40
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_HYDRO_PUMP, 50
    learnset MOVE_LIQUIDATION, 54
    learnset MOVE_STONE_EDGE, 58
terminatelearnset


levelup SPECIES_ARCHEN
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_WING_ATTACK, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_DOUBLE_TEAM, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_PLUCK, 20
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_U_TURN, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_TAILWIND, 48
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_DRAGON_CLAW, 54
    learnset MOVE_THRASH, 56
    terminatelearnset

levelup SPECIES_ARCHEOPS
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_DOUBLE_TEAM, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_PLUCK, 20
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_U_TURN, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_TAILWIND, 48
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_DRAGON_CLAW, 54
    learnset MOVE_THRASH, 56
    terminatelearnset

levelup SPECIES_TRUBBISH
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 5
    learnset MOVE_RECYCLE, 8
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_SLUDGE, 20
    learnset MOVE_SWALLOW, 28
    learnset MOVE_CLEAR_SMOG, 30
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_SLUDGE_BOMB, 38
    learnset MOVE_TOXIC, 42
    learnset MOVE_BELCH, 45
    learnset MOVE_PAIN_SPLIT, 48
    learnset MOVE_GUNK_SHOT, 52
    learnset MOVE_EXPLOSION, 54
    terminatelearnset

levelup SPECIES_GARBODOR
    learnset MOVE_POUND, 1
    learnset MOVE_TAKE_DOWN, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_RECYCLE, 12
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_DOUBLE_SLAP, 26
    learnset MOVE_SLUDGE, 28
    learnset MOVE_SWALLOW, 34
    learnset MOVE_CLEAR_SMOG, 36
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_SLUDGE_BOMB, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_PAIN_SPLIT, 52
    learnset MOVE_BELCH, 54
    learnset MOVE_GUNK_SHOT, 56
    learnset MOVE_EXPLOSION, 58
    terminatelearnset

levelup SPECIES_ZORUA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PURSUIT, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_TORMENT, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_FAKE_TEARS, 28
    learnset MOVE_TAUNT, 30
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_FOUL_PLAY, 38
    learnset MOVE_EMBARGO, 42
    learnset MOVE_IMPRISON, 45
    learnset MOVE_PUNISHMENT, 48
    learnset MOVE_NIGHT_DAZE, 54
    terminatelearnset

levelup SPECIES_ZOROARK
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_U_TURN, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_LEER, 16
    learnset MOVE_TORMENT, 12
    learnset MOVE_NIGHT_DAZE, 20
    learnset MOVE_IMPRISON, 26
    learnset MOVE_PURSUIT, 28
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_FAKE_TEARS, 45
    learnset MOVE_FOUL_PLAY, 52
    learnset MOVE_EMBARGO, 54
    learnset MOVE_PUNISHMENT, 56
    terminatelearnset

levelup SPECIES_MINCCINO
    learnset MOVE_POUND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_SING, 12
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ENCORE, 26
    learnset MOVE_CHARM, 28
    learnset MOVE_TICKLE, 30
    learnset MOVE_TAIL_SLAP, 34
    learnset MOVE_WAKE_UP_SLAP, 36
    learnset MOVE_AFTER_YOU, 38
    learnset MOVE_SLAM, 42
    learnset MOVE_CAPTIVATE, 45
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_LAST_RESORT, 52
    terminatelearnset

levelup SPECIES_CINCCINO
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_ROCK_BLAST, 5
    learnset MOVE_SING, 8
    learnset MOVE_CHARM, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ENCORE, 16
    learnset MOVE_AFTER_YOU, 20
    learnset MOVE_TAIL_SLAP, 26
    learnset MOVE_TICKLE, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_LAST_RESORT, 36
    learnset MOVE_POUND, 38
    learnset MOVE_BABY_DOLL_EYES, 42
    learnset MOVE_HELPING_HAND, 45
    learnset MOVE_ECHOED_VOICE, 48
    terminatelearnset

levelup SPECIES_GOTHITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_TICKLE, 16
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_EMBARGO, 26
    learnset MOVE_PSYSHOCK, 28
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_PSYCH_UP, 38
    learnset MOVE_HEAL_BLOCK, 42
    learnset MOVE_FLATTER, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_FUTURE_SIGHT, 52
    terminatelearnset

levelup SPECIES_GOTHORITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_TICKLE, 16
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_EMBARGO, 26
    learnset MOVE_PSYSHOCK, 28
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_HEAL_BLOCK, 38
    learnset MOVE_PSYCH_UP, 42
    learnset MOVE_FLATTER, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_FUTURE_SIGHT, 52
    terminatelearnset

levelup SPECIES_GOTHITELLE
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_TICKLE, 16
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_EMBARGO, 26
    learnset MOVE_PSYSHOCK, 28
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_CHARM, 36
    learnset MOVE_HEAL_BLOCK, 38
    learnset MOVE_PSYCH_UP, 42
    learnset MOVE_FLATTER, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_FUTURE_SIGHT, 52
    terminatelearnset

levelup SPECIES_SOLOSIS
    learnset MOVE_PROTECT, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_PSYWAVE, 8
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_RECOVER, 20
    learnset MOVE_REFLECT, 26
    learnset MOVE_HIDDEN_POWER, 28
    learnset MOVE_ENDEAVOR, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_ALLY_SWITCH, 42
    learnset MOVE_PAIN_SPLIT, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_FUTURE_SIGHT, 52
    learnset MOVE_HEAL_BLOCK, 56
    terminatelearnset

levelup SPECIES_DUOSION
    learnset MOVE_PROTECT, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_RECOVER, 8
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_PSYWAVE, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_ROLLOUT, 20
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_HIDDEN_POWER, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_ALLY_SWITCH, 42
    learnset MOVE_PAIN_SPLIT, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_FUTURE_SIGHT, 52
    learnset MOVE_HEAL_BLOCK, 56
    terminatelearnset

levelup SPECIES_REUNICLUS
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_DIZZY_PUNCH, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_CONFUSION, 16
    learnset MOVE_RECOVER, 12
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_PSYWAVE, 20
    learnset MOVE_REFLECT, 26
    learnset MOVE_ROLLOUT, 28
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_HIDDEN_POWER, 36
    learnset MOVE_CHARM, 38
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_PSYSHOCK, 45
    learnset MOVE_ALLY_SWITCH, 48
    learnset MOVE_PAIN_SPLIT, 52
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_FUTURE_SIGHT, 56
    learnset MOVE_HEAL_BLOCK, 60
    terminatelearnset

levelup SPECIES_DUCKLETT
    learnset MOVE_WATER_GUN, 1
	learnset MOVE_GUST, 6
	learnset MOVE_PLUCK, 10
    learnset MOVE_MUD_SPORT, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_AQUA_RING, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_TAILWIND, 38
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_SWANNA
    learnset MOVE_WATER_GUN, 1
	learnset MOVE_AQUA_STEP, 1
    learnset MOVE_WATER_SPORT, 5
    learnset MOVE_DEFOG, 8
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_FEATHER_DANCE, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_AQUA_STEP, 36
    learnset MOVE_TAILWIND, 42
    learnset MOVE_BRAVE_BIRD, 45
    learnset MOVE_HURRICANE, 49
    terminatelearnset

levelup SPECIES_VANILLITE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ICICLE_SPEAR, 8
    learnset MOVE_MIST, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_AVALANCHE, 20
    learnset MOVE_UPROAR, 26
    learnset MOVE_MIRROR_SHOT, 28
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_MIRROR_COAT, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_SHEER_COLD, 45
    terminatelearnset

levelup SPECIES_VANILLISH
    learnset MOVE_ASTONISH, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_MIST, 16
    learnset MOVE_ICICLE_SPEAR, 12
    learnset MOVE_UPROAR, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_AVALANCHE, 26
    learnset MOVE_MIRROR_SHOT, 28
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_MIRROR_COAT, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_SHEER_COLD, 45
    terminatelearnset

levelup SPECIES_VANILLUXE
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_ICICLE_CRASH, 5
    learnset MOVE_FREEZE_DRY, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_HARDEN, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_MIST, 20
    learnset MOVE_SHEER_COLD, 26
    learnset MOVE_ICICLE_SPEAR, 28
    learnset MOVE_UPROAR, 30
    learnset MOVE_ICY_WIND, 34
    learnset MOVE_AVALANCHE, 36
    learnset MOVE_MIRROR_SHOT, 38
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_BLIZZARD, 54
    terminatelearnset

levelup SPECIES_DEERLING
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_CHARM, 33
    learnset MOVE_NATURE_POWER, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SOLAR_BLADE, 50
terminatelearnset

levelup SPECIES_SAWSBUCK
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_HORN_LEECH, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_NATURE_POWER, 39
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SOLAR_BLADE, 52
terminatelearnset

levelup SPECIES_EMOLGA
    learnset MOVE_NUZZLE, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_TEAM, 12
    learnset MOVE_CHARGE, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_SPARK, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_ENCORE, 36
    learnset MOVE_LIGHT_SCREEN, 38
    learnset MOVE_VOLT_SWITCH, 42
    learnset MOVE_DISCHARGE, 45
    terminatelearnset

levelup SPECIES_KARRABLAST
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_ENDURE, 16
    learnset MOVE_ACID_SPRAY, 12
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_FALSE_SWIPE, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_FLAIL, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset

levelup SPECIES_ESCAVALIER
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_ENDURE, 5
    learnset MOVE_FLAIL, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_TAKE_DOWN, 12
    learnset MOVE_DOUBLE_EDGE, 16
    learnset MOVE_PECK, 20
    learnset MOVE_LEER, 26
    learnset MOVE_FURY_CUTTER, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_TWINEEDLE, 34
    learnset MOVE_ACID_SPRAY, 36
    learnset MOVE_FURY_ATTACK, 38
    learnset MOVE_FALSE_SWIPE, 42
    learnset MOVE_HEADBUTT, 45
    learnset MOVE_SLASH, 48
    learnset MOVE_REVERSAL, 54
    learnset MOVE_BUG_BUZZ, 56
    learnset MOVE_X_SCISSOR, 58
    learnset MOVE_IRON_HEAD, 60
    learnset MOVE_GIGA_IMPACT, 68
    learnset MOVE_METAL_BURST, 70
    terminatelearnset

levelup SPECIES_FOONGUS
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_BIDE, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_SYNTHESIS, 26
    learnset MOVE_SWEET_SCENT, 28
    learnset MOVE_INGRAIN, 30
    learnset MOVE_CLEAR_SMOG, 34
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_RAGE_POWDER, 42
    learnset MOVE_SOLAR_BEAM, 45
    learnset MOVE_SPORE, 48
    terminatelearnset

levelup SPECIES_AMOONGUSS
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_BIDE, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_SYNTHESIS, 26
    learnset MOVE_SWEET_SCENT, 28
    learnset MOVE_INGRAIN, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_CLEAR_SMOG, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_RAGE_POWDER, 42
    learnset MOVE_SOLAR_BEAM, 45
    learnset MOVE_SPORE, 48
    terminatelearnset

levelup SPECIES_FRILLISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_POISON_STING, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_RECOVER, 28
    learnset MOVE_BRINE, 34
    learnset MOVE_OMINOUS_WIND, 36
    learnset MOVE_HEX, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_WHIRLPOOL, 45
    learnset MOVE_HYDRO_PUMP, 48
    learnset MOVE_DESTINY_BOND, 52
    learnset MOVE_WATER_SPOUT, 54
    learnset MOVE_WRING_OUT, 56
    terminatelearnset

levelup SPECIES_JELLICENT
    learnset MOVE_ABSORB, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_POISON_STING, 16
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_WATER_SPOUT, 16
    learnset MOVE_WRING_OUT, 20
    learnset MOVE_BUBBLE, 26
    learnset MOVE_WATER_SPORT, 28
    learnset MOVE_BUBBLE_BEAM, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_RECOVER, 36
    learnset MOVE_BRINE, 42
    learnset MOVE_OMINOUS_WIND, 45
    learnset MOVE_HEX, 48
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_WHIRLPOOL, 54
    learnset MOVE_HYDRO_PUMP, 56
    learnset MOVE_DESTINY_BOND, 58
    terminatelearnset

levelup SPECIES_ALOMOMOLA
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_HYDRO_PUMP, 5
    learnset MOVE_WIDE_GUARD, 8
    learnset MOVE_HEALING_WISH, 16
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_POUND, 16
    learnset MOVE_WATER_SPORT, 20
    learnset MOVE_AQUA_RING, 26
    learnset MOVE_AQUA_JET, 28
    learnset MOVE_DOUBLE_SLAP, 30
    learnset MOVE_HEAL_PULSE, 34
    learnset MOVE_PROTECT, 36
    learnset MOVE_WATER_PULSE, 38
    learnset MOVE_WAKE_UP_SLAP, 42
    learnset MOVE_SOAK, 45
    learnset MOVE_WISH, 48
    learnset MOVE_BRINE, 52
    learnset MOVE_SAFEGUARD, 54
    learnset MOVE_WHIRLPOOL, 56
    terminatelearnset

levelup SPECIES_JOLTIK
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_SPIDER_WEB, 12
    learnset MOVE_ELECTROWEB, 15
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_GASTRO_ACID, 23
    learnset MOVE_STRUGGLE_BUG, 26
    learnset MOVE_DISCHARGE, 29
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_ENERGY_BALL, 37
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_BUG_BUZZ, 48
terminatelearnset

levelup SPECIES_GALVANTULA
    learnset MOVE_STICKY_WEB, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_SPIDER_WEB, 12
    learnset MOVE_ELECTROWEB, 15
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_GASTRO_ACID, 23
    learnset MOVE_STRUGGLE_BUG, 26
    learnset MOVE_DISCHARGE, 29
    learnset MOVE_SIGNAL_BEAM, 35
    learnset MOVE_ENERGY_BALL, 39
    learnset MOVE_SUCKER_PUNCH, 43
    learnset MOVE_THUNDERBOLT, 49
    learnset MOVE_BUG_BUZZ, 53
    learnset MOVE_THUNDER, 60
    learnset MOVE_VOLT_SWITCH, 69
terminatelearnset

levelup SPECIES_FERROSEED
    learnset MOVE_TACKLE, 1
    learnset MOVE_METAL_CLAW, 5
	learnset MOVE_SNAP_TRAP, 8
    learnset MOVE_PIN_MISSILE, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_FLASH_CANNON, 20
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SELF_DESTRUCT, 32
    learnset MOVE_GYRO_BALL, 38
    learnset MOVE_PAYBACK, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_FERROTHORN
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_METAL_CLAW, 5
	learnset MOVE_SNAP_TRAP, 8
    learnset MOVE_PIN_MISSILE, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_FLASH_CANNON, 20
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SELF_DESTRUCT, 32
    learnset MOVE_GYRO_BALL, 38
    learnset MOVE_PAYBACK, 42
    learnset MOVE_EXPLOSION, 45
	learnset MOVE_THUNDER, 50
	learnset MOVE_HEAVY_SLAM, 56
    terminatelearnset

levelup SPECIES_KLINK
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_VICE_GRIP, 5
    learnset MOVE_CHARGE, 8
    learnset MOVE_BIND, 16
    learnset MOVE_CHARGE_BEAM, 12
    learnset MOVE_GEAR_GRIND, 16
    learnset MOVE_AUTOTOMIZE, 20
    learnset MOVE_METAL_SOUND, 26
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_MIRROR_SHOT, 34
    learnset MOVE_LOCK_ON, 36
    learnset MOVE_ZAP_CANNON, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_KLANG
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_VICE_GRIP, 5
    learnset MOVE_BIND, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_GEAR_GRIND, 12
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_AUTOTOMIZE, 20
    learnset MOVE_METAL_SOUND, 26
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_MIRROR_SHOT, 34
    learnset MOVE_LOCK_ON, 36
    learnset MOVE_ZAP_CANNON, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_KLINKLANG
    learnset MOVE_MAGNETIC_FLUX, 1
    learnset MOVE_GEAR_UP, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_VICE_GRIP, 16
    learnset MOVE_BIND, 12
    learnset MOVE_CHARGE, 16
    learnset MOVE_GEAR_GRIND, 20
    learnset MOVE_CHARGE_BEAM, 26
    learnset MOVE_AUTOTOMIZE, 28
    learnset MOVE_METAL_SOUND, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_MIRROR_SHOT, 38
    learnset MOVE_LOCK_ON, 42
    learnset MOVE_ZAP_CANNON, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_TYNAMO
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 5
    learnset MOVE_SPARK, 8
    learnset MOVE_CHARGE_BEAM, 16
    terminatelearnset

levelup SPECIES_EELEKTRIK
    learnset MOVE_CRUNCH, 1
    learnset MOVE_HEADBUTT, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_SPARK, 16
    learnset MOVE_CHARGE_BEAM, 12
    learnset MOVE_BIND, 16
    learnset MOVE_ACID, 20
    learnset MOVE_DISCHARGE, 26
    learnset MOVE_THUNDERBOLT, 28
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_WILD_CHARGE, 36
    learnset MOVE_GASTRO_ACID, 38
    learnset MOVE_ZAP_CANNON, 42
    learnset MOVE_THRASH, 45
    terminatelearnset

levelup SPECIES_EELEKTROSS
    learnset MOVE_CRUNCH, 1
    learnset MOVE_THRASH, 5
    learnset MOVE_ZAP_CANNON, 8
    learnset MOVE_GASTRO_ACID, 16
    learnset MOVE_ION_DELUGE, 16
    learnset MOVE_CRUSH_CLAW, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_ACID, 28
    learnset MOVE_DISCHARGE, 30
    terminatelearnset

levelup SPECIES_ELGYEM
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_HEAL_BLOCK, 8
    learnset MOVE_MIRACLE_EYE, 16
    learnset MOVE_IMPRISON, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HIDDEN_POWER, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_SIMPLE_BEAM, 30
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_PSYCH_UP, 42
    learnset MOVE_RECOVER, 45
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_SYNCHRONOISE, 54
    terminatelearnset

levelup SPECIES_BEHEEYEM
    learnset MOVE_CONFUSION, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_IMPRISON, 16
    learnset MOVE_SYNCHRONOISE, 20
    learnset MOVE_HEAL_BLOCK, 26
    learnset MOVE_MIRACLE_EYE, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_HIDDEN_POWER, 34
    learnset MOVE_HEADBUTT, 36
    learnset MOVE_SIMPLE_BEAM, 38
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_PSYCH_UP, 45
    learnset MOVE_RECOVER, 54
    learnset MOVE_PSYCHIC, 58
    terminatelearnset

levelup SPECIES_LITWICK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_FLAME_BURST, 26
    learnset MOVE_HEX, 28
    learnset MOVE_NIGHT_SHADE, 30
    learnset MOVE_IMPRISON, 34
    learnset MOVE_INFERNO, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_MEMENTO, 45
    learnset MOVE_PAIN_SPLIT, 48
    learnset MOVE_OVERHEAT, 52
    terminatelearnset

levelup SPECIES_LAMPENT
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_FLAME_BURST, 26
    learnset MOVE_HEX, 28
    learnset MOVE_NIGHT_SHADE, 30
    learnset MOVE_IMPRISON, 34
    learnset MOVE_INFERNO, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_MEMENTO, 45
    learnset MOVE_PAIN_SPLIT, 48
    learnset MOVE_OVERHEAT, 52
    terminatelearnset

levelup SPECIES_CHANDELURE
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HEX, 5
    learnset MOVE_WILL_O_WISP, 8
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_SHADOW_BALL, 20
    learnset MOVE_INFERNO, 26
    learnset MOVE_IMPRISON, 28
    learnset MOVE_PAIN_SPLIT, 30
    learnset MOVE_OVERHEAT, 34
    learnset MOVE_MEMENTO, 36
    learnset MOVE_ASTONISH, 38
    learnset MOVE_SMOG, 42
    learnset MOVE_EMBER, 45
    learnset MOVE_FLAME_BURST, 52
    terminatelearnset

levelup SPECIES_AXEW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_DRAGON_RAGE, 12
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_DUAL_CHOP, 30
    learnset MOVE_TAUNT, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LASER_FOCUS, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_GUILLOTINE, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset

levelup SPECIES_FRAXURE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_DUAL_CHOP, 30
    learnset MOVE_TAUNT, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LASER_FOCUS, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_OUTRAGE, 52
    learnset MOVE_GUILLOTINE, 54
    learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset

levelup SPECIES_HAXORUS
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_OUTRAGE, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_DRAGON_RAGE, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_DUAL_CHOP, 34
    learnset MOVE_TAUNT, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_LASER_FOCUS, 45
    learnset MOVE_DRAGON_PULSE, 48
    learnset MOVE_GUILLOTINE, 54
    learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset

levelup SPECIES_CUBCHOO
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BIDE, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_ENDURE, 16
    learnset MOVE_PLAY_NICE, 20
    learnset MOVE_BRINE, 26
    learnset MOVE_FROST_BREATH, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_FLAIL, 36
    learnset MOVE_REST, 42
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_SHEER_COLD, 52
    terminatelearnset

levelup SPECIES_BEARTIC
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_AQUA_JET, 5
    learnset MOVE_CHARM, 8
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_ENDURE, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_SHEER_COLD, 26
    learnset MOVE_THRASH, 28
    learnset MOVE_SUPERPOWER, 30
    learnset MOVE_BIDE, 34
    learnset MOVE_ICY_WIND, 36
    learnset MOVE_PLAY_NICE, 38
    learnset MOVE_BRINE, 42
    learnset MOVE_FROST_BREATH, 45
    learnset MOVE_SLASH, 48
    learnset MOVE_SWAGGER, 52
    learnset MOVE_FLAIL, 54
    learnset MOVE_REST, 56
    learnset MOVE_BLIZZARD, 60
    terminatelearnset

levelup SPECIES_CRYOGONAL
    learnset MOVE_BIND, 1
    learnset MOVE_ICE_SHARD, 5
    learnset MOVE_SHEER_COLD, 8
    learnset MOVE_NIGHT_SLASH, 16
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_LASER_FOCUS, 26
    learnset MOVE_MIST, 28
    learnset MOVE_HAZE, 30
    learnset MOVE_CONFUSE_RAY, 34
    learnset MOVE_AURORA_BEAM, 36
    learnset MOVE_ANCIENT_POWER, 38
    learnset MOVE_SLASH, 42
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_REFLECT, 52
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_FREEZE_DRY, 56
    learnset MOVE_RECOVER, 58
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset

levelup SPECIES_SHELMET
    learnset MOVE_ABSORB, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_ACID, 8
    learnset MOVE_BIDE, 16
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_STRUGGLE_BUG, 20
    learnset MOVE_YAWN, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_RECOVER, 38
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_FINAL_GAMBIT, 45
    terminatelearnset

levelup SPECIES_ACCELGOR
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_ACID, 5
    learnset MOVE_YAWN, 16
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_ABSORB, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_QUICK_ATTACK, 34
    learnset MOVE_FINAL_GAMBIT, 36
    learnset MOVE_MEGA_DRAIN, 42
    learnset MOVE_STRUGGLE_BUG, 45
    learnset MOVE_SWIFT, 48
    learnset MOVE_ME_FIRST, 54
    learnset MOVE_GIGA_DRAIN, 56
    learnset MOVE_U_TURN, 58
    learnset MOVE_RECOVER, 60
    learnset MOVE_BUG_BUZZ, 65
    learnset MOVE_TOXIC, 68
    terminatelearnset

levelup SPECIES_STUNFISK
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_FISSURE, 12
    learnset MOVE_FLAIL, 16
    learnset MOVE_MUD_SPORT, 20
    learnset MOVE_BIDE, 26
    learnset MOVE_MUD_SHOT, 28
    learnset MOVE_ENDURE, 30
    learnset MOVE_CAMOUFLAGE, 34
    learnset MOVE_CHARGE, 36
    learnset MOVE_MUD_BOMB, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_REVENGE, 48
    learnset MOVE_BOUNCE, 52
    learnset MOVE_DISCHARGE, 54
    learnset MOVE_MUDDY_WATER, 56
    learnset MOVE_THUNDERBOLT, 58
    terminatelearnset

levelup SPECIES_MIENFOO
    learnset MOVE_POUND, 1
    learnset MOVE_DETECT, 5
    learnset MOVE_MEDITATE, 8
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_FORCE_PALM, 26
    learnset MOVE_REVERSAL, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_DRAIN_PUNCH, 34
    learnset MOVE_U_TURN, 36
    learnset MOVE_JUMP_KICK, 38
    learnset MOVE_BOUNCE, 48
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_HIGH_JUMP_KICK, 54
    terminatelearnset

levelup SPECIES_MIENSHAO
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_POUND, 5
    learnset MOVE_DETECT, 8
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_REVERSAL, 12
    learnset MOVE_AURA_SPHERE, 16
    learnset MOVE_MEDITATE, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_DOUBLE_SLAP, 28
    learnset MOVE_SWIFT, 30
    learnset MOVE_FORCE_PALM, 34
    learnset MOVE_WIDE_GUARD, 36
    learnset MOVE_DRAIN_PUNCH, 38
    learnset MOVE_U_TURN, 42
    learnset MOVE_JUMP_KICK, 45
    learnset MOVE_BOUNCE, 54
    learnset MOVE_HIGH_JUMP_KICK, 56
    terminatelearnset

levelup SPECIES_DRUDDIGON
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_SLASH, 26
    learnset MOVE_DRAGON_TAIL, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_REVENGE, 38
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_ROCK_CLIMB, 48
    learnset MOVE_OUTRAGE, 52
    learnset MOVE_SUPERPOWER, 54
    terminatelearnset

levelup SPECIES_GOLETT
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_POUND, 8
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_SHADOW_PUNCH, 16
    learnset MOVE_STOMPING_TANTRUM, 20
    learnset MOVE_MEGA_PUNCH, 28
    learnset MOVE_NIGHT_SHADE, 34
    learnset MOVE_MAGNITUDE, 36
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_HEAVY_SLAM, 42
    learnset MOVE_PHANTOM_FORCE, 45
    learnset MOVE_DYNAMIC_PUNCH, 48
    learnset MOVE_HAMMER_ARM, 52
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_FOCUS_PUNCH, 56
    terminatelearnset

levelup SPECIES_GOLURK
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_HIGH_HORSEPOWER, 5
    learnset MOVE_FOCUS_PUNCH, 8
    learnset MOVE_MUD_SLAP, 16
    learnset MOVE_ASTONISH, 12
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_POUND, 20
    learnset MOVE_ROLLOUT, 26
    learnset MOVE_SHADOW_PUNCH, 28
    learnset MOVE_STOMPING_TANTRUM, 30
    learnset MOVE_MEGA_PUNCH, 36
    learnset MOVE_NIGHT_SHADE, 38
    learnset MOVE_MAGNITUDE, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DYNAMIC_PUNCH, 52
    learnset MOVE_HAMMER_ARM, 54
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_PHANTOM_FORCE, 58
    terminatelearnset

levelup SPECIES_PAWNIARD
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_TORMENT, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_METAL_SOUND, 30
    learnset MOVE_EMBARGO, 34
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_LASER_FOCUS, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_GUILLOTINE, 52
    terminatelearnset

levelup SPECIES_BISHARP
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_GUILLOTINE, 16
    learnset MOVE_IRON_HEAD, 20
    learnset MOVE_TORMENT, 26
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_ASSURANCE, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_METAL_SOUND, 38
    learnset MOVE_EMBARGO, 42
    learnset MOVE_NIGHT_SLASH, 45
    learnset MOVE_LASER_FOCUS, 52
    terminatelearnset

levelup SPECIES_BOUFFALANT
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PURSUIT, 8
    learnset MOVE_RAGE, 16
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_REVENGE, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_HORN_ATTACK, 28
    learnset MOVE_THROAT_CHOP, 30
    learnset MOVE_HEAD_CHARGE, 34
    learnset MOVE_REVERSAL, 36
    learnset MOVE_MEGAHORN, 38
    learnset MOVE_THRASH, 45
    learnset MOVE_GIGA_IMPACT, 48
    terminatelearnset

levelup SPECIES_RUFFLET
    learnset MOVE_LEER, 1
    learnset MOVE_PECK, 5
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_TAILWIND, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_WHIRLWIND, 28
    learnset MOVE_CRUSH_CLAW, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_DEFOG, 36
    learnset MOVE_THRASH, 38
    learnset MOVE_BRAVE_BIRD, 42
    terminatelearnset

levelup SPECIES_BRAVIARY
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_LEER, 8
    learnset MOVE_PECK, 16
    learnset MOVE_SKY_ATTACK, 12
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_TAILWIND, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_WHIRLWIND, 34
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_AIR_SLASH, 38
    learnset MOVE_DEFOG, 42
    learnset MOVE_THRASH, 45
    learnset MOVE_BRAVE_BIRD, 48
    terminatelearnset

levelup SPECIES_VULLABY
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 5
    learnset MOVE_FURY_ATTACK, 8
    learnset MOVE_PLUCK, 16
    learnset MOVE_FLATTER, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_TAILWIND, 26
    learnset MOVE_PUNISHMENT, 28
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_WHIRLWIND, 38
    learnset MOVE_DEFOG, 42
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_EMBARGO, 48
    learnset MOVE_MIRROR_MOVE, 52
    learnset MOVE_BRAVE_BIRD, 54
    learnset MOVE_ATTRACT, 56
    terminatelearnset

levelup SPECIES_MANDIBUZZ
    learnset MOVE_BONE_RUSH, 1
    learnset MOVE_SKY_ATTACK, 5
    learnset MOVE_TOXIC, 8
    learnset MOVE_GUST, 16
    learnset MOVE_LEER, 12
    learnset MOVE_FLATTER, 16
    learnset MOVE_PLUCK, 20
    learnset MOVE_MIRROR_MOVE, 26
    learnset MOVE_BRAVE_BIRD, 28
    learnset MOVE_WHIRLWIND, 30
    learnset MOVE_FURY_ATTACK, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_KNOCK_OFF, 38
    learnset MOVE_TAILWIND, 42
    learnset MOVE_PUNISHMENT, 45
    learnset MOVE_AIR_SLASH, 54
    learnset MOVE_DARK_PULSE, 56
    learnset MOVE_DEFOG, 58
    learnset MOVE_EMBARGO, 60
    learnset MOVE_ATTRACT, 65
    terminatelearnset

levelup SPECIES_HEATMOR
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_INCINERATE, 16
    learnset MOVE_ODOR_SLEUTH, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_BIND, 20
    learnset MOVE_BUG_BITE, 26
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_FIRE_SPIN, 36
    learnset MOVE_SWALLOW, 42
    learnset MOVE_SPIT_UP, 45
    learnset MOVE_FIRE_LASH, 48
    learnset MOVE_FLAMETHROWER, 54
    learnset MOVE_INFERNO, 56
    learnset MOVE_FLARE_BLITZ, 58
    terminatelearnset

levelup SPECIES_DURANT
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_METAL_SOUND, 8
    learnset MOVE_GUILLOTINE, 16
    learnset MOVE_VICE_GRIP, 12
    learnset MOVE_BITE, 16
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_BEAT_UP, 26
    learnset MOVE_BUG_BITE, 30
    learnset MOVE_DIG, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_ENTRAINMENT, 45
    terminatelearnset

levelup SPECIES_DEINO
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 5
    learnset MOVE_DRAGON_RAGE, 8
    learnset MOVE_BITE, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_ROAR, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_DRAGON_RUSH, 45
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_OUTRAGE, 54
    terminatelearnset

levelup SPECIES_ZWEILOUS
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_HIT, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_ROAR, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_DRAGON_PULSE, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_DRAGON_RUSH, 48
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_HYDREIGON
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_HIT, 5
    learnset MOVE_TRI_ATTACK, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BITE, 16
    learnset MOVE_OUTRAGE, 20
    learnset MOVE_HYPER_VOICE, 26
    learnset MOVE_DRAGON_RAGE, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_ASSURANCE, 34
    learnset MOVE_HEADBUTT, 36
    learnset MOVE_SLAM, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_DRAGON_PULSE, 48
    learnset MOVE_SCARY_FACE, 52
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_DRAGON_RUSH, 56
    learnset MOVE_HYPER_BEAM, 60
    terminatelearnset

levelup SPECIES_LARVESTA
    learnset MOVE_EMBER, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_FLAME_CHARGE, 12
    learnset MOVE_SCREECH, 16
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_LEECH_LIFE, 28
    learnset MOVE_FLAME_WHEEL, 30
    learnset MOVE_BUG_BUZZ, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_FLARE_BLITZ, 42
    learnset MOVE_THRASH, 45
    terminatelearnset

levelup SPECIES_VOLCARONA
    learnset MOVE_FIERY_DANCE, 5
    learnset MOVE_WHIRLWIND, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_FLAME_CHARGE, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_DOUBLE_EDGE, 20
    learnset MOVE_FLARE_BLITZ, 26
    learnset MOVE_FIRE_SPIN, 28
    learnset MOVE_STRING_SHOT, 30
    learnset MOVE_GUST, 34
    learnset MOVE_STRUGGLE_BUG, 36
    learnset MOVE_HURRICANE, 38
    learnset MOVE_RAGE_POWDER, 42
    learnset MOVE_HEAT_WAVE, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_BUG_BUZZ, 54
    learnset MOVE_FLAME_WHEEL, 56
    learnset MOVE_ABSORB, 58
    learnset MOVE_BUG_BITE, 60
    learnset MOVE_SCREECH, 65
    learnset MOVE_LEECH_LIFE, 68
    learnset MOVE_SILVER_WIND, 70
    learnset MOVE_FIRE_BLAST, 74
    terminatelearnset

levelup SPECIES_COBALION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_CLOSE_COMBAT, 12
    learnset MOVE_METAL_BURST, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_QUICK_GUARD, 34
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_IRON_HEAD, 38
    terminatelearnset

levelup SPECIES_TERRAKION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_CLOSE_COMBAT, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SMACK_DOWN, 20
    learnset MOVE_RETALIATE, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_STONE_EDGE, 42
    terminatelearnset

levelup SPECIES_VIRIZION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_CLOSE_COMBAT, 12
    learnset MOVE_LEAF_BLADE, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_MAGICAL_LEAF, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_QUICK_GUARD, 34
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_SACRED_SWORD, 38
    terminatelearnset

levelup SPECIES_TORNADUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 5
    learnset MOVE_LEER, 8
    learnset MOVE_SWAGGER, 16
    learnset MOVE_BITE, 12
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_TAILWIND, 26
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_HURRICANE, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_BLEAKWIND_STORM, 52
    terminatelearnset

levelup SPECIES_THUNDURUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_LEER, 8
    learnset MOVE_SWAGGER, 16
    learnset MOVE_BITE, 12
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 26
    learnset MOVE_VOLT_SWITCH, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_THUNDER, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_WILDBOLT_STORM, 52
    terminatelearnset

levelup SPECIES_RESHIRAM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_DRAGON_RAGE, 12
    learnset MOVE_SLASH, 16
    learnset MOVE_FLAMETHROWER, 20
    learnset MOVE_EXTRASENSORY, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DRAGON_PULSE, 30
    learnset MOVE_IMPRISON, 34
    learnset MOVE_FUSION_FLARE, 36
    learnset MOVE_FIRE_BLAST, 38
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_BLUE_FLARE, 48
    terminatelearnset

levelup SPECIES_ZEKROM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_THUNDER_FANG, 16
    learnset MOVE_DRAGON_RAGE, 12
    learnset MOVE_SLASH, 16
    learnset MOVE_THUNDERBOLT, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_IMPRISON, 34
    learnset MOVE_FUSION_BOLT, 36
    learnset MOVE_THUNDER, 38
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_BOLT_STRIKE, 48
    terminatelearnset

levelup SPECIES_LANDORUS
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_SMACK_DOWN, 5
    learnset MOVE_LEER, 8
    learnset MOVE_BLOCK, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_IMPRISON, 20
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_EARTH_POWER, 28
    learnset MOVE_EXTRASENSORY, 30
    learnset MOVE_STONE_EDGE, 34
    learnset MOVE_HAMMER_ARM, 36
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_FISSURE, 48
    learnset MOVE_SANDSEAR_STORM, 52
    terminatelearnset

levelup SPECIES_KYUREM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_FREEZE_DRY, 16
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_BLIZZARD, 38
    learnset MOVE_IMPRISON, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_GLACIATE, 48
    learnset MOVE_SHEER_COLD, 52
    terminatelearnset

levelup SPECIES_KELDEO
    learnset MOVE_SECRET_SWORD, 1
    learnset MOVE_AQUA_JET, 5
    learnset MOVE_LEER, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_RETALIATE, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_CLOSE_COMBAT, 45
    terminatelearnset

levelup SPECIES_MELOETTA
    learnset MOVE_ROUND, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_SING, 16
    learnset MOVE_TEETER_DANCE, 12
    learnset MOVE_ACROBATICS, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_ECHOED_VOICE, 26
    learnset MOVE_U_TURN, 28
    learnset MOVE_WAKE_UP_SLAP, 30
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_ROLE_PLAY, 38
    learnset MOVE_CLOSE_COMBAT, 42
    learnset MOVE_PERISH_SONG, 45
    terminatelearnset

levelup SPECIES_GENESECT
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_TECHNO_BLAST, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MAGNET_BOMB, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_BUG_BUZZ, 48
    learnset MOVE_SIMPLE_BEAM, 52
    learnset MOVE_ZAP_CANNON, 54
    learnset MOVE_HYPER_BEAM, 56
    learnset MOVE_SELF_DESTRUCT, 58
    terminatelearnset

levelup SPECIES_CHESPIN
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BITE, 16
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_PIN_MISSILE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_SEED_BOMB, 26
    learnset MOVE_MUD_SHOT, 28
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_PAIN_SPLIT, 36
    learnset MOVE_WOOD_HAMMER, 38
    terminatelearnset

levelup SPECIES_QUILLADIN
    learnset MOVE_NEEDLE_ARM, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_BITE, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_PIN_MISSILE, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_MUD_SHOT, 30
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_PAIN_SPLIT, 38
    learnset MOVE_WOOD_HAMMER, 42
    terminatelearnset

levelup SPECIES_CHESNAUGHT
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_NEEDLE_ARM, 5
    learnset MOVE_HAMMER_ARM, 8
    learnset MOVE_FEINT, 16
    learnset MOVE_TACKLE, 16
    learnset MOVE_GROWL, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_ROLLOUT, 28
    learnset MOVE_BITE, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_PIN_MISSILE, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_MUD_SHOT, 45
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_PAIN_SPLIT, 54
    learnset MOVE_WOOD_HAMMER, 56
    learnset MOVE_GIGA_IMPACT, 58
    terminatelearnset

levelup SPECIES_FENNEKIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 8
    learnset MOVE_FLAME_CHARGE, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_LUCKY_CHANT, 26
    learnset MOVE_LIGHT_SCREEN, 28
    learnset MOVE_PSYSHOCK, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_WILL_O_WISP, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FIRE_BLAST, 48
    terminatelearnset

levelup SPECIES_BRAIXEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 8
    learnset MOVE_FLAME_CHARGE, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_LUCKY_CHANT, 26
    learnset MOVE_LIGHT_SCREEN, 28
    learnset MOVE_PSYSHOCK, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_WILL_O_WISP, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FIRE_BLAST, 48
    terminatelearnset

levelup SPECIES_DELPHOX
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_FUTURE_SIGHT, 5
    learnset MOVE_ROLE_PLAY, 8
    learnset MOVE_SHADOW_BALL, 12
    learnset MOVE_SCRATCH, 16
    learnset MOVE_EMBER, 26
    learnset MOVE_FLAME_CHARGE, 30
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_FIRE_SPIN, 36
    learnset MOVE_LUCKY_CHANT, 38
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_PSYSHOCK, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_WILL_O_WISP, 52
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_FIRE_BLAST, 60
    terminatelearnset

levelup SPECIES_FROAKIE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_LICK, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_SMOKESCREEN, 20
    learnset MOVE_ROUND, 26
    learnset MOVE_FLING, 28
    learnset MOVE_SMACK_DOWN, 30
    learnset MOVE_BOUNCE, 36
    learnset MOVE_DOUBLE_TEAM, 38
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset

levelup SPECIES_FROGADIER
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_LICK, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_SMOKESCREEN, 20
    learnset MOVE_ROUND, 26
    learnset MOVE_FLING, 28
    learnset MOVE_SMACK_DOWN, 30
    learnset MOVE_BOUNCE, 36
    learnset MOVE_DOUBLE_TEAM, 38
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset

levelup SPECIES_GRENINJA
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_HAZE, 8
    learnset MOVE_ROLE_PLAY, 16
    learnset MOVE_MAT_BLOCK, 12
    learnset MOVE_POUND, 16
    learnset MOVE_GROWL, 20
    learnset MOVE_BUBBLE, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_LICK, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_SMOKESCREEN, 36
    learnset MOVE_SHADOW_SNEAK, 38
    learnset MOVE_FEINT_ATTACK, 45
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_DOUBLE_TEAM, 54
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset

levelup SPECIES_BUNNELBY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_TAKE_DOWN, 18
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_ODOR_SLEUTH, 25
    learnset MOVE_SUPER_FANG, 30
    learnset MOVE_HYPER_FANG, 35
    learnset MOVE_FACADE, 40
    learnset MOVE_FOUL_PLAY, 48
terminatelearnset

levelup SPECIES_DIGGERSBY
    learnset MOVE_FLAIL, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_TAKE_DOWN, 18
    learnset MOVE_DIG, 20
    learnset MOVE_BOUNCE, 22
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_HYPER_FANG, 34
    learnset MOVE_SUPER_FANG, 40
    learnset MOVE_FACADE, 46
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_FOUL_PLAY, 60
terminatelearnset

levelup SPECIES_FLETCHLING
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_ROOST, 20
    learnset MOVE_WILL_O_WISP, 25
    learnset MOVE_NATURAL_GIFT, 29
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_ME_FIRST, 40
    learnset MOVE_TAILWIND, 45
terminatelearnset

levelup SPECIES_FLETCHINDER
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_ROOST, 22
    learnset MOVE_WILL_O_WISP, 27
    learnset MOVE_NATURAL_GIFT, 31
    learnset MOVE_ACROBATICS, 37
    learnset MOVE_ME_FIRST, 41
    learnset MOVE_TAILWIND, 45
terminatelearnset

levelup SPECIES_TALONFLAME
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_ROOST, 22
    learnset MOVE_WILL_O_WISP, 27
    learnset MOVE_NATURAL_GIFT, 31
    learnset MOVE_ACROBATICS, 38
    learnset MOVE_ME_FIRST, 42
    learnset MOVE_TAILWIND, 46
    learnset MOVE_FLARE_BLITZ, 52
    learnset MOVE_BRAVE_BIRD, 60
terminatelearnset


levelup SPECIES_SCATTERBUG
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_BUG_BITE, 16
    terminatelearnset

levelup SPECIES_SPEWPA
    learnset MOVE_PROTECT, 1
    learnset MOVE_HARDEN, 5
    terminatelearnset

levelup SPECIES_VIVILLON
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_AIR_CUTTER, 9
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_SLEEP_POWDER, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_SIGNAL_BEAM, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_BUG_BUZZ, 34
    learnset MOVE_RAGE_POWDER, 40
    learnset MOVE_HURRICANE, 46
    learnset MOVE_POWDER, 52
    terminatelearnset

levelup SPECIES_LITLEO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_NOBLE_ROAR, 13
    learnset MOVE_INCINERATE, 16
    learnset MOVE_ECHOED_VOICE, 20
    learnset MOVE_FLAME_BURST, 26
    learnset MOVE_CRUNCH, 32
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_WILL_O_WISP, 36
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_OVERHEAT, 50
terminatelearnset

levelup SPECIES_PYROAR
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_SCORCHING_SANDS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 13
    learnset MOVE_INCINERATE, 17
    learnset MOVE_ECHOED_VOICE, 21
    learnset MOVE_FLAME_BURST, 26
    learnset MOVE_CRUNCH, 32
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_WILL_O_WISP, 37
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_OVERHEAT, 55
terminatelearnset


levelup SPECIES_FLABEBE
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLOETTE
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLORGES
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 5
    learnset MOVE_WISH, 8
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_GRASS_KNOT, 16
    learnset MOVE_PETAL_BLIZZARD, 26
    learnset MOVE_MOONBLAST, 30
    learnset MOVE_PETAL_DANCE, 34
    learnset MOVE_AROMATHERAPY, 36
    terminatelearnset

levelup SPECIES_SKIDDO
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
	learnset MOVE_GROWL, 9
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_RAZOR_LEAF, 16
	learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_WORRY_SEED, 23
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_SEED_BOMB, 31
    learnset MOVE_HORN_LEECH, 35
	learnset MOVE_HIGH_HORSEPOWER, 40
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_SUPERPOWER, 50
    terminatelearnset

levelup SPECIES_GOGOAT
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
	learnset MOVE_GROWL, 9
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_RAZOR_LEAF, 16
	learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_WORRY_SEED, 23
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_SEED_BOMB, 31
    learnset MOVE_HORN_LEECH, 35
	learnset MOVE_HIGH_HORSEPOWER, 40
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_SUPERPOWER, 50
    terminatelearnset

levelup SPECIES_PANCHAM
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_COVET, 15
    learnset MOVE_CIRCLE_THROW, 20
    learnset MOVE_BULLET_PUNCH, 25
    learnset MOVE_VITAL_THROW, 27
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_CRUNCH, 34
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_MEGA_PUNCH, 40
    learnset MOVE_PARTING_SHOT, 45
    learnset MOVE_SKY_UPPERCUT, 50
terminatelearnset

levelup SPECIES_PANGORO
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_COMET_PUNCH, 15
    learnset MOVE_CIRCLE_THROW, 20
    learnset MOVE_BULLET_PUNCH, 25
    learnset MOVE_VITAL_THROW, 27
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_CRUNCH, 35
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_BEAT_UP, 44
    learnset MOVE_PARTING_SHOT, 50
    learnset MOVE_SKY_UPPERCUT, 54
    learnset MOVE_KNOCK_OFF, 60
terminatelearnset


levelup SPECIES_FURFROU
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_ESPURR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_COVET, 12
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_PSYSHOCK, 28
    learnset MOVE_REFLECT, 30
    terminatelearnset

levelup SPECIES_MEOWSTIC
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_DISARMING_VOICE, 12
    learnset MOVE_QUICK_GUARD, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_COVET, 26
    learnset MOVE_CONFUSION, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_MIRACLE_EYE, 38
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_REFLECT, 45
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_ROLE_PLAY, 52
    learnset MOVE_IMPRISON, 54
    learnset MOVE_PSYCHIC, 56
    terminatelearnset

levelup SPECIES_HONEDGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_AUTOTOMIZE, 12
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_RETALIATE, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_SACRED_SWORD, 45
    terminatelearnset

levelup SPECIES_DOUBLADE
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_SHADOW_SNEAK, 8
    learnset MOVE_AUTOTOMIZE, 16
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_PURSUIT, 20
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_RETALIATE, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_SACRED_SWORD, 45
    terminatelearnset

levelup SPECIES_AEGISLASH
    learnset MOVE_KINGS_SHIELD, 1
    learnset MOVE_HEAD_SMASH, 5
    learnset MOVE_AERIAL_ACE, 8
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_SLASH, 12
    learnset MOVE_NIGHT_SLASH, 16
    learnset MOVE_RETALIATE, 20
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_TACKLE, 38
    learnset MOVE_FURY_CUTTER, 42
    learnset MOVE_SHADOW_SNEAK, 45
    learnset MOVE_AUTOTOMIZE, 48
    learnset MOVE_PURSUIT, 52
    terminatelearnset

levelup SPECIES_SPRITZEE
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_ECHOED_VOICE, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_FLAIL, 30
    learnset MOVE_CHARM, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_DISARMING_VOICE, 48
    terminatelearnset

levelup SPECIES_AROMATISSE
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_HEAL_PULSE, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_SWEET_KISS, 12
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_ODOR_SLEUTH, 20
    learnset MOVE_DRAINING_KISS, 26
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ATTRACT, 30
    learnset MOVE_FLAIL, 36
    learnset MOVE_DISARMING_VOICE, 38
    learnset MOVE_CHARM, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_PSYCH_UP, 56
    learnset MOVE_REFLECT, 58
    terminatelearnset

levelup SPECIES_SWIRLIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_FAIRY_WIND, 16
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_DRAINING_KISS, 26
    learnset MOVE_COTTON_SPORE, 28
    learnset MOVE_STRING_SHOT, 30
    learnset MOVE_ENDEAVOR, 34
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_WISH, 38
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_SAFEGUARD, 52
    terminatelearnset

levelup SPECIES_SLURPUFF
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_FAIRY_WIND, 16
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_DRAINING_KISS, 26
    learnset MOVE_COTTON_SPORE, 28
    learnset MOVE_STRING_SHOT, 30
    learnset MOVE_ENDEAVOR, 34
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_WISH, 38
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_STICKY_WEB, 48
    learnset MOVE_LIGHT_SCREEN, 52
    learnset MOVE_SAFEGUARD, 54
    terminatelearnset

levelup SPECIES_INKAY
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_CONSTRICT, 8
    learnset MOVE_REFLECT, 16
    learnset MOVE_WRAP, 12
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_PSYWAVE, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_PAYBACK, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_FOUL_PLAY, 34
    learnset MOVE_PLUCK, 36
    learnset MOVE_TOPSY_TURVY, 38
    learnset MOVE_SLASH, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_PSYCHO_CUT, 52
    learnset MOVE_NIGHT_SLASH, 54
    learnset MOVE_SUPERPOWER, 56
    terminatelearnset

levelup SPECIES_MALAMAR
    learnset MOVE_REVERSAL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_WRAP, 12
    learnset MOVE_CONSTRICT, 16
    learnset MOVE_REFLECT, 20
    learnset MOVE_PSYWAVE, 26
    learnset MOVE_SWAGGER, 28
    learnset MOVE_PAYBACK, 30
    learnset MOVE_PSYBEAM, 34
    learnset MOVE_PLUCK, 36
    learnset MOVE_FOUL_PLAY, 38
    learnset MOVE_TOPSY_TURVY, 45
    learnset MOVE_SLASH, 48
    learnset MOVE_LIGHT_SCREEN, 52
    learnset MOVE_PSYCHO_CUT, 54
    learnset MOVE_NIGHT_SLASH, 56
    learnset MOVE_SUPERPOWER, 58
    terminatelearnset

levelup SPECIES_BINACLE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_SHELL_SMASH, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_CLAMP, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_FURY_CUTTER, 30
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_RAZOR_SHELL, 42
    learnset MOVE_NIGHT_SLASH, 45
    learnset MOVE_CROSS_CHOP, 48
    terminatelearnset

levelup SPECIES_BARBARACLE
    learnset MOVE_SKULL_BASH, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_STONE_EDGE, 16
    learnset MOVE_SHELL_SMASH, 20
    learnset MOVE_SAND_ATTACK, 26
    learnset MOVE_FURY_SWIPES, 28
    learnset MOVE_CLAMP, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_FURY_CUTTER, 36
    learnset MOVE_ANCIENT_POWER, 38
    learnset MOVE_RAZOR_SHELL, 48
    learnset MOVE_NIGHT_SLASH, 52
    learnset MOVE_CROSS_CHOP, 54
    terminatelearnset

levelup SPECIES_SKRELP
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_ACID, 12
    learnset MOVE_BUBBLE, 20
    learnset MOVE_CAMOUFLAGE, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_POISON_TAIL, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_SLUDGE_BOMB, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_DRAGALGE
    learnset MOVE_TWISTER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_ACID, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_DRAGON_TAIL, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_BUBBLE, 28
    learnset MOVE_CAMOUFLAGE, 30
    learnset MOVE_DOUBLE_TEAM, 34
    learnset MOVE_POISON_TAIL, 36
    learnset MOVE_WATER_PULSE, 38
    learnset MOVE_TOXIC, 42
    learnset MOVE_AQUA_TAIL, 45
    learnset MOVE_SLUDGE_BOMB, 48
    learnset MOVE_DRAGON_PULSE, 52
    learnset MOVE_HYDRO_PUMP, 54
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_CLAUNCHER
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_VICE_GRIP, 8
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_FLAIL, 12
    learnset MOVE_BUBBLE, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_AQUA_JET, 28
    learnset MOVE_SMACK_DOWN, 30
    learnset MOVE_WATER_PULSE, 36
    learnset MOVE_AURA_SPHERE, 38
    learnset MOVE_CRABHAMMER, 42
    learnset MOVE_BOUNCE, 45
    learnset MOVE_MUDDY_WATER, 48
    terminatelearnset

levelup SPECIES_CLAWITZER
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_DARK_PULSE, 5
    learnset MOVE_DRAGON_PULSE, 8
    learnset MOVE_HEAL_PULSE, 16
    learnset MOVE_SPLASH, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_VICE_GRIP, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_WATER_SPORT, 28
    learnset MOVE_BUBBLE, 30
    learnset MOVE_BUBBLE_BEAM, 34
    learnset MOVE_AQUA_JET, 38
    learnset MOVE_SMACK_DOWN, 42
    learnset MOVE_WATER_PULSE, 48
    learnset MOVE_CRABHAMMER, 52
    learnset MOVE_BOUNCE, 54
    learnset MOVE_MUDDY_WATER, 56
    terminatelearnset

levelup SPECIES_HELIOPTILE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_POUND, 5
    learnset MOVE_THUNDER_SHOCK, 10
    learnset MOVE_QUICK_ATTACK, 12
	learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_DRAGON_TAIL, 25
    learnset MOVE_GLARE, 28
    learnset MOVE_PARABOLIC_CHARGE, 32
    learnset MOVE_ELECTROWEB, 36
    learnset MOVE_GRASS_KNOT, 36
    learnset MOVE_SWIFT, 39
    learnset MOVE_THUNDERBOLT, 44
	learnset MOVE_HYPER_VOICE, 50
    terminatelearnset

levelup SPECIES_HELIOLISK
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_POUND, 5
    learnset MOVE_THUNDER_SHOCK, 10
    learnset MOVE_QUICK_ATTACK, 12
	learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_DRAGON_TAIL, 25
    learnset MOVE_GLARE, 28
    learnset MOVE_PARABOLIC_CHARGE, 32
    learnset MOVE_ELECTROWEB, 36
    learnset MOVE_GRASS_KNOT, 36
    learnset MOVE_SWIFT, 39
    learnset MOVE_THUNDERBOLT, 44
	learnset MOVE_HYPER_VOICE, 50
    terminatelearnset

levelup SPECIES_TYRUNT
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROAR, 8
    learnset MOVE_BIDE, 16
    learnset MOVE_CHARM, 12
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_BITE, 26
    learnset MOVE_STOMP, 28
    learnset MOVE_DRAGON_TAIL, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_DRAGON_CLAW, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_HORN_DRILL, 48
    terminatelearnset

levelup SPECIES_TYRANTRUM
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ROAR, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_HEAD_SMASH, 16
    learnset MOVE_STOMP, 20
    learnset MOVE_BIDE, 26
    learnset MOVE_CHARM, 28
    learnset MOVE_BITE, 34
    learnset MOVE_DRAGON_TAIL, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_THRASH, 45
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_HORN_DRILL, 52
    learnset MOVE_GIGA_IMPACT, 54
    terminatelearnset

levelup SPECIES_AMAURA
    learnset MOVE_GROWL, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_THUNDER_WAVE, 5
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_STOMP, 15
    learnset MOVE_CHARM, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_ROUND, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_FREEZE_DRY, 48
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_HYPER_VOICE, 58
    learnset MOVE_DOUBLE_EDGE, 63
terminatelearnset

levelup SPECIES_AURORUS
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_EARTH_POWER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_THUNDER_WAVE, 5
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_STOMP, 15
    learnset MOVE_CHARM, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_ROUND, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_FREEZE_DRY, 51
    learnset MOVE_POWER_GEM, 56
    learnset MOVE_HYPER_VOICE, 63
    learnset MOVE_DOUBLE_EDGE, 69
terminatelearnset


levelup SPECIES_SYLVEON
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_COVET, 8
    learnset MOVE_BITE, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_HELPING_HAND, 30
    learnset MOVE_TACKLE, 34
    learnset MOVE_GROWL, 36
    learnset MOVE_SAND_ATTACK, 42
    learnset MOVE_QUICK_ATTACK, 45
    learnset MOVE_BABY_DOLL_EYES, 48
    learnset MOVE_SWIFT, 52
    learnset MOVE_DRAINING_KISS, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_PSYCH_UP, 68
    learnset MOVE_LAST_RESORT, 70
    terminatelearnset

levelup SPECIES_HAWLUCHA
    learnset MOVE_TACKLE, 1
    learnset MOVE_DETECT, 8
    learnset MOVE_KARATE_CHOP, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_ENCORE, 20
    learnset MOVE_SUBMISSION, 26
    learnset MOVE_ROOST, 28
    learnset MOVE_FLING, 30
    learnset MOVE_FEATHER_DANCE, 34
    learnset MOVE_BOUNCE, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_FLYING_PRESS, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_HIGH_JUMP_KICK, 48
    learnset MOVE_SKY_ATTACK, 54
    learnset MOVE_SKY_DROP, 56
    terminatelearnset

levelup SPECIES_DEDENNE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_CHARGE, 8
    learnset MOVE_THUNDER_SHOCK, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_PARABOLIC_CHARGE, 26
	learnset MOVE_PLAY_ROUGH, 30
    learnset MOVE_REST, 32
    learnset MOVE_CHARGE_BEAM, 35
    learnset MOVE_ALLURING_VOICE, 38
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_ENTRAINMENT, 48
    learnset MOVE_SUPER_FANG, 52
    learnset MOVE_ALLURING_VOICE, 55
	learnset MOVE_THUNDERBOLT, 60
    terminatelearnset

levelup SPECIES_CARBINK
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_REFLECT, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_POWER_GEM, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_SAFEGUARD, 54
    terminatelearnset

levelup SPECIES_GOOMY
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BIDE, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_MUDDY_WATER, 42
    terminatelearnset

levelup SPECIES_SLIGGOO
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BUBBLE, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_BIDE, 26
    learnset MOVE_FLAIL, 28
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_MUDDY_WATER, 45
    terminatelearnset

levelup SPECIES_GOODRA
    learnset MOVE_AQUA_TAIL, 1
    learnset MOVE_ACID_SPRAY, 5
    learnset MOVE_POISON_TAIL, 8
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_FEINT, 12
    learnset MOVE_ABSORB, 16
    learnset MOVE_TACKLE, 20
    learnset MOVE_WATER_GUN, 26
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_OUTRAGE, 30
    learnset MOVE_BUBBLE, 34
    learnset MOVE_PROTECT, 36
    learnset MOVE_BIDE, 38
    learnset MOVE_FLAIL, 42
    learnset MOVE_WATER_PULSE, 45
    learnset MOVE_DRAGON_PULSE, 52
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_MUDDY_WATER, 58
    learnset MOVE_POWER_WHIP, 60
    terminatelearnset

levelup SPECIES_KLEFKI
    learnset MOVE_FAIRY_LOCK, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_FAIRY_WIND, 16
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_CRAFTY_SHIELD, 20
    learnset MOVE_TORMENT, 26
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_RECYCLE, 30
    learnset MOVE_IMPRISON, 34
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_FLASH_CANNON, 38
    learnset MOVE_FOUL_PLAY, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_HEAL_BLOCK, 52
    learnset MOVE_LAST_RESORT, 54
    terminatelearnset

levelup SPECIES_PHANTUMP
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_BRANCH_POKE, 16
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_HEX, 26
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_INGRAIN, 30
    learnset MOVE_HORN_LEECH, 36
    learnset MOVE_PHANTOM_FORCE, 38
    learnset MOVE_DESTINY_BOND, 42
    learnset MOVE_FORESTS_CURSE, 45
    learnset MOVE_WOOD_HAMMER, 48
    terminatelearnset

levelup SPECIES_TREVENANT
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_BRANCH_POKE, 16
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_HORN_LEECH, 16
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_HEX, 30
    learnset MOVE_WILL_O_WISP, 34
    learnset MOVE_INGRAIN, 36
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_DESTINY_BOND, 45
    learnset MOVE_FORESTS_CURSE, 48
    learnset MOVE_WOOD_HAMMER, 52
    terminatelearnset

levelup SPECIES_PUMPKABOO
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_WORRY_SEED, 28
    learnset MOVE_BULLET_SEED, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_PAIN_SPLIT, 38
    terminatelearnset

levelup SPECIES_GOURGEIST
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 5
    learnset MOVE_ASTONISH, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_PHANTOM_FORCE, 20
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_SEED_BOMB, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_BERGMITE
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_BITE, 16
    learnset MOVE_POWDER_SNOW, 12
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_PROTECT, 26
    learnset MOVE_ICE_FANG, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_AVALANCHE, 36
    learnset MOVE_ICE_BALL, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_BLIZZARD, 52
    learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset

levelup SPECIES_AVALUGG
    learnset MOVE_BODY_SLAM, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_CRUNCH, 20
    learnset MOVE_SKULL_BASH, 26
    learnset MOVE_BITE, 30
    learnset MOVE_ICY_WIND, 34
    learnset MOVE_PROTECT, 38
    learnset MOVE_ICE_FANG, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_AVALANCHE, 52
    learnset MOVE_ICE_BALL, 54
    learnset MOVE_RECOVER, 56
    learnset MOVE_BLIZZARD, 58
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset

levelup SPECIES_NOIBAT
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_GUST, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_BITE, 26
    learnset MOVE_AIR_CUTTER, 30
    learnset MOVE_RAZOR_WIND, 34
    learnset MOVE_WHIRLWIND, 36
    learnset MOVE_ROOST, 38
    learnset MOVE_SUPER_FANG, 42
    learnset MOVE_AIR_SLASH, 45
    learnset MOVE_TAILWIND, 48
    learnset MOVE_HURRICANE, 52
    terminatelearnset

levelup SPECIES_NOIVERN
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_MOONLIGHT, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_GUST, 12
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_BOOMBURST, 20
    learnset MOVE_HURRICANE, 26
    learnset MOVE_SCREECH, 28
    learnset MOVE_DOUBLE_TEAM, 30
    learnset MOVE_WING_ATTACK, 34
    learnset MOVE_BITE, 36
    learnset MOVE_AIR_CUTTER, 42
    learnset MOVE_RAZOR_WIND, 45
    learnset MOVE_WHIRLWIND, 48
    learnset MOVE_ROOST, 52
    learnset MOVE_SUPER_FANG, 54
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_TAILWIND, 58
    terminatelearnset

levelup SPECIES_XERNEAS
    learnset MOVE_TACKLE, 1
    learnset MOVE_GRAVITY, 5
    learnset MOVE_HEAL_PULSE, 8
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_INGRAIN, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_NATURE_POWER, 30
    learnset MOVE_GEOMANCY, 34
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_HORN_LEECH, 38
    learnset MOVE_MOONBLAST, 42
    learnset MOVE_MEGAHORN, 48
    learnset MOVE_CLOSE_COMBAT, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset

levelup SPECIES_YVELTAL
    learnset MOVE_GUST, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_HURRICANE, 8
    learnset MOVE_RAZOR_WIND, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_ROOST, 16
    learnset MOVE_SNARL, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_DISABLE, 28
    learnset MOVE_TAILWIND, 30
    learnset MOVE_OBLIVION_WING, 34
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_PHANTOM_FORCE, 45
    learnset MOVE_FOUL_PLAY, 48
    learnset MOVE_DRAGON_RUSH, 52
    learnset MOVE_FOCUS_BLAST, 54
    learnset MOVE_SKY_ATTACK, 56
    learnset MOVE_HYPER_BEAM, 58
    terminatelearnset

levelup SPECIES_ZYGARDE
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 5
    learnset MOVE_CORE_ENFORCER, 8
    learnset MOVE_BIND, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_HAZE, 34
    learnset MOVE_LANDS_WRATH, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_CAMOUFLAGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_DIANCIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_FLAIL, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_POWER_GEM, 48
    learnset MOVE_MOONBLAST, 52
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_SAFEGUARD, 56
    learnset MOVE_DIAMOND_STORM, 58
    terminatelearnset

levelup SPECIES_HOOPA
    learnset MOVE_HYPERSPACE_HOLE, 1
    learnset MOVE_DESTINY_BOND, 8
    learnset MOVE_ALLY_SWITCH, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ASTONISH, 16
    learnset MOVE_MAGIC_COAT, 20
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_PHANTOM_FORCE, 38
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_PSYCHIC, 56
    terminatelearnset

levelup SPECIES_VOLCANION
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_STEAM_ERUPTION, 8
    learnset MOVE_FLARE_BLITZ, 16
    learnset MOVE_TAKE_DOWN, 12
    learnset MOVE_LEER, 16
    learnset MOVE_FLAME_CHARGE, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_WEATHER_BALL, 28
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_STOMP, 34
    learnset MOVE_MIST, 36
    learnset MOVE_INCINERATE, 38
    learnset MOVE_HAZE, 42
    learnset MOVE_SCALD, 45
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_HYDRO_PUMP, 52
    learnset MOVE_OVERHEAT, 54
    learnset MOVE_EXPLOSION, 56
    terminatelearnset

levelup SPECIES_ROWLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_PECK, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_OMINOUS_WIND, 26
    learnset MOVE_FORESIGHT, 28
    learnset MOVE_SYNTHESIS, 30
    learnset MOVE_PLUCK, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_FURY_ATTACK, 38
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_FEATHER_DANCE, 48
    learnset MOVE_BRAVE_BIRD, 52
    terminatelearnset

levelup SPECIES_DARTRIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_VINE_WHIP, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_PECK, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_OMINOUS_WIND, 26
    learnset MOVE_FORESIGHT, 28
    learnset MOVE_SYNTHESIS, 30
    learnset MOVE_PLUCK, 34
    learnset MOVE_FURY_ATTACK, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_FEATHER_DANCE, 48
    learnset MOVE_BRAVE_BIRD, 52
    terminatelearnset

levelup SPECIES_DECIDUEYE
    learnset MOVE_SPIRIT_SHACKLE, 1
    learnset MOVE_PHANTOM_FORCE, 5
    learnset MOVE_LEAF_STORM, 8
    learnset MOVE_U_TURN, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_TACKLE, 16
    learnset MOVE_GROWL, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_ASTONISH, 28
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_PECK, 34
    learnset MOVE_RAZOR_LEAF, 36
    learnset MOVE_OMINOUS_WIND, 38
    learnset MOVE_FORESIGHT, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_PLUCK, 48
    learnset MOVE_FURY_ATTACK, 52
    learnset MOVE_SUCKER_PUNCH, 54
    learnset MOVE_LEAF_BLADE, 58
    learnset MOVE_FEATHER_DANCE, 60
    learnset MOVE_BRAVE_BIRD, 65
    terminatelearnset

levelup SPECIES_LITTEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_LICK, 16
    learnset MOVE_LEER, 12
    learnset MOVE_ROAR, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_BITE, 28
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_FLARE_BLITZ, 45
    learnset MOVE_OUTRAGE, 48
    terminatelearnset

levelup SPECIES_TORRACAT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_LICK, 16
    learnset MOVE_LEER, 12
    learnset MOVE_ROAR, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_BITE, 26
    learnset MOVE_FIRE_FANG, 28
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_FLARE_BLITZ, 45
    learnset MOVE_OUTRAGE, 48
    terminatelearnset

levelup SPECIES_INCINEROAR
    learnset MOVE_DARKEST_LARIAT, 1
    learnset MOVE_CROSS_CHOP, 5
    learnset MOVE_THROAT_CHOP, 8
    learnset MOVE_SCRATCH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_EMBER, 20
    learnset MOVE_LICK, 26
    learnset MOVE_LEER, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_DOUBLE_KICK, 34
    learnset MOVE_BITE, 36
    learnset MOVE_FIRE_FANG, 38
    learnset MOVE_FURY_SWIPES, 42
    learnset MOVE_SWAGGER, 45
    learnset MOVE_SCARY_FACE, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_THRASH, 54
    learnset MOVE_FLARE_BLITZ, 56
    learnset MOVE_OUTRAGE, 58
    terminatelearnset

levelup SPECIES_POPPLIO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_SING, 26
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_ENCORE, 30
    learnset MOVE_DOUBLE_SLAP, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_HYDRO_PUMP, 45
    learnset MOVE_CAPTIVATE, 48
    terminatelearnset

levelup SPECIES_BRIONNE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_SING, 26
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_ENCORE, 30
    learnset MOVE_DOUBLE_SLAP, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_CAPTIVATE, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_PRIMARINA
    learnset MOVE_SPARKLING_ARIA, 1
    learnset MOVE_POUND, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_DISARMING_VOICE, 12
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_SING, 28
    learnset MOVE_BUBBLE_BEAM, 30
    learnset MOVE_ENCORE, 34
    learnset MOVE_DOUBLE_SLAP, 36
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_CAPTIVATE, 48
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_PIKIPEK
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_PLUCK, 16
    learnset MOVE_ROOST, 20
    learnset MOVE_FURY_ATTACK, 26
    learnset MOVE_SCREECH, 28
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_BULLET_SEED, 34
    learnset MOVE_FEATHER_DANCE, 36
    learnset MOVE_HYPER_VOICE, 38
    terminatelearnset

levelup SPECIES_TRUMBEAK
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_PECK, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_PLUCK, 20
    learnset MOVE_ROOST, 26
    learnset MOVE_FURY_ATTACK, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_BULLET_SEED, 36
    learnset MOVE_FEATHER_DANCE, 38
    learnset MOVE_HYPER_VOICE, 42
    terminatelearnset

levelup SPECIES_TOUCANNON
    learnset MOVE_BEAK_BLAST, 1
    learnset MOVE_ROCK_BLAST, 5
    learnset MOVE_PECK, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_ECHOED_VOICE, 12
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_PLUCK, 26
    learnset MOVE_ROOST, 28
    learnset MOVE_FURY_ATTACK, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_DRILL_PECK, 36
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_FEATHER_DANCE, 42
    learnset MOVE_HYPER_VOICE, 45
    terminatelearnset

levelup SPECIES_YUNGOOS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_BITE, 12
    learnset MOVE_HEADBUTT, 15
	learnset MOVE_THUNDER_FANG, 20
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_ICE_FANG, 20
    learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_CRUNCH, 28
    learnset MOVE_SUPER_FANG, 32
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_YAWN, 41
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_PSYCHIC_FANGS, 48
	learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_GUMSHOOS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_BITE, 12
    learnset MOVE_HEADBUTT, 15
	learnset MOVE_THUNDER_FANG, 20
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_ICE_FANG, 20
    learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_CRUNCH, 28
    learnset MOVE_SUPER_FANG, 32
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_YAWN, 41
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_PSYCHIC_FANGS, 48
	learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_GRUBBIN
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_STRING_SHOT, 8
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_SKITTER_SMACK, 20
    learnset MOVE_STICKY_WEB, 26
    learnset MOVE_X_SCISSOR, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DIG, 34
    terminatelearnset

levelup SPECIES_CHARJABUG
    learnset MOVE_SKITTER_SMACK, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_STRING_SHOT, 8
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_SKITTER_SMACK, 20
    learnset MOVE_STICKY_WEB, 26
    learnset MOVE_X_SCISSOR, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DIG, 33
	learnset MOVE_THUNDERBOLT, 36
    terminatelearnset

levelup SPECIES_VIKAVOLT
    learnset MOVE_BUG_BUZZ, 1
    learnset MOVE_CHARGE, 5
    learnset MOVE_X_SCISSOR, 8
    learnset MOVE_CRUNCH, 16
    learnset MOVE_DIG, 12
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_VICE_GRIP, 26
    learnset MOVE_MUD_SLAP, 28
    learnset MOVE_STRING_SHOT, 30
    learnset MOVE_BUG_BITE, 34
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_THUNDERBOLT, 44
    learnset MOVE_BUG_BUZZ, 52
    learnset MOVE_ELECTROWEB, 56
    learnset MOVE_ZAP_CANNON, 60
    terminatelearnset

levelup SPECIES_CRABRAWLER
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_DUAL_CHOP, 16
    learnset MOVE_DIZZY_PUNCH, 20
    learnset MOVE_PAYBACK, 22
    learnset MOVE_REVERSAL, 23
	learnset MOVE_ICE_PUNCH, 27
	learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_CRABHAMMER, 37
    learnset MOVE_DYNAMIC_PUNCH, 40
    learnset MOVE_CLOSE_COMBAT, 44
	learnset MOVE_ICE_HAMMER, 48
	learnset MOVE_SUPERPOWER, 51
	learnset MOVE_STONE_EDGE, 55
    terminatelearnset

levelup SPECIES_CRABOMINABLE
	learnset MOVE_AVALANCHE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_DUAL_CHOP, 16
    learnset MOVE_DIZZY_PUNCH, 20
    learnset MOVE_PAYBACK, 22
    learnset MOVE_REVERSAL, 23
	learnset MOVE_ICE_PUNCH, 27
	learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_CRABHAMMER, 37
    learnset MOVE_DYNAMIC_PUNCH, 40
    learnset MOVE_CLOSE_COMBAT, 44
	learnset MOVE_ICE_HAMMER, 48
	learnset MOVE_SUPERPOWER, 51
	learnset MOVE_STONE_EDGE, 55
    terminatelearnset

levelup SPECIES_ORICORIO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_GUST, 8
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_CAPTIVATE, 24
    learnset MOVE_AIR_SLASH, 28
	learnset MOVE_FLATTER, 33
    learnset MOVE_REVELATION_DANCE, 38
    learnset MOVE_HURRICANE, 44
	learnset MOVE_DEFOG, 50
    terminatelearnset

levelup SPECIES_CUTIEFLY
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_FAKE_TEARS, 9
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_SILVER_WIND, 21
    learnset MOVE_STUN_SPORE, 25
    learnset MOVE_DAZZLING_GLEAM, 29
    learnset MOVE_BUG_BUZZ, 33
    learnset MOVE_AROMATHERAPY, 37
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_TAILWIND, 45
    learnset MOVE_POLLEN_PUFF, 49
terminatelearnset

levelup SPECIES_RIBOMBEE
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 5
    learnset MOVE_FAKE_TEARS, 9
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_SILVER_WIND, 21
    learnset MOVE_STUN_SPORE, 25
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_TAILWIND, 50
    learnset MOVE_POLLEN_PUFF, 55
terminatelearnset

levelup SPECIES_ROCKRUFF
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_BITE, 16
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset

levelup SPECIES_LYCANROC
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_ACCELEROCK, 5
    learnset MOVE_QUICK_GUARD, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_LEER, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_DOUBLE_TEAM, 26
    learnset MOVE_BITE, 28
    learnset MOVE_ROCK_THROW, 30
    learnset MOVE_ODOR_SLEUTH, 36
    learnset MOVE_ROCK_TOMB, 38
    learnset MOVE_ROAR, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_SCARY_FACE, 52
    learnset MOVE_ROCK_CLIMB, 56
    learnset MOVE_STONE_EDGE, 58
    terminatelearnset

levelup SPECIES_WISHIWASHI
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_BRINE, 12
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_BEAT_UP, 20
    learnset MOVE_DIVE, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_ENDEAVOR, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_MAREANIE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 5
    learnset MOVE_BITE, 8
    learnset MOVE_BRINE, 12
    learnset MOVE_BARB_BARRAGE, 16
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_SPIKE_CANNON, 26
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_TOXIC, 30
    learnset MOVE_VENOM_DRENCH, 34
    learnset MOVE_LIQUIDATION, 36
    learnset MOVE_POISON_JAB, 40
	learnset MOVE_SLUDGE_WAVE, 48
    terminatelearnset

levelup SPECIES_TOXAPEX
    learnset MOVE_BANEFUL_BUNKER, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 5
    learnset MOVE_BITE, 8
    learnset MOVE_BRINE, 12
    learnset MOVE_BARB_BARRAGE, 16
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_SPIKE_CANNON, 26
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_BANEFUL_BUNKER, 30
    learnset MOVE_TOXIC, 30
    learnset MOVE_VENOM_DRENCH, 34
    learnset MOVE_LIQUIDATION, 36
    learnset MOVE_POISON_JAB, 40
	learnset MOVE_SLUDGE_WAVE, 48
    terminatelearnset

levelup SPECIES_MUDBRAY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_STOMP, 26
    learnset MOVE_STRENGTH, 28
    learnset MOVE_BIDE, 30
    learnset MOVE_HIGH_HORSEPOWER, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_HEAVY_SLAM, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_MEGA_KICK, 45
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset

levelup SPECIES_MUDSDALE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_MUD_SPORT, 12
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_STRENGTH, 28
    learnset MOVE_BIDE, 30
    learnset MOVE_HIGH_HORSEPOWER, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_HEAVY_SLAM, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_MEGA_KICK, 45
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset

levelup SPECIES_DEWPIDER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_BUBBLE, 16
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_SPIDER_WEB, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_BITE, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_LUNGE, 38
    learnset MOVE_LEECH_LIFE, 42
    learnset MOVE_ENTRAINMENT, 45
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_MIRROR_COAT, 52
    terminatelearnset

levelup SPECIES_ARAQUANID
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_INFESTATION, 8
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_BITE, 12
    learnset MOVE_SOAK, 16
    learnset MOVE_BUBBLE, 20
    learnset MOVE_SPIDER_WEB, 26
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LUNGE, 38
    learnset MOVE_LEECH_LIFE, 42
    learnset MOVE_ENTRAINMENT, 45
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_MIRROR_COAT, 52
    terminatelearnset

levelup SPECIES_FOMANTIS
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_INGRAIN, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_X_SCISSOR, 26
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_LEAF_BLADE, 30
    learnset MOVE_SOLAR_BEAM, 36
    terminatelearnset

levelup SPECIES_LURANTIS
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_SOLAR_BEAM, 8
    learnset MOVE_DUAL_CHOP, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_INGRAIN, 26
    learnset MOVE_X_SCISSOR, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_SWEET_SCENT, 36
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_SOLAR_BLADE, 48
    terminatelearnset

levelup SPECIES_MORELULL
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_FLASH, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_INGRAIN, 16
    learnset MOVE_MOONLIGHT, 20
    learnset MOVE_SLEEP_POWDER, 26
    learnset MOVE_STRENGTH_SAP, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_SPORE, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_DREAM_EATER, 42
    learnset MOVE_SPOTLIGHT, 45
    terminatelearnset

levelup SPECIES_SHIINOTIC
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_INGRAIN, 16
    learnset MOVE_FLASH, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_MOONLIGHT, 20
    learnset MOVE_SLEEP_POWDER, 26
    learnset MOVE_STRENGTH_SAP, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_SPORE, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_DREAM_EATER, 42
    learnset MOVE_SPOTLIGHT, 45
    terminatelearnset

levelup SPECIES_SALANDIT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_VENOM_DRENCH, 13
    learnset MOVE_FLAME_BURST, 17
    learnset MOVE_DRAGON_RAGE, 21
    learnset MOVE_TOXIC, 24
    learnset MOVE_VENOSHOCK, 29
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_SLUDGE_BOMB, 40
    learnset MOVE_DRAGON_PULSE, 48
terminatelearnset

levelup SPECIES_SALAZZLE
    learnset MOVE_ENCORE, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_VENOM_DRENCH, 13
    learnset MOVE_FLAME_BURST, 17
    learnset MOVE_DRAGON_RAGE, 21
    learnset MOVE_TOXIC, 24
    learnset MOVE_VENOSHOCK, 29
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_SLUDGE_BOMB, 42
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_FIRE_BLAST, 55
terminatelearnset


levelup SPECIES_STUFFUL
    learnset MOVE_TACKLE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_BRUTAL_SWING, 8
    learnset MOVE_STOMP, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SUBMISSION, 23
    learnset MOVE_PAYBACK, 28
    learnset MOVE_THRASH, 32
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_HAMMER_ARM, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_SUPERPOWER, 50
terminatelearnset

levelup SPECIES_BEWEAR
    learnset MOVE_PAIN_SPLIT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_BRUTAL_SWING, 10
    learnset MOVE_STOMP, 14
    learnset MOVE_BIND, 19
    learnset MOVE_SUBMISSION, 23
    learnset MOVE_PAYBACK, 30
    learnset MOVE_THRASH, 34
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_SUPERPOWER, 60
terminatelearnset


levelup SPECIES_BOUNSWEET
    learnset MOVE_SPLASH, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_TEETER_DANCE, 26
    learnset MOVE_AROMATIC_MIST, 28
    learnset MOVE_AROMATHERAPY, 30
    terminatelearnset

levelup SPECIES_STEENEE
    learnset MOVE_DOUBLE_SLAP, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_SPLASH, 8
    learnset MOVE_PLAY_NICE, 16
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_SWEET_SCENT, 20
    learnset MOVE_MAGICAL_LEAF, 26
    learnset MOVE_STOMP, 28
    learnset MOVE_TEETER_DANCE, 30
    learnset MOVE_AROMATIC_MIST, 34
    learnset MOVE_CAPTIVATE, 36
    learnset MOVE_AROMATHERAPY, 38
    learnset MOVE_LEAF_STORM, 42
    terminatelearnset

levelup SPECIES_TSAREENA
    learnset MOVE_TROP_KICK, 1
    learnset MOVE_POWER_WHIP, 5
    learnset MOVE_FLAIL, 8
    learnset MOVE_PLAY_NICE, 16
    learnset MOVE_SPLASH, 12
    learnset MOVE_SWAGGER, 16
    learnset MOVE_RAPID_SPIN, 20
    learnset MOVE_RAZOR_LEAF, 26
    learnset MOVE_PUNISHMENT, 28
    learnset MOVE_DOUBLE_SLAP, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_MAGICAL_LEAF, 36
    learnset MOVE_STOMP, 38
    learnset MOVE_TEETER_DANCE, 42
    learnset MOVE_AROMATIC_MIST, 45
    learnset MOVE_CAPTIVATE, 48
    learnset MOVE_AROMATHERAPY, 52
    learnset MOVE_LEAF_STORM, 54
    learnset MOVE_HIGH_JUMP_KICK, 56
    terminatelearnset

levelup SPECIES_COMFEY
    learnset MOVE_WRAP, 1
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_NATURAL_GIFT, 30
    learnset MOVE_SWEET_KISS, 34
    learnset MOVE_GRASS_KNOT, 36
    learnset MOVE_PETAL_BLIZZARD, 38
    learnset MOVE_FLORAL_HEALING, 42
    learnset MOVE_SWEET_SCENT, 45
    learnset MOVE_AROMATHERAPY, 48
    learnset MOVE_PETAL_DANCE, 52
    learnset MOVE_PLAY_ROUGH, 54
    terminatelearnset

levelup SPECIES_ORANGURU
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TAUNT, 5
    learnset MOVE_AFTER_YOU, 8
    learnset MOVE_STORED_POWER, 16
    learnset MOVE_QUASH, 12
    learnset MOVE_PSYCH_UP, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_INSTRUCT, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FOUL_PLAY, 42
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset

levelup SPECIES_PASSIMIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BEAT_UP, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_BESTOW, 26
    learnset MOVE_FLING, 30
    learnset MOVE_THRASH, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_REVERSAL, 42
    learnset MOVE_GIGA_IMPACT, 45
    terminatelearnset

levelup SPECIES_WIMPOD
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_DEFENSE_CURL, 8
    terminatelearnset

levelup SPECIES_GOLISOPOD
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_STRUGGLE_BUG, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_ROCK_SMASH, 20
    learnset MOVE_MUD_SHOT, 26
    learnset MOVE_BUG_BITE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_RAZOR_SHELL, 42
    learnset MOVE_PIN_MISSILE, 45
    learnset MOVE_LIQUIDATION, 48
    terminatelearnset

levelup SPECIES_SANDYGAST
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SAND_TOMB, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_HYPNOSIS, 26
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_SHORE_UP, 38
    terminatelearnset

levelup SPECIES_PALOSSAND
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SAND_TOMB, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_HYPNOSIS, 26
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_SHORE_UP, 38
    terminatelearnset

levelup SPECIES_PYUKUMUKU
    learnset MOVE_HARDEN, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_MUD_SPORT, 16
    learnset MOVE_BIDE, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_COUNTER, 28
    learnset MOVE_PURIFY, 30
    learnset MOVE_GASTRO_ACID, 36
    learnset MOVE_PAIN_SPLIT, 38
    learnset MOVE_RECOVER, 42
    learnset MOVE_SOAK, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_MEMENTO, 52
    terminatelearnset

levelup SPECIES_TYPE_NULL
    learnset MOVE_TACKLE, 1
    learnset MOVE_IMPRISON, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_PURSUIT, 16
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_CRUSH_CLAW, 20
    learnset MOVE_METAL_SOUND, 26
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_TRI_ATTACK, 42
    learnset MOVE_PUNISHMENT, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_RAZOR_WIND, 52
    learnset MOVE_HEAL_BLOCK, 54
    terminatelearnset

levelup SPECIES_SILVALLY
    learnset MOVE_MULTI_ATTACK, 1
    learnset MOVE_EXPLOSION, 5
    learnset MOVE_THUNDER_FANG, 8
    learnset MOVE_ICE_FANG, 16
    learnset MOVE_FIRE_FANG, 12
    learnset MOVE_POISON_FANG, 16
    learnset MOVE_IMPRISON, 20
    learnset MOVE_IRON_HEAD, 26
    learnset MOVE_TACKLE, 28
    learnset MOVE_BITE, 30
    learnset MOVE_AERIAL_ACE, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_HEAL_BLOCK, 38
    learnset MOVE_RAGE, 42
    learnset MOVE_PURSUIT, 45
    learnset MOVE_CRUSH_CLAW, 48
    learnset MOVE_METAL_SOUND, 52
    learnset MOVE_DOUBLE_HIT, 54
    learnset MOVE_X_SCISSOR, 56
    learnset MOVE_AIR_SLASH, 58
    learnset MOVE_TAKE_DOWN, 60
    learnset MOVE_CRUNCH, 65
    learnset MOVE_TRI_ATTACK, 68
    learnset MOVE_PUNISHMENT, 70
    learnset MOVE_DOUBLE_EDGE, 74
    learnset MOVE_RAZOR_WIND, 76
    learnset MOVE_PARTING_SHOT, 80
    terminatelearnset

levelup SPECIES_MINIOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_KOMALA
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_YAWN, 9
    learnset MOVE_THIEF, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_KNOCK_OFF, 23
	learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_WOOD_HAMMER, 32
	learnset MOVE_BODY_SLAM, 36
    learnset MOVE_SUPERPOWER, 41
	learnset MOVE_THRASH, 44
	learnset MOVE_PLAY_ROUGH, 50
    terminatelearnset

levelup SPECIES_TURTONATOR
    learnset MOVE_SMOG, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_ENDURE, 12
    learnset MOVE_FLAIL, 16
    learnset MOVE_INCINERATE, 20
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_SHELL_SMASH, 36
    learnset MOVE_SHELL_TRAP, 38
    learnset MOVE_OVERHEAT, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_TOGEDEMARU
    learnset MOVE_STEEL_ROLLER, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_METAL_CLAW, 5
    learnset MOVE_TWINEEDLE, 8
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_SPARK, 17
    learnset MOVE_PIN_MISSILE, 20
    learnset MOVE_EERIE_IMPULSE, 24
    learnset MOVE_SMART_STRIKE, 26
    learnset MOVE_SUPER_FANG, 29
    learnset MOVE_ZING_ZAP, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_ELECTROWEB, 42
    learnset MOVE_WILD_CHARGE, 48
    learnset MOVE_SPIKY_SHIELD, 54
terminatelearnset

levelup SPECIES_MIMIKYU
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_MIMIC, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_BRUXISH
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_BITE, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_DISABLE, 16
    learnset MOVE_PSYWAVE, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_AQUA_TAIL, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_PSYCHIC_FANGS, 34
    learnset MOVE_SYNCHRONOISE, 36
    terminatelearnset

levelup SPECIES_DRAMPA
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_TWISTER, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_GLARE, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_NATURAL_GIFT, 20
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_LIGHT_SCREEN, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_FLY, 38
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_OUTRAGE, 45
    terminatelearnset

levelup SPECIES_DHELMISE
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_ASTONISH, 12
    learnset MOVE_WRAP, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_GYRO_BALL, 26
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_WHIRLPOOL, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_HEAVY_SLAM, 38
    learnset MOVE_SLAM, 42
    learnset MOVE_ANCHOR_SHOT, 45
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PHANTOM_FORCE, 52
    learnset MOVE_POWER_WHIP, 54
    terminatelearnset

levelup SPECIES_JANGMO_O
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_BIDE, 16
    learnset MOVE_DRAGON_TAIL, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SCREECH, 28
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_NOBLE_ROAR, 36
    learnset MOVE_OUTRAGE, 42
    terminatelearnset

levelup SPECIES_HAKAMO_O
    learnset MOVE_SKY_UPPERCUT, 1
    learnset MOVE_AUTOTOMIZE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_LEER, 16
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_TAIL, 16
    learnset MOVE_BIDE, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_SCREECH, 34
    learnset MOVE_DRAGON_CLAW, 38
    learnset MOVE_NOBLE_ROAR, 42
    learnset MOVE_OUTRAGE, 48
    learnset MOVE_CLOSE_COMBAT, 52
    terminatelearnset

levelup SPECIES_KOMMO_O
    learnset MOVE_CLANGING_SCALES, 1
    learnset MOVE_AUTOTOMIZE, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_LEER, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_SKY_UPPERCUT, 26
    learnset MOVE_BIDE, 28
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_SCREECH, 38
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_NOBLE_ROAR, 48
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_CLOSE_COMBAT, 56
    learnset MOVE_CLANGOROUS_SOUL, 58
    learnset MOVE_BOOMBURST, 60
    terminatelearnset

levelup SPECIES_TAPU_KOKO
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_BRAVE_BIRD, 16
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_FALSE_SWIPE, 20
    learnset MOVE_FAIRY_WIND, 28
    learnset MOVE_SPARK, 30
    learnset MOVE_SHOCK_WAVE, 34
    learnset MOVE_CHARGE, 36
    learnset MOVE_SCREECH, 38
    learnset MOVE_MIRROR_MOVE, 42
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_NATURES_MADNESS, 54
    learnset MOVE_ELECTRO_BALL, 56
    terminatelearnset

levelup SPECIES_TAPU_LELE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_AROMATIC_MIST, 16
    learnset MOVE_AROMATHERAPY, 12
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_PSYWAVE, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_FLATTER, 36
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_NATURES_MADNESS, 45
    learnset MOVE_TICKLE, 52
    learnset MOVE_MOONBLAST, 54
    terminatelearnset

levelup SPECIES_TAPU_BULU
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_WOOD_HAMMER, 16
    learnset MOVE_SUPERPOWER, 12
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_WHIRLWIND, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_HORN_ATTACK, 34
    learnset MOVE_LEECH_SEED, 36
    learnset MOVE_MEGA_DRAIN, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_HORN_LEECH, 45
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_NATURES_MADNESS, 54
    learnset MOVE_MEGAHORN, 56
    learnset MOVE_SKULL_BASH, 58
    terminatelearnset

levelup SPECIES_TAPU_FINI
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_MOONBLAST, 16
    learnset MOVE_HEAL_PULSE, 12
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_HAZE, 20
    learnset MOVE_MIST, 26
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_WHIRLPOOL, 34
    learnset MOVE_REFRESH, 36
    learnset MOVE_BRINE, 38
    learnset MOVE_AQUA_RING, 42
    learnset MOVE_DEFOG, 45
    learnset MOVE_SURF, 48
    learnset MOVE_MUDDY_WATER, 52
    learnset MOVE_SOAK, 54
    learnset MOVE_NATURES_MADNESS, 56
    learnset MOVE_HYDRO_PUMP, 58
    terminatelearnset

levelup SPECIES_COSMOG
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ARM_THRUST, 9
    learnset MOVE_LEER, 12
	learnset MOVE_ROLLING_KICK, 16
    learnset MOVE_SMART_STRIKE, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_STOMPING_TANTRUM, 27
	learnset MOVE_FIRE_PUNCH, 30
	learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_IRON_HEAD, 43
    learnset MOVE_ZEN_HEADBUTT, 47
    learnset MOVE_STONE_EDGE, 50
	learnset MOVE_CLOSE_COMBAT, 54
	learnset MOVE_NO_RETREAT, 58
	learnset MOVE_BEHEMOTH_BLADE, 67
    terminatelearnset

levelup SPECIES_COSMOEM
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BULLET_SEED, 5
	learnset MOVE_HEART_STAMP, 9
    learnset MOVE_FAKE_TEARS, 12
	learnset MOVE_COVET, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_EXTRASENSORY, 24
    learnset MOVE_ALLURING_VOICE, 27
	learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_TRIPLE_ARROWS, 36
    learnset MOVE_SPIRIT_SHACKLE, 40
    learnset MOVE_ACROBATICS, 43
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_THOUSAND_ARROWS, 50
	learnset MOVE_SNIPE_SHOT, 54
	learnset MOVE_HEALING_WISH, 58
	learnset MOVE_PHOTON_GEYSER, 67
    terminatelearnset

levelup SPECIES_SOLGALEO
    learnset MOVE_SUNSTEEL_STRIKE, 1
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_NOBLE_ROAR, 12
    learnset MOVE_WAKE_UP_SLAP, 16
    learnset MOVE_IRON_HEAD, 20
    learnset MOVE_METAL_SOUND, 26
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_FLASH_CANNON, 30
    learnset MOVE_MORNING_SUN, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_METAL_BURST, 38
    learnset MOVE_SOLAR_BEAM, 42
    learnset MOVE_WILD_CHARGE, 45
    learnset MOVE_FLARE_BLITZ, 48
    learnset MOVE_WIDE_GUARD, 52
    learnset MOVE_GIGA_IMPACT, 54
    terminatelearnset

levelup SPECIES_LUNALA
    learnset MOVE_MOONGEIST_BEAM, 1
    learnset MOVE_CONFUSION, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_SHADOW_BALL, 28
    learnset MOVE_MOONLIGHT, 30
    learnset MOVE_NIGHT_DAZE, 34
    learnset MOVE_MAGIC_COAT, 36
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_DREAM_EATER, 45
    learnset MOVE_WIDE_GUARD, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_NIHILEGO
    learnset MOVE_WRAP, 1
    learnset MOVE_POUND, 5
    learnset MOVE_TICKLE, 12
    learnset MOVE_ACID, 16
    learnset MOVE_CONSTRICT, 20
    learnset MOVE_CLEAR_SMOG, 26
    learnset MOVE_PSYWAVE, 28
    learnset MOVE_VENOSHOCK, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_ACID_SPRAY, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_POWER_GEM, 45
    learnset MOVE_VENOM_DRENCH, 48
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_HEAD_SMASH, 58
    terminatelearnset

levelup SPECIES_BUZZWOLE
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_THUNDER_PUNCH, 16
    learnset MOVE_ICE_PUNCH, 12
    learnset MOVE_REVERSAL, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_COMET_PUNCH, 26
    learnset MOVE_VITAL_THROW, 28
    learnset MOVE_TAUNT, 34
    learnset MOVE_ENDURE, 36
    learnset MOVE_LEECH_LIFE, 38
    learnset MOVE_MEGA_PUNCH, 42
    learnset MOVE_LUNGE, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_HAMMER_ARM, 52
    learnset MOVE_DYNAMIC_PUNCH, 54
    learnset MOVE_SUPERPOWER, 56
    learnset MOVE_FOCUS_PUNCH, 58
    terminatelearnset

levelup SPECIES_PHEROMOSA
    learnset MOVE_FEINT, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_QUICK_GUARD, 16
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_LEER, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_BUG_BITE, 28
    learnset MOVE_SILVER_WIND, 30
    learnset MOVE_STOMP, 34
    learnset MOVE_JUMP_KICK, 36
    learnset MOVE_TRIPLE_KICK, 38
    learnset MOVE_BOUNCE, 45
    learnset MOVE_LUNGE, 48
    learnset MOVE_BUG_BUZZ, 52
    learnset MOVE_ME_FIRST, 54
    learnset MOVE_HIGH_JUMP_KICK, 58
    terminatelearnset

levelup SPECIES_XURKITREE
    learnset MOVE_WRAP, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_SPARK, 16
    learnset MOVE_CHARGE, 12
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_INGRAIN, 20
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_EERIE_IMPULSE, 30
    learnset MOVE_THUNDER_PUNCH, 34
    learnset MOVE_HYPNOSIS, 36
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_MAGNET_RISE, 45
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_ION_DELUGE, 54
    learnset MOVE_ZAP_CANNON, 56
    terminatelearnset

levelup SPECIES_CELESTEELA
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WIDE_GUARD, 8
    learnset MOVE_AIR_SLASH, 16
    learnset MOVE_INGRAIN, 12
    learnset MOVE_HARDEN, 16
    learnset MOVE_SMACK_DOWN, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_AUTOTOMIZE, 36
    learnset MOVE_FLASH_CANNON, 38
    learnset MOVE_LEECH_SEED, 42
    learnset MOVE_SEED_BOMB, 45
    learnset MOVE_SKULL_BASH, 52
    learnset MOVE_HEAVY_SLAM, 54
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_KARTANA
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_VACUUM_WAVE, 5
    learnset MOVE_SACRED_SWORD, 8
    learnset MOVE_DEFOG, 16
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_CUT, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_FALSE_SWIPE, 26
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_SYNTHESIS, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_LASER_FOCUS, 36
    learnset MOVE_DETECT, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_AIR_SLASH, 52
    learnset MOVE_PSYCHO_CUT, 54
    learnset MOVE_GUILLOTINE, 56
    terminatelearnset

levelup SPECIES_GUZZLORD
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_TAIL, 5
    learnset MOVE_BELCH, 8
    learnset MOVE_WIDE_GUARD, 16
    learnset MOVE_SWALLOW, 12
    learnset MOVE_DRAGON_RAGE, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_STOMP, 28
    learnset MOVE_BRUTAL_SWING, 30
    learnset MOVE_STEAMROLLER, 34
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_IRON_TAIL, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_HAMMER_ARM, 48
    learnset MOVE_GASTRO_ACID, 52
    learnset MOVE_HEAVY_SLAM, 54
    learnset MOVE_THRASH, 56
    learnset MOVE_DRAGON_RUSH, 58
    learnset MOVE_WRING_OUT, 60
    learnset MOVE_GIGA_IMPACT, 65
    terminatelearnset

levelup SPECIES_NECROZMA
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 5
    learnset MOVE_CHARGE_BEAM, 8
    learnset MOVE_GRAVITY, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_MIRROR_SHOT, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_STORED_POWER, 30
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_PHOTON_GEYSER, 48
    learnset MOVE_AUTOTOMIZE, 52
    learnset MOVE_WRING_OUT, 54
    learnset MOVE_PRISMATIC_LASER, 56
    terminatelearnset

levelup SPECIES_MAGEARNA
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_CRAFTY_SHIELD, 8
    learnset MOVE_GEAR_UP, 16
    learnset MOVE_IRON_HEAD, 16
    learnset MOVE_SONIC_BOOM, 20
    learnset MOVE_DEFENSE_CURL, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_LUCKY_CHANT, 30
    learnset MOVE_ROLLOUT, 34
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_AURORA_BEAM, 38
    learnset MOVE_MIND_READER, 45
    learnset MOVE_FLASH_CANNON, 48
    learnset MOVE_FLEUR_CANNON, 52
    learnset MOVE_PAIN_SPLIT, 54
    learnset MOVE_AURA_SPHERE, 56
    learnset MOVE_SYNCHRONOISE, 58
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_TRUMP_CARD, 68
    terminatelearnset

levelup SPECIES_MARSHADOW
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 5
    learnset MOVE_ICE_PUNCH, 8
    learnset MOVE_COPYCAT, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_COUNTER, 20
    learnset MOVE_LASER_FOCUS, 26
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_DRAIN_PUNCH, 30
    learnset MOVE_PURSUIT, 34
    learnset MOVE_ROLLING_KICK, 36
    learnset MOVE_FORCE_PALM, 38
    learnset MOVE_ROLE_PLAY, 42
    learnset MOVE_SHADOW_PUNCH, 45
    learnset MOVE_JUMP_KICK, 48
    learnset MOVE_SUCKER_PUNCH, 52
    learnset MOVE_IVY_CUDGEL, 54
    learnset MOVE_SPECTRAL_THIEF, 56
    learnset MOVE_THUNDER_PUNCH, 58
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_POIPOLE
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_PECK, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_ACID, 12
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_CHARM, 20
    learnset MOVE_VENOSHOCK, 26
    learnset MOVE_FELL_STINGER, 28
    learnset MOVE_VENOM_DRENCH, 30
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_GASTRO_ACID, 42
    terminatelearnset

levelup SPECIES_NAGANADEL
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_AIR_SLASH, 5
    learnset MOVE_DRAGON_PULSE, 8
    learnset MOVE_PECK, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_ACID, 20
    learnset MOVE_FURY_ATTACK, 26
    learnset MOVE_CHARM, 28
    learnset MOVE_VENOSHOCK, 30
    learnset MOVE_FELL_STINGER, 34
    learnset MOVE_VENOM_DRENCH, 36
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_TOXIC, 45
    learnset MOVE_GASTRO_ACID, 48
    learnset MOVE_DRAGON_RUSH, 52
    terminatelearnset

levelup SPECIES_STAKATAKA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_STOMP, 12
    learnset MOVE_ROCK_SLIDE, 16
    learnset MOVE_BIDE, 20
    learnset MOVE_BLOCK, 26
    learnset MOVE_AUTOTOMIZE, 28
    learnset MOVE_WIDE_GUARD, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_MAGNET_RISE, 45
    learnset MOVE_IRON_HEAD, 48
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_BLACEPHALON
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FIRE_SPIN, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_STORED_POWER, 16
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_MAGIC_COAT, 16
    learnset MOVE_FLAME_BURST, 20
    learnset MOVE_NIGHT_SHADE, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_INCINERATE, 30
    learnset MOVE_HYPNOSIS, 34
    learnset MOVE_MYSTICAL_FIRE, 36
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_FIRE_BLAST, 45
    learnset MOVE_WILL_O_WISP, 52
    learnset MOVE_MIND_BLOWN, 54
    terminatelearnset

levelup SPECIES_ZERAORA
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_FAKE_OUT, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_SNARL, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_VOLT_SWITCH, 26
    learnset MOVE_QUICK_GUARD, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_CHARGE, 36
    learnset MOVE_THUNDER_PUNCH, 38
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_PLASMA_FISTS, 48
    learnset MOVE_CLOSE_COMBAT, 52
    terminatelearnset

levelup SPECIES_MELTAN
    learnset MOVE_PECK, 1
    learnset MOVE_EMBER, 5
	learnset MOVE_GROWL, 9
    learnset MOVE_TWISTER, 12
	learnset MOVE_INCINERATE, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_U_TURN, 27
	learnset MOVE_DUAL_WINGBEAT, 30
    learnset MOVE_ESPER_WING, 36
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_TAILWIND, 43
    learnset MOVE_FEATHER_DANCE, 47
    learnset MOVE_HEAT_WAVE, 50
	learnset MOVE_BRAVE_BIRD, 54
	learnset MOVE_FIRE_BLAST, 58
	learnset MOVE_AEROBLAST, 67
    terminatelearnset

levelup SPECIES_MELMETAL
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_FLASH_CANNON, 26
    learnset MOVE_MEGA_PUNCH, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_DYNAMIC_PUNCH, 36
    learnset MOVE_SUPERPOWER, 38
    learnset MOVE_DOUBLE_IRON_BASH, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_GROOKEY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BRANCH_POKE, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCREECH, 16
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_SLAM, 26
    learnset MOVE_UPROAR, 28
    learnset MOVE_WOOD_HAMMER, 30
    learnset MOVE_ENDEAVOR, 34
    terminatelearnset

levelup SPECIES_THWACKEY
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_BRANCH_POKE, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_UPROAR, 30
    learnset MOVE_WOOD_HAMMER, 34
    learnset MOVE_ENDEAVOR, 36
    terminatelearnset

levelup SPECIES_RILLABOOM
    learnset MOVE_DRUM_BEATING, 1
    learnset MOVE_DOUBLE_HIT, 5
    learnset MOVE_NOBLE_ROAR, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_BRANCH_POKE, 20
    learnset MOVE_TAUNT, 26
    learnset MOVE_RAZOR_LEAF, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_SLAM, 36
    learnset MOVE_UPROAR, 38
    learnset MOVE_WOOD_HAMMER, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_BOOMBURST, 48
    terminatelearnset

levelup SPECIES_SCORBUNNY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_COUNTER, 28
    learnset MOVE_BOUNCE, 30
    learnset MOVE_DOUBLE_EDGE, 34
    terminatelearnset

levelup SPECIES_RABOOT
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_COUNTER, 28
    learnset MOVE_BOUNCE, 30
    learnset MOVE_DOUBLE_EDGE, 34
    terminatelearnset

levelup SPECIES_CINDERACE
    learnset MOVE_PYRO_BALL, 1
    learnset MOVE_FEINT, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_FLAME_CHARGE, 26
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_COUNTER, 34
    learnset MOVE_BOUNCE, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_COURT_CHANGE, 42
    terminatelearnset

levelup SPECIES_SOBBLE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_BIND, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_U_TURN, 26
    learnset MOVE_LIQUIDATION, 28
    learnset MOVE_SOAK, 30
    terminatelearnset

levelup SPECIES_DRIZZILE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_BIND, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_U_TURN, 26
    learnset MOVE_LIQUIDATION, 28
    learnset MOVE_SOAK, 30
    terminatelearnset

levelup SPECIES_INTELEON
    learnset MOVE_SNIPE_SHOT, 1
    learnset MOVE_ACROBATICS, 5
    learnset MOVE_POUND, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_BIND, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_TEARFUL_LOOK, 26
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_U_TURN, 30
    learnset MOVE_LIQUIDATION, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset

levelup SPECIES_SKWOVET
    learnset MOVE_TACKLE, 1
    learnset MOVE_BITE, 8
    learnset MOVE_STUFF_CHEEKS, 16
    learnset MOVE_SWALLOW, 16
    learnset MOVE_SPIT_UP, 20
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_REST, 28
    learnset MOVE_COUNTER, 30
    learnset MOVE_BULLET_SEED, 34
    learnset MOVE_SUPER_FANG, 36
    learnset MOVE_BELCH, 38
    terminatelearnset

levelup SPECIES_GREEDENT
    learnset MOVE_COVET, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_BITE, 16
    learnset MOVE_STUFF_CHEEKS, 12
    learnset MOVE_SWALLOW, 20
    learnset MOVE_SPIT_UP, 26
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_REST, 30
    learnset MOVE_COUNTER, 34
    learnset MOVE_BULLET_SEED, 36
    learnset MOVE_SUPER_FANG, 38
    learnset MOVE_BELCH, 42
    terminatelearnset

levelup SPECIES_ROOKIDEE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 4
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_PLUCK, 15
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_DRILL_PECK, 24
    learnset MOVE_FEATHER_DANCE, 30
    learnset MOVE_REVENGE, 34
    learnset MOVE_DEFOG, 40
    learnset MOVE_BRAVE_BIRD, 44
    learnset MOVE_ROOST, 50
    terminatelearnset

levelup SPECIES_CORVISQUIRE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 4
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_PLUCK, 15
    learnset MOVE_STEEL_WING, 20
    learnset MOVE_DRILL_PECK, 26
    learnset MOVE_FEATHER_DANCE, 32
    learnset MOVE_REVENGE, 38
    learnset MOVE_DEFOG, 42
    learnset MOVE_BRAVE_BIRD, 48
    learnset MOVE_ROOST, 55
    terminatelearnset


levelup SPECIES_CORVIKNIGHT
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 4
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_PLUCK, 15
    learnset MOVE_STEEL_WING, 20
    learnset MOVE_DRILL_PECK, 26
    learnset MOVE_FEATHER_DANCE, 32
    learnset MOVE_REVENGE, 38
    learnset MOVE_DEFOG, 42
    learnset MOVE_IRON_HEAD, 44
    learnset MOVE_BRAVE_BIRD, 49
    learnset MOVE_BODY_PRESS, 58
    learnset MOVE_ROOST, 65
    terminatelearnset

levelup SPECIES_BLIPBUG
    learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset

levelup SPECIES_DOTTLER
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_CONFUSION, 12
    learnset MOVE_PSYBEAM, 18
    terminatelearnset

levelup SPECIES_ORBEETLE
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_SILVER_WIND, 24
    learnset MOVE_MIRROR_COAT, 30
    learnset MOVE_BUG_BUZZ, 34
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_GIGA_DRAIN, 44
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_U_TURN, 60
terminatelearnset


levelup SPECIES_NICKIT
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BEAT_UP, 4
	learnset MOVE_THIEF, 8
	learnset MOVE_COVET, 11
    learnset MOVE_SNARL, 15
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_NIGHT_SLASH, 25
    learnset MOVE_TAIL_SLAP, 30
    learnset MOVE_FOUL_PLAY, 34
    terminatelearnset

levelup SPECIES_THIEVUL
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BEAT_UP, 4
	learnset MOVE_THIEF, 8
	learnset MOVE_COVET, 11
    learnset MOVE_SNARL, 15
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_TAUNT, 24
    learnset MOVE_SHADOW_CLAW, 29
    learnset MOVE_FOUL_PLAY, 34
	learnset MOVE_PLAY_ROUGH, 38
	learnset MOVE_HOWL, 44
    terminatelearnset

levelup SPECIES_GOSSIFLEUR
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 4
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_MAGICAL_LEAF, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_LEAF_TORNADO, 20
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_HYPER_VOICE, 28
    learnset MOVE_AROMATHERAPY, 32
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SLEEP_POWDER, 40
    learnset MOVE_LEAF_STORM, 44
terminatelearnset

levelup SPECIES_ELDEGOSS
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 4
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_MAGICAL_LEAF, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_LEAF_TORNADO, 20
    learnset MOVE_COTTON_SPORE, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_ENERGY_BALL, 40
    learnset MOVE_SLEEP_POWDER, 44
    learnset MOVE_LEAF_STORM, 48
terminatelearnset


levelup SPECIES_WOOLOO
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_PAYBACK, 23
    learnset MOVE_REVERSAL, 26
	learnset MOVE_PROTECT, 30
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_HIGH_HORSEPOWER, 38
	learnset MOVE_WILD_CHARGE, 44
	learnset MOVE_DOUBLE_EDGE, 50
    terminatelearnset

levelup SPECIES_DUBWOOL
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_PAYBACK, 23
    learnset MOVE_REVERSAL, 26
	learnset MOVE_PROTECT, 30
	learnset MOVE_BODY_SLAM, 34
	learnset MOVE_HIGH_HORSEPOWER, 38
	learnset MOVE_WILD_CHARGE, 44
	learnset MOVE_DOUBLE_EDGE, 50
    terminatelearnset

levelup SPECIES_CHEWTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_BITE, 7
    learnset MOVE_ICE_FANG, 12
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_RAZOR_SHELL, 25
    learnset MOVE_JAW_LOCK, 32
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_BODY_SLAM, 49
terminatelearnset

levelup SPECIES_DREDNAW
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_BITE, 7
    learnset MOVE_ICE_FANG, 13
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_RAZOR_SHELL, 26
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_JAW_LOCK, 34
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_BODY_PRESS, 48
    learnset MOVE_STONE_EDGE, 55
terminatelearnset


levelup SPECIES_YAMPER
    learnset MOVE_TACKLE, 1
    learnset MOVE_NUZZLE, 8
    learnset MOVE_BITE, 16
    learnset MOVE_ROAR, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_CHARM, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_CHARGE, 28
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_PLAY_ROUGH, 34
    terminatelearnset

levelup SPECIES_BOLTUND
    learnset MOVE_ELECTRIFY, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_NUZZLE, 16
    learnset MOVE_BITE, 12
    learnset MOVE_ROAR, 16
    learnset MOVE_SPARK, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_CHARGE, 30
    learnset MOVE_WILD_CHARGE, 34
    learnset MOVE_PLAY_ROUGH, 36
    terminatelearnset

levelup SPECIES_ROLYCOLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_HEAT_CRASH, 28
    learnset MOVE_ROCK_BLAST, 30
    terminatelearnset

levelup SPECIES_CARKOL
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_HEAT_CRASH, 28
    learnset MOVE_ROCK_BLAST, 30
    learnset MOVE_BURN_UP, 36
    terminatelearnset

levelup SPECIES_COALOSSAL
    learnset MOVE_TAR_SHOT, 1
    learnset MOVE_FLAME_CHARGE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_INCINERATE, 28
    learnset MOVE_HEAT_CRASH, 34
    learnset MOVE_ROCK_BLAST, 36
    learnset MOVE_BURN_UP, 38
	learnset MOVE_STONE_EDGE, 42
	learnset MOVE_FLAMETHROWER, 46
	learnset MOVE_SCALD, 52
	learnset MOVE_EXPLOSION, 60
    terminatelearnset

levelup SPECIES_APPLIN
    learnset MOVE_ASTONISH, 5
	learnset MOVE_ROLLOUT, 8
	learnset MOVE_ABSORB, 12
	learnset MOVE_MEGA_DRAIN, 16
	learnset MOVE_DRAGON_BREATH, 20
	learnset MOVE_POUNCE, 28
    terminatelearnset

levelup SPECIES_FLAPPLE
    learnset MOVE_DUAL_WINGBEAT, 1
	learnset MOVE_GRAV_APPLE, 1
    learnset MOVE_PROTECT, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_ACROBATICS, 42
    learnset MOVE_DRAGON_CLAW, 48
	learnset MOVE_SUCKER_PUNCH, 54
    learnset MOVE_DRAGON_RUSH, 62
    terminatelearnset

levelup SPECIES_APPLETUN
    learnset MOVE_BODY_PRESS, 1
	learnset MOVE_APPLE_ACID, 1
    learnset MOVE_PROTECT, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_RECOVER, 48
	learnset MOVE_SUCKER_PUNCH, 54
    learnset MOVE_ENERGY_BALL, 62
    terminatelearnset

levelup SPECIES_SILICOBRA
    learnset MOVE_WRAP, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BRUTAL_SWING, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_GLARE, 20
    learnset MOVE_DIG, 26
    learnset MOVE_SLAM, 30
    learnset MOVE_SAND_TOMB, 36
    terminatelearnset

levelup SPECIES_SANDACONDA
    learnset MOVE_SKULL_BASH, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BRUTAL_SWING, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_SAND_TOMB, 38
    terminatelearnset

levelup SPECIES_CRAMORANT
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 5
    learnset MOVE_SWALLOW, 16
    learnset MOVE_SPIT_UP, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_FURY_ATTACK, 20
    learnset MOVE_PLUCK, 26
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_ARROKUDA
    learnset MOVE_PECK, 1
    learnset MOVE_AQUA_JET, 5
    learnset MOVE_FURY_ATTACK, 8
    learnset MOVE_BITE, 16
    learnset MOVE_DIVE, 16
    learnset MOVE_LASER_FOCUS, 20
    learnset MOVE_CRUNCH, 26
    learnset MOVE_LIQUIDATION, 28
    learnset MOVE_DOUBLE_EDGE, 30
    terminatelearnset

levelup SPECIES_BARRASKEWDA
    learnset MOVE_THROAT_CHOP, 1
    learnset MOVE_PECK, 5
    learnset MOVE_AQUA_JET, 8
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_BITE, 12
    learnset MOVE_DIVE, 20
    learnset MOVE_LASER_FOCUS, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_LIQUIDATION, 30
    learnset MOVE_DOUBLE_EDGE, 34
    terminatelearnset

levelup SPECIES_TOXEL
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_FLAIL, 12
    learnset MOVE_ACID, 16
    terminatelearnset

levelup SPECIES_TOXTRICITY
    learnset MOVE_SPARK, 1
    learnset MOVE_EERIE_IMPULSE, 5
    learnset MOVE_BELCH, 8
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_NUZZLE, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_ACID, 26
    learnset MOVE_THUNDER_SHOCK, 28
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_LEER, 34
    learnset MOVE_NOBLE_ROAR, 36
    learnset MOVE_CHARGE, 38
    learnset MOVE_SHOCK_WAVE, 42
    learnset MOVE_SCARY_FACE, 45
    learnset MOVE_TAUNT, 48
    learnset MOVE_VENOSHOCK, 52
    learnset MOVE_SCREECH, 54
    learnset MOVE_SWAGGER, 56
    learnset MOVE_TOXIC, 58
    learnset MOVE_DISCHARGE, 60
    learnset MOVE_POISON_JAB, 65
    learnset MOVE_OVERDRIVE, 68
    learnset MOVE_BOOMBURST, 70
    terminatelearnset

levelup SPECIES_SIZZLIPEDE
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_BITE, 16
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_LUNGE, 30
    learnset MOVE_CRUNCH, 35
    learnset MOVE_FIRE_LASH, 40
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_FLARE_BLITZ, 50
terminatelearnset


levelup SPECIES_CENTISKORCH
    learnset MOVE_BURN_UP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_BITE, 15
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_LUNGE, 31
    learnset MOVE_FIRE_LASH, 35
    learnset MOVE_CRUNCH, 38
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_LEECH_LIFE, 48
    learnset MOVE_FLARE_BLITZ, 55
terminatelearnset


levelup SPECIES_CLOBBOPUS
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BIND, 8
    learnset MOVE_MUD_SHOT, 11
	learnset MOVE_MACH_PUNCH, 14
    learnset MOVE_BULLET_PUNCH, 17
    learnset MOVE_DETECT, 20
	learnset MOVE_ICE_PUNCH, 25
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_TAUNT, 32
    learnset MOVE_REVERSAL, 36
    learnset MOVE_SUPERPOWER, 45
    terminatelearnset

levelup SPECIES_GRAPPLOCT
    learnset MOVE_OCTAZOOKA, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BIND, 8
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_BRINE, 16
    learnset MOVE_DETECT, 20
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_OCTAZOOKA, 30
    learnset MOVE_REVERSAL, 36
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_SKITTER_SMACK, 43
	learnset MOVE_DIVE, 48
    learnset MOVE_SUPERPOWER, 52
	learnset MOVE_OCTOLOCK, 58
	learnset MOVE_JET_PUNCH, 65
    terminatelearnset

levelup SPECIES_SINISTEA
    learnset MOVE_ASTONISH, 1
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_PROTECT, 12
    learnset MOVE_SUCKER_PUNCH, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_MEMENTO, 34
    learnset MOVE_SHELL_SMASH, 36
    terminatelearnset

levelup SPECIES_POLTEAGEIST
    learnset MOVE_TEATIME, 1
    learnset MOVE_STRENGTH_SAP, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_AROMATIC_MIST, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_MEMENTO, 38
    learnset MOVE_SHELL_SMASH, 42
    terminatelearnset

levelup SPECIES_HATENNA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_AROMATHERAPY, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HEAL_PULSE, 20
    learnset MOVE_DAZZLING_GLEAM, 26
    learnset MOVE_PSYCHIC, 30
    learnset MOVE_HEALING_WISH, 34
    terminatelearnset

levelup SPECIES_HATTREM
    learnset MOVE_BRUTAL_SWING, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_PLAY_NICE, 8
    learnset MOVE_LIFE_DEW, 16
    learnset MOVE_DISARMING_VOICE, 12
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HEAL_PULSE, 26
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_HEALING_WISH, 36
    terminatelearnset

levelup SPECIES_HATTERENE
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_BRUTAL_SWING, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_PLAY_NICE, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_HEAL_PULSE, 28
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_HEALING_WISH, 38
    learnset MOVE_MAGIC_POWDER, 42
    terminatelearnset

levelup SPECIES_IMPIDIMP
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FLATTER, 16
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_TORMENT, 28
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_FOUL_PLAY, 38
    terminatelearnset

levelup SPECIES_MORGREM
    learnset MOVE_FALSE_SURRENDER, 1
    learnset MOVE_FAKE_OUT, 5
    learnset MOVE_CONFIDE, 8
    learnset MOVE_BITE, 16
    learnset MOVE_FLATTER, 12
    learnset MOVE_FAKE_TEARS, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_TORMENT, 30
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_FOUL_PLAY, 42
    terminatelearnset

levelup SPECIES_GRIMMSNARL
    learnset MOVE_SPIRIT_BREAK, 1
    learnset MOVE_FALSE_SURRENDER, 5
    learnset MOVE_POWER_UP_PUNCH, 16
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_CONFIDE, 16
    learnset MOVE_BITE, 20
    learnset MOVE_FLATTER, 26
    learnset MOVE_FAKE_TEARS, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_TORMENT, 38
    learnset MOVE_DARK_PULSE, 42
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_FOUL_PLAY, 52
    learnset MOVE_HAMMER_ARM, 54
    terminatelearnset

levelup SPECIES_OBSTAGOON
    learnset MOVE_OBSTRUCT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_SNARL, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_PIN_MISSILE, 26
    learnset MOVE_REST, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_DOUBLE_EDGE, 42
	learnset MOVE_CLOSE_COMBAT, 48
    terminatelearnset

levelup SPECIES_PERRSERKER
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_METAL_BURST, 5
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_SCRATCH, 20
    learnset MOVE_PAY_DAY, 26
    learnset MOVE_METAL_CLAW, 28
    learnset MOVE_TAUNT, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_FURY_SWIPES, 36
    learnset MOVE_SCREECH, 38
    learnset MOVE_SLASH, 42
    learnset MOVE_METAL_SOUND, 45
    learnset MOVE_THRASH, 48
    terminatelearnset

levelup SPECIES_CURSOLA
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_DISABLE, 12
    learnset MOVE_SPITE, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_HEX, 26
    learnset MOVE_STRENGTH_SAP, 30
    learnset MOVE_POWER_GEM, 34
    learnset MOVE_NIGHT_SHADE, 36
    learnset MOVE_GRUDGE, 38
    learnset MOVE_MIRROR_COAT, 42
    terminatelearnset

levelup SPECIES_SIRFETCHD
    learnset MOVE_FIRST_IMPRESSION, 5
    learnset MOVE_PECK, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_LEER, 12
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_ROCK_SMASH, 20
    learnset MOVE_BRUTAL_SWING, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_DEFOG, 34
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_SLAM, 42
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_FINAL_GAMBIT, 48
    learnset MOVE_BRAVE_BIRD, 52
    learnset MOVE_METEOR_ASSAULT, 54
    terminatelearnset

levelup SPECIES_MR_RIME
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_SLACK_OFF, 5
    learnset MOVE_AFTER_YOU, 8
    learnset MOVE_BLOCK, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_ENCORE, 16
    learnset MOVE_ROLE_PLAY, 20
    learnset MOVE_PROTECT, 26
    learnset MOVE_RECYCLE, 28
    learnset MOVE_MIMIC, 30
    learnset MOVE_LIGHT_SCREEN, 34
    learnset MOVE_REFLECT, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_POUND, 48
    learnset MOVE_RAPID_SPIN, 52
    learnset MOVE_ICE_SHARD, 56
    learnset MOVE_CONFUSION, 58
    learnset MOVE_ALLY_SWITCH, 60
    learnset MOVE_ICY_WIND, 65
    learnset MOVE_DOUBLE_KICK, 68
    learnset MOVE_PSYBEAM, 70
    learnset MOVE_HYPNOSIS, 74
    learnset MOVE_MIRROR_COAT, 76
    learnset MOVE_SUCKER_PUNCH, 80
    learnset MOVE_FREEZE_DRY, 80
    learnset MOVE_PSYCHIC, 80
    learnset MOVE_TEETER_DANCE, 80
    terminatelearnset

levelup SPECIES_RUNERIGUS
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_HAZE, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_BRUTAL_SWING, 26
    learnset MOVE_CRAFTY_SHIELD, 28
    learnset MOVE_HEX, 30
    learnset MOVE_MEAN_LOOK, 34
    learnset MOVE_SLAM, 36
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_DESTINY_BOND, 54
    terminatelearnset

levelup SPECIES_MILCERY
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 5
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_ATTRACT, 20
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_RECOVER, 30
    learnset MOVE_ENTRAINMENT, 36
    terminatelearnset

levelup SPECIES_ALCREMIE
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_FALINKS
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_ENDURE, 15
    learnset MOVE_REVERSAL, 20
    learnset MOVE_FIRST_IMPRESSION, 26
    learnset MOVE_SMART_STRIKE, 30
	learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_MEGAHORN, 38
    learnset MOVE_HIGH_HORSEPOWER, 42
	learnset MOVE_NO_RETREAT, 45
	learnset MOVE_CLOSE_COMBAT, 50
    terminatelearnset

levelup SPECIES_PINCURCHIN
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_CHARGE, 16
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_RECOVER, 26
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_ZING_ZAP, 36
    learnset MOVE_ACUPRESSURE, 38
    learnset MOVE_DISCHARGE, 42
    terminatelearnset

levelup SPECIES_SNOM
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_STRUGGLE_BUG, 5
    terminatelearnset

levelup SPECIES_FROSMOTH
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_STRUGGLE_BUG, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_ATTRACT, 12
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_INFESTATION, 20
    learnset MOVE_MIST, 26
    learnset MOVE_DEFOG, 28
    learnset MOVE_FEATHER_DANCE, 30
    learnset MOVE_AURORA_BEAM, 34
    learnset MOVE_BUG_BUZZ, 38
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_TAILWIND, 48
    learnset MOVE_WIDE_GUARD, 52
    terminatelearnset

levelup SPECIES_STONJOURNER
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_BLOCK, 5
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_GRAVITY, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_WIDE_GUARD, 30
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_STONE_EDGE, 36
    learnset MOVE_MEGA_KICK, 38
    terminatelearnset

levelup SPECIES_EISCUE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_MIST, 8
    learnset MOVE_WEATHER_BALL, 16
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_FREEZE_DRY, 26
    learnset MOVE_SURF, 34
    learnset MOVE_BLIZZARD, 36
    terminatelearnset

levelup SPECIES_INDEEDEE
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_ENCORE, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_AFTER_YOU, 20
    learnset MOVE_AROMATHERAPY, 26
    learnset MOVE_PSYCHIC, 28
    learnset MOVE_LAST_RESORT, 38
    terminatelearnset

levelup SPECIES_MORPEKO
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 8
    learnset MOVE_POWER_TRIP, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FLATTER, 16
    learnset MOVE_BITE, 20
    learnset MOVE_SPARK, 26
    learnset MOVE_TORMENT, 28
    learnset MOVE_BULLET_SEED, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_AURA_WHEEL, 38
    learnset MOVE_THRASH, 42
    terminatelearnset

levelup SPECIES_CUFANT
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_STOMP, 17
	learnset MOVE_MUD_BOMB, 22
    learnset MOVE_FLASH_CANNON, 25
    learnset MOVE_DIG, 30
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_HIGH_HORSEPOWER, 45
    learnset MOVE_SUPERPOWER, 50
    learnset MOVE_HEAVY_SLAM, 55
terminatelearnset

levelup SPECIES_COPPERAJAH
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_STOMP, 17
	learnset MOVE_MUD_BOMB, 22
    learnset MOVE_FLASH_CANNON, 25
    learnset MOVE_DIG, 30
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_HIGH_HORSEPOWER, 45
    learnset MOVE_SUPERPOWER, 50
    learnset MOVE_HEAVY_SLAM, 55
    learnset MOVE_BODY_PRESS, 65
terminatelearnset


levelup SPECIES_DRACOZOLT
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CHARGE, 8
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_PLUCK, 16
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_BOLT_BEAK, 34
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_DRAGON_RUSH, 38
    terminatelearnset

levelup SPECIES_ARCTOZOLT
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_CHARGE, 8
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_PLUCK, 16
    learnset MOVE_AVALANCHE, 20
    learnset MOVE_FREEZE_DRY, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_BOLT_BEAK, 34
    learnset MOVE_ICICLE_CRASH, 36
    learnset MOVE_BLIZZARD, 38
    terminatelearnset

levelup SPECIES_DRACOVISH
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_BRUTAL_SWING, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_BITE, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_FISHIOUS_REND, 34
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_DRAGON_RUSH, 38
    terminatelearnset

levelup SPECIES_ARCTOVISH
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_PROTECT, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_BITE, 16
    learnset MOVE_FREEZE_DRY, 26
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_FISHIOUS_REND, 34
    learnset MOVE_ICICLE_CRASH, 36
    learnset MOVE_BLIZZARD, 38
    terminatelearnset

levelup SPECIES_DURALUDON
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_METAL_SOUND, 12
    learnset MOVE_BREAKING_SWIPE, 16
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_LASER_FOCUS, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_FLASH_CANNON, 34
    learnset MOVE_METAL_BURST, 36
    learnset MOVE_HYPER_BEAM, 38
    terminatelearnset

levelup SPECIES_DREEPY
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_BITE, 16
    terminatelearnset

levelup SPECIES_DRAKLOAK
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_INFESTATION, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_BITE, 12
    learnset MOVE_LOCK_ON, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_HEX, 26
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_U_TURN, 34
    learnset MOVE_PHANTOM_FORCE, 38
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_DRAGON_RUSH, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_LAST_RESORT, 52
    terminatelearnset

levelup SPECIES_DRAGAPULT
    learnset MOVE_DRAGON_DARTS, 1
    learnset MOVE_DRAGON_BREATH, 5
    learnset MOVE_SUCKER_PUNCH, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_INFESTATION, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_BITE, 20
    learnset MOVE_LOCK_ON, 26
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_HEX, 30
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_U_TURN, 38
    learnset MOVE_PHANTOM_FORCE, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_DRAGON_RUSH, 52
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_LAST_RESORT, 56
    terminatelearnset

levelup SPECIES_ZACIAN
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_QUICK_GUARD, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_LASER_FOCUS, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_GIGA_IMPACT, 42
    terminatelearnset

levelup SPECIES_ZAMAZENTA
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_LASER_FOCUS, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_GIGA_IMPACT, 42
    terminatelearnset

levelup SPECIES_ETERNATUS
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_CONFUSE_RAY, 5
    learnset MOVE_DRAGON_TAIL, 8
    learnset MOVE_TOXIC, 12
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_CROSS_POISON, 26
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_DYNAMAX_CANNON, 34
    learnset MOVE_RECOVER, 38
    learnset MOVE_HYPER_BEAM, 42
    learnset MOVE_ETERNABEAM, 45
    terminatelearnset

levelup SPECIES_KUBFU
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ENDURE, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_DYNAMIC_PUNCH, 36
    learnset MOVE_COUNTER, 38
    learnset MOVE_CLOSE_COMBAT, 42
    learnset MOVE_FOCUS_PUNCH, 45
    terminatelearnset

levelup SPECIES_URSHIFU
    learnset MOVE_WICKED_BLOW, 1
    learnset MOVE_SUCKER_PUNCH, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_LEER, 16
    learnset MOVE_ENDURE, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_DETECT, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_DYNAMIC_PUNCH, 42
    learnset MOVE_COUNTER, 45
    learnset MOVE_CLOSE_COMBAT, 48
    learnset MOVE_FOCUS_PUNCH, 52
    terminatelearnset

levelup SPECIES_ZARUDE
    learnset MOVE_BIND, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_GRASS_KNOT, 26
    learnset MOVE_BITE, 28
    learnset MOVE_U_TURN, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_THRASH, 45
    learnset MOVE_POWER_WHIP, 48
    terminatelearnset

levelup SPECIES_REGIELEKI
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_ELECTROWEB, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SHOCK_WAVE, 12
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_EXTREME_SPEED, 20
    learnset MOVE_THUNDER_CAGE, 26
    learnset MOVE_THUNDERBOLT, 28
    learnset MOVE_MAGNET_RISE, 30
    learnset MOVE_THRASH, 34
    learnset MOVE_LOCK_ON, 36
    learnset MOVE_ZAP_CANNON, 38
    learnset MOVE_HYPER_BEAM, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_REGIDRAGO
    learnset MOVE_TWISTER, 1
    learnset MOVE_VICE_GRIP, 5
    learnset MOVE_BITE, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_CRUNCH, 20
    learnset MOVE_DRAGON_CLAW, 26
    learnset MOVE_HAMMER_ARM, 28
    learnset MOVE_THRASH, 34
    learnset MOVE_LASER_FOCUS, 36
    learnset MOVE_DRAGON_ENERGY, 38
    learnset MOVE_HYPER_BEAM, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_GLASTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_KICK, 8
    learnset MOVE_AVALANCHE, 16
    learnset MOVE_STOMP, 12
    learnset MOVE_TORMENT, 16
    learnset MOVE_MIST, 20
    learnset MOVE_ICICLE_CRASH, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_THRASH, 34
    learnset MOVE_TAUNT, 36
    learnset MOVE_DOUBLE_EDGE, 38
    terminatelearnset

levelup SPECIES_SPECTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_KICK, 8
    learnset MOVE_HEX, 16
    learnset MOVE_STOMP, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_HAZE, 20
    learnset MOVE_SHADOW_BALL, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_THRASH, 34
    learnset MOVE_DISABLE, 36
    learnset MOVE_DOUBLE_EDGE, 38
    terminatelearnset

levelup SPECIES_CALYREX
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 20
    learnset MOVE_HELPING_HAND, 26
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 30
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_LEECH_SEED, 36
    learnset MOVE_HEAL_PULSE, 38
    learnset MOVE_SOLAR_BEAM, 42
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset

levelup SPECIES_WYRDEER
    learnset MOVE_PSYSHIELD_BASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_LEER, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_ROLE_PLAY, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_IMPRISON, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_MEGAHORN, 45
    terminatelearnset

levelup SPECIES_KLEAVOR
    learnset MOVE_STONE_AXE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_FALSE_SWIPE, 12
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_DOUBLE_TEAM, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 38
    terminatelearnset

levelup SPECIES_URSALUNA
    learnset MOVE_HEADLONG_RUSH, 1
    learnset MOVE_MOONLIGHT, 5
    learnset MOVE_COVET, 8
    learnset MOVE_FAKE_TEARS, 16
    learnset MOVE_LEER, 12
    learnset MOVE_LICK, 16
    learnset MOVE_SCRATCH, 20
    learnset MOVE_FURY_SWIPES, 26
    learnset MOVE_PAYBACK, 28
    learnset MOVE_SWEET_SCENT, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_PLAY_NICE, 36
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_REST, 45
    learnset MOVE_SNORE, 48
    learnset MOVE_HIGH_HORSEPOWER, 52
    learnset MOVE_THRASH, 54
    learnset MOVE_HAMMER_ARM, 56
    terminatelearnset

levelup SPECIES_BASCULEGION
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_SHADOW_BALL, 5
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_FLAIL, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_BITE, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SOAK, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_UPROAR, 42
    learnset MOVE_WAVE_CRASH, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 54
    terminatelearnset

levelup SPECIES_SNEASLER
    learnset MOVE_DIRE_CLAW, 1
    learnset MOVE_FLING, 5
    learnset MOVE_LEER, 8
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_POISON_JAB, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_SLASH, 36
    learnset MOVE_SCREECH, 42
    learnset MOVE_CLOSE_COMBAT, 45
    terminatelearnset

levelup SPECIES_OVERQWIL
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_BITE, 16
    learnset MOVE_FELL_STINGER, 12
    learnset MOVE_BRINE, 26
    learnset MOVE_BARB_BARRAGE, 28
    learnset MOVE_PIN_MISSILE, 30
    learnset MOVE_SPIT_UP, 36
    learnset MOVE_TOXIC, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_DESTINY_BOND, 52
    terminatelearnset

levelup SPECIES_ENAMORUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_TORMENT, 8
    learnset MOVE_FLATTER, 16
    learnset MOVE_TWISTER, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_IMPRISON, 26
    learnset MOVE_MYSTICAL_FIRE, 28
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_SUPERPOWER, 38
    learnset MOVE_HEALING_WISH, 42
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_OUTRAGE, 48
    learnset MOVE_SPRINGTIDE_STORM, 52
    terminatelearnset

levelup SPECIES_SPRIGATITO
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_SCRATCH, 3
    learnset MOVE_THIEF, 8
    learnset MOVE_COVET, 12
    learnset MOVE_CUT, 16
	learnset MOVE_SUCKER_PUNCH, 21
	learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_U_TURN, 38
    learnset MOVE_WORRY_SEED, 44
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PLAY_ROUGH, 54
    terminatelearnset

levelup SPECIES_FLORAGATO
	learnset MOVE_FORCE_PALM, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_SCRATCH, 3
    learnset MOVE_COVET, 8
    learnset MOVE_THIEF, 12
    learnset MOVE_CUT, 16
	learnset MOVE_FORCE_PALM, 16
    learnset MOVE_SEED_BOMB, 23
	learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_FAKE_OUT, 33
    learnset MOVE_U_TURN, 42
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PLAY_ROUGH, 54
    terminatelearnset

levelup SPECIES_MEOWSCARADA
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_SCRATCH, 3
    learnset MOVE_COVET, 8
    learnset MOVE_THIEF, 12
    learnset MOVE_CUT, 16
	learnset MOVE_FORCE_PALM, 16
    learnset MOVE_SEED_BOMB, 23
	learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_FAKE_OUT, 33
    learnset MOVE_U_TURN, 42
    learnset MOVE_PLAY_ROUGH, 48
	learnset MOVE_TRIPLE_AXEL, 53
	learnset MOVE_LEAF_STORM, 60
    terminatelearnset

levelup SPECIES_FUECOCO
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_SNARL, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_HEX, 26
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_FIRE_BLAST, 36
    terminatelearnset

levelup SPECIES_CROCALOR
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_SNARL, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_HEX, 26
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_HYPER_VOICE, 33
    learnset MOVE_WILL_O_WISP, 38
	learnset MOVE_SHADOW_BALL, 44
	learnset MOVE_ALLURING_VOICE, 50
    terminatelearnset

levelup SPECIES_SKELEDIRGE
    learnset MOVE_TORCH_SONG, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_SNARL, 12
    learnset MOVE_INCINERATE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_HEX, 26
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_HYPER_VOICE, 33
	learnset MOVE_TORCH_SONG, 36
    learnset MOVE_WILL_O_WISP, 42
	learnset MOVE_SHADOW_BALL, 46
	learnset MOVE_ALLURING_VOICE, 52
	learnset MOVE_BITTER_MALICE, 55
	learnset MOVE_OVERHEAT, 60
    terminatelearnset

levelup SPECIES_QUAXLY
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_AQUA_JET, 20
	learnset MOVE_AQUA_CUTTER, 24
    learnset MOVE_FEATHER_DANCE, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_TRIPLE_AXEL, 34
    learnset MOVE_LIQUIDATION, 45
	terminatelearnset

levelup SPECIES_QUAXWELL
	learnset MOVE_LOW_SWEEP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_AQUA_CUTTER, 16
	learnset MOVE_LOW_SWEEP, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_FEATHER_DANCE, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_TRIPLE_AXEL, 34
    learnset MOVE_LIQUIDATION, 45
    terminatelearnset

levelup SPECIES_QUAQUAVAL
	learnset MOVE_AQUA_STEP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_AQUA_CUTTER, 16
	learnset MOVE_LOW_SWEEP, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_FEATHER_DANCE, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_TRIPLE_AXEL, 34
	learnset MOVE_AQUA_STEP, 36
	learnset MOVE_SKY_UPPERCUT, 40
    learnset MOVE_LIQUIDATION, 45
	learnset MOVE_RAPID_SPIN, 50
	learnset MOVE_CLOSE_COMBAT, 55
	learnset MOVE_WAVE_CRASH, 60
    terminatelearnset

levelup SPECIES_LECHONK
    learnset MOVE_TACKLE, 1
	learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_COVET, 8
    learnset MOVE_MUD_SHOT, 12
	learnset MOVE_ECHOED_VOICE, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_YAWN, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_UPROAR, 36
    learnset MOVE_DOUBLE_EDGE, 38
    terminatelearnset

levelup SPECIES_OINKOLOGNE
    learnset MOVE_TACKLE, 1
	learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_COVET, 8
    learnset MOVE_MUD_SHOT, 12
	learnset MOVE_ECHOED_VOICE, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_YAWN, 25
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_HIGH_HORSEPOWER, 42
    learnset MOVE_BODY_SLAM, 45
	learnset MOVE_PLAY_ROUGH, 50
    terminatelearnset

levelup SPECIES_TAROUNTULA
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_STRUGGLE_BUG, 8
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_FEINT, 12
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_BLOCK, 20
    learnset MOVE_COUNTER, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_STICKY_WEB, 30
    learnset MOVE_GASTRO_ACID, 34
    learnset MOVE_CIRCLE_THROW, 36
    learnset MOVE_THROAT_CHOP, 38
    learnset MOVE_SKITTER_SMACK, 42
    terminatelearnset

levelup SPECIES_SPIDOPS
    learnset MOVE_SILK_TRAP, 1
    learnset MOVE_STRING_SHOT, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_BLOCK, 26
    learnset MOVE_COUNTER, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_STICKY_WEB, 34
    learnset MOVE_GASTRO_ACID, 36
    learnset MOVE_CIRCLE_THROW, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SKITTER_SMACK, 45
    terminatelearnset

levelup SPECIES_NYMBLE
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_STRUGGLE_BUG, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_ENDURE, 26
    learnset MOVE_BUG_BITE, 28
    learnset MOVE_FEINT, 30
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_FIRST_IMPRESSION, 38
    terminatelearnset

levelup SPECIES_LOKIX
    learnset MOVE_LUNGE, 1
    learnset MOVE_DETECT, 5
    learnset MOVE_LEER, 8
    learnset MOVE_LOW_KICK, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_ASTONISH, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_DOUBLE_KICK, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_ENDURE, 34
    learnset MOVE_BUG_BITE, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_THROAT_CHOP, 45
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_FIRST_IMPRESSION, 52
    learnset MOVE_BOUNCE, 54
    learnset MOVE_AXE_KICK, 56
    terminatelearnset

levelup SPECIES_PAWMI
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_CHARGE, 10
    learnset MOVE_NUZZLE, 12
	learnset MOVE_ARM_THRUST, 16
    learnset MOVE_DIG, 20
    learnset MOVE_BITE, 26
    learnset MOVE_SPARK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ENTRAINMENT, 34
    learnset MOVE_SLAM, 36
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_WILD_CHARGE, 45
    terminatelearnset

levelup SPECIES_PAWMO
	learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_CHARGE, 10
    learnset MOVE_NUZZLE, 12
	learnset MOVE_ARM_THRUST, 16
	learnset MOVE_SPARK, 20
    learnset MOVE_DIG, 23
    learnset MOVE_BITE, 28
    learnset MOVE_THUNDER_FANG, 30
    learnset MOVE_THUNDER_WAVE, 32
    learnset MOVE_ENTRAINMENT, 36
    learnset MOVE_SLAM, 38
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_WILD_CHARGE, 47
    terminatelearnset

levelup SPECIES_PAWMOT
    learnset MOVE_SUPERCELL_SLAM, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_WILD_CHARGE, 16
    learnset MOVE_THUNDER_SHOCK, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_CHARGE, 20
    learnset MOVE_NUZZLE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_BITE, 30
    learnset MOVE_SPARK, 34
    learnset MOVE_CLOSE_COMBAT, 40
    learnset MOVE_SEED_BOMB, 43
	learnset MOVE_CRUNCH, 48
    learnset MOVE_DOUBLE_SHOCK, 54
    terminatelearnset

levelup SPECIES_TANDEMAUS
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_POUND, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SUPER_FANG, 12
    learnset MOVE_DOUBLE_HIT, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_ENCORE, 26
    learnset MOVE_PLAY_ROUGH, 28
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_BEAT_UP, 36
    learnset MOVE_COPYCAT, 38
    learnset MOVE_POPULATION_BOMB, 42
    terminatelearnset

levelup SPECIES_MAUSHOLD
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_FOLLOW_ME, 5
    learnset MOVE_POUND, 8
    learnset MOVE_TIDY_UP, 16
    learnset MOVE_ECHOED_VOICE, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SUPER_FANG, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_BULLET_SEED, 28
    learnset MOVE_ENCORE, 30
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_CHARM, 38
    learnset MOVE_BEAT_UP, 42
    learnset MOVE_COPYCAT, 45
    learnset MOVE_POPULATION_BOMB, 48
    terminatelearnset

levelup SPECIES_FIDOUGH
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_LICK, 8
    learnset MOVE_COVET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_PLAY_ROUGH, 26
    learnset MOVE_ROAR, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_CHARM, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_LAST_RESORT, 45
    terminatelearnset

levelup SPECIES_DACHSBUN
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_LICK, 8
    learnset MOVE_COVET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_PLAY_ROUGH, 26
    learnset MOVE_ROAR, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_CHARM, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_LAST_RESORT, 45
    terminatelearnset

levelup SPECIES_SMOLIV
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_LEECH_SEED, 36
	terminatelearnset

levelup SPECIES_DOLLIV
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_LEECH_SEED, 36
	terminatelearnset

levelup SPECIES_ARBOLIVA
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_ABSORB, 12
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_HELPING_HAND, 26
    learnset MOVE_FLAIL, 28
    learnset MOVE_MEGA_DRAIN, 30
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_ENERGY_BALL, 38
    learnset MOVE_LEECH_SEED, 42
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset

levelup SPECIES_SQUAWKABILLY
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_TORMENT, 12
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_FURY_ATTACK, 18
    learnset MOVE_TAUNT, 23
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_SWAGGER, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ENCORE, 45
    learnset MOVE_FLYING_PRESS, 48
	learnset MOVE_DOUBLE_EDGE, 53
    terminatelearnset

levelup SPECIES_NACLI
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_RECOVER, 28
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_HEAVY_SLAM, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_STONE_EDGE, 42
    terminatelearnset

levelup SPECIES_NACLSTACK
    learnset MOVE_SALT_CURE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_RECOVER, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_HEAVY_SLAM, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_STONE_EDGE, 45
    terminatelearnset

levelup SPECIES_GARGANACL
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_BLOCK, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_ROCK_BLAST, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_WIDE_GUARD, 16
    learnset MOVE_ROCK_THROW, 20
    learnset MOVE_MUD_SHOT, 26
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_SALT_CURE, 36
    learnset MOVE_RECOVER, 38
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_HEAVY_SLAM, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_EXPLOSION, 56
    terminatelearnset

levelup SPECIES_CHARCADET
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_INCINERATE, 20
	learnset MOVE_DISABLE, 24
    learnset MOVE_LAVA_PLUME, 30
    terminatelearnset

levelup SPECIES_ARMAROUGE
    learnset MOVE_PSYSHOCK, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_LEER, 16
    learnset MOVE_MYSTICAL_FIRE, 12
    learnset MOVE_WIDE_GUARD, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_FIRE_SPIN, 26
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_NIGHT_SHADE, 30
    learnset MOVE_FLAME_CHARGE, 34
    learnset MOVE_INCINERATE, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_EXPANDING_FORCE, 52
    learnset MOVE_ARMOR_CANNON, 55
    terminatelearnset

levelup SPECIES_CERULEDGE
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_LEER, 16
    learnset MOVE_MYSTICAL_FIRE, 12
    learnset MOVE_WIDE_GUARD, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_FIRE_SPIN, 26
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_NIGHT_SHADE, 30
    learnset MOVE_FLAME_CHARGE, 34
    learnset MOVE_INCINERATE, 36
    learnset MOVE_LAVA_PLUME, 38
    learnset MOVE_PSYCHO_CUT, 42
    learnset MOVE_BITTER_BLADE, 48
	learnset MOVE_POLTERGEIST, 52
    learnset MOVE_FLARE_BLITZ, 55
    terminatelearnset

levelup SPECIES_TADBULB
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SLACK_OFF, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_CHARGE, 16
    learnset MOVE_SPARK, 20
    learnset MOVE_MUD_SHOT, 26
    learnset MOVE_FLAIL, 28
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_WEATHER_BALL, 34
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_ZAP_CANNON, 42
    terminatelearnset

levelup SPECIES_BELLIBOLT
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SLACK_OFF, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_CHARGE, 16
    learnset MOVE_SPARK, 20
    learnset MOVE_MUD_SHOT, 26
    learnset MOVE_FLAIL, 28
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_WEATHER_BALL, 34
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_ZAP_CANNON, 42
    terminatelearnset

levelup SPECIES_WATTREL
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_PLUCK, 14
    learnset MOVE_SPARK, 16
    learnset MOVE_ELECTRO_BALL, 20
    learnset MOVE_THUNDER_WAVE, 26
    learnset MOVE_DUAL_WINGBEAT, 28
    learnset MOVE_VOLT_SWITCH, 34
    learnset MOVE_DISCHARGE, 36
    terminatelearnset

levelup SPECIES_KILOWATTREL
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_PLUCK, 14
    learnset MOVE_SPARK, 17
    learnset MOVE_ELECTRO_BALL, 20
    learnset MOVE_THUNDER_WAVE, 26
    learnset MOVE_AIR_SLASH, 31
    learnset MOVE_VOLT_SWITCH, 35
    learnset MOVE_DISCHARGE, 40
	learnset MOVE_TAILWIND, 46
	learnset MOVE_THUNDERBOLT, 50
	learnset MOVE_HURRICANE, 55
    terminatelearnset

levelup SPECIES_MASCHIFF
    learnset MOVE_LEER, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_BITE, 12
    learnset MOVE_SNARL, 16
    learnset MOVE_ROAR, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_PAYBACK, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SWAGGER, 36
    learnset MOVE_REVERSAL, 38
    learnset MOVE_JAW_LOCK, 42
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset

levelup SPECIES_MABOSSTIFF
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCARY_FACE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_THIEF, 12
    learnset MOVE_SNARL, 14
    learnset MOVE_BITE, 17
    learnset MOVE_ROAR, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_PAYBACK, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SWAGGER, 36
    learnset MOVE_REVERSAL, 38
    learnset MOVE_JAW_LOCK, 42
    learnset MOVE_DOUBLE_EDGE, 45
	learnset MOVE_LASH_OUT, 49
	learnset MOVE_COMEUPPANCE, 55
	learnset MOVE_OUTRAGE, 60
    terminatelearnset

levelup SPECIES_SHROODLE
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_BITE, 16
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_POISON_FANG, 20
    learnset MOVE_FLATTER, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_U_TURN, 30
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_TAUNT, 36
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_GUNK_SHOT, 45
    terminatelearnset

levelup SPECIES_GRAFAIAI
    learnset MOVE_DOODLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_POISON_FANG, 20
    learnset MOVE_FLATTER, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_U_TURN, 30
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_TAUNT, 36
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_GUNK_SHOT, 45
    terminatelearnset

levelup SPECIES_BRAMBLIN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_ABSORB, 11
    learnset MOVE_RAPID_SPIN, 13
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_STEAMROLLER, 20
    learnset MOVE_HEX, 26
    learnset MOVE_MEGA_DRAIN, 28
    learnset MOVE_DISABLE, 30
    learnset MOVE_GIGA_DRAIN, 36
	learnset MOVE_SKITTER_SMACK, 40
	learnset MOVE_POLTERGEIST, 46
    learnset MOVE_POWER_WHIP, 50
    terminatelearnset

levelup SPECIES_BRAMBLEGHAST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_ABSORB, 11
    learnset MOVE_RAPID_SPIN, 13
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_STEAMROLLER, 20
    learnset MOVE_HEX, 26
    learnset MOVE_MEGA_DRAIN, 28
    learnset MOVE_DISABLE, 30
    learnset MOVE_GIGA_DRAIN, 36
	learnset MOVE_SKITTER_SMACK, 40
	learnset MOVE_POLTERGEIST, 46
    learnset MOVE_POWER_WHIP, 50
    terminatelearnset

levelup SPECIES_TOEDSCOOL
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_TACKLE, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_SCREECH, 28
    learnset MOVE_MUD_SHOT, 30
    learnset MOVE_HEX, 34
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_SPORE, 38
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_EARTH_POWER, 48
    learnset MOVE_POWER_WHIP, 52
    terminatelearnset

levelup SPECIES_TOEDSCRUEL
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_REFLECT_TYPE, 5
    learnset MOVE_WRAP, 8
    learnset MOVE_ABSORB, 16
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_TACKLE, 26
    learnset MOVE_MEGA_DRAIN, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_MUD_SHOT, 34
    learnset MOVE_HEX, 36
    learnset MOVE_SEED_BOMB, 38
    learnset MOVE_SPORE, 42
    learnset MOVE_GIGA_DRAIN, 48
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_POWER_WHIP, 54
    terminatelearnset

levelup SPECIES_KLAWF
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_VICE_GRIP, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_ROCK_TOMB, 12
    learnset MOVE_METAL_CLAW, 15
    learnset MOVE_PROTECT, 20
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_X_SCISSOR, 28
    learnset MOVE_ROCK_BLAST, 31
    learnset MOVE_STOMPING_TANTRUM, 34
	learnset MOVE_KNOCK_OFF, 38
	learnset MOVE_CRABHAMMER, 42
	learnset MOVE_HIGH_HORSEPOWER, 46
    learnset MOVE_ROCK_SLIDE, 50
	learnset MOVE_THROAT_CHOP, 55
    terminatelearnset

levelup SPECIES_CAPSAKID
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_EMBER, 12
	learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_HEADBUTT, 16
	learnset MOVE_BULLET_SEED, 20
    learnset MOVE_ZEN_HEADBUTT, 24
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_SOLAR_BEAM, 36
    terminatelearnset

levelup SPECIES_SCOVILLAIN
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 8
    learnset MOVE_EMBER, 12
	learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_ZEN_HEADBUTT, 22
    learnset MOVE_FLAME_BURST, 26
    learnset MOVE_SEED_BOMB, 30
	learnset MOVE_CRUNCH, 34
    learnset MOVE_FLAMETHROWER, 40
	learnset MOVE_LEAF_STORM, 45
	learnset MOVE_SPICY_EXTRACT, 50
    learnset MOVE_SOLAR_BEAM, 54
    terminatelearnset

levelup SPECIES_RELLOR
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_DIG, 28
    learnset MOVE_LUNGE, 30
    terminatelearnset

levelup SPECIES_RABSCA
    learnset MOVE_REVIVAL_BLESSING, 1
    learnset MOVE_PSYCH_UP, 5
    learnset MOVE_SAFEGUARD, 8
    learnset MOVE_CONFUSION, 16
    learnset MOVE_DEFENSE_CURL, 12
    learnset MOVE_TACKLE, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_STRUGGLE_BUG, 26
    learnset MOVE_ROLLOUT, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_BUG_BITE, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_EXTRASENSORY, 38
    learnset MOVE_LUNGE, 42
    learnset MOVE_BUG_BUZZ, 54
    learnset MOVE_PSYCHIC, 56
    terminatelearnset

levelup SPECIES_FLITTLE
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_DISARMING_VOICE, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_PLUCK, 26
    learnset MOVE_UPROAR, 30
    terminatelearnset

levelup SPECIES_ESPATHRA
    learnset MOVE_LUMINA_CRASH, 1
    learnset MOVE_DRILL_PECK, 5
    learnset MOVE_FEATHER_DANCE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_PECK, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_DISARMING_VOICE, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_PLUCK, 34
    learnset MOVE_UPROAR, 38
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_LAST_RESORT, 48
    terminatelearnset

levelup SPECIES_TINKATINK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_COVET, 16
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_SWEET_KISS, 24
    learnset MOVE_BRUTAL_SWING, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_FLASH_CANNON, 32
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_FAKE_OUT, 40
    learnset MOVE_FLATTER, 43
    learnset MOVE_SKITTER_SMACK, 48
    learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_TINKATUFF
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_COVET, 16
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_SWEET_KISS, 24
    learnset MOVE_BRUTAL_SWING, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_FLASH_CANNON, 32
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_FAKE_OUT, 40
    learnset MOVE_FLATTER, 43
    learnset MOVE_SKITTER_SMACK, 48
    learnset MOVE_KNOCK_OFF, 52
    terminatelearnset

levelup SPECIES_TINKATON
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_COVET, 16
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_SWEET_KISS, 24
    learnset MOVE_BRUTAL_SWING, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_FLASH_CANNON, 32
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_FAKE_OUT, 40
    learnset MOVE_FLATTER, 43
	learnset MOVE_SMART_STRIKE, 46
    learnset MOVE_SKITTER_SMACK, 49
    learnset MOVE_KNOCK_OFF, 52
	learnset MOVE_GIGATON_HAMMER, 56
    terminatelearnset

levelup SPECIES_WIGLETT
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_WRAP, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_THROAT_CHOP, 34
    learnset MOVE_LIQUIDATION, 36
    terminatelearnset

levelup SPECIES_WUGTRIO
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_WRAP, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_TRIPLE_DIVE, 28
    learnset MOVE_DIG, 30
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_LIQUIDATION, 38
    terminatelearnset

levelup SPECIES_BOMBIRDIER
    learnset MOVE_LEER, 5
    learnset MOVE_MEMENTO, 8
    learnset MOVE_PECK, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_THIEF, 16
    learnset MOVE_ROCK_THROW, 20
    learnset MOVE_WHIRLWIND, 26
    learnset MOVE_PLUCK, 28
    learnset MOVE_TORMENT, 30
    learnset MOVE_ROCK_TOMB, 34
    learnset MOVE_PAYBACK, 36
    learnset MOVE_DUAL_WINGBEAT, 38
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_PARTING_SHOT, 48
    terminatelearnset

levelup SPECIES_FINIZEN
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_DOUBLE_HIT, 16
    learnset MOVE_DIVE, 20
    learnset MOVE_CHARM, 26
    learnset MOVE_ACROBATICS, 28
    learnset MOVE_ENCORE, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_MIST, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_PALAFIN
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_JET_PUNCH, 5
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_ASTONISH, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_DIVE, 28
    learnset MOVE_CHARM, 30
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_ENCORE, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_MIST, 42
    learnset MOVE_HYDRO_PUMP, 45
    learnset MOVE_FOCUS_PUNCH, 48
    learnset MOVE_WAVE_CRASH, 52
    terminatelearnset

levelup SPECIES_VAROOM
    learnset MOVE_LICK, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SCREECH, 23
    learnset MOVE_SMART_STRIKE, 26
    learnset MOVE_SWAGGER, 30
    learnset MOVE_POISON_JAB, 32
    learnset MOVE_UPROAR, 35
    learnset MOVE_SPIN_OUT, 42
    learnset MOVE_GUNK_SHOT, 45
    terminatelearnset

levelup SPECIES_REVAVROOM
    learnset MOVE_LICK, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SCREECH, 23
    learnset MOVE_SMART_STRIKE, 26
    learnset MOVE_SWAGGER, 30
    learnset MOVE_POISON_JAB, 32
    learnset MOVE_UPROAR, 35
	learnset MOVE_MAGNET_RISE, 40
    learnset MOVE_SPIN_OUT, 44
    learnset MOVE_GUNK_SHOT, 49
	learnset MOVE_NOXIOUS_TORQUE, 55
    terminatelearnset

levelup SPECIES_CYCLIZAR
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_BREAKING_SWIPE, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_BITE, 20
    learnset MOVE_U_TURN, 26
    learnset MOVE_SHED_TAIL, 28
    learnset MOVE_DRAGON_CLAW, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_DRAGON_RUSH, 42
    terminatelearnset

levelup SPECIES_ORTHWORM
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WRAP, 8
    learnset MOVE_MUD_SLAP, 16
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_IRON_HEAD, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_DIG, 28
    learnset MOVE_IRON_TAIL, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_SHED_TAIL, 42
    terminatelearnset

levelup SPECIES_GLIMMET
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SMACK_DOWN, 8
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_VENOSHOCK, 26
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_SLUDGE_WAVE, 42
    terminatelearnset

levelup SPECIES_GLIMMORA
    learnset MOVE_MORTAL_SPIN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_SPIKY_SHIELD, 12
    learnset MOVE_ACID_SPRAY, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_SELF_DESTRUCT, 38
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_POWER_GEM, 45
    learnset MOVE_SLUDGE_WAVE, 52
    terminatelearnset

levelup SPECIES_GREAVARD
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_LICK, 8
    learnset MOVE_BITE, 16
    learnset MOVE_ROAR, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_DIG, 26
    learnset MOVE_REST, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_HELPING_HAND, 36
    learnset MOVE_PHANTOM_FORCE, 38
    learnset MOVE_CHARM, 42
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset

levelup SPECIES_HOUNDSTONE
    learnset MOVE_LAST_RESPECTS, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_LICK, 16
    learnset MOVE_BITE, 12
    learnset MOVE_ROAR, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_DIG, 28
    learnset MOVE_REST, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_HELPING_HAND, 38
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_CHARM, 45
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset

levelup SPECIES_FLAMIGO
    learnset MOVE_COPYCAT, 1
    learnset MOVE_PECK, 5
    learnset MOVE_DOUBLE_KICK, 8
    learnset MOVE_DETECT, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_LOW_KICK, 20
    learnset MOVE_FEINT, 26
    learnset MOVE_PAYBACK, 28
    learnset MOVE_ROOST, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_MEGA_KICK, 36
    learnset MOVE_WIDE_GUARD, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_BRAVE_BIRD, 45
    terminatelearnset

levelup SPECIES_CETODDLE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_REST, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_AVALANCHE, 28
    learnset MOVE_BOUNCE, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_ICE_SPINNER, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_BLIZZARD, 45
    terminatelearnset

levelup SPECIES_CETITAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_REST, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_AVALANCHE, 28
    learnset MOVE_BOUNCE, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_ICE_SPINNER, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_BLIZZARD, 45
    terminatelearnset

levelup SPECIES_VELUZA
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_PLUCK, 8
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_SLASH, 16
    learnset MOVE_AQUA_CUTTER, 20
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_PSYCHO_CUT, 30
    learnset MOVE_LIQUIDATION, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_FINAL_GAMBIT, 38
    terminatelearnset

levelup SPECIES_DONDOZO
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_TICKLE, 16
    learnset MOVE_FLAIL, 12
    learnset MOVE_REST, 16
    learnset MOVE_SLEEP_TALK, 20
    learnset MOVE_DIVE, 26
    learnset MOVE_NOBLE_ROAR, 28
    learnset MOVE_SOAK, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_ORDER_UP, 42
    learnset MOVE_HEAVY_SLAM, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_WAVE_CRASH, 52
    terminatelearnset

levelup SPECIES_TATSUGIRI
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_SOAK, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_MEMENTO, 26
    learnset MOVE_MUDDY_WATER, 28
    learnset MOVE_MIRROR_COAT, 34
    learnset MOVE_DRAGON_PULSE, 36
    terminatelearnset

levelup SPECIES_ANNIHILAPE
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_COUNTER, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_FINAL_GAMBIT, 16
    learnset MOVE_FLING, 12
    learnset MOVE_SCRATCH, 16
    learnset MOVE_KARATE_CHOP, 20
    learnset MOVE_LEER, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_PURSUIT, 36
    learnset MOVE_SEISMIC_TOSS, 38
    learnset MOVE_SWAGGER, 42
    learnset MOVE_CROSS_CHOP, 45
    learnset MOVE_ASSURANCE, 48
    learnset MOVE_PUNISHMENT, 52
    learnset MOVE_THRASH, 54
    learnset MOVE_RAGE_FIST, 56
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_SCREECH, 60
    learnset MOVE_STOMPING_TANTRUM, 65
    learnset MOVE_OUTRAGE, 68
    terminatelearnset

levelup SPECIES_CLODSIRE
    learnset MOVE_TACKLE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_MUD_SHOT, 5
	learnset MOVE_WATER_GUN, 10
    learnset MOVE_POISON_TAIL, 14
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_POISON_JAB, 28
    learnset MOVE_ACID_SPRAY, 32
    learnset MOVE_MEGAHORN, 36
    learnset MOVE_EARTHQUAKE, 40
	learnset MOVE_ZEN_HEADBUTT, 45
	learnset MOVE_SLUDGE_WAVE, 48
	learnset MOVE_STONE_EDGE, 52
    terminatelearnset

levelup SPECIES_FARIGIRAF
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_TACKLE, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_ODOR_SLEUTH, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_STOMP, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_TWIN_BEAM, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_PSYCHIC, 52
    terminatelearnset

levelup SPECIES_DUDUNSPARCE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_GLARE, 19
    learnset MOVE_ANCIENT_POWER, 23
    learnset MOVE_DRILL_RUN, 26
    learnset MOVE_YAWN, 29
    learnset MOVE_HYPER_DRILL, 34
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_DRAGON_RUSH, 44
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_AQUA_TAIL, 52
	learnset MOVE_BOOMBURST, 58
    terminatelearnset

levelup SPECIES_KINGAMBIT
    learnset MOVE_KOWTOW_CLEAVE, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_LEER, 8
    learnset MOVE_METAL_BURST, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_SCRATCH, 16
    learnset MOVE_TORMENT, 20
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_NIGHT_SLASH, 38
    learnset MOVE_EMBARGO, 42
    learnset MOVE_RETALIATE, 48
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_GUILLOTINE, 56
    terminatelearnset

levelup SPECIES_GREAT_TUSK
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_HORN_ATTACK, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_RAPID_SPIN, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_EARTHQUAKE, 34
    learnset MOVE_GIGA_IMPACT, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_ENDEAVOR, 42
    learnset MOVE_MEGAHORN, 45
    learnset MOVE_HEAD_SMASH, 48
    learnset MOVE_HEADLONG_RUSH, 52
    terminatelearnset

levelup SPECIES_SCREAM_TAIL
    learnset MOVE_DISABLE, 1
    learnset MOVE_POUND, 5
    learnset MOVE_SING, 8
    learnset MOVE_NOBLE_ROAR, 12
    learnset MOVE_BITE, 16
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_REST, 26
    learnset MOVE_PLAY_ROUGH, 28
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_PSYCHIC_FANGS, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_WISH, 38
    learnset MOVE_GYRO_BALL, 42
    learnset MOVE_PERISH_SONG, 45
    learnset MOVE_BOOMBURST, 48
    terminatelearnset

levelup SPECIES_BRUTE_BONNET
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_SYNTHESIS, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_PAYBACK, 26
    learnset MOVE_THRASH, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_SPORE, 36
    learnset MOVE_INGRAIN, 38
    learnset MOVE_RAGE_POWDER, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_FLUTTER_MANE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_MEAN_LOOK, 12
    learnset MOVE_MEMENTO, 16
    learnset MOVE_WISH, 20
    learnset MOVE_PAIN_SPLIT, 26
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_MYSTICAL_FIRE, 34
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_PERISH_SONG, 48
    terminatelearnset

levelup SPECIES_SLITHER_WING
    learnset MOVE_BUG_BITE, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_GUST, 16
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_FLAME_CHARGE, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_LOW_SWEEP, 28
    learnset MOVE_MORNING_SUN, 30
    learnset MOVE_LUNGE, 34
    learnset MOVE_SUPERPOWER, 36
    learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_FIRST_IMPRESSION, 45
    learnset MOVE_WHIRLWIND, 48
    learnset MOVE_LEECH_LIFE, 52
    learnset MOVE_THRASH, 54
    terminatelearnset

levelup SPECIES_SANDY_SHOCKS
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_THUNDER_WAVE, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_CHARGE_BEAM, 26
    learnset MOVE_TRI_ATTACK, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_METAL_SOUND, 36
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_MIRROR_COAT, 45
    learnset MOVE_GRAVITY, 48
    learnset MOVE_ZAP_CANNON, 52
    learnset MOVE_MAGNETIC_FLUX, 54
    terminatelearnset

levelup SPECIES_IRON_TREADS
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_HORN_ATTACK, 8
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_IRON_HEAD, 20
    learnset MOVE_STOMPING_TANTRUM, 26
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_EARTHQUAKE, 30
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_WILD_CHARGE, 36
    learnset MOVE_ENDEAVOR, 38
    learnset MOVE_MEGAHORN, 42
    learnset MOVE_GIGA_IMPACT, 45
    learnset MOVE_STEEL_ROLLER, 48
    terminatelearnset

levelup SPECIES_IRON_BUNDLE
    learnset MOVE_PRESENT, 5
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_TAKE_DOWN, 12
    learnset MOVE_DRILL_PECK, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_FREEZE_DRY, 26
    learnset MOVE_FLIP_TURN, 28
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_HYDRO_PUMP, 38
    learnset MOVE_BLIZZARD, 45
    terminatelearnset

levelup SPECIES_IRON_HANDS
    learnset MOVE_ARM_THRUST, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_WHIRLWIND, 20
    learnset MOVE_THUNDER_PUNCH, 26
    learnset MOVE_SLAM, 28
    learnset MOVE_FORCE_PALM, 30
    learnset MOVE_SEISMIC_TOSS, 34
    learnset MOVE_CHARGE, 36
    learnset MOVE_WILD_CHARGE, 38
    learnset MOVE_CLOSE_COMBAT, 42
    learnset MOVE_DETECT, 45
    learnset MOVE_HEAVY_SLAM, 48
    learnset MOVE_FOCUS_PUNCH, 54
    terminatelearnset

levelup SPECIES_IRON_JUGULIS
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_TRI_ATTACK, 16
    learnset MOVE_ROAR, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_SNARL, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_KNOCK_OFF, 38
    learnset MOVE_DARK_PULSE, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_DRAGON_PULSE, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_IRON_MOTH
    learnset MOVE_ACID_SPRAY, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_GUST, 16
    learnset MOVE_WHIRLWIND, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_LUNGE, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLUDGE_WAVE, 36
    learnset MOVE_FIERY_DANCE, 38
    learnset MOVE_METAL_SOUND, 42
    learnset MOVE_MORNING_SUN, 45
    learnset MOVE_HURRICANE, 48
    learnset MOVE_BUG_BUZZ, 52
    learnset MOVE_OVERHEAT, 54
    terminatelearnset

levelup SPECIES_IRON_THORNS
    learnset MOVE_FIRE_FANG, 5
    learnset MOVE_ICE_FANG, 8
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_THUNDER_FANG, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_ROCK_TOMB, 26
    learnset MOVE_BITE, 28
    learnset MOVE_CHARGE, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_WILD_CHARGE, 38
    learnset MOVE_PIN_MISSILE, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_GIGA_IMPACT, 54
    terminatelearnset

levelup SPECIES_FRIGIBAX
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_ICE_BEAM, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_ICICLE_CRASH, 38
    terminatelearnset

levelup SPECIES_ARCTIBAX
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_ICE_BEAM, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_ICICLE_CRASH, 38
    terminatelearnset

levelup SPECIES_BAXCALIBUR
    learnset MOVE_GLAIVE_RUSH, 1
    learnset MOVE_BREAKING_SWIPE, 5
    learnset MOVE_DRAGON_TAIL, 8
    learnset MOVE_ICE_SHARD, 16
    learnset MOVE_LEER, 12
    learnset MOVE_TACKLE, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_BITE, 34
    learnset MOVE_ICE_FANG, 36
    learnset MOVE_DRAGON_CLAW, 38
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_ICICLE_CRASH, 52
    terminatelearnset

levelup SPECIES_GIMMIGHOUL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 5
    terminatelearnset

levelup SPECIES_GHOLDENGO
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_SHADOW_BALL, 20
    learnset MOVE_RECOVER, 26
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_MAKE_IT_RAIN, 30
    learnset MOVE_MEMENTO, 36
    terminatelearnset

levelup SPECIES_WO_CHIEN
    learnset MOVE_ABSORB, 1
    learnset MOVE_MEAN_LOOK, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_TICKLE, 16
    learnset MOVE_PAYBACK, 12
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_INGRAIN, 34
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_RUINATION, 42
    learnset MOVE_FOUL_PLAY, 45
    learnset MOVE_POWER_WHIP, 48
    learnset MOVE_KNOCK_OFF, 54
    learnset MOVE_LEAF_STORM, 56
    terminatelearnset

levelup SPECIES_CHIEN_PAO
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_PAYBACK, 12
    learnset MOVE_HAZE, 16
    learnset MOVE_MIST, 20
    learnset MOVE_ICE_SHARD, 26
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_ICICLE_CRASH, 38
    learnset MOVE_RUINATION, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_SACRED_SWORD, 48
    learnset MOVE_RECOVER, 52
    learnset MOVE_THROAT_CHOP, 54
    learnset MOVE_SHEER_COLD, 56
    terminatelearnset

levelup SPECIES_TING_LU
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SAND_TOMB, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_PAYBACK, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_WHIRLWIND, 26
    learnset MOVE_TAUNT, 28
    learnset MOVE_THRASH, 30
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_RUINATION, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_MEMENTO, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_FISSURE, 54
    terminatelearnset

levelup SPECIES_CHI_YU
    learnset MOVE_EMBER, 1
    learnset MOVE_MEAN_LOOK, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_PAYBACK, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_FLAME_CHARGE, 20
    learnset MOVE_INCINERATE, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_LAVA_PLUME, 36
    learnset MOVE_RUINATION, 38
    learnset MOVE_BOUNCE, 42
    learnset MOVE_SWAGGER, 45
    learnset MOVE_INFERNO, 48
    learnset MOVE_MEMENTO, 52
    learnset MOVE_OVERHEAT, 54
    terminatelearnset

levelup SPECIES_ROARING_MOON
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_BREATH, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_LEER, 16
    learnset MOVE_INCINERATE, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_DRAGON_CLAW, 26
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_DRAGON_RUSH, 38
    learnset MOVE_FLY, 42
    learnset MOVE_THROAT_CHOP, 45
    learnset MOVE_ROOST, 48
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset

levelup SPECIES_IRON_VALIANT
    learnset MOVE_DISABLE, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_FUTURE_SIGHT, 20
    learnset MOVE_DAZZLING_GLEAM, 26
    learnset MOVE_PSYCHO_CUT, 28
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_LEAF_BLADE, 34
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_DESTINY_BOND, 45
    learnset MOVE_QUICK_GUARD, 48
    learnset MOVE_WIDE_GUARD, 52
    learnset MOVE_SPIRIT_BREAK, 54
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
    learnset MOVE_GIGA_IMPACT, 98
    terminatelearnset

levelup SPECIES_MIRAIDON
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 12
    learnset MOVE_PARABOLIC_CHARGE, 16
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ELECTRO_DRIFT, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_OUTRAGE, 38
    learnset MOVE_THUNDER, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_HYPER_BEAM, 48
    terminatelearnset

levelup SPECIES_WALKING_WAKE
    learnset MOVE_AQUA_JET, 8
    learnset MOVE_LEER, 16
    learnset MOVE_ROAR, 12
    learnset MOVE_TWISTER, 16
    learnset MOVE_BITE, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_NOBLE_ROAR, 28
    learnset MOVE_DRAGON_BREATH, 30
    learnset MOVE_BREAKING_SWIPE, 34
    learnset MOVE_DRAGON_RUSH, 36
    learnset MOVE_HYDRO_STEAM, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_IRON_LEAVES
    learnset MOVE_QUASH, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_LEER, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_RETALIATE, 26
    learnset MOVE_QUICK_GUARD, 28
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_LEAF_BLADE, 38
    learnset MOVE_PSYBLADE, 42
    learnset MOVE_CLOSE_COMBAT, 45
    learnset MOVE_IMPRISON, 48
    learnset MOVE_MEGAHORN, 52
    learnset MOVE_ALLY_SWITCH, 54
    learnset MOVE_SOLAR_BLADE, 56
    terminatelearnset

levelup SPECIES_DIPPLIN
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_INFESTATION, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_RECYCLE, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_BULLET_SEED, 34
    learnset MOVE_SYRUP_BOMB, 36
    learnset MOVE_DRAGON_PULSE, 38
    learnset MOVE_RECOVER, 42
    learnset MOVE_ENERGY_BALL, 45
    terminatelearnset

levelup SPECIES_POLTCHAGEIST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_ABSORB, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_FOUL_PLAY, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_HEX, 26
    learnset MOVE_RAGE_POWDER, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_MEMENTO, 36
    learnset MOVE_LEAF_STORM, 38
    terminatelearnset

levelup SPECIES_SINISTCHA
    learnset MOVE_MATCHA_GOTCHA, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_ABSORB, 12
    learnset MOVE_LIFE_DEW, 16
    learnset MOVE_FOUL_PLAY, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_HEX, 28
    learnset MOVE_RAGE_POWDER, 30
    learnset MOVE_STRENGTH_SAP, 34
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_MEMENTO, 38
    learnset MOVE_LEAF_STORM, 42
    terminatelearnset

levelup SPECIES_OKIDOGI
    learnset MOVE_BITE, 1
    learnset MOVE_LOW_KICK, 8
    learnset MOVE_POISON_FANG, 12
    learnset MOVE_FORCE_PALM, 16
    learnset MOVE_COUNTER, 20
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_BRUTAL_SWING, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SUPERPOWER, 34
    learnset MOVE_GIGA_IMPACT, 36
    terminatelearnset

levelup SPECIES_MUNKIDORI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FAKE_OUT, 5
    learnset MOVE_FLATTER, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_CLEAR_SMOG, 20
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_PSYCHIC, 28
    learnset MOVE_SLUDGE_WAVE, 30
    learnset MOVE_FUTURE_SIGHT, 36
    learnset MOVE_PARTING_SHOT, 38
    terminatelearnset

levelup SPECIES_FEZANDIPITI
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_PECK, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_ATTRACT, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_CROSS_POISON, 26
    learnset MOVE_TAIL_SLAP, 28
    learnset MOVE_BEAT_UP, 30
    learnset MOVE_FLATTER, 34
    learnset MOVE_SWAGGER, 36
    learnset MOVE_ROOST, 38
    learnset MOVE_MOONBLAST, 42
    terminatelearnset

levelup SPECIES_OGERPON
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_ARCHALUDON
    learnset MOVE_ELECTRO_SHOT, 1
    learnset MOVE_LEER, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_BREAKING_SWIPE, 20
    learnset MOVE_DRAGON_TAIL, 26
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_FLASH_CANNON, 36
    learnset MOVE_METAL_BURST, 38
    learnset MOVE_HYPER_BEAM, 42
    terminatelearnset

levelup SPECIES_HYDRAPPLE
    learnset MOVE_FICKLE_BEAM, 1
    learnset MOVE_DOUBLE_HIT, 5
    learnset MOVE_INFESTATION, 8
    learnset MOVE_YAWN, 16
    learnset MOVE_ASTONISH, 12
    learnset MOVE_RECYCLE, 16
    learnset MOVE_SWEET_SCENT, 20
    learnset MOVE_DRAGON_TAIL, 28
    learnset MOVE_DRAGON_BREATH, 34
    learnset MOVE_PROTECT, 36
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_SYRUP_BOMB, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_ENERGY_BALL, 52
    terminatelearnset

levelup SPECIES_GOUGING_FIRE
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_NOBLE_ROAR, 8
    learnset MOVE_INCINERATE, 16
    learnset MOVE_LEER, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_BITE, 30
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_MORNING_SUN, 38
    learnset MOVE_BURNING_BULWARK, 42
    learnset MOVE_DRAGON_RUSH, 45
    learnset MOVE_FIRE_BLAST, 48
    learnset MOVE_LAVA_PLUME, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_FLARE_BLITZ, 56
    learnset MOVE_RAGING_FURY, 58
    terminatelearnset

levelup SPECIES_RAGING_BOLT
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_SHOCK_WAVE, 5
    learnset MOVE_STOMP, 8
    learnset MOVE_TWISTER, 12
    learnset MOVE_CHARGE, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_DRAGON_TAIL, 30
    learnset MOVE_THUNDERCLAP, 36
    learnset MOVE_DRAGON_HAMMER, 38
    learnset MOVE_RISING_VOLTAGE, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_ZAP_CANNON, 48
    learnset MOVE_BODY_PRESS, 52
    learnset MOVE_THUNDER, 54
    terminatelearnset

levelup SPECIES_IRON_BOULDER
    learnset MOVE_HORN_ATTACK, 5
    learnset MOVE_LEER, 8
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_SLASH, 16
    learnset MOVE_PSYCHO_CUT, 26
    learnset MOVE_COUNTER, 28
    learnset MOVE_ROCK_TOMB, 30
    learnset MOVE_SACRED_SWORD, 34
    learnset MOVE_MIGHTY_CLEAVE, 36
    learnset MOVE_MEGAHORN, 42
    learnset MOVE_QUICK_GUARD, 45
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_GIGA_IMPACT, 52
    terminatelearnset

levelup SPECIES_IRON_CROWN
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LEER, 8
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SMART_STRIKE, 12
    learnset MOVE_SLASH, 16
    learnset MOVE_PSYSHOCK, 26
    learnset MOVE_PSYCHO_CUT, 28
    learnset MOVE_FLASH_CANNON, 30
    learnset MOVE_SACRED_SWORD, 34
    learnset MOVE_TACHYON_CUTTER, 36
    learnset MOVE_FUTURE_SIGHT, 38
    learnset MOVE_VOLT_SWITCH, 42
    learnset MOVE_QUICK_GUARD, 45
    learnset MOVE_METAL_BURST, 48
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_TERAPAGOS
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 5
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_EARTH_POWER, 20
    learnset MOVE_HEAVY_SLAM, 26
    learnset MOVE_TERA_STARSTORM, 28
    learnset MOVE_DOUBLE_EDGE, 30
    learnset MOVE_GYRO_BALL, 36
    terminatelearnset

levelup SPECIES_PECHARUNT
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MEAN_LOOK, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_MEMENTO, 12
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_SMOG, 20
    learnset MOVE_DESTINY_BOND, 28
    learnset MOVE_FAKE_TEARS, 30
    learnset MOVE_PARTING_SHOT, 34
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_MALIGNANT_CHAIN, 38
    learnset MOVE_TOXIC, 42
    learnset MOVE_RECOVER, 48
    terminatelearnset

levelup SPECIES_MEGA_VENUSAUR
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_PETAL_DANCE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_POISON_POWDER, 26
    learnset MOVE_SLEEP_POWDER, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_SWEET_SCENT, 38
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_WORRY_SEED, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_SOLAR_BEAM, 52
    terminatelearnset

levelup SPECIES_MEGA_CHARIZARD_X
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_DRAGON_CLAW, 8
    learnset MOVE_HEAT_WAVE, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_EMBER, 20
    learnset MOVE_SMOKESCREEN, 26
    learnset MOVE_FLARE_BLITZ, 28
    learnset MOVE_SHADOW_CLAW, 30
    learnset MOVE_DRAGON_BREATH, 34
    learnset MOVE_DRAGON_RAGE, 36
    learnset MOVE_FIRE_FANG, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_SLASH, 45
    learnset MOVE_FLAME_BURST, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_FIRE_SPIN, 54
    learnset MOVE_INFERNO, 56
    terminatelearnset

levelup SPECIES_MEGA_CHARIZARD_Y
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_DRAGON_CLAW, 8
    learnset MOVE_HEAT_WAVE, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_EMBER, 20
    learnset MOVE_SMOKESCREEN, 26
    learnset MOVE_FLARE_BLITZ, 28
    learnset MOVE_SHADOW_CLAW, 30
    learnset MOVE_DRAGON_BREATH, 34
    learnset MOVE_DRAGON_RAGE, 36
    learnset MOVE_FIRE_FANG, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_SLASH, 45
    learnset MOVE_FLAME_BURST, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_FIRE_SPIN, 54
    learnset MOVE_INFERNO, 56
    terminatelearnset

levelup SPECIES_MEGA_BLASTOISE
    learnset MOVE_FLASH_CANNON, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_BUBBLE, 16
    learnset MOVE_RAPID_SPIN, 20
    learnset MOVE_BITE, 26
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SHELL_SMASH, 36
    learnset MOVE_SKULL_BASH, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_MEGA_BEEDRILL
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_POISON_JAB, 30
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_FELL_STINGER, 38
    terminatelearnset

levelup SPECIES_MEGA_PIDGEOT
    learnset MOVE_HURRICANE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_GUST, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_TWISTER, 20
    learnset MOVE_FEATHER_DANCE, 26
    learnset MOVE_WING_ATTACK, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_MIRROR_MOVE, 38
    learnset MOVE_AIR_SLASH, 42
    terminatelearnset

levelup SPECIES_MEGA_ALAKAZAM
    learnset MOVE_KINESIS, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_PSYCHO_CUT, 20
    learnset MOVE_MIRACLE_EYE, 26
    learnset MOVE_ALLY_SWITCH, 28
    learnset MOVE_RECOVER, 30
    learnset MOVE_PSYSHOCK, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_ROLE_PLAY, 42
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset

levelup SPECIES_MEGA_SLOWBRO
    learnset MOVE_TACKLE, 5
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_HEAL_PULSE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_CONFUSION, 26
    learnset MOVE_DISABLE, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_SURF, 38
    learnset MOVE_SLACK_OFF, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_PSYCH_UP, 52
    terminatelearnset

levelup SPECIES_MEGA_GENGAR
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_PERISH_SONG, 5
    learnset MOVE_REFLECT_TYPE, 8
    learnset MOVE_LICK, 16
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_MEAN_LOOK, 20
    learnset MOVE_SPITE, 26
    learnset MOVE_PAYBACK, 30
    learnset MOVE_NIGHT_SHADE, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_HEX, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_DREAM_EATER, 48
    learnset MOVE_DESTINY_BOND, 52
    learnset MOVE_NIGHTMARE, 54
    terminatelearnset

levelup SPECIES_MEGA_KANGASKHAN
    learnset MOVE_POUND, 1
    learnset MOVE_COMET_PUNCH, 8
    learnset MOVE_LEER, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_BITE, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_RAGE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_MEGA_PUNCH, 38
    learnset MOVE_CHIP_AWAY, 42
    learnset MOVE_DIZZY_PUNCH, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_SUCKER_PUNCH, 52
    learnset MOVE_ENDURE, 54
    learnset MOVE_REVERSAL, 56
    learnset MOVE_OUTRAGE, 58
    learnset MOVE_LAST_RESORT, 60
    terminatelearnset

levelup SPECIES_MEGA_PINSIR
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_BIND, 16
    learnset MOVE_SEISMIC_TOSS, 12
    learnset MOVE_REVENGE, 16
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_VITAL_THROW, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_STORM_THROW, 34
    learnset MOVE_X_SCISSOR, 36
    learnset MOVE_STRENGTH, 38
    learnset MOVE_SUBMISSION, 42
    learnset MOVE_THRASH, 48
    learnset MOVE_GUILLOTINE, 52
    learnset MOVE_SUPERPOWER, 54
    terminatelearnset

levelup SPECIES_MEGA_GYARADOS
    learnset MOVE_BITE, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_SPLASH, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_LEER, 12
    learnset MOVE_TWISTER, 16
    learnset MOVE_THRASH, 20
    learnset MOVE_WHIRLPOOL, 26
    learnset MOVE_BRINE, 28
    learnset MOVE_ICE_FANG, 30
    learnset MOVE_WATERFALL, 34
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_DRAGON_RAGE, 45
    learnset MOVE_HYDRO_PUMP, 54
    learnset MOVE_HURRICANE, 56
    learnset MOVE_HYPER_BEAM, 58
    terminatelearnset

levelup SPECIES_MEGA_AERODACTYL
    learnset MOVE_BITE, 1
    learnset MOVE_ANCIENT_POWER, 5
    learnset MOVE_IRON_HEAD, 8
    learnset MOVE_ICE_FANG, 16
    learnset MOVE_FIRE_FANG, 12
    learnset MOVE_THUNDER_FANG, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_SUPERSONIC, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_SKY_DROP, 48
    learnset MOVE_HYPER_BEAM, 52
    learnset MOVE_GIGA_IMPACT, 54
    terminatelearnset

levelup SPECIES_MEGA_MEWTWO_X
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_LASER_FOCUS, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_CONFUSION, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_PSYCH_UP, 28
    learnset MOVE_PSYCHO_CUT, 30
    learnset MOVE_MIRACLE_EYE, 34
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_FUTURE_SIGHT, 48
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_RECOVER, 56
    learnset MOVE_MIST, 58
    learnset MOVE_PSYSTRIKE, 60
    learnset MOVE_ME_FIRST, 65
    terminatelearnset

levelup SPECIES_MEGA_MEWTWO_Y
    learnset MOVE_LIFE_DEW, 1
    learnset MOVE_LASER_FOCUS, 5
    learnset MOVE_DISABLE, 8
    learnset MOVE_CONFUSION, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_PSYCH_UP, 28
    learnset MOVE_PSYCHO_CUT, 30
    learnset MOVE_MIRACLE_EYE, 34
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_FUTURE_SIGHT, 48
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_RECOVER, 56
    learnset MOVE_MIST, 58
    learnset MOVE_PSYSTRIKE, 60
    learnset MOVE_ME_FIRST, 65
    terminatelearnset

levelup SPECIES_MEGA_AMPHAROS
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ZAP_CANNON, 5
    learnset MOVE_MAGNETIC_FLUX, 8
    learnset MOVE_ION_DELUGE, 16
    learnset MOVE_DRAGON_PULSE, 12
    learnset MOVE_FIRE_PUNCH, 16
    learnset MOVE_TACKLE, 20
    learnset MOVE_GROWL, 26
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_THUNDER_SHOCK, 30
    learnset MOVE_COTTON_SPORE, 34
    learnset MOVE_CHARGE, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_ELECTRO_BALL, 42
    learnset MOVE_CONFUSE_RAY, 45
    learnset MOVE_POWER_GEM, 48
    learnset MOVE_DISCHARGE, 52
    learnset MOVE_SIGNAL_BEAM, 56
    learnset MOVE_LIGHT_SCREEN, 58
    learnset MOVE_THUNDER, 60
    terminatelearnset

levelup SPECIES_MEGA_STEELIX
    learnset MOVE_CRUNCH, 1
    learnset MOVE_THUNDER_FANG, 5
    learnset MOVE_ICE_FANG, 8
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_TACKLE, 16
    learnset MOVE_HARDEN, 20
    learnset MOVE_BIND, 26
    learnset MOVE_ROCK_THROW, 28
    learnset MOVE_MUD_SPORT, 30
    learnset MOVE_ROCK_TOMB, 36
    learnset MOVE_SMACK_DOWN, 38
    learnset MOVE_AUTOTOMIZE, 42
    learnset MOVE_RAGE, 45
    learnset MOVE_DRAGON_BREATH, 48
    learnset MOVE_GYRO_BALL, 52
    learnset MOVE_ROCK_SLIDE, 56
    learnset MOVE_SCREECH, 58
    learnset MOVE_SAND_TOMB, 60
    learnset MOVE_SLAM, 65
    learnset MOVE_DIG, 68
    learnset MOVE_IRON_TAIL, 70
    learnset MOVE_STONE_EDGE, 76
    learnset MOVE_DOUBLE_EDGE, 80
    learnset MOVE_MAGNET_RISE, 80
    terminatelearnset

levelup SPECIES_MEGA_SCIZOR
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_WING_ATTACK, 5
    learnset MOVE_AIR_SLASH, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_LEER, 16
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_FALSE_SWIPE, 26
    learnset MOVE_FEINT, 28
    learnset MOVE_PURSUIT, 30
    learnset MOVE_METAL_CLAW, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FOCUS_ENERGY, 38
    learnset MOVE_SLASH, 42
    learnset MOVE_DOUBLE_HIT, 45
    learnset MOVE_RAZOR_WIND, 48
    learnset MOVE_X_SCISSOR, 54
    learnset MOVE_IRON_HEAD, 56
    learnset MOVE_LASER_FOCUS, 58
    learnset MOVE_NIGHT_SLASH, 60
    terminatelearnset

levelup SPECIES_MEGA_HERACROSS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_ARM_THRUST, 8
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_NIGHT_SLASH, 12
    learnset MOVE_HORN_ATTACK, 16
    learnset MOVE_ENDURE, 20
    learnset MOVE_FEINT, 26
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_FURY_ATTACK, 30
    learnset MOVE_CHIP_AWAY, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_PIN_MISSILE, 42
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_THROAT_CHOP, 48
    learnset MOVE_THRASH, 52
    learnset MOVE_MEGAHORN, 54
    learnset MOVE_REVERSAL, 56
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset

levelup SPECIES_MEGA_HOUNDOOM
    learnset MOVE_INFERNO, 1
    learnset MOVE_THUNDER_FANG, 8
    learnset MOVE_LEER, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_SMOG, 20
    learnset MOVE_ROAR, 26
    learnset MOVE_BITE, 28
    learnset MOVE_ODOR_SLEUTH, 30
    learnset MOVE_BEAT_UP, 34
    learnset MOVE_FIRE_FANG, 36
    learnset MOVE_FEINT_ATTACK, 38
    learnset MOVE_EMBARGO, 42
    learnset MOVE_FOUL_PLAY, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_CRUNCH, 52
    terminatelearnset

levelup SPECIES_MEGA_TYRANITAR
    learnset MOVE_THUNDER_FANG, 5
    learnset MOVE_ICE_FANG, 8
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_LEER, 16
    learnset MOVE_ROCK_THROW, 20
    learnset MOVE_PAYBACK, 26
    learnset MOVE_BITE, 28
    learnset MOVE_SCREECH, 34
    learnset MOVE_CHIP_AWAY, 36
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_STOMPING_TANTRUM, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_THRASH, 52
    learnset MOVE_CRUNCH, 54
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_HYPER_BEAM, 60
    learnset MOVE_GIGA_IMPACT, 65
    terminatelearnset

levelup SPECIES_MEGA_SCEPTILE
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_FALSE_SWIPE, 8
    learnset MOVE_X_SCISSOR, 16
    learnset MOVE_ENERGY_BALL, 12
    learnset MOVE_POUND, 16
    learnset MOVE_LEER, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_LEAF_STORM, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_ABSORB, 36
    learnset MOVE_MEGA_DRAIN, 38
    learnset MOVE_PURSUIT, 42
    learnset MOVE_ASSURANCE, 45
    learnset MOVE_DETECT, 48
    learnset MOVE_GIGA_DRAIN, 52
    learnset MOVE_SLAM, 56
    learnset MOVE_LEAF_BLADE, 58
    learnset MOVE_QUICK_GUARD, 60
    learnset MOVE_DOUBLE_TEAM, 65
    learnset MOVE_ENDEAVOR, 68
    learnset MOVE_SCREECH, 70
    terminatelearnset

levelup SPECIES_MEGA_BLAZIKEN
    learnset MOVE_BLAZE_KICK, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_FIRE_PUNCH, 8
    learnset MOVE_BRAVE_BIRD, 16
    learnset MOVE_FLAMETHROWER, 12
    learnset MOVE_FEATHER_DANCE, 16
    learnset MOVE_SCRATCH, 20
    learnset MOVE_GROWL, 26
    learnset MOVE_EMBER, 28
    learnset MOVE_QUICK_ATTACK, 30
    learnset MOVE_FLARE_BLITZ, 34
    learnset MOVE_HIGH_JUMP_KICK, 36
    learnset MOVE_SAND_ATTACK, 38
    learnset MOVE_DETECT, 42
    learnset MOVE_FLAME_CHARGE, 45
    learnset MOVE_PECK, 48
    learnset MOVE_AERIAL_ACE, 52
    learnset MOVE_BOUNCE, 54
    learnset MOVE_SLASH, 56
    learnset MOVE_FOCUS_ENERGY, 58
    learnset MOVE_REVERSAL, 65
    learnset MOVE_SKY_UPPERCUT, 68
    terminatelearnset

levelup SPECIES_MEGA_SWAMPERT
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_HAMMER_ARM, 5
    learnset MOVE_EARTHQUAKE, 8
    learnset MOVE_SURF, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_WATER_GUN, 20
    learnset MOVE_ROCK_SMASH, 26
    learnset MOVE_MUD_SLAP, 28
    learnset MOVE_ROCK_THROW, 30
    learnset MOVE_FORESIGHT, 34
    learnset MOVE_SUPERSONIC, 36
    learnset MOVE_BIDE, 38
    learnset MOVE_WATER_PULSE, 42
    learnset MOVE_PROTECT, 45
    learnset MOVE_MUD_BOMB, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_MUDDY_WATER, 58
    learnset MOVE_SCREECH, 60
    learnset MOVE_ENDEAVOR, 65
    learnset MOVE_HYDRO_PUMP, 68
    terminatelearnset

levelup SPECIES_MEGA_GARDEVOIR
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_MOONBLAST, 5
    learnset MOVE_HEALING_WISH, 16
    learnset MOVE_CHARM, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_DISARMING_VOICE, 20
    learnset MOVE_DOUBLE_TEAM, 26
    learnset MOVE_CONFUSION, 28
    learnset MOVE_STORED_POWER, 30
    learnset MOVE_DRAINING_KISS, 36
    learnset MOVE_MAGICAL_LEAF, 38
    learnset MOVE_PSYBEAM, 42
    learnset MOVE_WISH, 45
    learnset MOVE_LIFE_DEW, 48
    learnset MOVE_HYPNOSIS, 52
    learnset MOVE_HEAL_PULSE, 56
    learnset MOVE_IMPRISON, 58
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_CAPTIVATE, 65
    learnset MOVE_FUTURE_SIGHT, 68
    learnset MOVE_DREAM_EATER, 70
    terminatelearnset

levelup SPECIES_MEGA_SABLEYE
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_FORESIGHT, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_FURY_SWIPES, 34
    learnset MOVE_FEINT_ATTACK, 36
    learnset MOVE_PUNISHMENT, 38
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_SHADOW_CLAW, 45
    learnset MOVE_QUASH, 48
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_MEAN_LOOK, 56
    learnset MOVE_SHADOW_BALL, 58
    learnset MOVE_FOUL_PLAY, 60
    terminatelearnset

levelup SPECIES_MEGA_MAWILE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_ROUGH, 8
    learnset MOVE_IRON_HEAD, 16
    learnset MOVE_TAUNT, 12
    learnset MOVE_FAIRY_WIND, 16
    learnset MOVE_BITE, 20
    learnset MOVE_VICE_GRIP, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_FAKE_TEARS, 36
    learnset MOVE_SWALLOW, 42
    learnset MOVE_SPIT_UP, 45
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_CRUNCH, 54
    terminatelearnset

levelup SPECIES_MEGA_AGGRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_ROAR, 20
    learnset MOVE_PROTECT, 26
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_IRON_HEAD, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_IRON_TAIL, 38
    learnset MOVE_AUTOTOMIZE, 42
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_HEAVY_SLAM, 52
    learnset MOVE_METAL_BURST, 54
    terminatelearnset

levelup SPECIES_MEGA_MEDICHAM
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_FIRE_PUNCH, 5
    learnset MOVE_THUNDER_PUNCH, 8
    learnset MOVE_ICE_PUNCH, 16
    learnset MOVE_BIDE, 12
    learnset MOVE_MEDITATE, 16
    learnset MOVE_CONFUSION, 20
    learnset MOVE_DETECT, 26
    learnset MOVE_ENDURE, 28
    learnset MOVE_FEINT, 30
    learnset MOVE_FORCE_PALM, 34
    learnset MOVE_HIDDEN_POWER, 36
    learnset MOVE_MIND_READER, 42
    learnset MOVE_HIGH_JUMP_KICK, 45
    learnset MOVE_PSYCH_UP, 48
    learnset MOVE_ACUPRESSURE, 52
    learnset MOVE_REVERSAL, 56
    learnset MOVE_RECOVER, 58
    learnset MOVE_COUNTER, 60
    terminatelearnset

levelup SPECIES_MEGA_MANECTRIC
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_LEER, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_SPARK, 26
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_ODOR_SLEUTH, 30
    learnset MOVE_BITE, 34
    learnset MOVE_THUNDER_FANG, 36
    learnset MOVE_ROAR, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_CHARGE, 45
    learnset MOVE_WILD_CHARGE, 48
    learnset MOVE_THUNDER, 52
    terminatelearnset

levelup SPECIES_MEGA_SHARPEDO
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_AQUA_JET, 8
    learnset MOVE_LEER, 16
    learnset MOVE_POISON_FANG, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_FEINT, 20
    learnset MOVE_BITE, 26
    learnset MOVE_RAGE, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_ICE_FANG, 38
    learnset MOVE_SWAGGER, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_LIQUIDATION, 52
    learnset MOVE_SKULL_BASH, 54
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_TAUNT, 58
    terminatelearnset

levelup SPECIES_MEGA_CAMERUPT
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_FISSURE, 5
    learnset MOVE_ERUPTION, 8
    learnset MOVE_GROWL, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_EMBER, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_MAGNITUDE, 26
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_LAVA_PLUME, 34
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_YAWN, 45
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset

levelup SPECIES_MEGA_ALTARIA
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_DRAGON_BREATH, 5
    learnset MOVE_PLUCK, 8
    learnset MOVE_PECK, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_MIST, 20
    learnset MOVE_SKY_ATTACK, 26
    learnset MOVE_ASTONISH, 28
    learnset MOVE_SING, 30
    learnset MOVE_FURY_ATTACK, 34
    learnset MOVE_ROUND, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_NATURAL_GIFT, 42
    learnset MOVE_REFRESH, 45
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_PERISH_SONG, 58
    terminatelearnset

levelup SPECIES_MEGA_BANETTE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_KNOCK_OFF, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_HEX, 28
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_EMBARGO, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_GRUDGE, 45
    terminatelearnset

levelup SPECIES_MEGA_ABSOL
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PERISH_SONG, 8
    learnset MOVE_FUTURE_SIGHT, 16
    learnset MOVE_SCRATCH, 12
    learnset MOVE_FEINT, 16
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_TAUNT, 30
    learnset MOVE_BITE, 34
    learnset MOVE_DETECT, 36
    learnset MOVE_SLASH, 38
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_FOCUS_ENERGY, 45
    learnset MOVE_PSYCHO_CUT, 52
    learnset MOVE_ME_FIRST, 54
    learnset MOVE_SUCKER_PUNCH, 56
    learnset MOVE_RAZOR_WIND, 58
    terminatelearnset

levelup SPECIES_MEGA_GLALIE
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_SHEER_COLD, 5
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_LEER, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_ICE_SHARD, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_BITE, 30
    learnset MOVE_ICE_FANG, 34
    learnset MOVE_FROST_BREATH, 36
    learnset MOVE_HEADBUTT, 38
    learnset MOVE_CRUNCH, 45
    learnset MOVE_BLIZZARD, 48
    terminatelearnset

levelup SPECIES_MEGA_SALAMENCE
    learnset MOVE_FLY, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_DRAGON_TAIL, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_LEER, 12
    learnset MOVE_BITE, 16
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_THUNDER_FANG, 28
    learnset MOVE_RAGE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_FOCUS_ENERGY, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_MEGA_METAGROSS
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_BULLET_PUNCH, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_MAGNET_RISE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FLASH_CANNON, 26
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_PURSUIT, 30
    learnset MOVE_MIRACLE_EYE, 34
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_METEOR_MASH, 42
    learnset MOVE_HYPER_BEAM, 52
    terminatelearnset

levelup SPECIES_MEGA_LATIAS
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_CHARM, 5
    learnset MOVE_HEALING_WISH, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_WISH, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_WATER_SPORT, 26
    learnset MOVE_REFRESH, 28
    learnset MOVE_CONFUSION, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_DRAGON_BREATH, 38
    learnset MOVE_MIST_BALL, 42
    learnset MOVE_HEAL_PULSE, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_REFLECT_TYPE, 52
    learnset MOVE_DRAGON_PULSE, 54
    learnset MOVE_PSYCHO_SHIFT, 56
    learnset MOVE_PSYCHIC, 58
    terminatelearnset

levelup SPECIES_MEGA_LATIOS
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_MEMENTO, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_HEAL_BLOCK, 12
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_SAFEGUARD, 20
    learnset MOVE_PROTECT, 26
    learnset MOVE_REFRESH, 28
    learnset MOVE_CONFUSION, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_TAILWIND, 36
    learnset MOVE_DRAGON_BREATH, 38
    learnset MOVE_LUSTER_PURGE, 42
    learnset MOVE_ALLY_SWITCH, 45
    learnset MOVE_HEAL_PULSE, 48
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_DRAGON_PULSE, 56
    learnset MOVE_PSYCHO_SHIFT, 58
    learnset MOVE_SIMPLE_BEAM, 60
    learnset MOVE_PSYCHIC, 65
    terminatelearnset

levelup SPECIES_MEGA_RAYQUAZA
    learnset MOVE_DRAGON_ASCENT, 1
    learnset MOVE_TWISTER, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_AIR_SLASH, 16
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_CRUNCH, 16
    learnset MOVE_EXTREME_SPEED, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_REST, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_FLY, 36
    learnset MOVE_HURRICANE, 38
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_HYPER_BEAM, 45
    terminatelearnset

levelup SPECIES_MEGA_LOPUNNY
    learnset MOVE_RETURN, 1
    learnset MOVE_MIRROR_COAT, 5
    learnset MOVE_MAGIC_COAT, 8
    learnset MOVE_SPLASH, 16
    learnset MOVE_POUND, 12
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_HEALING_WISH, 26
    learnset MOVE_BOUNCE, 28
    learnset MOVE_FORESIGHT, 34
    learnset MOVE_ENDURE, 36
    learnset MOVE_QUICK_ATTACK, 38
    learnset MOVE_DOUBLE_KICK, 42
    learnset MOVE_JUMP_KICK, 45
    learnset MOVE_AFTER_YOU, 48
    learnset MOVE_HEADBUTT, 54
    learnset MOVE_CHARM, 56
    learnset MOVE_DIZZY_PUNCH, 60
    learnset MOVE_FLATTER, 65
    learnset MOVE_ENTRAINMENT, 68
    learnset MOVE_HIGH_JUMP_KICK, 70
    terminatelearnset

levelup SPECIES_MEGA_GARCHOMP
    learnset MOVE_CRUNCH, 1
    learnset MOVE_DUAL_CHOP, 5
    learnset MOVE_SAND_TOMB, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_DRAGON_RAGE, 26
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_BITE, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_DRAGON_CLAW, 38
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_DIG, 45
    learnset MOVE_DRAGON_RUSH, 48
    terminatelearnset

levelup SPECIES_MEGA_LUCARIO
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_SCREECH, 16
    learnset MOVE_FORCE_PALM, 20
    learnset MOVE_HELPING_HAND, 26
    learnset MOVE_COPYCAT, 28
    learnset MOVE_FINAL_GAMBIT, 30
    learnset MOVE_REVERSAL, 34
    learnset MOVE_QUICK_ATTACK, 36
    learnset MOVE_DETECT, 38
    learnset MOVE_FEINT, 42
    learnset MOVE_METAL_CLAW, 45
    learnset MOVE_LASER_FOCUS, 48
    learnset MOVE_FORESIGHT, 52
    learnset MOVE_COUNTER, 54
    learnset MOVE_POWER_UP_PUNCH, 56
    learnset MOVE_METAL_SOUND, 58
    learnset MOVE_QUICK_GUARD, 65
    learnset MOVE_BONE_RUSH, 68
    learnset MOVE_ME_FIRST, 74
    learnset MOVE_HEAL_PULSE, 76
    learnset MOVE_METEOR_MASH, 80
    learnset MOVE_DRAGON_PULSE, 80
    learnset MOVE_CLOSE_COMBAT, 80
    learnset MOVE_EXTREME_SPEED, 80
    terminatelearnset

levelup SPECIES_MEGA_ABOMASNOW
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_POWDER_SNOW, 8
    learnset MOVE_LEER, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_MIST, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_GRASS_WHISTLE, 28
    learnset MOVE_ICE_SHARD, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_INGRAIN, 36
    learnset MOVE_WOOD_HAMMER, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_SHEER_COLD, 45
    terminatelearnset

levelup SPECIES_MEGA_GALLADE
    learnset MOVE_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_IMPRISON, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_LIFE_DEW, 28
    learnset MOVE_CHARM, 30
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_DREAM_EATER, 38
    learnset MOVE_FUTURE_SIGHT, 42
    learnset MOVE_LEER, 45
    learnset MOVE_FURY_CUTTER, 48
    learnset MOVE_DOUBLE_TEAM, 52
    learnset MOVE_CONFUSION, 54
    learnset MOVE_STORED_POWER, 56
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_LEAF_BLADE, 60
    learnset MOVE_AERIAL_ACE, 68
    learnset MOVE_HELPING_HAND, 70
    learnset MOVE_FEINT, 74
    learnset MOVE_FALSE_SWIPE, 80
    learnset MOVE_HEAL_PULSE, 80
    learnset MOVE_QUICK_GUARD, 80
    learnset MOVE_PSYCHO_CUT, 80
    learnset MOVE_PROTECT, 80
    learnset MOVE_WIDE_GUARD, 80
    terminatelearnset

levelup SPECIES_MEGA_AUDINO
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_LAST_RESORT, 8
    learnset MOVE_HYPER_VOICE, 16
    learnset MOVE_GROWL, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_DISARMING_VOICE, 28
    learnset MOVE_REFRESH, 30
    learnset MOVE_DOUBLE_SLAP, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_ATTRACT, 38
    learnset MOVE_LIFE_DEW, 42
    learnset MOVE_SECRET_POWER, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_AFTER_YOU, 52
    learnset MOVE_SIMPLE_BEAM, 54
    learnset MOVE_HEAL_PULSE, 56
    learnset MOVE_ENTRAINMENT, 58
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset

levelup SPECIES_MEGA_DIANCIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_REFLECT, 16
    learnset MOVE_FLAIL, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_POWER_GEM, 48
    learnset MOVE_MOONBLAST, 52
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_SAFEGUARD, 56
    learnset MOVE_DIAMOND_STORM, 58
    terminatelearnset

levelup SPECIES_KYOGRE_PRIMAL
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_ANCIENT_POWER, 5
    learnset MOVE_BODY_SLAM, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_AQUA_TAIL, 12
    learnset MOVE_ICE_BEAM, 20
    learnset MOVE_MUDDY_WATER, 26
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_SHEER_COLD, 30
    learnset MOVE_ORIGIN_PULSE, 34
    learnset MOVE_HYDRO_PUMP, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_WATER_SPOUT, 42
    terminatelearnset

levelup SPECIES_GROUDON_PRIMAL
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_ANCIENT_POWER, 5
    learnset MOVE_LAVA_PLUME, 8
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_EARTH_POWER, 12
    learnset MOVE_EARTHQUAKE, 16
    learnset MOVE_REST, 26
    learnset MOVE_FISSURE, 28
    learnset MOVE_PRECIPICE_BLADES, 30
    learnset MOVE_HAMMER_ARM, 34
    learnset MOVE_SOLAR_BEAM, 36
    learnset MOVE_FIRE_BLAST, 38
    learnset MOVE_ERUPTION, 42
    terminatelearnset

levelup SPECIES_RATTATA_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 12
    learnset MOVE_PURSUIT, 16
    learnset MOVE_HYPER_FANG, 20
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_ENDEAVOR, 38
    terminatelearnset

levelup SPECIES_RATICATE_ALOLAN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_HYPER_FANG, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_SUPER_FANG, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_ENDEAVOR, 45
    terminatelearnset

levelup SPECIES_RAICHU_ALOLAN
    learnset MOVE_PSYCHIC, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_NUZZLE, 16
    learnset MOVE_CHARM, 16
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_DOUBLE_TEAM, 26
    learnset MOVE_ELECTRO_BALL, 28
    learnset MOVE_FEINT, 30
    learnset MOVE_SPARK, 34
    learnset MOVE_SLAM, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_THUNDER, 52
    learnset MOVE_THUNDER_SHOCK, 54
    learnset MOVE_GROWL, 58
    learnset MOVE_QUICK_ATTACK, 60
    terminatelearnset

levelup SPECIES_SANDSHREW_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_BIDE, 3
    learnset MOVE_LEER, 5
    learnset MOVE_ICE_SHARD, 7
    learnset MOVE_FURY_SWIPES, 9
    learnset MOVE_GROWL, 11
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_ICE_PUNCH, 17
    learnset MOVE_SLASH, 20
    learnset MOVE_SUPER_FANG, 23
    learnset MOVE_IRON_HEAD, 26
    learnset MOVE_AVALANCHE, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_STOMPING_TANTRUM, 38
    learnset MOVE_GYRO_BALL, 42
    learnset MOVE_ICICLE_CRASH, 46
    learnset MOVE_ICICLE_SPEAR, 50
terminatelearnset

levelup SPECIES_SANDSLASH_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_BIDE, 3
    learnset MOVE_LEER, 5
    learnset MOVE_ICE_SHARD, 7
    learnset MOVE_FURY_SWIPES, 9
    learnset MOVE_GROWL, 11
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_ICE_PUNCH, 17
    learnset MOVE_SLASH, 20
    learnset MOVE_SUPER_FANG, 23
    learnset MOVE_IRON_HEAD, 26
    learnset MOVE_AVALANCHE, 30
    learnset MOVE_NIGHT_SLASH, 35
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_GYRO_BALL, 46
    learnset MOVE_ICICLE_CRASH, 52
    learnset MOVE_TRIPLE_AXEL, 57
terminatelearnset


levelup SPECIES_VULPIX_ALOLAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_DISABLE, 8
    learnset MOVE_ROAR, 16
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_SPITE, 20
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_PAYBACK, 30
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_AURORA_BEAM, 36
    learnset MOVE_HEX, 38
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_MIST, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_SAFEGUARD, 52
    learnset MOVE_IMPRISON, 54
    learnset MOVE_CAPTIVATE, 58
    learnset MOVE_SHEER_COLD, 60
    learnset MOVE_GRUDGE, 65
    learnset MOVE_BLIZZARD, 68
    terminatelearnset

levelup SPECIES_NINETALES_ALOLAN
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_SPITE, 8
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_EXTRASENSORY, 20
    learnset MOVE_ICE_BEAM, 26
    learnset MOVE_IMPRISON, 28
    learnset MOVE_MIST, 30
    learnset MOVE_SHEER_COLD, 36
    learnset MOVE_GRUDGE, 38
    learnset MOVE_BLIZZARD, 42
    learnset MOVE_POWDER_SNOW, 45
    learnset MOVE_DISABLE, 52
    learnset MOVE_ICE_SHARD, 54
    learnset MOVE_SAFEGUARD, 56
    terminatelearnset

levelup SPECIES_DIGLETT_ALOLAN
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_CLAW, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_MAGNITUDE, 16
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_MUD_BOMB, 28
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_DIG, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_FISSURE, 45
    terminatelearnset

levelup SPECIES_DUGTRIO_ALOLAN
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_TRI_ATTACK, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_ASTONISH, 20
    learnset MOVE_MUD_SLAP, 28
    learnset MOVE_MAGNITUDE, 30
    learnset MOVE_BULLDOZE, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_MUD_BOMB, 38
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_DIG, 48
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_FISSURE, 56
    terminatelearnset

levelup SPECIES_MEOWTH_ALOLAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_BITE, 16
    learnset MOVE_PAY_DAY, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_FEINT, 28
    learnset MOVE_SCREECH, 30
    learnset MOVE_ASSURANCE, 34
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_CAPTIVATE, 45
    terminatelearnset

levelup SPECIES_PERSIAN_ALOLAN
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_SWIFT, 5
    learnset MOVE_QUASH, 8
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_FEINT, 20
    learnset MOVE_SCRATCH, 26
    learnset MOVE_PLAY_ROUGH, 28
    learnset MOVE_BITE, 30
    learnset MOVE_PAY_DAY, 34
    learnset MOVE_TAUNT, 36
    learnset MOVE_FEINT_ATTACK, 38
    learnset MOVE_FURY_SWIPES, 42
    learnset MOVE_SCREECH, 45
    learnset MOVE_ASSURANCE, 48
    learnset MOVE_SLASH, 52
    learnset MOVE_NIGHT_SLASH, 56
    learnset MOVE_CAPTIVATE, 58
    learnset MOVE_DARK_PULSE, 60
    terminatelearnset

levelup SPECIES_GEODUDE_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_CHARGE, 6
    learnset MOVE_SPARK, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_STEAMROLLER, 21
    learnset MOVE_THUNDER_PUNCH, 25
    learnset MOVE_ROCK_BLAST, 28
    learnset MOVE_SELF_DESTRUCT, 32
    learnset MOVE_MAGNET_RISE, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_WILD_CHARGE, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_STONE_EDGE, 50
terminatelearnset

levelup SPECIES_GRAVELER_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_CHARGE, 6
    learnset MOVE_SPARK, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_STEAMROLLER, 21
    learnset MOVE_THUNDER_PUNCH, 25
    learnset MOVE_ROCK_BLAST, 28
    learnset MOVE_SELF_DESTRUCT, 32
    learnset MOVE_MAGNET_RISE, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_WILD_CHARGE, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_STONE_EDGE, 50
terminatelearnset

levelup SPECIES_GOLEM_ALOLAN
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_CHARGE, 6
    learnset MOVE_SPARK, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_STEAMROLLER, 21
    learnset MOVE_THUNDER_PUNCH, 25
    learnset MOVE_ROCK_BLAST, 28
    learnset MOVE_SELF_DESTRUCT, 32
    learnset MOVE_MAGNET_RISE, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_WILD_CHARGE, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_STONE_EDGE, 50
terminatelearnset


levelup SPECIES_GRIMER_ALOLAN
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_BITE, 16
    learnset MOVE_DISABLE, 12
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_POISON_FANG, 20
    learnset MOVE_FLING, 28
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SCREECH, 36
    learnset MOVE_GUNK_SHOT, 38
    learnset MOVE_BELCH, 45
    learnset MOVE_MEMENTO, 48
    terminatelearnset

levelup SPECIES_MUK_ALOLAN
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_POUND, 5
    learnset MOVE_POISON_GAS, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_BITE, 12
    learnset MOVE_DISABLE, 16
    learnset MOVE_ACID_SPRAY, 20
    learnset MOVE_POISON_FANG, 26
    learnset MOVE_FLING, 30
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SCREECH, 38
    learnset MOVE_GUNK_SHOT, 42
    learnset MOVE_BELCH, 48
    learnset MOVE_MEMENTO, 52
    terminatelearnset

levelup SPECIES_EXEGGUTOR_ALOLAN
    learnset MOVE_DRAGON_HAMMER, 1
    learnset MOVE_SEED_BOMB, 5
    learnset MOVE_PSYSHOCK, 8
    learnset MOVE_WOOD_HAMMER, 16
    learnset MOVE_LEAF_STORM, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_CONFUSION, 20
    learnset MOVE_SYNTHESIS, 26
    learnset MOVE_BULLET_SEED, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_WORRY_SEED, 38
    learnset MOVE_SOLAR_BEAM, 42
    learnset MOVE_ABSORB, 45
    learnset MOVE_HYPNOSIS, 48
    learnset MOVE_REFLECT, 52
    learnset MOVE_LEECH_SEED, 54
    learnset MOVE_BARRAGE, 56
    learnset MOVE_EGG_BOMB, 58
    terminatelearnset

levelup SPECIES_MAROWAK_ALOLAN
    learnset MOVE_SHADOW_BONE, 1
    learnset MOVE_FALSE_SWIPE, 5
    learnset MOVE_HEADBUTT, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_DOUBLE_EDGE, 16
    learnset MOVE_MUD_SLAP, 20
    learnset MOVE_GROWL, 26
    learnset MOVE_FIRE_SPIN, 30
    learnset MOVE_BONE_CLUB, 34
    learnset MOVE_FLAME_WHEEL, 36
    learnset MOVE_LEER, 38
    learnset MOVE_HEX, 42
    learnset MOVE_FLING, 45
    learnset MOVE_WILL_O_WISP, 48
    learnset MOVE_STOMPING_TANTRUM, 52
    learnset MOVE_BONEMERANG, 54
    learnset MOVE_THRASH, 56
    learnset MOVE_ENDEAVOR, 58
    learnset MOVE_BONE_RUSH, 60
    learnset MOVE_FLARE_BLITZ, 65
    terminatelearnset

levelup SPECIES_RATICATE_ALOLAN_LARGE
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 20
    learnset MOVE_PURSUIT, 26
    learnset MOVE_HYPER_FANG, 28
    learnset MOVE_ASSURANCE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_SUPER_FANG, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_ENDEAVOR, 45
    terminatelearnset

levelup SPECIES_MAROWAK_ALOLAN_LARGE
    learnset MOVE_SHADOW_BONE, 1
    learnset MOVE_FALSE_SWIPE, 5
    learnset MOVE_HEADBUTT, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_DOUBLE_EDGE, 16
    learnset MOVE_MUD_SLAP, 20
    learnset MOVE_GROWL, 26
    learnset MOVE_FIRE_SPIN, 30
    learnset MOVE_BONE_CLUB, 34
    learnset MOVE_FLAME_WHEEL, 36
    learnset MOVE_LEER, 38
    learnset MOVE_HEX, 42
    learnset MOVE_FLING, 45
    learnset MOVE_WILL_O_WISP, 48
    learnset MOVE_STOMPING_TANTRUM, 52
    learnset MOVE_BONEMERANG, 54
    learnset MOVE_THRASH, 56
    learnset MOVE_ENDEAVOR, 58
    learnset MOVE_BONE_RUSH, 60
    learnset MOVE_FLARE_BLITZ, 65
    terminatelearnset

levelup SPECIES_GUMSHOOS_LARGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PURSUIT, 8
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_ODOR_SLEUTH, 12
    learnset MOVE_BIDE, 16
    learnset MOVE_BITE, 20
    learnset MOVE_MUD_SLAP, 26
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_HYPER_FANG, 38
    learnset MOVE_YAWN, 42
    learnset MOVE_THRASH, 45
    learnset MOVE_REST, 48
    terminatelearnset

levelup SPECIES_VIKAVOLT_LARGE
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_CHARGE, 5
    learnset MOVE_X_SCISSOR, 8
    learnset MOVE_CRUNCH, 16
    learnset MOVE_DIG, 12
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_VICE_GRIP, 26
    learnset MOVE_MUD_SLAP, 28
    learnset MOVE_STRING_SHOT, 30
    learnset MOVE_BUG_BITE, 34
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_BITE, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_ACROBATICS, 45
    learnset MOVE_STICKY_WEB, 48
    learnset MOVE_BUG_BUZZ, 52
    learnset MOVE_GUILLOTINE, 54
    learnset MOVE_FLY, 56
    learnset MOVE_ZAP_CANNON, 60
    terminatelearnset

levelup SPECIES_RIBOMBEE_LARGE
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_COVET, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_FAIRY_WIND, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_STRUGGLE_BUG, 20
    learnset MOVE_SILVER_WIND, 26
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_BUG_BUZZ, 38
    terminatelearnset

levelup SPECIES_ARAQUANID_LARGE
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_INFESTATION, 8
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_BITE, 12
    learnset MOVE_SOAK, 16
    learnset MOVE_BUBBLE, 20
    learnset MOVE_SPIDER_WEB, 26
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LUNGE, 38
    learnset MOVE_LEECH_LIFE, 42
    learnset MOVE_ENTRAINMENT, 45
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_MIRROR_COAT, 52
    terminatelearnset

levelup SPECIES_LURANTIS_LARGE
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_SOLAR_BEAM, 8
    learnset MOVE_DUAL_CHOP, 16
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_INGRAIN, 26
    learnset MOVE_X_SCISSOR, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_SWEET_SCENT, 36
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_SOLAR_BLADE, 48
    terminatelearnset

levelup SPECIES_SALAZZLE_LARGE
    learnset MOVE_FIRE_LASH, 1
    learnset MOVE_CAPTIVATE, 5
    learnset MOVE_KNOCK_OFF, 8
    learnset MOVE_ENCORE, 16
    learnset MOVE_TORMENT, 12
    learnset MOVE_SWAGGER, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_SCRATCH, 26
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_POUND, 30
    learnset MOVE_POISON_GAS, 34
    learnset MOVE_SMOG, 36
    learnset MOVE_EMBER, 38
    learnset MOVE_SWEET_SCENT, 42
    learnset MOVE_DRAGON_RAGE, 45
    learnset MOVE_POISON_FANG, 48
    learnset MOVE_DOUBLE_SLAP, 52
    learnset MOVE_FLAME_BURST, 54
    learnset MOVE_INCINERATE, 58
    learnset MOVE_VENOSHOCK, 60
    learnset MOVE_TOXIC, 65
    learnset MOVE_DRAGON_PULSE, 68
    learnset MOVE_VENOM_DRENCH, 70
    learnset MOVE_FLAMETHROWER, 74
    terminatelearnset

levelup SPECIES_TOGEDEMARU_LARGE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_DEFENSE_CURL, 16
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_CHARGE, 16
    learnset MOVE_SPARK, 20
    learnset MOVE_MAGNET_RISE, 26
    learnset MOVE_FELL_STINGER, 28
    learnset MOVE_ZING_ZAP, 30
    learnset MOVE_PIN_MISSILE, 34
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_SPIKY_SHIELD, 45
    terminatelearnset

levelup SPECIES_MIMIKYU_LARGE
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_MIMIC, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_KOMMO_O_LARGE
    learnset MOVE_CLANGING_SCALES, 1
    learnset MOVE_AUTOTOMIZE, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_LEER, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_SKY_UPPERCUT, 26
    learnset MOVE_BIDE, 28
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_SCREECH, 38
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_NOBLE_ROAR, 48
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_CLOSE_COMBAT, 56
    learnset MOVE_CLANGOROUS_SOUL, 58
    learnset MOVE_BOOMBURST, 60
    terminatelearnset

levelup SPECIES_MIMIKYU_BUSTED_LARGE
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_MIMIC, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_MEOWTH_GALARIAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_PAY_DAY, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_FURY_SWIPES, 20
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_SCREECH, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_SLASH, 36
    learnset MOVE_METAL_SOUND, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_CAPTIVATE, 45
    terminatelearnset

levelup SPECIES_PONYTA_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_CONFUSION, 16
    learnset MOVE_FAIRY_WIND, 12
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_STOMP, 26
    learnset MOVE_HEAL_PULSE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_HEALING_WISH, 38
    terminatelearnset

levelup SPECIES_RAPIDASH_GALARIAN
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_MEGAHORN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_CONFUSION, 20
    learnset MOVE_FAIRY_WIND, 26
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_STOMP, 34
    learnset MOVE_HEAL_PULSE, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_HEALING_WISH, 48
    terminatelearnset

levelup SPECIES_SLOWPOKE_GALARIAN
    learnset MOVE_TACKLE, 5
    learnset MOVE_GROWL, 8
    learnset MOVE_ACID, 16
    learnset MOVE_YAWN, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_DISABLE, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_SURF, 36
    learnset MOVE_SLACK_OFF, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_PSYCH_UP, 45
    learnset MOVE_HEAL_PULSE, 52
    terminatelearnset

levelup SPECIES_SLOWBRO_GALARIAN
    learnset MOVE_SHELL_SIDE_ARM, 1
    learnset MOVE_FUTURE_SIGHT, 5
    learnset MOVE_ACID, 8
    learnset MOVE_GROWL, 12
    learnset MOVE_TACKLE, 16
    learnset MOVE_YAWN, 26
    learnset MOVE_CONFUSION, 28
    learnset MOVE_DISABLE, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_HEADBUTT, 36
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_SURF, 45
    learnset MOVE_SLACK_OFF, 48
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_PSYCH_UP, 54
    learnset MOVE_HEAL_PULSE, 58
    terminatelearnset

levelup SPECIES_FARFETCHD_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_LEER, 8
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_BRUTAL_SWING, 16
    learnset MOVE_DETECT, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_DEFOG, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_SLAM, 36
    learnset MOVE_LEAF_BLADE, 38
    learnset MOVE_FINAL_GAMBIT, 42
    learnset MOVE_BRAVE_BIRD, 45
    terminatelearnset

levelup SPECIES_WEEZING_GALARIAN
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_STRANGE_STEAM, 5
    learnset MOVE_DEFOG, 8
    learnset MOVE_SMOKESCREEN, 16
    learnset MOVE_HAZE, 12
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_HEAT_WAVE, 20
    learnset MOVE_TACKLE, 26
    learnset MOVE_SMOG, 28
    learnset MOVE_AROMATIC_MIST, 30
    learnset MOVE_CLEAR_SMOG, 34
    learnset MOVE_ASSURANCE, 36
    learnset MOVE_SLUDGE, 38
    learnset MOVE_FAIRY_WIND, 42
    learnset MOVE_SELF_DESTRUCT, 45
    learnset MOVE_SLUDGE_BOMB, 48
    learnset MOVE_TOXIC, 52
    learnset MOVE_BELCH, 54
    learnset MOVE_EXPLOSION, 56
    learnset MOVE_MEMENTO, 58
    learnset MOVE_DESTINY_BOND, 60
    terminatelearnset

levelup SPECIES_MR_MIME_GALARIAN
    learnset MOVE_COPYCAT, 1
    learnset MOVE_ENCORE, 5
    learnset MOVE_ROLE_PLAY, 8
    learnset MOVE_PROTECT, 16
    learnset MOVE_RECYCLE, 12
    learnset MOVE_MIMIC, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_REFLECT, 26
    learnset MOVE_SAFEGUARD, 28
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_POUND, 36
    learnset MOVE_RAPID_SPIN, 38
    learnset MOVE_ICE_SHARD, 45
    learnset MOVE_CONFUSION, 48
    learnset MOVE_ALLY_SWITCH, 52
    learnset MOVE_ICY_WIND, 54
    learnset MOVE_DOUBLE_KICK, 56
    learnset MOVE_PSYBEAM, 58
    learnset MOVE_HYPNOSIS, 60
    learnset MOVE_MIRROR_COAT, 65
    learnset MOVE_SUCKER_PUNCH, 68
    learnset MOVE_FREEZE_DRY, 70
    learnset MOVE_PSYCHIC, 74
    learnset MOVE_TEETER_DANCE, 76
    terminatelearnset

levelup SPECIES_ARTICUNO_GALARIAN
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_REFLECT, 8
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_TAILWIND, 20
    learnset MOVE_PSYCHO_CUT, 26
    learnset MOVE_RECOVER, 28
    learnset MOVE_FREEZING_GLARE, 30
    learnset MOVE_DREAM_EATER, 34
    learnset MOVE_HURRICANE, 36
    learnset MOVE_MIND_READER, 38
    learnset MOVE_FUTURE_SIGHT, 42
    terminatelearnset

levelup SPECIES_ZAPDOS_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_FOCUS_ENERGY, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_PLUCK, 12
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_THUNDEROUS_KICK, 34
    learnset MOVE_COUNTER, 38
    learnset MOVE_DETECT, 42
    learnset MOVE_CLOSE_COMBAT, 45
    learnset MOVE_REVERSAL, 48
    terminatelearnset

levelup SPECIES_MOLTRES_GALARIAN
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PAYBACK, 8
    learnset MOVE_SAFEGUARD, 16
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_AFTER_YOU, 30
    learnset MOVE_FIERY_WRATH, 34
    learnset MOVE_HURRICANE, 38
    learnset MOVE_ENDURE, 42
    learnset MOVE_MEMENTO, 45
    learnset MOVE_SKY_ATTACK, 48
    terminatelearnset

levelup SPECIES_SLOWKING_GALARIAN
    learnset MOVE_EERIE_SPELL, 1
    learnset MOVE_CHILLY_RECEPTION, 5
    learnset MOVE_FUTURE_SIGHT, 8
    learnset MOVE_TOXIC, 16
    learnset MOVE_ACID, 12
    learnset MOVE_GROWL, 20
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_SWAGGER, 30
    learnset MOVE_TACKLE, 34
    learnset MOVE_YAWN, 36
    learnset MOVE_CONFUSION, 38
    learnset MOVE_DISABLE, 42
    learnset MOVE_WATER_PULSE, 45
    learnset MOVE_HEADBUTT, 48
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_SURF, 56
    learnset MOVE_SLACK_OFF, 58
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_PSYCH_UP, 65
    learnset MOVE_HEAL_PULSE, 70
    terminatelearnset

levelup SPECIES_CORSOLA_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_DISABLE, 16
    learnset MOVE_SPITE, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_HEX, 20
    learnset MOVE_STRENGTH_SAP, 28
    learnset MOVE_POWER_GEM, 30
    learnset MOVE_NIGHT_SHADE, 34
    learnset MOVE_GRUDGE, 36
    learnset MOVE_MIRROR_COAT, 38
    terminatelearnset

levelup SPECIES_ZIGZAGOON_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_SNARL, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_PIN_MISSILE, 26
    learnset MOVE_REST, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset

levelup SPECIES_LINOONE_GALARIAN
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_SNARL, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_BABY_DOLL_EYES, 20
    learnset MOVE_PIN_MISSILE, 26
    learnset MOVE_REST, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_COUNTER, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset

levelup SPECIES_DARUMAKA_GALARIAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_BITE, 16
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_ICE_PUNCH, 28
    learnset MOVE_UPROAR, 30
    learnset MOVE_BLIZZARD, 36
    learnset MOVE_THRASH, 38
    learnset MOVE_SUPERPOWER, 42
    terminatelearnset

levelup SPECIES_DARMANITAN_GALARIAN
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_BITE, 12
    learnset MOVE_AVALANCHE, 16
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_BLIZZARD, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_SUPERPOWER, 45
    terminatelearnset

levelup SPECIES_YAMASK_GALARIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_HAZE, 8
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_DISABLE, 12
    learnset MOVE_BRUTAL_SWING, 16
    learnset MOVE_CRAFTY_SHIELD, 20
    learnset MOVE_HEX, 26
    learnset MOVE_MEAN_LOOK, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_DESTINY_BOND, 48
    terminatelearnset

levelup SPECIES_STUNFISK_GALARIAN
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_ENDURE, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_REVENGE, 20
    learnset MOVE_METAL_SOUND, 26
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BOUNCE, 34
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_SNAP_TRAP, 38
    learnset MOVE_FLAIL, 42
    learnset MOVE_FISSURE, 45
    terminatelearnset

levelup SPECIES_PIKACHU_COSPLAY
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_ROCK_STAR
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_BELLE
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_POP_STAR
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_PH_D
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_LIBRE
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_ORIGINAL_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_HOENN_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_SINNOH_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_UNOVA_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_KALOS_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_ALOLA_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_PARTNER_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_PIKACHU_WORLD_CAP
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_NUZZLE, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_GROWL, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_DOUBLE_TEAM, 36
    learnset MOVE_FEINT, 38
    learnset MOVE_SPARK, 42
    learnset MOVE_SLAM, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_LIGHT_SCREEN, 56
    learnset MOVE_THUNDER, 58
    learnset MOVE_WILD_CHARGE, 60
    terminatelearnset

levelup SPECIES_CASTFORM_SUNNY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_WEATHER_BALL, 28
    learnset MOVE_HYDRO_PUMP, 30
    learnset MOVE_FIRE_BLAST, 34
    learnset MOVE_BLIZZARD, 36
    learnset MOVE_HURRICANE, 38
    terminatelearnset

levelup SPECIES_CASTFORM_RAINY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_WEATHER_BALL, 28
    learnset MOVE_HYDRO_PUMP, 30
    learnset MOVE_FIRE_BLAST, 34
    learnset MOVE_BLIZZARD, 36
    learnset MOVE_HURRICANE, 38
    terminatelearnset

levelup SPECIES_CASTFORM_SNOWY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_EMBER, 8
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_WEATHER_BALL, 28
    learnset MOVE_HYDRO_PUMP, 30
    learnset MOVE_FIRE_BLAST, 34
    learnset MOVE_BLIZZARD, 36
    learnset MOVE_HURRICANE, 38
    terminatelearnset

levelup SPECIES_CHERRIM_SUNSHINE
    learnset MOVE_PETAL_DANCE, 5
    learnset MOVE_FLOWER_SHIELD, 8
    learnset MOVE_MORNING_SUN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_MAGICAL_LEAF, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_PETAL_BLIZZARD, 38
    learnset MOVE_LUCKY_CHANT, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_SHELLOS_EAST_SEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_MUD_BOMB, 16
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_RECOVER, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_MEMENTO, 42
    terminatelearnset

levelup SPECIES_GASTRODON_EAST_SEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_RECOVER, 16
    learnset MOVE_MUD_SPORT, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_MUD_BOMB, 20
    learnset MOVE_HIDDEN_POWER, 26
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_MEMENTO, 42
    terminatelearnset

levelup SPECIES_DIALGA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_METAL_CLAW, 5
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 12
    learnset MOVE_DRAGON_CLAW, 16
    learnset MOVE_POWER_GEM, 20
    learnset MOVE_FLASH_CANNON, 26
    learnset MOVE_AURA_SPHERE, 28
    learnset MOVE_METAL_BURST, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_IRON_TAIL, 36
    learnset MOVE_ROAR_OF_TIME, 38
    terminatelearnset

levelup SPECIES_PALKIA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_WATER_PULSE, 5
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 12
    learnset MOVE_AQUA_RING, 16
    learnset MOVE_DRAGON_CLAW, 20
    learnset MOVE_POWER_GEM, 26
    learnset MOVE_AURA_SPHERE, 28
    learnset MOVE_AQUA_TAIL, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_SPACIAL_REND, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_BASCULIN_BLUE_STRIPED
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_UPROAR, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_CHIP_AWAY, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_FLAIL, 45
    learnset MOVE_FINAL_GAMBIT, 48
    learnset MOVE_THRASH, 52
    learnset MOVE_HEAD_SMASH, 54
    terminatelearnset

levelup SPECIES_BASCULIN_WHITE_STRIPED
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_FLAIL, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_SOAK, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_WAVE_CRASH, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_HEAD_SMASH, 48
    terminatelearnset

levelup SPECIES_DARMANITAN_ZEN_MODE
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_INCINERATE, 16
    learnset MOVE_RAGE, 12
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_FACADE, 28
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_FLARE_BLITZ, 42
    learnset MOVE_TAUNT, 45
    learnset MOVE_SUPERPOWER, 48
    learnset MOVE_OVERHEAT, 52
    terminatelearnset

levelup SPECIES_DARMANITAN_ZEN_MODE_GALARIAN
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_INCINERATE, 16
    learnset MOVE_RAGE, 12
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_FACADE, 28
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_FLARE_BLITZ, 42
    learnset MOVE_TAUNT, 45
    learnset MOVE_SUPERPOWER, 48
    learnset MOVE_OVERHEAT, 52
    terminatelearnset

levelup SPECIES_DEERLING_SUMMER
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_CHARM, 33
    learnset MOVE_NATURE_POWER, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SOLAR_BLADE, 50
terminatelearnset


levelup SPECIES_DEERLING_AUTUMN
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_CHARM, 33
    learnset MOVE_NATURE_POWER, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SOLAR_BLADE, 50
terminatelearnset


levelup SPECIES_DEERLING_WINTER
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_CHARM, 33
    learnset MOVE_NATURE_POWER, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SOLAR_BLADE, 50
terminatelearnset

levelup SPECIES_SAWSBUCK_SUMMER
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_HORN_LEECH, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_NATURE_POWER, 39
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SOLAR_BLADE, 52
terminatelearnset


levelup SPECIES_SAWSBUCK_AUTUMN
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_HORN_LEECH, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_NATURE_POWER, 39
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SOLAR_BLADE, 52
terminatelearnset


levelup SPECIES_SAWSBUCK_WINTER
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_SECRET_POWER, 28
    learnset MOVE_HORN_LEECH, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_NATURE_POWER, 39
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SOLAR_BLADE, 52
terminatelearnset


levelup SPECIES_TORNADUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 5
    learnset MOVE_LEER, 8
    learnset MOVE_SWAGGER, 16
    learnset MOVE_BITE, 12
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_TAILWIND, 26
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_HURRICANE, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_BLEAKWIND_STORM, 52
    terminatelearnset

levelup SPECIES_THUNDURUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_LEER, 8
    learnset MOVE_SWAGGER, 16
    learnset MOVE_BITE, 12
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 26
    learnset MOVE_VOLT_SWITCH, 28
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_THUNDER, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_WILDBOLT_STORM, 52
    terminatelearnset

levelup SPECIES_LANDORUS_THERIAN
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_SMACK_DOWN, 5
    learnset MOVE_LEER, 8
    learnset MOVE_BLOCK, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_IMPRISON, 20
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_EARTH_POWER, 28
    learnset MOVE_EXTRASENSORY, 30
    learnset MOVE_STONE_EDGE, 34
    learnset MOVE_HAMMER_ARM, 36
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_FISSURE, 48
    learnset MOVE_SANDSEAR_STORM, 52
    terminatelearnset

levelup SPECIES_KYUREM_WHITE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_FREEZE_DRY, 16
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_FUSION_FLARE, 36
    learnset MOVE_BLIZZARD, 38
    learnset MOVE_IMPRISON, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_ICE_BURN, 48
    learnset MOVE_SHEER_COLD, 52
    terminatelearnset

levelup SPECIES_KYUREM_BLACK
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_FREEZE_DRY, 16
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_DRAGON_RAGE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_FUSION_BOLT, 36
    learnset MOVE_BLIZZARD, 38
    learnset MOVE_IMPRISON, 42
    learnset MOVE_OUTRAGE, 45
    learnset MOVE_FREEZE_SHOCK, 48
    learnset MOVE_SHEER_COLD, 52
    terminatelearnset

levelup SPECIES_KELDEO_RESOLUTE
    learnset MOVE_SECRET_SWORD, 1
    learnset MOVE_AQUA_JET, 5
    learnset MOVE_LEER, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_RETALIATE, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_QUICK_GUARD, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_CLOSE_COMBAT, 45
    terminatelearnset

levelup SPECIES_MELOETTA_PIROUETTE
    learnset MOVE_ROUND, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_SING, 16
    learnset MOVE_TEETER_DANCE, 12
    learnset MOVE_ACROBATICS, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_ECHOED_VOICE, 26
    learnset MOVE_U_TURN, 28
    learnset MOVE_WAKE_UP_SLAP, 30
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_ROLE_PLAY, 38
    learnset MOVE_CLOSE_COMBAT, 42
    learnset MOVE_PERISH_SONG, 45
    terminatelearnset

levelup SPECIES_GENESECT_DOUSE_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_TECHNO_BLAST, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MAGNET_BOMB, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_BUG_BUZZ, 48
    learnset MOVE_SIMPLE_BEAM, 52
    learnset MOVE_ZAP_CANNON, 54
    learnset MOVE_HYPER_BEAM, 56
    learnset MOVE_SELF_DESTRUCT, 58
    terminatelearnset

levelup SPECIES_GENESECT_SHOCK_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_TECHNO_BLAST, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MAGNET_BOMB, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_BUG_BUZZ, 48
    learnset MOVE_SIMPLE_BEAM, 52
    learnset MOVE_ZAP_CANNON, 54
    learnset MOVE_HYPER_BEAM, 56
    learnset MOVE_SELF_DESTRUCT, 58
    terminatelearnset

levelup SPECIES_GENESECT_BURN_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_TECHNO_BLAST, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MAGNET_BOMB, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_BUG_BUZZ, 48
    learnset MOVE_SIMPLE_BEAM, 52
    learnset MOVE_ZAP_CANNON, 54
    learnset MOVE_HYPER_BEAM, 56
    learnset MOVE_SELF_DESTRUCT, 58
    terminatelearnset

levelup SPECIES_GENESECT_CHILL_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FELL_STINGER, 8
    learnset MOVE_TECHNO_BLAST, 16
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_MAGNET_BOMB, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_LOCK_ON, 45
    learnset MOVE_BUG_BUZZ, 48
    learnset MOVE_SIMPLE_BEAM, 52
    learnset MOVE_ZAP_CANNON, 54
    learnset MOVE_HYPER_BEAM, 56
    learnset MOVE_SELF_DESTRUCT, 58
    terminatelearnset

levelup SPECIES_GRENINJA_BATTLE_BOND
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_HAZE, 8
    learnset MOVE_ROLE_PLAY, 16
    learnset MOVE_MAT_BLOCK, 12
    learnset MOVE_POUND, 16
    learnset MOVE_GROWL, 20
    learnset MOVE_BUBBLE, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_LICK, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_SMOKESCREEN, 36
    learnset MOVE_SHADOW_SNEAK, 38
    learnset MOVE_FEINT_ATTACK, 45
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_DOUBLE_TEAM, 54
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset

levelup SPECIES_GRENINJA_ASH
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 5
    learnset MOVE_HAZE, 8
    learnset MOVE_ROLE_PLAY, 16
    learnset MOVE_MAT_BLOCK, 12
    learnset MOVE_POUND, 16
    learnset MOVE_GROWL, 20
    learnset MOVE_BUBBLE, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_LICK, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_SMOKESCREEN, 36
    learnset MOVE_SHADOW_SNEAK, 38
    learnset MOVE_FEINT_ATTACK, 45
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_DOUBLE_TEAM, 54
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset

levelup SPECIES_VIVILLON_POLAR
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_TUNDRA
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_CONTINENTAL
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_GARDEN
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_ELEGANT
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_MEADOW
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_MODERN
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_MARINE
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_ARCHIPELAGO
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_HIGH_PLAINS
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_SANDSTORM
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_RIVER
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_MONSOON
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_SAVANNA
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_SUN
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_OCEAN
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_JUNGLE
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_FANCY
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_VIVILLON_POKE_BALL
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER, 5
    learnset MOVE_SLEEP_POWDER, 8
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_SUPERSONIC, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_SAFEGUARD, 38
    learnset MOVE_HURRICANE, 45
    terminatelearnset

levelup SPECIES_FLABEBE_YELLOW_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLABEBE_ORANGE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLABEBE_BLUE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLABEBE_WHITE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLOETTE_YELLOW_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLOETTE_ORANGE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLOETTE_BLUE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLOETTE_WHITE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 42
    terminatelearnset

levelup SPECIES_FLOETTE_ETERNAL_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_FAIRY_WIND, 8
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_WISH, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_PETAL_BLIZZARD, 28
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_LIGHT_OF_RUIN, 38
    learnset MOVE_PETAL_DANCE, 42
    learnset MOVE_SOLAR_BEAM, 45
    terminatelearnset

levelup SPECIES_FLORGES_YELLOW_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 5
    learnset MOVE_WISH, 8
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_GRASS_KNOT, 16
    learnset MOVE_PETAL_BLIZZARD, 26
    learnset MOVE_MOONBLAST, 30
    learnset MOVE_PETAL_DANCE, 34
    learnset MOVE_AROMATHERAPY, 36
    terminatelearnset

levelup SPECIES_FLORGES_ORANGE_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 5
    learnset MOVE_WISH, 8
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_GRASS_KNOT, 16
    learnset MOVE_PETAL_BLIZZARD, 26
    learnset MOVE_MOONBLAST, 30
    learnset MOVE_PETAL_DANCE, 34
    learnset MOVE_AROMATHERAPY, 36
    terminatelearnset

levelup SPECIES_FLORGES_BLUE_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 5
    learnset MOVE_WISH, 8
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_GRASS_KNOT, 16
    learnset MOVE_PETAL_BLIZZARD, 26
    learnset MOVE_MOONBLAST, 30
    learnset MOVE_PETAL_DANCE, 34
    learnset MOVE_AROMATHERAPY, 36
    terminatelearnset

levelup SPECIES_FLORGES_WHITE_FLOWER
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_LUCKY_CHANT, 5
    learnset MOVE_WISH, 8
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_FLOWER_SHIELD, 12
    learnset MOVE_GRASS_KNOT, 16
    learnset MOVE_PETAL_BLIZZARD, 26
    learnset MOVE_MOONBLAST, 30
    learnset MOVE_PETAL_DANCE, 34
    learnset MOVE_AROMATHERAPY, 36
    terminatelearnset

levelup SPECIES_FURFROU_HEART
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_STAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_DIAMOND
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_DEBUTANTE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_MATRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_DANDY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_LA_REINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_KABUKI
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_FURFROU_PHARAOH
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BITE, 20
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_RETALIATE, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_CHARM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset

levelup SPECIES_AEGISLASH_BLADE
    learnset MOVE_KINGS_SHIELD, 1
    learnset MOVE_HEAD_SMASH, 5
    learnset MOVE_AERIAL_ACE, 8
    learnset MOVE_METAL_SOUND, 16
    learnset MOVE_SLASH, 12
    learnset MOVE_NIGHT_SLASH, 16
    learnset MOVE_RETALIATE, 20
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_SACRED_SWORD, 36
    learnset MOVE_TACKLE, 38
    learnset MOVE_FURY_CUTTER, 42
    learnset MOVE_SHADOW_SNEAK, 45
    learnset MOVE_AUTOTOMIZE, 48
    learnset MOVE_PURSUIT, 52
    terminatelearnset

levelup SPECIES_PUMPKABOO_SMALL
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_WORRY_SEED, 28
    learnset MOVE_BULLET_SEED, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_PAIN_SPLIT, 38
    terminatelearnset

levelup SPECIES_PUMPKABOO_LARGE
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_WORRY_SEED, 28
    learnset MOVE_BULLET_SEED, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_PAIN_SPLIT, 38
    terminatelearnset

levelup SPECIES_PUMPKABOO_SUPER
    learnset MOVE_ASTONISH, 5
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_LEECH_SEED, 26
    learnset MOVE_WORRY_SEED, 28
    learnset MOVE_BULLET_SEED, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_PAIN_SPLIT, 38
    terminatelearnset

levelup SPECIES_GOURGEIST_SMALL
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 5
    learnset MOVE_ASTONISH, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_PHANTOM_FORCE, 20
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_SEED_BOMB, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_GOURGEIST_LARGE
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 5
    learnset MOVE_ASTONISH, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_PHANTOM_FORCE, 20
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_SEED_BOMB, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_GOURGEIST_SUPER
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_MOONBLAST, 5
    learnset MOVE_ASTONISH, 16
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_PHANTOM_FORCE, 20
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_RAZOR_LEAF, 30
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_SEED_BOMB, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_XERNEAS_ACTIVE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GRAVITY, 5
    learnset MOVE_HEAL_PULSE, 8
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_INGRAIN, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_NATURE_POWER, 30
    learnset MOVE_GEOMANCY, 34
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_HORN_LEECH, 38
    learnset MOVE_MOONBLAST, 42
    learnset MOVE_MEGAHORN, 48
    learnset MOVE_CLOSE_COMBAT, 52
    learnset MOVE_OUTRAGE, 54
    learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset

levelup SPECIES_ZYGARDE_10
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 5
    learnset MOVE_CORE_ENFORCER, 8
    learnset MOVE_BIND, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_HAZE, 34
    learnset MOVE_LANDS_WRATH, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_CAMOUFLAGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_ZYGARDE_10_POWER_CONSTRUCT
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 5
    learnset MOVE_CORE_ENFORCER, 8
    learnset MOVE_BIND, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_HAZE, 34
    learnset MOVE_LANDS_WRATH, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_CAMOUFLAGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_ZYGARDE_50_POWER_CONSTRUCT
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 5
    learnset MOVE_CORE_ENFORCER, 8
    learnset MOVE_BIND, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_HAZE, 34
    learnset MOVE_LANDS_WRATH, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_CAMOUFLAGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_ZYGARDE_10_COMPLETE
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 5
    learnset MOVE_CORE_ENFORCER, 8
    learnset MOVE_BIND, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_HAZE, 34
    learnset MOVE_LANDS_WRATH, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_CAMOUFLAGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_ZYGARDE_50_COMPLETE
    learnset MOVE_THOUSAND_ARROWS, 1
    learnset MOVE_THOUSAND_WAVES, 5
    learnset MOVE_CORE_ENFORCER, 8
    learnset MOVE_BIND, 16
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_BITE, 20
    learnset MOVE_GLARE, 26
    learnset MOVE_DIG, 28
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_HAZE, 34
    learnset MOVE_LANDS_WRATH, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_CAMOUFLAGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_OUTRAGE, 56
    terminatelearnset

levelup SPECIES_HOOPA_UNBOUND
    learnset MOVE_HYPERSPACE_FURY, 1
    learnset MOVE_DESTINY_BOND, 8
    learnset MOVE_ALLY_SWITCH, 16
    learnset MOVE_CONFUSION, 12
    learnset MOVE_ASTONISH, 16
    learnset MOVE_MAGIC_COAT, 20
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_PHANTOM_FORCE, 38
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_PSYCHIC, 56
    terminatelearnset

levelup SPECIES_ORICORIO_POM_POM
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_GUST, 8
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_CAPTIVATE, 24
    learnset MOVE_AIR_SLASH, 28
	learnset MOVE_FLATTER, 33
    learnset MOVE_REVELATION_DANCE, 38
    learnset MOVE_HURRICANE, 44
	learnset MOVE_DEFOG, 50
    terminatelearnset

levelup SPECIES_ORICORIO_PAU
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_GUST, 8
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_CAPTIVATE, 24
    learnset MOVE_AIR_SLASH, 28
	learnset MOVE_FLATTER, 33
    learnset MOVE_REVELATION_DANCE, 38
    learnset MOVE_HURRICANE, 44
	learnset MOVE_DEFOG, 50
    terminatelearnset

levelup SPECIES_ORICORIO_SENSU
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_GUST, 8
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_HEX, 16
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_CAPTIVATE, 24
    learnset MOVE_AIR_SLASH, 28
	learnset MOVE_FLATTER, 33
    learnset MOVE_REVELATION_DANCE, 38
    learnset MOVE_HURRICANE, 44
	learnset MOVE_DEFOG, 50
    terminatelearnset

levelup SPECIES_ROCKRUFF_OWN_TEMPO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_BITE, 16
    learnset MOVE_ODOR_SLEUTH, 26
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_ROAR, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset

levelup SPECIES_LYCANROC_MIDNIGHT
    learnset MOVE_COUNTER, 1
    learnset MOVE_ENDURE, 5
    learnset MOVE_REVERSAL, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_LEER, 16
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_DOUBLE_TEAM, 26
    learnset MOVE_BITE, 28
    learnset MOVE_ROCK_THROW, 30
    learnset MOVE_ODOR_SLEUTH, 36
    learnset MOVE_ROCK_TOMB, 38
    learnset MOVE_ROAR, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_SCARY_FACE, 52
    learnset MOVE_ROCK_CLIMB, 56
    learnset MOVE_STONE_EDGE, 58
    terminatelearnset

levelup SPECIES_LYCANROC_DUSK
    learnset MOVE_CRUSH_CLAW, 1
    learnset MOVE_THRASH, 5
    learnset MOVE_SUCKER_PUNCH, 8
    learnset MOVE_ACCELEROCK, 16
    learnset MOVE_QUICK_GUARD, 12
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_COUNTER, 20
    learnset MOVE_ENDURE, 26
    learnset MOVE_REVERSAL, 28
    learnset MOVE_TAUNT, 30
    learnset MOVE_TACKLE, 34
    learnset MOVE_LEER, 36
    learnset MOVE_SAND_ATTACK, 38
    learnset MOVE_DOUBLE_TEAM, 42
    learnset MOVE_BITE, 45
    learnset MOVE_ROCK_THROW, 48
    learnset MOVE_ODOR_SLEUTH, 54
    learnset MOVE_ROCK_TOMB, 56
    learnset MOVE_ROAR, 58
    learnset MOVE_ROCK_SLIDE, 60
    learnset MOVE_CRUNCH, 65
    learnset MOVE_SCARY_FACE, 68
    learnset MOVE_ROCK_CLIMB, 74
    learnset MOVE_STONE_EDGE, 76
    terminatelearnset

levelup SPECIES_WISHIWASHI_SCHOOL
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_BRINE, 12
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_BEAT_UP, 20
    learnset MOVE_DIVE, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_UPROAR, 34
    learnset MOVE_SOAK, 36
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_ENDEAVOR, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset

levelup SPECIES_MINIOR_METEOR_ORANGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_METEOR_YELLOW
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_METEOR_GREEN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_METEOR_BLUE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_METEOR_INDIGO
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_METEOR_VIOLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_RED
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_ORANGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_YELLOW
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_GREEN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_BLUE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_INDIGO
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MINIOR_CORE_VIOLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SWIFT, 12
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SELF_DESTRUCT, 20
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_AUTOTOMIZE, 30
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SHELL_SMASH, 42
    learnset MOVE_EXPLOSION, 45
    terminatelearnset

levelup SPECIES_MIMIKYU_BUSTED
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_SPLASH, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_COPYCAT, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_BABY_DOLL_EYES, 26
    learnset MOVE_MIMIC, 28
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_CHARM, 38
    learnset MOVE_SHADOW_CLAW, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_PAIN_SPLIT, 48
    terminatelearnset

levelup SPECIES_NECROZMA_DUSK_MANE
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 5
    learnset MOVE_CHARGE_BEAM, 8
    learnset MOVE_GRAVITY, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_MIRROR_SHOT, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_STORED_POWER, 30
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_PHOTON_GEYSER, 48
    learnset MOVE_AUTOTOMIZE, 52
    learnset MOVE_WRING_OUT, 54
    learnset MOVE_PRISMATIC_LASER, 56
    terminatelearnset

levelup SPECIES_NECROZMA_DAWN_WINGS
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 5
    learnset MOVE_CHARGE_BEAM, 8
    learnset MOVE_GRAVITY, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_MIRROR_SHOT, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_STORED_POWER, 30
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_PHOTON_GEYSER, 48
    learnset MOVE_AUTOTOMIZE, 52
    learnset MOVE_WRING_OUT, 54
    learnset MOVE_PRISMATIC_LASER, 56
    terminatelearnset

levelup SPECIES_NECROZMA_ULTRA_DUSK_MANE
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 5
    learnset MOVE_CHARGE_BEAM, 8
    learnset MOVE_GRAVITY, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_MIRROR_SHOT, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_STORED_POWER, 30
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_PHOTON_GEYSER, 48
    learnset MOVE_AUTOTOMIZE, 52
    learnset MOVE_WRING_OUT, 54
    learnset MOVE_PRISMATIC_LASER, 56
    terminatelearnset

levelup SPECIES_NECROZMA_ULTRA_DAWN_WINGS
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 5
    learnset MOVE_CHARGE_BEAM, 8
    learnset MOVE_GRAVITY, 16
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_CONFUSION, 16
    learnset MOVE_MIRROR_SHOT, 20
    learnset MOVE_SLASH, 26
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_STORED_POWER, 30
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_ROCK_BLAST, 38
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_PHOTON_GEYSER, 48
    learnset MOVE_AUTOTOMIZE, 52
    learnset MOVE_WRING_OUT, 54
    learnset MOVE_PRISMATIC_LASER, 56
    terminatelearnset

levelup SPECIES_MAGEARNA_ORIGINAL
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_CRAFTY_SHIELD, 8
    learnset MOVE_GEAR_UP, 16
    learnset MOVE_IRON_HEAD, 16
    learnset MOVE_SONIC_BOOM, 20
    learnset MOVE_DEFENSE_CURL, 26
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_LUCKY_CHANT, 30
    learnset MOVE_ROLLOUT, 34
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_AURORA_BEAM, 38
    learnset MOVE_MIND_READER, 45
    learnset MOVE_FLASH_CANNON, 48
    learnset MOVE_FLEUR_CANNON, 52
    learnset MOVE_PAIN_SPLIT, 54
    learnset MOVE_AURA_SPHERE, 56
    learnset MOVE_SYNCHRONOISE, 58
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_TRUMP_CARD, 68
    terminatelearnset

levelup SPECIES_PIKACHU_PARTNER
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_THUNDERBOLT, 28
    learnset MOVE_SLAM, 30
    learnset MOVE_THUNDER, 36
    terminatelearnset

levelup SPECIES_EEVEE_PARTNER
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_BITE, 20
    learnset MOVE_SWIFT, 26
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_DOUBLE_EDGE, 30
    learnset MOVE_HELPING_HAND, 34
    terminatelearnset

levelup SPECIES_CRAMORANT_GULPING
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 5
    learnset MOVE_SWALLOW, 16
    learnset MOVE_SPIT_UP, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_FURY_ATTACK, 20
    learnset MOVE_PLUCK, 26
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_CRAMORANT_GORGING
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 5
    learnset MOVE_SWALLOW, 16
    learnset MOVE_SPIT_UP, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_FURY_ATTACK, 20
    learnset MOVE_PLUCK, 26
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_HYDRO_PUMP, 38
    terminatelearnset

levelup SPECIES_TOXTRICITY_LOW_KEY
    learnset MOVE_SPARK, 1
    learnset MOVE_EERIE_IMPULSE, 5
    learnset MOVE_BELCH, 8
    learnset MOVE_TEARFUL_LOOK, 16
    learnset MOVE_NUZZLE, 12
    learnset MOVE_GROWL, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_ACID, 26
    learnset MOVE_THUNDER_SHOCK, 28
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_LEER, 34
    learnset MOVE_NOBLE_ROAR, 36
    learnset MOVE_CHARGE, 38
    learnset MOVE_SHOCK_WAVE, 42
    learnset MOVE_SCARY_FACE, 45
    learnset MOVE_TAUNT, 48
    learnset MOVE_VENOM_DRENCH, 52
    learnset MOVE_SCREECH, 54
    learnset MOVE_SWAGGER, 56
    learnset MOVE_TOXIC, 58
    learnset MOVE_DISCHARGE, 60
    learnset MOVE_POISON_JAB, 65
    learnset MOVE_OVERDRIVE, 68
    learnset MOVE_BOOMBURST, 70
    learnset MOVE_MAGNETIC_FLUX, 74
    terminatelearnset

levelup SPECIES_SINISTEA_ANTIQUE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_PROTECT, 12
    learnset MOVE_SUCKER_PUNCH, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_MEMENTO, 34
    learnset MOVE_SHELL_SMASH, 36
    terminatelearnset

levelup SPECIES_POLTEAGEIST_ANTIQUE
    learnset MOVE_TEATIME, 1
    learnset MOVE_STRENGTH_SAP, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_AROMATIC_MIST, 12
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_MEMENTO, 38
    learnset MOVE_SHELL_SMASH, 42
    terminatelearnset

levelup SPECIES_ALCREMIE_BERRY_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_LOVE_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_STAR_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_CLOVER_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_FLOWER_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_RIBBON_SWEET
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_FILLER_1
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_ALCREMIE_FILLER_2
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_AROMATIC_MIST, 8
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWEET_SCENT, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_ATTRACT, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_ENTRAINMENT, 38
    terminatelearnset

levelup SPECIES_EISCUE_NOICE_FACE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_MIST, 8
    learnset MOVE_WEATHER_BALL, 16
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_FREEZE_DRY, 26
    learnset MOVE_SURF, 34
    learnset MOVE_BLIZZARD, 36
    terminatelearnset

levelup SPECIES_MORPEKO_HANGRY
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 8
    learnset MOVE_POWER_TRIP, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_FLATTER, 16
    learnset MOVE_BITE, 20
    learnset MOVE_SPARK, 26
    learnset MOVE_TORMENT, 28
    learnset MOVE_BULLET_SEED, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_AURA_WHEEL, 38
    learnset MOVE_THRASH, 42
    terminatelearnset

levelup SPECIES_ZACIAN_CROWNED
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_QUICK_GUARD, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_LASER_FOCUS, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_GIGA_IMPACT, 42
    terminatelearnset

levelup SPECIES_ZAMAZENTA_CROWNED
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_LASER_FOCUS, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_CLOSE_COMBAT, 38
    learnset MOVE_GIGA_IMPACT, 42
    terminatelearnset

levelup SPECIES_ETERNATUS_ETERNAMAX
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_CONFUSE_RAY, 5
    learnset MOVE_DRAGON_TAIL, 8
    learnset MOVE_TOXIC, 12
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_CROSS_POISON, 26
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_FLAMETHROWER, 30
    learnset MOVE_DYNAMAX_CANNON, 34
    learnset MOVE_RECOVER, 38
    learnset MOVE_HYPER_BEAM, 42
    learnset MOVE_ETERNABEAM, 45
    terminatelearnset

levelup SPECIES_URSHIFU_RAPID_STRIKE
    learnset MOVE_SURGING_STRIKES, 1
    learnset MOVE_AQUA_JET, 5
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_LEER, 16
    learnset MOVE_ENDURE, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_SCARY_FACE, 26
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_DETECT, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_DYNAMIC_PUNCH, 42
    learnset MOVE_COUNTER, 45
    learnset MOVE_CLOSE_COMBAT, 48
    learnset MOVE_FOCUS_PUNCH, 52
    terminatelearnset

levelup SPECIES_ZARUDE_DADA
    learnset MOVE_BIND, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_GRASS_KNOT, 26
    learnset MOVE_BITE, 28
    learnset MOVE_U_TURN, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SYNTHESIS, 38
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_THRASH, 45
    learnset MOVE_POWER_WHIP, 48
    terminatelearnset

levelup SPECIES_CALYREX_ICE_RIDER
    learnset MOVE_GLACIAL_LANCE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_TORMENT, 20
    learnset MOVE_MIST, 26
    learnset MOVE_ICICLE_CRASH, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_POUND, 48
    learnset MOVE_MEGA_DRAIN, 52
    learnset MOVE_CONFUSION, 54
    learnset MOVE_LIFE_DEW, 58
    learnset MOVE_GIGA_DRAIN, 60
    learnset MOVE_PSYSHOCK, 65
    learnset MOVE_HELPING_HAND, 68
    learnset MOVE_AROMATHERAPY, 70
    learnset MOVE_ENERGY_BALL, 74
    learnset MOVE_PSYCHIC, 76
    learnset MOVE_LEECH_SEED, 80
    learnset MOVE_HEAL_PULSE, 80
    learnset MOVE_SOLAR_BEAM, 80
    learnset MOVE_FUTURE_SIGHT, 80
    terminatelearnset

levelup SPECIES_CALYREX_SHADOW_RIDER
    learnset MOVE_ASTRAL_BARRAGE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_HEX, 12
    learnset MOVE_STOMP, 16
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_HAZE, 26
    learnset MOVE_SHADOW_BALL, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_THRASH, 36
    learnset MOVE_DISABLE, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_POUND, 48
    learnset MOVE_MEGA_DRAIN, 52
    learnset MOVE_CONFUSION, 54
    learnset MOVE_LIFE_DEW, 58
    learnset MOVE_GIGA_DRAIN, 60
    learnset MOVE_PSYSHOCK, 65
    learnset MOVE_HELPING_HAND, 68
    learnset MOVE_AROMATHERAPY, 70
    learnset MOVE_ENERGY_BALL, 74
    learnset MOVE_PSYCHIC, 76
    learnset MOVE_LEECH_SEED, 80
    learnset MOVE_HEAL_PULSE, 80
    learnset MOVE_SOLAR_BEAM, 80
    learnset MOVE_FUTURE_SIGHT, 80
    terminatelearnset

levelup SPECIES_ENAMORUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_TORMENT, 8
    learnset MOVE_FLATTER, 16
    learnset MOVE_TWISTER, 12
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_IMPRISON, 26
    learnset MOVE_MYSTICAL_FIRE, 28
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_UPROAR, 36
    learnset MOVE_SUPERPOWER, 38
    learnset MOVE_HEALING_WISH, 42
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_OUTRAGE, 48
    learnset MOVE_SPRINGTIDE_STORM, 52
    terminatelearnset

levelup SPECIES_GROWLITHE_HISUIAN
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BITE, 16
    learnset MOVE_FLAME_WHEEL, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_RETALIATE, 26
    learnset MOVE_CRUNCH, 28
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_ROAR, 36
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_REVERSAL, 42
    learnset MOVE_FLARE_BLITZ, 45
    terminatelearnset

levelup SPECIES_ARCANINE_HISUIAN
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_BITE, 8
    learnset MOVE_CRUNCH, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLARE_BLITZ, 26
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_LEER, 34
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_RETALIATE, 38
    learnset MOVE_REVERSAL, 42
    learnset MOVE_ROAR, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_RAGING_FURY, 54
    terminatelearnset

levelup SPECIES_VOLTORB_HISUIAN
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_BULLET_SEED, 12
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_SCREECH, 20
    learnset MOVE_CHARGE_BEAM, 26
    learnset MOVE_SWIFT, 28
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_SELF_DESTRUCT, 34
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SEED_BOMB, 38
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_GYRO_BALL, 48
    terminatelearnset

levelup SPECIES_ELECTRODE_HISUIAN
    learnset MOVE_CHLOROBLAST, 1
    learnset MOVE_CHARGE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_ROLLOUT, 20
    learnset MOVE_SCREECH, 26
    learnset MOVE_CHARGE_BEAM, 28
    learnset MOVE_SWIFT, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_SELF_DESTRUCT, 36
    learnset MOVE_ENERGY_BALL, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_GYRO_BALL, 52
    terminatelearnset

levelup SPECIES_TYPHLOSION_HISUIAN
    learnset MOVE_INFERNAL_PARADE, 1
    learnset MOVE_ERUPTION, 5
    learnset MOVE_DOUBLE_EDGE, 8
    learnset MOVE_GYRO_BALL, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_LEER, 16
    learnset MOVE_SMOKESCREEN, 20
    learnset MOVE_EMBER, 26
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_FLAME_WHEEL, 30
    learnset MOVE_DEFENSE_CURL, 34
    learnset MOVE_SWIFT, 36
    learnset MOVE_FLAME_CHARGE, 38
    learnset MOVE_LAVA_PLUME, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_INFERNO, 48
    learnset MOVE_ROLLOUT, 52
    learnset MOVE_OVERHEAT, 54
    terminatelearnset

levelup SPECIES_QWILFISH_HISUIAN
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_BITE, 16
    learnset MOVE_FELL_STINGER, 12
    learnset MOVE_BRINE, 26
    learnset MOVE_BARB_BARRAGE, 28
    learnset MOVE_PIN_MISSILE, 30
    learnset MOVE_SPIT_UP, 36
    learnset MOVE_TOXIC, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_DESTINY_BOND, 52
    terminatelearnset

levelup SPECIES_SNEASEL_HISUIAN
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_SCRATCH, 8
    learnset MOVE_TAUNT, 16
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_POISON_JAB, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_SLASH, 30
    learnset MOVE_SCREECH, 36
    learnset MOVE_CLOSE_COMBAT, 38
    terminatelearnset

levelup SPECIES_SAMUROTT_HISUIAN
    learnset MOVE_CEASELESS_EDGE, 1
    learnset MOVE_SUCKER_PUNCH, 5
    learnset MOVE_SLASH, 8
    learnset MOVE_MEGAHORN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_WATER_GUN, 20
    learnset MOVE_FOCUS_ENERGY, 26
    learnset MOVE_RAZOR_SHELL, 28
    learnset MOVE_FURY_CUTTER, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_AERIAL_ACE, 36
    learnset MOVE_AQUA_JET, 38
    learnset MOVE_ENCORE, 42
    learnset MOVE_AQUA_TAIL, 45
    learnset MOVE_RETALIATE, 48
    learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset

levelup SPECIES_LILLIGANT_HISUIAN
    learnset MOVE_PETAL_BLIZZARD, 5
    learnset MOVE_TEETER_DANCE, 8
    learnset MOVE_DEFOG, 16
    learnset MOVE_LEAF_BLADE, 12
    learnset MOVE_MEGA_KICK, 16
    learnset MOVE_SOLAR_BLADE, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_SLEEP_POWDER, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_LEECH_SEED, 36
    learnset MOVE_AFTER_YOU, 38
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_ENTRAINMENT, 52
    learnset MOVE_LEAF_STORM, 54
    learnset MOVE_ABSORB, 56
    learnset MOVE_HELPING_HAND, 60
    learnset MOVE_STUN_SPORE, 65
    learnset MOVE_AXE_KICK, 68
    terminatelearnset

levelup SPECIES_ZORUA_HISUIAN
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_TORMENT, 8
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_TAUNT, 20
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_SPITE, 28
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_BITTER_MALICE, 36
    learnset MOVE_FOUL_PLAY, 42
    terminatelearnset

levelup SPECIES_ZOROARK_HISUIAN
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_LEER, 8
    learnset MOVE_SCRATCH, 16
    learnset MOVE_TORMENT, 12
    learnset MOVE_U_TURN, 16
    learnset MOVE_SHADOW_SNEAK, 20
    learnset MOVE_TAUNT, 28
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_SPITE, 34
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_BITTER_MALICE, 42
    learnset MOVE_FOUL_PLAY, 48
    terminatelearnset

levelup SPECIES_BRAVIARY_HISUIAN
	learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_PECK, 8
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_TAILWIND, 24
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_PSYSHOCK, 33
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_ESPER_WING, 42
    learnset MOVE_DEFOG, 45
	learnset MOVE_PSYCHIC, 49
    learnset MOVE_HURRICANE, 52
	learnset MOVE_FUTURE_SIGHT, 58
    terminatelearnset

levelup SPECIES_SLIGGOO_HISUIAN
    learnset MOVE_ABSORB, 5
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_MUDDY_WATER, 42
    terminatelearnset

levelup SPECIES_GOODRA_HISUIAN
    learnset MOVE_IRON_TAIL, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FEINT, 12
    learnset MOVE_TACKLE, 20
    learnset MOVE_TEARFUL_LOOK, 26
    learnset MOVE_WATER_GUN, 28
    learnset MOVE_PROTECT, 30
    learnset MOVE_FLAIL, 34
    learnset MOVE_WATER_PULSE, 36
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_MUDDY_WATER, 54
    learnset MOVE_HEAVY_SLAM, 56
    terminatelearnset

levelup SPECIES_AVALUGG_HISUIAN
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_AVALANCHE, 30
    learnset MOVE_BITE, 34
    learnset MOVE_ICE_FANG, 36
    learnset MOVE_RECOVER, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_BLIZZARD, 52
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_MOUNTAIN_GALE, 58
    terminatelearnset

levelup SPECIES_DECIDUEYE_HISUIAN
    learnset MOVE_TRIPLE_ARROWS, 1
    learnset MOVE_LEAF_STORM, 5
    learnset MOVE_U_TURN, 8
    learnset MOVE_TACKLE, 16
    learnset MOVE_GROWL, 12
    learnset MOVE_VINE_WHIP, 16
    learnset MOVE_PECK, 20
    learnset MOVE_SHADOW_SNEAK, 26
    learnset MOVE_RAZOR_LEAF, 28
    learnset MOVE_SYNTHESIS, 30
    learnset MOVE_PLUCK, 34
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_FEATHER_DANCE, 45
    learnset MOVE_BRAVE_BIRD, 48
    terminatelearnset

levelup SPECIES_KLEAVOR_LORD
    learnset MOVE_STONE_AXE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_FALSE_SWIPE, 12
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_DOUBLE_TEAM, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_FOCUS_ENERGY, 30
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 38
    terminatelearnset

levelup SPECIES_LILLIGANT_LADY
    learnset MOVE_PETAL_BLIZZARD, 5
    learnset MOVE_TEETER_DANCE, 8
    learnset MOVE_DEFOG, 16
    learnset MOVE_LEAF_BLADE, 12
    learnset MOVE_MEGA_KICK, 16
    learnset MOVE_SOLAR_BLADE, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_SLEEP_POWDER, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_LEECH_SEED, 36
    learnset MOVE_AFTER_YOU, 38
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_ENTRAINMENT, 52
    learnset MOVE_LEAF_STORM, 54
    learnset MOVE_ABSORB, 56
    learnset MOVE_HELPING_HAND, 60
    learnset MOVE_STUN_SPORE, 65
    learnset MOVE_AXE_KICK, 68
    terminatelearnset

levelup SPECIES_ARCANINE_LORD
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_BITE, 8
    learnset MOVE_CRUNCH, 16
    learnset MOVE_EMBER, 12
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLARE_BLITZ, 26
    learnset MOVE_HELPING_HAND, 28
    learnset MOVE_LEER, 34
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_RETALIATE, 38
    learnset MOVE_REVERSAL, 42
    learnset MOVE_ROAR, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_RAGING_FURY, 54
    terminatelearnset

levelup SPECIES_ELECTRODE_LORD
    learnset MOVE_CHLOROBLAST, 1
    learnset MOVE_CHARGE, 5
    learnset MOVE_TACKLE, 8
    learnset MOVE_THUNDER_SHOCK, 16
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_ROLLOUT, 20
    learnset MOVE_SCREECH, 26
    learnset MOVE_CHARGE_BEAM, 28
    learnset MOVE_SWIFT, 30
    learnset MOVE_ELECTRO_BALL, 34
    learnset MOVE_SELF_DESTRUCT, 36
    learnset MOVE_ENERGY_BALL, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_GYRO_BALL, 52
    terminatelearnset

levelup SPECIES_AVALUGG_LORD
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_HARDEN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_POWDER_SNOW, 16
    learnset MOVE_ICY_WIND, 26
    learnset MOVE_PROTECT, 28
    learnset MOVE_AVALANCHE, 30
    learnset MOVE_BITE, 34
    learnset MOVE_ICE_FANG, 36
    learnset MOVE_RECOVER, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_BLIZZARD, 52
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_MOUNTAIN_GALE, 58
    terminatelearnset

levelup SPECIES_UNFEZANT_FEMALE
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_DETECT, 20
    learnset MOVE_SWAGGER, 26
    learnset MOVE_FEATHER_DANCE, 28
    learnset MOVE_ROOST, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_RAZOR_WIND, 36
    learnset MOVE_FACADE, 38
    learnset MOVE_TAILWIND, 42
    learnset MOVE_SKY_ATTACK, 45
    terminatelearnset

levelup SPECIES_FRILLISH_FEMALE
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_BUBBLE, 8
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_POISON_STING, 12
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_RECOVER, 28
    learnset MOVE_BRINE, 34
    learnset MOVE_OMINOUS_WIND, 36
    learnset MOVE_HEX, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_WHIRLPOOL, 45
    learnset MOVE_HYDRO_PUMP, 48
    learnset MOVE_DESTINY_BOND, 52
    learnset MOVE_WATER_SPOUT, 54
    learnset MOVE_WRING_OUT, 56
    terminatelearnset

levelup SPECIES_JELLICENT_FEMALE
    learnset MOVE_ABSORB, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_POISON_STING, 16
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_WATER_SPOUT, 16
    learnset MOVE_WRING_OUT, 20
    learnset MOVE_BUBBLE, 26
    learnset MOVE_WATER_SPORT, 28
    learnset MOVE_BUBBLE_BEAM, 30
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_RECOVER, 36
    learnset MOVE_BRINE, 42
    learnset MOVE_OMINOUS_WIND, 45
    learnset MOVE_HEX, 48
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_WHIRLPOOL, 54
    learnset MOVE_HYDRO_PUMP, 56
    learnset MOVE_DESTINY_BOND, 58
    terminatelearnset

levelup SPECIES_PYROAR_FEMALE
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_LEER, 8
    learnset MOVE_EMBER, 16
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_NOBLE_ROAR, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_FIRE_FANG, 28
    learnset MOVE_ENDEAVOR, 30
    learnset MOVE_ECHOED_VOICE, 34
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_CRUNCH, 38
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_INCINERATE, 45
    learnset MOVE_OVERHEAT, 48
    terminatelearnset

levelup SPECIES_MEOWSTIC_FEMALE
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_DISARMING_VOICE, 12
    learnset MOVE_STORED_POWER, 16
    learnset MOVE_ME_FIRST, 20
    learnset MOVE_COVET, 26
    learnset MOVE_CONFUSION, 28
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_CHARGE_BEAM, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_PSYSHOCK, 38
    learnset MOVE_REFLECT, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_ROLE_PLAY, 48
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_SIGNAL_BEAM, 56
    learnset MOVE_PSYCHIC, 58
    learnset MOVE_FUTURE_SIGHT, 60
    terminatelearnset

levelup SPECIES_INDEEDEE_FEMALE
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_FOLLOW_ME, 20
    learnset MOVE_AROMATHERAPY, 26
    learnset MOVE_PSYCHIC, 28
    learnset MOVE_HEALING_WISH, 38
    terminatelearnset

levelup SPECIES_BASCULEGION_FEMALE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_SHADOW_BALL, 5
    learnset MOVE_WATER_GUN, 16
    learnset MOVE_TACKLE, 12
    learnset MOVE_FLAIL, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_BITE, 26
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SOAK, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_UPROAR, 42
    learnset MOVE_WAVE_CRASH, 45
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 54
    terminatelearnset

levelup SPECIES_MAUSHOLD_FAMILY_OF_THREE
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_FOLLOW_ME, 5
    learnset MOVE_POUND, 8
    learnset MOVE_TIDY_UP, 16
    learnset MOVE_ECHOED_VOICE, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SUPER_FANG, 20
    learnset MOVE_DOUBLE_HIT, 26
    learnset MOVE_BULLET_SEED, 28
    learnset MOVE_ENCORE, 30
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_CHARM, 38
    learnset MOVE_BEAT_UP, 42
    learnset MOVE_COPYCAT, 45
    learnset MOVE_POPULATION_BOMB, 48
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_BLUE_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_TORMENT, 12
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_FURY_ATTACK, 18
    learnset MOVE_TAUNT, 23
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_SWAGGER, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ENCORE, 45
    learnset MOVE_FLYING_PRESS, 48
	learnset MOVE_DOUBLE_EDGE, 53
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_TORMENT, 12
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_FURY_ATTACK, 18
    learnset MOVE_TAUNT, 23
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_SWAGGER, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ENCORE, 45
    learnset MOVE_FLYING_PRESS, 48
	learnset MOVE_DOUBLE_EDGE, 53
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_WHITE_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_TORMENT, 12
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_FURY_ATTACK, 18
    learnset MOVE_TAUNT, 23
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_SWAGGER, 34
    learnset MOVE_FACADE, 36
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ENCORE, 45
    learnset MOVE_FLYING_PRESS, 48
	learnset MOVE_DOUBLE_EDGE, 53
    terminatelearnset

levelup SPECIES_PALAFIN_HERO
    learnset MOVE_JET_PUNCH, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_ASTONISH, 16
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_DOUBLE_HIT, 20
    learnset MOVE_DIVE, 26
    learnset MOVE_CHARM, 28
    learnset MOVE_ACROBATICS, 30
    learnset MOVE_ENCORE, 34
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_MIST, 38
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_FOCUS_PUNCH, 45
    learnset MOVE_WAVE_CRASH, 48
    terminatelearnset

levelup SPECIES_TATSUGIRI_DROOPY
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_SOAK, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_MEMENTO, 26
    learnset MOVE_MUDDY_WATER, 28
    learnset MOVE_MIRROR_COAT, 34
    learnset MOVE_DRAGON_PULSE, 36
    terminatelearnset

levelup SPECIES_TATSUGIRI_STRETCHY
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HARDEN, 8
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_SOAK, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_MEMENTO, 26
    learnset MOVE_MUDDY_WATER, 28
    learnset MOVE_MIRROR_COAT, 34
    learnset MOVE_DRAGON_PULSE, 36
    terminatelearnset

levelup SPECIES_DUDUNSPARCE_THREE_SEGMENT
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_GLARE, 19
    learnset MOVE_ANCIENT_POWER, 23
    learnset MOVE_DRILL_RUN, 26
    learnset MOVE_YAWN, 29
    learnset MOVE_HYPER_DRILL, 34
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_DRAGON_RUSH, 44
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_AQUA_TAIL, 52
	learnset MOVE_BOOMBURST, 58
    terminatelearnset

levelup SPECIES_GIMMIGHOUL_ROAMING
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 5
    terminatelearnset

levelup SPECIES_WOOPER_PALDEAN
    learnset MOVE_TACKLE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_MUD_SHOT, 5
	learnset MOVE_WATER_GUN, 10
    learnset MOVE_POISON_TAIL, 14
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_YAWN, 20
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_SLUDGE_WAVE, 28
    learnset MOVE_TOXIC, 34
    learnset MOVE_EARTHQUAKE, 36
    terminatelearnset

levelup SPECIES_TAUROS_COMBAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_RAGING_BULL, 28
    learnset MOVE_REST, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_THRASH, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_CLOSE_COMBAT, 42
    terminatelearnset

levelup SPECIES_TAUROS_BLAZE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_FLAME_CHARGE, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_RAGING_BULL, 28
    learnset MOVE_REST, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_THRASH, 36
    learnset MOVE_FLARE_BLITZ, 38
    learnset MOVE_CLOSE_COMBAT, 42
    terminatelearnset

levelup SPECIES_TAUROS_AQUA
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_RAGING_BULL, 28
    learnset MOVE_REST, 30
    learnset MOVE_SWAGGER, 34
    learnset MOVE_THRASH, 36
    learnset MOVE_WAVE_CRASH, 38
    learnset MOVE_CLOSE_COMBAT, 42
    terminatelearnset

levelup SPECIES_OINKOLOGNE_FEMALE
    learnset MOVE_TACKLE, 1
	learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_COVET, 8
    learnset MOVE_MUD_SHOT, 12
	learnset MOVE_ECHOED_VOICE, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_YAWN, 25
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_HIGH_HORSEPOWER, 42
    learnset MOVE_BODY_SLAM, 45
	learnset MOVE_PLAY_ROUGH, 50
    terminatelearnset

levelup SPECIES_REVAVROOM_SEGIN
    learnset MOVE_LICK, 5
    learnset MOVE_MAGNET_RISE, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_SMOG, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SLUDGE, 26
    learnset MOVE_GYRO_BALL, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_UPROAR, 45
    learnset MOVE_SPIN_OUT, 48
    learnset MOVE_GUNK_SHOT, 52
    terminatelearnset

levelup SPECIES_REVAVROOM_SCHEDAR
    learnset MOVE_LICK, 5
    learnset MOVE_MAGNET_RISE, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_SMOG, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SLUDGE, 26
    learnset MOVE_GYRO_BALL, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_UPROAR, 45
    learnset MOVE_SPIN_OUT, 48
    learnset MOVE_GUNK_SHOT, 52
    terminatelearnset

levelup SPECIES_REVAVROOM_NAVI
    learnset MOVE_LICK, 5
    learnset MOVE_MAGNET_RISE, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_SMOG, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SLUDGE, 26
    learnset MOVE_GYRO_BALL, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_UPROAR, 45
    learnset MOVE_SPIN_OUT, 48
    learnset MOVE_GUNK_SHOT, 52
    terminatelearnset

levelup SPECIES_REVAVROOM_RUCHBAH
    learnset MOVE_LICK, 5
    learnset MOVE_MAGNET_RISE, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_SMOG, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SLUDGE, 26
    learnset MOVE_GYRO_BALL, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_UPROAR, 45
    learnset MOVE_SPIN_OUT, 48
    learnset MOVE_GUNK_SHOT, 52
    terminatelearnset

levelup SPECIES_REVAVROOM_CAPH
    learnset MOVE_LICK, 5
    learnset MOVE_MAGNET_RISE, 8
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_SMOG, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SLUDGE, 26
    learnset MOVE_GYRO_BALL, 28
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_SWAGGER, 38
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_UPROAR, 45
    learnset MOVE_SPIN_OUT, 48
    learnset MOVE_GUNK_SHOT, 52
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
    learnset MOVE_GIGA_IMPACT, 98
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
    learnset MOVE_GIGA_IMPACT, 98
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
    learnset MOVE_GIGA_IMPACT, 98
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
    learnset MOVE_GIGA_IMPACT, 98
    terminatelearnset
    terminatelearnset

levelup SPECIES_MIRAIDON_LOW_POWER_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 12
    learnset MOVE_PARABOLIC_CHARGE, 16
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ELECTRO_DRIFT, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_OUTRAGE, 38
    learnset MOVE_THUNDER, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_HYPER_BEAM, 48
    terminatelearnset

levelup SPECIES_MIRAIDON_DRIVE_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 12
    learnset MOVE_PARABOLIC_CHARGE, 16
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ELECTRO_DRIFT, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_OUTRAGE, 38
    learnset MOVE_THUNDER, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_HYPER_BEAM, 48
    terminatelearnset

levelup SPECIES_MIRAIDON_AQUATIC_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 12
    learnset MOVE_PARABOLIC_CHARGE, 16
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ELECTRO_DRIFT, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_OUTRAGE, 38
    learnset MOVE_THUNDER, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_HYPER_BEAM, 48
    terminatelearnset

levelup SPECIES_MIRAIDON_GLIDE_MODE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 12
    learnset MOVE_PARABOLIC_CHARGE, 16
    learnset MOVE_DISCHARGE, 20
    learnset MOVE_DRAGON_PULSE, 28
    learnset MOVE_ELECTRO_DRIFT, 30
    learnset MOVE_METAL_SOUND, 34
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_OUTRAGE, 38
    learnset MOVE_THUNDER, 42
    learnset MOVE_OVERHEAT, 45
    learnset MOVE_HYPER_BEAM, 48
    terminatelearnset

levelup SPECIES_POLTCHAGEIST_MASTERPIECE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_ABSORB, 16
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_FOUL_PLAY, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_HEX, 26
    learnset MOVE_RAGE_POWDER, 28
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_MEMENTO, 36
    learnset MOVE_LEAF_STORM, 38
    terminatelearnset

levelup SPECIES_SINISTCHA_MASTERPIECE
    learnset MOVE_MATCHA_GOTCHA, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_ABSORB, 12
    learnset MOVE_LIFE_DEW, 16
    learnset MOVE_FOUL_PLAY, 20
    learnset MOVE_MEGA_DRAIN, 26
    learnset MOVE_HEX, 28
    learnset MOVE_RAGE_POWDER, 30
    learnset MOVE_STRENGTH_SAP, 34
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_MEMENTO, 38
    learnset MOVE_LEAF_STORM, 42
    terminatelearnset

levelup SPECIES_OGERPON_WELLSPRING_MASK
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_OGERPON_HEARTHFLAME_MASK
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_OGERPON_CORNERSTONE_MASK
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_OGERPON_TEAL_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_OGERPON_WELLSPRING_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_OGERPON_HEARTHFLAME_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_OGERPON_CORNERSTONE_MASK_TERASTAL
    learnset MOVE_COUNTER, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_HORN_LEECH, 8
    learnset MOVE_RETALIATE, 16
    learnset MOVE_FOLLOW_ME, 12
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_QUICK_ATTACK, 20
    learnset MOVE_VINE_WHIP, 26
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_SLAM, 34
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_IVY_CUDGEL, 38
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_SYNTHESIS, 45
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_POWER_WHIP, 52
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 56
    terminatelearnset

levelup SPECIES_URSALUNA_BLOODMOON
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_SCRATCH, 5
    learnset MOVE_LEER, 8
    learnset MOVE_LICK, 16
    learnset MOVE_HEADLONG_RUSH, 12
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_PAYBACK, 20
    learnset MOVE_HARDEN, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_PLAY_NICE, 30
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_REST, 36
    learnset MOVE_SNORE, 38
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_HAMMER_ARM, 48
    learnset MOVE_BLOOD_MOON, 52
    terminatelearnset

levelup SPECIES_TERAPAGOS_TERASTAL
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 5
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_EARTH_POWER, 20
    learnset MOVE_HEAVY_SLAM, 26
    learnset MOVE_TERA_STARSTORM, 28
    learnset MOVE_DOUBLE_EDGE, 30
    learnset MOVE_GYRO_BALL, 36
    terminatelearnset

levelup SPECIES_TERAPAGOS_STELLAR
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 5
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_EARTH_POWER, 20
    learnset MOVE_HEAVY_SLAM, 26
    learnset MOVE_TERA_STARSTORM, 28
    learnset MOVE_DOUBLE_EDGE, 30
    learnset MOVE_GYRO_BALL, 36
    terminatelearnset
