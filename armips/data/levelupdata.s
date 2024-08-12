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
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 3
    learnset MOVE_LEECH_SEED, 5
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MAGICAL_LEAF, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SLUDGE, 24
    learnset MOVE_SWEET_SCENT, 27
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_TOXIC, 33
    learnset MOVE_VENOSHOCK, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_SYNTHESIS, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_SLUDGE_BOMB, 48
    learnset MOVE_SOLAR_BEAM, 51
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_SLUDGE_WAVE, 57
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset


levelup SPECIES_IVYSAUR
    learnset MOVE_MEGA_DRAIN, 0
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 4
    learnset MOVE_LEECH_SEED, 6
    learnset MOVE_ACID_SPRAY, 9
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_SLUDGE, 25
    learnset MOVE_SWEET_SCENT, 28
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_TOXIC, 34
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_SEED_BOMB, 40
    learnset MOVE_SYNTHESIS, 43
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_SLUDGE_BOMB, 49
    learnset MOVE_SOLAR_BEAM, 52
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_SLUDGE_WAVE, 58
    learnset MOVE_LEAF_STORM, 61
    terminatelearnset


levelup SPECIES_VENUSAUR
    learnset MOVE_PETAL_BLIZZARD, 0
    learnset MOVE_PETAL_DANCE, 0
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_AMNESIA, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_LEECH_SEED, 7
    learnset MOVE_ACID_SPRAY, 10
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_SLEEP_POWDER, 17
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_SLUDGE, 26
    learnset MOVE_SWEET_SCENT, 29
    learnset MOVE_TAKE_DOWN, 32
    learnset MOVE_TOXIC, 35
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_SYNTHESIS, 44
    learnset MOVE_ENERGY_BALL, 47
    learnset MOVE_SLUDGE_BOMB, 50
    learnset MOVE_SOLAR_BEAM, 53
    learnset MOVE_DOUBLE_EDGE, 56
    learnset MOVE_SLUDGE_WAVE, 59
    learnset MOVE_LEAF_STORM, 62
    terminatelearnset


levelup SPECIES_CHARMANDER
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_SMOKESCREEN, 9
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_RAGE, 15
    learnset MOVE_BITE, 18
    learnset MOVE_DRAGON_RAGE, 21
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_SCARY_FACE, 27
    learnset MOVE_SLASH, 30
    learnset MOVE_FLAME_BURST, 33
    learnset MOVE_DRAGON_BREATH, 36
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_FLARE_BLITZ, 45
    terminatelearnset


levelup SPECIES_CHARMELEON
    learnset MOVE_DOUBLE_KICK, 0
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_SMOKESCREEN, 10
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_RAGE, 16
    learnset MOVE_BITE, 19
    learnset MOVE_DRAGON_RAGE, 22
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_SLASH, 31
    learnset MOVE_LIGHT_SCREEN, 34
    learnset MOVE_FLAME_BURST, 37
    learnset MOVE_DRAGON_BREATH, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_FLARE_BLITZ, 46
    terminatelearnset


levelup SPECIES_CHARIZARD
    learnset MOVE_AIR_CUTTER, 0
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_METAL_CLAW, 9
    learnset MOVE_SMOKESCREEN, 11
    learnset MOVE_FIRE_SPIN, 14
    learnset MOVE_RAGE, 17
    learnset MOVE_BITE, 20
    learnset MOVE_DRAGON_RAGE, 23
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_SCARY_FACE, 29
    learnset MOVE_SLASH, 32
    learnset MOVE_LIGHT_SCREEN, 35
    learnset MOVE_FLAME_BURST, 38
    learnset MOVE_DRAGON_BREATH, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_AIR_SLASH, 47
    learnset MOVE_BLAZE_KICK, 49
    learnset MOVE_DRAGON_DANCE, 51
    learnset MOVE_HURRICANE, 54
    learnset MOVE_DRAGON_RUSH, 57
    learnset MOVE_FLARE_BLITZ, 60
    terminatelearnset


levelup SPECIES_SQUIRTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 3
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_ICY_WIND, 8
    learnset MOVE_RAPID_SPIN, 11
    learnset MOVE_BITE, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_PROTECT, 18
    learnset MOVE_RAIN_DANCE, 21
    learnset MOVE_WATER_PULSE, 24
    learnset MOVE_ICE_PUNCH, 27
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_RAIN_DANCE, 33
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_SKULL_BASH, 48
    learnset MOVE_HYDRO_PUMP, 51
    learnset MOVE_SHELL_SMASH, 54
    terminatelearnset


levelup SPECIES_WARTORTLE
    learnset MOVE_STOMP, 0
    learnset MOVE_STOMP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_WITHDRAW, 6
    learnset MOVE_ICY_WIND, 9
    learnset MOVE_RAPID_SPIN, 12
    learnset MOVE_BITE, 14
    learnset MOVE_AQUA_JET, 17    
    learnset MOVE_PROTECT, 19
    learnset MOVE_RAIN_DANCE, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ICE_PUNCH, 28
    learnset MOVE_HEADBUTT, 31
    learnset MOVE_RAIN_DANCE, 34
    learnset MOVE_IRON_DEFENSE, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_SKULL_BASH, 49
    learnset MOVE_HYDRO_PUMP, 52
    learnset MOVE_SHELL_SMASH, 55
    terminatelearnset


levelup SPECIES_BLASTOISE
    learnset MOVE_FLASH_CANNON, 0
    learnset MOVE_FLASH_CANNON, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_WITHDRAW, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_RAPID_SPIN, 13
    learnset MOVE_BITE, 15
    learnset MOVE_AQUA_JET, 18    
    learnset MOVE_PROTECT, 20
    learnset MOVE_RAIN_DANCE, 23
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_ICE_PUNCH, 29
    learnset MOVE_HEADBUTT, 32
    learnset MOVE_RAIN_DANCE, 35
    learnset MOVE_IRON_DEFENSE, 38
    learnset MOVE_BODY_SLAM, 41
    learnset MOVE_ICE_BEAM, 44
    learnset MOVE_LIQUIDATION, 47
    learnset MOVE_SKULL_BASH, 50
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_SHELL_SMASH, 56
    learnset MOVE_BLIZZARD, 59
    terminatelearnset


levelup SPECIES_CATERPIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 9
    terminatelearnset


levelup SPECIES_METAPOD
    learnset MOVE_HARDEN, 0
    learnset MOVE_HARDEN, 1
    terminatelearnset


levelup SPECIES_BUTTERFREE
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 12
    learnset MOVE_SLEEP_POWDER, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_SILVER_WIND, 19
    learnset MOVE_WHIRLWIND, 24
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_RAGE_POWDER, 37
    learnset MOVE_CAPTIVATE, 37
    learnset MOVE_TAILWIND, 38
    learnset MOVE_QUIVER_DANCE, 45
    terminatelearnset


levelup SPECIES_WEEDLE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 4
    terminatelearnset


levelup SPECIES_KAKUNA
    learnset MOVE_HARDEN, 0
    learnset MOVE_HARDEN, 1
    terminatelearnset


levelup SPECIES_BEEDRILL
    learnset MOVE_TWINEEDLE, 0
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_FURY_ATTACK, 13
    learnset MOVE_RAGE, 16
    learnset MOVE_PURSUIT, 18
    learnset MOVE_FOCUS_ENERGY, 21
    learnset MOVE_VENOSHOCK, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_TOXIC_SPIKES, 30
    learnset MOVE_U_TURN, 33
    learnset MOVE_CROSS_POISON, 36
    learnset MOVE_AGILITY, 39
    learnset MOVE_ENDEAVOR, 42
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_DRILL_RUN, 48
    learnset MOVE_POISON_JAB, 51
    learnset MOVE_SWORDS_DANCE, 54
    learnset MOVE_LUNGE, 57
    learnset MOVE_FELL_STINGER, 60
    terminatelearnset


levelup SPECIES_PIDGEY
    learnset MOVE_TACKLE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_GUST, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_WING_ATTACK, 19
    learnset MOVE_WHIRLWIND, 22
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_ROOST, 31
    learnset MOVE_PLUCK, 34
    learnset MOVE_FEATHER_DANCE, 37
    learnset MOVE_RAZOR_WIND, 40
    learnset MOVE_DOUBLE_TEAM, 43
    learnset MOVE_ACROBATICS, 46
    learnset MOVE_EXTREME_SPEED, 49
    learnset MOVE_DEFOG, 52
    learnset MOVE_AIR_SLASH, 55
    learnset MOVE_TAILWIND, 58
    terminatelearnset


levelup SPECIES_PIDGEOTTO
    learnset MOVE_TACKLE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_GUST, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_WHIRLWIND, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_ROOST, 32
    learnset MOVE_PLUCK, 35
    learnset MOVE_FEATHER_DANCE, 37
    learnset MOVE_RAZOR_WIND, 40
    learnset MOVE_DOUBLE_TEAM, 43
    learnset MOVE_ACROBATICS, 46
    learnset MOVE_EXTREME_SPEED, 49
    learnset MOVE_DEFOG, 52
    learnset MOVE_AIR_SLASH, 55
    learnset MOVE_TAILWIND, 58
    learnset MOVE_HURRICANE, 61
    learnset MOVE_BRAVE_BIRD, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_SKY_ATTACK, 70
    terminatelearnset


levelup SPECIES_PIDGEOT
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_GUST, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_WHIRLWIND, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_ROOST, 32
    learnset MOVE_PLUCK, 35
    learnset MOVE_FEATHER_DANCE, 38
    learnset MOVE_RAZOR_WIND, 41
    learnset MOVE_DOUBLE_TEAM, 44
    learnset MOVE_ACROBATICS, 47
    learnset MOVE_EXTREME_SPEED, 50
    learnset MOVE_DEFOG, 53
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_TAILWIND, 59
    learnset MOVE_HURRICANE, 62
    learnset MOVE_BRAVE_BIRD, 65
    learnset MOVE_DOUBLE_EDGE, 68
    learnset MOVE_SKY_ATTACK, 71
    terminatelearnset


levelup SPECIES_RATTATA
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_WORK_UP, 31
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_ENDEAVOR, 43
    learnset MOVE_HYPER_FANG, 46
    learnset MOVE_REVERSAL, 49
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset


levelup SPECIES_RATICATE
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_GLARE, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_WORK_UP, 34
    learnset MOVE_SUPER_FANG, 37
    learnset MOVE_LUNGE, 40
    learnset MOVE_HEADBUTT, 43
    learnset MOVE_CRUNCH, 46
    learnset MOVE_ENDEAVOR, 49
    learnset MOVE_HYPER_FANG, 52
    learnset MOVE_REVERSAL, 56
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_SPEAROW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 4
    learnset MOVE_LEER, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_FURY_ATTACK, 13
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_SAND_ATTACK, 19
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_MIRROR_MOVE, 28
    learnset MOVE_ASSURANCE, 31
    learnset MOVE_AGILITY, 34
    learnset MOVE_SUBMISSION, 37
    learnset MOVE_ROOST, 40
    learnset MOVE_DRILL_PECK, 43
    learnset MOVE_DOUBLE_TEAM, 46
    learnset MOVE_HYPER_BEAM, 49
    terminatelearnset


levelup SPECIES_FEAROW
    learnset MOVE_SONIC_BOOM, 0
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_PLUCK, 1
    learnset MOVE_DRILL_RUN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 5
    learnset MOVE_LEER, 8
    learnset MOVE_PURSUIT, 11
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_FOCUS_ENERGY, 17
    learnset MOVE_SAND_ATTACK, 20
    learnset MOVE_RAGE, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_MIRROR_MOVE, 29
    learnset MOVE_ASSURANCE, 32
    learnset MOVE_AGILITY, 35
    learnset MOVE_SUBMISSION, 38
    learnset MOVE_ROOST, 41
    learnset MOVE_DRILL_PECK, 44
    learnset MOVE_DOUBLE_TEAM, 47
    learnset MOVE_HYPER_BEAM, 50
    terminatelearnset


levelup SPECIES_EKANS
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_BITE, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_GLARE, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_SLAM, 19
    learnset MOVE_DISABLE, 21
    learnset MOVE_STOCKPILE, 24
    learnset MOVE_SWALLOW, 24
    learnset MOVE_SPIT_UP, 24
    learnset MOVE_POISON_TAIL, 27
    learnset MOVE_MUD_BOMB, 30
    learnset MOVE_GASTRO_ACID, 33
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_TOXIC, 39
    learnset MOVE_SLUDGE_BOMB, 42
    learnset MOVE_HAZE, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_BELCH, 52
    learnset MOVE_COIL, 55
    learnset MOVE_GUNK_SHOT, 58
    terminatelearnset


levelup SPECIES_ARBOK
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_BITE, 8
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_GLARE, 14
    learnset MOVE_SCREECH, 17
    learnset MOVE_SLAM, 20
    learnset MOVE_DISABLE, 22
    learnset MOVE_STOCKPILE, 25
    learnset MOVE_SWALLOW, 25
    learnset MOVE_SPIT_UP, 25
    learnset MOVE_POISON_TAIL, 28
    learnset MOVE_MUD_BOMB, 31
    learnset MOVE_GASTRO_ACID, 34
    learnset MOVE_KNOCK_OFF, 37
    learnset MOVE_TOXIC, 40
    learnset MOVE_SLUDGE_BOMB, 43
    learnset MOVE_HAZE, 46
    learnset MOVE_CRUNCH, 49
    learnset MOVE_BELCH, 53
    learnset MOVE_COIL, 56
    learnset MOVE_GUNK_SHOT, 59
    terminatelearnset


levelup SPECIES_PIKACHU
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_PLAY_NICE, 3
    learnset MOVE_NUZZLE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_SWEET_KISS, 11
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_DOUBLE_TEAM, 17
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_SWIFT, 21
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SPARK, 27
    learnset MOVE_SLAM, 29
    learnset MOVE_DIG, 31
    learnset MOVE_DISCHARGE, 33
    learnset MOVE_AGILITY, 35
    learnset MOVE_ENCORE, 37
    learnset MOVE_IRON_TAIL, 41
    learnset MOVE_WILD_CHARGE, 43
    learnset MOVE_NASTY_PLOT, 45
    learnset MOVE_THUNDERBOLT, 48
    learnset MOVE_LIGHT_SCREEN, 50
    learnset MOVE_THUNDER, 57
    learnset MOVE_VOLT_TACKLE, 60
    terminatelearnset


levelup SPECIES_RAICHU
    learnset MOVE_THUNDER_PUNCH, 0
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_PLAY_NICE, 3
    learnset MOVE_NUZZLE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_SWEET_KISS, 11
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_DOUBLE_TEAM, 17
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_SWIFT, 21
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SPARK, 27
    learnset MOVE_SLAM, 29
    learnset MOVE_DIG, 31
    learnset MOVE_DISCHARGE, 33
    learnset MOVE_AGILITY, 35
    learnset MOVE_ENCORE, 37
    learnset MOVE_IRON_TAIL, 41
    learnset MOVE_WILD_CHARGE, 43
    learnset MOVE_NASTY_PLOT, 45
    learnset MOVE_THUNDERBOLT, 48
    learnset MOVE_LIGHT_SCREEN, 51
    learnset MOVE_HYPER_BEAM, 54
    learnset MOVE_THUNDER, 57
    terminatelearnset


levelup SPECIES_SANDSHREW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_SAND_ATTACK, 3
    learnset MOVE_POISON_STING, 5
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_FOCUS_ENERGY, 11
    learnset MOVE_FURY_CUTTER, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_PROTECT, 23
    learnset MOVE_SWIFT, 27
    learnset MOVE_FURY_CUTTER, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_GYRO_BALL, 37
    learnset MOVE_SLASH, 40
    learnset MOVE_DRILL_RUN, 43
    learnset MOVE_SANDSTORM, 46
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_HIGH_HORSEPOWER, 55
    learnset MOVE_POISON_JAB, 58
    learnset MOVE_EARTH_POWER, 62
    learnset MOVE_GUNK_SHOT, 65
    terminatelearnset


levelup SPECIES_SANDSLASH
    learnset MOVE_CRUSH_CLAW, 0
    learnset MOVE_CRUSH_CLAW, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_SAND_ATTACK, 3
    learnset MOVE_POISON_STING, 5
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_FOCUS_ENERGY, 11
    learnset MOVE_FURY_CUTTER, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_PROTECT, 23
    learnset MOVE_SWIFT, 27
    learnset MOVE_FURY_CUTTER, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_GYRO_BALL, 37
    learnset MOVE_SLASH, 40
    learnset MOVE_DRILL_RUN, 43
    learnset MOVE_SANDSTORM, 46
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_HIGH_HORSEPOWER, 55
    learnset MOVE_POISON_JAB, 58
    learnset MOVE_EARTH_POWER, 62
    learnset MOVE_GUNK_SHOT, 65
    terminatelearnset


levelup SPECIES_NIDORAN_F
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_ACID, 13
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_BITE, 17
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_POISON_FANG, 23
    learnset MOVE_TOXIC_SPIKES, 26
    learnset MOVE_MUD_BOMB, 29
    learnset MOVE_HEADBUTT, 32
    learnset MOVE_HELPING_HAND, 35
    learnset MOVE_TOXIC, 38
    learnset MOVE_POISON_TAIL, 41
    learnset MOVE_FLATTER, 44
    learnset MOVE_BODY_SLAM, 47
    learnset MOVE_CAPTIVATE, 50
    learnset MOVE_EARTH_POWER, 53
    learnset MOVE_SLUDGE_BOMB, 56
    terminatelearnset


levelup SPECIES_NIDORINA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_ACID, 13
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_BITE, 19
    learnset MOVE_DOUBLE_KICK, 22
    learnset MOVE_POISON_FANG, 25
    learnset MOVE_TOXIC_SPIKES, 28
    learnset MOVE_MUD_BOMB, 31
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_HELPING_HAND, 37
    learnset MOVE_TOXIC, 40
    learnset MOVE_POISON_TAIL, 43
    learnset MOVE_FLATTER, 46
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_CAPTIVATE, 52
    learnset MOVE_EARTH_POWER, 55
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_EARTHQUAKE, 64
    learnset MOVE_SUPERPOWER, 67
    learnset MOVE_GUNK_SHOT, 71
    terminatelearnset


levelup SPECIES_NIDOQUEEN
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_ACID, 13
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_BITE, 21
    learnset MOVE_DOUBLE_KICK, 26
    learnset MOVE_POISON_FANG, 29
    learnset MOVE_TOXIC_SPIKES, 32
    learnset MOVE_MUD_BOMB, 35
    learnset MOVE_HEADBUTT, 38
    learnset MOVE_HELPING_HAND, 41
    learnset MOVE_TOXIC, 44
    learnset MOVE_POISON_TAIL, 47
    learnset MOVE_FLATTER, 50
    learnset MOVE_BODY_SLAM, 53
    learnset MOVE_CAPTIVATE, 56
    learnset MOVE_EARTH_POWER, 59
    learnset MOVE_SLUDGE_BOMB, 62
    learnset MOVE_SCALE_SHOT, 65
    learnset MOVE_EARTHQUAKE, 68
    learnset MOVE_SUPERPOWER, 71
    learnset MOVE_GUNK_SHOT, 75
    terminatelearnset


levelup SPECIES_NIDORAN_M
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_ACID, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_BITE, 17
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_POISON_FANG, 23
    learnset MOVE_TOXIC_SPIKES, 26
    learnset MOVE_MUD_BOMB, 29
    learnset MOVE_HORN_ATTACK, 32
    learnset MOVE_HELPING_HAND, 35
    learnset MOVE_TOXIC, 38
    learnset MOVE_POISON_TAIL, 41
    learnset MOVE_DRAGON_TAIL, 44
    learnset MOVE_POISON_JAB, 47
    learnset MOVE_IRON_TAIL, 50
    learnset MOVE_EARTH_POWER, 53
    learnset MOVE_SLUDGE_BOMB, 56
    terminatelearnset


levelup SPECIES_NIDORINO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_ACID, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_BITE, 19
    learnset MOVE_DOUBLE_KICK, 22
    learnset MOVE_POISON_FANG, 25
    learnset MOVE_TOXIC_SPIKES, 28
    learnset MOVE_MUD_BOMB, 31
    learnset MOVE_HORN_ATTACK, 34
    learnset MOVE_HELPING_HAND, 37
    learnset MOVE_TOXIC, 40
    learnset MOVE_POISON_TAIL, 43
    learnset MOVE_DRAGON_TAIL, 46
    learnset MOVE_POISON_JAB, 49
    learnset MOVE_IRON_TAIL, 52
    learnset MOVE_EARTH_POWER, 55
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_EARTHQUAKE, 61
    learnset MOVE_THRASH, 64
    learnset MOVE_MEGAHORN, 67
    learnset MOVE_GUNK_SHOT, 71
    terminatelearnset


levelup SPECIES_NIDOKING
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_ACID, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_BITE, 21
    learnset MOVE_DOUBLE_KICK, 25
    learnset MOVE_POISON_FANG, 28
    learnset MOVE_TOXIC_SPIKES, 31
    learnset MOVE_MUD_BOMB, 34
    learnset MOVE_HORN_ATTACK, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_TOXIC, 43
    learnset MOVE_POISON_TAIL, 46
    learnset MOVE_DRAGON_TAIL, 49
    learnset MOVE_POISON_JAB, 52
    learnset MOVE_IRON_TAIL, 55
    learnset MOVE_EARTH_POWER, 58
    learnset MOVE_SLUDGE_BOMB, 61
    learnset MOVE_EARTHQUAKE, 65
    learnset MOVE_THRASH, 68
    learnset MOVE_MEGAHORN, 71
    learnset MOVE_GUNK_SHOT, 75
    terminatelearnset


levelup SPECIES_CLEFAIRY
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SPOTLIGHT, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 4
    learnset MOVE_SING, 6
    learnset MOVE_DEFENSE_CURL, 7
    learnset MOVE_DOUBLE_SLAP, 9
    learnset MOVE_SWEET_KISS, 11
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_MAGICAL_LEAF, 18
    learnset MOVE_CHARM, 21
    learnset MOVE_FAIRY_WIND, 24
    learnset MOVE_METRONOME, 27
    learnset MOVE_DRAINING_KISS, 29
    learnset MOVE_LIGHT_SCREEN, 32
    learnset MOVE_MIMIC, 34
    learnset MOVE_CALM_MIND, 38
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_METEOR_MASH, 42
    learnset MOVE_COSMIC_POWER, 46
    learnset MOVE_STORED_POWER, 48
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_MOONLIGHT, 52
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_AMNESIA, 56
    learnset MOVE_BATON_PASS, 58
    terminatelearnset


levelup SPECIES_CLEFABLE
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SPOTLIGHT, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 5
    learnset MOVE_SING, 7
    learnset MOVE_DEFENSE_CURL, 8
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_SWEET_KISS, 12
    learnset MOVE_DISARMING_VOICE, 14
    learnset MOVE_MINIMIZE, 17
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_CHARM, 22
    learnset MOVE_FAIRY_WIND, 25
    learnset MOVE_METRONOME, 28
    learnset MOVE_DRAINING_KISS, 30
    learnset MOVE_LIGHT_SCREEN, 33
    learnset MOVE_MIMIC, 35
    learnset MOVE_CALM_MIND, 39
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_METEOR_MASH, 43
    learnset MOVE_COSMIC_POWER, 47
    learnset MOVE_STORED_POWER, 49
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_MOONLIGHT, 53
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_AMNESIA, 57
    learnset MOVE_BATON_PASS, 59
    terminatelearnset


levelup SPECIES_VULPIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_DISABLE, 3
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_ROAR, 7
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_SPITE, 11
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_IMPRISON, 21
    learnset MOVE_FLAME_WHEEL, 23
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_INCINERATE, 27
    learnset MOVE_CAPTIVATE, 29
    learnset MOVE_FLAME_BURST, 31
    learnset MOVE_SAFEGUARD, 33
    learnset MOVE_HEX, 35
    learnset MOVE_DOUBLE_TEAM, 37
    learnset MOVE_SNARL, 39
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_SPITE, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_HEAT_WAVE, 54
    learnset MOVE_ENCORE, 57
    learnset MOVE_FIRE_BLAST, 60
    learnset MOVE_GRUDGE, 64
    terminatelearnset


levelup SPECIES_NINETALES
    learnset MOVE_HYPNOSIS, 0
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_DISABLE, 3
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_ROAR, 7
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_SPITE, 11
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_IMPRISON, 21
    learnset MOVE_FLAME_WHEEL, 23
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_INCINERATE, 27
    learnset MOVE_CAPTIVATE, 29
    learnset MOVE_FLAME_BURST, 31
    learnset MOVE_SAFEGUARD, 33
    learnset MOVE_HEX, 35
    learnset MOVE_DOUBLE_TEAM, 37
    learnset MOVE_SNARL, 39
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_SPITE, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_HEAT_WAVE, 54
    learnset MOVE_ENCORE, 57
    learnset MOVE_FIRE_BLAST, 60
    learnset MOVE_GRUDGE, 64
    terminatelearnset


levelup SPECIES_JIGGLYPUFF
    learnset MOVE_SING, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_SWEET_KISS, 7
    learnset MOVE_SWIFT, 10
    learnset MOVE_DISABLE, 13
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_CHARM, 18
    learnset MOVE_REST, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_MIMIC, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_GYRO_BALL, 33
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_PLAY_ROUGH, 39
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset


levelup SPECIES_WIGGLYTUFF
    learnset MOVE_SING, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_SWEET_KISS, 7
    learnset MOVE_SWIFT, 10
    learnset MOVE_DISABLE, 13
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_CHARM, 18
    learnset MOVE_REST, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_MIMIC, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_GYRO_BALL, 33
    learnset MOVE_WISH, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_STOCKPILE, 48
    learnset MOVE_SWALLOW, 48
    learnset MOVE_FLAMETHROWER, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_HYPER_VOICE, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_FOCUS_BLAST, 63
    terminatelearnset


levelup SPECIES_ZUBAT
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_HYPNOSIS, 7
    learnset MOVE_GUST, 10
    learnset MOVE_SONIC_BOOM, 13
    learnset MOVE_BITE, 16
    learnset MOVE_POISON_FANG, 18
    learnset MOVE_SCREECH, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_MEAN_LOOK, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_ACROBATICS, 33
    learnset MOVE_TOXIC, 36
    learnset MOVE_VENOSHOCK, 39
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_LEECH_LIFE, 45
    learnset MOVE_CRUNCH, 48
    learnset MOVE_HAZE, 51
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_ZEN_HEADBUTT, 57
    learnset MOVE_BRAVE_BIRD, 60
    learnset MOVE_GUNK_SHOT, 64
    terminatelearnset


levelup SPECIES_GOLBAT
    learnset MOVE_CONFUSION, 0
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_HYPNOSIS, 8
    learnset MOVE_GUST, 11
    learnset MOVE_SONIC_BOOM, 14
    learnset MOVE_BITE, 17
    learnset MOVE_POISON_FANG, 19
    learnset MOVE_SCREECH, 22
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_MEAN_LOOK, 28
    learnset MOVE_U_TURN, 31
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_TOXIC, 37
    learnset MOVE_VENOSHOCK, 40
    learnset MOVE_AIR_SLASH, 43
    learnset MOVE_LEECH_LIFE, 46
    learnset MOVE_CRUNCH, 49
    learnset MOVE_HAZE, 52
    learnset MOVE_POISON_JAB, 55
    learnset MOVE_ZEN_HEADBUTT, 58
    learnset MOVE_BRAVE_BIRD, 61
    learnset MOVE_GUNK_SHOT, 65
    terminatelearnset


levelup SPECIES_ODDISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_ACID, 4
    learnset MOVE_SWEET_SCENT, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_SLEEP_POWDER, 18
    learnset MOVE_GROWTH, 21
    learnset MOVE_TOXIC, 24
    learnset MOVE_VENOSHOCK, 27
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_GRASSY_TERRAIN, 33
    learnset MOVE_MOONLIGHT, 36
    learnset MOVE_NATURAL_GIFT, 39
    learnset MOVE_LUCKY_CHANT, 42
    learnset MOVE_DAZZLING_GLEAM, 45
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_SUNNY_DAY, 51
    learnset MOVE_WEATHER_BALL, 54
    learnset MOVE_SLUDGE_BOMB, 57
    learnset MOVE_SOLAR_BEAM, 60
    learnset MOVE_PETAL_DANCE, 64
    terminatelearnset


levelup SPECIES_GLOOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_ACID, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 17
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_GROWTH, 22
    learnset MOVE_TOXIC, 25
    learnset MOVE_VENOSHOCK, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_GRASSY_TERRAIN, 34
    learnset MOVE_MOONLIGHT, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_LUCKY_CHANT, 43
    learnset MOVE_DAZZLING_GLEAM, 46
    learnset MOVE_ENERGY_BALL, 49
    learnset MOVE_SUNNY_DAY, 52
    learnset MOVE_WEATHER_BALL, 55
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_PETAL_DANCE, 65
    terminatelearnset


levelup SPECIES_VILEPLUME
    learnset MOVE_PETAL_BLIZZARD, 0
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_AROMATHERAPY, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_ACID, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 17
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_GROWTH, 22
    learnset MOVE_TOXIC, 25
    learnset MOVE_VENOSHOCK, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_GRASSY_TERRAIN, 34
    learnset MOVE_MOONLIGHT, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_LUCKY_CHANT, 43
    learnset MOVE_DAZZLING_GLEAM, 46
    learnset MOVE_ENERGY_BALL, 49
    learnset MOVE_SUNNY_DAY, 52
    learnset MOVE_WEATHER_BALL, 55
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_PETAL_DANCE, 65
    terminatelearnset


levelup SPECIES_PARAS
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ABSORB, 4 
    learnset MOVE_INFESTATION, 7
    learnset MOVE_STRING_SHOT, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_FURY_CUTTER, 19
    learnset MOVE_STUN_SPORE, 22 
    learnset MOVE_SLEEP_POWDER, 25 
    learnset MOVE_BULLET_SEED, 27
    learnset MOVE_GROWTH, 30
    learnset MOVE_PIN_MISSILE, 33
    learnset MOVE_SLASH, 36
    learnset MOVE_TRAILBLAZE, 39
    learnset MOVE_STRENGTH_SAP, 42
    learnset MOVE_BUG_BITE, 45
    learnset MOVE_DIG, 51
    learnset MOVE_X_SCISSOR, 54
    learnset MOVE_GIGA_DRAIN, 57
    learnset MOVE_AROMATHERAPY, 60
    learnset MOVE_LEECH_LIFE, 63
    learnset MOVE_CROSS_POISON, 66
    learnset MOVE_SEED_BOMB, 69
    learnset MOVE_FIRST_IMPRESSION, 72
    terminatelearnset


levelup SPECIES_PARASECT
    learnset MOVE_SPORE, 0
    learnset MOVE_SPORE, 1
    learnset MOVE_NIGHTMARE, 1
    learnset MOVE_DREAM_EATER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ABSORB, 4 
    learnset MOVE_INFESTATION, 7
    learnset MOVE_STRING_SHOT, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_FURY_CUTTER, 19
    learnset MOVE_STUN_SPORE, 22
    learnset MOVE_BULLET_SEED, 28
    learnset MOVE_GROWTH, 31
    learnset MOVE_PIN_MISSILE, 34
    learnset MOVE_SLASH, 37
    learnset MOVE_TRAILBLAZE, 40
    learnset MOVE_STRENGTH_SAP, 43
    learnset MOVE_BUG_BITE, 46
    learnset MOVE_SHADOW_CLAW, 49
    learnset MOVE_DRAIN_PUNCH, 52
    learnset MOVE_DIG, 55
    learnset MOVE_X_SCISSOR, 58
    learnset MOVE_GIGA_DRAIN, 61
    learnset MOVE_PAIN_SPLIT, 64
    learnset MOVE_LEECH_LIFE, 67
    learnset MOVE_CROSS_POISON, 70
    learnset MOVE_SEED_BOMB, 72
    learnset MOVE_FIRST_IMPRESSION, 75
    terminatelearnset


levelup SPECIES_VENONAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_CONFUSION, 11
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_STUN_SPORE, 23
    learnset MOVE_SIGNAL_BEAM, 25
    learnset MOVE_SLEEP_POWDER, 29
    learnset MOVE_LEECH_LIFE, 35
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_POISON_FANG, 41
    learnset MOVE_PSYCHIC, 47
    terminatelearnset


levelup SPECIES_VENOMOTH
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_BUG_BUZZ, 1
    learnset MOVE_SILVER_WIND, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_CONFUSION, 11
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_STUN_SPORE, 23
    learnset MOVE_SIGNAL_BEAM, 25
    learnset MOVE_SLEEP_POWDER, 29
    learnset MOVE_LEECH_LIFE, 37
    learnset MOVE_ZEN_HEADBUTT, 41
    learnset MOVE_POISON_FANG, 47
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_BUG_BUZZ, 59
    learnset MOVE_QUIVER_DANCE, 63
    terminatelearnset


levelup SPECIES_DIGLETT
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_HONE_CLAWS, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_ENDURE, 18
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_MUD_BOMB, 24
    learnset MOVE_SANDSTORM, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_STEALTH_ROCK, 36
    learnset MOVE_NIGHT_SLASH, 39
    learnset MOVE_AGILITY, 42
    learnset MOVE_DIG, 45
    learnset MOVE_REVERSAL, 48
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_MEMENTO, 58
    learnset MOVE_FINAL_GAMBIT, 62
    learnset MOVE_STONE_EDGE, 65
    learnset MOVE_HEADLONG_RUSH, 68
    terminatelearnset


levelup SPECIES_DUGTRIO
    learnset MOVE_SAND_TOMB, 0
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_HONE_CLAWS, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_ENDURE, 19
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_SANDSTORM, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_STEALTH_ROCK, 37
    learnset MOVE_NIGHT_SLASH, 40
    learnset MOVE_AGILITY, 43
    learnset MOVE_DIG, 46
    learnset MOVE_REVERSAL, 49
    learnset MOVE_SWORDS_DANCE, 53
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_MEMENTO, 59
    learnset MOVE_FINAL_GAMBIT, 63
    learnset MOVE_STONE_EDGE, 66
    learnset MOVE_HEADLONG_RUSH, 69
    terminatelearnset


levelup SPECIES_MEOWTH
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SNARL, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_FEINT_ATTACK, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_TAUNT, 22
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SWIFT, 28
    learnset MOVE_ENCORE, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_SWAGGER, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_NASTY_PLOT, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_GUNK_SHOT, 62
    terminatelearnset


levelup SPECIES_PERSIAN
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_AMNESIA, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_DREAM_EATER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SNARL, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_FEINT_ATTACK, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_TAUNT, 22
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SWIFT, 28
    learnset MOVE_ENCORE, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_SWAGGER, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_NASTY_PLOT, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_GUNK_SHOT, 62
    terminatelearnset


levelup SPECIES_PSYDUCK
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_DISABLE, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_PSYWAVE, 25
    learnset MOVE_HIDDEN_POWER, 28 
    learnset MOVE_BUBBLE_BEAM, 31
    learnset MOVE_AMNESIA, 34
    learnset MOVE_PSYBEAM, 36
    learnset MOVE_HEADBUTT, 39 
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_WATER_PLEDGE, 48
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_UPROAR, 54
    learnset MOVE_WONDER_ROOM, 57
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_EXPANDING_FORCE, 63
    terminatelearnset


levelup SPECIES_GOLDUCK
    learnset MOVE_AQUA_JET, 0
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_DISABLE, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_PSYWAVE, 25
    learnset MOVE_HIDDEN_POWER, 28 
    learnset MOVE_BUBBLE_BEAM, 31
    learnset MOVE_PSYBEAM, 36
    learnset MOVE_AGILITY, 40
    learnset MOVE_HEADBUTT, 43
    learnset MOVE_AQUA_TAIL, 46
    learnset MOVE_EXTRASENSORY, 49
    learnset MOVE_CALM_MIND, 52
    learnset MOVE_SURF, 55
    learnset MOVE_ZEN_HEADBUTT, 58
    learnset MOVE_WONDER_ROOM, 61
    learnset MOVE_PSYCHIC, 64
    learnset MOVE_HYDRO_PUMP, 67
    learnset MOVE_EXPANDING_FORCE, 70
    terminatelearnset


levelup SPECIES_MANKEY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_SEISMIC_TOSS, 16
    learnset MOVE_SWAGGER, 18
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_SCREECH, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_DETECT, 33
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_SUBMISSION, 42
    learnset MOVE_RAGE_FIST, 45
    learnset MOVE_AGILITY, 48
    learnset MOVE_CROSS_CHOP, 51
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_STOMPING_TANTRUM, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_FINAL_GAMBIT, 68
    terminatelearnset


levelup SPECIES_PRIMEAPE
    learnset MOVE_RAGE, 0
    learnset MOVE_RAGE, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_SEISMIC_TOSS, 16
    learnset MOVE_SWAGGER, 18
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_SCREECH, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_DETECT, 33
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_SUBMISSION, 42
    learnset MOVE_RAGE_FIST, 45
    learnset MOVE_AGILITY, 48
    learnset MOVE_CROSS_CHOP, 51
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_STOMPING_TANTRUM, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_FINAL_GAMBIT, 68
    terminatelearnset


levelup SPECIES_GROWLITHE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_HOWL, 7
    learnset MOVE_BITE, 10
    learnset MOVE_FLAME_WHEEL, 13
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_SNARL, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_WORK_UP, 27
    learnset MOVE_THUNDER_FANG, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_FLAME_BURST, 36
    learnset MOVE_AGILITY, 39
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_ROAR, 48
    learnset MOVE_PLAY_ROUGH, 52
    learnset MOVE_REVERSAL, 55
    learnset MOVE_EXTREME_SPEED, 58
    learnset MOVE_FLARE_BLITZ, 62
    learnset MOVE_RAGING_FURY, 65
    terminatelearnset


levelup SPECIES_ARCANINE
    learnset MOVE_RAGE, 0
    learnset MOVE_RAGE, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_HOWL, 9
    learnset MOVE_BITE, 12
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_HELPING_HAND, 18
    learnset MOVE_SNARL, 20
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_WORK_UP, 29
    learnset MOVE_THUNDER_FANG, 32
    learnset MOVE_CRUNCH, 35
    learnset MOVE_FLAME_BURST, 38
    learnset MOVE_AGILITY, 41
    learnset MOVE_FLAMETHROWER, 44
    learnset MOVE_TAKE_DOWN, 47
    learnset MOVE_ROAR, 50
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_REVERSAL, 57
    learnset MOVE_EXTREME_SPEED, 60
    learnset MOVE_FLARE_BLITZ, 64
    learnset MOVE_RAGING_FURY, 67
    terminatelearnset


levelup SPECIES_POLIWAG
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_WATER_GUN, 13
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_DOUBLE_SLAP, 19
    learnset MOVE_WHIRLPOOL, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_LIFE_DEW, 28
    learnset MOVE_MUD_SHOT, 31
    learnset MOVE_BUBBLE_BEAM, 34
    learnset MOVE_WAKE_UP_SLAP, 37
    learnset MOVE_RAIN_DANCE, 40
    learnset MOVE_SCALD, 43
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_WATERFALL, 49
    learnset MOVE_BELLY_DRUM, 52
    learnset MOVE_HYDRO_PUMP, 55
    terminatelearnset


levelup SPECIES_POLIWHIRL
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_WATER_GUN, 13
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_DOUBLE_SLAP, 19
    learnset MOVE_WHIRLPOOL, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_DIZZY_PUNCH, 28
    learnset MOVE_LIFE_DEW, 31
    learnset MOVE_MUD_SHOT, 34
    learnset MOVE_BUBBLE_BEAM, 37
    learnset MOVE_WAKE_UP_SLAP, 40
    learnset MOVE_MEGA_PUNCH, 43
    learnset MOVE_RAIN_DANCE, 46
    learnset MOVE_SCALD, 49
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_WATERFALL, 55
    learnset MOVE_BELLY_DRUM, 58
    learnset MOVE_ICE_PUNCH, 61
    learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_POLIWRATH
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_WATER_GUN, 13
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_DOUBLE_SLAP, 19
    learnset MOVE_WHIRLPOOL, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_DIZZY_PUNCH, 28
    learnset MOVE_LIFE_DEW, 31
    learnset MOVE_MUD_SHOT, 34
    learnset MOVE_JET_PUNCH, 37
    learnset MOVE_WAKE_UP_SLAP, 40
    learnset MOVE_BULK_UP, 43
    learnset MOVE_RAIN_DANCE, 46
    learnset MOVE_DRAIN_PUNCH, 49
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_LIQUIDATION, 55
    learnset MOVE_CROSS_CHOP, 58
    learnset MOVE_BELLY_DRUM, 61
    learnset MOVE_ICE_PUNCH, 64
    learnset MOVE_WAVE_CRASH, 67
    learnset MOVE_CLOSE_COMBAT, 70
    learnset MOVE_FOCUS_PUNCH, 73
    terminatelearnset


levelup SPECIES_ABRA
    learnset MOVE_TELEPORT, 1
    terminatelearnset


levelup SPECIES_KADABRA
    learnset MOVE_CONFUSION, 0
    learnset MOVE_KINESIS, 0
    learnset MOVE_DISABLE, 0
    learnset MOVE_CONFUSION, 1
    learnset MOVE_KINESIS, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_REFLECT, 20
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_ICY_WIND, 23
    learnset MOVE_PSYCHO_CUT, 26
    learnset MOVE_RECOVER, 29
    learnset MOVE_PSYBEAM, 32
    learnset MOVE_HYPNOSIS, 35
    learnset MOVE_AURA_SPHERE, 38
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_TRI_ATTACK, 46
    learnset MOVE_CALM_MIND, 50
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_SHADOW_BALL, 58
    learnset MOVE_NASTY_PLOT, 62
    learnset MOVE_FUTURE_SIGHT, 65
    terminatelearnset


levelup SPECIES_ALAKAZAM
    learnset MOVE_BARRIER, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_KINESIS, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_REFLECT, 20
    learnset MOVE_LIGHT_SCREEN, 20
    learnset MOVE_ICY_WIND, 23
    learnset MOVE_PSYCHO_CUT, 26
    learnset MOVE_RECOVER, 29
    learnset MOVE_PSYBEAM, 32
    learnset MOVE_HYPNOSIS, 35
    learnset MOVE_AURA_SPHERE, 38
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_TRI_ATTACK, 46
    learnset MOVE_CALM_MIND, 50
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_SHADOW_BALL, 58
    learnset MOVE_NASTY_PLOT, 62
    learnset MOVE_FUTURE_SIGHT, 65
    terminatelearnset


levelup SPECIES_MACHOP
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_FORESIGHT, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_REVENGE, 18
    learnset MOVE_KNOCK_OFF, 21
    learnset MOVE_BULLET_PUNCH, 24
    learnset MOVE_MACH_PUNCH, 27
    learnset MOVE_BULK_UP, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_DUAL_CHOP, 39
    learnset MOVE_DRAIN_PUNCH, 42
    learnset MOVE_PAYBACK, 45
    learnset MOVE_STRENGTH, 48
    learnset MOVE_CROSS_CHOP, 52
    learnset MOVE_POISON_JAB, 55
    learnset MOVE_HEAVY_SLAM, 58
    learnset MOVE_DYNAMIC_PUNCH, 62
    learnset MOVE_STONE_EDGE, 65
    learnset MOVE_CLOSE_COMBAT, 68
    terminatelearnset


levelup SPECIES_MACHOKE
    learnset MOVE_COMET_PUNCH, 0
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 5
    learnset MOVE_FORESIGHT, 8
    learnset MOVE_KARATE_CHOP, 11
    learnset MOVE_ROCK_THROW, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_REVENGE, 19
    learnset MOVE_KNOCK_OFF, 22
    learnset MOVE_BULLET_PUNCH, 25
    learnset MOVE_MACH_PUNCH, 28
    learnset MOVE_BULK_UP, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_LOW_SWEEP, 37
    learnset MOVE_DUAL_CHOP, 40
    learnset MOVE_DRAIN_PUNCH, 43
    learnset MOVE_PAYBACK, 46
    learnset MOVE_STRENGTH, 49
    learnset MOVE_CROSS_CHOP, 53
    learnset MOVE_POISON_JAB, 56
    learnset MOVE_HEAVY_SLAM, 59
    learnset MOVE_DYNAMIC_PUNCH, 63
    learnset MOVE_STONE_EDGE, 66
    learnset MOVE_CLOSE_COMBAT, 69
    terminatelearnset


levelup SPECIES_MACHAMP
    learnset MOVE_COUNTER, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 6
    learnset MOVE_FORESIGHT, 9
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_ROCK_THROW, 15
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_REVENGE, 20
    learnset MOVE_KNOCK_OFF, 23
    learnset MOVE_BULLET_PUNCH, 26
    learnset MOVE_MACH_PUNCH, 29
    learnset MOVE_BULK_UP, 32
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_LOW_SWEEP, 38
    learnset MOVE_DUAL_CHOP, 41
    learnset MOVE_DRAIN_PUNCH, 44
    learnset MOVE_PAYBACK, 47
    learnset MOVE_STRENGTH, 50
    learnset MOVE_CROSS_CHOP, 54
    learnset MOVE_POISON_JAB, 57
    learnset MOVE_HEAVY_SLAM, 60
    learnset MOVE_DYNAMIC_PUNCH, 64
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_BELLSPROUT
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_WRAP, 4
    learnset MOVE_ACID_SPRAY, 7
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_POISON_POWDER, 10
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_FALSE_SWIPE, 13
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_SWEET_SCENT, 18
    learnset MOVE_SLUDGE, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_LUNGE, 33
    learnset MOVE_SUNNY_DAY, 36
    learnset MOVE_WEATHER_BALL, 39
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_SLUDGE_BOMB, 52
    learnset MOVE_ENERGY_BALL, 55
    learnset MOVE_LEECH_LIFE, 58
    learnset MOVE_SOLAR_BEAM, 62
    learnset MOVE_GUNK_SHOT, 65
    learnset MOVE_LEAF_STORM, 68
    terminatelearnset


levelup SPECIES_WEEPINBELL
    learnset MOVE_LEAF_TORNADO, 0
    learnset MOVE_LEAF_TORNADO, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_SLEEP_POWDER, 11
    learnset MOVE_POISON_POWDER, 11
    learnset MOVE_STUN_SPORE, 11
    learnset MOVE_FALSE_SWIPE, 14
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_SWEET_SCENT, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_LUNGE, 34
    learnset MOVE_SUNNY_DAY, 37
    learnset MOVE_WEATHER_BALL, 40
    learnset MOVE_LEAF_BLADE, 43
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_TOXIC, 49
    learnset MOVE_SLUDGE_BOMB, 53
    learnset MOVE_ENERGY_BALL, 56
    learnset MOVE_LEECH_LIFE, 59
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_GUNK_SHOT, 66
    learnset MOVE_LEAF_STORM, 69
    terminatelearnset


levelup SPECIES_VICTREEBEL
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SPIT_UP, 1
    learnset MOVE_CLEAR_SMOG, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_SLEEP_POWDER, 11
    learnset MOVE_POISON_POWDER, 11
    learnset MOVE_STUN_SPORE, 11
    learnset MOVE_FALSE_SWIPE, 14
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_SWEET_SCENT, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_LUNGE, 34
    learnset MOVE_SUNNY_DAY, 37
    learnset MOVE_WEATHER_BALL, 40
    learnset MOVE_LEAF_BLADE, 43
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_TOXIC, 49
    learnset MOVE_SLUDGE_BOMB, 53
    learnset MOVE_ENERGY_BALL, 56
    learnset MOVE_LEECH_LIFE, 59
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_GUNK_SHOT, 66
    learnset MOVE_LEAF_STORM, 69
    terminatelearnset


levelup SPECIES_TENTACOOL
    learnset MOVE_BIND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_WRAP, 13
    learnset MOVE_ACID, 16
    learnset MOVE_WATER_PULSE, 19
    learnset MOVE_CONSTRICT, 22
    learnset MOVE_ACID_SPRAY, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_SLUDGE, 31
    learnset MOVE_BUBBLE_BEAM, 34
    learnset MOVE_CONFUSE_RAY, 37
    learnset MOVE_PSYBEAM, 40
    learnset MOVE_VENOSHOCK, 43
    learnset MOVE_CHARGE_BEAM, 46
    learnset MOVE_BRINE, 49
    learnset MOVE_ACID_ARMOR, 52
    learnset MOVE_ICE_BEAM, 55
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_TOXIC, 61
    learnset MOVE_WRING_OUT, 64
    learnset MOVE_SLUDGE_WAVE, 67
    learnset MOVE_SOLAR_BEAM, 70
    learnset MOVE_HYDRO_PUMP, 73
    terminatelearnset


levelup SPECIES_TENTACRUEL
    learnset MOVE_REFLECT_TYPE, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_WRAP, 13
    learnset MOVE_ACID, 16
    learnset MOVE_WATER_PULSE, 19
    learnset MOVE_CONSTRICT, 22
    learnset MOVE_ACID_SPRAY, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_SLUDGE, 32
    learnset MOVE_BUBBLE_BEAM, 35
    learnset MOVE_CONFUSE_RAY, 38
    learnset MOVE_PSYBEAM, 41
    learnset MOVE_VENOSHOCK, 44
    learnset MOVE_CHARGE_BEAM, 47
    learnset MOVE_BRINE, 50
    learnset MOVE_ACID_ARMOR, 53
    learnset MOVE_ICE_BEAM, 56
    learnset MOVE_SLUDGE_BOMB, 59
    learnset MOVE_TOXIC, 62
    learnset MOVE_WRING_OUT, 65
    learnset MOVE_SLUDGE_WAVE, 68
    learnset MOVE_SOLAR_BEAM, 71
    learnset MOVE_HYDRO_PUMP, 74
    terminatelearnset


levelup SPECIES_GEODUDE
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_ROCK_POLISH, 7
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_MAGNITUDE, 13
    learnset MOVE_STEALTH_ROCK, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_FIRE_PUNCH, 24
    learnset MOVE_STEALTH_ROCK, 27
    learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_GYRO_BALL, 55
    learnset MOVE_CURSE, 58
    learnset MOVE_EXPLOSION, 62
    learnset MOVE_DOUBLE_EDGE, 65
    learnset MOVE_HEAD_SMASH, 68
    terminatelearnset


levelup SPECIES_GRAVELER
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_ROCK_POLISH, 8
    learnset MOVE_ROCK_THROW, 11
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_STEALTH_ROCK, 17
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_FIRE_PUNCH, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_THUNDER_PUNCH, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_STONE_EDGE, 43
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_EARTHQUAKE, 53
    learnset MOVE_GYRO_BALL, 56
    learnset MOVE_CURSE, 59
    learnset MOVE_EXPLOSION, 63
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_HEAD_SMASH, 69
    terminatelearnset


levelup SPECIES_GOLEM
    learnset MOVE_STEAMROLLER, 1
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_FISSURE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_ROCK_POLISH, 8
    learnset MOVE_ROCK_THROW, 11
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_STEALTH_ROCK, 17
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_FIRE_PUNCH, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_THUNDER_PUNCH, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_STONE_EDGE, 43
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_EARTHQUAKE, 53
    learnset MOVE_GYRO_BALL, 56
    learnset MOVE_CURSE, 59
    learnset MOVE_EXPLOSION, 63
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_HEAD_SMASH, 69
    terminatelearnset


levelup SPECIES_PONYTA
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_DOUBLE_HIT, 13
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_STOMP, 19
    learnset MOVE_HEART_STAMP, 22
    learnset MOVE_FLAME_WHEEL, 25
    learnset MOVE_WORK_UP, 28
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_STOMPING_TANTRUM, 37
    learnset MOVE_BLAZE_KICK, 40
    learnset MOVE_MORNING_SUN, 43
    learnset MOVE_BOUNCE, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_AGILITY, 55
    learnset MOVE_PLAY_ROUGH, 58
    learnset MOVE_JUMP_KICK, 61
    learnset MOVE_HIGH_HORSEPOWER, 64
    learnset MOVE_SWORDS_DANCE, 67
    learnset MOVE_HIGH_JUMP_KICK, 70
    learnset MOVE_FLARE_BLITZ, 73
    terminatelearnset


levelup SPECIES_RAPIDASH
    learnset MOVE_SMART_STRIKE, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_DOUBLE_HIT, 13
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_STOMP, 19
    learnset MOVE_HEART_STAMP, 22
    learnset MOVE_FLAME_WHEEL, 25
    learnset MOVE_WORK_UP, 28
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_STOMPING_TANTRUM, 37
    learnset MOVE_BLAZE_KICK, 40
    learnset MOVE_MORNING_SUN, 43
    learnset MOVE_BOUNCE, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_AGILITY, 55
    learnset MOVE_PLAY_ROUGH, 58
    learnset MOVE_JUMP_KICK, 61
    learnset MOVE_HIGH_HORSEPOWER, 64
    learnset MOVE_SWORDS_DANCE, 67
    learnset MOVE_HIGH_JUMP_KICK, 70
    learnset MOVE_FLARE_BLITZ, 74
    terminatelearnset


levelup SPECIES_SLOWPOKE
    learnset MOVE_CURSE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_WATER_GUN, 6
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


levelup SPECIES_SLOWBRO
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
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
    learnset MOVE_PSYCH_UP, 41
    learnset MOVE_RAIN_DANCE, 46
    learnset MOVE_HEAL_PULSE, 51
    terminatelearnset


levelup SPECIES_MAGNEMITE
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_ELECTRO_BALL, 10
    learnset MOVE_GYRO_BALL, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SONIC_BOOM, 19
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_CHARGE, 25
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_MIRROR_SHOT, 31
    learnset MOVE_PARABOLIC_CHARGE, 34
    learnset MOVE_PSYBEAM, 37
    learnset MOVE_SCREECH, 40
    learnset MOVE_METAL_SOUND, 43
    learnset MOVE_FLASH_CANNON, 46
    learnset MOVE_RISING_VOLTAGE, 49
    learnset MOVE_MAGNET_RISE, 52
    learnset MOVE_DISCHARGE, 55
    learnset MOVE_THUNDERBOLT, 58
    learnset MOVE_THUNDER, 61
    learnset MOVE_LOCK_ON, 64
    learnset MOVE_ZAP_CANNON, 67
    learnset MOVE_STEEL_BEAM, 70
    terminatelearnset


levelup SPECIES_MAGNETON
    learnset MOVE_TRI_ATTACK, 0
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_SIGNAL_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_ELECTRO_BALL, 10
    learnset MOVE_GYRO_BALL, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SONIC_BOOM, 19
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_CHARGE, 25
    learnset MOVE_SHOCK_WAVE, 28
    learnset MOVE_MIRROR_SHOT, 32
    learnset MOVE_PARABOLIC_CHARGE, 35
    learnset MOVE_PSYBEAM, 38
    learnset MOVE_SCREECH, 41
    learnset MOVE_METAL_SOUND, 44
    learnset MOVE_FLASH_CANNON, 47
    learnset MOVE_RISING_VOLTAGE, 50
    learnset MOVE_MAGNET_RISE, 53
    learnset MOVE_DISCHARGE, 56
    learnset MOVE_THUNDERBOLT, 59
    learnset MOVE_THUNDER, 62
    learnset MOVE_LOCK_ON, 65
    learnset MOVE_ZAP_CANNON, 68
    learnset MOVE_STEEL_BEAM, 71
    terminatelearnset


levelup SPECIES_FARFETCHD
    learnset MOVE_MIRROR_MOVE, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_FURY_ATTACK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_DEFOG, 16
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_KNOCK_OFF, 21
    learnset MOVE_SLASH, 24
    learnset MOVE_SWAGGER, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_ACROBATICS, 33
    learnset MOVE_WORK_UP, 36
    learnset MOVE_STEEL_WING, 39
    learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_NIGHT_SLASH, 45
    learnset MOVE_AGILITY, 48
    learnset MOVE_LEAF_BLADE, 52
    learnset MOVE_FLY, 55
    learnset MOVE_SWORDS_DANCE, 58
    learnset MOVE_BRAVE_BIRD, 62
    learnset MOVE_SKY_ATTACK, 65
    terminatelearnset


levelup SPECIES_DODUO
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_RAGE, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_PLUCK, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_DOUBLE_HIT, 27
    learnset MOVE_LOW_KICK, 30
    learnset MOVE_FEATHER_DANCE, 33
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_LUNGE, 39
    learnset MOVE_DRILL_PECK, 42
    learnset MOVE_ACUPRESSURE, 45
    learnset MOVE_JUMP_KICK, 48
    learnset MOVE_ENDEAVOR, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_DRILL_RUN, 57
    learnset MOVE_BRAVE_BIRD, 60
    learnset MOVE_THRASH, 63
    learnset MOVE_DOUBLE_EDGE, 66
    terminatelearnset


levelup SPECIES_DODRIO
    learnset MOVE_TRI_ATTACK, 0
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_RAGE, 11
    learnset MOVE_MUD_SLAP, 14
    learnset MOVE_FURY_ATTACK, 17
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_PLUCK, 22
    learnset MOVE_AGILITY, 25
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_LOW_KICK, 31
    learnset MOVE_FEATHER_DANCE, 34
    learnset MOVE_ACROBATICS, 37
    learnset MOVE_LUNGE, 40
    learnset MOVE_DRILL_PECK, 43
    learnset MOVE_ACUPRESSURE, 46
    learnset MOVE_JUMP_KICK, 49
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_BODY_SLAM, 55
    learnset MOVE_DRILL_RUN, 58
    learnset MOVE_BRAVE_BIRD, 61
    learnset MOVE_THRASH, 64
    learnset MOVE_DOUBLE_EDGE, 67
    terminatelearnset


levelup SPECIES_SEEL
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_ENCORE, 13
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_ICE_SHARD, 18
    learnset MOVE_REST, 21
    learnset MOVE_SMART_STRIKE, 24
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_WATER_PULSE, 33
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_DRILL_RUN, 39
    learnset MOVE_DIVE, 42
    learnset MOVE_SAFEGUARD, 45
    learnset MOVE_SIGNAL_BEAM, 48
    learnset MOVE_SCALD, 51
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_HAIL, 57
    learnset MOVE_HYDRO_PUMP, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_BLIZZARD, 66
    terminatelearnset


levelup SPECIES_DEWGONG
    learnset MOVE_BUBBLE_BEAM, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_HORN_DRILL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_WATER_SPORT, 8
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_ENCORE, 14
    learnset MOVE_WHIRLPOOL, 17
    learnset MOVE_ICE_SHARD, 19
    learnset MOVE_REST, 22
    learnset MOVE_SMART_STRIKE, 25
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_WATER_PULSE, 34
    learnset MOVE_RAIN_DANCE, 37
    learnset MOVE_DRILL_RUN, 40
    learnset MOVE_DIVE, 43
    learnset MOVE_SAFEGUARD, 46
    learnset MOVE_SIGNAL_BEAM, 49
    learnset MOVE_SCALD, 52
    learnset MOVE_ICE_BEAM, 55
    learnset MOVE_HAIL, 58
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_BLIZZARD, 67
    terminatelearnset


levelup SPECIES_GRIMER
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_ACID_SPRAY, 10
    learnset MOVE_DISABLE, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_MINIMIZE, 21
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_MEMENTO, 27
    learnset MOVE_TOXIC, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_SCREECH, 39
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_ACID_ARMOR, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_SLUDGE_BOMB, 51
    learnset MOVE_SLUDGE_WAVE, 54
    learnset MOVE_GIGA_DRAIN, 57
    learnset MOVE_FIRE_BLAST, 60
    learnset MOVE_GUNK_SHOT, 63
    learnset MOVE_EXPLOSION, 66
    terminatelearnset


levelup SPECIES_MUK
    learnset MOVE_VENOM_DRENCH, 0
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_SURF, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_ACID_SPRAY, 11
    learnset MOVE_DISABLE, 14
    learnset MOVE_SLUDGE, 17
    learnset MOVE_MUD_BOMB, 19
    learnset MOVE_MINIMIZE, 22
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_MEMENTO, 28
    learnset MOVE_TOXIC, 31
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_DRAIN_PUNCH, 37
    learnset MOVE_SCREECH, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_ACID_ARMOR, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_SLUDGE_BOMB, 52
    learnset MOVE_SLUDGE_WAVE, 55
    learnset MOVE_GIGA_DRAIN, 58
    learnset MOVE_FIRE_BLAST, 61
    learnset MOVE_GUNK_SHOT, 64
    learnset MOVE_EXPLOSION, 67
    terminatelearnset


levelup SPECIES_SHELLDER
    learnset MOVE_TACKLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_LEER, 13
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_PROTECT, 21
    learnset MOVE_CLAMP, 24
    learnset MOVE_ROCK_BLAST, 27
    learnset MOVE_AVALANCHE, 30
    learnset MOVE_IRON_DEFENSE, 33
    learnset MOVE_RAZOR_SHELL, 36
    learnset MOVE_AQUA_RING, 39
    learnset MOVE_SPIKE_CANNON, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_SCREECH, 48
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_SURF, 54
    learnset MOVE_SHELL_SMASH, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_CLOYSTER
    learnset MOVE_ICICLE_SPEAR, 0
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_SPIKES, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_ICE_SHARD, 11
    learnset MOVE_LEER, 14
    learnset MOVE_WHIRLPOOL, 17
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_PROTECT, 22
    learnset MOVE_CLAMP, 25
    learnset MOVE_ROCK_BLAST, 28
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_IRON_DEFENSE, 34
    learnset MOVE_RAZOR_SHELL, 37
    learnset MOVE_AQUA_RING, 40
    learnset MOVE_SPIKE_CANNON, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_SCREECH, 49
    learnset MOVE_ICE_BEAM, 52
    learnset MOVE_SURF, 55
    learnset MOVE_SHELL_SMASH, 58
    learnset MOVE_BLIZZARD, 61
    learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_GASTLY
    learnset MOVE_LICK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_SPITE, 7
    learnset MOVE_SMOG, 10
    learnset MOVE_MEAN_LOOK, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_CLEAR_SMOG, 22
    learnset MOVE_CORROSIVE_GAS, 25
    learnset MOVE_HEX, 28
    learnset MOVE_PAYBACK, 31
    learnset MOVE_SLUDGE, 34
    learnset MOVE_PSYBEAM, 37
    learnset MOVE_NIGHTMARE, 40
    learnset MOVE_SUCKER_PUNCH, 43
    learnset MOVE_WILL_O_WISP, 46
    learnset MOVE_VENOSHOCK, 49
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_NASTY_PLOT, 55
    learnset MOVE_DARK_PULSE, 58
    learnset MOVE_SLUDGE_BOMB, 61
    learnset MOVE_PHANTOM_FORCE, 64
    learnset MOVE_SLUDGE_WAVE, 67
    learnset MOVE_DREAM_EATER, 70
    learnset MOVE_DESTINY_BOND, 73
    terminatelearnset


levelup SPECIES_HAUNTER
    learnset MOVE_SHADOW_PUNCH, 0
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_SPITE, 7
    learnset MOVE_SMOG, 10
    learnset MOVE_MEAN_LOOK, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_CLEAR_SMOG, 22
    learnset MOVE_CORROSIVE_GAS, 25
    learnset MOVE_HEX, 28
    learnset MOVE_PAYBACK, 31
    learnset MOVE_SLUDGE, 34
    learnset MOVE_PSYBEAM, 37
    learnset MOVE_NIGHTMARE, 40
    learnset MOVE_SUCKER_PUNCH, 43
    learnset MOVE_WILL_O_WISP, 46
    learnset MOVE_VENOSHOCK, 49
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_NASTY_PLOT, 55
    learnset MOVE_DARK_PULSE, 58
    learnset MOVE_SLUDGE_BOMB, 61
    learnset MOVE_PHANTOM_FORCE, 64
    learnset MOVE_SLUDGE_WAVE, 67
    learnset MOVE_DREAM_EATER, 70
    learnset MOVE_DESTINY_BOND, 73
    terminatelearnset


levelup SPECIES_GENGAR
    learnset MOVE_SHADOW_SNEAK, 0
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_LICK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_SPITE, 7
    learnset MOVE_SMOG, 10
    learnset MOVE_MEAN_LOOK, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_CLEAR_SMOG, 22
    learnset MOVE_CORROSIVE_GAS, 25
    learnset MOVE_HEX, 30
    learnset MOVE_PAYBACK, 33
    learnset MOVE_SLUDGE, 36
    learnset MOVE_PSYBEAM, 39
    learnset MOVE_NIGHTMARE, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_WILL_O_WISP, 48
    learnset MOVE_VENOSHOCK, 51
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_DARK_PULSE, 60
    learnset MOVE_SLUDGE_BOMB, 63
    learnset MOVE_PHANTOM_FORCE, 66
    learnset MOVE_SLUDGE_WAVE, 69
    learnset MOVE_DREAM_EATER, 72
    learnset MOVE_DESTINY_BOND, 75
    terminatelearnset


levelup SPECIES_ONIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 4
    learnset MOVE_MUD_SPORT, 7
    learnset MOVE_BREAKING_SWIPE, 10
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_CURSE, 16
    learnset MOVE_RAGE, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_SCREECH, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_SLAM, 36
    learnset MOVE_SANDSTORM, 39
    learnset MOVE_DIG, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_IRON_TAIL, 55
    learnset MOVE_EXPLOSION, 58
    learnset MOVE_HEAVY_SLAM, 62
    learnset MOVE_HEADLONG_RUSH, 65
    terminatelearnset


levelup SPECIES_DROWZEE
    learnset MOVE_POUND, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_HYPNOSIS, 7
    learnset MOVE_DRAINING_KISS, 10
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_POISON_GAS, 16
    learnset MOVE_CONFUSE_RAY, 18
    learnset MOVE_MEMENTO, 21
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_WAKE_UP_SLAP, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_PSYCH_UP, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_CALM_MIND, 39
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_SWAGGER, 45
    learnset MOVE_AURA_SPHERE, 48
    learnset MOVE_NASTY_PLOT, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_DARK_PULSE, 57
    learnset MOVE_DARK_VOID, 60
    learnset MOVE_DREAM_EATER, 63
    learnset MOVE_FUTURE_SIGHT, 66
    terminatelearnset


levelup SPECIES_HYPNO
    learnset MOVE_NIGHTMARE, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_HYPNOSIS, 8
    learnset MOVE_DRAINING_KISS, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_POISON_GAS, 17
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_MEMENTO, 22
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_WAKE_UP_SLAP, 28
    learnset MOVE_ZEN_HEADBUTT, 31
    learnset MOVE_PSYCH_UP, 34
    learnset MOVE_DRAIN_PUNCH, 37
    learnset MOVE_CALM_MIND, 40
    learnset MOVE_PSYSHOCK, 43
    learnset MOVE_SWAGGER, 46
    learnset MOVE_AURA_SPHERE, 49
    learnset MOVE_NASTY_PLOT, 52
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_DARK_PULSE, 58
    learnset MOVE_DARK_VOID, 61
    learnset MOVE_DREAM_EATER, 64
    learnset MOVE_FUTURE_SIGHT, 67
    terminatelearnset


levelup SPECIES_KRABBY
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_AQUA_JET, 10
    learnset MOVE_BULLDOZE, 13
    learnset MOVE_PROTECT, 16
    learnset MOVE_BUBBLE_BEAM, 18
    learnset MOVE_KNOCK_OFF, 21
    learnset MOVE_STOMP, 24
    learnset MOVE_RAZOR_SHELL, 27
    learnset MOVE_FLAIL, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_NIGHT_SLASH, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_X_SCISSOR, 48
    learnset MOVE_HAMMER_ARM, 51
    learnset MOVE_CRABHAMMER, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_GUILLOTINE, 60
    terminatelearnset


levelup SPECIES_KINGLER
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_PROTECT, 17
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_KNOCK_OFF, 22
    learnset MOVE_STOMP, 25
    learnset MOVE_RAZOR_SHELL, 28
    learnset MOVE_FLAIL, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_NIGHT_SLASH, 40
    learnset MOVE_LIQUIDATION, 43
    learnset MOVE_AGILITY, 46
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_HAMMER_ARM, 52
    learnset MOVE_CRABHAMMER, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_GUILLOTINE, 61
    terminatelearnset


levelup SPECIES_VOLTORB
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_SPARK, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_CHARGE_BEAM, 18
    learnset MOVE_SWIFT, 21
    learnset MOVE_ELECTRO_BALL, 24
    learnset MOVE_SELF_DESTRUCT, 27
    learnset MOVE_LIGHT_SCREEN, 30
    learnset MOVE_MAGNET_RISE, 33
    learnset MOVE_ZING_ZAP, 36
    learnset MOVE_MIRROR_SHOT, 39
    learnset MOVE_EXPLOSION, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_MIRROR_COAT, 48
    learnset MOVE_THUNDERBOLT, 51
    learnset MOVE_METAL_SOUND, 54
    learnset MOVE_FLASH_CANNON, 57
    learnset MOVE_THUNDER, 60
    terminatelearnset


levelup SPECIES_ELECTRODE
    learnset MOVE_MAGNETIC_FLUX, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_SPARK, 11
    learnset MOVE_ROLLOUT, 14
    learnset MOVE_SCREECH, 17
    learnset MOVE_CHARGE_BEAM, 19
    learnset MOVE_SWIFT, 22
    learnset MOVE_ELECTRO_BALL, 25
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_MAGNET_RISE, 34
    learnset MOVE_ZING_ZAP, 37
    learnset MOVE_MIRROR_SHOT, 40
    learnset MOVE_EXPLOSION, 43
    learnset MOVE_DISCHARGE, 46
    learnset MOVE_MIRROR_COAT, 49
    learnset MOVE_THUNDERBOLT, 52
    learnset MOVE_METAL_SOUND, 55
    learnset MOVE_FLASH_CANNON, 58
    learnset MOVE_THUNDER, 61
    terminatelearnset


levelup SPECIES_EXEGGCUTE
    learnset MOVE_ABSORB, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_BARRAGE, 4
    learnset MOVE_REFLECT, 7
    learnset MOVE_LEECH_SEED, 10
    learnset MOVE_CONFUSION, 13
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_STUN_SPORE, 18
    learnset MOVE_POISON_POWDER, 18
    learnset MOVE_SLEEP_POWDER, 18
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_NATURAL_GIFT, 33
    learnset MOVE_SUNNY_DAY, 36
    learnset MOVE_PSYBEAM, 39
    learnset MOVE_WORRY_SEED, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_EGG_BOMB, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_WEATHER_BALL, 54
    learnset MOVE_UPROAR, 57
    learnset MOVE_SOLAR_BEAM, 60
    learnset MOVE_LEAF_STORM, 63
    terminatelearnset


levelup SPECIES_EXEGGUTOR
    learnset MOVE_STOMP, 0
    learnset MOVE_STOMP, 1
    learnset MOVE_SEED_BOMB, 1
    learnset MOVE_PSYSHOCK, 1
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_BARRAGE, 5
    learnset MOVE_REFLECT, 8
    learnset MOVE_LEECH_SEED, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_STUN_SPORE, 19
    learnset MOVE_POISON_POWDER, 19
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_NATURAL_GIFT, 34
    learnset MOVE_SUNNY_DAY, 37
    learnset MOVE_PSYBEAM, 40
    learnset MOVE_WORRY_SEED, 43
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_EGG_BOMB, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_WEATHER_BALL, 55
    learnset MOVE_UPROAR, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_LEAF_STORM, 64
    terminatelearnset


levelup SPECIES_CUBONE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_BONE_CLUB, 7
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_LEER, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_DETECT, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_FALSE_SWIPE, 24
    learnset MOVE_STEALTH_ROCK, 27
    learnset MOVE_BONE_RUSH, 30
    learnset MOVE_AERIAL_ACE, 33
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_BULK_UP, 42
    learnset MOVE_BONEMERANG, 45
    learnset MOVE_IRON_HEAD, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_SWORDS_DANCE, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_HEADLONG_RUSH, 62
    learnset MOVE_HEAD_SMASH, 65
    terminatelearnset


levelup SPECIES_MAROWAK
    learnset MOVE_FISSURE, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_BONE_CLUB, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_LEER, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_DETECT, 19
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_FALSE_SWIPE, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_BONE_RUSH, 31
    learnset MOVE_AERIAL_ACE, 34
    learnset MOVE_ENDEAVOR, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_BULK_UP, 43
    learnset MOVE_BONEMERANG, 46
    learnset MOVE_IRON_HEAD, 49
    learnset MOVE_ROCK_SLIDE, 53
    learnset MOVE_SWORDS_DANCE, 56
    learnset MOVE_DOUBLE_EDGE, 59
    learnset MOVE_HEADLONG_RUSH, 63
    learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_HITMONLEE
    learnset MOVE_DOUBLE_KICK, 0
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_REVENGE, 1
    learnset MOVE_LOW_SWEEP, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_MEDITATE, 4
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_FEINT, 18
    learnset MOVE_ROLLING_KICK, 21
    learnset MOVE_DETECT, 24
    learnset MOVE_RAPID_SPIN, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_KNOCK_OFF, 33
    learnset MOVE_ENDURE, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_JUMP_KICK, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_REVERSAL, 48
    learnset MOVE_AXE_KICK, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_BLAZE_KICK, 57
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_HITMONCHAN
    learnset MOVE_COMET_PUNCH, 0
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_REVENGE, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_MEDITATE, 4
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_FEINT, 18
    learnset MOVE_MACH_PUNCH, 21
    learnset MOVE_DETECT, 24
    learnset MOVE_BULLET_PUNCH, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_KNOCK_OFF, 33
    learnset MOVE_ENDURE, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_FIRE_PUNCH, 42
    learnset MOVE_THUNDER_PUNCH, 42
    learnset MOVE_ICE_PUNCH, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_SKY_UPPERCUT, 48
    learnset MOVE_COUNTER, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_MEGA_PUNCH, 57
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_LICKITUNG
    learnset MOVE_LICK, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_DEFENSE_CURL, 9
    learnset MOVE_WRAP, 17
    learnset MOVE_ROLLOUT, 18
    learnset MOVE_DISABLE, 24
    learnset MOVE_STOMP, 25
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_CHIP_AWAY, 37
    learnset MOVE_SLAM, 39
    learnset MOVE_ME_FIRST, 41
    learnset MOVE_SCREECH, 45
    learnset MOVE_REFRESH, 45
    learnset MOVE_POWER_WHIP, 53
    learnset MOVE_WRING_OUT, 57
    learnset MOVE_BELLY_DRUM, 60
    terminatelearnset


levelup SPECIES_KOFFING
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_SMOKESCREEN, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_INCINERATE, 16
    learnset MOVE_CURSE, 18
    learnset MOVE_SLUDGE, 21
    learnset MOVE_HAZE, 24
    learnset MOVE_SELF_DESTRUCT, 27
    learnset MOVE_GYRO_BALL, 30
    learnset MOVE_TOXIC, 33
    learnset MOVE_VENOSHOCK, 36
    learnset MOVE_WILL_O_WISP, 39
    learnset MOVE_EXPLOSION, 42
    learnset MOVE_SLUDGE_BOMB, 45
    learnset MOVE_DESTINY_BOND, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_PAIN_SPLIT, 54
    learnset MOVE_FLAMETHROWER, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_FIRE_BLAST, 63
    terminatelearnset


levelup SPECIES_WEEZING
    learnset MOVE_DOUBLE_HIT, 0
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_ASSURANCE, 11
    learnset MOVE_CLEAR_SMOG, 14
    learnset MOVE_INCINERATE, 17
    learnset MOVE_CURSE, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_HAZE, 25
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_GYRO_BALL, 31
    learnset MOVE_TOXIC, 34
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_WILL_O_WISP, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_SLUDGE_BOMB, 47
    learnset MOVE_DESTINY_BOND, 49
    learnset MOVE_DARK_PULSE, 52
    learnset MOVE_PAIN_SPLIT, 55
    learnset MOVE_FLAMETHROWER, 58
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_FIRE_BLAST, 64
    terminatelearnset


levelup SPECIES_RHYHORN
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_FURY_ATTACK, 7
    learnset MOVE_SCARY_FACE, 10
    learnset MOVE_ROCK_THROW, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_ROCK_POLISH, 18
    learnset MOVE_STOMP, 21
    learnset MOVE_HORN_ATTACK, 24
    learnset MOVE_STEALTH_ROCK, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_CURSE, 33
    learnset MOVE_SMART_STRIKE, 36
    learnset MOVE_TAKE_DOWN, 39
    learnset MOVE_DRILL_RUN, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_SANDSTORM, 48
    learnset MOVE_HIGH_HORSEPOWER, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_EARTHQUAKE, 60
    terminatelearnset


levelup SPECIES_RHYDON
    learnset MOVE_HAMMER_ARM, 0
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_FURY_ATTACK, 8
    learnset MOVE_SCARY_FACE, 11
    learnset MOVE_ROCK_THROW, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_ROCK_POLISH, 19
    learnset MOVE_STOMP, 22
    learnset MOVE_HORN_ATTACK, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_CURSE, 34
    learnset MOVE_SMART_STRIKE, 37
    learnset MOVE_TAKE_DOWN, 40
    learnset MOVE_DRILL_RUN, 43
    learnset MOVE_CRUNCH, 46
    learnset MOVE_SANDSTORM, 49
    learnset MOVE_HIGH_HORSEPOWER, 52
    learnset MOVE_STONE_EDGE, 55
    learnset MOVE_MEGAHORN, 58
    learnset MOVE_EARTHQUAKE, 61
    terminatelearnset


levelup SPECIES_CHANSEY
    learnset MOVE_DOUBLE_SLAP, 0
    learnset MOVE_DOUBLE_SLAP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_REFRESH, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_COVET, 16
    learnset MOVE_CHARM, 18
    learnset MOVE_DRAINING_KISS, 21
    learnset MOVE_SWIFT, 24
    learnset MOVE_SING, 27
    learnset MOVE_EGG_BOMB, 30
    learnset MOVE_REFLECT, 33
    learnset MOVE_LIGHT_SCREEN, 33
    learnset MOVE_SEISMIC_TOSS, 36
    learnset MOVE_SOFT_BOILED, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_HELPING_HAND, 45
    learnset MOVE_DAZZLING_GLEAM, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_PAIN_SPLIT, 55
    learnset MOVE_HEALING_WISH, 58
    learnset MOVE_BOOMBURST, 62
    terminatelearnset


levelup SPECIES_TANGELA
    learnset MOVE_ABSORB, 1
    learnset MOVE_BIND, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_ABSORB, 10
    learnset MOVE_VINE_WHIP, 11
    learnset MOVE_GROWTH, 13
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_BIND, 17
    learnset MOVE_SLEEP_POWDER, 21
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_NATURAL_GIFT, 33
    learnset MOVE_SLAM, 40
    learnset MOVE_TICKLE, 44
    learnset MOVE_WRING_OUT, 46
    learnset MOVE_POWER_WHIP, 48
    learnset MOVE_INGRAIN, 52
    learnset MOVE_GRASSY_TERRAIN, 52
    terminatelearnset


levelup SPECIES_KANGASKHAN
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_RAGE, 10
    learnset MOVE_BITE, 13
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_POWER_UP_PUNCH, 18
    learnset MOVE_WORK_UP, 21
    learnset MOVE_STOMP, 24
    learnset MOVE_SUCKER_PUNCH, 27
    learnset MOVE_DRAIN_PUNCH, 30
    learnset MOVE_HEADBUTT, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_ENDURE, 39
    learnset MOVE_REVERSAL, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_HAMMER_ARM, 48
    learnset MOVE_DOUBLE_TEAM, 51
    learnset MOVE_IRON_TAIL, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_LAST_RESORT, 63
    terminatelearnset


levelup SPECIES_HORSEA
    learnset MOVE_BUBBLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 4
    learnset MOVE_ICY_WIND, 7
    learnset MOVE_TWISTER, 10
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_FOCUS_ENERGY, 18
    learnset MOVE_DRAGON_BREATH, 21
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_BRINE, 30
    learnset MOVE_AGILITY, 33
    learnset MOVE_FLIP_TURN, 36
    learnset MOVE_RAIN_DANCE, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_FLASH_CANNON, 51
    learnset MOVE_SURF, 54
    learnset MOVE_DRAGON_DANCE, 57
    learnset MOVE_HYDRO_PUMP, 60
    learnset MOVE_DRACO_METEOR, 63
    terminatelearnset


levelup SPECIES_SEADRA
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_ICY_WIND, 8
    learnset MOVE_TWISTER, 11
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_CLEAR_SMOG, 17
    learnset MOVE_FOCUS_ENERGY, 19
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_BRINE, 31
    learnset MOVE_AGILITY, 34
    learnset MOVE_FLIP_TURN, 37
    learnset MOVE_RAIN_DANCE, 40
    learnset MOVE_LIQUIDATION, 43
    learnset MOVE_DRAGON_PULSE, 46
    learnset MOVE_ICE_BEAM, 49
    learnset MOVE_FLASH_CANNON, 52
    learnset MOVE_SURF, 55
    learnset MOVE_DRAGON_DANCE, 58
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_DRACO_METEOR, 64
    terminatelearnset


levelup SPECIES_GOLDEEN
    learnset MOVE_PECK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_AQUA_JET, 4
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_FURY_ATTACK, 10
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_RAIN_DANCE, 16
    learnset MOVE_AQUA_RING, 18
    learnset MOVE_FLAIL, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_HORN_ATTACK, 27
    learnset MOVE_SCALD, 30
    learnset MOVE_SOAK, 33
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_DOUBLE_TEAM, 39
    learnset MOVE_WATERFALL, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_AQUA_TAIL, 51
    learnset MOVE_DRILL_RUN, 54
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_THRASH, 60
    learnset MOVE_WAVE_CRASH, 63
    terminatelearnset


levelup SPECIES_SEAKING
    learnset MOVE_HAZE, 0
    learnset MOVE_HAZE, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_AQUA_JET, 4
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_FURY_ATTACK, 10
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_RAIN_DANCE, 16
    learnset MOVE_AQUA_RING, 18
    learnset MOVE_FLAIL, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_HORN_ATTACK, 27
    learnset MOVE_SCALD, 30
    learnset MOVE_SOAK, 33
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_DOUBLE_TEAM, 39
    learnset MOVE_WATERFALL, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_AQUA_TAIL, 51
    learnset MOVE_DRILL_RUN, 54
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_THRASH, 60
    learnset MOVE_WAVE_CRASH, 63
    terminatelearnset


levelup SPECIES_STARYU
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_CONFUSE_RAY, 7
    learnset MOVE_RAPID_SPIN, 10
    learnset MOVE_CONFUSION, 13
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_SWIFT, 18
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_MINIMIZE, 30
    learnset MOVE_BRINE, 33
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_REFLECT, 36
    learnset MOVE_GYRO_BALL, 39
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_SCALD, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_COSMIC_POWER, 57
    learnset MOVE_DAZZLING_GLEAM, 60
    learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_STARMIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_RAPID_SPIN, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_DOUBLE_TEAM, 17
    learnset MOVE_SWIFT, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_CONFUSE_RAY, 25
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_MINIMIZE, 31
    learnset MOVE_BRINE, 34
    learnset MOVE_LIGHT_SCREEN, 37
    learnset MOVE_REFLECT, 37
    learnset MOVE_GYRO_BALL, 40
    learnset MOVE_EXTRASENSORY, 43
    learnset MOVE_SCALD, 46
    learnset MOVE_RECOVER, 49
    learnset MOVE_ICE_BEAM, 52
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_COSMIC_POWER, 58
    learnset MOVE_DAZZLING_GLEAM, 61
    learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_MR_MIME
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_POWER_SWAP, 1
    learnset MOVE_GUARD_SWAP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_BARRIER, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_COPYCAT, 4
    learnset MOVE_MEDITATE, 8
    learnset MOVE_DOUBLE_SLAP, 11
    learnset MOVE_CONFUSION, 12
    learnset MOVE_PSYWAVE, 15
    learnset MOVE_ENCORE, 18
    learnset MOVE_PROTECT, 20
    learnset MOVE_MIMIC, 24
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_RECYCLE, 27
    learnset MOVE_ROLE_PLAY, 28
    learnset MOVE_LIGHT_SCREEN, 29
    learnset MOVE_REFLECT, 29
    learnset MOVE_SUBSTITUTE, 29
    learnset MOVE_TRICK, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_SAFEGUARD, 42
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_DAZZLING_GLEAM, 44
    learnset MOVE_BATON_PASS, 46
    learnset MOVE_TEETER_DANCE, 52
    terminatelearnset


levelup SPECIES_SCYTHER
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_FALSE_SWIPE, 7
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_POUNCE, 18
    learnset MOVE_DOUBLE_HIT, 21
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_FOCUS_ENERGY, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_AGILITY, 33
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_DUAL_WINGBEAT, 48
    learnset MOVE_NIGHT_SLASH, 51
    learnset MOVE_ENDURE, 54
    learnset MOVE_REVERSAL, 57
    learnset MOVE_AIR_SLASH, 60
    learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset


levelup SPECIES_JYNX
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_LICK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DRAINING_KISS, 1
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_LOVELY_KISS, 1
    learnset MOVE_LICK, 5
    learnset MOVE_POWDER_SNOW, 11
    learnset MOVE_CONFUSION, 12
    learnset MOVE_DOUBLE_SLAP, 15
    learnset MOVE_COVET, 16
    learnset MOVE_SING, 20
    learnset MOVE_HEART_STAMP, 21
    learnset MOVE_ICE_PUNCH, 23
    learnset MOVE_FAKE_TEARS, 25
    learnset MOVE_LOVELY_KISS, 25
    learnset MOVE_WAKE_UP_SLAP, 33
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_MEAN_LOOK, 36
    learnset MOVE_AVALANCHE, 39
    learnset MOVE_BODY_SLAM, 44
    learnset MOVE_WRING_OUT, 49
    learnset MOVE_PERISH_SONG, 53
    learnset MOVE_BLIZZARD, 58
    terminatelearnset


levelup SPECIES_ELECTABUZZ
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_LOW_KICK, 11
    learnset MOVE_SWIFT, 14
    learnset MOVE_SHOCK_WAVE, 17
    learnset MOVE_CHARGE, 19
    learnset MOVE_LOW_SWEEP, 22
    learnset MOVE_FOLLOW_ME, 25
    learnset MOVE_THUNDER_PUNCH, 28
    learnset MOVE_SCREECH, 31
    learnset MOVE_VOLT_SWITCH, 34
    learnset MOVE_LIGHT_SCREEN, 37
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_DISCHARGE, 43
    learnset MOVE_DRAIN_PUNCH, 46
    learnset MOVE_ELECTRIC_TERRAIN, 49
    learnset MOVE_THUNDERBOLT, 52
    learnset MOVE_BULK_UP, 55
    learnset MOVE_CROSS_CHOP, 58
    learnset MOVE_SUPERCELL_SLAM, 61
    learnset MOVE_THUNDER, 64
    learnset MOVE_GIGA_IMPACT, 67
    terminatelearnset


levelup SPECIES_MAGMAR
    learnset MOVE_SMOG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_FIRE_SPIN, 11
    learnset MOVE_WILL_O_WISP, 14
    learnset MOVE_CLEAR_SMOG, 17
    learnset MOVE_THIEF, 19
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_VACUUM_WAVE, 25
    learnset MOVE_FIRE_PUNCH, 28
    learnset MOVE_FOLLOW_ME, 31
    learnset MOVE_FLAME_BURST, 34
    learnset MOVE_SCORCHING_SANDS, 37
    learnset MOVE_SUNNY_DAY, 40
    learnset MOVE_LAVA_PLUME, 43
    learnset MOVE_TAUNT, 46
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_THUNDERBOLT, 55
    learnset MOVE_AURA_SPHERE, 58
    learnset MOVE_SEARING_SHOT, 61
    learnset MOVE_SOLAR_BEAM, 64
    terminatelearnset


levelup SPECIES_PINSIR
    learnset MOVE_SEISMIC_TOSS, 1 
    learnset MOVE_ENDURE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 4 
    learnset MOVE_STRUGGLE_BUG, 6
    learnset MOVE_ROCK_THROW, 9 
    learnset MOVE_ENDURE, 12 
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_VITAL_THROW, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_PIN_MISSILE, 23
    learnset MOVE_BULK_UP, 25
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_U_TURN, 31
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_STORM_THROW, 41
    learnset MOVE_STEALTH_ROCK, 44
    learnset MOVE_KNOCK_OFF, 47
    learnset MOVE_FIRST_IMPRESSION, 49
    learnset MOVE_SWORDS_DANCE, 53
    learnset MOVE_EARTHQUAKE, 59 
    learnset MOVE_MEGAHORN, 62
    learnset MOVE_SUPERPOWER, 66
    learnset MOVE_DOUBLE_EDGE, 70 
    terminatelearnset


levelup SPECIES_TAUROS
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_PAYBACK, 4
    learnset MOVE_WORK_UP, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_FLAME_CHARGE, 13
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_ENDURE, 18
    learnset MOVE_HORN_ATTACK, 21
    learnset MOVE_SCARY_FACE, 24
    learnset MOVE_STOMP, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_AGILITY, 33
    learnset MOVE_FACADE, 36
    learnset MOVE_REVERSAL, 39
    learnset MOVE_REST, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_SWAGGER, 51
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_WILD_CHARGE, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_GIGA_IMPACT, 66
    terminatelearnset


levelup SPECIES_MAGIKARP
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_FLAIL, 15
    terminatelearnset


levelup SPECIES_GYARADOS
    learnset MOVE_BITE, 0
    learnset MOVE_BITE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_FLAIL, 15
    learnset MOVE_DRAGON_RAGE, 21
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_SCARY_FACE, 27
    learnset MOVE_BRINE, 30
    learnset MOVE_RAIN_DANCE, 33
    learnset MOVE_OUTRAGE, 36
    learnset MOVE_TAUNT, 39
    learnset MOVE_WATERFALL, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_DRAGON_DANCE, 48
    learnset MOVE_BOUNCE, 51
    learnset MOVE_AQUA_TAIL, 54
    learnset MOVE_IRON_HEAD, 57
    learnset MOVE_HURRICANE, 60
    learnset MOVE_WAVE_CRASH, 63
    learnset MOVE_THRASH, 66
    learnset MOVE_GIGA_IMPACT, 69
    terminatelearnset


levelup SPECIES_LAPRAS
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SING, 1
    learnset MOVE_SING, 5
    learnset MOVE_MIST, 7
    learnset MOVE_LIFE_DEW, 15
    learnset MOVE_ICE_SHARD, 15
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_BRINE, 35
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_ICE_BEAM, 38
    learnset MOVE_SAFEGUARD, 43
    learnset MOVE_PERISH_SONG, 44
    learnset MOVE_HYDRO_PUMP, 51
    learnset MOVE_SHEER_COLD, 58
    terminatelearnset


levelup SPECIES_DITTO
    learnset MOVE_TRANSFORM, 1
    terminatelearnset


levelup SPECIES_EEVEE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_COVET, 22
    learnset MOVE_COPYCAT, 25
    learnset MOVE_HIDDEN_POWER, 28
    learnset MOVE_NATURE_POWER, 31
    learnset MOVE_FOCUS_ENERGY, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_CHARM, 43
    learnset MOVE_DIG, 46
    learnset MOVE_BATON_PASS, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_VEEVEE_VOLLEY, 55
    learnset MOVE_TAKE_DOWN, 58
    learnset MOVE_DOUBLE_EDGE, 61
    terminatelearnset


levelup SPECIES_VAPOREON
    learnset MOVE_WATER_PULSE, 0
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_WATER_GUN, 22
    learnset MOVE_WHIRLPOOL, 25
    learnset MOVE_HAZE, 28
    learnset MOVE_BUBBLE_BEAM, 31
    learnset MOVE_LIFE_DEW, 34
    learnset MOVE_DRAGON_TAIL, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_AURORA_BEAM, 43
    learnset MOVE_ACID_ARMOR, 46
    learnset MOVE_BOUNCY_BUBBLE, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_SCALD, 55
    learnset MOVE_AQUA_RING, 58
    learnset MOVE_MUDDY_WATER, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_AQUA_TAIL, 67
    learnset MOVE_HYDRO_PUMP, 70
    terminatelearnset


levelup SPECIES_JOLTEON
    learnset MOVE_SHOCK_WAVE, 0
    learnset MOVE_SHOCK_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_THUNDER_SHOCK, 22
    learnset MOVE_ELECTROWEB, 25
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_DOUBLE_KICK, 31
    learnset MOVE_CHARGE, 34
    learnset MOVE_PARABOLIC_CHARGE, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_PIN_MISSILE, 43
    learnset MOVE_THUNDER_FANG, 46
    learnset MOVE_BUZZY_BUZZ, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_DISCHARGE, 55
    learnset MOVE_THUNDERBOLT, 58
    learnset MOVE_SPIKY_SHIELD, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_ELECTRO_BALL, 67
    learnset MOVE_THUNDER, 70
    terminatelearnset


levelup SPECIES_FLAREON
    learnset MOVE_INCINERATE, 0
    learnset MOVE_INCINERATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_EMBER, 22
    learnset MOVE_FIRE_SPIN, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_FLAME_CHARGE, 31
    learnset MOVE_SMOG, 34
    learnset MOVE_FLAME_WHEEL, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_FIRE_FANG, 43
    learnset MOVE_LAVA_PLUME, 46
    learnset MOVE_SIZZLY_SLIDE, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_SCARY_FACE, 55
    learnset MOVE_FLAMETHROWER, 58
    learnset MOVE_TAKE_DOWN, 61
    learnset MOVE_FIRE_BLAST, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_FLARE_BLITZ, 70
    terminatelearnset


levelup SPECIES_PORYGON
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_SHARPEN, 7
    learnset MOVE_MAGNET_RISE, 10
    learnset MOVE_PSYBEAM, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_RECYCLE, 18
    learnset MOVE_AGILITY, 21
    learnset MOVE_SHOCK_WAVE, 24
    learnset MOVE_CONVERSION_2, 27
    learnset MOVE_RECOVER, 30
    learnset MOVE_SIGNAL_BEAM, 33
    learnset MOVE_BARRIER, 36
    learnset MOVE_GRAVITY, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_TRI_ATTACK, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_MAGIC_COAT, 51
    learnset MOVE_LOCK_ON, 54
    learnset MOVE_ZAP_CANNON, 57
    learnset MOVE_HYPER_BEAM, 60
    terminatelearnset


levelup SPECIES_OMANYTE
    learnset MOVE_BIND, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_BITE, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_ROLLOUT, 15
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_BRINE, 24
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_RAIN_DANCE, 32
    learnset MOVE_ROCK_TOMB, 34
    learnset MOVE_PROTECT, 37
    learnset MOVE_ROCK_BLAST, 40
    learnset MOVE_RECOVER, 43
    learnset MOVE_SURF, 45
    learnset MOVE_POWER_GEM, 49
    learnset MOVE_SPIKES, 53
    learnset MOVE_SHELL_SMASH, 58
    learnset MOVE_HYDRO_PUMP, 65
    terminatelearnset


levelup SPECIES_OMASTAR
    learnset MOVE_CRUNCH, 0
    learnset MOVE_SPIKE_CANNON, 0
    learnset MOVE_CRUNCH, 1
    learnset MOVE_SPIKE_CANNON, 1
    learnset MOVE_MUDDY_WATER, 1
    learnset MOVE_BIND, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_BITE, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_ROLLOUT, 15
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_BRINE, 24
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_RAIN_DANCE, 32
    learnset MOVE_ROCK_TOMB, 34
    learnset MOVE_PROTECT, 37
    learnset MOVE_ROCK_BLAST, 40
    learnset MOVE_RECOVER, 43
    learnset MOVE_SURF, 45
    learnset MOVE_POWER_GEM, 49
    learnset MOVE_SPIKES, 53
    learnset MOVE_EARTH_POWER, 58
    learnset MOVE_SHELL_SMASH, 63
    learnset MOVE_ICE_BEAM, 68
    learnset MOVE_HYDRO_PUMP, 74
    terminatelearnset


levelup SPECIES_KABUTO
    learnset MOVE_FEINT, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ABSORB, 6
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_STEALTH_ROCK, 26
    learnset MOVE_ANCIENT_POWER, 29
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_KNOCK_OFF, 35
    learnset MOVE_RAZOR_SHELL, 37
    learnset MOVE_PROTECT, 41
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_LEECH_LIFE, 46
    learnset MOVE_LIQUIDATION, 51
    learnset MOVE_STONE_EDGE, 63
    learnset MOVE_WAVE_CRASH, 68
    learnset MOVE_HEAD_SMASH, 72
    terminatelearnset


levelup SPECIES_KABUTOPS
    learnset MOVE_SLASH, 0
    learnset MOVE_SLASH, 1
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ABSORB, 6
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_STEALTH_ROCK, 26
    learnset MOVE_ANCIENT_POWER, 29
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_KNOCK_OFF, 35
    learnset MOVE_RAZOR_SHELL, 37
    learnset MOVE_NIGHT_SLASH, 40
    learnset MOVE_PROTECT, 43
    learnset MOVE_ROCK_SLIDE, 46
    learnset MOVE_LEECH_LIFE, 49
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_LIQUIDATION, 56
    learnset MOVE_CROSS_POISON, 59
    learnset MOVE_STONE_EDGE, 63
    learnset MOVE_AQUA_STEP, 70
    learnset MOVE_WAVE_CRASH, 76
    learnset MOVE_HEAD_SMASH, 82
    terminatelearnset


levelup SPECIES_AERODACTYL
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


levelup SPECIES_SNORLAX
    learnset MOVE_RECYCLE, 1
    learnset MOVE_COVET, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FLING, 1
    learnset MOVE_METRONOME, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_BLOCK, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_LICK, 12
    learnset MOVE_YAWN, 15
    learnset MOVE_BITE, 16
    learnset MOVE_CHIP_AWAY, 17
    learnset MOVE_REST, 23
    learnset MOVE_SNORE, 23
    learnset MOVE_AMNESIA, 23
    learnset MOVE_SLEEP_TALK, 26
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_CRUNCH, 35
    learnset MOVE_ROLLOUT, 36
    learnset MOVE_HEAVY_SLAM, 40
    learnset MOVE_BLOCK, 41
    learnset MOVE_HAMMER_ARM, 44
    learnset MOVE_BELLY_DRUM, 46
    learnset MOVE_GIGA_IMPACT, 46
    learnset MOVE_HIGH_HORSEPOWER, 47
    learnset MOVE_BELCH, 52
    terminatelearnset


levelup SPECIES_ARTICUNO
    learnset MOVE_GUST, 1
    learnset MOVE_MIST, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_MIST, 8
    learnset MOVE_ICE_SHARD, 15
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_AGILITY, 27
    learnset MOVE_REFLECT, 28
    learnset MOVE_FREEZE_DRY, 38
    learnset MOVE_MIND_READER, 42
    learnset MOVE_TAILWIND, 45
    learnset MOVE_HAIL, 53
    learnset MOVE_ICE_BEAM, 57
    learnset MOVE_ROOST, 61
    learnset MOVE_BLIZZARD, 71
    learnset MOVE_HURRICANE, 72
    learnset MOVE_SHEER_COLD, 83
    terminatelearnset


levelup SPECIES_ZAPDOS
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_PLUCK, 18
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_AGILITY, 30
    learnset MOVE_CHARGE, 32
    learnset MOVE_LIGHT_SCREEN, 35
    learnset MOVE_DETECT, 39
    learnset MOVE_DISCHARGE, 47
    learnset MOVE_DRILL_PECK, 51
    learnset MOVE_RAIN_DANCE, 53
    learnset MOVE_ROOST, 61
    learnset MOVE_THUNDER, 65
    learnset MOVE_MAGNETIC_FLUX, 77
    learnset MOVE_ZAP_CANNON, 83
    terminatelearnset


levelup SPECIES_MOLTRES
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_FIRE_SPIN, 8
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_AGILITY, 17
    learnset MOVE_SAFEGUARD, 25
    learnset MOVE_ANCIENT_POWER, 26
    learnset MOVE_INCINERATE, 30
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_ENDURE, 42
    learnset MOVE_HEAT_WAVE, 53
    learnset MOVE_SUNNY_DAY, 53
    learnset MOVE_ROOST, 61
    learnset MOVE_SOLAR_BEAM, 71
    learnset MOVE_HURRICANE, 72
    learnset MOVE_SKY_ATTACK, 73
    learnset MOVE_BURN_UP, 80
    terminatelearnset


levelup SPECIES_DRATINI
    learnset MOVE_LEER,1            // status
    learnset MOVE_WRAP,1                            // coverage
    learnset MOVE_WATER_GUN,4                       // coverage
    learnset MOVE_TWISTER,6                 // stab
    learnset MOVE_BITE,9                            // coverage
    learnset MOVE_DRAGON_BREATH,12          // stab
    learnset MOVE_SCARY_FACE,15     // status
    learnset MOVE_WATER_PULSE,19                    // coverage
    learnset MOVE_DRAGON_TAIL,22            // stab
    learnset MOVE_THUNDER_WAVE,24   // status
    learnset MOVE_DUAL_CHOP,26              // stab
    learnset MOVE_AQUA_JET,28                       // coverage
    learnset MOVE_FIRE_SPIN,30                      // coverage
    learnset MOVE_DRAGON_DANCE,32   // status
    learnset MOVE_DRAGON_PULSE,35          // stab
    learnset MOVE_AQUA_TAIl,38                      // coverage
    learnset MOVE_DRAGON_RAGE,40           // stab
    learnset MOVE_COIL,42          // status
    terminatelearnset


levelup SPECIES_DRAGONAIR
    learnset MOVE_DRAGON_RAGE,0             // stab
    learnset MOVE_LEER,1            // status
    learnset MOVE_WRAP,1                            // coverage
    learnset MOVE_WATER_GUN,4                       // coverage
    learnset MOVE_TWISTER,6                 // stab
    learnset MOVE_BITE,9                            // coverage
    learnset MOVE_DRAGON_BREATH,12          // stab
    learnset MOVE_SCARY_FACE,15     // status
    learnset MOVE_WATER_PULSE,19                    // coverage
    learnset MOVE_DRAGON_TAIL,22            // stab
    learnset MOVE_THUNDER_WAVE,24   // status
    learnset MOVE_DUAL_CHOP,26              // stab
    learnset MOVE_AQUA_JET,28                       // coverage
    learnset MOVE_FIRE_SPIN,32                      // coverage
    learnset MOVE_DRAGON_DANCE,34   // status
    learnset MOVE_DRAGON_PULSE,36          // stab
    learnset MOVE_AQUA_TAIl,40                      // coverage
    learnset MOVE_DRAGON_RUSH,44           // stab
    learnset MOVE_RAIN_DANCE,46     // status
    learnset MOVE_BREAKING_SWIPE,50        // stab
    learnset MOVE_CLEAR_SMOG,53                     // coverage
    learnset MOVE_EXTREME_SPEED,56                  // coverage
    learnset MOVE_COIL,60          // status
    terminatelearnset


levelup SPECIES_DRAGONITE
    learnset MOVE_HURRICANE,0               // stab
    learnset MOVE_FIRE_PUNCH,1                      // coverage
    learnset MOVE_ICE_PUNCH,1                       // coverage
    learnset MOVE_WING_ATTACK,4             // stab
    learnset MOVE_TWISTER,6                 // stab
    learnset MOVE_BITE,9                            // coverage
    learnset MOVE_DRAGON_BREATH,12          // stab
    learnset MOVE_SCARY_FACE,15     // status
    learnset MOVE_WATER_PULSE,19                    // coverage
    learnset MOVE_DRAGON_TAIL,22            // stab
    learnset MOVE_THUNDER_WAVE,24   // status
    learnset MOVE_DUAL_CHOP,26              // stab
    learnset MOVE_AQUA_JET,28                       // coverage
    learnset MOVE_FIRE_SPIN,32                      // coverage
    learnset MOVE_DRAGON_DANCE,34   // status
    learnset MOVE_DRAGON_PULSE,36          // stab
    learnset MOVE_AQUA_TAIl,40                      // coverage
    learnset MOVE_DRAGON_RUSH,44           // stab
    learnset MOVE_RAIN_DANCE,46     // status
    learnset MOVE_BREAKING_SWIPE,50        // stab
    learnset MOVE_CLEAR_SMOG,54                     // coverage
    learnset MOVE_EXTREME_SPEED,58                  // coverage
    learnset MOVE_OUTRAGE,61              // stab
    learnset MOVE_EARTHQUAKE,66                     // coverage
    learnset MOVE_SCALE_SHOT,70            // stab
    terminatelearnset


levelup SPECIES_MEWTWO
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


levelup SPECIES_MEW
    learnset MOVE_POUND, 1
    learnset MOVE_REFLECT_TYPE, 1
    learnset MOVE_AMNESIA, 10
    learnset MOVE_BATON_PASS, 20
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_LIFE_DEW, 40
    learnset MOVE_NASTY_PLOT, 50
    learnset MOVE_METRONOME, 60
    learnset MOVE_IMPRISON, 70
    learnset MOVE_TRANSFORM, 80
    learnset MOVE_AURA_SPHERE, 90
    learnset MOVE_PSYCHIC, 100
    terminatelearnset


levelup SPECIES_CHIKORITA
    learnset MOVE_TACKLE, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_LEAF_TORNADO, 13
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_REFLECT, 20
    learnset MOVE_LIGHT_SCREEN, 23
    learnset MOVE_STOMP, 26
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_SWEET_SCENT, 32
    learnset MOVE_SAFEGUARD, 35
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_DRAINING_KISS, 41
    learnset MOVE_AROMATHERAPY, 44
    learnset MOVE_EARTH_POWER, 47
    learnset MOVE_BODY_SLAM, 50
    learnset MOVE_PETAL_BLIZZARD, 53
    learnset MOVE_SYNTHESIS, 56
    terminatelearnset


levelup SPECIES_BAYLEEF
    learnset MOVE_TACKLE, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_LEAF_TORNADO, 13
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_RAZOR_LEAF, 19
    learnset MOVE_REFLECT, 22
    learnset MOVE_LIGHT_SCREEN, 25
    learnset MOVE_STOMP, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_SAFEGUARD, 37
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_DRAINING_KISS, 43
    learnset MOVE_AROMATHERAPY, 46
    learnset MOVE_EARTH_POWER, 49
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_PETAL_BLIZZARD, 55
    learnset MOVE_SYNTHESIS, 58
    learnset MOVE_PETAL_DANCE, 61
    learnset MOVE_PLAY_ROUGH, 64
    learnset MOVE_SOLAR_BEAM, 67
    learnset MOVE_FRENZY_PLANT, 73
    terminatelearnset


levelup SPECIES_MEGANIUM
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_LEAF_TORNADO, 13
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_RAZOR_LEAF, 19
    learnset MOVE_REFLECT, 22
    learnset MOVE_LIGHT_SCREEN, 25
    learnset MOVE_STOMP, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_SWEET_SCENT, 34
    learnset MOVE_SAFEGUARD, 37
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_DRAINING_KISS, 45
    learnset MOVE_AROMATHERAPY, 48
    learnset MOVE_EARTH_POWER, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_PETAL_BLIZZARD, 57
    learnset MOVE_SYNTHESIS, 60
    learnset MOVE_PETAL_DANCE, 63
    learnset MOVE_PLAY_ROUGH, 66
    learnset MOVE_SOLAR_BEAM, 70
    learnset MOVE_FRENZY_PLANT, 75
    terminatelearnset


levelup SPECIES_CYNDAQUIL
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_HOWL, 14
    learnset MOVE_SWIFT, 18
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 22
    learnset MOVE_ROLLOUT, 25
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_FLAME_CHARGE, 31
    learnset MOVE_LAVA_PLUME, 35
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_SUNNY_DAY, 45
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_OVERHEAT, 60
    terminatelearnset


levelup SPECIES_QUILAVA
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_HOWL, 14
    learnset MOVE_SWIFT, 18
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 22
    learnset MOVE_ROLLOUT, 25
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_FLAME_CHARGE, 31
    learnset MOVE_EXTRASENSORY, 37
    learnset MOVE_LAVA_PLUME, 40
    learnset MOVE_SCORCHING_SANDS, 44
    learnset MOVE_FLAMETHROWER, 47
    learnset MOVE_SOLAR_BEAM, 51
    learnset MOVE_SUNNY_DAY, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_FOCUS_BLAST, 65
    learnset MOVE_OVERHEAT, 70
    learnset MOVE_ERUPTION, 75
    terminatelearnset


levelup SPECIES_TYPHLOSION
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_HOWL, 14
    learnset MOVE_SWIFT, 18
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 22
    learnset MOVE_ROLLOUT, 25
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_FLAME_CHARGE, 31
    learnset MOVE_WILL_O_WISP, 36
    learnset MOVE_EXTRASENSORY, 38
    learnset MOVE_LAVA_PLUME, 41
    learnset MOVE_SCORCHING_SANDS, 44
    learnset MOVE_FLAMETHROWER, 47
    learnset MOVE_INFERNO, 50
    learnset MOVE_SOLAR_BEAM, 54
    learnset MOVE_SUNNY_DAY, 58
    learnset MOVE_DOUBLE_EDGE, 61
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_FOCUS_BLAST, 69
    learnset MOVE_OVERHEAT, 74
    learnset MOVE_ERUPTION, 80
    terminatelearnset


levelup SPECIES_TOTODILE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_RAGE, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_BITE, 19
    learnset MOVE_ICE_FANG, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_SCARY_FACE, 31
    learnset MOVE_DUAL_CHOP, 34
    learnset MOVE_SLASH, 37
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_SCREECH, 43
    learnset MOVE_REVENGE, 46
    learnset MOVE_DRAGON_TAIL, 49
    learnset MOVE_STOMPING_TANTRUM, 52
    learnset MOVE_AQUA_TAIL, 55
    learnset MOVE_AGILITY, 58
    learnset MOVE_ICE_PUNCH, 61
    learnset MOVE_THRASH, 64
    learnset MOVE_HYDRO_PUMP, 67
    learnset MOVE_SUPERPOWER, 70
    learnset MOVE_WAVE_CRASH, 73
    terminatelearnset


levelup SPECIES_CROCONAW
    learnset MOVE_AQUA_JET, 0
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_RAGE, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 23
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_WATER_PULSE, 29
    learnset MOVE_SCARY_FACE, 32
    learnset MOVE_DUAL_CHOP, 35
    learnset MOVE_SLASH, 38
    learnset MOVE_LIQUIDATION, 41
    learnset MOVE_SCREECH, 44
    learnset MOVE_REVENGE, 47
    learnset MOVE_DRAGON_TAIL, 50
    learnset MOVE_STOMPING_TANTRUM, 53
    learnset MOVE_AQUA_TAIL, 56
    learnset MOVE_AGILITY, 59
    learnset MOVE_ICE_PUNCH, 62
    learnset MOVE_THRASH, 65
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_SUPERPOWER, 71
    learnset MOVE_WAVE_CRASH, 74
    terminatelearnset


levelup SPECIES_FERALIGATR
    learnset MOVE_CRUNCH, 0
    learnset MOVE_CRUNCH, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_RAGE, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_WHIRLPOOL, 16
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 23
    learnset MOVE_FEINT_ATTACK, 26
    learnset MOVE_WATER_PULSE, 29
    learnset MOVE_SCARY_FACE, 32
    learnset MOVE_DUAL_CHOP, 36
    learnset MOVE_SLASH, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_SCREECH, 45
    learnset MOVE_REVENGE, 48
    learnset MOVE_DRAGON_TAIL, 51
    learnset MOVE_STOMPING_TANTRUM, 54
    learnset MOVE_AQUA_TAIL, 57
    learnset MOVE_AGILITY, 60
    learnset MOVE_ICE_PUNCH, 63
    learnset MOVE_THRASH, 66
    learnset MOVE_HYDRO_PUMP, 69
    learnset MOVE_SUPERPOWER, 72
    learnset MOVE_WAVE_CRASH, 75
    terminatelearnset


levelup SPECIES_SENTRET
    learnset MOVE_SCRATCH,1                     // stab
    learnset MOVE_DEFENSE_CURL,1    // status
    learnset MOVE_QUICK_ATTACK,3                // stab
    learnset MOVE_FURY_SWIPES,5                 // stab
    learnset MOVE_COIL,8            // status
    learnset MOVE_MUD_SLAP,11                           // coverage
    learnset MOVE_SAND_ATTACK,14    // status
    learnset MOVE_ROLLOUT,18                            // coverage
    learnset MOVE_RAPID_SPIN,21                 // stab
    learnset MOVE_BATON_PASS,24     // status
    learnset MOVE_CHIP_AWAY,28                 // stab
    learnset MOVE_DIG,30                                // coverage
    learnset MOVE_TAKE_DOWN,32                  // stab
    learnset MOVE_IRON_TAIL,36                          // coverage
    learnset MOVE_EXTREME_SPEED,40               // stab
    learnset MOVE_PLAY_ROUGH,44                         // coverage
    learnset MOVE_SUCKER_PUNCH,46                       // coverage
    learnset MOVE_AMNESIA,48        // status
    learnset MOVE_DOUBLE_EDGE,50                // stab
    terminatelearnset


levelup SPECIES_FURRET
    learnset MOVE_AGILITY,0         // status
    learnset MOVE_SCRATCH,1                     // stab
    learnset MOVE_DEFENSE_CURL,1    // status
    learnset MOVE_QUICK_ATTACK,3                // stab
    learnset MOVE_FURY_SWIPES,5                 // stab
    learnset MOVE_COIL,8            // status
    learnset MOVE_MUD_SLAP,11                           // coverage
    learnset MOVE_SAND_ATTACK,14    // status
    learnset MOVE_ROLLOUT,18                            // coverage
    learnset MOVE_RAPID_SPIN,21                 // stab
    learnset MOVE_BATON_PASS,24     // status
    learnset MOVE_CHIP_AWAY,29                 // stab
    learnset MOVE_DIG,32                                // coverage
    learnset MOVE_TAKE_DOWN,34                  // stab
    learnset MOVE_IRON_TAIL,38                          // coverage
    learnset MOVE_EXTREME_SPEED,42               // stab
    learnset MOVE_PLAY_ROUGH,44                         // coverage
    learnset MOVE_SUCKER_PUNCH,46                       // coverage
    learnset MOVE_AMNESIA,49        // status
    learnset MOVE_DOUBLE_EDGE,51                // stab
    learnset MOVE_ENCORE,53         // status
    learnset MOVE_FACADE,56                     // stab
    learnset MOVE_EARTHQUAKE,58                         // coverage
    learnset MOVE_SUBSTITUTE,60      // status
    learnset MOVE_GIGA_IMPACT,62                // stab
    terminatelearnset


levelup SPECIES_HOOTHOOT
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_REFLECT, 13
    learnset MOVE_LIGHT_SCREEN, 13
    learnset MOVE_DEFOG, 16
    learnset MOVE_AIR_CUTTER, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_FEATHER_DANCE, 24
    learnset MOVE_SWIFT, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_AGILITY, 36
    learnset MOVE_IMPRISON, 39
    learnset MOVE_HYPNOSIS, 42
    learnset MOVE_DREAM_EATER, 45
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_HEAT_WAVE, 51
    learnset MOVE_TAILWIND, 54
    learnset MOVE_MOONBLAST, 57
    learnset MOVE_HURRICANE, 60
    learnset MOVE_FOCUS_BLAST, 63
    terminatelearnset


levelup SPECIES_NOCTOWL
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_CONFUSION, 11
    learnset MOVE_REFLECT, 14
    learnset MOVE_LIGHT_SCREEN, 14
    learnset MOVE_DEFOG, 17
    learnset MOVE_AIR_CUTTER, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_FEATHER_DANCE, 25
    learnset MOVE_SWIFT, 28
    learnset MOVE_ROOST, 31
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_AGILITY, 37
    learnset MOVE_IMPRISON, 40
    learnset MOVE_HYPNOSIS, 43
    learnset MOVE_DREAM_EATER, 46
    learnset MOVE_HYPER_VOICE, 49
    learnset MOVE_HEAT_WAVE, 52
    learnset MOVE_TAILWIND, 55
    learnset MOVE_MOONBLAST, 58
    learnset MOVE_HURRICANE, 61
    learnset MOVE_FOCUS_BLAST, 64
    terminatelearnset


levelup SPECIES_LEDYBA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_REFLECT, 12
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_MACH_PUNCH, 15
    learnset MOVE_SILVER_WIND, 19
    learnset MOVE_COMET_PUNCH, 22
    learnset MOVE_BATON_PASS, 26
    learnset MOVE_AGILITY, 29
    learnset MOVE_BUG_BUZZ, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_DOUBLE_EDGE, 40
    terminatelearnset


levelup SPECIES_LEDIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_REFLECT, 12
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_MACH_PUNCH, 15
    learnset MOVE_SILVER_WIND, 20
    learnset MOVE_COMET_PUNCH, 24
    learnset MOVE_BATON_PASS, 29
    learnset MOVE_AGILITY, 33
    learnset MOVE_BUG_BUZZ, 38
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_SPINARAK
    learnset MOVE_SPIDER_WEB, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_ELECTROWEB, 1
    learnset MOVE_POISON_FANG, 4
    learnset MOVE_TOXIC_THREAD, 6
    learnset MOVE_TWINEEDLE, 9
    learnset MOVE_CURSE, 12
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_SHADOW_SNEAK, 18
    learnset MOVE_STRENGTH_SAP, 21
    learnset MOVE_PSYCHIC_FANGS, 23
    learnset MOVE_SKITTER_SMACK, 25
    learnset MOVE_CROSS_POISON, 28
    learnset MOVE_VENOM_DRENCH, 31
    learnset MOVE_LUNGE, 33
    learnset MOVE_FOUL_PLAY, 37
    learnset MOVE_STICKY_WEB, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_LEECH_LIFE, 46
    learnset MOVE_RAGE_POWDER, 50
    terminatelearnset


levelup SPECIES_ARIADOS
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_SPIDER_WEB, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_ELECTROWEB, 1
    learnset MOVE_POISON_FANG, 4
    learnset MOVE_TOXIC_THREAD, 6
    learnset MOVE_TWINEEDLE, 9
    learnset MOVE_CURSE, 12
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_SHADOW_SNEAK, 18
    learnset MOVE_STRENGTH_SAP, 21
    learnset MOVE_PSYCHIC_FANGS, 23
    learnset MOVE_SKITTER_SMACK, 25
    learnset MOVE_CROSS_POISON, 28
    learnset MOVE_VENOM_DRENCH, 31
    learnset MOVE_LUNGE, 33
    learnset MOVE_FOUL_PLAY, 37
    learnset MOVE_STICKY_WEB, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_LEECH_LIFE, 46
    learnset MOVE_RAGE_POWDER, 50
    learnset MOVE_FELL_STINGER, 53
    learnset MOVE_SUCKER_PUNCH, 56
    learnset MOVE_MEGAHORN, 59
    learnset MOVE_SWORDS_DANCE, 63
    learnset MOVE_GUNK_SHOT, 66
    terminatelearnset


levelup SPECIES_CROBAT
    learnset MOVE_CROSS_POISON, 0
    learnset MOVE_CROSS_POISON, 1
    learnset MOVE_TAILWIND, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_QUICK_ATTACK, 1   
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_HYPNOSIS, 9
    learnset MOVE_GUST, 12
    learnset MOVE_SONIC_BOOM, 15
    learnset MOVE_BITE, 18
    learnset MOVE_POISON_FANG, 20
    learnset MOVE_SCREECH, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_MEAN_LOOK, 29
    learnset MOVE_U_TURN, 32
    learnset MOVE_ACROBATICS, 35
    learnset MOVE_TOXIC, 38
    learnset MOVE_VENOSHOCK, 41
    learnset MOVE_AIR_SLASH, 44
    learnset MOVE_LEECH_LIFE, 47
    learnset MOVE_CRUNCH, 50
    learnset MOVE_HAZE, 53
    learnset MOVE_POISON_JAB, 56
    learnset MOVE_ZEN_HEADBUTT, 59
    learnset MOVE_BRAVE_BIRD, 61
    learnset MOVE_GUNK_SHOT, 65
    terminatelearnset


levelup SPECIES_CHINCHOU
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_ELECTRO_BALL, 9
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_SPARK, 21
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_CHILLING_WATER, 32
    learnset MOVE_PARABOLIC_CHARGE, 36
    learnset MOVE_SCALD, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_SURF, 50
    learnset MOVE_VOLT_SWITCH, 53
    learnset MOVE_RECOVER, 56
    learnset MOVE_THUNDERBOLT, 59
    learnset MOVE_HYDRO_PUMP, 64
    terminatelearnset


levelup SPECIES_LANTURN
    learnset MOVE_STOCKPILE, 0
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_SPOTLIGHT, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_ELECTRO_BALL, 9
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_SPARK, 21
    learnset MOVE_BUBBLE_BEAM, 25
	learnset MOVE_PSYBEAM, 27
    learnset MOVE_SIGNAL_BEAM, 29
    learnset MOVE_CHILLING_WATER, 32
    learnset MOVE_PARABOLIC_CHARGE, 36
    learnset MOVE_SCALD, 39
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_SURF, 51
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_VOLT_SWITCH, 57
    learnset MOVE_RECOVER, 60
    learnset MOVE_THUNDERBOLT, 64
    learnset MOVE_HYDRO_PUMP, 67
    terminatelearnset


levelup SPECIES_PICHU
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_PLAY_NICE, 3
    learnset MOVE_NUZZLE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_SWEET_KISS, 11
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_SWIFT, 21
    learnset MOVE_SPARK, 27
    learnset MOVE_AGILITY, 35
    learnset MOVE_IRON_TAIL, 41
    learnset MOVE_NASTY_PLOT, 45
    learnset MOVE_THUNDERBOLT, 48
    learnset MOVE_THUNDER, 57
    terminatelearnset


levelup SPECIES_CLEFFA
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 3
    learnset MOVE_SING, 5
    learnset MOVE_DEFENSE_CURL, 6
    learnset MOVE_DOUBLE_SLAP, 8
    learnset MOVE_SWEET_KISS, 10
    learnset MOVE_DISARMING_VOICE, 12
    learnset MOVE_MINIMIZE, 15
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_CHARM, 20
    learnset MOVE_FAIRY_WIND, 23
    learnset MOVE_METRONOME, 26
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_MIMIC, 33
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_MOONLIGHT, 51
    learnset MOVE_MOONBLAST, 53
    terminatelearnset


levelup SPECIES_IGGLYBUFF
    learnset MOVE_SING, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_SWEET_KISS, 7
    learnset MOVE_SWIFT, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_DISABLE, 16
    learnset MOVE_CHARM, 18
    terminatelearnset


levelup SPECIES_TOGEPI
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_DEFENSE_CURL, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_RETURN, 19
    learnset MOVE_LIFE_DEW, 22
    learnset MOVE_METRONOME, 25
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_ANCIENT_POWER, 31
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_LUCKY_CHANT, 40
    learnset MOVE_LAST_RESORT, 43
    learnset MOVE_SOFT_BOILED, 46
    learnset MOVE_DAZZLING_GLEAM, 49
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_PLAY_ROUGH, 55
    terminatelearnset


levelup SPECIES_TOGETIC
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_DEFENSE_CURL, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_RETURN, 19
    learnset MOVE_LIFE_DEW, 22
    learnset MOVE_FAIRY_WIND, 25
    learnset MOVE_METRONOME, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_AIR_CUTTER, 37
    learnset MOVE_HEADBUTT, 40
    learnset MOVE_CHARM, 43
    learnset MOVE_AIR_SLASH, 46
    learnset MOVE_LUCKY_CHANT, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_ACROBATICS, 55
    learnset MOVE_SOFT_BOILED, 58
    learnset MOVE_DAZZLING_GLEAM, 61
    learnset MOVE_ZEN_HEADBUTT, 64
    learnset MOVE_HURRICANE, 67
    learnset MOVE_PLAY_ROUGH, 70
    learnset MOVE_SKY_ATTACK, 74
    terminatelearnset


levelup SPECIES_NATU
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_TELEPORT, 7
    learnset MOVE_STORED_POWER, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_CONFUSE_RAY, 18
    learnset MOVE_OMINOUS_WIND, 21
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_PSYCHO_SHIFT, 27
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_MIRACLE_EYE, 36
    learnset MOVE_WISH, 39
    learnset MOVE_POWER_SWAP, 42
    learnset MOVE_GUARD_SWAP, 42
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DAZZLING_GLEAM, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_CALM_MIND, 57
    learnset MOVE_HURRICANE, 60
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_FUTURE_SIGHT, 66
    terminatelearnset


levelup SPECIES_XATU
    learnset MOVE_TAILWIND, 0
    learnset MOVE_TAILWIND, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_TELEPORT, 8
    learnset MOVE_STORED_POWER, 11
    learnset MOVE_AIR_CUTTER, 14
    learnset MOVE_NIGHT_SHADE, 17
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_OMINOUS_WIND, 22
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_PSYCHO_SHIFT, 28
    learnset MOVE_AIR_SLASH, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_MIRACLE_EYE, 37
    learnset MOVE_WISH, 40
    learnset MOVE_POWER_SWAP, 43
    learnset MOVE_GUARD_SWAP, 43
    learnset MOVE_EXTRASENSORY, 46
    learnset MOVE_SHADOW_BALL, 49
    learnset MOVE_DAZZLING_GLEAM, 52
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_CALM_MIND, 58
    learnset MOVE_HURRICANE, 61
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_FUTURE_SIGHT, 67
    terminatelearnset


levelup SPECIES_MAREEP
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_CHARGE, 14
    learnset MOVE_SWIFT, 17
    learnset MOVE_COTTON_GUARD, 20
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_VOLT_SWITCH, 31
    learnset MOVE_POWER_GEM, 35
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_REFLECT, 42
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_PARABOLIC_CHARGE, 46
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_FLAAFFY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_CHARGE, 14
    learnset MOVE_SWIFT, 17
    learnset MOVE_COTTON_GUARD, 20
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_VOLT_SWITCH, 33
    learnset MOVE_POWER_GEM, 36
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_SIGNAL_BEAM, 42
    learnset MOVE_REFLECT, 45
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_PARABOLIC_CHARGE, 48
    learnset MOVE_MOONBLAST, 53
    learnset MOVE_THUNDERBOLT, 58
    learnset MOVE_THUNDER, 63
    terminatelearnset


levelup SPECIES_AMPHAROS
    learnset MOVE_THUNDER_PUNCH, 0
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ZAP_CANNON, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_CHARGE, 14
    learnset MOVE_SWIFT, 17
    learnset MOVE_COTTON_GUARD, 20
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_ELECTRIC_TERRAIN, 30
    learnset MOVE_VOLT_SWITCH, 33
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_SIGNAL_BEAM, 44
    learnset MOVE_REFLECT, 47
    learnset MOVE_LIGHT_SCREEN, 47
    learnset MOVE_PARABOLIC_CHARGE, 50
    learnset MOVE_AGILITY, 52
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_DRAGON_PULSE, 59
    learnset MOVE_FOCUS_BLAST, 63
    learnset MOVE_THUNDERBOLT, 66
    learnset MOVE_RAIN_DANCE, 70
    learnset MOVE_THUNDER, 73
    terminatelearnset


levelup SPECIES_BELLOSSOM
    learnset MOVE_MAGICAL_LEAF, 0
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_LEAF_BLADE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_ACID, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 17
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_GROWTH, 22
    learnset MOVE_TOXIC, 25
    learnset MOVE_VENOSHOCK, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_GRASSY_TERRAIN, 34
    learnset MOVE_MOONLIGHT, 37
    learnset MOVE_QUIVER_DANCE, 40
    learnset MOVE_NATURAL_GIFT, 43
    learnset MOVE_LUCKY_CHANT, 46
    learnset MOVE_DAZZLING_GLEAM, 49
    learnset MOVE_ENERGY_BALL, 52
    learnset MOVE_SUNNY_DAY, 55
    learnset MOVE_WEATHER_BALL, 58
    learnset MOVE_SLUDGE_BOMB, 61
    learnset MOVE_SOLAR_BEAM, 65
    learnset MOVE_LEAF_STORM, 69
    terminatelearnset


levelup SPECIES_MARILL
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_TAIL_WHIP, 2
    learnset MOVE_WATER_SPORT, 5
    learnset MOVE_BUBBLE, 7
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_CHARM, 9
    learnset MOVE_DEFENSE_CURL, 10
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SLAM, 12
    learnset MOVE_BOUNCE, 15
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_AQUA_TAIL, 19
    learnset MOVE_PLAY_ROUGH, 21
    learnset MOVE_AQUA_RING, 25
    learnset MOVE_RAIN_DANCE, 28
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_HYDRO_PUMP, 37
    learnset MOVE_SUPERPOWER, 37
    terminatelearnset


levelup SPECIES_AZUMARILL
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_TAIL_WHIP, 2
    learnset MOVE_WATER_SPORT, 5
    learnset MOVE_BUBBLE, 7
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_CHARM, 9
    learnset MOVE_DEFENSE_CURL, 10
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SLAM, 12
    learnset MOVE_BOUNCE, 15
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_AQUA_TAIL, 21
    learnset MOVE_PLAY_ROUGH, 25
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_RAIN_DANCE, 35
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_HYDRO_PUMP, 47
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset


levelup SPECIES_SUDOWOODO
    learnset MOVE_SLAM, 0
    learnset MOVE_SLAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_FLAIL, 4
    learnset MOVE_FAKE_TEARS, 7
    learnset MOVE_ROCK_THROW, 10 
    learnset MOVE_COPYCAT, 13 
    learnset MOVE_TEARFUL_LOOK, 15 
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_MIMIC, 20
    learnset MOVE_BRANCH_POKE, 24
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_BLOCK, 37
    learnset MOVE_COVET, 40
    learnset MOVE_COUNTER, 43
    learnset MOVE_SUCKER_PUNCH, 46
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_THUNDER_PUNCH, 52 
    learnset MOVE_ROCK_POLISH, 55
    learnset MOVE_ZEN_HEADBUTT, 58
    learnset MOVE_STONE_EDGE, 61
    learnset MOVE_HAMMER_ARM, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_WOOD_HAMMER, 70
    learnset MOVE_HEAD_SMASH, 74
    terminatelearnset


levelup SPECIES_POLITOED
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_WATER_SPORT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_WATER_GUN, 13
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_DOUBLE_SLAP, 19
    learnset MOVE_WHIRLPOOL, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_DIZZY_PUNCH, 28
    learnset MOVE_LIFE_DEW, 31
    learnset MOVE_MUD_SHOT, 34
    learnset MOVE_BUBBLE_BEAM, 37
    learnset MOVE_WAKE_UP_SLAP, 40
    learnset MOVE_NOBLE_ROAR, 43
    learnset MOVE_RAIN_DANCE, 46
    learnset MOVE_SCALD, 49
    learnset MOVE_AURORA_BEAM, 52
    learnset MOVE_SPARKLING_ARIA, 55
    learnset MOVE_PERISH_SONG, 58
    learnset MOVE_EARTH_POWER, 61
    learnset MOVE_BOUNCE, 64
    learnset MOVE_SWAGGER, 67
    learnset MOVE_HYPER_VOICE, 70
    learnset MOVE_HYDRO_PUMP, 73
    terminatelearnset


levelup SPECIES_HOPPIP
    learnset MOVE_ABSORB, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_SYNTHESIS, 4
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_TACKLE, 8
    learnset MOVE_FAIRY_WIND, 10
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_BULLET_SEED, 19
    learnset MOVE_LEECH_SEED, 22
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_ACROBATICS, 28
    learnset MOVE_RAGE_POWDER, 31
    learnset MOVE_COTTON_SPORE, 34
    learnset MOVE_U_TURN, 37
    learnset MOVE_WORRY_SEED, 40
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_BOUNCE, 46
    learnset MOVE_MEMENTO, 49
    terminatelearnset


levelup SPECIES_SKIPLOOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SYNTHESIS, 4
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_TACKLE, 8
    learnset MOVE_FAIRY_WIND, 10
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_LEECH_SEED, 24
    learnset MOVE_MEGA_DRAIN, 28
    learnset MOVE_ACROBATICS, 32
    learnset MOVE_RAGE_POWDER, 36
    learnset MOVE_COTTON_SPORE, 40
    learnset MOVE_U_TURN, 44
    learnset MOVE_WORRY_SEED, 48
    learnset MOVE_GIGA_DRAIN, 52
    learnset MOVE_BOUNCE, 56
    learnset MOVE_MEMENTO, 60
    terminatelearnset


levelup SPECIES_JUMPLUFF
    learnset MOVE_ABSORB, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SYNTHESIS, 4
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_TACKLE, 8
    learnset MOVE_FAIRY_WIND, 10
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_LEECH_SEED, 24
    learnset MOVE_MEGA_DRAIN, 29
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_RAGE_POWDER, 39
    learnset MOVE_COTTON_SPORE, 44
    learnset MOVE_U_TURN, 49
    learnset MOVE_WORRY_SEED, 54
    learnset MOVE_GIGA_DRAIN, 59
    learnset MOVE_BOUNCE, 64
    learnset MOVE_MEMENTO, 69
    terminatelearnset


levelup SPECIES_AIPOM
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ASTONISH, 8
    learnset MOVE_BATON_PASS, 11
    learnset MOVE_TICKLE, 15
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_SWIFT, 22
    learnset MOVE_SCREECH, 25
    learnset MOVE_AGILITY, 29
    learnset MOVE_DOUBLE_HIT, 32
    learnset MOVE_FLING, 36
    learnset MOVE_NASTY_PLOT, 39
    learnset MOVE_LAST_RESORT, 43
    terminatelearnset


levelup SPECIES_SUNKERN
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_INGRAIN, 4
    learnset MOVE_GRASS_WHISTLE, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WORRY_SEED, 19
    learnset MOVE_GIGA_DRAIN, 22
    learnset MOVE_ENDEAVOR, 25
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_NATURAL_GIFT, 31
    learnset MOVE_SOLAR_BEAM, 34
    learnset MOVE_DOUBLE_EDGE, 37
    learnset MOVE_SUNNY_DAY, 40
    learnset MOVE_SEED_BOMB, 43
    terminatelearnset


levelup SPECIES_SUNFLORA
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_INGRAIN, 4
    learnset MOVE_GRASS_WHISTLE, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WORRY_SEED, 19
    learnset MOVE_GIGA_DRAIN, 22
    learnset MOVE_BULLET_SEED, 25
    learnset MOVE_PETAL_DANCE, 28
    learnset MOVE_NATURAL_GIFT, 31
    learnset MOVE_SOLAR_BEAM, 34
    learnset MOVE_DOUBLE_EDGE, 37
    learnset MOVE_SUNNY_DAY, 40
    learnset MOVE_LEAF_STORM, 43
    learnset MOVE_PETAL_BLIZZARD, 50
    terminatelearnset


levelup SPECIES_YANMA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_TEAM, 11
    learnset MOVE_SONIC_BOOM, 14
    learnset MOVE_DETECT, 17
    learnset MOVE_SUPERSONIC, 22
    learnset MOVE_UPROAR, 27
    learnset MOVE_PURSUIT, 30
    learnset MOVE_ANCIENT_POWER, 33
    learnset MOVE_HYPNOSIS, 38
    learnset MOVE_WING_ATTACK, 43
    learnset MOVE_SCREECH, 46
    learnset MOVE_U_TURN, 49
    learnset MOVE_AIR_SLASH, 54
    learnset MOVE_BUG_BUZZ, 57
    terminatelearnset


levelup SPECIES_WOOPER
    learnset MOVE_BUBBLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_RAIN_DANCE, 4
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_ACID_SPRAY, 10
    learnset MOVE_HAZE, 13
    learnset MOVE_MIST, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_RAIN_DANCE, 18
    learnset MOVE_MUD_BOMB, 21
    learnset MOVE_YAWN, 24
    learnset MOVE_WATER_PULSE, 27
    learnset MOVE_RECOVER, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_TOXIC, 36
    learnset MOVE_COUNTER, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_CURSE, 48
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_SLUDGE_BOMB, 54
    learnset MOVE_HYDRO_PUMP, 57
    learnset MOVE_STONE_EDGE, 60
    terminatelearnset


levelup SPECIES_QUAGSIRE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_RAIN_DANCE, 5
    learnset MOVE_MUD_SHOT, 8
    learnset MOVE_ACID_SPRAY, 11
    learnset MOVE_HAZE, 14
    learnset MOVE_MIST, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_RAIN_DANCE, 19
    learnset MOVE_MUD_BOMB, 22
    learnset MOVE_YAWN, 25
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_RECOVER, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_TOXIC, 37
    learnset MOVE_COUNTER, 40
    learnset MOVE_LIQUIDATION, 43
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_CURSE, 49
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_STONE_EDGE, 61
    terminatelearnset


levelup SPECIES_ESPEON
    learnset MOVE_PSYBEAM, 0
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_CONFUSION, 22
    learnset MOVE_COVET, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_TWIN_BEAM, 31
    learnset MOVE_MORNING_SUN, 34
    learnset MOVE_PSYCHIC_NOISE, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_EXTRASENSORY, 43
    learnset MOVE_CALM_MIND, 46
    learnset MOVE_GLITZY_GLOW, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_BATON_PASS, 55
    learnset MOVE_MYSTICAL_FIRE, 58
    learnset MOVE_HYPER_VOICE, 61
    learnset MOVE_PSYCHIC, 64
    learnset MOVE_DAZZLING_GLEAM, 67
    learnset MOVE_FUTURE_SIGHT, 70
    terminatelearnset


levelup SPECIES_UMBREON
    learnset MOVE_FEINT_ATTACK, 0
    learnset MOVE_FEINT_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_PAYBACK, 22
    learnset MOVE_COVET, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_SNARL, 31
    learnset MOVE_MOONLIGHT, 34
    learnset MOVE_ASSURANCE, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_FEINT_ATTACK, 43
    learnset MOVE_VENOM_DRENCH, 46
    learnset MOVE_BADDY_BAD, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_SCREECH, 55
    learnset MOVE_DARK_PULSE, 58
    learnset MOVE_GLARE, 61
    learnset MOVE_FOUL_PLAY, 64
    learnset MOVE_MEAN_LOOK, 67
    learnset MOVE_DOUBLE_EDGE, 70
    terminatelearnset


levelup SPECIES_MURKROW
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_HAZE, 10
    learnset MOVE_SNARL, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_NIGHT_SHADE, 21
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_TORMENT, 30
    learnset MOVE_MEAN_LOOK, 33
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_FEATHER_DANCE, 39
    learnset MOVE_DARK_PULSE, 42
    learnset MOVE_DRILL_PECK, 45
    learnset MOVE_HEAT_WAVE, 48
    learnset MOVE_TAILWIND, 51
    learnset MOVE_FOUL_PLAY, 54
    learnset MOVE_QUASH, 57
    learnset MOVE_BRAVE_BIRD, 60
    learnset MOVE_COMEUPPANCE, 63
    learnset MOVE_SKY_ATTACK, 66
    terminatelearnset


levelup SPECIES_SLOWKING
    learnset MOVE_CHILLY_RECEPTION, 1
    learnset MOVE_FUTURE_SIGHT, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_YAWN, 9
    learnset MOVE_CONFUSION, 12
    learnset MOVE_DISABLE, 15
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_AMNESIA, 27
    learnset MOVE_SURF, 30
    learnset MOVE_SLACK_OFF, 33
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_PSYCH_UP, 39
    learnset MOVE_RAIN_DANCE, 42
    learnset MOVE_HEAL_PULSE, 45
    terminatelearnset


levelup SPECIES_MISDREAVUS
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_SPITE, 7
    learnset MOVE_MEMENTO, 10
    learnset MOVE_CONFUSE_RAY, 13
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_MEAN_LOOK, 18
    learnset MOVE_THIEF, 21
    learnset MOVE_HEX, 24
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_MAGICAL_LEAF, 30
    learnset MOVE_PAIN_SPLIT, 33
    learnset MOVE_PAYBACK, 36
    learnset MOVE_WILL_O_WISP, 39
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_PERISH_SONG, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_GRUDGE, 51
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_DAZZLING_GLEAM, 57
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_DESTINY_BOND, 63
    terminatelearnset


levelup SPECIES_UNOWN
    learnset MOVE_HIDDEN_POWER, 1
    terminatelearnset


levelup SPECIES_WOBBUFFET
    learnset MOVE_DESTINY_BOND, 0
    learnset MOVE_SAFEGUARD, 0
    learnset MOVE_MIRROR_COAT, 0
    learnset MOVE_COUNTER, 0
    learnset MOVE_SPLASH, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_AMNESIA, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_DESTINY_BOND, 1
    terminatelearnset


levelup SPECIES_GIRAFARIG
    learnset MOVE_POWER_SWAP, 1
    learnset MOVE_GUARD_SWAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_FORESIGHT, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_THIEF, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_HEADBUTT, 27
    learnset MOVE_BATON_PASS, 30
    learnset MOVE_DOUBLE_KICK, 33
    learnset MOVE_FACADE, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_TWIN_BEAM, 42
    learnset MOVE_NASTY_PLOT, 45
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_DAZZLING_GLEAM, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_SHADOW_BALL, 57
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_BOOMBURST, 63
    terminatelearnset


levelup SPECIES_PINECO
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_POUNCE, 4
    learnset MOVE_SELF_DESTRUCT, 7
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_HARDEN, 18
    learnset MOVE_BIDE, 21
    learnset MOVE_NATURAL_GIFT, 24
    learnset MOVE_SPIKES, 27
    learnset MOVE_TOXIC_SPIKES, 27
    learnset MOVE_PAYBACK, 30
    learnset MOVE_EXPLOSION, 33
    learnset MOVE_U_TURN, 36
    learnset MOVE_IRON_DEFENSE, 39
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_POISON_JAB, 51
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_FORRETRESS
    learnset MOVE_MAGNET_BOMB, 0
    learnset MOVE_MAGNET_BOMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_POUNCE, 4
    learnset MOVE_SELF_DESTRUCT, 7
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_RAPID_SPIN, 16
    learnset MOVE_HARDEN, 18
    learnset MOVE_BIDE, 21
    learnset MOVE_NATURAL_GIFT, 24
    learnset MOVE_SPIKES, 27
    learnset MOVE_TOXIC_SPIKES, 27
    learnset MOVE_PAYBACK, 30
    learnset MOVE_EXPLOSION, 33
    learnset MOVE_U_TURN, 36
    learnset MOVE_IRON_DEFENSE, 39
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_POISON_JAB, 51
    learnset MOVE_HEAVY_SLAM, 54
    learnset MOVE_ZAP_CANNON, 57
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_DUNSPARCE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_GLARE, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_BITE, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_YAWN, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_FACADE, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_HYPER_DRILL, 42
    learnset MOVE_COIL, 45
    learnset MOVE_DRILL_RUN, 48
    learnset MOVE_ENDEAVOR, 51
    learnset MOVE_DRAGON_RUSH, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_LAST_RESORT, 63
    terminatelearnset


levelup SPECIES_GLIGAR
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HARDEN, 7
    learnset MOVE_KNOCK_OFF, 10
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_ACROBATICS, 22
    learnset MOVE_SLASH, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_SCREECH, 35
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_SKY_UPPERCUT, 45
    learnset MOVE_SWORDS_DANCE, 50
    learnset MOVE_GUILLOTINE, 55
    terminatelearnset


levelup SPECIES_STEELIX
    learnset MOVE_CRUNCH, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_MUD_SPORT, 8
    learnset MOVE_BREAKING_SWIPE, 11
    learnset MOVE_SAND_TOMB, 14
    learnset MOVE_CURSE, 17
    learnset MOVE_RAGE, 19
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_STEALTH_ROCK, 25
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_SCREECH, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_DIG, 43
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_EARTHQUAKE, 53
    learnset MOVE_IRON_TAIL, 56
    learnset MOVE_EXPLOSION, 59
    learnset MOVE_HEAVY_SLAM, 63
    learnset MOVE_HEADLONG_RUSH, 66
    terminatelearnset


levelup SPECIES_SNUBBULL
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_BITE, 7
    learnset MOVE_LICK, 13
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_ROAR, 25
    learnset MOVE_RAGE, 31
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_PAYBACK, 43
    learnset MOVE_CRUNCH, 49
    terminatelearnset


levelup SPECIES_GRANBULL
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_BITE, 7
    learnset MOVE_LICK, 13
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_ROAR, 27
    learnset MOVE_RAGE, 35
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_PAYBACK, 51
    learnset MOVE_CRUNCH, 59
    learnset MOVE_OUTRAGE, 67
    terminatelearnset


levelup SPECIES_QWILFISH
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_AQUA_JET, 7
    learnset MOVE_WATER_PULSE, 10
    learnset MOVE_PIN_MISSILE, 13
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_POISON_TAIL, 18
    learnset MOVE_SPIKES, 21
    learnset MOVE_REVENGE, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_TOXIC_SPIKES, 36
    learnset MOVE_STOCKPILE, 39
    learnset MOVE_SPIT_UP, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_CRUNCH, 51
    learnset MOVE_SLUDGE_BOMB, 54
    learnset MOVE_DESTINY_BOND, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_WAVE_CRASH, 63
    terminatelearnset


levelup SPECIES_SCIZOR
    learnset MOVE_BULLET_PUNCH, 0
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_FALSE_SWIPE, 7
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_METAL_CLAW, 13
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_POUNCE, 18
    learnset MOVE_DOUBLE_HIT, 21
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_FOCUS_ENERGY, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_AGILITY, 33
    learnset MOVE_SMART_STRIKE, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_IRON_HEAD, 48
    learnset MOVE_NIGHT_SLASH, 51
    learnset MOVE_ENDURE, 54
    learnset MOVE_REVERSAL, 57
    learnset MOVE_METEOR_MASH, 60
    learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset


levelup SPECIES_SHUCKLE
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ROLLOUT, 4
    learnset MOVE_ENCORE, 7
    learnset MOVE_STRUGGLE_BUG, 10
    learnset MOVE_SAFEGUARD, 13
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_ACID, 18
    learnset MOVE_RECOVER, 21
    learnset MOVE_BUG_BITE, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_TOXIC, 30
    learnset MOVE_SAND_TOMB, 33
    learnset MOVE_GASTRO_ACID, 36
    learnset MOVE_POWER_SPLIT, 39
    learnset MOVE_GUARD_SPLIT, 39
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_POWER_TRICK, 45
    learnset MOVE_KNOCK_OFF, 48
    learnset MOVE_SHELL_SMASH, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_ACUPRESSURE, 57
    learnset MOVE_FINAL_GAMBIT, 60
    terminatelearnset


levelup SPECIES_HERACROSS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_TWINEEDLE, 7
    learnset MOVE_ENDURE, 10
    learnset MOVE_FURY_ATTACK, 13
    learnset MOVE_ARM_THRUST, 16
    learnset MOVE_FURY_CUTTER, 19
    learnset MOVE_SEISMIC_TOSS, 22
    learnset MOVE_HORN_ATTACK, 25
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_VITAL_THROW, 34
    learnset MOVE_POUNCE, 37
    learnset MOVE_DIZZY_PUNCH, 40
    learnset MOVE_BULK_UP, 43
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_STRENGTH, 49
    learnset MOVE_LEECH_LIFE, 52
    learnset MOVE_THUNDER_PUNCH, 55
    learnset MOVE_X_SCISSOR, 58
    learnset MOVE_THROAT_CHOP, 61
    learnset MOVE_THRASH, 64
    learnset MOVE_SWORDS_DANCE, 67
    learnset MOVE_CLOSE_COMBAT, 70
    learnset MOVE_MEGAHORN, 73
    terminatelearnset


levelup SPECIES_SNEASEL
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAUNT, 6
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_ICY_WIND, 24
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_HONE_CLAWS, 36
    learnset MOVE_BEAT_UP, 42
    learnset MOVE_AGILITY, 48
    learnset MOVE_SCREECH, 54
    learnset MOVE_SLASH, 60
    terminatelearnset


levelup SPECIES_TEDDIURSA
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_COVET, 1
    learnset MOVE_FLING, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_PAYBACK, 13
    learnset MOVE_SWEET_SCENT, 17
    learnset MOVE_SLASH, 22
    learnset MOVE_PLAY_NICE, 25
    learnset MOVE_PLAY_ROUGH, 29
    learnset MOVE_CHARM, 33
    learnset MOVE_REST, 37
    learnset MOVE_SNORE, 37
    learnset MOVE_THRASH, 41
    terminatelearnset


levelup SPECIES_URSARING
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_COVET, 1
    learnset MOVE_FAKE_TEARS, 1
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


levelup SPECIES_SLUGMA
    learnset MOVE_YAWN, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_FIRE_SPIN, 10
    learnset MOVE_HARDEN, 13
    learnset MOVE_INCINERATE, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_CLEAR_SMOG, 21
    learnset MOVE_ANCIENT_POWER, 24
    learnset MOVE_FLAME_BURST, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_MUD_BOMB, 33
    learnset MOVE_AMNESIA, 36
    learnset MOVE_SUNNY_DAY, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_RECOVER, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_POWER_GEM, 51
    learnset MOVE_ACID_ARMOR, 54
    learnset MOVE_EARTH_POWER, 57
    learnset MOVE_FIRE_BLAST, 60
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_OVERHEAT, 66
    terminatelearnset


levelup SPECIES_MAGCARGO
    learnset MOVE_SHELL_SMASH, 0
    learnset MOVE_SHELL_SMASH, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_FIRE_SPIN, 11
    learnset MOVE_HARDEN, 14
    learnset MOVE_INCINERATE, 17
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_CLEAR_SMOG, 22
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_MUD_BOMB, 34
    learnset MOVE_AMNESIA, 37
    learnset MOVE_SUNNY_DAY, 40
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_RECOVER, 46
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_ACID_ARMOR, 55
    learnset MOVE_EARTH_POWER, 58
    learnset MOVE_FIRE_BLAST, 61
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_OVERHEAT, 67
    terminatelearnset


levelup SPECIES_SWINUB
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 4
    learnset MOVE_ICICLE_SPEAR, 7
    learnset MOVE_FLAIL, 10
    learnset MOVE_BULLDOZE, 13
    learnset MOVE_ICE_SHARD, 16
    learnset MOVE_ENDURE, 18
    learnset MOVE_TRAILBLAZE, 21
    learnset MOVE_FLAIL, 24
    learnset MOVE_ICE_FANG, 27
    learnset MOVE_MIST, 30
    learnset MOVE_ANCIENT_POWER, 33
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_CURSE, 39
    learnset MOVE_AMNESIA, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_ICICLE_CRASH, 48
    learnset MOVE_STEALTH_ROCK, 51
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_ICE_HAMMER, 57
    learnset MOVE_HEADLONG_RUSH, 60
    terminatelearnset


levelup SPECIES_PILOSWINE
    learnset MOVE_FURY_ATTACK, 0
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 5
    learnset MOVE_ICICLE_SPEAR, 8
    learnset MOVE_FLAIL, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_ICE_SHARD, 17
    learnset MOVE_ENDURE, 19
    learnset MOVE_TRAILBLAZE, 22
    learnset MOVE_FLAIL, 25
    learnset MOVE_ICE_FANG, 28
    learnset MOVE_MIST, 31
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_STOMPING_TANTRUM, 37
    learnset MOVE_CURSE, 40
    learnset MOVE_AMNESIA, 43
    learnset MOVE_EARTHQUAKE, 46
    learnset MOVE_ICICLE_CRASH, 49
    learnset MOVE_STEALTH_ROCK, 52
    learnset MOVE_SUPERPOWER, 55
    learnset MOVE_ICE_HAMMER, 58
    learnset MOVE_HEADLONG_RUSH, 61
    terminatelearnset


levelup SPECIES_CORSOLA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_REFRESH, 13
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_BUBBLE_BEAM, 18
    learnset MOVE_SPIKE_CANNON, 20
    learnset MOVE_AQUA_RING, 23
    learnset MOVE_LUCKY_CHANT, 23
    learnset MOVE_ENDURE, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_IRON_DEFENSE, 29
    learnset MOVE_RECOVER, 30
    learnset MOVE_ROCK_BLAST, 31
    learnset MOVE_LIFE_DEW, 35
    learnset MOVE_FLAIL, 39
    learnset MOVE_POWER_GEM, 40
    learnset MOVE_EARTH_POWER, 45
    learnset MOVE_MIRROR_COAT, 50
    terminatelearnset


levelup SPECIES_REMORAID
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_PSYBEAM, 11
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_FOCUS_ENERGY, 14
    learnset MOVE_AURORA_BEAM, 15
    learnset MOVE_LOCK_ON, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_SIGNAL_BEAM, 30
    learnset MOVE_BULLET_SEED, 32
    learnset MOVE_ICE_BEAM, 32
    learnset MOVE_HYDRO_PUMP, 38
    learnset MOVE_SOAK, 44
    learnset MOVE_HYPER_BEAM, 44
    terminatelearnset


levelup SPECIES_OCTILLERY
    learnset MOVE_OCTAZOOKA, 0
    learnset MOVE_OCTAZOOKA, 1
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_AURORA_BEAM, 1
    learnset MOVE_CONSTRICT, 6
    learnset MOVE_PSYBEAM, 11
    learnset MOVE_AURORA_BEAM, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_FOCUS_ENERGY, 22
    learnset MOVE_LOCK_ON, 24
    learnset MOVE_WRING_OUT, 28
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_BULLET_SEED, 37
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_HYDRO_PUMP, 46
    learnset MOVE_SOAK, 55
    learnset MOVE_HYPER_BEAM, 55
    terminatelearnset


levelup SPECIES_DELIBIRD
    learnset MOVE_PRESENT, 1
    learnset MOVE_DRILL_PECK, 25
    terminatelearnset


levelup SPECIES_MANTINE
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_ROOST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_GUST, 8
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_TWISTER, 17
    learnset MOVE_AIR_CUTTER, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_AGILITY, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_AQUA_RING, 37
    learnset MOVE_SCALD, 40
    learnset MOVE_BOUNCE, 43
    learnset MOVE_HAZE, 46
    learnset MOVE_ICE_BEAM, 49
    learnset MOVE_TAILWIND, 52
    learnset MOVE_HURRICANE, 55
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_BLIZZARD, 61
    terminatelearnset


levelup SPECIES_SKARMORY
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_FURY_ATTACK, 12
    learnset MOVE_AIR_CUTTER, 12
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_FEINT, 20
    learnset MOVE_AGILITY, 23
    learnset MOVE_SWIFT, 23
    learnset MOVE_STEEL_WING, 30
    learnset MOVE_SLASH, 31
    learnset MOVE_DRILL_PECK, 36
    learnset MOVE_SPIKES, 36
    learnset MOVE_AUTOTOMIZE, 40
    learnset MOVE_METAL_SOUND, 40
    learnset MOVE_AIR_SLASH, 45
    learnset MOVE_IRON_DEFENSE, 48
    learnset MOVE_BRAVE_BIRD, 52
    learnset MOVE_NIGHT_SLASH, 53
    terminatelearnset


levelup SPECIES_HOUNDOUR
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_HOWL, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_SMOG, 13
    learnset MOVE_TAUNT, 16
    learnset MOVE_BEAT_UP, 19
    learnset MOVE_INCINERATE, 22
    learnset MOVE_BITE, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_FIRE_FANG, 31
    learnset MOVE_TORMENT, 34
    learnset MOVE_FEINT_ATTACK, 37
    learnset MOVE_FLAME_CHARGE, 40
    learnset MOVE_PSYCHIC_FANGS, 43
    learnset MOVE_PAYBACK, 46
    learnset MOVE_FLAME_BURST, 49
    learnset MOVE_NASTY_PLOT, 52
    learnset MOVE_SCORCHING_SANDS, 55
    learnset MOVE_CRUNCH, 58
    learnset MOVE_FLAMETHROWER, 61
    learnset MOVE_DARK_PULSE, 64
    learnset MOVE_INFERNO, 67
    learnset MOVE_FIRE_BLAST, 71
    terminatelearnset


levelup SPECIES_HOUNDOOM
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_HOWL, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_SMOG, 13
    learnset MOVE_TAUNT, 16
    learnset MOVE_BEAT_UP, 19
    learnset MOVE_INCINERATE, 22
    learnset MOVE_BITE, 26
    learnset MOVE_HEADBUTT, 29
    learnset MOVE_FIRE_FANG, 32
    learnset MOVE_TORMENT, 35
    learnset MOVE_FEINT_ATTACK, 38
    learnset MOVE_FLAME_CHARGE, 41
    learnset MOVE_PSYCHIC_FANGS, 44
    learnset MOVE_FOUL_PLAY, 47
    learnset MOVE_FLAME_BURST, 50
    learnset MOVE_NASTY_PLOT, 53
    learnset MOVE_SCORCHING_SANDS, 56
    learnset MOVE_CRUNCH, 59
    learnset MOVE_FLAMETHROWER, 62
    learnset MOVE_DARK_PULSE, 65
    learnset MOVE_INFERNO, 68
    learnset MOVE_FIRE_BLAST, 72
    terminatelearnset


levelup SPECIES_KINGDRA
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_ICY_WIND, 9
    learnset MOVE_TWISTER, 12
    learnset MOVE_WATER_PULSE, 15
    learnset MOVE_CLEAR_SMOG, 18
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_DRAGON_BREATH, 23
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_AURORA_BEAM, 29
    learnset MOVE_BRINE, 32
    learnset MOVE_AGILITY, 35
    learnset MOVE_FLIP_TURN, 38
    learnset MOVE_RAIN_DANCE, 41
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_DRAGON_PULSE, 47
    learnset MOVE_ICE_BEAM, 50
    learnset MOVE_FLASH_CANNON, 53
    learnset MOVE_SURF, 56
    learnset MOVE_DRAGON_DANCE, 59
    learnset MOVE_HYDRO_PUMP, 62
    learnset MOVE_DRACO_METEOR, 65
    learnset MOVE_WAVE_CRASH, 68
    terminatelearnset


levelup SPECIES_PHANPY
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 6
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_NATURAL_GIFT, 15
    learnset MOVE_ENDURE, 19
    learnset MOVE_SLAM, 24
    learnset MOVE_TAKE_DOWN, 28
    learnset MOVE_CHARM, 33
    learnset MOVE_LAST_RESORT, 37
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset


levelup SPECIES_DONPHAN
    learnset MOVE_FURY_ATTACK, 0
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_RAPID_SPIN, 6
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_ASSURANCE, 15
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_SLAM, 24
    learnset MOVE_MAGNITUDE, 30
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_EARTHQUAKE, 43
    learnset MOVE_GIGA_IMPACT, 50
    terminatelearnset


levelup SPECIES_PORYGON2
    learnset MOVE_DEFENSE_CURL, 0
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_SHARPEN, 8
    learnset MOVE_MAGNET_RISE, 11
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_SWIFT, 17
    learnset MOVE_RECYCLE, 19
    learnset MOVE_AGILITY, 22
    learnset MOVE_SHOCK_WAVE, 25
    learnset MOVE_CONVERSION_2, 28
    learnset MOVE_RECOVER, 31
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_BARRIER, 37
    learnset MOVE_GRAVITY, 40
    learnset MOVE_DISCHARGE, 43
    learnset MOVE_TRI_ATTACK, 46
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_MAGIC_COAT, 52
    learnset MOVE_LOCK_ON, 55
    learnset MOVE_ZAP_CANNON, 58
    learnset MOVE_HYPER_BEAM, 61
    terminatelearnset


levelup SPECIES_STANTLER
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ME_FIRST, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CONFUSE_RAY, 9
    learnset MOVE_HIDDEN_POWER, 12
    learnset MOVE_STOMP, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_CALM_MIND, 21
    learnset MOVE_BULLDOZE, 23
    learnset MOVE_HYPNOSIS, 25
    learnset MOVE_PSYSHIELD_BASH, 28
    learnset MOVE_TRI_ATTACK, 31
    learnset MOVE_IMPRISON, 33
    learnset MOVE_HORN_LEECH, 37
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_AGILITY, 43
    learnset MOVE_ME_FIRST, 48
    terminatelearnset


levelup SPECIES_SMEARGLE
    learnset MOVE_SKETCH, 1
    learnset MOVE_SKETCH, 11
    learnset MOVE_SKETCH, 21
    learnset MOVE_SKETCH, 31
    learnset MOVE_SKETCH, 41
    learnset MOVE_SKETCH, 51
    learnset MOVE_SKETCH, 61
    learnset MOVE_SKETCH, 71
    learnset MOVE_SKETCH, 81
    learnset MOVE_SKETCH, 91
    terminatelearnset


levelup SPECIES_TYROGUE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_MEDITATE, 4
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_FEINT, 18
    terminatelearnset


levelup SPECIES_HITMONTOP
    learnset MOVE_TRIPLE_KICK, 0
    learnset MOVE_TRIPLE_KICK, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_REVENGE, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_MEDITATE, 4
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_FEINT, 18
    learnset MOVE_ROLLING_KICK, 21
    learnset MOVE_DETECT, 24
    learnset MOVE_RAPID_SPIN, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_GYRO_BALL, 33
    learnset MOVE_AGILITY, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_DRILL_RUN, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_COUNTER, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_TRIPLE_AXEL, 57
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_SMOOCHUM
    learnset MOVE_LICK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LICK, 5
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_CONFUSION, 13
    learnset MOVE_COVET, 16
    learnset MOVE_SING, 19
    learnset MOVE_HEART_STAMP, 21
    learnset MOVE_SWEET_KISS, 22
    learnset MOVE_COPYCAT, 23
    learnset MOVE_FAKE_TEARS, 25
    learnset MOVE_ICE_PUNCH, 28
    learnset MOVE_LUCKY_CHANT, 31
    learnset MOVE_MEAN_LOOK, 33
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_AVALANCHE, 35
    learnset MOVE_PERISH_SONG, 44
    learnset MOVE_BLIZZARD, 48
    terminatelearnset


levelup SPECIES_ELEKID
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_LOW_KICK, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARGE, 18
    learnset MOVE_LOW_SWEEP, 21
    learnset MOVE_FOLLOW_ME, 24
    learnset MOVE_THUNDER_PUNCH, 27
    learnset MOVE_SCREECH, 30
    learnset MOVE_VOLT_SWITCH, 33
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_KNOCK_OFF, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_DRAIN_PUNCH, 45
    learnset MOVE_ELECTRIC_TERRAIN, 48
    learnset MOVE_THUNDERBOLT, 51
    learnset MOVE_BULK_UP, 54
    learnset MOVE_CROSS_CHOP, 57
    learnset MOVE_SUPERCELL_SLAM, 60
    learnset MOVE_THUNDER, 63
    learnset MOVE_GIGA_IMPACT, 66
    terminatelearnset


levelup SPECIES_MAGBY
    learnset MOVE_SMOG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOKESCREEN, 7
    learnset MOVE_FIRE_SPIN, 10
    learnset MOVE_WILL_O_WISP, 13
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_THIEF, 18
    learnset MOVE_CONFUSE_RAY, 21
    learnset MOVE_VACUUM_WAVE, 24
    learnset MOVE_FIRE_PUNCH, 27
    learnset MOVE_FOLLOW_ME, 30
    learnset MOVE_FLAME_BURST, 33
    learnset MOVE_SCORCHING_SANDS, 36
    learnset MOVE_SUNNY_DAY, 39
    learnset MOVE_LAVA_PLUME, 42
    learnset MOVE_TAUNT, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_FLAMETHROWER, 51
    learnset MOVE_THUNDERBOLT, 54
    learnset MOVE_AURA_SPHERE, 57
    learnset MOVE_SEARING_SHOT, 60
    learnset MOVE_SOLAR_BEAM, 63
    terminatelearnset


levelup SPECIES_MILTANK
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROLLOUT, 4
    learnset MOVE_DEFENSE_CURL, 7
    learnset MOVE_CHARM, 10
    learnset MOVE_BIDE, 13
    learnset MOVE_STOMP, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_MILK_DRINK, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ZEN_HEADBUTT, 27
    learnset MOVE_ROCK_SMASH, 30
    learnset MOVE_CURSE, 33
    learnset MOVE_FACADE, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_HEAL_BELL, 45
    learnset MOVE_GYRO_BALL, 48
    learnset MOVE_CAPTIVATE, 51
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_DOUBLE_EDGE, 57
    learnset MOVE_HIGH_HORSEPOWER, 60
    terminatelearnset


levelup SPECIES_BLISSEY
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DEFENSE_CURL, 6
    learnset MOVE_SWEET_KISS, 10
    learnset MOVE_REFRESH, 12
    learnset MOVE_DISARMING_VOICE, 15
    learnset MOVE_COVET, 18
    learnset MOVE_CHARM, 20
    learnset MOVE_DRAINING_KISS, 23
    learnset MOVE_SWIFT, 26
    learnset MOVE_SING, 29
    learnset MOVE_EGG_BOMB, 32
    learnset MOVE_REFLECT, 35
    learnset MOVE_LIGHT_SCREEN, 35
    learnset MOVE_SEISMIC_TOSS, 38
    learnset MOVE_SOFT_BOILED, 41
    learnset MOVE_HYPER_VOICE, 44
    learnset MOVE_HELPING_HAND, 47
    learnset MOVE_DAZZLING_GLEAM, 50
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_PAIN_SPLIT, 57
    learnset MOVE_HEALING_WISH, 60
    learnset MOVE_BOOMBURST, 64
    terminatelearnset


levelup SPECIES_RAIKOU
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_EXTRASENSORY, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_BITE, 12
    learnset MOVE_SPARK, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_QUICK_ATTACK, 22
    learnset MOVE_HOWL, 36
    learnset MOVE_THUNDER_FANG, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_CALM_MIND, 46
    learnset MOVE_REFLECT, 48
    learnset MOVE_EXTRASENSORY, 55
    learnset MOVE_DISCHARGE, 55
    learnset MOVE_RAIN_DANCE, 68
    learnset MOVE_THUNDER, 78
    learnset MOVE_ZAP_CANNON, 78
    terminatelearnset


levelup SPECIES_ENTEI
    learnset MOVE_SACRED_FIRE, 1
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_ERUPTION, 1
    learnset MOVE_EXTRASENSORY, 1
    learnset MOVE_LAVA_PLUME, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FLAME_WHEEL, 6
    learnset MOVE_EMBER, 8
    learnset MOVE_BITE, 12
    learnset MOVE_ROAR, 19
    learnset MOVE_FIRE_SPIN, 22
    learnset MOVE_STOMP, 29
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_FIRE_FANG, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_CALM_MIND, 46
    learnset MOVE_SWAGGER, 52
    learnset MOVE_EXTRASENSORY, 55
    learnset MOVE_LAVA_PLUME, 55
    learnset MOVE_SUNNY_DAY, 66
    learnset MOVE_FIRE_BLAST, 71
    learnset MOVE_ERUPTION, 81
    terminatelearnset


levelup SPECIES_SUICUNE
    learnset MOVE_SHEER_COLD, 1
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_GUST, 1
    learnset MOVE_MIST, 1
    learnset MOVE_BITE, 1
    learnset MOVE_BUBBLE_BEAM, 1
    learnset MOVE_RAIN_DANCE, 1
    learnset MOVE_WATER_PULSE, 6
    learnset MOVE_BUBBLE_BEAM, 8
    learnset MOVE_BITE, 12
    learnset MOVE_GUST, 22
    learnset MOVE_ROAR, 24
    learnset MOVE_AURORA_BEAM, 29
    learnset MOVE_MIST, 36
    learnset MOVE_ICE_FANG, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_RAIN_DANCE, 42
    learnset MOVE_TAILWIND, 45
    learnset MOVE_CALM_MIND, 46
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_SURF, 54
    learnset MOVE_EXTRASENSORY, 55
    learnset MOVE_HYDRO_PUMP, 71
    learnset MOVE_BLIZZARD, 81
    terminatelearnset


levelup SPECIES_LARVITAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SCARY_FACE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_CHIP_AWAY, 16
    learnset MOVE_TAUNT, 19
	learnset MOVE_BULLDOZE, 21
    learnset MOVE_SCREECH, 23
    learnset MOVE_SANDSTORM, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_PAYBACK, 32
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_STEALTH_ROCK, 38
    learnset MOVE_THRASH, 41
    learnset MOVE_CRUNCH, 45
    learnset MOVE_DIG, 49
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_HIGH_HORSEPOWER, 59
    learnset MOVE_DRAGON_DANCE, 63
    terminatelearnset


levelup SPECIES_PUPITAR
    learnset MOVE_IRON_DEFENSE, 0
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SCARY_FACE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_CHIP_AWAY, 16
    learnset MOVE_TAUNT, 19
	learnset MOVE_BULLDOZE, 21
    learnset MOVE_SCREECH, 23
    learnset MOVE_SANDSTORM, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_PAYBACK, 32
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_STEALTH_ROCK, 38
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_THRASH, 44
    learnset MOVE_CRUNCH, 47
    learnset MOVE_DIG, 51
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_HIGH_HORSEPOWER, 62
    learnset MOVE_DRAGON_DANCE, 66
    learnset MOVE_EARTHQUAKE, 70
    terminatelearnset


levelup SPECIES_TYRANITAR
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SCARY_FACE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_CHIP_AWAY, 16
    learnset MOVE_TAUNT, 19
	learnset MOVE_BULLDOZE, 21
    learnset MOVE_SCREECH, 23
    learnset MOVE_SANDSTORM, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_PAYBACK, 32
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_STEALTH_ROCK, 38
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_THRASH, 44
    learnset MOVE_CRUNCH, 47
    learnset MOVE_DIG, 51
    learnset MOVE_GIGA_IMPACT, 55
    learnset MOVE_STONE_EDGE, 59
    learnset MOVE_HIGH_HORSEPOWER, 62
    learnset MOVE_OUTRAGE, 66
    learnset MOVE_DRAGON_DANCE, 70
    learnset MOVE_EARTHQUAKE, 74
    learnset MOVE_DARKEST_LARIAT, 79
    terminatelearnset


levelup SPECIES_LUGIA
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_MIST, 9
    learnset MOVE_GUST, 9
    learnset MOVE_DRAGON_RUSH, 15
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_SAFEGUARD, 39
    learnset MOVE_RAIN_DANCE, 47
    learnset MOVE_AEROBLAST, 48
    learnset MOVE_PUNISHMENT, 50
    learnset MOVE_HYDRO_PUMP, 55
    learnset MOVE_CALM_MIND, 57
    learnset MOVE_RECOVER, 57
    learnset MOVE_ANCIENT_POWER, 57
    learnset MOVE_FUTURE_SIGHT, 80
    learnset MOVE_NATURAL_GIFT, 85
    learnset MOVE_SKY_ATTACK, 94
    terminatelearnset


levelup SPECIES_HO_OH
    learnset MOVE_GUST, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_LIFE_DEW, 9
    learnset MOVE_GUST, 9
    learnset MOVE_BRAVE_BIRD, 15
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_SAFEGUARD, 39
    learnset MOVE_SUNNY_DAY, 47
    learnset MOVE_SACRED_FIRE, 48
    learnset MOVE_PUNISHMENT, 50
    learnset MOVE_FIRE_BLAST, 55
    learnset MOVE_CALM_MIND, 57
    learnset MOVE_RECOVER, 57
    learnset MOVE_ANCIENT_POWER, 57
    learnset MOVE_FUTURE_SIGHT, 80
    learnset MOVE_NATURAL_GIFT, 85
    learnset MOVE_SKY_ATTACK, 94
    learnset MOVE_BURN_UP, 99
    terminatelearnset


levelup SPECIES_CELEBI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HEAL_BELL, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_RECOVER, 1
    learnset MOVE_SAFEGUARD, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_BATON_PASS, 27
    learnset MOVE_ANCIENT_POWER, 29
    learnset MOVE_LIFE_DEW, 40
    learnset MOVE_NATURAL_GIFT, 46
    learnset MOVE_LEECH_SEED, 50
    learnset MOVE_HEAL_BLOCK, 55
    learnset MOVE_RECOVER, 60
    learnset MOVE_FUTURE_SIGHT, 67
    learnset MOVE_HEALING_WISH, 76
    learnset MOVE_LEAF_STORM, 86
    learnset MOVE_PERISH_SONG, 95
    terminatelearnset


levelup SPECIES_TREECKO
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_BULLET_SEED, 10
    learnset MOVE_DETECT, 13
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_AGILITY, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_DOUBLE_TEAM, 27
    learnset MOVE_ACROBATICS, 30
    learnset MOVE_DRAGON_BREATH, 33
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_SCREECH, 39
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_ENERGY_BALL, 51
    learnset MOVE_DRAGON_PULSE, 54
    learnset MOVE_LEAF_STORM, 57
    terminatelearnset


levelup SPECIES_GROVYLE
    learnset MOVE_FURY_CUTTER, 0
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_BULLET_SEED, 10
    learnset MOVE_DETECT, 13
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_AGILITY, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_FALSE_SWIPE, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_ACROBATICS, 30
    learnset MOVE_DRAGON_BREATH, 33
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_SCREECH, 39
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_ENERGY_BALL, 51
    learnset MOVE_DRAGON_PULSE, 54
    learnset MOVE_LEAF_STORM, 57
    terminatelearnset


levelup SPECIES_SCEPTILE
    learnset MOVE_DUAL_CHOP, 0
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_BULLET_SEED, 10
    learnset MOVE_DETECT, 13
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_AGILITY, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_FALSE_SWIPE, 26
    learnset MOVE_DOUBLE_TEAM, 28
    learnset MOVE_ACROBATICS, 30
    learnset MOVE_DRAGON_BREATH, 33
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_SCREECH, 39
    learnset MOVE_LEAF_BLADE, 42
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_SHED_TAIL, 51
    learnset MOVE_ENERGY_BALL, 54
    learnset MOVE_DRAGON_PULSE, 57
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset


levelup SPECIES_TORCHIC
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 3
    learnset MOVE_FLAME_CHARGE, 9
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_PECK, 14
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_FIRE_SPIN, 19
    learnset MOVE_BOUNCE, 24
    learnset MOVE_SLASH, 28
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_FOCUS_ENERGY, 29
    learnset MOVE_FEATHER_DANCE, 33
    learnset MOVE_REVERSAL, 36
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_FLARE_BLITZ, 39
    learnset MOVE_MIRROR_MOVE, 41
    terminatelearnset


levelup SPECIES_COMBUSKEN
    learnset MOVE_DOUBLE_KICK, 0
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_FEATHER_DANCE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_PECK, 14
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_QUICK_ATTACK, 25
    learnset MOVE_BOUNCE, 30
    learnset MOVE_SLASH, 32
    learnset MOVE_FOCUS_ENERGY, 35
    learnset MOVE_BULK_UP, 38
    learnset MOVE_BLAZE_KICK, 40
    learnset MOVE_MIRROR_MOVE, 47
    learnset MOVE_REVERSAL, 50
    learnset MOVE_SKY_UPPERCUT, 53
    learnset MOVE_FLARE_BLITZ, 56
    terminatelearnset


levelup SPECIES_BLAZIKEN
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


levelup SPECIES_MUDKIP
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_SUPERSONIC, 18
    learnset MOVE_WATER_PULSE, 21
    learnset MOVE_BITE, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_STOMP, 30
    learnset MOVE_SLUDGE, 33
    learnset MOVE_YAWN, 36
    learnset MOVE_LOW_KICK, 39
    learnset MOVE_STOMPING_TANTRUM, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_WATERFALL, 48
    learnset MOVE_REST, 51
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_LIQUIDATION, 57
    learnset MOVE_SLUDGE_WAVE, 60
    learnset MOVE_SLEEP_TALK, 63
    learnset MOVE_SUPERPOWER, 66
    learnset MOVE_FISSURE, 69
    terminatelearnset


levelup SPECIES_MARSHTOMP
    learnset MOVE_MUD_SHOT, 0
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_AVALANCHE, 15
    learnset MOVE_SUPERSONIC, 18
    learnset MOVE_WATER_PULSE, 21
    learnset MOVE_BITE, 24
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_SLUDGE, 33
    learnset MOVE_YAWN, 36
    learnset MOVE_LOW_KICK, 39
    learnset MOVE_DIG, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_WATERFALL, 48
    learnset MOVE_REST, 51
    learnset MOVE_BLIZZARD, 54
    learnset MOVE_LIQUIDATION, 57
    learnset MOVE_SLUDGE_WAVE, 60
    learnset MOVE_SLEEP_TALK, 63
    learnset MOVE_SUPERPOWER, 66
    learnset MOVE_MUDDY_WATER, 70
    learnset MOVE_EARTHQUAKE, 74
    terminatelearnset


levelup SPECIES_SWAMPERT
    learnset MOVE_MUD_SHOT, 0
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_MUD_SLAP, 12
    learnset MOVE_AVALANCHE, 15
    learnset MOVE_SUPERSONIC, 18
    learnset MOVE_WATER_PULSE, 21
    learnset MOVE_BITE, 24
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_SLUDGE, 33
    learnset MOVE_YAWN, 36
    learnset MOVE_LOW_KICK, 39
    learnset MOVE_DIG, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_WATERFALL, 48
    learnset MOVE_REST, 51
    learnset MOVE_BLIZZARD, 54
    learnset MOVE_LIQUIDATION, 57
    learnset MOVE_SLUDGE_WAVE, 60
    learnset MOVE_SLEEP_TALK, 63
    learnset MOVE_SUPERPOWER, 66
    learnset MOVE_MUDDY_WATER, 70
    learnset MOVE_EARTHQUAKE, 72
    learnset MOVE_HYDRO_CANNON, 75
    terminatelearnset


levelup SPECIES_POOCHYENA
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_PURSUIT, 7
    learnset MOVE_HOWL, 10
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_COVET, 19
    learnset MOVE_BEAT_UP, 22
    learnset MOVE_SNARL, 25
    learnset MOVE_ROAR, 28
    learnset MOVE_POISON_FANG, 31
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_SWAGGER, 40
    learnset MOVE_SHADOW_CLAW, 43
    learnset MOVE_NIGHT_SLASH, 46
    learnset MOVE_SLASH, 49
    learnset MOVE_HONE_CLAWS, 52
    learnset MOVE_HYPER_FANG, 55
    learnset MOVE_DIG, 58
    learnset MOVE_TAKE_DOWN, 61
    learnset MOVE_SUCKER_PUNCH, 64
    learnset MOVE_PLAY_ROUGH, 67
    learnset MOVE_CRUNCH, 70
    terminatelearnset


levelup SPECIES_MIGHTYENA
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_PURSUIT, 7
    learnset MOVE_HOWL, 10
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_COVET, 19
    learnset MOVE_BEAT_UP, 22
    learnset MOVE_SNARL, 25
    learnset MOVE_ROAR, 28
    learnset MOVE_POISON_FANG, 31
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_SWAGGER, 40
    learnset MOVE_SHADOW_CLAW, 43
    learnset MOVE_NIGHT_SLASH, 46
    learnset MOVE_SLASH, 49
    learnset MOVE_HONE_CLAWS, 52
    learnset MOVE_HYPER_FANG, 55
    learnset MOVE_DIG, 58
    learnset MOVE_TAKE_DOWN, 61
    learnset MOVE_SUCKER_PUNCH, 64
    learnset MOVE_PLAY_ROUGH, 67
    learnset MOVE_CRUNCH, 70
    learnset MOVE_DOUBLE_EDGE, 73
    terminatelearnset


levelup SPECIES_ZIGZAGOON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_COVET, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_THIEF, 16
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_REST, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_FLING, 27
    learnset MOVE_ENDURE, 30
    learnset MOVE_FLAIL, 33
    learnset MOVE_REVERSAL, 36
    learnset MOVE_HELPING_HAND, 39
    learnset MOVE_DIG, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_DOUBLE_TEAM, 48
    learnset MOVE_EXTREME_SPEED, 51
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_BELLY_DRUM, 57
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_LINOONE
    learnset MOVE_SLASH, 0
    learnset MOVE_SLASH, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_TAIL_WHIP, 8
    learnset MOVE_COVET, 11
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_THIEF, 17
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_REST, 22
    learnset MOVE_HEADBUTT, 25
    learnset MOVE_FLING, 28
    learnset MOVE_ENDURE, 31
    learnset MOVE_FLAIL, 34
    learnset MOVE_REVERSAL, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_DIG, 43
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_DOUBLE_TEAM, 49
    learnset MOVE_EXTREME_SPEED, 52
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_BELLY_DRUM, 58
    learnset MOVE_DOUBLE_EDGE, 61
    terminatelearnset


levelup SPECIES_WURMPLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_BUG_BITE, 15
    terminatelearnset


levelup SPECIES_SILCOON
    learnset MOVE_HARDEN, 0
    learnset MOVE_HARDEN, 1
    terminatelearnset


levelup SPECIES_BEAUTIFLY
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_ABSORB, 12
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_MORNING_SUN, 17
    learnset MOVE_AIR_CUTTER, 20
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_SILVER_WIND, 25
    learnset MOVE_ATTRACT, 27
    learnset MOVE_WHIRLWIND, 30
    learnset MOVE_GIGA_DRAIN, 32
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_RAGE, 37
    learnset MOVE_QUIVER_DANCE, 40
    terminatelearnset


levelup SPECIES_CASCOON
    learnset MOVE_HARDEN, 0
    learnset MOVE_HARDEN, 1
    terminatelearnset


levelup SPECIES_DUSTOX
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 12
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_MOONLIGHT, 17
    learnset MOVE_VENOSHOCK, 20
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_SILVER_WIND, 25
    learnset MOVE_LIGHT_SCREEN, 27
    learnset MOVE_WHIRLWIND, 30
    learnset MOVE_TOXIC, 32
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_PROTECT, 37
    learnset MOVE_QUIVER_DANCE, 40
    terminatelearnset


levelup SPECIES_LOTAD
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ABSORB, 4
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_BUBBLE, 9
    learnset MOVE_MIST, 11
    learnset MOVE_NATURAL_GIFT, 12
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_FLAIL, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_NATURE_POWER, 24
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_RAIN_DANCE, 30
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_ENERGY_BALL, 39
    terminatelearnset


levelup SPECIES_LOMBRE
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ABSORB, 6
    learnset MOVE_MIST, 9
    learnset MOVE_BUBBLE, 9
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_FURY_SWIPES, 15
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_WATER_SPORT, 20
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_NATURE_POWER, 29
    learnset MOVE_UPROAR, 32
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_RAIN_DANCE, 43
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_HYDRO_PUMP, 54
    learnset MOVE_ENERGY_BALL, 57
    terminatelearnset


levelup SPECIES_LUDICOLO
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_MIST, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_BUBBLE_BEAM, 1
    learnset MOVE_NATURE_POWER, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_RAIN_DANCE, 1
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    terminatelearnset


levelup SPECIES_SEEDOT
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BIDE, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_GROWTH, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_NATURE_POWER, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_MAGICAL_LEAF, 27
    learnset MOVE_SUNNY_DAY, 30
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_EXPLOSION, 36
    terminatelearnset


levelup SPECIES_NUZLEAF
    learnset MOVE_RAZOR_LEAF, 0
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BIDE, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_GROWTH, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_BULLET_SEED, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_FAKE_OUT, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_MAGICAL_LEAF, 27
    learnset MOVE_TORMENT, 30
    learnset MOVE_KNOCK_OFF, 33
    learnset MOVE_SUNNY_DAY, 36
    learnset MOVE_AIR_CUTTER, 39
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_SWAGGER, 48
    learnset MOVE_SUCKER_PUNCH, 51
    learnset MOVE_TAILWIND, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_DARK_PULSE, 60
    learnset MOVE_EXPLOSION, 63
    learnset MOVE_SOLAR_BLADE, 66
    learnset MOVE_SOLAR_BEAM, 66
    learnset MOVE_LEAF_STORM, 69
    terminatelearnset


levelup SPECIES_SHIFTRY
    learnset MOVE_LEAF_TORNADO, 0
    learnset MOVE_LEAF_TORNADO, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_GROWTH, 11
    learnset MOVE_ROLLOUT, 14
    learnset MOVE_BULLET_SEED, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_FAKE_OUT, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_TORMENT, 31
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_SUNNY_DAY, 37
    learnset MOVE_AIR_CUTTER, 40
    learnset MOVE_EXTRASENSORY, 43
    learnset MOVE_LEAF_BLADE, 46
    learnset MOVE_SWAGGER, 49
    learnset MOVE_SUCKER_PUNCH, 52
    learnset MOVE_TAILWIND, 55
    learnset MOVE_ENERGY_BALL, 58
    learnset MOVE_DARK_PULSE, 61
    learnset MOVE_EXPLOSION, 64
    learnset MOVE_SOLAR_BLADE, 67
    learnset MOVE_SOLAR_BEAM, 67
    learnset MOVE_LEAF_STORM, 70
    terminatelearnset


levelup SPECIES_TAILLOW
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_SAND_ATTACK, 9
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_ECHOED_VOICE, 15
    learnset MOVE_DOUBLE_TEAM, 18
    learnset MOVE_WING_ATTACK, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_AERIAL_ACE, 27
    learnset MOVE_DEFOG, 30
    learnset MOVE_STEEL_WING, 33
    learnset MOVE_U_TURN, 36
    learnset MOVE_FLY, 39
    terminatelearnset


levelup SPECIES_SWELLOW
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_SAND_ATTACK, 9
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_ECHOED_VOICE, 15
    learnset MOVE_DOUBLE_TEAM, 18
    learnset MOVE_WING_ATTACK, 21
    learnset MOVE_QUICK_GUARD, 24
    learnset MOVE_AERIAL_ACE, 27
    learnset MOVE_DEFOG, 30
    learnset MOVE_STEEL_WING, 33
    learnset MOVE_FACADE, 36
    learnset MOVE_FLY, 39
    learnset MOVE_U_TURN, 42
    learnset MOVE_REVERSAL, 45
    learnset MOVE_AGILITY, 48
    learnset MOVE_THIEF, 51
    learnset MOVE_ROOST, 54
    learnset MOVE_ENDEAVOR, 57
    learnset MOVE_BRAVE_BIRD, 60
    learnset MOVE_HEAT_WAVE, 63
    learnset MOVE_BOOMBURST, 66
    learnset MOVE_SKY_ATTACK, 69
    terminatelearnset


levelup SPECIES_WINGULL
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_GUST, 10
    learnset MOVE_SOAK, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_AERIAL_ACE, 21
    learnset MOVE_MIST, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_U_TURN, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_BRINE, 39
    learnset MOVE_AGILITY, 42
    learnset MOVE_SCALD, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_TAILWIND, 51
    learnset MOVE_SURF, 54
    learnset MOVE_REST, 57
    learnset MOVE_HURRICANE, 60
    learnset MOVE_BLIZZARD, 63
    learnset MOVE_HYDRO_PUMP, 66
    terminatelearnset


levelup SPECIES_PELIPPER
    learnset MOVE_PROTECT, 0
    learnset MOVE_PROTECT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_GUST, 11
    learnset MOVE_SOAK, 14
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_MIST, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_AIR_SLASH, 31
    learnset MOVE_U_TURN, 34
    learnset MOVE_ROOST, 37
    learnset MOVE_BRINE, 40
    learnset MOVE_AGILITY, 43
    learnset MOVE_SCALD, 46
    learnset MOVE_ICE_BEAM, 49
    learnset MOVE_TAILWIND, 52
    learnset MOVE_SURF, 55
    learnset MOVE_REST, 58
    learnset MOVE_HURRICANE, 61
    learnset MOVE_BLIZZARD, 64
    learnset MOVE_HYDRO_PUMP, 67
    terminatelearnset


levelup SPECIES_RALTS
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_DOUBLE_TEAM, 4
    learnset MOVE_CONFUSION, 5
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_TELEPORT, 12
    learnset MOVE_LUCKY_CHANT, 14
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_LIFE_DEW, 21
    learnset MOVE_HYPNOSIS, 22
    learnset MOVE_CALM_MIND, 25
    learnset MOVE_HEAL_PULSE, 26
    learnset MOVE_CHARM, 28
    learnset MOVE_PSYCHIC, 28
    learnset MOVE_IMPRISON, 29
    learnset MOVE_FUTURE_SIGHT, 35
    learnset MOVE_DREAM_EATER, 37
    learnset MOVE_STORED_POWER, 42
    terminatelearnset


levelup SPECIES_KIRLIA
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DOUBLE_TEAM, 6
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_TELEPORT, 12
    learnset MOVE_LUCKY_CHANT, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_LIFE_DEW, 23
    learnset MOVE_HYPNOSIS, 25
    learnset MOVE_CALM_MIND, 29
    learnset MOVE_HEAL_PULSE, 31
    learnset MOVE_CHARM, 33
    learnset MOVE_IMPRISON, 33
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_FUTURE_SIGHT, 45
    learnset MOVE_DREAM_EATER, 47
    learnset MOVE_STORED_POWER, 51
    terminatelearnset


levelup SPECIES_GARDEVOIR
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


levelup SPECIES_SURSKIT
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_INFESTATION, 10
    learnset MOVE_WATER_GUN, 13
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_WATER_SPORT, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_SKITTER_SMACK, 23
    learnset MOVE_SOAK, 26
    learnset MOVE_PIN_MISSILE, 29
    learnset MOVE_BUBBLE_BEAM, 32
    learnset MOVE_MIST, 35
    learnset MOVE_AURORA_BEAM, 38
    learnset MOVE_HAZE, 41
    learnset MOVE_SIGNAL_BEAM, 44
    learnset MOVE_GIGA_DRAIN, 47
    learnset MOVE_SCALD, 50
    learnset MOVE_BUG_BUZZ, 53
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_MASQUERAIN
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_INFESTATION, 10
    learnset MOVE_WATER_GUN, 13
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_WATER_SPORT, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_SILVER_WIND, 26
    learnset MOVE_SOAK, 29
    learnset MOVE_SWEET_SCENT, 32
    learnset MOVE_PIN_MISSILE, 35
    learnset MOVE_AIR_CUTTER, 38
    learnset MOVE_BUBBLE_BEAM, 41
    learnset MOVE_MIST, 44
    learnset MOVE_AURORA_BEAM, 47
    learnset MOVE_HAZE, 50
    learnset MOVE_SIGNAL_BEAM, 53
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_QUIVER_DANCE, 59
    learnset MOVE_GIGA_DRAIN, 62
    learnset MOVE_SCALD, 65
    learnset MOVE_BUG_BUZZ, 68
    learnset MOVE_HYDRO_PUMP, 71
    terminatelearnset


levelup SPECIES_SHROOMISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_POISON_POWDER, 19
    learnset MOVE_WORRY_SEED, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_GROWTH, 29
    learnset MOVE_TOXIC, 33
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_SPORE, 40
    terminatelearnset


levelup SPECIES_BRELOOM
    learnset MOVE_MACH_PUNCH, 0
    learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_FEINT, 19
    learnset MOVE_COUNTER, 22
    learnset MOVE_FORCE_PALM, 28
    learnset MOVE_MIND_READER, 33
    learnset MOVE_SKY_UPPERCUT, 39
    learnset MOVE_SEED_BOMB, 44
    learnset MOVE_DYNAMIC_PUNCH, 50
    terminatelearnset


levelup SPECIES_SLAKOTH
    learnset MOVE_SCRATCH, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_ENCORE, 6
    learnset MOVE_SLACK_OFF, 9
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_AMNESIA, 17
    learnset MOVE_COVET, 22
    learnset MOVE_CHIP_AWAY, 25
    learnset MOVE_COUNTER, 30
    learnset MOVE_FLAIL, 33
    learnset MOVE_PLAY_ROUGH, 38
    terminatelearnset


levelup SPECIES_VIGOROTH
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_UPROAR, 1
    learnset MOVE_ENCORE, 6
    learnset MOVE_UPROAR, 9
    learnset MOVE_FURY_SWIPES, 14
    learnset MOVE_ENDURE, 17
    learnset MOVE_SLASH, 23
    learnset MOVE_CHIP_AWAY, 27
    learnset MOVE_COUNTER, 33
    learnset MOVE_FOCUS_PUNCH, 37
    learnset MOVE_REVERSAL, 43
    terminatelearnset


levelup SPECIES_SLAKING
    learnset MOVE_SWAGGER, 0
    learnset MOVE_SWAGGER, 1
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_PUNISHMENT, 1
    learnset MOVE_FLING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_SLACK_OFF, 1
    learnset MOVE_ENCORE, 6
    learnset MOVE_SLACK_OFF, 9
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_AMNESIA, 17
    learnset MOVE_COVET, 23
    learnset MOVE_CHIP_AWAY, 27
    learnset MOVE_COUNTER, 33
    learnset MOVE_FLAIL, 39
    learnset MOVE_FLING, 47
    learnset MOVE_PUNISHMENT, 53
    learnset MOVE_HAMMER_ARM, 61
    terminatelearnset


levelup SPECIES_NINCADA
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_SAND_ATTACK, 9
    learnset MOVE_ABSORB, 13
    learnset MOVE_MUD_SLAP, 15
    learnset MOVE_FALSE_SWIPE, 20
    learnset MOVE_FURY_SWIPES, 22
    learnset MOVE_METAL_CLAW, 23
    learnset MOVE_BIDE, 29
    learnset MOVE_MIND_READER, 30
    learnset MOVE_DIG, 38
    terminatelearnset


levelup SPECIES_NINJASK
    learnset MOVE_FURY_CUTTER, 0
    learnset MOVE_SCREECH, 0
    learnset MOVE_DOUBLE_TEAM, 0
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_DIG, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_SAND_ATTACK, 9
    learnset MOVE_ABSORB, 14
    learnset MOVE_AGILITY, 15
    learnset MOVE_FURY_SWIPES, 25
    learnset MOVE_BUG_BITE, 29
    learnset MOVE_BATON_PASS, 35
    learnset MOVE_MIND_READER, 36
    learnset MOVE_SLASH, 37
    learnset MOVE_SWORDS_DANCE, 49
    learnset MOVE_X_SCISSOR, 56
    terminatelearnset


levelup SPECIES_SHEDINJA
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_GRUDGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_DIG, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_SAND_ATTACK, 9
    learnset MOVE_ABSORB, 14
    learnset MOVE_CONFUSE_RAY, 21
    learnset MOVE_SHADOW_SNEAK, 25
    learnset MOVE_FURY_SWIPES, 25
    learnset MOVE_MIND_READER, 34
    learnset MOVE_GRUDGE, 37
    learnset MOVE_SPITE, 38
    learnset MOVE_HEAL_BLOCK, 41
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_PHANTOM_FORCE, 55
    terminatelearnset


levelup SPECIES_WHISMUR
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_HOWL, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_REST, 16
    learnset MOVE_SLEEP_TALK, 16
    learnset MOVE_SNORE, 18
    learnset MOVE_STOMP, 21
    learnset MOVE_SUPERSONIC, 24
    learnset MOVE_ROAR, 27
    learnset MOVE_SCREECH, 30
    learnset MOVE_UPROAR, 33
    learnset MOVE_HYPER_VOICE, 36
    terminatelearnset


levelup SPECIES_LOUDRED
    learnset MOVE_BITE, 0
    learnset MOVE_BITE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_HOWL, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_REST, 16
    learnset MOVE_SLEEP_TALK, 16
    learnset MOVE_SNORE, 18
    learnset MOVE_STOMP, 21
    learnset MOVE_ROCK_TOMB, 24
    learnset MOVE_SUPERSONIC, 27
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_ROAR, 33
    learnset MOVE_UPROAR, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_SCREECH, 42
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_SWAGGER, 54
    learnset MOVE_FLAMETHROWER, 57
    terminatelearnset


levelup SPECIES_EXPLOUD
    learnset MOVE_CRUNCH, 0
    learnset MOVE_CRUNCH, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG,1 
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_HOWL, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_REST, 16
    learnset MOVE_SLEEP_TALK, 16
    learnset MOVE_SNORE, 18
    learnset MOVE_STOMP, 21
    learnset MOVE_ROCK_TOMB, 24
    learnset MOVE_SUPERSONIC, 27
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_ROAR, 33
    learnset MOVE_UPROAR, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_SCREECH, 42
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_SWAGGER, 54
    learnset MOVE_FLAMETHROWER, 57
    learnset MOVE_BOOMBURST, 60
    learnset MOVE_HYPER_BEAM, 63
    terminatelearnset


levelup SPECIES_MAKUHITA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ARM_THRUST, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_FORCE_PALM, 13
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_VITAL_THROW, 21
    learnset MOVE_HELPING_HAND, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_SEISMIC_TOSS, 30
    learnset MOVE_BULLET_PUNCH, 33
    learnset MOVE_ENDURE, 36
    learnset MOVE_REVERSAL, 39
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_BULK_UP, 45
    learnset MOVE_DRAIN_PUNCH, 48
    learnset MOVE_COUNTER, 51
    learnset MOVE_CROSS_CHOP, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_HEAVY_SLAM, 60
    learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset


levelup SPECIES_HARIYAMA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ARM_THRUST, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_FORCE_PALM, 14
    learnset MOVE_WHIRLWIND, 17
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_VITAL_THROW, 22
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_SEISMIC_TOSS, 31
    learnset MOVE_BULLET_PUNCH, 34
    learnset MOVE_ENDURE, 37
    learnset MOVE_REVERSAL, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_BULK_UP, 46
    learnset MOVE_DRAIN_PUNCH, 49
    learnset MOVE_COUNTER, 52
    learnset MOVE_CROSS_CHOP, 55
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_HEAVY_SLAM, 61
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_HEADLONG_RUSH, 67
    terminatelearnset


levelup SPECIES_AZURILL
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TAIL_WHIP, 2
    learnset MOVE_WATER_SPORT, 5
    learnset MOVE_BUBBLE, 7
    learnset MOVE_HELPING_HAND, 9
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_CHARM, 9
    learnset MOVE_SLAM, 15
    learnset MOVE_BOUNCE, 18
    terminatelearnset


levelup SPECIES_NOSEPASS
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_BLOCK, 10
    learnset MOVE_THUNDER_WAVE, 13
    learnset MOVE_ROCK_BLAST, 16
    learnset MOVE_SPARK, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_REST, 24
    learnset MOVE_VOLT_SWITCH, 27
    learnset MOVE_SANDSTORM, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_EARTH_POWER, 39
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_LOCK_ON, 48
    learnset MOVE_ZAP_CANNON, 51
    terminatelearnset


levelup SPECIES_SKITTY
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_SING, 7
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_SWEET_KISS, 13
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_ASSIST, 19
    learnset MOVE_RETURN, 22
    learnset MOVE_ATTRACT, 25
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_HELPING_HAND, 31
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_COVET, 37
    learnset MOVE_WAKE_UP_SLAP, 40
    learnset MOVE_CHARM, 43
    learnset MOVE_TIDY_UP, 46
    learnset MOVE_SKITTER_SMACK, 49
    learnset MOVE_CAPTIVATE, 52
    learnset MOVE_ALLURING_VOICE, 55
    learnset MOVE_UPROAR, 58
    learnset MOVE_HEAL_BELL, 61
    learnset MOVE_BATON_PASS, 64
    learnset MOVE_PLAY_ROUGH, 67
    learnset MOVE_HYPER_VOICE, 70
    terminatelearnset


levelup SPECIES_DELCATTY
    learnset MOVE_MOONLIGHT, 0
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_SING, 7
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_SWEET_KISS, 13
    learnset MOVE_FAKE_OUT, 16
    learnset MOVE_ASSIST, 19
    learnset MOVE_RETURN, 22
    learnset MOVE_ATTRACT, 25
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_HELPING_HAND, 31
    learnset MOVE_FEINT_ATTACK, 34
    learnset MOVE_COVET, 37
    learnset MOVE_WAKE_UP_SLAP, 40
    learnset MOVE_CHARM, 43
    learnset MOVE_TIDY_UP, 46
    learnset MOVE_SKITTER_SMACK, 49
    learnset MOVE_CAPTIVATE, 52
    learnset MOVE_ALLURING_VOICE, 55
    learnset MOVE_UPROAR, 58
    learnset MOVE_HEAL_BELL, 61
    learnset MOVE_BATON_PASS, 64
    learnset MOVE_PLAY_ROUGH, 67
    learnset MOVE_HYPER_VOICE, 70
    learnset MOVE_MOONBLAST, 73
    terminatelearnset


levelup SPECIES_SABLEYE
    learnset MOVE_DARK_PULSE, 1
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_SHADOW_SNEAK, 10
    learnset MOVE_FAKE_OUT, 13
    learnset MOVE_DISABLE, 16
    learnset MOVE_DETECT, 18
    learnset MOVE_SNARL, 21
    learnset MOVE_FURY_SWIPES, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_QUASH, 30
    learnset MOVE_SHADOW_CLAW, 33
    learnset MOVE_MEAN_LOOK, 36
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_SHADOW_BALL, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_SUCKER_PUNCH, 51
    learnset MOVE_METAL_BURST, 54
    learnset MOVE_TORMENT, 60
    learnset MOVE_FOUL_PLAY, 63
    learnset MOVE_SWAGGER, 66
    learnset MOVE_PHANTOM_FORCE, 69
    terminatelearnset


levelup SPECIES_MAWILE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PURSUIT, 3
    learnset MOVE_FAKE_TEARS, 6
    learnset MOVE_BITE, 9
    learnset MOVE_TICKLE, 12
    learnset MOVE_PAIN_SPLIT, 15
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_COVET, 24
    learnset MOVE_FIRE_FANG, 27
    learnset MOVE_ICE_FANG, 30
    learnset MOVE_THUNDER_FANG, 33
    learnset MOVE_POISON_FANG, 36
    learnset MOVE_ZEN_HEADBUTT, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_SUCKER_PUNCH, 51
    learnset MOVE_FOCUS_PUNCH, 54
    learnset MOVE_FOUL_PLAY, 57
    learnset MOVE_METAL_BURST, 60
    learnset MOVE_GUILLOTINE, 63
    terminatelearnset


levelup SPECIES_ARON
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_FLAIL, 13
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_ROCK_TOMB, 25
    learnset MOVE_MAGNITUDE, 28
    learnset MOVE_IRON_DEFENSE, 31
    learnset MOVE_SPARK, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_METAL_SOUND, 43
    learnset MOVE_STOMPING_TANTRUM, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_DIG, 52
    learnset MOVE_STONE_EDGE, 55
    learnset MOVE_AUTOTOMIZE, 58
    learnset MOVE_EARTHQUAKE, 61
    learnset MOVE_HEAVY_SLAM, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_HEAD_SMASH, 70
    terminatelearnset


levelup SPECIES_LAIRON
    learnset MOVE_BODY_PRESS, 0
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_FLAIL, 13
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_ROCK_TOMB, 25
    learnset MOVE_MAGNITUDE, 28
    learnset MOVE_IRON_DEFENSE, 31
    learnset MOVE_SPARK, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_METAL_SOUND, 43
    learnset MOVE_STOMPING_TANTRUM, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_DIG, 52
    learnset MOVE_STONE_EDGE, 55
    learnset MOVE_AUTOTOMIZE, 58
    learnset MOVE_EARTHQUAKE, 61
    learnset MOVE_HEAVY_SLAM, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_HEAD_SMASH, 70
    terminatelearnset


levelup SPECIES_AGGRON
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_SLAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_FLAIL, 13
    learnset MOVE_SMACK_DOWN, 16
    learnset MOVE_ROAR, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_ROCK_TOMB, 25
    learnset MOVE_MAGNITUDE, 28
    learnset MOVE_IRON_DEFENSE, 31
    learnset MOVE_SPARK, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_IRON_HEAD, 43
    learnset MOVE_METAL_SOUND, 46
    learnset MOVE_STOMPING_TANTRUM, 49
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_DIG, 55
    learnset MOVE_IRON_TAIL, 58
    learnset MOVE_STONE_EDGE, 61
    learnset MOVE_AUTOTOMIZE, 64
    learnset MOVE_EARTHQUAKE, 67
    learnset MOVE_HEAVY_SLAM, 70
    learnset MOVE_DOUBLE_EDGE, 72
    learnset MOVE_HEAD_SMASH, 75
    terminatelearnset


levelup SPECIES_MEDITITE
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_ROCK_SMASH, 3
    learnset MOVE_FORESIGHT, 6
    learnset MOVE_FAKE_OUT, 9
    learnset MOVE_FORCE_PALM, 12
    learnset MOVE_TRICK, 15
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_BULLET_PUNCH, 24
    learnset MOVE_REVERSAL, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_ACUPRESSURE, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_PSYCHO_CUT, 43
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_RECOVER, 51
    learnset MOVE_HIGH_JUMP_KICK, 54
    learnset MOVE_FOCUS_PUNCH, 57
    terminatelearnset


levelup SPECIES_MEDICHAM
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_ROCK_SMASH, 3
    learnset MOVE_FORESIGHT, 6
    learnset MOVE_FAKE_OUT, 9
    learnset MOVE_FORCE_PALM, 12
    learnset MOVE_TRICK, 15
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_BULLET_PUNCH, 24
    learnset MOVE_REVERSAL, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_ACUPRESSURE, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_POWER_TRICK, 40
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_RECOVER, 51
    learnset MOVE_HIGH_JUMP_KICK, 54
    learnset MOVE_FOCUS_PUNCH, 57
    terminatelearnset


levelup SPECIES_ELECTRIKE
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_EERIE_IMPULSE, 4
    learnset MOVE_INCINERATE, 6
    learnset MOVE_SHOCK_WAVE, 9 
    learnset MOVE_CHARGE, 12 
    learnset MOVE_THUNDER_FANG, 15
    learnset MOVE_FIRE_FANG, 18
    learnset MOVE_ICE_FANG, 18
    learnset MOVE_THUNDER_WAVE, 21
    learnset MOVE_RISING_VOLTAGE, 23
    learnset MOVE_MAGNET_RISE, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_VOLT_SWITCH, 31
    learnset MOVE_AGILITY, 33
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_FLAMETHROWER, 41
    learnset MOVE_SWITCHEROO, 43
    learnset MOVE_THUNDERBOLT, 47
    terminatelearnset

levelup SPECIES_MANECTRIC
    learnset MOVE_FLAME_BURST, 0
    learnset MOVE_ELECTRIC_TERRAIN, 1 
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_EERIE_IMPULSE, 4
    learnset MOVE_INCINERATE, 6
    learnset MOVE_SHOCK_WAVE, 9 
    learnset MOVE_CHARGE, 12 
    learnset MOVE_THUNDER_FANG, 15
    learnset MOVE_FIRE_FANG, 18
    learnset MOVE_ICE_FANG, 18
    learnset MOVE_THUNDER_WAVE, 21
    learnset MOVE_RISING_VOLTAGE, 23
    learnset MOVE_MAGNET_RISE, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_VOLT_SWITCH, 31
    learnset MOVE_AGILITY, 33
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_FLAMETHROWER, 41
    learnset MOVE_SWITCHEROO, 43
    learnset MOVE_THUNDERBOLT, 47
    learnset MOVE_HELPING_HAND, 51
    learnset MOVE_DARK_PULSE, 53
    learnset MOVE_THUNDERCLAP, 57
    learnset MOVE_OVERHEAT, 60
    learnset MOVE_THUNDER, 62
    learnset MOVE_ELECTRO_DRIFT, 66
    terminatelearnset


levelup SPECIES_PLUSLE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_SPARK, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_BESTOW, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_ELECTRO_BALL, 19
    learnset MOVE_COPYCAT, 22
    learnset MOVE_CHARM, 25
    learnset MOVE_CHARGE, 28
    learnset MOVE_DISCHARGE, 31
    learnset MOVE_BATON_PASS, 34
    learnset MOVE_AGILITY, 37
    learnset MOVE_LAST_RESORT, 40
    learnset MOVE_THUNDER, 43
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_ENTRAINMENT, 49
    terminatelearnset


levelup SPECIES_MINUN
    learnset MOVE_NUZZLE, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_SPARK, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_SWITCHEROO, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_ELECTRO_BALL, 19
    learnset MOVE_COPYCAT, 22
    learnset MOVE_FAKE_TEARS, 25
    learnset MOVE_CHARGE, 28
    learnset MOVE_DISCHARGE, 31
    learnset MOVE_BATON_PASS, 34
    learnset MOVE_AGILITY, 37
    learnset MOVE_TRUMP_CARD, 40
    learnset MOVE_THUNDER, 43
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_ENTRAINMENT, 49
    terminatelearnset


levelup SPECIES_VOLBEAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_CONFUSE_RAY, 7
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_MOONLIGHT, 21
    learnset MOVE_DOUBLE_TEAM, 24
    learnset MOVE_ENCORE, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_PROTECT, 33
    learnset MOVE_PSYBEAM, 36
    learnset MOVE_HELPING_HAND, 39
    learnset MOVE_TAILWIND, 42
    learnset MOVE_LUNGE, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_TAIL_GLOW, 51
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_BATON_PASS, 57
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset



levelup SPECIES_ILLUMISE
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_CONFUSE_RAY, 7
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_THUNDER_WAVE, 16
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_MOONLIGHT, 21
    learnset MOVE_DOUBLE_TEAM, 24
    learnset MOVE_ENCORE, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_PROTECT, 33
    learnset MOVE_PSYBEAM, 36
    learnset MOVE_HELPING_HAND, 39
    learnset MOVE_TAILWIND, 42
    learnset MOVE_BUG_BUZZ, 45
    learnset MOVE_DAZZLING_GLEAM, 48
    learnset MOVE_TAIL_GLOW, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_BATON_PASS, 57
    learnset MOVE_BOOMBURST, 60
    terminatelearnset


levelup SPECIES_ROSELIA
    learnset MOVE_ABSORB, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_WATER_SPORT, 4
    learnset MOVE_ACID, 7
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_BULLET_SEED, 19
    learnset MOVE_WORRY_SEED, 22
    learnset MOVE_SLUDGE, 25
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_SLEEP_POWDER, 34
    learnset MOVE_VENOSHOCK, 38
    learnset MOVE_LEAF_TORNADO, 41
    learnset MOVE_SWEET_SCENT, 44
    learnset MOVE_TOXIC_SPIKES, 47
    learnset MOVE_GIGA_DRAIN, 50
    learnset MOVE_POISON_JAB, 53
    learnset MOVE_ENERGY_BALL,56
    learnset MOVE_SYNTHESIS, 59
    learnset MOVE_PETAL_BLIZZARD, 62
    learnset MOVE_SLUDGE_BOMB, 65
    learnset MOVE_AROMATHERAPY, 68
    learnset MOVE_INGRAIN, 71
    learnset MOVE_PETAL_DANCE, 74
    terminatelearnset


levelup SPECIES_GULPIN
    learnset MOVE_POUND, 1
    learnset MOVE_YAWN, 4
    learnset MOVE_SMOG, 7
    learnset MOVE_POISON_GAS, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_AMNESIA, 16
    learnset MOVE_ACID_SPRAY, 18
    learnset MOVE_ENCORE, 21
    learnset MOVE_TOXIC, 24
    learnset MOVE_VENOSHOCK, 27
    learnset MOVE_MUD_SHOT, 30
    learnset MOVE_STOCKPILE, 33
    learnset MOVE_SPIT_UP, 33
    learnset MOVE_SWALLOW, 33
    learnset MOVE_WATER_PULSE, 36
    learnset MOVE_GASTRO_ACID, 39
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_PAIN_SPLIT, 48
    learnset MOVE_SLUDGE_BOMB, 51
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_DESTINY_BOND, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_EARTH_POWER, 63
    terminatelearnset


levelup SPECIES_SWALOT
    learnset MOVE_BODY_SLAM, 0
    learnset MOVE_BODY_SLAM, 1
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_YAWN, 5
    learnset MOVE_SMOG, 8
    learnset MOVE_POISON_GAS, 11
    learnset MOVE_MUD_SLAP, 14
    learnset MOVE_AMNESIA, 17
    learnset MOVE_ACID_SPRAY, 19
    learnset MOVE_ENCORE, 22
    learnset MOVE_TOXIC, 25
    learnset MOVE_VENOSHOCK, 28
    learnset MOVE_MUD_SHOT, 31
    learnset MOVE_STOCKPILE, 34
    learnset MOVE_SPIT_UP, 34
    learnset MOVE_SWALLOW, 34
    learnset MOVE_WATER_PULSE, 37
    learnset MOVE_GASTRO_ACID, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_PAIN_SPLIT, 49
    learnset MOVE_SLUDGE_BOMB, 52
    learnset MOVE_SHADOW_BALL, 55
    learnset MOVE_DESTINY_BOND, 58
    learnset MOVE_GUNK_SHOT, 61
    learnset MOVE_EARTH_POWER, 64
    terminatelearnset


levelup SPECIES_CARVANHA
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 1
    learnset MOVE_RAGE, 4
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_ASSURANCE, 15
    learnset MOVE_BITE, 16
    learnset MOVE_POISON_FANG, 17
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_SCREECH, 21
    learnset MOVE_ICE_FANG, 22
    learnset MOVE_SWAGGER, 25
    learnset MOVE_CRUNCH, 33
    learnset MOVE_AGILITY, 37
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_TAKE_DOWN, 43
    terminatelearnset


levelup SPECIES_SHARPEDO
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


levelup SPECIES_WAILMER
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_ASTONISH, 10
    learnset MOVE_CHILLING_WATER, 13
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_MIST, 18
    learnset MOVE_AVALANCHE, 21
    learnset MOVE_WATER_PULSE, 24
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_BRINE, 30
    learnset MOVE_REST, 33
    learnset MOVE_HEAVY_SLAM, 36
    learnset MOVE_AMNESIA, 39
    learnset MOVE_SCALD, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_BODY_SLAM, 51
    learnset MOVE_SURF, 54
    learnset MOVE_ZEN_HEADBUTT, 57
    learnset MOVE_HYDRO_PUMP, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_WATER_SPOUT, 66
    learnset MOVE_EXPLOSION, 69
    terminatelearnset


levelup SPECIES_WAILORD
    learnset MOVE_SOAK, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_ASTONISH, 11
    learnset MOVE_CHILLING_WATER, 14
    learnset MOVE_ROLLOUT, 17
    learnset MOVE_MIST, 19
    learnset MOVE_AVALANCHE, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_BRINE, 31
    learnset MOVE_REST, 34
    learnset MOVE_HEAVY_SLAM, 37
    learnset MOVE_AMNESIA, 40
    learnset MOVE_SCALD, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_RAIN_DANCE, 49
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_SURF, 55
    learnset MOVE_ZEN_HEADBUTT, 58
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_WATER_SPOUT, 67
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_NUMEL
    learnset MOVE_EMBER, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_MAGNITUDE, 4
    learnset MOVE_STEALTH_ROCK, 6
    learnset MOVE_FLAME_WHEEL, 9
    learnset MOVE_CURSE, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_HEAVY_SLAM, 18
    learnset MOVE_YAWN, 21
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_TEMPER_FLARE, 25
    learnset MOVE_SCORCHING_SANDS, 28
    learnset MOVE_SLACK_OFF, 31
    learnset MOVE_LAVA_PLUME, 33
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_SCALD, 40
    terminatelearnset


levelup SPECIES_CAMERUPT
    learnset MOVE_SEARING_SHOT, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_MAGNITUDE, 4
    learnset MOVE_STEALTH_ROCK, 6
    learnset MOVE_FLAME_WHEEL, 9
    learnset MOVE_CURSE, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_HEAVY_SLAM, 18
    learnset MOVE_YAWN, 21
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_TEMPER_FLARE, 25
    learnset MOVE_SCORCHING_SANDS, 28
    learnset MOVE_SLACK_OFF, 31
    learnset MOVE_LAVA_PLUME, 33
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_SCALD, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_EARTH_POWER, 46
    learnset MOVE_STEAM_ERUPTION, 50
    learnset MOVE_EXPLOSION, 53
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_EARTHQUAKE, 59
    learnset MOVE_MAGMA_STORM, 63
    learnset MOVE_ERUPTION, 66
    terminatelearnset


levelup SPECIES_TORKOAL
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_SMOKESCREEN, 13
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_FLAME_WHEEL, 19
    learnset MOVE_PROTECT, 26
    learnset MOVE_LAVA_PLUME, 26
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_CURSE, 33
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_FLAIL, 42
    learnset MOVE_HEAT_WAVE, 46
    learnset MOVE_AMNESIA, 46
    learnset MOVE_INFERNO, 53
    learnset MOVE_SHELL_SMASH, 53
    learnset MOVE_ERUPTION, 64
    terminatelearnset


levelup SPECIES_SPOINK
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_CONFUSION, 7
    learnset MOVE_GROWL, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_CONFUSE_RAY, 18
    learnset MOVE_SKILL_SWAP, 21
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_ZEN_HEADBUTT, 27
    learnset MOVE_SNARL, 30
    learnset MOVE_REST, 33
    learnset MOVE_SNORE, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_AMNESIA, 39
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_CALM_MIND, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_BOUNCE, 54
    learnset MOVE_TRICK, 57
    learnset MOVE_SHADOW_BALL, 60
    learnset MOVE_FUTURE_SIGHT, 63
    terminatelearnset


levelup SPECIES_GRUMPIG
    learnset MOVE_TEETER_DANCE, 0
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 5
    learnset MOVE_CONFUSION, 8
    learnset MOVE_GROWL, 11
    learnset MOVE_SWIFT, 14
    learnset MOVE_DISARMING_VOICE, 17
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_SKILL_SWAP, 22
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_SNARL, 31
    learnset MOVE_REST, 34
    learnset MOVE_SNORE, 34
    learnset MOVE_DAZZLING_GLEAM, 37
    learnset MOVE_AMNESIA, 40
    learnset MOVE_PSYSHOCK, 43
    learnset MOVE_CALM_MIND, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_BOUNCE, 55
    learnset MOVE_TRICK, 58
    learnset MOVE_SHADOW_BALL, 61
    learnset MOVE_FUTURE_SIGHT, 64
    terminatelearnset


levelup SPECIES_SPINDA
    learnset MOVE_TACKLE, 1
    learnset MOVE_COPYCAT, 5
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_DIZZY_PUNCH, 23
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_TEETER_DANCE, 32
    learnset MOVE_UPROAR, 37
    learnset MOVE_PSYCH_UP, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_FLAIL, 50
    learnset MOVE_THRASH, 55
    terminatelearnset


levelup SPECIES_TRAPINCH
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FEINT_ATTACK, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_LASER_FOCUS, 4
    learnset MOVE_BITE, 8
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_SAND_TOMB, 14
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_ROCK_SLIDE, 15
    learnset MOVE_DIG, 21
    learnset MOVE_CRUNCH, 25
    learnset MOVE_FEINT, 29
    learnset MOVE_EARTH_POWER, 31
    learnset MOVE_SANDSTORM, 33
    learnset MOVE_EARTHQUAKE, 36
    learnset MOVE_SUPERPOWER, 42
    learnset MOVE_HYPER_BEAM, 43
    learnset MOVE_FISSURE, 47
    terminatelearnset


levelup SPECIES_VIBRAVA
    learnset MOVE_DRAGON_BREATH, 0
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DIG, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_FISSURE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_FEINT_ATTACK, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_BULLDOZE, 8
    learnset MOVE_SAND_TOMB, 14
    learnset MOVE_ROCK_SLIDE, 15
    learnset MOVE_SUPERSONIC, 19
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_SCREECH, 23
    learnset MOVE_BUG_BUZZ, 28
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_SANDSTORM, 33
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_HYPER_BEAM, 43
    learnset MOVE_UPROAR, 45
    learnset MOVE_BOOMBURST, 55
    learnset MOVE_DRAGON_RUSH, 56
    terminatelearnset


levelup SPECIES_FLYGON
    learnset MOVE_DRAGON_CLAW, 0
    learnset MOVE_DRAGON_CLAW, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_DRAGON_DANCE, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_LASER_FOCUS, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DIG, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_FISSURE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_FEINT_ATTACK, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_BULLDOZE, 8
    learnset MOVE_SAND_TOMB, 14
    learnset MOVE_ROCK_SLIDE, 15
    learnset MOVE_SUPERSONIC, 19
    learnset MOVE_SCREECH, 23
    learnset MOVE_DRAGON_TAIL, 24
    learnset MOVE_BUG_BUZZ, 28
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_SANDSTORM, 33
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_HYPER_BEAM, 43
    learnset MOVE_UPROAR, 46
    learnset MOVE_DRAGON_RUSH, 53
    learnset MOVE_BOOMBURST, 68
    terminatelearnset


levelup SPECIES_CACNEA
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_GROWTH, 7
    learnset MOVE_LEECH_SEED, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_BULLET_SEED, 15
    learnset MOVE_PIN_MISSILE, 17
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_INGRAIN, 23
    learnset MOVE_NEEDLE_ARM, 27
    learnset MOVE_PAYBACK, 29
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_SANDSTORM, 37
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_TOXIC_SPIKES, 45
    learnset MOVE_GIGA_DRAIN, 49
    learnset MOVE_THROAT_CHOP, 51
    learnset MOVE_LUNGE, 52
    learnset MOVE_DESTINY_BOND, 55
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset


levelup SPECIES_CACTURNE
    learnset MOVE_SPIKY_SHIELD, 0
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_REVENGE, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_GROWTH, 7
    learnset MOVE_LEECH_SEED, 10
    learnset MOVE_MUD_SLAP, 13
    learnset MOVE_BULLET_SEED, 15
    learnset MOVE_PIN_MISSILE, 17
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_INGRAIN, 23
    learnset MOVE_NEEDLE_ARM, 27
    learnset MOVE_PAYBACK, 29
    learnset MOVE_SPIKES, 32
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_SANDSTORM, 37
    learnset MOVE_POISON_JAB, 41
    learnset MOVE_ENERGY_BALL, 44
    learnset MOVE_THUNDER_PUNCH, 47
    learnset MOVE_TOXIC_SPIKES, 49
    learnset MOVE_GIGA_DRAIN, 51
    learnset MOVE_THROAT_CHOP, 53
    learnset MOVE_LUNGE, 55
    learnset MOVE_DESTINY_BOND, 59
    learnset MOVE_DARK_PULSE, 64
    learnset MOVE_LEAF_STORM, 70
    terminatelearnset


levelup SPECIES_SWABLU
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_SING, 10
    learnset MOVE_GUST, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_MIST, 19
    learnset MOVE_ROUND, 20
    learnset MOVE_FURY_ATTACK, 23
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_SWEET_SCENT, 29
    learnset MOVE_WING_ATTACK, 32
    learnset MOVE_DRAGON_BREATH, 35
    learnset MOVE_TIDY_UP, 37
    learnset MOVE_CHATTER, 40
    learnset MOVE_COTTON_GUARD, 43
    learnset MOVE_LAST_RESORT, 46
    learnset MOVE_DRAGON_PULSE, 49
    learnset MOVE_ROOST, 52
    learnset MOVE_AIR_SLASH, 55
    learnset MOVE_HYPER_VOICE, 58
    learnset MOVE_MOONBLAST, 61
    terminatelearnset


levelup SPECIES_ALTARIA
    learnset MOVE_OMINOUS_WIND, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_SING, 10
    learnset MOVE_GUST, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_MIST, 19
    learnset MOVE_ROUND, 20
    learnset MOVE_FURY_ATTACK, 23
    learnset MOVE_SAFEGUARD, 26
    learnset MOVE_SWEET_SCENT, 29
    learnset MOVE_WING_ATTACK, 32
    learnset MOVE_DRAGON_BREATH, 35
    learnset MOVE_TIDY_UP, 39
    learnset MOVE_CHATTER, 42
    learnset MOVE_COTTON_GUARD, 45
    learnset MOVE_LAST_RESORT, 48
    learnset MOVE_DRAGON_PULSE, 51
    learnset MOVE_ROOST, 54
    learnset MOVE_AIR_SLASH, 57
    learnset MOVE_HYPER_VOICE, 60
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_DRACO_METEOR, 68
    learnset MOVE_SKY_ATTACK, 72
    terminatelearnset


levelup SPECIES_ZANGOOSE
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_HONE_CLAWS, 15
    learnset MOVE_REVENGE, 19
    learnset MOVE_SLASH, 22
    learnset MOVE_TAUNT, 24
    learnset MOVE_CRUSH_CLAW, 26
    learnset MOVE_AERIAL_ACE, 29
    learnset MOVE_LOW_KICK, 33
    learnset MOVE_DETECT, 36
    learnset MOVE_X_SCISSOR, 39
    learnset MOVE_FIRE_PUNCH, 41
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_SWORDS_DANCE, 47
    learnset MOVE_ZEN_HEADBUTT, 50
    learnset MOVE_CLOSE_COMBAT, 55
    learnset MOVE_DOUBLE_EDGE, 59
    learnset MOVE_GUNK_SHOT, 62
    learnset MOVE_GIGA_IMPACT, 68
    terminatelearnset


levelup SPECIES_SEVIPER
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TOXIC, 1
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_BITE, 4
    learnset MOVE_GASTRO_ACID, 6
    learnset MOVE_POISON_TAIL, 9
    learnset MOVE_VENOM_DRENCH, 12
    learnset MOVE_GLARE, 15
    learnset MOVE_MEGA_DRAIN, 18
    learnset MOVE_POISON_FANG, 21
    learnset MOVE_SUCKER_PUNCH, 23
    learnset MOVE_VENOSHOCK, 25
    learnset MOVE_BREAKING_SWIPE, 28
    learnset MOVE_TOXIC_SPIKES, 31
    learnset MOVE_COIL, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_NASTY_PLOT, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_SLUDGE_WAVE, 46
    learnset MOVE_DRAGON_RUSH, 50
    learnset MOVE_POWER_WHIP, 53
    learnset MOVE_DRAGON_DANCE, 56
    learnset MOVE_FINAL_GAMBIT, 59
    learnset MOVE_GUNK_SHOT, 63
    terminatelearnset



levelup SPECIES_LUNATONE
    learnset MOVE_HARDEN,1          // status
    learnset MOVE_TACKLE,1                          // coverage  
    learnset MOVE_CONFUSION,4               // stab
    learnset MOVE_ROCK_THROW,7              // stab
    learnset MOVE_HYPNOSIS,0        // status
    learnset MOVE_ROCK_POLISH,14    // status
    learnset MOVE_PSYBEAM,18                // stab
    learnset MOVE_PROTECT,22        // status
    learnset MOVE_ROCK_TOMB,25              // stab
    learnset MOVE_STEALTH_ROCK,27   // status
    learnset MOVE_LIGHT_SCREEN,29   // status
    learnset MOVE_TRICK_ROOM,32     // status
    learnset MOVE_PSYCHIC,34                // stab
    learnset MOVE_PAIN_SPLIT,37        // status
    learnset MOVE_ROCK_SLIDE,40             // stab
    learnset MOVE_MOONBLAST,44                      // coverage
    learnset MOVE_COSMIC_POWER,46   // status
    learnset MOVE_PSYSHOCK,48               // stab
    learnset MOVE_MOONLIGHT,50      // status
    learnset MOVE_NASTY_PLOT,53     // status
    learnset MOVE_REFLECT,56   // status
    learnset MOVE_PSYSHIELD_BASH,60         // stab
    learnset MOVE_FUTURE_SIGHT,62           // stab
    learnset MOVE_SELF_DESTRUCT,66                  // coverage
    learnset MOVE_STONE_EDGE,70             // stab
    terminatelearnset


levelup SPECIES_SOLROCK
    learnset MOVE_HARDEN,1          // status
    learnset MOVE_TACKLE,1                          // coverage  
    learnset MOVE_CONFUSION,4               // stab
    learnset MOVE_ROCK_THROW,7              // stab
    learnset MOVE_HYPNOSIS,0        // status
    learnset MOVE_ROCK_POLISH,14    // status
    learnset MOVE_PSYBEAM,18                // stab
    learnset MOVE_PROTECT,22        // status
    learnset MOVE_ROCK_TOMB,25              // stab
    learnset MOVE_STEALTH_ROCK,27   // status
    learnset MOVE_REFLECT,29        // status
    learnset MOVE_WONDER_ROOM,32    // status
    learnset MOVE_PSYCHIC,34                // stab
    learnset MOVE_PAIN_SPLIT,37        // status
    learnset MOVE_ROCK_SLIDE,40             // stab
    learnset MOVE_FLAMETHROWER,44                      // coverage
    learnset MOVE_COSMIC_POWER,46   // status
    learnset MOVE_PSYSHOCK,48               // stab
    learnset MOVE_MOONLIGHT,50      // status
    learnset MOVE_NASTY_PLOT,53     // status
    learnset MOVE_LIGHT_SCREEN,56   // status
    learnset MOVE_PSYSHIELD_BASH,60         // stab
    learnset MOVE_FUTURE_SIGHT,62           // stab
    learnset MOVE_SELF_DESTRUCT,66                  // coverage
    learnset MOVE_STONE_EDGE,70             // stab
    terminatelearnset


levelup SPECIES_BARBOACH
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_REST, 7
    learnset MOVE_SNORE, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_CHILLING_WATER, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_AMNESIA, 18
    learnset MOVE_SPARK, 21
    learnset MOVE_WATER_PULSE, 24
    learnset MOVE_RAIN_DANCE, 27
    learnset MOVE_STOMPING_TANTRUM, 30
    learnset MOVE_STEALTH_ROCK, 33
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_DRAGON_DANCE, 45
    learnset MOVE_EARTH_POWER, 48
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_AQUA_TAIL, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_HYDRO_PUMP, 63
    learnset MOVE_BLIZZARD, 66
    learnset MOVE_WAVE_CRASH, 69
    terminatelearnset


levelup SPECIES_WHISCASH
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_REST, 8
    learnset MOVE_SNORE, 8
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_CHILLING_WATER, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_AMNESIA, 19
    learnset MOVE_SPARK, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_RAIN_DANCE, 28
    learnset MOVE_STOMPING_TANTRUM, 31
    learnset MOVE_STEALTH_ROCK, 34
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_LIQUIDATION, 43
    learnset MOVE_DRAGON_DANCE, 46
    learnset MOVE_EARTH_POWER, 49
    learnset MOVE_ICE_BEAM, 52
    learnset MOVE_AQUA_TAIL, 55
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_EARTHQUAKE, 61
    learnset MOVE_HYDRO_PUMP, 64
    learnset MOVE_BLIZZARD, 67
    learnset MOVE_WAVE_CRASH, 70
    terminatelearnset


levelup SPECIES_CORPHISH
    learnset MOVE_HARDEN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VICE_GRIP, 7
    learnset MOVE_TAUNT, 10
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_AQUA_JET, 18
    learnset MOVE_KNOCK_OFF, 21
    learnset MOVE_PROTECT, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_RAZOR_SHELL, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_SWORDS_DANCE, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_X_SCISSOR, 48
    learnset MOVE_ENDEAVOR, 51
    learnset MOVE_IRON_DEFENSE, 54
    learnset MOVE_CRABHAMMER, 57
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_GUILLOTINE, 66
    terminatelearnset


levelup SPECIES_CRAWDAUNT
    learnset MOVE_SWIFT, 0
    learnset MOVE_SWIFT, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 5
    learnset MOVE_VICE_GRIP, 8
    learnset MOVE_TAUNT, 11
    learnset MOVE_BUBBLE_BEAM, 14
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_AQUA_JET, 19
    learnset MOVE_KNOCK_OFF, 22
    learnset MOVE_PROTECT, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_NIGHT_SLASH, 31
    learnset MOVE_RAZOR_SHELL, 34
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_SWORDS_DANCE, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_ENDEAVOR, 52
    learnset MOVE_IRON_DEFENSE, 55
    learnset MOVE_CRABHAMMER, 58
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_GUILLOTINE, 67
    terminatelearnset


levelup SPECIES_BALTOY
    learnset MOVE_HARDEN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_RAPID_SPIN, 3
    learnset MOVE_CONFUSION, 6
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_HEAL_BLOCK, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_POWER_TRICK, 18
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_COSMIC_POWER, 23
    learnset MOVE_EXTRASENSORY, 28
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_IMPRISON, 31
    learnset MOVE_EARTH_POWER, 33
    learnset MOVE_GUARD_SPLIT, 35
    learnset MOVE_POWER_SPLIT, 35
    learnset MOVE_SANDSTORM, 39
    learnset MOVE_EXPLOSION, 43
    terminatelearnset


levelup SPECIES_CLAYDOL
    learnset MOVE_HYPER_BEAM, 0
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_RAPID_SPIN, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_HEAL_BLOCK, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_POWER_TRICK, 18
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_COSMIC_POWER, 23
    learnset MOVE_EXTRASENSORY, 28
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_IMPRISON, 35
    learnset MOVE_GUARD_SPLIT, 36
    learnset MOVE_POWER_SPLIT, 36
    learnset MOVE_SANDSTORM, 44
    learnset MOVE_EXPLOSION, 52
    terminatelearnset


levelup SPECIES_LILEEP
    learnset MOVE_WRAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ACID, 4
    learnset MOVE_ABSORB, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_INGRAIN, 13
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_BRINE, 24
    learnset MOVE_RECOVER, 27
    learnset MOVE_SCORCHING_SANDS, 30
    learnset MOVE_GASTRO_ACID, 33
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_STEALTH_ROCK, 39
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_STOCKPILE, 45
    learnset MOVE_SPIT_UP, 45
    learnset MOVE_SWALLOW, 45
    learnset MOVE_POWER_GEM, 48
    learnset MOVE_MIRROR_COAT, 51
    learnset MOVE_ENERGY_BALL, 54
    learnset MOVE_WRING_OUT, 57
    learnset MOVE_SUNNY_DAY, 60
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_METEOR_BEAM, 66
    terminatelearnset


levelup SPECIES_CRADILY
    learnset MOVE_LEECH_SEED, 0
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ACID, 5
    learnset MOVE_ABSORB, 8
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_INGRAIN, 14
    learnset MOVE_ANCIENT_POWER, 17
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_BRINE, 25
    learnset MOVE_RECOVER, 28
    learnset MOVE_SCORCHING_SANDS, 31
    learnset MOVE_GASTRO_ACID, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_STEALTH_ROCK, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_STOCKPILE, 46
    learnset MOVE_SPIT_UP, 46
    learnset MOVE_SWALLOW, 46
    learnset MOVE_POWER_GEM, 49
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_ENERGY_BALL, 55
    learnset MOVE_WRING_OUT, 58
    learnset MOVE_SUNNY_DAY, 61
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_METEOR_BEAM, 67
    terminatelearnset


levelup SPECIES_ANORITH
    learnset MOVE_HARDEN, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_AQUA_JET, 4
    learnset MOVE_ACCELEROCK, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_METAL_CLAW, 13
    learnset MOVE_ROCK_BLAST, 16
    learnset MOVE_PROTECT, 18
    learnset MOVE_BUG_BITE, 21
    learnset MOVE_AQUA_CUTTER, 24
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_KNOCK_OFF, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_RAPID_SPIN, 39
    learnset MOVE_SWORDS_DANCE, 42
    learnset MOVE_X_SCISSOR, 45
    learnset MOVE_ROCK_POLISH, 48
    learnset MOVE_POISON_JAB, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_SUPERPOWER, 60
    learnset MOVE_GIGA_IMPACT, 63
    terminatelearnset


levelup SPECIES_ARMALDO
    learnset MOVE_HARDEN, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_AQUA_JET, 5
    learnset MOVE_ACCELEROCK, 8
    learnset MOVE_SAND_ATTACK, 11
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_ROCK_BLAST, 17
    learnset MOVE_PROTECT, 19
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_AQUA_CUTTER, 25
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_RAPID_SPIN, 40
    learnset MOVE_SWORDS_DANCE, 43
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_ROCK_POLISH, 49
    learnset MOVE_POISON_JAB, 52
    learnset MOVE_STONE_EDGE, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_GIGA_IMPACT, 64
    terminatelearnset


levelup SPECIES_FEEBAS
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_FLAIL, 15
    terminatelearnset


levelup SPECIES_MILOTIC
    learnset MOVE_WATER_PULSE, 0
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_WRAP, 7
    learnset MOVE_CHARM, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_FLAIL, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_REFRESH, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_LIFE_DEW, 31
    learnset MOVE_DRAGON_TAIL, 34
    learnset MOVE_BRINE, 37
    learnset MOVE_SWEET_KISS, 40
    learnset MOVE_ALLURING_VOICE, 43
    learnset MOVE_RECOVER, 46
    learnset MOVE_AQUA_TAIL, 49
    learnset MOVE_SCALE_SHOT, 52
    learnset MOVE_SAFEGUARD, 55
    learnset MOVE_WATER_PLEDGE, 58
    learnset MOVE_COIL, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_SURF, 67
    learnset MOVE_RAIN_DANCE, 70
    learnset MOVE_HYDRO_PUMP, 73
    terminatelearnset


levelup SPECIES_CASTFORM
    learnset MOVE_TACKLE, 1
    learnset MOVE_FLASH, 5
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_SNOWSCAPE, 20
    learnset MOVE_COSMIC_POWER, 24
    learnset MOVE_FACADE, 27
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_AURORA_BEAM, 35
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_SURF, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_WEATHER_BALL, 50
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_FIRE_BLAST, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_HURRICANE, 65
    terminatelearnset


levelup SPECIES_KECLEON
    learnset MOVE_THIEF, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BIND, 4
    learnset MOVE_SHADOW_SNEAK, 7
    learnset MOVE_FEINT, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_FEINT_ATTACK, 16
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_CAMOUFLAGE, 30
    learnset MOVE_SHADOW_CLAW, 33
    learnset MOVE_SCREECH, 38
    learnset MOVE_SUBSTITUTE, 42
    learnset MOVE_SUCKER_PUNCH, 46
    learnset MOVE_SYNCHRONOISE, 50
    terminatelearnset


levelup SPECIES_SHUPPET
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_BIDE, 7
    learnset MOVE_SPITE, 10
    learnset MOVE_FRUSTRATION, 13
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_NIGHT_SHADE, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_GRUDGE, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_HEX, 31
    learnset MOVE_REVENGE, 34
    learnset MOVE_WILL_O_WISP, 37
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_EMBARGO, 43
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_SCREECH, 49
    learnset MOVE_DARK_PULSE, 52
    learnset MOVE_TRICK, 55
    learnset MOVE_RETALIATE, 58
    learnset MOVE_SNATCH, 61
    learnset MOVE_PHANTOM_FORCE, 64
    learnset MOVE_PAIN_SPLIT, 67
    learnset MOVE_POLTERGEIST, 70
    terminatelearnset


levelup SPECIES_BANETTE
    learnset MOVE_CURSE, 0
    learnset MOVE_CURSE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_BIDE, 7
    learnset MOVE_SPITE, 10
    learnset MOVE_FRUSTRATION, 13
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_NIGHT_SHADE, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_GRUDGE, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_HEX, 31
    learnset MOVE_REVENGE, 34
    learnset MOVE_WILL_O_WISP, 37
    learnset MOVE_SHADOW_PUNCH, 40
    learnset MOVE_SUCKER_PUNCH, 43
    learnset MOVE_EMBARGO, 46
    learnset MOVE_SHADOW_BALL, 49
    learnset MOVE_DRAIN_PUNCH, 52
    learnset MOVE_SCREECH, 55
    learnset MOVE_DARK_PULSE, 58
    learnset MOVE_TRICK, 61
    learnset MOVE_RETALIATE, 64
    learnset MOVE_SNATCH, 67
    learnset MOVE_PHANTOM_FORCE, 70
    learnset MOVE_PAIN_SPLIT, 73
    learnset MOVE_POLTERGEIST, 75
    terminatelearnset


levelup SPECIES_DUSKULL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_DISABLE, 7
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_FEINT, 13
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PAYBACK, 31
    learnset MOVE_HEX, 34
    learnset MOVE_MEAN_LOOK, 37
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_CURSE, 43
    learnset MOVE_LEECH_LIFE, 46
    learnset MOVE_SHADOW_BALL, 49
    learnset MOVE_GLARE, 52
    learnset MOVE_FOUL_PLAY, 55
    learnset MOVE_PAIN_SPLIT, 58
    learnset MOVE_POLTERGEIST, 61
    learnset MOVE_FUTURE_SIGHT, 64
    terminatelearnset


levelup SPECIES_DUSCLOPS
    learnset MOVE_SHADOW_PUNCH, 0
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_DISABLE, 7
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_FEINT, 13
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PAYBACK, 31
    learnset MOVE_HEX, 34
    learnset MOVE_MEAN_LOOK, 37
    learnset MOVE_DRAIN_PUNCH, 41
    learnset MOVE_DARK_PULSE, 44
    learnset MOVE_CURSE, 47
    learnset MOVE_KNOCK_OFF, 50
    learnset MOVE_LEECH_LIFE, 53
    learnset MOVE_SHADOW_BALL, 56
    learnset MOVE_SUCKER_PUNCH, 59
    learnset MOVE_GLARE, 62
    learnset MOVE_FOUL_PLAY, 65
    learnset MOVE_PAIN_SPLIT, 68
    learnset MOVE_POLTERGEIST, 71
    learnset MOVE_FUTURE_SIGHT, 74
    terminatelearnset


levelup SPECIES_TROPIUS
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_LEER, 1
    learnset MOVE_GUST, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_SWEET_SCENT, 6
    learnset MOVE_STOMP, 10
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_WHIRLWIND, 21
    learnset MOVE_LEAF_TORNADO, 26
    learnset MOVE_NATURAL_GIFT, 30
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_BODY_SLAM, 41
    learnset MOVE_BESTOW, 46
    learnset MOVE_SYNTHESIS, 50
    learnset MOVE_SOLAR_BEAM, 56
    learnset MOVE_LEAF_STORM, 61
    terminatelearnset


levelup SPECIES_CHIMECHO
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_SYNCHRONOISE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_YAWN, 13
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_EXTRASENSORY, 22
    learnset MOVE_HEAL_BELL, 27
    learnset MOVE_UPROAR, 32
    learnset MOVE_SAFEGUARD, 37
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_HEAL_PULSE, 47
    learnset MOVE_SYNCHRONOISE, 52
    learnset MOVE_HEALING_WISH, 57
    terminatelearnset


levelup SPECIES_ABSOL
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_DARK_PULSE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_DOUBLE_TEAM, 14
    learnset MOVE_TAUNT, 16
    learnset MOVE_BITE, 20
    learnset MOVE_DETECT, 22
    learnset MOVE_SLASH, 25
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_SHADOW_CLAW, 29
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_FOCUS_ENERGY, 34
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_FOUL_PLAY, 39
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_BATON_PASS, 51
    learnset MOVE_ZEN_HEADBUTT, 55
    learnset MOVE_PLAY_ROUGH, 57
    learnset MOVE_PERISH_SONG, 60
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_POWER_TRIP, 67
    learnset MOVE_MEGAHORN, 72
    learnset MOVE_CLOSE_COMBAT, 76
    terminatelearnset


levelup SPECIES_WYNAUT
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_AMNESIA, 1
    learnset MOVE_COUNTER, 15
    learnset MOVE_MIRROR_COAT, 15
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_DESTINY_BOND, 15
    terminatelearnset


levelup SPECIES_SNORUNT
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEER, 5
    learnset MOVE_DOUBLE_TEAM, 7
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_PROTECT, 25
    learnset MOVE_BITE, 27
    learnset MOVE_ICE_FANG, 32
    learnset MOVE_FROST_BREATH, 33
    learnset MOVE_HEADBUTT, 39
    learnset MOVE_HAIL, 47
    learnset MOVE_CRUNCH, 48
    learnset MOVE_BLIZZARD, 53
    terminatelearnset


levelup SPECIES_GLALIE
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


levelup SPECIES_SPHEAL
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_POWDER_SNOW, 12
    learnset MOVE_ICE_BALL, 15
    learnset MOVE_BRINE, 20
    learnset MOVE_REST, 23
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_ENCORE, 33
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_YAWN, 38
    learnset MOVE_SURF, 41
    learnset MOVE_HAIL, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_LIQUIDATION, 52
    learnset MOVE_BLIZZARD, 59
    learnset MOVE_SHEER_COLD, 64
    terminatelearnset


levelup SPECIES_SEALEO
    learnset MOVE_SWAGGER, 0
    learnset MOVE_SWAGGER, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_POWDER_SNOW, 12
    learnset MOVE_ICE_BALL, 15
    learnset MOVE_BRINE, 20
    learnset MOVE_REST, 23
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_BULLDOZE, 32
    learnset MOVE_ENCORE, 35
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_YAWN, 42
    learnset MOVE_SURF, 44
    learnset MOVE_HAIL, 48
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_LIQUIDATION, 56
    learnset MOVE_BLIZZARD, 63
    learnset MOVE_SHEER_COLD, 70
    terminatelearnset


levelup SPECIES_WALREIN
    learnset MOVE_ICE_FANG, 0
    learnset MOVE_SWAGGER, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_POWDER_SNOW, 12
    learnset MOVE_ICE_BALL, 15
    learnset MOVE_BRINE, 20
    learnset MOVE_REST, 23
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_BULLDOZE, 32
    learnset MOVE_ENCORE, 35
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_YAWN, 42
    learnset MOVE_SURF, 44
    learnset MOVE_CRUNCH, 48
    learnset MOVE_HAIL, 51
    learnset MOVE_ICE_BEAM, 55
    learnset MOVE_LIQUIDATION, 59
    learnset MOVE_HEAVY_SLAM, 64
    learnset MOVE_HYDRO_PUMP, 67
    learnset MOVE_BLIZZARD, 71
    learnset MOVE_SHEER_COLD, 76
    terminatelearnset


levelup SPECIES_CLAMPERL
    learnset MOVE_CLAMP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_SHELL_SMASH, 50
    terminatelearnset


levelup SPECIES_HUNTAIL
    learnset MOVE_BITE, 0
    learnset MOVE_BITE, 1
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_SCREECH, 4
    learnset MOVE_AQUA_JET, 7
    learnset MOVE_SCARY_FACE, 10
    learnset MOVE_PAYBACK, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_AQUA_RING, 18
    learnset MOVE_ICE_FANG, 21
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_CONFUSE_RAY, 27
    learnset MOVE_BRINE, 30
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_SCALD, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_COIL, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_SHELL_SMASH, 51
    learnset MOVE_AQUA_TAIL, 54
    learnset MOVE_SWAGGER, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_WAVE_CRASH, 63
    terminatelearnset


levelup SPECIES_GOREBYSS
    learnset MOVE_CONFUSION, 0
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_CHARM, 4
    learnset MOVE_CHILLING_WATER, 7
    learnset MOVE_AGILITY, 10
    learnset MOVE_DRAINING_KISS, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_AQUA_RING, 18
    learnset MOVE_AURORA_BEAM, 21
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_AMNESIA, 27
    learnset MOVE_BRINE, 30
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_SCALD, 39
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_COIL, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_SHELL_SMASH, 51
    learnset MOVE_SURF, 54
    learnset MOVE_FLATTER, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_RELICANTH
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_MUD_SPORT, 7
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_YAWN, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_ENDURE, 30
    learnset MOVE_FLAIL, 33
    learnset MOVE_REST, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_IRON_DEFENSE, 48
    learnset MOVE_SCALE_SHOT, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_BODY_PRESS, 57
    learnset MOVE_WAVE_CRASH, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_LUVDISC
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_AGILITY, 7
    learnset MOVE_DRAINING_KISS, 9
    learnset MOVE_LUCKY_CHANT, 13
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_ATTRACT, 20
    learnset MOVE_HEART_STAMP, 22
    learnset MOVE_FLAIL, 26
    learnset MOVE_SWEET_KISS, 31
    learnset MOVE_TAKE_DOWN, 34
    learnset MOVE_CAPTIVATE, 37
    learnset MOVE_AQUA_RING, 40
    learnset MOVE_SOAK, 42
    learnset MOVE_HYDRO_PUMP, 46
    learnset MOVE_SAFEGUARD, 49
    terminatelearnset


levelup SPECIES_BAGON
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_DRAGON_BREATH, 10
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BREAKING_SWIPE, 25
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_DRAGON_CLAW, 40
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_OUTRAGE, 65
    terminatelearnset


levelup SPECIES_SHELGON
    learnset MOVE_PROTECT, 0
    learnset MOVE_PROTECT, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_DRAGON_BREATH, 10
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BREAKING_SWIPE, 25
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_DRAGON_CLAW, 40
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_OUTRAGE, 65
    terminatelearnset


levelup SPECIES_SALAMENCE
    learnset MOVE_FLY, 0
    learnset MOVE_FLY, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_DRAGON_BREATH, 10
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BREAKING_SWIPE, 25
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_DRAGON_CLAW, 40
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_FIRE_FANG, 51
    learnset MOVE_THUNDER_FANG, 51
    learnset MOVE_DRAGON_TAIL, 53
    learnset MOVE_DUAL_WINGBEAT, 55
    learnset MOVE_ROOST, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_OUTRAGE, 69
    terminatelearnset


levelup SPECIES_BELDUM
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_TACKLE, 10
    terminatelearnset


levelup SPECIES_METANG
    learnset MOVE_BULLET_PUNCH, 0
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_MAGNET_RISE, 23
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_PURSUIT, 32
    learnset MOVE_IRON_DEFENSE, 35
    learnset MOVE_FLASH_CANNON, 38
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_BULLET_PUNCH, 26
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_AGILITY, 42
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_IRON_HEAD, 48
    learnset MOVE_SHIFT_GEAR, 52
    learnset MOVE_PSYCHIC_FANGS, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_METEOR_MASH, 62
    terminatelearnset


levelup SPECIES_METAGROSS
    learnset MOVE_HAMMER_ARM, 0
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_MAGNET_RISE, 23
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_PURSUIT, 32
    learnset MOVE_IRON_DEFENSE, 35
    learnset MOVE_FLASH_CANNON, 38
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_BULLET_PUNCH, 26
    learnset MOVE_MIRACLE_EYE, 29
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_AGILITY, 42
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_IRON_HEAD, 48
    learnset MOVE_SHIFT_GEAR, 52
    learnset MOVE_PSYCHIC_FANGS, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_METEOR_MASH, 62
    terminatelearnset


levelup SPECIES_REGIROCK
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_CHARGE_BEAM, 13
    learnset MOVE_STOMP, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_CURSE, 27
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_LOCK_ON, 57
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_HYPER_BEAM, 69
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_REGICE
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_ICY_WIND, 7
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_CHARGE_BEAM, 13
    learnset MOVE_STOMP, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_CURSE, 27
    learnset MOVE_ICE_BEAM, 32
    learnset MOVE_AMNESIA, 36
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_BLIZZARD, 48
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_LOCK_ON, 57
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_HYPER_BEAM, 69
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_REGISTEEL
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_CHARGE_BEAM, 13
    learnset MOVE_STOMP, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_CURSE, 27
    learnset MOVE_IRON_HEAD, 32
    learnset MOVE_FLASH_CANNON, 32
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_AMNESIA, 36
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_HEAVY_SLAM, 48
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_LOCK_ON, 57
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_HYPER_BEAM, 69
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_LATIAS
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_WHIRLPOOL, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_BREAKING_SWIPE, 10
    learnset MOVE_RECOVER, 13
    learnset MOVE_CONFUSION, 16
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_TAILWIND, 21
    learnset MOVE_DRAGON_BREATH, 24
    learnset MOVE_AIR_CUTTER, 27
    learnset MOVE_WISH, 30
    learnset MOVE_ZEN_HEADBUTT, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CALM_MIND, 39
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_AURA_SPHERE, 45
    learnset MOVE_HEAL_PULSE, 48
    learnset MOVE_MIST_BALL, 51
    learnset MOVE_GUARD_SPLIT, 54
    learnset MOVE_ICE_BEAM, 57
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_HEALING_WISH, 63
    learnset MOVE_DRACO_METEOR, 66
    terminatelearnset


levelup SPECIES_LATIOS
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_WHIRLPOOL, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_BREAKING_SWIPE, 10
    learnset MOVE_RECOVER, 13
    learnset MOVE_CONFUSION, 16
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_TAILWIND, 21
    learnset MOVE_DRAGON_BREATH, 24
    learnset MOVE_AIR_CUTTER, 27
    learnset MOVE_WISH, 30
    learnset MOVE_ZEN_HEADBUTT, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CALM_MIND, 39
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_AURA_SPHERE, 45
    learnset MOVE_HEAL_BLOCK, 48
    learnset MOVE_LUSTER_PURGE, 51
    learnset MOVE_POWER_SPLIT, 54
    learnset MOVE_ICE_BEAM, 57
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_MEMENTO, 63
    learnset MOVE_DRACO_METEOR, 66
    terminatelearnset


levelup SPECIES_KYOGRE
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


levelup SPECIES_GROUDON
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


levelup SPECIES_RAYQUAZA
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


levelup SPECIES_JIRACHI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WISH, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_HELPING_HAND, 14
    learnset MOVE_LIFE_DEW, 21
    learnset MOVE_REFRESH, 25
    learnset MOVE_LUCKY_CHANT, 30
    learnset MOVE_ZEN_HEADBUTT, 31
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_REST, 35
    learnset MOVE_GRAVITY, 39
    learnset MOVE_METEOR_MASH, 49
    learnset MOVE_HEALING_WISH, 53
    learnset MOVE_DOUBLE_EDGE, 59
    learnset MOVE_FUTURE_SIGHT, 63
    learnset MOVE_COSMIC_POWER, 72
    learnset MOVE_LAST_RESORT, 78
    learnset MOVE_DOOM_DESIRE, 84
    terminatelearnset


levelup SPECIES_DEOXYS
    learnset MOVE_LEER, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_SNATCH, 37
    learnset MOVE_PSYCHO_SHIFT, 43
    learnset MOVE_ZEN_HEADBUTT, 49
    learnset MOVE_COSMIC_POWER, 55
    learnset MOVE_RECOVER, 61
    learnset MOVE_PSYCHO_BOOST, 67
    learnset MOVE_HYPER_BEAM, 73
    terminatelearnset


levelup SPECIES_TURTWIG
    learnset MOVE_TACKLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_SAND_TOMB, 7
    learnset MOVE_GROWTH, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_CURSE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_TRAILBLAZE, 24
    learnset MOVE_LEECH_SEED, 27
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SYNTHESIS, 33
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SLEEP_POWDER, 39
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_LEAF_STORM, 48
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_SHELL_SMASH, 54
    learnset MOVE_HEAVY_SLAM, 57
    terminatelearnset


levelup SPECIES_GROTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_SAND_TOMB, 8
    learnset MOVE_GROWTH, 11
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_CURSE, 19
    learnset MOVE_BITE, 22
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_SLEEP_POWDER, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_LEAF_STORM, 49
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_SHELL_SMASH, 55
    learnset MOVE_HEAVY_SLAM, 58
    terminatelearnset


levelup SPECIES_TORTERRA
    learnset MOVE_EARTHQUAKE, 0
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_SAND_TOMB, 8
    learnset MOVE_GROWTH, 11
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_CURSE, 19
    learnset MOVE_BITE, 22
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_SLEEP_POWDER, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_LEAF_STORM, 49
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_SHELL_SMASH, 55
    learnset MOVE_HEAVY_SLAM, 58
    learnset MOVE_HEADLONG_RUSH, 61
    terminatelearnset


levelup SPECIES_CHIMCHAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_POWER_UP_PUNCH, 13
    learnset MOVE_FURY_SWIPES, 16
    learnset MOVE_FLAME_WHEEL, 18
    learnset MOVE_LOW_SWEEP, 21
    learnset MOVE_TORMENT, 24
    learnset MOVE_FIRE_PUNCH, 27
    learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_BULK_UP, 33
    learnset MOVE_FIRE_SPIN, 36
    learnset MOVE_ACROBATICS, 39
    learnset MOVE_SLACK_OFF, 42
    learnset MOVE_FLAMETHROWER, 45
    terminatelearnset


levelup SPECIES_MONFERNO
    learnset MOVE_MACH_PUNCH, 0
    learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_POWER_UP_PUNCH, 14
    learnset MOVE_FURY_SWIPES, 17
    learnset MOVE_FLAME_WHEEL, 19
    learnset MOVE_LOW_SWEEP, 22
    learnset MOVE_TORMENT, 25
    learnset MOVE_FIRE_PUNCH, 28
    learnset MOVE_THUNDER_PUNCH, 31
    learnset MOVE_BULK_UP, 34
    learnset MOVE_FIRE_SPIN, 37
    learnset MOVE_ACROBATICS, 40
    learnset MOVE_SLACK_OFF, 43
    learnset MOVE_FLAMETHROWER, 46
    terminatelearnset


levelup SPECIES_INFERNAPE
    learnset MOVE_CLOSE_COMBAT, 0
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_POWER_UP_PUNCH, 14
    learnset MOVE_FURY_SWIPES, 17
    learnset MOVE_FLAME_WHEEL, 19
    learnset MOVE_LOW_SWEEP, 22
    learnset MOVE_TORMENT, 25
    learnset MOVE_FIRE_PUNCH, 28
    learnset MOVE_THUNDER_PUNCH, 31
    learnset MOVE_BULK_UP, 34
    learnset MOVE_FIRE_SPIN, 37
    learnset MOVE_ACROBATICS, 40
    learnset MOVE_SLACK_OFF, 43
    learnset MOVE_FLAMETHROWER, 46
    learnset MOVE_CALM_MIND, 49
    learnset MOVE_PUNISHMENT, 52
    learnset MOVE_U_TURN, 55
    learnset MOVE_SWORDS_DANCE, 58
    learnset MOVE_FLARE_BLITZ, 61
    learnset MOVE_RAGING_FURY, 64
    terminatelearnset


levelup SPECIES_PIPLUP
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_PECK, 7
    learnset MOVE_CHARM, 10
    learnset MOVE_CHILLING_WATER, 13
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_SWAGGER, 18
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_ROOST, 27
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_FLIP_TURN, 33
    learnset MOVE_MIST, 36
    learnset MOVE_DRILL_PECK, 39
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset


levelup SPECIES_PRINPLUP
    learnset MOVE_METAL_CLAW, 0
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_PECK, 8
    learnset MOVE_CHARM, 11
    learnset MOVE_CHILLING_WATER, 14
    learnset MOVE_ICY_WIND, 17
    learnset MOVE_SWAGGER, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_FURY_ATTACK, 25
    learnset MOVE_ROOST, 28
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_FLIP_TURN, 34
    learnset MOVE_MIST, 37
    learnset MOVE_DRILL_PECK, 40
    learnset MOVE_HYDRO_PUMP, 43
    terminatelearnset


levelup SPECIES_EMPOLEON
    learnset MOVE_AQUA_JET, 0
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_BRICK_BREAK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_PECK, 8
    learnset MOVE_CHARM, 11
    learnset MOVE_CHILLING_WATER, 14
    learnset MOVE_ICY_WIND, 17
    learnset MOVE_SWAGGER, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_FURY_ATTACK, 25
    learnset MOVE_ROOST, 28
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_FLIP_TURN, 34
    learnset MOVE_MIST, 37
    learnset MOVE_DRILL_PECK, 40
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_LIQUIDATION, 49
    learnset MOVE_ICE_BEAM, 52
    learnset MOVE_SWORDS_DANCE, 55
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_BLIZZARD, 61
    learnset MOVE_WAVE_CRASH, 64
    learnset MOVE_STEEL_BEAM, 67
    terminatelearnset


levelup SPECIES_STARLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_PECK, 9
    learnset MOVE_ASTONISH, 11
    learnset MOVE_DOUBLE_TEAM, 13
    learnset MOVE_ENDEAVOR, 15
    learnset MOVE_WING_ATTACK, 17
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_WHIRLWIND, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_DUAL_WINGBEAT, 31
    learnset MOVE_U_TURN, 34
    learnset MOVE_AGILITY, 36
    learnset MOVE_FLY, 40
    learnset MOVE_TAILWIND, 43
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_BRAVE_BIRD, 50
    learnset MOVE_GIGA_IMPACT, 55
    terminatelearnset


levelup SPECIES_STARAVIA
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_PECK, 9
    learnset MOVE_ASTONISH, 11
    learnset MOVE_DOUBLE_TEAM, 13
    learnset MOVE_ENDEAVOR, 15
    learnset MOVE_WING_ATTACK, 17
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_WHIRLWIND, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_U_TURN, 37
    learnset MOVE_AGILITY, 41
    learnset MOVE_FLY, 44
    learnset MOVE_FALSE_SURRENDER, 46
    learnset MOVE_TAILWIND, 48
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_BRAVE_BIRD, 55
    learnset MOVE_GIGA_IMPACT, 60
    terminatelearnset


levelup SPECIES_STARAPTOR
    learnset MOVE_BULK_UP, 0
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_PECK, 9
    learnset MOVE_ASTONISH, 11
    learnset MOVE_DOUBLE_TEAM, 13
    learnset MOVE_ENDEAVOR, 15
    learnset MOVE_WING_ATTACK, 17
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_WHIRLWIND, 23
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_U_TURN, 37
    learnset MOVE_AGILITY, 41
    learnset MOVE_CLOSE_COMBAT, 44
    learnset MOVE_FLY, 46
    learnset MOVE_FALSE_SURRENDER, 48
    learnset MOVE_TAILWIND, 50
    learnset MOVE_DOUBLE_EDGE, 53
    learnset MOVE_FINAL_GAMBIT, 57
    learnset MOVE_BRAVE_BIRD, 59
    learnset MOVE_GIGA_IMPACT, 65
    terminatelearnset


levelup SPECIES_BIDOOF
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_HYPER_FANG, 17
    learnset MOVE_YAWN, 21
    learnset MOVE_CRUNCH, 25
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_SUPER_FANG, 33
    learnset MOVE_SWORDS_DANCE, 37
    learnset MOVE_AMNESIA, 41
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_CURSE, 49
    terminatelearnset


levelup SPECIES_BIBAREL
    learnset MOVE_WATER_GUN, 0
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_HYPER_FANG, 18
    learnset MOVE_YAWN, 23
    learnset MOVE_CRUNCH, 28
    learnset MOVE_TAKE_DOWN, 33
    learnset MOVE_SUPER_FANG, 38
    learnset MOVE_SWORDS_DANCE, 43
    learnset MOVE_AMNESIA, 48
    learnset MOVE_SUPERPOWER, 53
    learnset MOVE_CURSE, 58
    terminatelearnset


levelup SPECIES_KRICKETOT
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_STRUGGLE_BUG, 6
    learnset MOVE_BUG_BITE, 16
    terminatelearnset


levelup SPECIES_KRICKETUNE
    learnset MOVE_FURY_CUTTER, 0
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ABSORB, 14
    learnset MOVE_SING, 18
    learnset MOVE_FOCUS_ENERGY, 22
    learnset MOVE_SLASH, 26
    learnset MOVE_X_SCISSOR, 30
    learnset MOVE_SCREECH, 34
    learnset MOVE_FELL_STINGER, 36
    learnset MOVE_TAUNT, 38
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_STICKY_WEB, 44
    learnset MOVE_BUG_BUZZ, 46
    learnset MOVE_PERISH_SONG, 50
    terminatelearnset


levelup SPECIES_SHINX
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_CHARGE, 7
    learnset MOVE_BITE, 10
    learnset MOVE_SPARK, 13
    learnset MOVE_ROAR, 16
    learnset MOVE_SWAGGER, 19
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ICE_FANG, 27
    learnset MOVE_THUNDER_FANG, 31
    learnset MOVE_CRUNCH, 35
    learnset MOVE_THUNDER_WAVE, 39
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_VOLT_SWITCH, 47
    learnset MOVE_WILD_CHARGE, 51
    learnset MOVE_SCARY_FACE, 55
    learnset MOVE_THUNDERBOLT, 59
    learnset MOVE_AGILITY, 63
    learnset MOVE_ELECTRIC_TERRAIN, 67
    learnset MOVE_VOLT_TACKLE, 71
    learnset MOVE_DOUBLE_EDGE, 75
    terminatelearnset


levelup SPECIES_LUXIO
    learnset MOVE_TRAILBLAZE, 1
    learnset MOVE_SNARL, 1
    learnset MOVE_FACADE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_CHARGE, 7
    learnset MOVE_BITE, 10
    learnset MOVE_SPARK, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SWAGGER, 19
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ICE_FANG, 27
    learnset MOVE_THUNDER_FANG, 31
    learnset MOVE_THROAT_CHOP, 35
    learnset MOVE_THUNDER_WAVE, 39
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_VOLT_SWITCH, 47
    learnset MOVE_WILD_CHARGE, 51
    learnset MOVE_SCARY_FACE, 55
    learnset MOVE_THUNDERBOLT, 59
    learnset MOVE_AGILITY, 63
    learnset MOVE_ELECTRIC_TERRAIN, 67
    learnset MOVE_VOLT_TACKLE, 71
    learnset MOVE_DOUBLE_EDGE, 75
    terminatelearnset


levelup SPECIES_LUXRAY
    learnset MOVE_TRAILBLAZE, 1
    learnset MOVE_SNARL, 1
    learnset MOVE_FACADE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_PSYCHIC_FANGS, 4
    learnset MOVE_CHARGE, 7
    learnset MOVE_BITE, 10
    learnset MOVE_SPARK, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SWAGGER, 19
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ICE_FANG, 27
    learnset MOVE_THUNDER_FANG, 31
    learnset MOVE_CRUNCH, 35
    learnset MOVE_THUNDER_WAVE, 39
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_VOLT_SWITCH, 47
    learnset MOVE_WILD_CHARGE, 51
    learnset MOVE_SCARY_FACE, 55
    learnset MOVE_THUNDERBOLT, 59
    learnset MOVE_AGILITY, 63
    learnset MOVE_ELECTRIC_TERRAIN, 67
    learnset MOVE_VOLT_TACKLE, 71
    learnset MOVE_SUPERPOWER, 75
    terminatelearnset


levelup SPECIES_BUDEW
    learnset MOVE_ABSORB, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_WATER_SPORT, 4
    learnset MOVE_ACID, 7
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_BULLET_SEED, 19
    learnset MOVE_WORRY_SEED, 22
    learnset MOVE_SLUDGE, 25
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_SLEEP_POWDER, 34
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_LEAF_TORNADO, 40
    learnset MOVE_SWEET_SCENT, 43
    learnset MOVE_TOXIC_SPIKES, 46
    learnset MOVE_GIGA_DRAIN, 49
    learnset MOVE_POISON_JAB, 52
    learnset MOVE_ENERGY_BALL,55
    learnset MOVE_SYNTHESIS, 58
    learnset MOVE_PETAL_BLIZZARD, 61
    learnset MOVE_SLUDGE_BOMB, 64
    learnset MOVE_AROMATHERAPY, 67
    learnset MOVE_INGRAIN, 70
    learnset MOVE_PETAL_DANCE, 73
    terminatelearnset


levelup SPECIES_ROSERADE
    learnset MOVE_GRASSY_TERRAIN, 1
    learnset MOVE_TOXIC, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_WATER_SPORT, 4
    learnset MOVE_ACID, 7
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_BULLET_SEED, 19
    learnset MOVE_WORRY_SEED, 22
    learnset MOVE_SLUDGE, 25
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_SLEEP_POWDER, 34
    learnset MOVE_VENOSHOCK, 38
    learnset MOVE_LEAF_TORNADO, 42
    learnset MOVE_SWEET_SCENT, 45
    learnset MOVE_TOXIC_SPIKES, 48
    learnset MOVE_GIGA_DRAIN, 51
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_ENERGY_BALL,57
    learnset MOVE_SYNTHESIS, 60
    learnset MOVE_PETAL_BLIZZARD, 63
    learnset MOVE_SLUDGE_BOMB, 66
    learnset MOVE_AROMATHERAPY, 69
    learnset MOVE_INGRAIN, 72
    learnset MOVE_PETAL_DANCE, 75
    terminatelearnset


levelup SPECIES_CRANIDOS
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_PURSUIT, 10
    learnset MOVE_TAKE_DOWN, 15
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_ASSURANCE, 24
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_ANCIENT_POWER, 33
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_SCREECH, 42
    learnset MOVE_HEAD_SMASH, 46
    terminatelearnset


levelup SPECIES_RAMPARDOS
    learnset MOVE_ENDEAVOR, 0
    learnset MOVE_ENDEAVOR, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_PURSUIT, 10
    learnset MOVE_TAKE_DOWN, 15
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_ASSURANCE, 24
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_ANCIENT_POWER, 36
    learnset MOVE_ZEN_HEADBUTT, 43
    learnset MOVE_SCREECH, 51
    learnset MOVE_HEAD_SMASH, 58
    terminatelearnset


levelup SPECIES_SHIELDON
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_TAUNT, 6
    learnset MOVE_METAL_SOUND, 10
    learnset MOVE_TAKE_DOWN, 15
    learnset MOVE_IRON_DEFENSE, 19
    learnset MOVE_SWAGGER, 24
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ENDURE, 33
    learnset MOVE_METAL_BURST, 37
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_HEAVY_SLAM, 46
    terminatelearnset


levelup SPECIES_BASTIODON
    learnset MOVE_BLOCK, 0
    learnset MOVE_BLOCK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_METAL_SOUND, 1
    learnset MOVE_TAUNT, 6
    learnset MOVE_METAL_SOUND, 10
    learnset MOVE_TAKE_DOWN, 15
    learnset MOVE_IRON_DEFENSE, 19
    learnset MOVE_SWAGGER, 24
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_ENDURE, 36
    learnset MOVE_METAL_BURST, 43
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_HEAVY_SLAM, 58
    terminatelearnset


levelup SPECIES_BURMY
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_HIDDEN_POWER, 20
    terminatelearnset


levelup SPECIES_WORMADAM
    learnset MOVE_QUIVER_DANCE, 0
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_PROTECT, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_CONFUSION, 23
    learnset MOVE_RAZOR_LEAF, 26
    learnset MOVE_GROWTH, 29
    learnset MOVE_PSYBEAM, 32
    learnset MOVE_CAPTIVATE, 35
    learnset MOVE_FLAIL, 38
    learnset MOVE_ATTRACT, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_LEAF_STORM, 47
    learnset MOVE_BUG_BUZZ, 50
    terminatelearnset


levelup SPECIES_MOTHIM
    learnset MOVE_QUIVER_DANCE, 0
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_PROTECT, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_CONFUSION, 23
    learnset MOVE_GUST, 26
    learnset MOVE_POISON_POWDER, 29
    learnset MOVE_PSYBEAM, 32
    learnset MOVE_CAMOUFLAGE, 35
    learnset MOVE_SILVER_WIND, 38
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_LUNGE, 47
    learnset MOVE_BUG_BUZZ, 50
    terminatelearnset


levelup SPECIES_COMBEE
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_GUST, 1
    learnset MOVE_STRUGGLE_BUG, 6
    learnset MOVE_BUG_BITE, 13
    terminatelearnset


levelup SPECIES_VESPIQUEN
    learnset MOVE_SLASH, 0
    learnset MOVE_SLASH, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_GUST, 1
    learnset MOVE_STRUGGLE_BUG, 6
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_FURY_CUTTER, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_HEAL_ORDER, 31
    learnset MOVE_AIR_CUTTER, 34
    learnset MOVE_HEX, 37
    learnset MOVE_TOXIC, 40
    learnset MOVE_ATTACK_ORDER, 43
    learnset MOVE_DEFEND_ORDER, 43
    learnset MOVE_POWER_GEM, 46
    learnset MOVE_DUAL_WINGBEAT, 49
    learnset MOVE_BUG_BUZZ, 52
    learnset MOVE_DESTINY_BOND, 55
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_HURRICANE, 61
    terminatelearnset


levelup SPECIES_PACHIRISU
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_CHARM, 9
    learnset MOVE_SPARK, 13
    learnset MOVE_ENDURE, 17
    learnset MOVE_NUZZLE, 19
    learnset MOVE_SWIFT, 21
    learnset MOVE_ELECTRO_BALL, 25
    learnset MOVE_SWEET_KISS, 29
    learnset MOVE_THUNDER_WAVE, 33
    learnset MOVE_SUPER_FANG, 37
    learnset MOVE_DISCHARGE, 41
    learnset MOVE_LAST_RESORT, 45
    learnset MOVE_HYPER_FANG, 49
    terminatelearnset


levelup SPECIES_BUIZEL
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_WHIRLPOOL, 19
    learnset MOVE_BITE, 22
    learnset MOVE_SWIFT, 25
    learnset MOVE_SOAK, 28
    learnset MOVE_WATER_PULSE, 31
    learnset MOVE_DOUBLE_HIT, 34
    learnset MOVE_BREAKING_SWIPE, 37
    learnset MOVE_BUBBLE_BEAM, 40
    learnset MOVE_LIQUIDATION, 43
    learnset MOVE_TAIL_SLAP, 46
    learnset MOVE_AGILITY, 49
    learnset MOVE_BRICK_BREAK, 52
    learnset MOVE_RAZOR_WIND, 55
    learnset MOVE_AQUA_TAIL, 58
    learnset MOVE_ICE_SPINNER, 61
    learnset MOVE_HYDRO_PUMP, 64
    learnset MOVE_RAIN_DANCE, 67
    learnset MOVE_WAVE_CRASH, 70
    learnset MOVE_DOUBLE_EDGE, 73
    terminatelearnset


levelup SPECIES_FLOATZEL
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_IRON_TAIL, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_WHIRLPOOL, 19
    learnset MOVE_BITE, 22
    learnset MOVE_SWIFT, 25
    learnset MOVE_SOAK, 29
    learnset MOVE_WATER_PULSE, 32
    learnset MOVE_DOUBLE_HIT, 35
    learnset MOVE_BREAKING_SWIPE, 38
    learnset MOVE_BUBBLE_BEAM, 41
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_TAIL_SLAP, 47
    learnset MOVE_AGILITY, 50
    learnset MOVE_BRICK_BREAK, 53
    learnset MOVE_RAZOR_WIND, 56
    learnset MOVE_AQUA_TAIL, 59
    learnset MOVE_ICE_SPINNER, 62
    learnset MOVE_HYDRO_PUMP, 65
    learnset MOVE_RAIN_DANCE, 68
    learnset MOVE_WAVE_CRASH, 71
    learnset MOVE_DOUBLE_EDGE, 74
    terminatelearnset


levelup SPECIES_CHERUBI
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_GROWTH, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_LEECH_SEED, 18
    learnset MOVE_MAGICAL_LEAF, 21
    learnset MOVE_SUNNY_DAY, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_TAKE_DOWN, 30
    learnset MOVE_WORRY_SEED, 33
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_WEATHER_BALL, 39
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_AROMATHERAPY, 48
    learnset MOVE_PETAL_BLIZZARD, 51
    learnset MOVE_LUCKY_CHANT, 54
    learnset MOVE_POWER_GEM, 57
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset


levelup SPECIES_CHERRIM
    learnset MOVE_FLOWER_SHIELD, 0
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_GROWTH, 8
    learnset MOVE_RAZOR_LEAF, 11
    learnset MOVE_HELPING_HAND, 14
    learnset MOVE_ROLLOUT, 17
    learnset MOVE_LEECH_SEED, 19
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_SUNNY_DAY, 25
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_WORRY_SEED, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_WEATHER_BALL, 40
    learnset MOVE_DAZZLING_GLEAM, 43
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_AROMATHERAPY, 49
    learnset MOVE_PETAL_BLIZZARD, 52
    learnset MOVE_LUCKY_CHANT, 55
    learnset MOVE_POWER_GEM, 58
    learnset MOVE_SOLAR_BEAM, 61
    terminatelearnset


levelup SPECIES_SHELLOS
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_RECOVER, 10
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_CHILLING_WATER, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_WATER_PULSE, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_RAIN_DANCE, 30
    learnset MOVE_MUD_BOMB, 33
    learnset MOVE_YAWN, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_SCALD, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_EARTH_POWER, 51
    learnset MOVE_MEMENTO, 54
    learnset MOVE_SLUDGE_WAVE, 57
    learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_GASTRODON
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_RECOVER, 11
    learnset MOVE_CLEAR_SMOG, 14
    learnset MOVE_CHILLING_WATER, 17
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_ANCIENT_POWER, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_RAIN_DANCE, 31
    learnset MOVE_MUD_BOMB, 34
    learnset MOVE_YAWN, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_SCALD, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_COUNTER, 49
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_MEMENTO, 55
    learnset MOVE_SLUDGE_WAVE, 58
    learnset MOVE_HYDRO_PUMP, 61
    terminatelearnset


levelup SPECIES_AMBIPOM
    learnset MOVE_DUAL_CHOP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ASTONISH, 8
    learnset MOVE_BATON_PASS, 11
    learnset MOVE_TICKLE, 15
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_SWIFT, 22
    learnset MOVE_SCREECH, 25
    learnset MOVE_AGILITY, 29
    learnset MOVE_DOUBLE_HIT, 32
    learnset MOVE_FLING, 36
    learnset MOVE_NASTY_PLOT, 39
    learnset MOVE_LAST_RESORT, 43
    terminatelearnset


levelup SPECIES_DRIFLOON
    learnset MOVE_GUST, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_PAYBACK, 4
    learnset MOVE_MEMENTO, 6
    learnset MOVE_CLEAR_SMOG, 9 
    learnset MOVE_AIR_CUTTER, 12 
    learnset MOVE_STOCKPILE, 15
    learnset MOVE_OMINOUS_WIND, 18
    learnset MOVE_DEFOG, 21
    learnset MOVE_AIR_SLASH, 23
    learnset MOVE_ICY_WIND, 25
    learnset MOVE_HEX, 28
    learnset MOVE_STRENGTH_SAP, 31
    learnset MOVE_CHARGE_BEAM, 33
    learnset MOVE_TAILWIND, 36
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_EXPLOSION, 44
    terminatelearnset

levelup SPECIES_DRIFBLIM
    learnset MOVE_ACROBATICS, 0 
    learnset MOVE_BATON_PASS, 0 
    learnset MOVE_SHADOW_FORCE, 1
    learnset MOVE_GUST, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_PAYBACK, 4
    learnset MOVE_MEMENTO, 6
    learnset MOVE_CLEAR_SMOG, 9 
    learnset MOVE_AIR_CUTTER, 12 
    learnset MOVE_STOCKPILE, 15
    learnset MOVE_OMINOUS_WIND, 18
    learnset MOVE_DEFOG, 21
    learnset MOVE_AIR_SLASH, 23
    learnset MOVE_ICY_WIND, 25
    learnset MOVE_HEX, 28
    learnset MOVE_STRENGTH_SAP, 31
    learnset MOVE_CHARGE_BEAM, 33
    learnset MOVE_TAILWIND, 36
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_AMNESIA, 43
    learnset MOVE_HEAT_WAVE, 47
    learnset MOVE_PHANTOM_FORCE, 53
    learnset MOVE_RECYCLE, 55
    learnset MOVE_HURRICANE, 59
    learnset MOVE_AURA_SPHERE, 62
    learnset MOVE_NASTY_PLOT, 65
    learnset MOVE_POLTERGEIST, 68
    learnset MOVE_DESTINY_BOND, 71
    learnset MOVE_EXPLOSION, 73
    terminatelearnset


levelup SPECIES_BUNEARY
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_FRUSTRATION, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_ENDURE, 6
    learnset MOVE_BABY_DOLL_EYES, 10
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_DOUBLE_KICK, 20
    learnset MOVE_JUMP_KICK, 23
    learnset MOVE_AFTER_YOU, 26
    learnset MOVE_BATON_PASS, 27
    learnset MOVE_HEADBUTT, 32
    learnset MOVE_CHARM, 34
    learnset MOVE_AGILITY, 34
    learnset MOVE_DIZZY_PUNCH, 36
    learnset MOVE_ENTRAINMENT, 44
    learnset MOVE_FLATTER, 44
    learnset MOVE_BOUNCE, 51
    learnset MOVE_HEALING_WISH, 57
    terminatelearnset


levelup SPECIES_LOPUNNY
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


levelup SPECIES_MISMAGIUS
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SPITE, 8
    learnset MOVE_MEMENTO, 11
    learnset MOVE_CONFUSE_RAY, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_MEAN_LOOK, 19
    learnset MOVE_THIEF, 22
    learnset MOVE_HEX, 25
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_PAIN_SPLIT, 34
    learnset MOVE_PAYBACK, 37
    learnset MOVE_WILL_O_WISP, 40
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_PERISH_SONG, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_GRUDGE, 52
    learnset MOVE_POWER_GEM, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_PSYCHIC, 61
    learnset MOVE_DESTINY_BOND, 64
    terminatelearnset


levelup SPECIES_HONCHKROW
    learnset MOVE_SWAGGER, 0
    learnset MOVE_SWAGGER, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_LEAF_BLADE, 1
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_HAZE, 11
    learnset MOVE_SNARL, 14
    learnset MOVE_AERIAL_ACE, 17
    learnset MOVE_TAUNT, 19
    learnset MOVE_NIGHT_SHADE, 22
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_U_TURN, 28
    learnset MOVE_TORMENT, 31
    learnset MOVE_MEAN_LOOK, 34
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_FEATHER_DANCE, 40
    learnset MOVE_DARK_PULSE, 43
    learnset MOVE_DRILL_PECK, 46
    learnset MOVE_HEAT_WAVE, 49
    learnset MOVE_TAILWIND, 52
    learnset MOVE_FOUL_PLAY, 55
    learnset MOVE_QUASH, 58
    learnset MOVE_BRAVE_BIRD, 61
    learnset MOVE_COMEUPPANCE, 64
    learnset MOVE_SKY_ATTACK, 67
    terminatelearnset


levelup SPECIES_GLAMEOW
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 4
    learnset MOVE_GROWL, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_CHARM, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_ATTRACT, 30
    learnset MOVE_U_TURN, 33
    learnset MOVE_CAPTIVATE, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_HONE_CLAWS, 48
    learnset MOVE_PLAY_ROUGH, 51
    learnset MOVE_TORMENT, 54
    learnset MOVE_DOUBLE_EDGE, 57
    terminatelearnset


levelup SPECIES_PURUGLY
    learnset MOVE_SWAGGER, 0
    learnset MOVE_SWAGGER, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 4
    learnset MOVE_GROWL, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_CHARM, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_ATTRACT, 30
    learnset MOVE_U_TURN, 33
    learnset MOVE_CAPTIVATE, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_HONE_CLAWS, 48
    learnset MOVE_PLAY_ROUGH, 51
    learnset MOVE_TORMENT, 54
    learnset MOVE_DOUBLE_EDGE, 57
    terminatelearnset


levelup SPECIES_CHINGLING
    learnset MOVE_WRAP, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_YAWN, 13
    learnset MOVE_LAST_RESORT, 16
    learnset MOVE_ENTRAINMENT, 19
    learnset MOVE_UPROAR, 32
    terminatelearnset


levelup SPECIES_STUNKY
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_POISON_GAS, 3
    learnset MOVE_FEINT, 8
    learnset MOVE_SMOKESCREEN, 9
    learnset MOVE_FURY_SWIPES, 10
    learnset MOVE_ACID_SPRAY, 13
    learnset MOVE_FOCUS_ENERGY, 15
    learnset MOVE_SCREECH, 16
    learnset MOVE_BITE, 19
    learnset MOVE_VENOSHOCK, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_TOXIC, 27
    learnset MOVE_MEMENTO, 33
    learnset MOVE_NIGHT_SLASH, 33
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_VENOM_DRENCH, 39
    learnset MOVE_BELCH, 40
    learnset MOVE_EXPLOSION, 45
    terminatelearnset


levelup SPECIES_SKUNTANK
    learnset MOVE_FLAMETHROWER, 0
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_POISON_GAS, 3
    learnset MOVE_FURY_SWIPES, 10
    learnset MOVE_ACID_SPRAY, 13
    learnset MOVE_SMOKESCREEN, 13
    learnset MOVE_FOCUS_ENERGY, 15
    learnset MOVE_FEINT, 15
    learnset MOVE_SCREECH, 16
    learnset MOVE_BITE, 19
    learnset MOVE_VENOSHOCK, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_TOXIC, 27
    learnset MOVE_MEMENTO, 33
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_VENOM_DRENCH, 42
    learnset MOVE_BELCH, 43
    learnset MOVE_EXPLOSION, 49
    terminatelearnset


levelup SPECIES_BRONZOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSE_RAY, 7
    learnset MOVE_IMPRISON, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_PSYWAVE, 15
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_PAYBACK, 23
    learnset MOVE_GYRO_BALL, 24
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_IRON_DEFENSE, 28
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_METAL_SOUND, 35
    learnset MOVE_FUTURE_SIGHT, 37
    learnset MOVE_HEAVY_SLAM, 39
    learnset MOVE_HEAL_BLOCK, 45
    terminatelearnset


levelup SPECIES_BRONZONG
    learnset MOVE_BLOCK, 0
    learnset MOVE_BLOCK, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_PAYBACK, 1
    learnset MOVE_RAIN_DANCE, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_IMPRISON, 10
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_PSYWAVE, 15
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_GYRO_BALL, 25
    learnset MOVE_IRON_DEFENSE, 29
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_METAL_SOUND, 37
    learnset MOVE_FUTURE_SIGHT, 40
    learnset MOVE_HEAVY_SLAM, 44
    learnset MOVE_PAYBACK, 46
    learnset MOVE_HEAL_BLOCK, 52
    learnset MOVE_RAIN_DANCE, 56
    terminatelearnset


levelup SPECIES_BONSLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_FLAIL, 4
    learnset MOVE_FAKE_TEARS, 7
    learnset MOVE_ROCK_THROW, 10 
    learnset MOVE_COPYCAT, 13 
    learnset MOVE_TEARFUL_LOOK, 15 
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_MIMIC, 20
    learnset MOVE_BRANCH_POKE, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_BLOCK, 33
    learnset MOVE_COVET, 36
    learnset MOVE_COUNTER, 39
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_ROCK_POLISH, 48
    terminatelearnset


levelup SPECIES_MIMEJR
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_BARRIER, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_COPYCAT, 4
    learnset MOVE_MEDITATE, 8
    learnset MOVE_DOUBLE_SLAP, 11
    learnset MOVE_ENCORE, 12
    learnset MOVE_CONFUSION, 12
    learnset MOVE_PROTECT, 20
    learnset MOVE_BATON_PASS, 23
    learnset MOVE_MIMIC, 24
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_RECYCLE, 27
    learnset MOVE_ROLE_PLAY, 28
    learnset MOVE_LIGHT_SCREEN, 29
    learnset MOVE_REFLECT, 29
    learnset MOVE_SUBSTITUTE, 29
    learnset MOVE_TRICK, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_SAFEGUARD, 42
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_DAZZLING_GLEAM, 44
    learnset MOVE_TEETER_DANCE, 52
    terminatelearnset


levelup SPECIES_HAPPINY
    learnset MOVE_POUND, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_REFRESH, 10
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_COVET, 16
    learnset MOVE_CHARM, 18
    terminatelearnset


levelup SPECIES_CHATOT
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFIDE, 4
    learnset MOVE_GUST, 7
    learnset MOVE_MIRROR_MOVE, 10
    learnset MOVE_SING, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_ENCORE, 18
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_TAUNT, 24
    learnset MOVE_SWIFT, 27
    learnset MOVE_ROUND, 30
    learnset MOVE_MIMIC, 33
    learnset MOVE_CHATTER, 36
    learnset MOVE_FEATHER_DANCE, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_AIR_SLASH, 51
    learnset MOVE_AGILITY, 54
    learnset MOVE_HURRICANE, 57
    terminatelearnset


levelup SPECIES_SPIRITOMB
    learnset MOVE_SHADOW_SNEAK, 1           // stab
    learnset MOVE_CONFUSE_RAY, 1    // status
    learnset MOVE_QUICK_ATTACK, 4                   // coverage
    learnset MOVE_POWER_TRIP, 6             // stab
    learnset MOVE_LICK, 9                   // stab
    learnset MOVE_WILL_O_WISP, 13   // status
    learnset MOVE_DISABLE, 16       // status
    learnset MOVE_HEX, 20                   // stab
    learnset MOVE_PAYBACK, 23               // stab
    learnset MOVE_METAL_CLAW, 26                    // coverage
    learnset MOVE_TRICK_OR_TREAT,29 // status
    learnset MOVE_THIEF, 33                 // stab
    learnset MOVE_CALM_MIND, 36      // status
    learnset MOVE_SHADOW_CLAW, 40           // stab
    learnset MOVE_KNOCK_OFF, 42             // stab
    learnset MOVE_PAIN_SPLIT, 45    // status
    learnset MOVE_SUCKER_PUNCH, 47          // stab
    learnset MOVE_POISON_JAB, 50                    // coverage
    learnset MOVE_DARK_PULSE,52         // stab
    learnset MOVE_CURSE, 55         // status
    learnset MOVE_SHADOW_BALL, 58           // stab
    learnset MOVE_DREAM_EATER, 61                   // coverage
    learnset MOVE_SHADOW_FORCE, 65          // stab
    learnset MOVE_NASTY_PLOT, 68    // status
    learnset MOVE_POLTERGEIST, 72           // stab
    terminatelearnset


levelup SPECIES_GIBLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TWISTER, 4
    learnset MOVE_GROWL, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_DRAGON_RAGE, 13
    learnset MOVE_BITE, 16
    learnset MOVE_SAND_TOMB, 19
    learnset MOVE_METAL_CLAW, 22
    learnset MOVE_DUAL_CHOP, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_MUD_SHOT, 31
    learnset MOVE_DRAGON_BREATH, 34
    learnset MOVE_BULLDOZE, 37
    learnset MOVE_MUD_BOMB, 40
    learnset MOVE_BREAKING_SWIPE, 43
    learnset MOVE_SLASH, 46
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_DRAGON_CLAW, 52
    learnset MOVE_DIG, 55
    learnset MOVE_CRUNCH, 58
    learnset MOVE_SANDSTORM, 61
    learnset MOVE_TAKE_DOWN, 64
    learnset MOVE_DRAGON_RUSH, 67
    learnset MOVE_EARTHQUAKE, 70
    learnset MOVE_OUTRAGE, 73
    terminatelearnset


levelup SPECIES_GABITE
    learnset MOVE_POWER_GEM, 0
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_SCALE_SHOT, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TWISTER, 4
    learnset MOVE_GROWL, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_DRAGON_RAGE, 13
    learnset MOVE_BITE, 16
    learnset MOVE_SAND_TOMB, 19
    learnset MOVE_METAL_CLAW, 22
    learnset MOVE_DUAL_CHOP, 25
    learnset MOVE_FEINT_ATTACK, 29
    learnset MOVE_MUD_SHOT, 32
    learnset MOVE_DRAGON_BREATH, 35
    learnset MOVE_BULLDOZE, 38
    learnset MOVE_MUD_BOMB, 41
    learnset MOVE_BREAKING_SWIPE, 44
    learnset MOVE_SLASH, 47
    learnset MOVE_ROCK_SLIDE, 50
    learnset MOVE_DRAGON_CLAW, 53
    learnset MOVE_DIG, 56
    learnset MOVE_CRUNCH, 59
    learnset MOVE_SANDSTORM, 62
    learnset MOVE_TAKE_DOWN, 65
    learnset MOVE_DRAGON_RUSH, 68
    learnset MOVE_EARTHQUAKE, 71
    learnset MOVE_OUTRAGE, 74
    terminatelearnset


levelup SPECIES_GARCHOMP
    learnset MOVE_FLY, 0
    learnset MOVE_FLY, 1
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_SCALE_SHOT, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TWISTER, 4
    learnset MOVE_GROWL, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_DRAGON_RAGE, 13
    learnset MOVE_BITE, 16
    learnset MOVE_SAND_TOMB, 19
    learnset MOVE_METAL_CLAW, 22
    learnset MOVE_DUAL_CHOP, 25
    learnset MOVE_FEINT_ATTACK, 29
    learnset MOVE_MUD_SHOT, 32
    learnset MOVE_DRAGON_BREATH, 35
    learnset MOVE_BULLDOZE, 38
    learnset MOVE_MUD_BOMB, 41
    learnset MOVE_BREAKING_SWIPE, 44
    learnset MOVE_SLASH, 47
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_DRAGON_CLAW, 54
    learnset MOVE_DIG, 57
    learnset MOVE_CRUNCH, 60
    learnset MOVE_SANDSTORM, 63
    learnset MOVE_TAKE_DOWN, 66
    learnset MOVE_DRAGON_RUSH, 69
    learnset MOVE_EARTHQUAKE, 72
    learnset MOVE_OUTRAGE, 75
    terminatelearnset


levelup SPECIES_MUNCHLAX
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_METRONOME, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_RECYCLE, 8
    learnset MOVE_COVET, 12
    learnset MOVE_LICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_CHIP_AWAY, 17
    learnset MOVE_SCREECH, 22
    learnset MOVE_STOCKPILE, 23
    learnset MOVE_AMNESIA, 23
    learnset MOVE_SWALLOW, 26
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_FLING, 36
    learnset MOVE_ROLLOUT, 36
    learnset MOVE_METRONOME, 40
    learnset MOVE_FLAIL, 44
    learnset MOVE_BELLY_DRUM, 46
    learnset MOVE_NATURAL_GIFT, 49
    learnset MOVE_SNATCH, 50
    learnset MOVE_LAST_RESORT, 54
    terminatelearnset


levelup SPECIES_RIOLU
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_ENDURE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COUNTER, 9
    learnset MOVE_WORK_UP, 16
    learnset MOVE_ROCK_SMASH, 20
    learnset MOVE_SCREECH, 26
    learnset MOVE_FORCE_PALM, 26
    learnset MOVE_QUICK_GUARD, 32
    learnset MOVE_NASTY_PLOT, 34
    learnset MOVE_COPYCAT, 34
    learnset MOVE_SWORDS_DANCE, 40
    learnset MOVE_REVERSAL, 43
    learnset MOVE_HELPING_HAND, 44
    learnset MOVE_FINAL_GAMBIT, 51
    terminatelearnset


levelup SPECIES_LUCARIO
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


levelup SPECIES_HIPPOPOTAS
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BITE, 5
    learnset MOVE_YAWN, 10
    learnset MOVE_DIG, 17
    learnset MOVE_SAND_TOMB, 18
    learnset MOVE_TAKE_DOWN, 23
    learnset MOVE_SANDSTORM, 24
    learnset MOVE_CRUNCH, 25
    learnset MOVE_ROAR, 32
    learnset MOVE_REST, 36
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_FISSURE, 48
    learnset MOVE_SLACK_OFF, 52
    terminatelearnset


levelup SPECIES_HIPPOWDON
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_BITE, 7
    learnset MOVE_YAWN, 13
    learnset MOVE_DIG, 17
    learnset MOVE_SAND_TOMB, 18
    learnset MOVE_TAKE_DOWN, 23
    learnset MOVE_SANDSTORM, 24
    learnset MOVE_CRUNCH, 25
    learnset MOVE_ROAR, 32
    learnset MOVE_REST, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_FISSURE, 57
    learnset MOVE_SLACK_OFF, 62
    terminatelearnset


levelup SPECIES_SKORUPI
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 1
    learnset MOVE_BITE, 12
    learnset MOVE_HONE_CLAWS, 15
    learnset MOVE_POISON_FANG, 15
    learnset MOVE_KNOCK_OFF, 15
    learnset MOVE_PURSUIT, 16
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_PIN_MISSILE, 20
    learnset MOVE_TOXIC_SPIKES, 23
    learnset MOVE_VENOSHOCK, 23
    learnset MOVE_FELL_STINGER, 25
    learnset MOVE_ACUPRESSURE, 30
    learnset MOVE_SCARY_FACE, 33
    learnset MOVE_TOXIC, 33
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_CROSS_POISON, 43
    learnset MOVE_CRUNCH, 46
    terminatelearnset


levelup SPECIES_DRAPION
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_BITE, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_BITE, 12
    learnset MOVE_POISON_FANG, 15
    learnset MOVE_KNOCK_OFF, 15
    learnset MOVE_PURSUIT, 16
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_PIN_MISSILE, 20
    learnset MOVE_TOXIC_SPIKES, 23
    learnset MOVE_VENOSHOCK, 23
    learnset MOVE_HONE_CLAWS, 30
    learnset MOVE_ACUPRESSURE, 32
    learnset MOVE_TOXIC, 33
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_X_SCISSOR, 44
    learnset MOVE_CROSS_POISON, 47
    learnset MOVE_CRUNCH, 51
    learnset MOVE_FELL_STINGER, 53
    terminatelearnset


levelup SPECIES_CROAGUNK
    learnset MOVE_PARTING_SHOT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_TAUNT, 4
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_REVENGE, 15
    learnset MOVE_FAKE_OUT, 18
    learnset MOVE_BULK_UP, 21
    learnset MOVE_SUCKER_PUNCH, 23
    learnset MOVE_VENOSHOCK, 25
    learnset MOVE_AURA_SPHERE, 28
    learnset MOVE_ENCORE, 31
    learnset MOVE_DRAIN_PUNCH, 35
    learnset MOVE_LIQUIDATION, 39
    learnset MOVE_DARK_PULSE, 43
    learnset MOVE_NASTY_PLOT, 46
    terminatelearnset


levelup SPECIES_TOXICROAK
    learnset MOVE_MEGAHORN, 0
    learnset MOVE_PARTING_SHOT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_MACH_PUNCH, 1
    learnset MOVE_TAUNT, 4
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_REVENGE, 15
    learnset MOVE_FAKE_OUT, 18
    learnset MOVE_BULK_UP, 21
    learnset MOVE_SUCKER_PUNCH, 23
    learnset MOVE_VENOSHOCK, 25
    learnset MOVE_AURA_SPHERE, 28
    learnset MOVE_ENCORE, 31
    learnset MOVE_DRAIN_PUNCH, 34
    learnset MOVE_DIRE_CLAW, 37
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_DARK_PULSE, 43
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_CROSS_CHOP, 50
    learnset MOVE_SLUDGE_WAVE, 53
    learnset MOVE_METEOR_MASH, 56
    learnset MOVE_GUNK_SHOT, 59
    learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset


levelup SPECIES_CARNIVINE
    learnset MOVE_JAW_LOCK, 1 
    learnset MOVE_WRAP, 1 
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_RAGE_POWDER, 1
    learnset MOVE_GROWTH, 4 
    learnset MOVE_MEGA_DRAIN, 6
    learnset MOVE_ACID_SPRAY, 9 
    learnset MOVE_LEECH_SEED, 12 
    learnset MOVE_LEAF_TORNADO, 15
    learnset MOVE_THUNDER_FANG, 18
    learnset MOVE_SWEET_SCENT, 21
    learnset MOVE_GRASS_KNOT, 23
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_GRASS_WHISTLE, 28
    learnset MOVE_SEED_BOMB, 31
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_CURSE, 36
    learnset MOVE_SNAP_TRAP, 41
    learnset MOVE_SLUDGE_BOMB, 44
    learnset MOVE_SYNTHESIS, 47
    learnset MOVE_PSYCHIC_FANGS, 49
    learnset MOVE_LEAF_BLADE, 53
    learnset MOVE_LEECH_LIFE, 59 
    learnset MOVE_DEFOG, 62
    learnset MOVE_PLAY_ROUGH, 66
    learnset MOVE_POWER_WHIP, 70 
    terminatelearnset



levelup SPECIES_FINNEON
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_BABY_DOLL_EYES, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_GUST, 13
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_CAPTIVATE, 25
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_ATTRACT, 34
    learnset MOVE_WHIRLPOOL, 37
    learnset MOVE_SAFEGUARD, 40
    learnset MOVE_U_TURN, 43
    learnset MOVE_AQUA_RING, 46
    learnset MOVE_DAZZLING_GLEAM, 49
    learnset MOVE_SCALD, 52
    learnset MOVE_BOUNCE, 55
    learnset MOVE_ALLURING_VOICE, 58
    learnset MOVE_LIQUIDATION, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_RAIN_DANCE, 67
    learnset MOVE_HYDRO_PUMP, 70
    learnset MOVE_TAILWIND, 73
    terminatelearnset


levelup SPECIES_LUMINEON
    learnset MOVE_WISH, 0
    learnset MOVE_WISH, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_BABY_DOLL_EYES, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_GUST, 13
    learnset MOVE_SWEET_KISS, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_CAPTIVATE, 25
    learnset MOVE_BUBBLE_BEAM, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_ATTRACT, 34
    learnset MOVE_WHIRLPOOL, 37
    learnset MOVE_SAFEGUARD, 40
    learnset MOVE_U_TURN, 43
    learnset MOVE_AQUA_RING, 46
    learnset MOVE_DAZZLING_GLEAM, 49
    learnset MOVE_SCALD, 52
    learnset MOVE_BOUNCE, 55
    learnset MOVE_ALLURING_VOICE, 58
    learnset MOVE_LIQUIDATION, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_RAIN_DANCE, 67
    learnset MOVE_HYDRO_PUMP, 70
    learnset MOVE_TAILWIND, 73
    terminatelearnset


levelup SPECIES_MANTYKE
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_SUPERSONIC, 4
    learnset MOVE_GUST, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_TWISTER, 16
    learnset MOVE_AIR_CUTTER, 18
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_HEADBUTT, 27
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_AQUA_RING, 36
    learnset MOVE_SCALD, 39
    learnset MOVE_BOUNCE, 42
    learnset MOVE_HAZE, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_TAILWIND, 51
    learnset MOVE_HURRICANE, 54
    learnset MOVE_HYDRO_PUMP, 57
    learnset MOVE_BLIZZARD, 60
    terminatelearnset


levelup SPECIES_SNOVER
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MIST, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_ICE_SHARD, 21
    learnset MOVE_SWAGGER, 24
    learnset MOVE_STOMP, 27
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_INGRAIN, 33
    learnset MOVE_ANCIENT_POWER, 36
    learnset MOVE_AURORA_BEAM, 39
    learnset MOVE_GROWTH, 42
    learnset MOVE_SEED_BOMB, 45
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_WOOD_HAMMER, 63
    learnset MOVE_LEAF_STORM, 66
    terminatelearnset


levelup SPECIES_ABOMASNOW
    learnset MOVE_ICE_PUNCH, 0
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_AURORA_VEIL, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_MIST, 11
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_ICE_SHARD, 22
    learnset MOVE_SWAGGER, 25
    learnset MOVE_STOMP, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_INGRAIN, 34
    learnset MOVE_ANCIENT_POWER, 37
    learnset MOVE_AURORA_BEAM, 40
    learnset MOVE_GROWTH, 43
    learnset MOVE_SEED_BOMB, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_ICE_BEAM, 52
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_ENERGY_BALL, 58
    learnset MOVE_BLIZZARD, 61
    learnset MOVE_WOOD_HAMMER, 64
    learnset MOVE_LEAF_STORM, 67
    terminatelearnset


levelup SPECIES_WEAVILE
    learnset MOVE_REVENGE, 1
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BEAT_UP, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_SLASH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_EMBARGO, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_METAL_CLAW, 19
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_FURY_SWIPES, 23
    learnset MOVE_HONE_CLAWS, 30
    learnset MOVE_NASTY_PLOT, 34
    learnset MOVE_FLING, 35
    learnset MOVE_SNATCH, 40
    learnset MOVE_SCREECH, 43
    learnset MOVE_PUNISHMENT, 44
    learnset MOVE_NIGHT_SLASH, 48
    learnset MOVE_DARK_PULSE, 57
    terminatelearnset


levelup SPECIES_MAGNEZONE
    learnset MOVE_TRI_ATTACK, 0
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_SIGNAL_BEAM, 1
    learnset MOVE_ELECTRIC_TERRAIN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_ELECTRO_BALL, 10
    learnset MOVE_GYRO_BALL, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SONIC_BOOM, 19
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_CHARGE, 25
    learnset MOVE_SHOCK_WAVE, 32
    learnset MOVE_MIRROR_SHOT, 35
    learnset MOVE_PARABOLIC_CHARGE, 38
    learnset MOVE_PSYBEAM, 41
    learnset MOVE_SCREECH, 44
    learnset MOVE_METAL_SOUND, 47
    learnset MOVE_FLASH_CANNON, 50
    learnset MOVE_DISCHARGE, 53
    learnset MOVE_MAGNET_RISE, 56
    learnset MOVE_RISING_VOLTAGE, 59
    learnset MOVE_THUNDERBOLT, 62
    learnset MOVE_THUNDER, 65
    learnset MOVE_LOCK_ON, 68
    learnset MOVE_ZAP_CANNON, 71
    learnset MOVE_STEEL_BEAM, 75
    terminatelearnset


levelup SPECIES_LICKILICKY
    learnset MOVE_LICK, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WRING_OUT, 1
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_DEFENSE_CURL, 9
    learnset MOVE_WRAP, 17
    learnset MOVE_DISABLE, 24
    learnset MOVE_STOMP, 25
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_ROLLOUT, 33
    learnset MOVE_CHIP_AWAY, 37
    learnset MOVE_SLAM, 39
    learnset MOVE_ME_FIRST, 41
    learnset MOVE_SCREECH, 45
    learnset MOVE_REFRESH, 45
    learnset MOVE_POWER_WHIP, 53
    learnset MOVE_WRING_OUT, 57
    learnset MOVE_BELLY_DRUM, 60
    learnset MOVE_GYRO_BALL, 61
    terminatelearnset


levelup SPECIES_RHYPERIOR
    learnset MOVE_POISON_JAB, 0
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_MUD_SLAP, 6
    learnset MOVE_FURY_ATTACK, 9
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_ROCK_THROW, 15
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_ROCK_POLISH, 20
    learnset MOVE_STOMP, 23
    learnset MOVE_HORN_ATTACK, 26
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_CURSE, 35
    learnset MOVE_SMART_STRIKE, 38
    learnset MOVE_TAKE_DOWN, 41
    learnset MOVE_DRILL_RUN, 44
    learnset MOVE_CRUNCH, 47
    learnset MOVE_SANDSTORM, 50
    learnset MOVE_HIGH_HORSEPOWER, 53
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_MEGAHORN, 59
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_ROCK_WRECKER, 66
    terminatelearnset


levelup SPECIES_TANGROWTH
    learnset MOVE_BLOCK, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BIND, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_ABSORB, 10
    learnset MOVE_VINE_WHIP, 11
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_BIND, 17
    learnset MOVE_GROWTH, 20
    learnset MOVE_SLEEP_POWDER, 21
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_STUN_SPORE, 30
    learnset MOVE_ANCIENT_POWER, 31
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_NATURAL_GIFT, 33
    learnset MOVE_SLAM, 41
    learnset MOVE_TICKLE, 44
    learnset MOVE_WRING_OUT, 49
    learnset MOVE_POWER_WHIP, 50
    learnset MOVE_INGRAIN, 52
    learnset MOVE_GRASSY_TERRAIN, 53
    learnset MOVE_BLOCK, 56
    terminatelearnset


levelup SPECIES_ELECTIVIRE
    learnset MOVE_VOLT_TACKLE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 6
    learnset MOVE_THUNDER_WAVE, 9
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_SWIFT, 15
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_CHARGE, 20
    learnset MOVE_LOW_SWEEP, 23
    learnset MOVE_FOLLOW_ME, 26
    learnset MOVE_THUNDER_PUNCH, 29
    learnset MOVE_SCREECH, 32
    learnset MOVE_VOLT_SWITCH, 35
    learnset MOVE_LIGHT_SCREEN, 38
    learnset MOVE_KNOCK_OFF, 41
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_DRAIN_PUNCH, 47
    learnset MOVE_ELECTRIC_TERRAIN, 50
    learnset MOVE_THUNDERBOLT, 53
    learnset MOVE_BULK_UP, 56
    learnset MOVE_CROSS_CHOP, 59
    learnset MOVE_SUPERCELL_SLAM, 62
    learnset MOVE_THUNDER, 65
    learnset MOVE_GIGA_IMPACT, 68
    terminatelearnset


levelup SPECIES_MAGMORTAR
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_SLUDGE_BOMB, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_SMOKESCREEN, 9
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_CLEAR_SMOG, 18
    learnset MOVE_THIEF, 20
    learnset MOVE_CONFUSE_RAY, 23
    learnset MOVE_VACUUM_WAVE, 24
    learnset MOVE_FIRE_PUNCH, 29
    learnset MOVE_FOLLOW_ME, 32
    learnset MOVE_FLAME_BURST, 35
    learnset MOVE_SCORCHING_SANDS, 38
    learnset MOVE_SUNNY_DAY, 41
    learnset MOVE_LAVA_PLUME, 44
    learnset MOVE_TAUNT, 47
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_FLAMETHROWER, 53
    learnset MOVE_THUNDERBOLT, 56
    learnset MOVE_AURA_SPHERE, 59
    learnset MOVE_SEARING_SHOT, 62
    learnset MOVE_SOLAR_BEAM, 65
    terminatelearnset


levelup SPECIES_TOGEKISS
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_DEFENSE_CURL, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_RETURN, 19
    learnset MOVE_LIFE_DEW, 22
    learnset MOVE_FAIRY_WIND, 25
    learnset MOVE_METRONOME, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_AIR_CUTTER, 37
    learnset MOVE_HEADBUTT, 40
    learnset MOVE_CHARM, 43
    learnset MOVE_AIR_SLASH, 46
    learnset MOVE_LUCKY_CHANT, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_ACROBATICS, 55
    learnset MOVE_SOFT_BOILED, 58
    learnset MOVE_DAZZLING_GLEAM, 61
    learnset MOVE_ZEN_HEADBUTT, 64
    learnset MOVE_HURRICANE, 67
    learnset MOVE_PLAY_ROUGH, 70
    learnset MOVE_SKY_ATTACK, 74
    terminatelearnset


levelup SPECIES_YANMEGA
    learnset MOVE_BUG_BUZZ, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_TEAM, 11
    learnset MOVE_SONIC_BOOM, 14
    learnset MOVE_DETECT, 17
    learnset MOVE_SUPERSONIC, 22
    learnset MOVE_UPROAR, 27
    learnset MOVE_PURSUIT, 30
    learnset MOVE_ANCIENT_POWER, 33
    learnset MOVE_FEINT, 38
    learnset MOVE_SLASH, 43
    learnset MOVE_SCREECH, 46
    learnset MOVE_U_TURN, 49
    learnset MOVE_AIR_SLASH, 54
    learnset MOVE_BUG_BUZZ, 57
    terminatelearnset


levelup SPECIES_LEAFEON
    learnset MOVE_RAZOR_LEAF, 0
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_COVET, 25
    learnset MOVE_LEECH_SEED, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_ENERGY_BALL, 43
    learnset MOVE_PSYCHO_CUT, 46
    learnset MOVE_SAPPY_SEED, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_SYNTHESIS, 55
    learnset MOVE_SUNNY_DAY, 58
    learnset MOVE_LEAF_BLADE, 61
    learnset MOVE_SWORDS_DANCE, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_SOLAR_BLADE, 70
    terminatelearnset


levelup SPECIES_GLACEON
    learnset MOVE_AURORA_BEAM, 0
    learnset MOVE_AURORA_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_ICE_SHARD, 22
    learnset MOVE_COVET, 25
    learnset MOVE_MIST, 28
    learnset MOVE_ICY_WIND, 31
    learnset MOVE_SHEER_COLD, 34
    learnset MOVE_FROST_BREATH, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_ICE_FANG, 43
    learnset MOVE_ICICLE_SPEAR, 46
    learnset MOVE_FREEZY_FROST, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_FREEZE_DRY, 55
    learnset MOVE_SNOWSCAPE, 58
    learnset MOVE_ICE_BEAM, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_MIRROR_COAT, 67
    learnset MOVE_BLIZZARD, 70
    terminatelearnset


levelup SPECIES_GLISCOR
    learnset MOVE_GUILLOTINE, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HARDEN, 7
    learnset MOVE_KNOCK_OFF, 10
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_FURY_CUTTER, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_ACROBATICS, 22
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_SCREECH, 35
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_SKY_UPPERCUT, 45
    learnset MOVE_SWORDS_DANCE, 50
    learnset MOVE_GUILLOTINE, 55
    terminatelearnset


levelup SPECIES_MAMOSWINE
    learnset MOVE_DOUBLE_HIT, 0
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_HAIL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 6
    learnset MOVE_ICICLE_SPEAR, 9
    learnset MOVE_FLAIL, 12
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ICE_SHARD, 18
    learnset MOVE_ENDURE, 20
    learnset MOVE_TRAILBLAZE, 23
    learnset MOVE_FLAIL, 26
    learnset MOVE_ICE_FANG, 29
    learnset MOVE_MIST, 32
    learnset MOVE_ANCIENT_POWER, 35
    learnset MOVE_STOMPING_TANTRUM, 38
    learnset MOVE_CURSE, 41
    learnset MOVE_AMNESIA, 44
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_ICICLE_CRASH, 50
    learnset MOVE_STEALTH_ROCK, 53
    learnset MOVE_SUPERPOWER, 56
    learnset MOVE_ICE_HAMMER, 59
    learnset MOVE_HEADLONG_RUSH, 62
    terminatelearnset


levelup SPECIES_PORYGON_Z
    learnset MOVE_TRICK_ROOM, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 1
    learnset MOVE_THUNDER_SHOCK, 6
    learnset MOVE_SHARPEN, 9
    learnset MOVE_MAGNET_RISE, 12
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_SWIFT, 18
    learnset MOVE_RECYCLE, 20
    learnset MOVE_AGILITY, 23
    learnset MOVE_SHOCK_WAVE, 26
    learnset MOVE_CONVERSION_2, 29
    learnset MOVE_RECOVER, 32
    learnset MOVE_SIGNAL_BEAM, 35
    learnset MOVE_BARRIER, 38
    learnset MOVE_GRAVITY, 41
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_TRI_ATTACK, 47
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_MAGIC_COAT, 53
    learnset MOVE_LOCK_ON, 56
    learnset MOVE_ZAP_CANNON, 59
    learnset MOVE_HYPER_BEAM, 62
    terminatelearnset


levelup SPECIES_GALLADE
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


levelup SPECIES_PROBOPASS
    learnset MOVE_TRI_ATTACK, 0
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_MAGNETIC_FLUX, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_BLOCK, 10
    learnset MOVE_THUNDER_WAVE, 13
    learnset MOVE_ROCK_BLAST, 16
    learnset MOVE_SPARK, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_REST, 24
    learnset MOVE_MAGNET_BOMB, 27
    learnset MOVE_VOLT_SWITCH, 30
    learnset MOVE_SANDSTORM, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_IRON_DEFENSE, 39
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_POWER_GEM, 45
    learnset MOVE_FLASH_CANNON, 48
    learnset MOVE_BODY_PRESS, 51
    learnset MOVE_DISCHARGE, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_LOCK_ON, 60
    learnset MOVE_ZAP_CANNON, 63
    learnset MOVE_STEEL_BEAM, 66
    terminatelearnset


levelup SPECIES_DUSKNOIR
    learnset MOVE_CRUNCH, 0
    learnset MOVE_CRUNCH, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_SHADOW_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_DISABLE, 7
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_FEINT, 13
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PAYBACK, 31
    learnset MOVE_HEX, 34
    learnset MOVE_MEAN_LOOK, 37
    learnset MOVE_DRAIN_PUNCH, 42
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_CURSE, 48
    learnset MOVE_KNOCK_OFF, 51
    learnset MOVE_LEECH_LIFE, 54
    learnset MOVE_SHADOW_BALL, 57
    learnset MOVE_SUCKER_PUNCH, 60
    learnset MOVE_GLARE, 63
    learnset MOVE_FOUL_PLAY, 66
    learnset MOVE_PAIN_SPLIT, 69
    learnset MOVE_POLTERGEIST, 72
    learnset MOVE_FUTURE_SIGHT, 75
    terminatelearnset


levelup SPECIES_FROSLASS
    learnset MOVE_HEX, 0
    learnset MOVE_OMINOUS_WIND, 0
    learnset MOVE_HEX, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_BITE, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_OMINOUS_WIND, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_ASTONISH, 19
    learnset MOVE_DRAINING_KISS, 21
    learnset MOVE_FROST_BREATH, 30
    learnset MOVE_CONFUSE_RAY, 33
    learnset MOVE_WAKE_UP_SLAP, 37
    learnset MOVE_WILL_O_WISP, 38
    learnset MOVE_CAPTIVATE, 41
    learnset MOVE_HAIL, 46
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_AURORA_VEIL, 54
    learnset MOVE_BLIZZARD, 58
    learnset MOVE_DESTINY_BOND, 61
    terminatelearnset


levelup SPECIES_ROTOM
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


levelup SPECIES_UXIE
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REST, 1
    learnset MOVE_MEMENTO, 1
    learnset MOVE_NATURAL_GIFT, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_SWIFT, 13
    learnset MOVE_ENDURE, 14
    learnset MOVE_IMPRISON, 17
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_AMNESIA, 43
    learnset MOVE_YAWN, 44
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_FUTURE_SIGHT, 50
    learnset MOVE_FLAIL, 65
    learnset MOVE_NATURAL_GIFT, 66
    learnset MOVE_MEMENTO, 76
    terminatelearnset


levelup SPECIES_MESPRIT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REST, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_NATURAL_GIFT, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_SWIFT, 13
    learnset MOVE_PROTECT, 14
    learnset MOVE_IMPRISON, 17
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_LUCKY_CHANT, 31
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_CHARM, 43
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_FUTURE_SIGHT, 50
    learnset MOVE_FLATTER, 56
    learnset MOVE_COPYCAT, 65
    learnset MOVE_NATURAL_GIFT, 66
    learnset MOVE_HEALING_WISH, 76
    terminatelearnset


levelup SPECIES_AZELF
    learnset MOVE_CONFUSION, 1
    learnset MOVE_REST, 1
    learnset MOVE_NATURAL_GIFT, 1
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_SWIFT, 13
    learnset MOVE_DETECT, 14
    learnset MOVE_IMPRISON, 17
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_NASTY_PLOT, 43
    learnset MOVE_UPROAR, 44
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_FUTURE_SIGHT, 50
    learnset MOVE_LAST_RESORT, 65
    learnset MOVE_NATURAL_GIFT, 66
    learnset MOVE_EXPLOSION, 76
    terminatelearnset


levelup SPECIES_DIALGA
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


levelup SPECIES_PALKIA
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


levelup SPECIES_HEATRAN
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ANCIENT_POWER, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_SCARY_FACE, 13
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_FLAME_CHARGE, 21
    learnset MOVE_WILL_O_WISP, 24
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SCORCHING_SANDS, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_TAUNT, 42
    learnset MOVE_LAVA_PLUME, 45
    learnset MOVE_IRON_DEFENSE, 48
    learnset MOVE_FLASH_CANNON, 51
    learnset MOVE_EARTH_POWER, 54
    learnset MOVE_METAL_BURST, 57
    learnset MOVE_STONE_EDGE, 60
    learnset MOVE_HEAT_WAVE, 63
    learnset MOVE_MAGMA_STORM, 66
    learnset MOVE_OVERHEAT, 69 
    terminatelearnset


levelup SPECIES_REGIGIGAS
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_CRUSH_GRIP, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_DIZZY_PUNCH, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_REVENGE, 18
    learnset MOVE_STOMP, 18
    learnset MOVE_PROTECT, 24
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_PAYBACK, 33
    learnset MOVE_MEGA_PUNCH, 36
    learnset MOVE_BODY_PRESS, 42
    learnset MOVE_WIDE_GUARD, 44
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_HAMMER_ARM, 66
    learnset MOVE_HEAVY_SLAM, 74
    learnset MOVE_CRUSH_GRIP, 76
    learnset MOVE_GIGA_IMPACT, 85
    terminatelearnset


levelup SPECIES_GIRATINA
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


levelup SPECIES_CRESSELIA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_LUNAR_DANCE, 1
    learnset MOVE_PSYCHO_SHIFT, 1
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MIST, 12
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_AURORA_BEAM, 19
    learnset MOVE_SAFEGUARD, 30
    learnset MOVE_SLASH, 37
    learnset MOVE_PSYCHO_SHIFT, 47
    learnset MOVE_MOONLIGHT, 49
    learnset MOVE_PSYCHO_CUT, 50
    learnset MOVE_FUTURE_SIGHT, 52
    learnset MOVE_PSYCHIC, 72
    learnset MOVE_LUNAR_DANCE, 77
    learnset MOVE_MOONBLAST, 78
    terminatelearnset


levelup SPECIES_PHIONE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_CHARM, 9
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_WHIRLPOOL, 39
    learnset MOVE_WATER_PULSE, 46
    learnset MOVE_AQUA_RING, 54
    learnset MOVE_DIVE, 61
    learnset MOVE_RAIN_DANCE, 69
    terminatelearnset


levelup SPECIES_MANAPHY
    learnset MOVE_TAIL_GLOW, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_CHARM, 9
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_WHIRLPOOL, 39
    learnset MOVE_WATER_PULSE, 46
    learnset MOVE_AQUA_RING, 54
    learnset MOVE_DIVE, 61
    learnset MOVE_RAIN_DANCE, 69
    learnset MOVE_HEART_SWAP, 76
    terminatelearnset


levelup SPECIES_DARKRAI
    learnset MOVE_OMINOUS_WIND, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_FEINT_ATTACK, 29
    learnset MOVE_NIGHTMARE, 38
    learnset MOVE_DOUBLE_TEAM, 47
    learnset MOVE_HAZE, 57
    learnset MOVE_DARK_VOID, 66
    learnset MOVE_NASTY_PLOT, 75
    learnset MOVE_DREAM_EATER, 84
    learnset MOVE_DARK_PULSE, 93
    terminatelearnset


levelup SPECIES_SHAYMIN
    learnset MOVE_GROWTH, 1
    learnset MOVE_MAGICAL_LEAF, 10
    learnset MOVE_LEECH_SEED, 19
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_SWEET_SCENT, 37
    learnset MOVE_NATURAL_GIFT, 46
    learnset MOVE_WORRY_SEED, 55
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_ENERGY_BALL, 73
    learnset MOVE_SWEET_KISS, 82
    learnset MOVE_HEALING_WISH, 91
    learnset MOVE_SEED_FLARE, 100
    terminatelearnset


levelup SPECIES_ARCEUS
    learnset MOVE_SEISMIC_TOSS, 1
    learnset MOVE_COSMIC_POWER, 1
    learnset MOVE_NATURAL_GIFT, 1
    learnset MOVE_PUNISHMENT, 1
    learnset MOVE_GRAVITY, 10
    learnset MOVE_EARTH_POWER, 20
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_EXTREME_SPEED, 40
    learnset MOVE_REFRESH, 50
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_RECOVER, 70
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_PERISH_SONG, 90
    learnset MOVE_JUDGMENT, 100
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
    learnset MOVE_QUIVER_DANCE, 0
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_PROTECT, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_CONFUSION, 23
    learnset MOVE_ROCK_BLAST, 26
    learnset MOVE_HARDEN, 29
    learnset MOVE_PSYBEAM, 32
    learnset MOVE_CAPTIVATE, 35
    learnset MOVE_FLAIL, 38
    learnset MOVE_ATTRACT, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_FISSURE, 47
    learnset MOVE_BUG_BUZZ, 50
    terminatelearnset


levelup SPECIES_WORMADAM_TRASHY
    learnset MOVE_QUIVER_DANCE, 0
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_PROTECT, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_CONFUSION, 23
    learnset MOVE_MIRROR_SHOT, 26
    learnset MOVE_METAL_SOUND, 29
    learnset MOVE_PSYBEAM, 32
    learnset MOVE_CAPTIVATE, 35
    learnset MOVE_FLAIL, 38
    learnset MOVE_ATTRACT, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_IRON_HEAD, 47
    learnset MOVE_BUG_BUZZ, 50
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
    learnset MOVE_GROWTH, 1
    learnset MOVE_MAGICAL_LEAF, 10
    learnset MOVE_LEECH_SEED, 19
    learnset MOVE_QUICK_ATTACK, 28
    learnset MOVE_SWEET_SCENT, 37
    learnset MOVE_NATURAL_GIFT, 46
    learnset MOVE_WORRY_SEED, 55
    learnset MOVE_AIR_SLASH, 64
    learnset MOVE_ENERGY_BALL, 73
    learnset MOVE_SWEET_KISS, 82
    learnset MOVE_LEAF_STORM, 91
    learnset MOVE_SEED_FLARE, 100
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
    learnset MOVE_V_CREATE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SEARING_SHOT, 1
    learnset MOVE_INCINERATE, 1
    learnset MOVE_WORK_UP, 7
    learnset MOVE_INCINERATE, 14
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_ENDURE, 22
    learnset MOVE_FLAME_CHARGE, 25
    learnset MOVE_FLAME_BURST, 41
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_REVERSAL, 45
    learnset MOVE_STORED_POWER, 52
    learnset MOVE_INFERNO, 52
    learnset MOVE_SEARING_SHOT, 63
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_FLARE_BLITZ, 75
    learnset MOVE_FINAL_GAMBIT, 86
    learnset MOVE_OVERHEAT, 90
    terminatelearnset


levelup SPECIES_SNIVY
    learnset MOVE_TACKLE,1                   
    learnset MOVE_LEER,3           
    learnset MOVE_VINE_WHIP,5               
    learnset MOVE_WRAP,8                          
    learnset MOVE_GROWTH,11         
    learnset MOVE_MEGA_DRAIN,13        
    learnset MOVE_LEECH_SEED,16     // status
    learnset MOVE_LEAF_TORNADO,20           
    terminatelearnset


levelup SPECIES_SERVINE
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_LEER,3            // status
    learnset MOVE_VINE_WHIP,5                // stab
    learnset MOVE_WRAP,8                            // coverage
    learnset MOVE_GROWTH,11         // status
    learnset MOVE_MEGA_DRAIN,13              // stab
    learnset MOVE_LEECH_SEED,16     // status
    learnset MOVE_MAGICAL_LEAF,20            // stab
    learnset MOVE_SLAM,22                           // coverage
    learnset MOVE_SYNTHESIS,25      // status
    learnset MOVE_GRASS_KNOT,28              // stab
    learnset MOVE_TWISTER,30                        // coverage
    learnset MOVE_MAGNITUDE,34                      // coverage
    learnset MOVE_DRAGON_DANCE,37   // status
    learnset MOVE_LEAF_TORNADO,40           // stab
    learnset MOVE_DRAGON_TAIL,44                    // coverage
    terminatelearnset

levelup SPECIES_SERPERIOR
    learnset MOVE_DRAGON_PULSE,0                    // coverage
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_LEER,3            // status
    learnset MOVE_VINE_WHIP,5                // stab
    learnset MOVE_WRAP,8                            // coverage
    learnset MOVE_GROWTH,11         // status
    learnset MOVE_MEGA_DRAIN,13              // stab
    learnset MOVE_LEECH_SEED,16     // status
    learnset MOVE_MAGICAL_LEAF,20            // stab
    learnset MOVE_SLAM,22                           // coverage
    learnset MOVE_SYNTHESIS,25      // status
    learnset MOVE_GRASS_KNOT,28              // stab
    learnset MOVE_TWISTER,30                        // coverage
    learnset MOVE_MAGNITUDE,34                      // coverage
    learnset MOVE_DRAGON_DANCE,37   // status
    learnset MOVE_LEAF_TORNADO,40           // stab
    learnset MOVE_STRENGTH_SAP,45   // status
    learnset MOVE_SOLAR_BEAM,49             // stab
    learnset MOVE_IRON_TAIL,53                      // coverage
    learnset MOVE_LEAF_BLADE,57             // stab
    learnset MOVE_EARTHQUAKE,59                     // coverage
    learnset MOVE_COIL,62           // status
    learnset MOVE_LEAF_STORM,65             // stab
    learnset MOVE_AROMATHERAPY,68   // status
    learnset MOVE_DRACO_METEOR,73                   // coverage
    terminatelearnset


levelup SPECIES_TEPIG
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_TAIL_WHIP,3       // status
    learnset MOVE_EMBER,5                   // stab
    learnset MOVE_SMOG,8                            // coverage
    learnset MOVE_DETECT,11         // status
    learnset MOVE_FLAME_CHARGE,13           // stab
    learnset MOVE_ROLLOUT,16                        // coverage
    learnset MOVE_BRICK_BREAK,20                    // coverage
    terminatelearnset
 

levelup SPECIES_PIGNITE
    learnset MOVE_HEAT_CRASH,0              // stab
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_TAIL_WHIP,3       // status
    learnset MOVE_EMBER,5                   // stab
    learnset MOVE_SMOG,8                            // coverage
    learnset MOVE_DETECT,11         // status
    learnset MOVE_FLAME_CHARGE,13           // stab
    learnset MOVE_ROLLOUT,16                        // coverage
    learnset MOVE_FLAME_WHEEL,20            // stab
    learnset MOVE_BODY_SLAM,22                      // coverage
    learnset MOVE_BULK_UP,25        // status
    learnset MOVE_MACH_PUNCH,28             // stab
    learnset MOVE_FIRE_FANG,30              // stab
    learnset MOVE_MAGNITUDE,34                      // coverage
    learnset MOVE_HAMMER_ARM,37             // stab
    learnset MOVE_SUCKER_PUNCH,40                   // coverage
    learnset MOVE_BRICK_BREAK,45            // stab
    terminatelearnset


levelup SPECIES_EMBOAR
    learnset MOVE_HEAT_CRASH,0              // stab
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_TAIL_WHIP,3       // status
    learnset MOVE_EMBER,5                   // stab
    learnset MOVE_SMOG,8                            // coverage
    learnset MOVE_DETECT,11         // status
    learnset MOVE_FLAME_CHARGE,13           // stab
    learnset MOVE_ROLLOUT,16                        // coverage
    learnset MOVE_FLAME_WHEEL,20            // stab
    learnset MOVE_BODY_SLAM,22                      // coverage
    learnset MOVE_BULK_UP,25        // status
    learnset MOVE_MACH_PUNCH,28             // stab
    learnset MOVE_FIRE_FANG,30              // stab
    learnset MOVE_MAGNITUDE,34                      // coverage
    learnset MOVE_HAMMER_ARM,37             // stab
    learnset MOVE_SUCKER_PUNCH,40                   // coverage
    learnset MOVE_WILL_O_WISP,45    // status
    learnset MOVE_FIRE_BLAST,49             // stab
    learnset MOVE_DRAIN_PUNCH,53            // stab
    learnset MOVE_ROAR,57           // status
    learnset MOVE_SUPERCELL_SLAM,59                 // coverage
    learnset MOVE_SWORDS_DANCE,62   // status
    learnset MOVE_FLARE_BLITZ,65            // stab
    learnset MOVE_HEAD_SMASH,68                     // coverage
    learnset MOVE_CLOSE_COMBAT,73           // stab
    terminatelearnset
    

levelup SPECIES_OSHAWOTT          
    learnset MOVE_TACKLE,1                       
    learnset MOVE_TAIL_WHIP,3       
    learnset MOVE_WATER_GUN,5                 
    learnset MOVE_WATER_SPORT,8                     
    learnset MOVE_FURY_CUTTER,11        
    learnset MOVE_AQUA_JET,13          
    learnset MOVE_FOCUS_ENERGY,16                    
    learnset MOVE_WHIRLPOOL,20           
    terminatelearnset    
        
levelup SPECIES_DEWOTT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_WATER_SPORT, 11
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_RAZOR_SHELL, 18
    learnset MOVE_FURY_CUTTER, 21
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_REVENGE, 29
    learnset MOVE_AQUA_JET, 34
    learnset MOVE_ENCORE, 37
    learnset MOVE_AQUA_TAIL, 42
    learnset MOVE_RETALIATE, 45
    learnset MOVE_SWORDS_DANCE, 50
    learnset MOVE_HYDRO_PUMP, 53
    terminatelearnset

 levelup SPECIES_SAMUROTT
    learnset MOVE_SACRED_SWORD,0              
    learnset MOVE_TACKLE,1                       
    learnset MOVE_TAIL_WHIP,3       
    learnset MOVE_WATER_GUN,5                 
    learnset MOVE_WATER_SPORT,8                     
    learnset MOVE_FURY_CUTTER,11        
    learnset MOVE_AQUA_JET,13          
    learnset MOVE_FOCUS_ENERGY,16                    
    learnset MOVE_RAZOR_SHELL,20           
    learnset MOVE_REVENGE,22                     
    learnset MOVE_SLASH,25        
    learnset MOVE_ENCORE,28            
    learnset MOVE_AERIAL_ACE,30              
    learnset MOVE_FLIP_TURN,34                
    learnset MOVE_AQUA_TAIL,37            
    learnset MOVE_AIR_SLASH,40             
    learnset MOVE_SCALD,45   
    learnset MOVE_DETECT,49            
    learnset MOVE_ICE_BEAM,53      
    learnset MOVE_ROAR,57        
    learnset MOVE_LIQUIDATION,59   
    learnset MOVE_SWORDS_DANCE,62   
    learnset MOVE_HYDRO_PUMP,65           
    learnset MOVE_MEGAHORN,68                    
    learnset MOVE_WAVE_CRASH,73 
    terminatelearnset  


levelup SPECIES_PATRAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 4
    learnset MOVE_BIDE, 7
    learnset MOVE_DETECT, 10
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_PAYBACK, 16
    learnset MOVE_HYPNOSIS, 18
    learnset MOVE_SUPER_FANG, 21
    learnset MOVE_AFTER_YOU, 24
    learnset MOVE_HEADBUTT, 27
    learnset MOVE_WORK_UP, 30
    learnset MOVE_REVENGE, 33
    learnset MOVE_MEAN_LOOK, 36
    learnset MOVE_SUCKER_PUNCH, 39
    learnset MOVE_HYPER_FANG, 42
    learnset MOVE_BATON_PASS, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_RETURN, 51
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_ENDEAVOR, 60
    learnset MOVE_IRON_TAIL, 63
    learnset MOVE_FOCUS_BLAST, 66
    learnset MOVE_GUNK_SHOT, 69
    learnset MOVE_LAST_RESORT, 72
    terminatelearnset

levelup SPECIES_WATCHOG
    learnset MOVE_CONFUSE_RAY, 0
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 5
    learnset MOVE_BIDE, 8
    learnset MOVE_DETECT, 11
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_PAYBACK, 17
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_SUPER_FANG, 22
    learnset MOVE_AFTER_YOU, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_WORK_UP, 31
    learnset MOVE_REVENGE, 34
    learnset MOVE_MEAN_LOOK, 37
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_HYPER_FANG, 43
    learnset MOVE_BATON_PASS, 46
    learnset MOVE_PLAY_ROUGH, 49
    learnset MOVE_RETURN, 52
    learnset MOVE_TAKE_DOWN, 55
    learnset MOVE_NASTY_PLOT, 58
    learnset MOVE_ENDEAVOR, 61
    learnset MOVE_IRON_TAIL, 64
    learnset MOVE_FOCUS_BLAST, 67
    learnset MOVE_GUNK_SHOT, 70
    learnset MOVE_LAST_RESORT, 73
    terminatelearnset


levelup SPECIES_LILLIPUP
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WORK_UP, 4
    learnset MOVE_BITE, 7
    learnset MOVE_COVET, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_PAYBACK, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_RETALIATE, 21
    learnset MOVE_HELPING_HAND, 24
    learnset MOVE_STOMPING_TANTRUM, 27
    learnset MOVE_ROAR, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_HELPING_HAND, 36
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_LAST_RESORT, 45
    learnset MOVE_GIGA_IMPACT, 48
    terminatelearnset


levelup SPECIES_HERDIER
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WORK_UP, 5
    learnset MOVE_BITE, 8
    learnset MOVE_COVET, 11
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_PAYBACK, 17
    learnset MOVE_BULLDOZE, 19
    learnset MOVE_RETALIATE, 22
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_ROAR, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_HELPING_HAND, 37
    learnset MOVE_PSYCHIC_FANGS, 40
    learnset MOVE_TAKE_DOWN, 43
    learnset MOVE_LAST_RESORT, 46
    learnset MOVE_GIGA_IMPACT, 49
    terminatelearnset


levelup SPECIES_STOUTLAND
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WORK_UP, 6
    learnset MOVE_BITE, 9
    learnset MOVE_COVET, 12
    learnset MOVE_BABY_DOLL_EYES, 15
    learnset MOVE_PAYBACK, 18
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_RETALIATE, 23
    learnset MOVE_HELPING_HAND, 26
    learnset MOVE_STOMPING_TANTRUM, 29
    learnset MOVE_ROAR, 32
    learnset MOVE_FIRE_FANG, 33
    learnset MOVE_ICE_FANG, 33
    learnset MOVE_THUNDER_FANG, 33
    learnset MOVE_CRUNCH, 35
    learnset MOVE_HELPING_HAND, 38
    learnset MOVE_PSYCHIC_FANGS, 41
    learnset MOVE_TAKE_DOWN, 44
    learnset MOVE_BODY_SLAM, 47
    learnset MOVE_IRON_HEAD, 50
    learnset MOVE_WILD_CHARGE, 53
    learnset MOVE_ENDURE, 56
    learnset MOVE_REVERSAL, 59
    learnset MOVE_LAST_RESORT, 62
    learnset MOVE_SUPERPOWER, 65
    learnset MOVE_GIGA_IMPACT, 68
    terminatelearnset


levelup SPECIES_PURRLOIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_SAND_ATTACK, 6
    learnset MOVE_ASSIST, 6
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_PURSUIT, 15
    learnset MOVE_TORMENT, 17
    learnset MOVE_ASSURANCE, 24
    learnset MOVE_HONE_CLAWS, 24
    learnset MOVE_SLASH, 30
    learnset MOVE_CAPTIVATE, 33
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_NASTY_PLOT, 36
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_SNATCH, 39
    learnset MOVE_PLAY_ROUGH, 44
    terminatelearnset


levelup SPECIES_LIEPARD
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_ASSIST, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ASSIST, 6
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_PURSUIT, 15
    learnset MOVE_TORMENT, 17
    learnset MOVE_FAKE_OUT, 22
    learnset MOVE_ASSURANCE, 26
    learnset MOVE_HONE_CLAWS, 27
    learnset MOVE_SLASH, 34
    learnset MOVE_TAUNT, 38
    learnset MOVE_SUCKER_PUNCH, 43
    learnset MOVE_NASTY_PLOT, 44
    learnset MOVE_NIGHT_SLASH, 44
    learnset MOVE_SNATCH, 47
    learnset MOVE_PLAY_ROUGH, 54
    terminatelearnset


levelup SPECIES_PANSAGE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_COVET, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_LOW_SWEEP, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_NATURAL_GIFT, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_ENERGY_BALL, 44
    learnset MOVE_LEAF_BLADE, 48
    learnset MOVE_PETAL_DANCE, 53
    terminatelearnset


levelup SPECIES_SIMISAGE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_COVET, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_LOW_SWEEP, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_KNOCK_OFF, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_LEAF_BLADE, 54
    learnset MOVE_IRON_TAIL, 58
    learnset MOVE_PETAL_DANCE, 63
    learnset MOVE_SUPERPOWER, 67
    terminatelearnset


levelup SPECIES_PANSEAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_EMBER, 10
    learnset MOVE_COVET, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    learnset MOVE_INCINERATE, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_LAVA_PLUME, 34
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_NATURAL_GIFT, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_FLAMETHROWER, 44
    learnset MOVE_FIRE_PUNCH, 48
    learnset MOVE_FIRE_BLAST, 53
    terminatelearnset


levelup SPECIES_SIMISEAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_EMBER, 10
    learnset MOVE_COVET, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    learnset MOVE_INCINERATE, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_LAVA_PLUME, 34
    learnset MOVE_KNOCK_OFF, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_FIRE_PUNCH, 54
    learnset MOVE_IRON_TAIL, 58
    learnset MOVE_FIRE_BLAST, 63
    learnset MOVE_SUPERPOWER, 67
    terminatelearnset


levelup SPECIES_PANPOUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_COVET, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_ICY_WIND, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_SCALD, 34
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_NATURAL_GIFT, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_MUDDY_WATER, 44
    learnset MOVE_LIQUIDATION, 48
    learnset MOVE_HYDRO_PUMP, 53
    terminatelearnset


levelup SPECIES_SIMIPOUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_COVET, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_ICY_WIND, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_SCALD, 34
    learnset MOVE_KNOCK_OFF, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_MUDDY_WATER, 48
    learnset MOVE_LIQUIDATION, 54
    learnset MOVE_IRON_TAIL, 58
    learnset MOVE_HYDRO_PUMP, 63
    learnset MOVE_SUPERPOWER, 67
    terminatelearnset


levelup SPECIES_MUNNA
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_LUCKY_CHANT, 7
    learnset MOVE_PSYBEAM, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_MOONLIGHT, 18
    learnset MOVE_YAWN, 21
    learnset MOVE_ZEN_HEADBUTT, 24
    learnset MOVE_NIGHTMARE, 27
    learnset MOVE_CALM_MIND, 30
    learnset MOVE_PLAY_ROUGH, 33
    learnset MOVE_SKILL_SWAP, 36
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_PSYSHOCK, 45
    learnset MOVE_IMPRISON, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_POWER_GEM, 54
    learnset MOVE_HEALING_WISH, 57
    learnset MOVE_DREAM_EATER, 60
    learnset MOVE_TRICK_ROOM, 63
    learnset MOVE_WONDER_ROOM, 66
    learnset MOVE_FUTURE_SIGHT, 69
    terminatelearnset


levelup SPECIES_MUSHARNA
    learnset MOVE_PSYCHIC_TERRAIN, 1
    learnset MOVE_TELEKINESIS, 1
    learnset MOVE_EXPANDING_FORCE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_LUCKY_CHANT, 8
    learnset MOVE_PSYBEAM, 11
    learnset MOVE_HYPNOSIS, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_MOONLIGHT, 19
    learnset MOVE_YAWN, 22
    learnset MOVE_ZEN_HEADBUTT, 25
    learnset MOVE_NIGHTMARE, 28
    learnset MOVE_CALM_MIND, 31
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_SKILL_SWAP, 37
    learnset MOVE_DAZZLING_GLEAM, 40
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_PSYSHOCK, 46
    learnset MOVE_IMPRISON, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_POWER_GEM, 55
    learnset MOVE_HEALING_WISH, 58
    learnset MOVE_DREAM_EATER, 61
    learnset MOVE_TRICK_ROOM, 64
    learnset MOVE_WONDER_ROOM, 67
    learnset MOVE_FUTURE_SIGHT, 70
    terminatelearnset


levelup SPECIES_PIDOVE
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_TAUNT, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_SWAGGER, 18
    learnset MOVE_STEEL_WING, 21
    learnset MOVE_DETECT, 24
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_SECRET_POWER, 33
    learnset MOVE_FEATHER_DANCE, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_TAILWIND, 45
    learnset MOVE_LEAF_BLADE, 48
    learnset MOVE_HURRICANE, 51
    learnset MOVE_HEAT_WAVE, 54
    learnset MOVE_HYPER_VOICE, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_BRAVE_BIRD, 63
    learnset MOVE_SKY_ATTACK, 66
    terminatelearnset


levelup SPECIES_TRANQUILL
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_TAUNT, 11
    learnset MOVE_SWIFT, 14
    learnset MOVE_AERIAL_ACE, 17
    learnset MOVE_SWAGGER, 19
    learnset MOVE_STEEL_WING, 22
    learnset MOVE_DETECT, 25
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_ROOST, 31
    learnset MOVE_SECRET_POWER, 34
    learnset MOVE_FEATHER_DANCE, 37
    learnset MOVE_U_TURN, 40
    learnset MOVE_DUAL_WINGBEAT, 43
    learnset MOVE_TAILWIND, 46
    learnset MOVE_LEAF_BLADE, 49
    learnset MOVE_HURRICANE, 52
    learnset MOVE_HEAT_WAVE, 55
    learnset MOVE_HYPER_VOICE, 58
    learnset MOVE_DOUBLE_EDGE, 61
    learnset MOVE_BRAVE_BIRD, 64
    learnset MOVE_SKY_ATTACK, 67
    terminatelearnset


levelup SPECIES_UNFEZANT
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 6
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_TAUNT, 12
    learnset MOVE_SWIFT, 15
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_SWAGGER, 20
    learnset MOVE_STEEL_WING, 23
    learnset MOVE_DETECT, 26
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_ROOST, 32
    learnset MOVE_SECRET_POWER, 35
    learnset MOVE_FEATHER_DANCE, 38
    learnset MOVE_U_TURN, 41
    learnset MOVE_DUAL_WINGBEAT, 44
    learnset MOVE_TAILWIND, 47
    learnset MOVE_LEAF_BLADE, 50
    learnset MOVE_HURRICANE, 53
    learnset MOVE_HEAT_WAVE, 56
    learnset MOVE_HYPER_VOICE, 59
    learnset MOVE_DOUBLE_EDGE, 62
    learnset MOVE_BRAVE_BIRD, 65
    learnset MOVE_SKY_ATTACK, 68
    terminatelearnset


levelup SPECIES_BLITZLE
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_CHARGE, 10
    learnset MOVE_FLAME_CHARGE, 13
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_PURSUIT, 18
    learnset MOVE_SCREECH, 21
    learnset MOVE_SMART_STRIKE, 24
    learnset MOVE_SPARK, 27
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_AGILITY, 33
    learnset MOVE_VOLT_SWITCH, 36
    learnset MOVE_BLAZE_KICK, 39
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_BOUNCE, 45
    learnset MOVE_TAUNT, 48
    learnset MOVE_HIGH_HORSEPOWER, 51
    learnset MOVE_SUPERCELL_SLAM, 54
    learnset MOVE_HELPING_HAND, 57
    learnset MOVE_FLARE_BLITZ, 60
    learnset MOVE_VOLT_TACKLE, 64
    terminatelearnset


levelup SPECIES_ZEBSTRIKA
    learnset MOVE_ION_DELUGE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_CHARGE, 11
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_SHOCK_WAVE, 17
    learnset MOVE_PURSUIT, 19
    learnset MOVE_SCREECH, 22
    learnset MOVE_SMART_STRIKE, 25
    learnset MOVE_SPARK, 28
    learnset MOVE_NIGHT_SLASH, 31
    learnset MOVE_AGILITY, 34
    learnset MOVE_VOLT_SWITCH, 37
    learnset MOVE_BLAZE_KICK, 40
    learnset MOVE_WILD_CHARGE, 43
    learnset MOVE_BOUNCE, 46
    learnset MOVE_TAUNT, 49
    learnset MOVE_HIGH_HORSEPOWER, 52
    learnset MOVE_SUPERCELL_SLAM, 55
    learnset MOVE_HELPING_HAND, 58
    learnset MOVE_FLARE_BLITZ, 61
    learnset MOVE_VOLT_TACKLE, 65
    terminatelearnset


levelup SPECIES_ROGGENROLA
    learnset MOVE_HARDEN,1
    learnset MOVE_SAND_ATTACK,1
    learnset MOVE_TACKLE,1
    learnset MOVE_MUD_SLAP,6
    learnset MOVE_STEALTH_ROCK,10
    learnset MOVE_SMACK_DOWN,13
    learnset MOVE_IRON_DEFENSE,15
    learnset MOVE_MUD_SPORT,18
    learnset MOVE_HEADBUTT,21
    learnset MOVE_ROCK_BLAST,24
    learnset MOVE_MAGNITUDE,27
    learnset MOVE_GRAVITY,29
    learnset MOVE_ROCK_TOMB,30
    learnset MOVE_TAKE_DOWN,32
    learnset MOVE_ROCK_POLISH,34
    learnset MOVE_ROCK_SLIDE,37
    learnset MOVE_EXPLOSION,44
    terminatelearnset


levelup SPECIES_BOLDORE
    learnset MOVE_HARDEN,1
    learnset MOVE_SAND_ATTACK,1
    learnset MOVE_TACKLE,1
    learnset MOVE_MUD_SLAP,7
    learnset MOVE_STEALTH_ROCK,12
    learnset MOVE_SMACK_DOWN,15
    learnset MOVE_IRON_DEFENSE,18
    learnset MOVE_MUD_SPORT,20
    learnset MOVE_HEADBUTT,24
    learnset MOVE_ROCK_BLAST,28
    learnset MOVE_MAGNITUDE,32
    learnset MOVE_GRAVITY,34
    learnset MOVE_ROCK_TOMB,36
    learnset MOVE_TAKE_DOWN,38
    learnset MOVE_ROCK_SLIDE,40
    learnset MOVE_ROCK_POLISH,42
    learnset MOVE_WIDE_GUARD,44
    learnset MOVE_POWER_GEM,48
    learnset MOVE_AUTOTOMIZE,52
    learnset MOVE_HEAVY_SLAM,55
    learnset MOVE_STONE_EDGE,58
    learnset MOVE_EARTHQUAKE,60
    learnset MOVE_STOMP,62
    learnset MOVE_EXPLOSION,64
    learnset MOVE_ROCK_WRECKER,67
    terminatelearnset


levelup SPECIES_GIGALITH
    learnset MOVE_HARDEN,1
    learnset MOVE_SAND_ATTACK,1
    learnset MOVE_TACKLE,1
    learnset MOVE_MUD_SLAP,7
    learnset MOVE_STEALTH_ROCK,12
    learnset MOVE_SMACK_DOWN,15
    learnset MOVE_IRON_DEFENSE,18
    learnset MOVE_MUD_SPORT,20
    learnset MOVE_HEADBUTT,24
    learnset MOVE_ROCK_BLAST,28
    learnset MOVE_MAGNITUDE,32
    learnset MOVE_GRAVITY,34
    learnset MOVE_ROCK_TOMB,38
    learnset MOVE_TAKE_DOWN,40
    learnset MOVE_ROCK_SLIDE,44
    learnset MOVE_LASER_FOCUS,46
    learnset MOVE_WIDE_GUARD,48
    learnset MOVE_POWER_GEM,52
    learnset MOVE_AUTOTOMIZE,56
    learnset MOVE_HEAVY_SLAM,58
    learnset MOVE_STONE_EDGE,60
    learnset MOVE_EARTHQUAKE,62
    learnset MOVE_STOMP,64
    learnset MOVE_EXPLOSION,67
    learnset MOVE_ROCK_WRECKER,70
    terminatelearnset


levelup SPECIES_WOOBAT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ATTRACT, 1
    learnset MOVE_GUST, 4
    learnset MOVE_FLATTER, 7
    learnset MOVE_ENDEAVOR, 10
    learnset MOVE_HEART_STAMP, 13
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_IMPRISON, 21
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_AMNESIA, 30
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_SIMPLE_BEAM, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_CALM_MIND, 45
    learnset MOVE_DAZZLING_GLEAM, 48
    learnset MOVE_ROOST, 51
    learnset MOVE_HEAT_WAVE, 54
    learnset MOVE_HURRICANE, 57
    learnset MOVE_FUTURE_SIGHT, 60
    terminatelearnset


levelup SPECIES_SWOOBAT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ATTRACT, 1
    learnset MOVE_GUST, 5
    learnset MOVE_FLATTER, 8
    learnset MOVE_ENDEAVOR, 11
    learnset MOVE_HEART_STAMP, 14
    learnset MOVE_AIR_CUTTER, 17
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_IMPRISON, 22
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_AMNESIA, 31
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_SIMPLE_BEAM, 37
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_CALM_MIND, 46
    learnset MOVE_DAZZLING_GLEAM, 49
    learnset MOVE_ROOST, 52
    learnset MOVE_HEAT_WAVE, 55
    learnset MOVE_HURRICANE, 58
    learnset MOVE_FUTURE_SIGHT, 61
    terminatelearnset


levelup SPECIES_DRILBUR
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_MUD_SPORT, 9
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_CUT, 15
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_FLING, 27
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_SMART_STRIKE, 37
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_SWORDS_DANCE, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_DIG, 48
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_X_SCISSOR, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_SLUDGE_BOMB, 63
    learnset MOVE_GUILLOTINE, 66
    learnset MOVE_FISSURE, 69
    terminatelearnset


levelup SPECIES_EXCADRILL
    learnset MOVE_HORN_DRILL, 0
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_MUD_SPORT, 9
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_CUT, 15
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_FLING, 27
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_SCORCHING_SANDS, 33
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_SMART_STRIKE, 39
    learnset MOVE_SWORDS_DANCE, 42
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_DIG, 48
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_X_SCISSOR, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_HORN_DRILL, 60
    learnset MOVE_SLUDGE_BOMB, 63
    learnset MOVE_GUILLOTINE, 66
    learnset MOVE_FISSURE, 69
    learnset MOVE_SANDSTORM, 74
    terminatelearnset


levelup SPECIES_AUDINO
    learnset MOVE_POUND, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_YAWN, 7
    learnset MOVE_BABY_DOLL_EYES, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_GROWL, 16
    learnset MOVE_DOUBLE_SLAP, 18
    learnset MOVE_ZEN_HEADBUTT, 21
    learnset MOVE_LIFE_DEW, 24
    learnset MOVE_AFTER_YOU, 27
    learnset MOVE_WISH, 30
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_SIMPLE_BEAM, 36
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_HEAL_PULSE, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_ENTRAINMENT, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_MISTY_TERRAIN, 57
    learnset MOVE_BOOMBURST, 60
    terminatelearnset


levelup SPECIES_TIMBURR
    learnset MOVE_LOW_KICK,1
    learnset MOVE_LEER,1
    learnset MOVE_POUND,1
    learnset MOVE_ROCK_THROW,6
    learnset MOVE_FOCUS_ENERGY,10
    learnset MOVE_WAKE_UP_SLAP,13
    learnset MOVE_BULK_UP,15
    learnset MOVE_NEEDLE_ARM,18
    learnset MOVE_FORCE_PALM,21
    learnset MOVE_COUNTER,24
    learnset MOVE_ROCK_SLIDE,27
    learnset MOVE_PAYBACK,29
    learnset MOVE_MACH_PUNCH,30
    learnset MOVE_TAKE_DOWN,32
    learnset MOVE_BRICK_BREAK,34
    learnset MOVE_FLING,37
    learnset MOVE_FOCUS_PUNCH,44
    terminatelearnset


levelup SPECIES_GURDURR
    learnset MOVE_IRON_HEAD,0
    learnset MOVE_LOW_KICK,1
    learnset MOVE_LEER,1
    learnset MOVE_POUND,1
    learnset MOVE_ROCK_THROW,7
    learnset MOVE_FOCUS_ENERGY,12
    learnset MOVE_WAKE_UP_SLAP,15
    learnset MOVE_BULK_UP,18
    learnset MOVE_FORCE_PALM,24
    learnset MOVE_COUNTER,28
    learnset MOVE_ROCK_SLIDE,32
    learnset MOVE_PAYBACK,34
    learnset MOVE_MACH_PUNCH,36
    learnset MOVE_TAKE_DOWN,38
    learnset MOVE_BRICK_BREAK,40
    learnset MOVE_FLING,42
    learnset MOVE_ICE_PUNCH,44
    learnset MOVE_DRAIN_PUNCH,48
    learnset MOVE_SWORDS_DANCE,52
    learnset MOVE_WIDE_GUARD,55
    learnset MOVE_HIGH_HORSEPOWER,58
    learnset MOVE_DYNAMIC_PUNCH,60
    learnset MOVE_SUPERPOWER,62
    learnset MOVE_FACADE,64
    learnset MOVE_CLOSE_COMBAT,67
    terminatelearnset


 levelup SPECIES_CONKELDURR
    learnset MOVE_STONE_EDGE,0
    learnset MOVE_LOW_KICK,1
    learnset MOVE_LEER,1
    learnset MOVE_POUND,1
    learnset MOVE_ROCK_THROW,7
    learnset MOVE_FOCUS_ENERGY,12
    learnset MOVE_WAKE_UP_SLAP,15
    learnset MOVE_BULK_UP,18
    learnset MOVE_FORCE_PALM,24
    learnset MOVE_COUNTER,28
    learnset MOVE_ROCK_SLIDE,32
    learnset MOVE_PAYBACK,34
    learnset MOVE_MACH_PUNCH,38
    learnset MOVE_TAKE_DOWN,40
    learnset MOVE_BRICK_BREAK,44
    learnset MOVE_FLING,46
    learnset MOVE_ICE_PUNCH,48
    learnset MOVE_DRAIN_PUNCH,52
    learnset MOVE_SWORDS_DANCE,56
    learnset MOVE_WIDE_GUARD,58
    learnset MOVE_HIGH_HORSEPOWER,60
    learnset MOVE_DYNAMIC_PUNCH,62
    learnset MOVE_SUPERPOWER,64
    learnset MOVE_FACADE,67
    learnset MOVE_CLOSE_COMBAT,70
    terminatelearnset


levelup SPECIES_TYMPOLE
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_ACID, 7
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_ROUND, 13
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_MIST, 18
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_UPROAR, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_HYPER_VOICE, 39
    learnset MOVE_TOXIC, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_PALPITOAD
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_ACID, 8
    learnset MOVE_SUPERSONIC, 11
    learnset MOVE_ROUND, 14
    learnset MOVE_MUD_SHOT, 17
    learnset MOVE_MIST, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_UPROAR, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_RAIN_DANCE, 37
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_TOXIC, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_HYDRO_PUMP, 49
    terminatelearnset


levelup SPECIES_SEISMITOAD
    learnset MOVE_DRAIN_PUNCH, 0
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_GASTRO_ACID, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_ACID, 8
    learnset MOVE_SUPERSONIC, 11
    learnset MOVE_ROUND, 14
    learnset MOVE_MUD_SHOT, 17
    learnset MOVE_MIST, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_UPROAR, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_RAIN_DANCE, 37
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_TOXIC, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_POISON_JAB, 49
    learnset MOVE_SCALD, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_POWER_WHIP, 58
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_EARTHQUAKE, 64
    learnset MOVE_GUNK_SHOT, 67
    terminatelearnset


levelup SPECIES_THROH
    learnset MOVE_BIND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_REVENGE, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_WIDE_GUARD, 21
    learnset MOVE_VITAL_THROW, 24
    learnset MOVE_BULK_UP, 27
    learnset MOVE_STORM_THROW, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_ENDURE, 36
    learnset MOVE_REVERSAL, 39
    learnset MOVE_STOMPING_TANTRUM, 42
    learnset MOVE_BRICK_BREAK, 45
    learnset MOVE_POISON_JAB, 48
    learnset MOVE_SLACK_OFF, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_ZEN_HEADBUTT, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_MAT_BLOCK, 63
    learnset MOVE_SUPERPOWER, 66
    terminatelearnset


levelup SPECIES_SAWK
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_MACH_PUNCH, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_LOW_KICK, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_QUICK_GUARD, 21
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_BULK_UP, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_ENDURE, 36
    learnset MOVE_REVERSAL, 39
    learnset MOVE_BULLDOZE, 42
    learnset MOVE_BRICK_BREAK, 45
    learnset MOVE_POISON_JAB, 48
    learnset MOVE_BULK_UP, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_ZEN_HEADBUTT, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_HELPING_HAND, 63
    learnset MOVE_CLOSE_COMBAT, 66
    terminatelearnset


levelup SPECIES_SEWADDLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_RAZOR_LEAF, 7
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_ENDURE, 13
    learnset MOVE_STICKY_WEB, 16
    learnset MOVE_BUG_BUZZ, 18
    learnset MOVE_FLAIL, 21
    terminatelearnset


levelup SPECIES_SWADLOON
    learnset MOVE_PROTECT, 0
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_RAZOR_LEAF, 7
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_ENDURE, 13
    learnset MOVE_STICKY_WEB, 16
    learnset MOVE_BUG_BUZZ, 18
    learnset MOVE_FLAIL, 21
    learnset MOVE_GRASS_WHISTLE, 24
    terminatelearnset


levelup SPECIES_LEAVANNY
    learnset MOVE_SLASH, 0
    learnset MOVE_SLASH, 1
    learnset MOVE_PROTECT, 0
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_RAZOR_LEAF, 7
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_ENDURE, 13
    learnset MOVE_STICKY_WEB, 16
    learnset MOVE_BUG_BUZZ, 18
    learnset MOVE_FLAIL, 21
    learnset MOVE_GRASS_WHISTLE, 24
    learnset MOVE_FALSE_SWIPE, 27
    learnset MOVE_FELL_STINGER, 30
    learnset MOVE_HELPING_HAND, 33
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_BUG_BUZZ, 39
    learnset MOVE_ENTRAINMENT, 42
    learnset MOVE_LUNGE, 45
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_LEAF_BLADE, 51
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_LEAF_STORM, 57
    learnset MOVE_SOLAR_BLADE, 60
    terminatelearnset


levelup SPECIES_VENIPEDE
    learnset MOVE_POISON_STING,1                // stab
    learnset MOVE_DEFENSE_CURL,1        // status
    learnset MOVE_FURY_CUTTER,3                 //// stab
    learnset MOVE_ROLLOUT,5                             //// coverage
    learnset MOVE_POISON_TAIL,8                 //// stab
    learnset MOVE_ICE_BALL,12                           //// coverage
    learnset MOVE_BUG_BITE,15                   //// stab
    learnset MOVE_SCREECH,18            //// status
    learnset MOVE_FELL_STINGER,21               //// stab
    learnset MOVE_SLAM,24                          //// coverage
    learnset MOVE_CROSS_POISON,29                  //// stab
    learnset MOVE_ROCK_SLIDE,33                         //// coverage  
    learnset MOVE_PROTECT,38            //// status
    terminatelearnset


levelup SPECIES_WHIRLIPEDE
    learnset MOVE_AGILITY,0             // status
    learnset MOVE_POISON_STING,1                // stab
    learnset MOVE_DEFENSE_CURL,1        // status
    learnset MOVE_FURY_CUTTER,3                 // stab
    learnset MOVE_ROLLOUT,5                             // coverage
    learnset MOVE_POISON_TAIL,8                 // stab
    learnset MOVE_ICE_BALL,12                           // coverage
    learnset MOVE_BUG_BITE,15                   // stab
    learnset MOVE_SCREECH,18            // status
    learnset MOVE_FELL_STINGER,21               // stab
    learnset MOVE_BODY_SLAM,24                          // coverage
    learnset MOVE_CROSS_POISON,29                  // stab
    learnset MOVE_ROCK_SLIDE,33                         // coverage  
    learnset MOVE_PROTECT,38            // status
    learnset MOVE_AQUA_TAIL,42                          // coverage   
    learnset MOVE_U_TURN,46                     // stab
    learnset MOVE_SUCKER_PUNCH,49                       // coverage
    learnset MOVE_POISON_JAB,53                 // stab
    learnset MOVE_TOXIC_SPIKES,56       // status
    terminatelearnset
    

levelup SPECIES_SCOLIPEDE
    learnset MOVE_IRON_DEFENSE,0       // status
    learnset MOVE_POISON_STING,1                // stab
    learnset MOVE_DEFENSE_CURL,1        // status
    learnset MOVE_FURY_CUTTER,3                 // stab
    learnset MOVE_ROLLOUT,5                             // coverage
    learnset MOVE_POISON_TAIL,8                 // stab
    learnset MOVE_ICE_BALL,12                           // coverage
    learnset MOVE_BUG_BITE,15                   // stab
    learnset MOVE_SCREECH,18            // status
    learnset MOVE_FELL_STINGER,21               // stab
    learnset MOVE_BODY_SLAM,24                          // coverage
    learnset MOVE_CROSS_POISON,29                  // stab
    learnset MOVE_ROCK_SLIDE,33                         // coverage  
    learnset MOVE_PROTECT,38            // status
    learnset MOVE_AQUA_TAIL,42                          // coverage   
    learnset MOVE_U_TURN,46                     // stab
    learnset MOVE_SUCKER_PUNCH,49                       // coverage
    learnset MOVE_POISON_JAB,53                 // stab
    learnset MOVE_TOXIC_SPIKES,56       // status
    learnset MOVE_X_SCISSOR,57                  // stab
    learnset MOVE_EARTHQUAKE,60                         // coverage 
    learnset MOVE_FIRST_IMPRESSION,62           // stab
    learnset MOVE_STONE_EDGE,66                         // coverage
    learnset MOVE_GUNK_SHOT,70                  // stab
    learnset MOVE_MEGAHORN,72                  // stab
    terminatelearnset


levelup SPECIES_COTTONEE
    learnset MOVE_ABSORB, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_LEECH_SEED, 18
    learnset MOVE_POISON_POWDER, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_CHARM, 27
    learnset MOVE_GROWTH, 30
    learnset MOVE_HELPING_HAND, 33
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SUNNY_DAY, 39
    learnset MOVE_WEATHER_BALL, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_SOLAR_BEAM, 51
    terminatelearnset


levelup SPECIES_WHIMSICOTT
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_LEECH_SEED, 18
    learnset MOVE_POISON_POWDER, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_CHARM, 27
    learnset MOVE_GROWTH, 30
    learnset MOVE_HELPING_HAND, 33
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_SUNNY_DAY, 39
    learnset MOVE_WEATHER_BALL, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_TAILWIND, 51
    learnset MOVE_HURRICANE, 54
    learnset MOVE_SOLAR_BEAM, 57
    terminatelearnset


levelup SPECIES_PETILIL
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_TACKLE, 7
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_LEAFAGE, 16
    learnset MOVE_CHARM, 19
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_SLEEP_POWDER, 28
    learnset MOVE_ROUND, 31
    learnset MOVE_LEECH_SEED, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_SWEET_SCENT, 40
    learnset MOVE_ENERGY_BALL, 43
    learnset MOVE_AFTER_YOU, 46
    learnset MOVE_HYPER_VOICE, 49
    learnset MOVE_ENTRAINMENT, 52
    learnset MOVE_PETAL_BLIZZARD, 55
    learnset MOVE_SYNTHESIS, 58
    learnset MOVE_PETAL_DANCE, 61
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_SOLAR_BEAM, 67
    learnset MOVE_LEAF_STORM, 70
    terminatelearnset


levelup SPECIES_LILLIGANT
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_TACKLE, 7
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_LEAFAGE, 19
    learnset MOVE_CHARM, 22
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_RAZOR_LEAF, 28
    learnset MOVE_SLEEP_POWDER, 31
    learnset MOVE_ROUND, 34
    learnset MOVE_LEECH_SEED, 37
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_SWEET_SCENT, 43
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_AFTER_YOU, 49
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_ENTRAINMENT, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_SYNTHESIS, 61
    learnset MOVE_PETAL_DANCE, 64
    learnset MOVE_AROMATHERAPY, 67
    learnset MOVE_SOLAR_BEAM, 70
    learnset MOVE_LEAF_STORM, 73
    terminatelearnset


levelup SPECIES_BASCULIN

    learnset MOVE_WATER_GUN,1            //
    learnset MOVE_TAIL_WHIP,1            //
    learnset MOVE_TACKLE,4             //
    learnset MOVE_SOAK,6             //
    learnset MOVE_AQUA_JET,10             //
    learnset MOVE_SCARY_FACE,12             //
    learnset MOVE_BITE,14             //
    learnset MOVE_PLUCK,16             //
    learnset MOVE_FOCUS_ENERGY,19             //
    learnset MOVE_HEADBUTT,21             //
    learnset MOVE_AQUA_CUTTER,24             //
    learnset MOVE_CRUNCH,27             //
    learnset MOVE_AQUA_TAIL,29             //
    learnset MOVE_FINAL_GAMBIT,31            //
    learnset MOVE_SCALD,33             //
    learnset MOVE_ICE_FANG,36             //
    learnset MOVE_DIVE,38             //
    learnset MOVE_AGILITY,40             //
    learnset MOVE_DOUBLE_EDGE,46             //
    learnset MOVE_HEAD_SMASH,54             //
    learnset MOVE_WAVE_CRASH,62             //

    terminatelearnset


levelup SPECIES_SANDILE
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_LEER, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BITE, 13
    learnset MOVE_SAND_TOMB, 16
    learnset MOVE_RAGE, 19
    learnset MOVE_TORMENT, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_HONE_CLAWS, 30
    learnset MOVE_POWER_TRIP, 33
    learnset MOVE_POISON_FANG, 36
    learnset MOVE_MAGNITUDE, 39
    learnset MOVE_SWAGGER, 42
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_STOMPING_TANTRUM, 48
    learnset MOVE_SANDSTORM, 51
    learnset MOVE_NIGHT_SLASH, 54
    learnset MOVE_DIG, 57
    learnset MOVE_SUCKER_PUNCH, 60
    learnset MOVE_TAKE_DOWN, 63
    learnset MOVE_CRUNCH, 66
    learnset MOVE_EARTHQUAKE, 69
    learnset MOVE_FOUL_PLAY, 72
    terminatelearnset


levelup SPECIES_KROKOROK
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_LEER, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BITE, 13
    learnset MOVE_SAND_TOMB, 16
    learnset MOVE_RAGE, 19
    learnset MOVE_TORMENT, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_HONE_CLAWS, 31
    learnset MOVE_POWER_TRIP, 34
    learnset MOVE_POISON_FANG, 37
    learnset MOVE_MAGNITUDE, 40
    learnset MOVE_SWAGGER, 43
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_STOMPING_TANTRUM, 49
    learnset MOVE_SANDSTORM, 52
    learnset MOVE_DIG, 55
    learnset MOVE_SUCKER_PUNCH, 58
    learnset MOVE_TAKE_DOWN, 61
    learnset MOVE_CRUNCH, 64
    learnset MOVE_EARTHQUAKE, 67
    learnset MOVE_FOUL_PLAY, 70
    learnset MOVE_HEADLONG_RUSH, 73
    terminatelearnset


levelup SPECIES_KROOKODILE
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_THRASH, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_LEER, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BITE, 13
    learnset MOVE_SAND_TOMB, 16
    learnset MOVE_RAGE, 19
    learnset MOVE_TORMENT, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_HONE_CLAWS, 31
    learnset MOVE_POWER_TRIP, 34
    learnset MOVE_POISON_FANG, 37
    learnset MOVE_MAGNITUDE, 40
    learnset MOVE_SWAGGER, 43
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_STOMPING_TANTRUM, 49
    learnset MOVE_SANDSTORM, 52
    learnset MOVE_DIG, 55
    learnset MOVE_SUCKER_PUNCH, 58
    learnset MOVE_TAKE_DOWN, 61
    learnset MOVE_CRUNCH, 64
    learnset MOVE_EARTHQUAKE, 67
    learnset MOVE_FOUL_PLAY, 70
    learnset MOVE_HEADLONG_RUSH, 75
    terminatelearnset


levelup SPECIES_DARUMAKA
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_DEFENSE_CURL, 7
    learnset MOVE_RAGE, 10
    learnset MOVE_INCINERATE, 13
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_ROCK_SMASH, 22
    learnset MOVE_BITE, 25
    learnset MOVE_WORK_UP, 28
    learnset MOVE_FLAME_WHEEL, 31
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_FIRE_FANG, 37
    learnset MOVE_WAKE_UP_SLAP, 40
    learnset MOVE_FACADE, 43
    learnset MOVE_DRAIN_PUNCH, 46
    learnset MOVE_FIRE_PUNCH, 49
    learnset MOVE_BELLY_DRUM, 52
    learnset MOVE_BODY_SLAM, 55
    learnset MOVE_TAKE_DOWN, 58
    learnset MOVE_FLARE_BLITZ, 61
    learnset MOVE_THRASH, 64
    learnset MOVE_SUPERPOWER, 67
    learnset MOVE_OVERHEAT, 70
    terminatelearnset


levelup SPECIES_DARMANITAN
    learnset MOVE_POWER_UP_PUNCH, 0
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_STRENGTH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_DEFENSE_CURL, 7
    learnset MOVE_RAGE, 10
    learnset MOVE_INCINERATE, 13
    learnset MOVE_ROLLOUT, 16
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_ROCK_SMASH, 22
    learnset MOVE_BITE, 25
    learnset MOVE_WORK_UP, 28
    learnset MOVE_FLAME_WHEEL, 31
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_FIRE_FANG, 38
    learnset MOVE_WAKE_UP_SLAP, 41
    learnset MOVE_FACADE, 44
    learnset MOVE_DRAIN_PUNCH, 47
    learnset MOVE_FIRE_PUNCH, 50
    learnset MOVE_BELLY_DRUM, 53
    learnset MOVE_BODY_SLAM, 56
    learnset MOVE_TAKE_DOWN, 59
    learnset MOVE_FLARE_BLITZ, 62
    learnset MOVE_THRASH, 65
    learnset MOVE_SUPERPOWER, 68
    learnset MOVE_OVERHEAT, 71
    terminatelearnset


levelup SPECIES_MARACTUS
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_PECK, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_COTTON_GUARD, 1
    learnset MOVE_GROWTH, 4
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_LEECH_SEED, 12
    learnset MOVE_PIN_MISSILE, 15
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_NEEDLE_ARM, 22
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_COTTON_SPORE, 29
    learnset MOVE_INGRAIN, 33
    learnset MOVE_PETAL_BLIZZARD, 41
    learnset MOVE_ACUPRESSURE, 41
    learnset MOVE_SUNNY_DAY, 44
    learnset MOVE_PETAL_DANCE, 47
    learnset MOVE_SOLAR_BEAM, 48
    learnset MOVE_COTTON_GUARD, 57
    learnset MOVE_AFTER_YOU, 57
    terminatelearnset


levelup SPECIES_DWEBBLE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WITHDRAW, 4
    learnset MOVE_ROCK_BLAST, 7
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_SLASH, 21
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_STEALTH_ROCK, 27
    learnset MOVE_SPIKES, 27
    learnset MOVE_ROCK_POLISH, 30
    learnset MOVE_SKITTER_SMACK, 33
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_BODY_PRESS, 57
    learnset MOVE_POISON_JAB, 60
    learnset MOVE_ROCK_WRECKER, 63
    terminatelearnset


levelup SPECIES_CRUSTLE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WITHDRAW, 5
    learnset MOVE_ROCK_BLAST, 8
    learnset MOVE_FEINT_ATTACK, 11
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_ROCK_TOMB, 17
    learnset MOVE_BULLDOZE, 19
    learnset MOVE_SLASH, 22
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_SPIKES, 28
    learnset MOVE_ROCK_POLISH, 31
    learnset MOVE_SKITTER_SMACK, 34
    learnset MOVE_KNOCK_OFF, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_X_SCISSOR, 43
    learnset MOVE_SHELL_SMASH, 46
    learnset MOVE_COUNTER, 49
    learnset MOVE_STONE_EDGE, 52
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_BODY_PRESS, 58
    learnset MOVE_POISON_JAB, 61
    learnset MOVE_ROCK_WRECKER, 64
    terminatelearnset


levelup SPECIES_SCRAGGY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_DETECT, 13
    learnset MOVE_PAYBACK, 16
    learnset MOVE_LOW_SWEEP, 18
    learnset MOVE_TORMENT, 21
    learnset MOVE_BEAT_UP, 24
    learnset MOVE_HEADBUTT, 27
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_SWAGGER, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_BULK_UP, 48
    learnset MOVE_HIGH_JUMP_KICK, 51
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_DRAGON_DANCE, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_SCRAFTY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 5
    learnset MOVE_SAND_ATTACK, 8
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_DETECT, 14
    learnset MOVE_PAYBACK, 17
    learnset MOVE_LOW_SWEEP, 19
    learnset MOVE_TORMENT, 22
    learnset MOVE_BEAT_UP, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_SCARY_FACE, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_SWAGGER, 37
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_BULK_UP, 49
    learnset MOVE_HIGH_JUMP_KICK, 52
    learnset MOVE_ZEN_HEADBUTT, 55
    learnset MOVE_DRAGON_DANCE, 58
    learnset MOVE_GUNK_SHOT, 61
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_HEAD_SMASH, 67
    terminatelearnset


levelup SPECIES_SIGILYPH
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MIRACLE_EYE, 1
    learnset MOVE_HYPNOSIS, 7
    learnset MOVE_PSYWAVE, 8
    learnset MOVE_AIR_CUTTER, 17
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_WHIRLWIND, 19
    learnset MOVE_GRAVITY, 20
    learnset MOVE_TAILWIND, 29
    learnset MOVE_SYNCHRONOISE, 31
    learnset MOVE_MIRROR_MOVE, 34
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_LIGHT_SCREEN, 37
    learnset MOVE_COSMIC_POWER, 38
    learnset MOVE_REFLECT, 39
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_SKY_ATTACK, 52
    learnset MOVE_SKILL_SWAP, 60
    terminatelearnset


levelup SPECIES_YAMASK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 4
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_DISABLE, 10
    learnset MOVE_PAYBACK, 13
    learnset MOVE_OMINOUS_WIND, 16
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_HEX, 21
    learnset MOVE_CRAFTY_SHIELD, 24
    learnset MOVE_MEAN_LOOK, 27
    learnset MOVE_IMPRISON, 30
    learnset MOVE_CURSE, 33
    learnset MOVE_GRUDGE, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_POWER_SPLIT, 42
    learnset MOVE_GUARD_SPLIT, 42
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_DESTINY_BOND, 48
    learnset MOVE_ENERGY_BALL, 51
    learnset MOVE_TOXIC_SPIKES, 54
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_TRICK_ROOM, 60
    learnset MOVE_MEMENTO, 63
    terminatelearnset


levelup SPECIES_COFAGRIGUS
    learnset MOVE_SHADOW_CLAW, 0
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_DISABLE, 11
    learnset MOVE_PAYBACK, 14
    learnset MOVE_OMINOUS_WIND, 17
    learnset MOVE_WILL_O_WISP, 19
    learnset MOVE_HEX, 22
    learnset MOVE_CRAFTY_SHIELD, 25
    learnset MOVE_MEAN_LOOK, 28
    learnset MOVE_IMPRISON, 31
    learnset MOVE_CURSE, 34
    learnset MOVE_GRUDGE, 37
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_POWER_SPLIT, 43
    learnset MOVE_GUARD_SPLIT, 43
    learnset MOVE_DARK_PULSE, 46
    learnset MOVE_DESTINY_BOND, 49
    learnset MOVE_ENERGY_BALL, 52
    learnset MOVE_TOXIC_SPIKES, 55
    learnset MOVE_PSYCHIC, 58
    learnset MOVE_TRICK_ROOM, 61
    learnset MOVE_MEMENTO, 64
    terminatelearnset


levelup SPECIES_TIRTOUGA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_PROTECT, 6
    learnset MOVE_AQUA_JET, 10
    learnset MOVE_BITE, 11
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_WIDE_GUARD, 21
    learnset MOVE_BRINE, 24
    learnset MOVE_CRUNCH, 24
    learnset MOVE_CURSE, 32
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_IRON_DEFENSE, 33
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_SHELL_SMASH, 41
    learnset MOVE_RAIN_DANCE, 43
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset


levelup SPECIES_CARRACOSTA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_BITE, 11
    learnset MOVE_PROTECT, 11
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_AQUA_JET, 15
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_WIDE_GUARD, 21
    learnset MOVE_BRINE, 24
    learnset MOVE_CRUNCH, 24
    learnset MOVE_CURSE, 32
    learnset MOVE_IRON_DEFENSE, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_SHELL_SMASH, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_HYDRO_PUMP, 53
    terminatelearnset


levelup SPECIES_ARCHEN
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_ROCK_THROW, 3
    learnset MOVE_WING_ATTACK, 6
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_PLUCK, 15
    learnset MOVE_DRAGON_BREATH, 19
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_QUICK_GUARD, 21
    learnset MOVE_AGILITY, 27
    learnset MOVE_ACROBATICS, 28
    learnset MOVE_U_TURN, 30
    learnset MOVE_CRUNCH, 32
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_TAILWIND, 36
    learnset MOVE_ENDEAVOR, 41
    learnset MOVE_DRAGON_CLAW, 43
    learnset MOVE_THRASH, 45
    terminatelearnset


levelup SPECIES_ARCHEOPS
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_PLUCK, 15
    learnset MOVE_DRAGON_BREATH, 19
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_QUICK_GUARD, 21
    learnset MOVE_AGILITY, 27
    learnset MOVE_ACROBATICS, 28
    learnset MOVE_U_TURN, 32
    learnset MOVE_CRUNCH, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_TAILWIND, 36
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_DRAGON_CLAW, 48
    learnset MOVE_THRASH, 53
    terminatelearnset


levelup SPECIES_TRUBBISH
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_RECYCLE, 4
    learnset MOVE_ACID_SPRAY, 7
    learnset MOVE_AMNESIA, 10
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_TOXIC_SPIKES, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_SLUDGE, 21
    learnset MOVE_STOCKPILE, 24
    learnset MOVE_SWALLOW, 24
    learnset MOVE_DARK_PULSE, 27
    learnset MOVE_VENOSHOCK, 30
    learnset MOVE_TOXIC, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_CURSE, 39
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_AUTOTOMIZE, 48
    learnset MOVE_EARTH_POWER, 51
    learnset MOVE_SLUDGE_BOMB, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_EXPLOSION, 60
    learnset MOVE_SLUDGE_WAVE, 63
    learnset MOVE_GUNK_SHOT, 66
    terminatelearnset


levelup SPECIES_GARBODOR
    learnset MOVE_METAL_CLAW, 0
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_RECYCLE, 5
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_AMNESIA, 11
    learnset MOVE_CLEAR_SMOG, 14
    learnset MOVE_TOXIC_SPIKES, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_STOCKPILE, 25
    learnset MOVE_SWALLOW, 25
    learnset MOVE_DARK_PULSE, 28
    learnset MOVE_VENOSHOCK, 31
    learnset MOVE_TOXIC, 34
    learnset MOVE_DRAIN_PUNCH, 37
    learnset MOVE_CURSE, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_AUTOTOMIZE, 49
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_EXPLOSION, 61
    learnset MOVE_SLUDGE_WAVE, 64
    learnset MOVE_GUNK_SHOT, 67
    terminatelearnset


levelup SPECIES_ZORUA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_HONE_CLAWS, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_TORMENT, 17
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_FAKE_TEARS, 19
    learnset MOVE_TAUNT, 22
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_AGILITY, 34
    learnset MOVE_FOUL_PLAY, 39
    learnset MOVE_EMBARGO, 41
    learnset MOVE_IMPRISON, 43
    learnset MOVE_PUNISHMENT, 45
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_NIGHT_DAZE, 47
    terminatelearnset


levelup SPECIES_ZOROARK
    learnset MOVE_NIGHT_SLASH, 0
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_NIGHT_DAZE, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_HONE_CLAWS, 9
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_TAUNT, 22
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_FAKE_TEARS, 28
    learnset MOVE_TORMENT, 34
    learnset MOVE_AGILITY, 36
    learnset MOVE_FOUL_PLAY, 44
    learnset MOVE_EMBARGO, 44
    learnset MOVE_IMPRISON, 48
    learnset MOVE_PUNISHMENT, 49
    learnset MOVE_NASTY_PLOT, 52
    learnset MOVE_NIGHT_DAZE, 54
    terminatelearnset


levelup SPECIES_MINCCINO
    learnset MOVE_POUND, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_BABY_DOLL_EYES, 3
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_SING, 16
    learnset MOVE_ECHOED_VOICE, 19
    learnset MOVE_SWIFT, 19
    learnset MOVE_ENCORE, 19
    learnset MOVE_CHARM, 21
    learnset MOVE_TICKLE, 23
    learnset MOVE_TAIL_SLAP, 28
    learnset MOVE_WAKE_UP_SLAP, 31
    learnset MOVE_AFTER_YOU, 37
    learnset MOVE_SLAM, 38
    learnset MOVE_CAPTIVATE, 39
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_LAST_RESORT, 46
    terminatelearnset


levelup SPECIES_CINCCINO
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_SING, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_AFTER_YOU, 1
    learnset MOVE_TAIL_SLAP, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_SLAM, 1
    learnset MOVE_HYPER_VOICE, 1
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_ECHOED_VOICE, 1
    terminatelearnset


levelup SPECIES_GOTHITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_TICKLE, 10
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_CHARM, 16
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_HYPNOSIS, 21
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_FAKE_TEARS, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_PSYCH_UP, 33
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_FLATTER, 39
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_IMPRISON, 48
    learnset MOVE_SHADOW_BALL, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_CALM_MIND, 57
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_TELEKINESIS, 63
    learnset MOVE_NIGHT_DAZE, 66
    learnset MOVE_MIRROR_COAT, 69
    terminatelearnset


levelup SPECIES_GOTHORITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_TICKLE, 11
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_CHARM, 17
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_HYPNOSIS, 22
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_FAKE_TEARS, 28
    learnset MOVE_ZEN_HEADBUTT, 31
    learnset MOVE_PSYCH_UP, 34
    learnset MOVE_DARK_PULSE, 37
    learnset MOVE_FLATTER, 40
    learnset MOVE_PSYSHOCK, 43
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_IMPRISON, 49
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_CALM_MIND, 58
    learnset MOVE_FUTURE_SIGHT, 61
    learnset MOVE_TELEKINESIS, 64
    learnset MOVE_NIGHT_DAZE, 67
    learnset MOVE_MIRROR_COAT, 70
    terminatelearnset


levelup SPECIES_GOTHITELLE
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 6
    learnset MOVE_DISARMING_VOICE, 9
    learnset MOVE_TICKLE, 12
    learnset MOVE_DOUBLE_SLAP, 15
    learnset MOVE_CHARM, 18
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_HYPNOSIS, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_FAKE_TEARS, 29
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_PSYCH_UP, 35
    learnset MOVE_DARK_PULSE, 38
    learnset MOVE_FLATTER, 41
    learnset MOVE_PSYSHOCK, 44
    learnset MOVE_ENERGY_BALL, 47
    learnset MOVE_IMPRISON, 50
    learnset MOVE_SHADOW_BALL, 53
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_CALM_MIND, 59
    learnset MOVE_FUTURE_SIGHT, 62
    learnset MOVE_TELEKINESIS, 65
    learnset MOVE_NIGHT_DAZE, 68
    learnset MOVE_MIRROR_COAT, 71
    terminatelearnset


levelup SPECIES_SOLOSIS
    learnset MOVE_PROTECT, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ENDEAVOR, 4
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_RECOVER, 10
    learnset MOVE_CONFUSION, 13
    learnset MOVE_CHARM, 16
    learnset MOVE_HIDDEN_POWER, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_LIGHT_SCREEN, 24
    learnset MOVE_REFLECT, 24
    learnset MOVE_DRAINING_KISS, 27
    learnset MOVE_ALLY_SWITCH, 30
    learnset MOVE_DAZZLING_GLEAM, 33
    learnset MOVE_PAIN_SPLIT, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_SKILL_SWAP, 45
    learnset MOVE_FLASH_CANNON, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_TRICK_ROOM, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_HEAL_BLOCK, 63
    terminatelearnset


levelup SPECIES_DUOSION
    learnset MOVE_PROTECT, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ENDEAVOR, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_RECOVER, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_CHARM, 17
    learnset MOVE_HIDDEN_POWER, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_LIGHT_SCREEN, 25
    learnset MOVE_REFLECT, 25
    learnset MOVE_DRAINING_KISS, 28
    learnset MOVE_ALLY_SWITCH, 31
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_PAIN_SPLIT, 37
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_PSYSHOCK, 43
    learnset MOVE_SKILL_SWAP, 46
    learnset MOVE_FLASH_CANNON, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_TRICK_ROOM, 55
    learnset MOVE_ENERGY_BALL, 58
    learnset MOVE_FUTURE_SIGHT, 61
    learnset MOVE_HEAL_BLOCK, 64
    terminatelearnset


levelup SPECIES_REUNICLUS
    learnset MOVE_HAMMER_ARM, 0
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ENDEAVOR, 6
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_RECOVER, 12
    learnset MOVE_CONFUSION, 15
    learnset MOVE_CHARM, 18
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_PSYBEAM, 23
    learnset MOVE_LIGHT_SCREEN, 26
    learnset MOVE_REFLECT, 26
    learnset MOVE_DRAINING_KISS, 29
    learnset MOVE_ALLY_SWITCH, 32
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_PAIN_SPLIT, 38
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_PSYSHOCK, 44
    learnset MOVE_SKILL_SWAP, 47
    learnset MOVE_FLASH_CANNON, 50
    learnset MOVE_PSYCHIC, 53
    learnset MOVE_TRICK_ROOM, 56
    learnset MOVE_ENERGY_BALL, 59
    learnset MOVE_FUTURE_SIGHT, 62
    learnset MOVE_HEAL_BLOCK, 65
    terminatelearnset


levelup SPECIES_DUCKLETT //MadebyDaotama
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_PECK, 4
    learnset MOVE_DEFOG, 7
    learnset MOVE_AERIAL_ACE, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_FLIP_TURN, 16
    learnset MOVE_FEATHER_DANCE, 18
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_STEEL_WING, 39
    learnset MOVE_TAILWIND, 42
    learnset MOVE_SCALD, 45
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_DRILL_PECK, 51
    learnset MOVE_LIQUIDATION, 54
    learnset MOVE_ICE_BEAM, 57
    learnset MOVE_HYDRO_PUMP, 60
    learnset MOVE_HURRICANE, 63
    learnset MOVE_WAVE_CRASH, 66
    learnset MOVE_BRAVE_BIRD, 69
    terminatelearnset


levelup SPECIES_SWANNA //MadebyDaotama
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_PECK, 5
    learnset MOVE_DEFOG, 8
    learnset MOVE_AERIAL_ACE, 11
    learnset MOVE_ICY_WIND, 14
    learnset MOVE_FLIP_TURN, 17
    learnset MOVE_FEATHER_DANCE, 19
    learnset MOVE_AIR_CUTTER, 22
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_AQUA_RING, 28
    learnset MOVE_ROOST, 31
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_RAIN_DANCE, 37
    learnset MOVE_STEEL_WING, 40
    learnset MOVE_TAILWIND, 43
    learnset MOVE_SCALD, 46
    learnset MOVE_ENERGY_BALL, 49
    learnset MOVE_DRILL_PECK, 52
    learnset MOVE_LIQUIDATION, 55
    learnset MOVE_ICE_BEAM, 58
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_HURRICANE, 64
    learnset MOVE_WAVE_CRASH, 67
    learnset MOVE_BRAVE_BIRD, 70
    terminatelearnset


levelup SPECIES_VANILLITE //MadebyDaotama
    learnset MOVE_ASTONISH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_MIST, 7
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_TAUNT, 13
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_MIRROR_SHOT, 18
    learnset MOVE_HAIL, 21
    learnset MOVE_ICICLE_SPEAR, 24
    learnset MOVE_ROUND, 27
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_AVALANCHE, 33
    learnset MOVE_UPROAR, 36
    learnset MOVE_MIRROR_COAT, 39
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_MAGNET_RISE, 48
    learnset MOVE_FLASH_CANNON, 51
    learnset MOVE_BLIZZARD, 54
    learnset MOVE_AURORA_VEIL, 57
    learnset MOVE_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_VANILLISH //MadebyDaotama
    learnset MOVE_ASTONISH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_MIST, 8
    learnset MOVE_ICE_SHARD, 11
    learnset MOVE_TAUNT, 14
    learnset MOVE_ICY_WIND, 17
    learnset MOVE_MIRROR_SHOT, 19
    learnset MOVE_HAIL, 22
    learnset MOVE_ICICLE_SPEAR, 25
    learnset MOVE_ROUND, 28
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_AVALANCHE, 34
    learnset MOVE_UPROAR, 37
    learnset MOVE_MIRROR_COAT, 40
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_HYPER_VOICE, 46
    learnset MOVE_MAGNET_RISE, 49
    learnset MOVE_FLASH_CANNON, 52
    learnset MOVE_BLIZZARD, 55
    learnset MOVE_AURORA_VEIL, 58
    learnset MOVE_EXPLOSION, 61
    terminatelearnset


levelup SPECIES_VANILLUXE //MadebyDaotama
    learnset MOVE_FREEZE_DRY, 0
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_POWDER_SNOW, 6
    learnset MOVE_MIST, 9
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_TAUNT, 15
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_MIRROR_SHOT, 20
    learnset MOVE_HAIL, 23
    learnset MOVE_ICICLE_SPEAR, 26
    learnset MOVE_ROUND, 29
    learnset MOVE_ACID_ARMOR, 32
    learnset MOVE_AVALANCHE, 35
    learnset MOVE_UPROAR, 38
    learnset MOVE_MIRROR_COAT, 41
    learnset MOVE_ICE_BEAM, 44
    learnset MOVE_HYPER_VOICE, 47
    learnset MOVE_MAGNET_RISE, 50
    learnset MOVE_ICICLE_CRASH, 53
    learnset MOVE_FLASH_CANNON, 56
    learnset MOVE_WEATHER_BALL, 59
    learnset MOVE_BLIZZARD, 62
    learnset MOVE_AURORA_VEIL, 65
    learnset MOVE_EXPLOSION, 68
    terminatelearnset


levelup SPECIES_DEERLING
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEECH_SEED, 4
    learnset MOVE_DOUBLE_KICK, 6
    learnset MOVE_DOUBLE_HIT, 9
    learnset MOVE_TRAILBLAZE, 12
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_SYNTHESIS, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_HORN_LEECH, 25
    learnset MOVE_JUMP_KICK, 28
    learnset MOVE_BATON_PASS, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_LEAF_BLADE, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_SWORDS_DANCE, 43
    learnset MOVE_RETURN, 46
    terminatelearnset


levelup SPECIES_SAWSBUCK
    learnset MOVE_LAST_RESORT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEECH_SEED, 4
    learnset MOVE_DOUBLE_KICK, 6
    learnset MOVE_DOUBLE_HIT, 9
    learnset MOVE_TRAILBLAZE, 12
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_SYNTHESIS, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_HORN_LEECH, 25
    learnset MOVE_JUMP_KICK, 28
    learnset MOVE_BATON_PASS, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_LEAF_BLADE, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_SWORDS_DANCE, 43
    learnset MOVE_RETURN, 46
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_SOLAR_BLADE, 53
    learnset MOVE_MEGAHORN, 56
    learnset MOVE_HIGH_JUMP_KICK, 59
    learnset MOVE_DOUBLE_EDGE, 63
    terminatelearnset


levelup SPECIES_EMOLGA
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_DOUBLE_TEAM, 11
    learnset MOVE_THUNDER_SHOCK, 15
    learnset MOVE_CHARGE, 15
    learnset MOVE_NUZZLE, 15
    learnset MOVE_PURSUIT, 16
    learnset MOVE_SPARK, 22
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_ELECTRO_BALL, 26
    learnset MOVE_ACROBATICS, 27
    learnset MOVE_ENCORE, 36
    learnset MOVE_LIGHT_SCREEN, 39
    learnset MOVE_VOLT_SWITCH, 40
    learnset MOVE_DISCHARGE, 50
    learnset MOVE_AGILITY, 50
    terminatelearnset


levelup SPECIES_KARRABLAST
    learnset MOVE_PECK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_FURY_CUTTER, 4 
    learnset MOVE_ROLLOUT, 6 
    learnset MOVE_ENDURE, 9 
    learnset MOVE_METAL_CLAW, 14 
    learnset MOVE_FALSE_SWIPE, 18 
    learnset MOVE_HEADBUTT, 21 
    learnset MOVE_FELL_STINGER, 24 
    learnset MOVE_REVERSAL, 27 
    learnset MOVE_IRON_DEFENSE, 30 
    learnset MOVE_X_SCISSOR, 32 
    learnset MOVE_SWORDS_DANCE, 35 
    learnset MOVE_SLASH, 38 
    learnset MOVE_NIGHT_SLASH, 40 
    learnset MOVE_TWINEEDLE, 42 
    learnset MOVE_SUNNY_DAY, 44 
    learnset MOVE_DRILL_RUN, 48
    terminatelearnset


levelup SPECIES_ESCAVALIER
    learnset MOVE_IRON_HEAD, 0 
    learnset MOVE_PECK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_FURY_CUTTER, 4 
    learnset MOVE_ROLLOUT, 6 
    learnset MOVE_COUNTER, 9 
    learnset MOVE_METAL_CLAW, 14 
    learnset MOVE_FALSE_SWIPE, 18 
    learnset MOVE_HEADBUTT, 21 
    learnset MOVE_FELL_STINGER, 24 
    learnset MOVE_REVERSAL, 27 
    learnset MOVE_IRON_DEFENSE, 30 
    learnset MOVE_X_SCISSOR, 32 
    learnset MOVE_SWORDS_DANCE, 35 
    learnset MOVE_IRON_HEAD, 38 
    learnset MOVE_NIGHT_SLASH, 40 
    learnset MOVE_TWINEEDLE, 42 
    learnset MOVE_SUNNY_DAY, 44 
    learnset MOVE_SACRED_SWORD, 48 
    learnset MOVE_DOUBLE_EDGE, 52 
    learnset MOVE_LIFE_DEW, 54 
    learnset MOVE_LEECH_LIFE, 59 
    learnset MOVE_RAZOR_SHELL, 60 
    learnset MOVE_METEOR_MASH, 62 
    learnset MOVE_MEGAHORN, 66 
    learnset MOVE_CLOSE_COMBAT, 69 
    terminatelearnset


levelup SPECIES_FOONGUS //MadebyDaotama
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWTH, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_POISON_POWDER, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_SYNTHESIS, 16
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_CLEAR_SMOG, 21
    learnset MOVE_SWEET_SCENT, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_TOXIC, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_INGRAIN, 36
    learnset MOVE_RAGE_POWDER, 39
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_POLLEN_PUFF, 45
    learnset MOVE_SPORE, 48
    learnset MOVE_SLUDGE_BOMB, 51
    learnset MOVE_DARK_PULSE, 54
    learnset MOVE_WEATHER_BALL, 57
    learnset MOVE_SOLAR_BEAM, 60
    learnset MOVE_LEAF_STORM, 63
    terminatelearnset


levelup SPECIES_AMOONGUSS //MadebyDaotama
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GROWTH, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_POISON_POWDER, 11
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_SYNTHESIS, 17
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_CLEAR_SMOG, 22
    learnset MOVE_SWEET_SCENT, 25
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_TOXIC, 31
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_INGRAIN, 37
    learnset MOVE_RAGE_POWDER, 40
    learnset MOVE_ENERGY_BALL, 43
    learnset MOVE_POLLEN_PUFF, 46
    learnset MOVE_SPORE, 49
    learnset MOVE_SLUDGE_BOMB, 52
    learnset MOVE_DARK_PULSE, 55
    learnset MOVE_WEATHER_BALL, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_LEAF_STORM, 64
    terminatelearnset


levelup SPECIES_FRILLISH
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MEGA_DRAIN, 4 
    learnset MOVE_ACID, 6
    learnset MOVE_WATER_PULSE, 9 
    learnset MOVE_NIGHT_SHADE, 12 
    learnset MOVE_AQUA_RING, 15
    learnset MOVE_TOXIC, 18
    learnset MOVE_HEX, 18
    learnset MOVE_BRINE, 23
    learnset MOVE_ICY_WIND, 25
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_PAIN_SPLIT, 31
    learnset MOVE_WHIRLPOOL, 33
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SCALD, 44
    learnset MOVE_SLUDGE_BOMB, 47
    terminatelearnset

levelup SPECIES_JELLICENT
    learnset MOVE_STRENGTH_SAP, 0
    learnset MOVE_TRICK, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MEGA_DRAIN, 4 
    learnset MOVE_ACID, 6
    learnset MOVE_WATER_PULSE, 9 
    learnset MOVE_NIGHT_SHADE, 12 
    learnset MOVE_AQUA_RING, 15
    learnset MOVE_TOXIC, 18
    learnset MOVE_HEX, 18
    learnset MOVE_BRINE, 23
    learnset MOVE_ICY_WIND, 25
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_PAIN_SPLIT, 31
    learnset MOVE_WHIRLPOOL, 33
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SCALD, 44
    learnset MOVE_SLUDGE_BOMB, 47
    learnset MOVE_HYDRO_PUMP, 52
    learnset MOVE_POLTERGEIST, 55
    learnset MOVE_ENERGY_BALL, 59 
    learnset MOVE_RECOVER, 62
    learnset MOVE_WATER_SPOUT, 66
    learnset MOVE_DESTINY_BOND, 70 
    learnset MOVE_ASTRAL_BARRAGE, 73
    terminatelearnset

levelup SPECIES_ALOMOMOLA
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_HEALING_WISH, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_SPORT, 1
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
    learnset MOVE_INFESTATION, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_ELECTROWEB, 10
    learnset MOVE_FURY_CUTTER, 13
    learnset MOVE_CHARGE, 16
    learnset MOVE_BUG_BITE, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_ELECTRO_BALL, 28
    learnset MOVE_PIN_MISSILE, 31
    learnset MOVE_SPIDER_WEB, 34
    learnset MOVE_SLASH, 37
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_SUCKER_PUNCH, 46
    learnset MOVE_GASTRO_ACID, 49
    learnset MOVE_DISCHARGE, 52
    learnset MOVE_SCREECH, 55
    learnset MOVE_LEECH_LIFE, 58
    learnset MOVE_THUNDERBOLT, 61
    learnset MOVE_BUG_BUZZ, 64
    learnset MOVE_THUNDER, 67
    terminatelearnset


levelup SPECIES_GALVANTULA
    learnset MOVE_STICKY_WEB, 0
    learnset MOVE_STICKY_WEB, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_ELECTROWEB, 10
    learnset MOVE_FURY_CUTTER, 13
    learnset MOVE_CHARGE, 16
    learnset MOVE_BUG_BITE, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_ELECTRO_BALL, 28
    learnset MOVE_PIN_MISSILE, 31
    learnset MOVE_SPIDER_WEB, 34
    learnset MOVE_SLASH, 39
    learnset MOVE_SIGNAL_BEAM, 42
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_GASTRO_ACID, 51
    learnset MOVE_DISCHARGE, 54
    learnset MOVE_SCREECH, 57
    learnset MOVE_LEECH_LIFE, 60
    learnset MOVE_THUNDERBOLT, 63
    learnset MOVE_BUG_BUZZ, 66
    learnset MOVE_THUNDER, 69
    terminatelearnset


levelup SPECIES_FERROSEED
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_PIN_MISSILE, 9
    learnset MOVE_INGRAIN, 12
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_IRON_DEFENSE, 19
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_PROTECT, 25
    learnset MOVE_MIRROR_SHOT, 28
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_GYRO_BALL, 33
    learnset MOVE_FLASH_CANNON, 36
    learnset MOVE_PAYBACK, 39
    learnset MOVE_STEALTH_ROCK, 42
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_KNOCK_OFF, 48
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_EXPLOSION, 54
    learnset MOVE_TOXIC, 57
    learnset MOVE_FRENZY_PLANT, 60
    learnset MOVE_SPIKES, 63
    terminatelearnset


levelup SPECIES_FERROTHORN
    learnset MOVE_POWER_WHIP, 0
    learnset MOVE_SNAP_TRAP, 1
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_TOXIC, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_ROCK_CLIMB, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_ICE_SPINNER, 6
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_CURSE, 27
    learnset MOVE_IRON_DEFENSE, 30
    learnset MOVE_MIRROR_SHOT, 30
    learnset MOVE_SHADOW_CLAW, 33
    learnset MOVE_BODY_PRESS, 42
    learnset MOVE_GYRO_BALL, 45
    learnset MOVE_FLASH_CANNON, 49
    learnset MOVE_PAYBACK, 53
    learnset MOVE_EXPLOSION, 61
    terminatelearnset


levelup SPECIES_KLINK
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_THUNDER_SHOCK,3                   // coverage
    learnset MOVE_METAL_SOUND,5     // status
    learnset MOVE_BIND,8                            // coverage
    learnset MOVE_CHARGE_BEAM,11                    // coverage
    learnset MOVE_BULLET_PUNCH,14           // stab
    learnset MOVE_IRON_DEFENSE,17   // status
    learnset MOVE_MAGNET_BOMB,20            // stab
    learnset MOVE_SKILL_SWAP,23     // status
    learnset MOVE_HEAT_CRASH,26                     // coverage
    learnset MOVE_ROCK_THROW,29                     // coverage
    learnset MOVE_GEAR_GRIND,33              // stab
    learnset MOVE_AUTOTOMIZE,38       // status
    learnset MOVE_DISCHARGE,40                      // coverage
    learnset MOVE_LOCK_ON,44        // status
    learnset MOVE_FLASH_CANNON,47           // stab
    learnset MOVE_METAL_SOUND,49    // status
    learnset MOVE_RAPID_SPIN,53                     // coverage
    learnset MOVE_EARTHQUAKE,58                     // coverage
    learnset MOVE_METAL_BURST,60            // stab
    learnset MOVE_ICICLE_CRASH,62                   // coverage
    learnset MOVE_IRON_HEAD,65              // stab
    learnset MOVE_ZAP_CANNON,68                     // coverage
    learnset MOVE_METEOR_MASH,72            // stab
    terminatelearnset

levelup SPECIES_KLANG
    learnset MOVE_GEAR_UP,0         // status
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_THUNDER_SHOCK,3                   // coverage
    learnset MOVE_METAL_SOUND,5     // status
    learnset MOVE_BIND,8                            // coverage
    learnset MOVE_CHARGE_BEAM,11                    // coverage
    learnset MOVE_BULLET_PUNCH,14           // stab
    learnset MOVE_IRON_DEFENSE,17   // status
    learnset MOVE_MAGNET_BOMB,20            // stab
    learnset MOVE_SKILL_SWAP,23     // status
    learnset MOVE_HEAT_CRASH,26                     // coverage
    learnset MOVE_ROCK_THROW,29                     // coverage
    learnset MOVE_GEAR_GRIND,33              // stab
    learnset MOVE_AUTOTOMIZE,38       // status
    learnset MOVE_DISCHARGE,40                      // coverage
    learnset MOVE_LOCK_ON,44        // status
    learnset MOVE_FLASH_CANNON,47           // stab
    learnset MOVE_METAL_SOUND,49    // status
    learnset MOVE_RAPID_SPIN,53                     // coverage
    learnset MOVE_EARTHQUAKE,58                     // coverage
    learnset MOVE_METAL_BURST,60            // stab
    learnset MOVE_ICICLE_CRASH,62                   // coverage
    learnset MOVE_IRON_HEAD,65              // stab
    learnset MOVE_ZAP_CANNON,68                     // coverage
    learnset MOVE_METEOR_MASH,72            // stab
    terminatelearnset


levelup SPECIES_KLINKLANG
    learnset MOVE_SHIFT_GEAR,0       // status
    learnset MOVE_TACKLE,1                          // coverage
    learnset MOVE_THUNDER_SHOCK,3                   // coverage
    learnset MOVE_METAL_SOUND,5     // status
    learnset MOVE_BIND,8                            // coverage
    learnset MOVE_CHARGE_BEAM,11                    // coverage
    learnset MOVE_BULLET_PUNCH,14           // stab
    learnset MOVE_IRON_DEFENSE,17   // status
    learnset MOVE_MAGNET_BOMB,20            // stab
    learnset MOVE_GEAR_UP,23        // status
    learnset MOVE_HEAT_CRASH,26                     // coverage
    learnset MOVE_ROCK_THROW,29                     // coverage
    learnset MOVE_GEAR_GRIND,33              // stab
    learnset MOVE_AUTOTOMIZE,38       // status
    learnset MOVE_DISCHARGE,40                      // coverage
    learnset MOVE_LOCK_ON,44        // status
    learnset MOVE_FLASH_CANNON,47           // stab
    learnset MOVE_METAL_SOUND,49    // status
    learnset MOVE_RAPID_SPIN,53                     // coverage
    learnset MOVE_EARTHQUAKE,58                     // coverage
    learnset MOVE_METAL_BURST,60            // stab
    learnset MOVE_ICICLE_CRASH,62                   // coverage
    learnset MOVE_IRON_HEAD,65              // stab
    learnset MOVE_ZAP_CANNON,68                     // coverage
    learnset MOVE_METEOR_MASH,72            // stab
    terminatelearnset
    

levelup SPECIES_TYNAMO
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ACID, 4
    learnset MOVE_ABSORB, 7
    learnset MOVE_SPARK, 10
    learnset MOVE_ACROBATICS, 13
    learnset MOVE_CONFIDE, 15
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_THUNDER_WAVE, 22
    learnset MOVE_ACID_SPRAY, 25
    learnset MOVE_COIL, 29
    learnset MOVE_PARABOLIC_CHARGE, 32
    learnset MOVE_MUD_BOMB, 35
    learnset MOVE_VOLT_SWITCH, 38
    learnset MOVE_LEECH_LIFE, 41
    learnset MOVE_SUPERCELL_SLAM, 44
    terminatelearnset


levelup SPECIES_EELEKTRIK
    learnset MOVE_CRUNCH, 0
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_SPARK, 21
    learnset MOVE_GASTRO_ACID, 24
    learnset MOVE_ACROBATICS, 27
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_PARABOLIC_CHARGE, 33
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_CROSS_POISON, 39
    learnset MOVE_COIL, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_ELECTRIC_TERRAIN, 48
    learnset MOVE_TOXIC, 51
    learnset MOVE_THROAT_CHOP, 54
    learnset MOVE_AQUA_TAIL, 57
    learnset MOVE_THUNDER, 60
    learnset MOVE_SLUDGE_WAVE, 63
    learnset MOVE_FLASH_CANNON, 66
    learnset MOVE_ZAP_CANNON, 69
    terminatelearnset


levelup SPECIES_EELEKTROSS
    learnset MOVE_CRUNCH, 1
    learnset MOVE_ACID_SPRAY, 18
    learnset MOVE_THUNDER_FANG, 21
    learnset MOVE_COIL, 24
    learnset MOVE_DRAIN_PUNCH, 27
    learnset MOVE_ELECTRO_BALL, 30
    learnset MOVE_CONFUSE_RAY, 33
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_THUNDER_PUNCH, 39
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_BULK_UP, 45
    learnset MOVE_LEECH_LIFE, 48
    learnset MOVE_THUNDER_WAVE, 51
    learnset MOVE_IRON_TAIL, 54
    learnset MOVE_ELECTRIFY, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_AQUA_TAIL, 63
    learnset MOVE_OUTRAGE, 66
    learnset MOVE_SUPERCELL_SLAM, 72
    terminatelearnset


levelup SPECIES_ELGYEM
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_HEAL_BLOCK, 8
    learnset MOVE_MIRACLE_EYE, 11
    learnset MOVE_TELEPORT, 12
    learnset MOVE_IMPRISON, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HIDDEN_POWER, 22
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SIMPLE_BEAM, 29
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_POWER_SPLIT, 36
    learnset MOVE_GUARD_SPLIT, 36
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_RECOVER, 44
    learnset MOVE_CALM_MIND, 45
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_SYNCHRONOISE, 53
    learnset MOVE_WONDER_ROOM, 54
    terminatelearnset


levelup SPECIES_BEHEEYEM
    learnset MOVE_PSYCHIC_TERRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_WONDER_ROOM, 1
    learnset MOVE_SYNCHRONOISE, 1
    learnset MOVE_HEAL_BLOCK, 1
    learnset MOVE_MIRACLE_EYE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_HEAL_BLOCK, 8
    learnset MOVE_MIRACLE_EYE, 11
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_HIDDEN_POWER, 22
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_IMPRISON, 25
    learnset MOVE_SIMPLE_BEAM, 29
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_GUARD_SPLIT, 38
    learnset MOVE_POWER_SPLIT, 39
    learnset MOVE_RECOVER, 47
    learnset MOVE_CALM_MIND, 48
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_WONDER_ROOM, 63
    learnset MOVE_SYNCHRONOISE, 63
    terminatelearnset


levelup SPECIES_LITWICK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_IMPRISON, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_ACID, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_FIRE_SPIN, 19
    learnset MOVE_ALLY_SWITCH, 21
    learnset MOVE_HEX, 24
    learnset MOVE_CLEAR_SMOG, 28
    learnset MOVE_TAUNT, 32
    learnset MOVE_SPITE, 34
    learnset MOVE_INCINERATE, 37
    learnset MOVE_MINIMIZE, 39
    learnset MOVE_SHOCK_WAVE, 42
    learnset MOVE_WILL_O_WISP, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_BURNING_JEALOUSY, 54
    learnset MOVE_PAIN_SPLIT, 57
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_ENERGY_BALL, 64
    learnset MOVE_FLAMETHROWER, 66
    learnset MOVE_POLTERGEIST, 69
    terminatelearnset


levelup SPECIES_LAMPENT
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_ACID, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_FLAME_BURST, 20
    learnset MOVE_ALLY_SWITCH, 21
    learnset MOVE_HEX, 24
    learnset MOVE_CLEAR_SMOG, 28
    learnset MOVE_SPITE, 34
    learnset MOVE_INCINERATE, 37
    learnset MOVE_MINIMIZE, 39
    learnset MOVE_WILL_O_WISP, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_MEMENTO, 55
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_ENERGY_BALL, 64
    learnset MOVE_FLAMETHROWER, 66
    learnset MOVE_POLTERGEIST, 69
    learnset MOVE_OVERHEAT, 71
    terminatelearnset


levelup SPECIES_CHANDELURE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_FIRE_SPIN, 3
    learnset MOVE_ACID, 13
    learnset MOVE_CONFIDE, 16
    learnset MOVE_FLAME_BURST, 20
    learnset MOVE_MINIMIZE, 21
    learnset MOVE_HEX, 24
    learnset MOVE_THIEF, 28
    learnset MOVE_SPITE, 34
    learnset MOVE_INCINERATE, 37
    learnset MOVE_SKITTER_SMACK, 39
    learnset MOVE_WILL_O_WISP, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_TRICK_ROOM, 55
    learnset MOVE_PSYCHIC, 60
    learnset MOVE_ENERGY_BALL, 64
    learnset MOVE_FLAMETHROWER, 66
    learnset MOVE_POLTERGEIST, 70
    learnset MOVE_OVERHEAT, 74
    terminatelearnset


levelup SPECIES_AXEW
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_TWISTER, 4
    learnset MOVE_FALSE_SWIPE, 6
    learnset MOVE_BREAKING_SWIPE, 9
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_DRAGON_RAGE, 15
    learnset MOVE_HONE_CLAWS, 18
    learnset MOVE_DRAGON_PULSE, 21
    learnset MOVE_TAUNT, 23
    learnset MOVE_NIGHT_SLASH, 25
    learnset MOVE_DUAL_CHOP, 28
    learnset MOVE_DRAGON_DANCE, 31
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_DRAGON_TAIL, 36
    learnset MOVE_FIRST_IMPRESSION, 40
    learnset MOVE_SCALE_SHOT, 43
    terminatelearnset


levelup SPECIES_FRAXURE
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_TWISTER, 4
    learnset MOVE_FALSE_SWIPE, 6
    learnset MOVE_BREAKING_SWIPE, 9
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_DRAGON_RAGE, 15
    learnset MOVE_HONE_CLAWS, 18
    learnset MOVE_DRAGON_PULSE, 21
    learnset MOVE_TAUNT, 23
    learnset MOVE_NIGHT_SLASH, 25
    learnset MOVE_DUAL_CHOP, 28
    learnset MOVE_DRAGON_DANCE, 31
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_DRAGON_TAIL, 36
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_DRAGON_RUSH, 44
    learnset MOVE_SWORDS_DANCE, 47
    learnset MOVE_POISON_JAB, 51
    learnset MOVE_OUTRAGE, 55
    terminatelearnset


levelup SPECIES_HAXORUS
    learnset MOVE_SCALE_SHOT, 1
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_TWISTER, 4
    learnset MOVE_FALSE_SWIPE, 6
    learnset MOVE_BREAKING_SWIPE, 9
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_DRAGON_RAGE, 15
    learnset MOVE_HONE_CLAWS, 18
    learnset MOVE_DRAGON_PULSE, 21
    learnset MOVE_TAUNT, 23
    learnset MOVE_NIGHT_SLASH, 25
    learnset MOVE_DUAL_CHOP, 28
    learnset MOVE_DRAGON_DANCE, 31
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_DRAGON_TAIL, 36
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_DRAGON_RUSH, 44
    learnset MOVE_SWORDS_DANCE, 47
    learnset MOVE_POISON_JAB, 51
    learnset MOVE_OUTRAGE, 55
    learnset MOVE_SUPERPOWER, 58
    learnset MOVE_LASER_FOCUS, 61
    learnset MOVE_DRAGON_HAMMER, 64
    learnset MOVE_GUILLOTINE, 66
    terminatelearnset


levelup SPECIES_CUBCHOO //MadebyDaotama
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ENDURE, 4
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_PLAY_NICE, 13
    learnset MOVE_BRINE, 16
    learnset MOVE_FROST_BREATH, 18
    learnset MOVE_SLASH, 21
    learnset MOVE_FLAIL, 24
    learnset MOVE_CHARM, 27
    learnset MOVE_AVALANCHE, 30
    learnset MOVE_SNOWSCAPE, 33
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_REST, 39
    learnset MOVE_BLIZZARD, 42
    terminatelearnset


levelup SPECIES_BEARTIC //MadebyDaotama
    learnset MOVE_AQUA_JET, 0
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ENDURE, 5
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_PLAY_NICE, 14
    learnset MOVE_BRINE, 17
    learnset MOVE_FROST_BREATH, 19
    learnset MOVE_SLASH, 22
    learnset MOVE_FLAIL, 25
    learnset MOVE_CHARM, 28
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_SNOWSCAPE, 34
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_REST, 40
    learnset MOVE_ICICLE_CRASH, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_BULK_UP, 49
    learnset MOVE_PLAY_ROUGH, 52
    learnset MOVE_BLIZZARD, 55
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_ICE_HAMMER, 61
    terminatelearnset


levelup SPECIES_CRYOGONAL
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_MIST, 4
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_PROTECT, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_ACROBATICS, 18
    learnset MOVE_AVALANCHE, 22
    learnset MOVE_IRON_DEFENSE, 25
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_DEFOG, 31
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_FREEZE_DRY, 37
    learnset MOVE_REFLECT, 41
    learnset MOVE_LIGHT_SCREEN, 41
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_RECOVER, 48
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_FLASH_CANNON, 54
    learnset MOVE_BLIZZARD, 57
    learnset MOVE_ACID_ARMOR, 61
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_SHEER_COLD, 67
    terminatelearnset


levelup SPECIES_SHELMET
    learnset MOVE_ABSORB, 1 
    learnset MOVE_PROTECT, 1 
    learnset MOVE_ACID, 4 
    learnset MOVE_CURSE, 6 
    learnset MOVE_MUD_SLAP, 9 
    learnset MOVE_YAWN, 14 
    learnset MOVE_PURSUIT, 18 
    learnset MOVE_BUG_BITE, 21 
    learnset MOVE_GASTRO_ACID, 24 
    learnset MOVE_STRUGGLE_BUG, 27 
    learnset MOVE_WIDE_GUARD, 30 
    learnset MOVE_BODY_SLAM, 32 
    learnset MOVE_SPIKES, 35 
    learnset MOVE_FURY_CUTTER, 38 
    learnset MOVE_STICKY_WEB, 40 
    learnset MOVE_RECOVER, 42 
    learnset MOVE_LEECH_LIFE, 44 
    learnset MOVE_IRON_DEFENSE, 48
    terminatelearnset


levelup SPECIES_ACCELGOR
    learnset MOVE_U_TURN, 0 
    learnset MOVE_ABSORB, 1 
    learnset MOVE_PROTECT, 1 
    learnset MOVE_ACID, 4 
    learnset MOVE_CURSE, 6 
    learnset MOVE_MUD_SLAP, 9 
    learnset MOVE_YAWN, 14 
    learnset MOVE_PURSUIT, 18 
    learnset MOVE_BUG_BITE, 21 
    learnset MOVE_GASTRO_ACID, 24 
    learnset MOVE_STRUGGLE_BUG, 27 
    learnset MOVE_WIDE_GUARD, 30 
    learnset MOVE_BODY_SLAM, 32 
    learnset MOVE_SPIKES, 35 
    learnset MOVE_FURY_CUTTER, 38 
    learnset MOVE_STICKY_WEB, 40 
    learnset MOVE_RECOVER, 42 
    learnset MOVE_LEECH_LIFE, 44 
    learnset MOVE_ENERGY_BALL, 48 
    learnset MOVE_AGILITY, 52 
    learnset MOVE_BUG_BUZZ, 54 
    learnset MOVE_BATON_PASS, 59 
    learnset MOVE_AURA_SPHERE, 60 
    learnset MOVE_POWER_SWAP, 62
    learnset MOVE_GUARD_SWAP, 62  
    learnset MOVE_FINAL_GAMBIT, 66 
    terminatelearnset


levelup SPECIES_STUNFISK
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_FISSURE, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_THUNDER_SHOCK, 9
    learnset MOVE_MUD_SHOT, 11
    learnset MOVE_ENDURE, 16
    learnset MOVE_CAMOUFLAGE, 17
    learnset MOVE_CHARGE, 20
    learnset MOVE_MUD_BOMB, 21
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_ELECTRIC_TERRAIN, 30
    learnset MOVE_REVENGE, 31
    learnset MOVE_BOUNCE, 35
    learnset MOVE_DISCHARGE, 35
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_FLAIL, 52
    learnset MOVE_FISSURE, 57
    terminatelearnset


levelup SPECIES_MIENFOO
    learnset MOVE_POUND, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_MEDITATE, 5
    learnset MOVE_FAKE_OUT, 8
    learnset MOVE_DETECT, 9
    learnset MOVE_FURY_SWIPES, 15
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_SWIFT, 21
    learnset MOVE_FORCE_PALM, 26
    learnset MOVE_REVERSAL, 31
    learnset MOVE_QUICK_GUARD, 31
    learnset MOVE_DRAIN_PUNCH, 34
    learnset MOVE_U_TURN, 35
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_HONE_CLAWS, 40
    learnset MOVE_CALM_MIND, 41
    learnset MOVE_BOUNCE, 50
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_HIGH_JUMP_KICK, 55
    terminatelearnset


levelup SPECIES_MIENSHAO
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_MEDITATE, 5
    learnset MOVE_DETECT, 9
    learnset MOVE_FAKE_OUT, 13
    learnset MOVE_FURY_SWIPES, 15
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_SWIFT, 21
    learnset MOVE_FORCE_PALM, 26
    learnset MOVE_WIDE_GUARD, 31
    learnset MOVE_DRAIN_PUNCH, 34
    learnset MOVE_U_TURN, 35
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_HONE_CLAWS, 40
    learnset MOVE_CALM_MIND, 43
    learnset MOVE_BOUNCE, 51
    learnset MOVE_AURA_SPHERE, 56
    learnset MOVE_HIGH_JUMP_KICK, 61
    learnset MOVE_REVERSAL, 63
    terminatelearnset


levelup SPECIES_DRUDDIGON
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMACK_DOWN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_HONE_CLAWS, 9
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_BITE, 24
    learnset MOVE_TORMENT, 27
    learnset MOVE_SLASH, 30
    learnset MOVE_SCALE_SHOT, 32
    learnset MOVE_FIRE_FANG, 36
    learnset MOVE_THUNDER_FANG, 39
    learnset MOVE_TAUNT, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_BODY_SLAM, 50
    learnset MOVE_GLARE, 54
    learnset MOVE_AQUA_TAIL, 57
    learnset MOVE_DRAGON_DANCE, 60
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_OUTRAGE, 66
    learnset MOVE_SUPERPOWER, 70
    terminatelearnset


levelup SPECIES_GOLETT
    learnset MOVE_ASTONISH,1
    learnset MOVE_DEFENSE_CURL,1
    learnset MOVE_POUND,4
    learnset MOVE_MUD_SHOT,8
    learnset MOVE_CURSE,11
    learnset MOVE_ROLLOUT,14
    learnset MOVE_SHADOW_SNEAK,18
    learnset MOVE_MAGNITUDE,21
    learnset MOVE_IRON_DEFENSE,24
    learnset MOVE_SHADOW_PUNCH,28
    learnset MOVE_DIG,31
    learnset MOVE_SHADOW_BALL,34
    learnset MOVE_HIGH_HORSEPOWER,37
    learnset MOVE_LASER_FOCUS,40
    learnset MOVE_DRAIN_PUNCH,42
    learnset MOVE_BULLET_PUNCH,50
    terminatelearnset


levelup SPECIES_GOLURK
    learnset MOVE_FOCUS_PUNCH,0                     // coverage
    learnset MOVE_ASTONISH,1                // stab
    learnset MOVE_DEFENSE_CURL,1    // status
    learnset MOVE_POUND,4                           // coverage
    learnset MOVE_MUD_SHOT,8                // stab
    learnset MOVE_CURSE,11          // status
    learnset MOVE_ROLLOUT,14                        // coverage
    learnset MOVE_SHADOW_SNEAK,18           // stab
    learnset MOVE_MAGNITUDE,21              // stab
    learnset MOVE_IRON_DEFENSE,24   // status
    learnset MOVE_SHADOW_PUNCH,28           // stab
    learnset MOVE_DIG,31                    // stab
    learnset MOVE_SHADOW_BALL,34            // stab
    learnset MOVE_HIGH_HORSEPOWER,37        // stab
    learnset MOVE_LASER_FOCUS,40    // status
    learnset MOVE_DRAIN_PUNCH,42                    // coverage
    learnset MOVE_FIRE_PUNCH,50                     // coverage
    learnset MOVE_ICE_PUNCH,50                      // coverage
    learnset MOVE_THUNDER_PUNCH,50                  // coverage
    learnset MOVE_PHANTOM_FORCE,55          // stab
    learnset MOVE_INGRAIN,59        // status
    learnset MOVE_STEALTH_ROCK,61   // status
    learnset MOVE_EARTHQUAKE,64             // stab
    learnset MOVE_DYNAMIC_PUNCH,68                  // coverage
    learnset MOVE_SHADOW_FORCE,74           // stab
    terminatelearnset


levelup SPECIES_PAWNIARD //MadebyDaotama
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_FALSE_SWIPE, 13
    learnset MOVE_TORMENT, 16
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_PAYBACK, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_METAL_SOUND, 30
    learnset MOVE_SLASH, 33
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_NIGHT_SLASH, 39
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_EMBARGO, 48
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_SWORDS_DANCE, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_GUILLOTINE, 60
    terminatelearnset


levelup SPECIES_BISHARP //MadebyDaotama
    learnset MOVE_METAL_BURST, 0
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_METAL_CLAW, 11
    learnset MOVE_FALSE_SWIPE, 14
    learnset MOVE_TORMENT, 17
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_SCARY_FACE, 22
    learnset MOVE_PAYBACK, 25
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_METAL_SOUND, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_NIGHT_SLASH, 40
    learnset MOVE_ROCK_SLIDE, 43
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_EMBARGO, 49
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_SWORDS_DANCE, 55
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_GUILLOTINE, 61
    terminatelearnset


levelup SPECIES_BOUFFALANT
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_PURSUIT, 3
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_ROUND, 9
    learnset MOVE_ROCK_SMASH, 11
    learnset MOVE_PAYBACK, 15
    learnset MOVE_BODY_SLAM, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_REVENGE, 30
    learnset MOVE_RETALIATE, 32
    learnset MOVE_BULK_UP, 36
    learnset MOVE_BELCH, 39
    learnset MOVE_STOMPING_TANTRUM, 42
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_MILK_DRINK, 48
    learnset MOVE_TAKE_DOWN, 51
    learnset MOVE_HIGH_HORSEPOWER, 53
    learnset MOVE_SWORDS_DANCE, 57
    learnset MOVE_WILD_CHARGE, 61
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_MEGAHORN, 66
    learnset MOVE_HEAD_CHARGE, 69
    terminatelearnset


levelup SPECIES_RUFFLET
    learnset MOVE_PECK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_HONE_CLAWS, 4 
    learnset MOVE_ROCK_THROW, 6 
    learnset MOVE_SAND_ATTACK, 8 
    learnset MOVE_QUICK_ATTACK, 12 
    learnset MOVE_WHIRLWIND, 14
    learnset MOVE_WING_ATTACK, 17 
    learnset MOVE_DRAGON_CLAW, 20 
    learnset MOVE_ROOST, 22 
    learnset MOVE_SLASH, 24 
    learnset MOVE_AERIAL_ACE, 26 
    learnset MOVE_CRUSH_CLAW, 28 
    learnset MOVE_DRILL_PECK, 31 
    learnset MOVE_DEFOG, 33 
    learnset MOVE_DUAL_WINGBEAT, 36 
    learnset MOVE_STEEL_WING, 39 
    learnset MOVE_TAKE_DOWN, 40 
    learnset MOVE_FLY, 43 
    learnset MOVE_NIGHT_SLASH, 46 
    learnset MOVE_BRAVE_BIRD, 48
    terminatelearnset


levelup SPECIES_BRAVIARY
    learnset MOVE_TAILWIND, 0
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HONE_CLAWS, 4
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_WHIRLWIND, 17
    learnset MOVE_WING_ATTACK, 22
    learnset MOVE_DRAGON_CLAW, 25
    learnset MOVE_ROOST, 29
    learnset MOVE_SLASH, 33
    learnset MOVE_AERIAL_ACE, 36
    learnset MOVE_CRUSH_CLAW, 39
    learnset MOVE_DRILL_PECK, 43
    learnset MOVE_DEFOG, 46
    learnset MOVE_DUAL_WINGBEAT, 48
    learnset MOVE_STEEL_WING, 50
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_FLY, 54
    learnset MOVE_NIGHT_SLASH, 56
    learnset MOVE_ZEN_HEADBUTT, 59
    learnset MOVE_BRAVE_BIRD, 62
    learnset MOVE_THRASH, 65
    learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_VULLABY //MadebyDaotama
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FLATTER, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_DEFOG, 10
    learnset MOVE_PLUCK, 13
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_AERIAL_ACE, 27
    learnset MOVE_IRON_DEFENSE, 30
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_HEAT_WAVE, 51
    learnset MOVE_SWAGGER, 54
    learnset MOVE_FOUL_PLAY, 57
    learnset MOVE_BRAVE_BIRD, 60
    terminatelearnset


levelup SPECIES_MANDIBUZZ //MadebyDaotama
    learnset MOVE_BONE_RUSH, 0
    learnset MOVE_BONE_RUSH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FLATTER, 5
    learnset MOVE_SNARL, 8
    learnset MOVE_DEFOG, 11
    learnset MOVE_PLUCK, 14
    learnset MOVE_AIR_CUTTER, 17
    learnset MOVE_TAUNT, 19
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_IRON_DEFENSE, 31
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_ROOST, 37
    learnset MOVE_U_TURN, 40
    learnset MOVE_DUAL_WINGBEAT, 43
    learnset MOVE_DARK_PULSE, 46
    learnset MOVE_TOXIC, 49
    learnset MOVE_HEAT_WAVE, 52
    learnset MOVE_SWAGGER, 55
    learnset MOVE_FOUL_PLAY, 58
    learnset MOVE_BRAVE_BIRD, 61
    learnset MOVE_SKY_ATTACK, 64
    terminatelearnset


levelup SPECIES_HEATMOR
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_INCINERATE, 1
    learnset MOVE_ODOR_SLEUTH, 6
    learnset MOVE_INCINERATE, 10
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_BIND, 21
    learnset MOVE_BUG_BITE, 24
    learnset MOVE_SNATCH, 26
    learnset MOVE_FLAME_BURST, 31
    learnset MOVE_SLASH, 32
    learnset MOVE_FIRE_SPIN, 34
    learnset MOVE_STOCKPILE, 36
    learnset MOVE_SWALLOW, 36
    learnset MOVE_SPIT_UP, 36
    learnset MOVE_FIRE_LASH, 39
    learnset MOVE_HONE_CLAWS, 40
    learnset MOVE_AMNESIA, 45
    learnset MOVE_FLAMETHROWER, 50
    learnset MOVE_INFERNO, 60
    learnset MOVE_FLARE_BLITZ, 60
    terminatelearnset


levelup SPECIES_DURANT
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 3
    learnset MOVE_VICE_GRIP, 6
    learnset MOVE_SHARPEN, 9
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_ENDURE, 19
    learnset MOVE_BEAT_UP, 21
    learnset MOVE_BULK_UP, 23  //if implemented, spicy extract should be in this slot
    learnset MOVE_ACROBATICS, 26
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_SKITTER_SMACK, 40
    learnset MOVE_DIG, 42
    learnset MOVE_STRENGTH, 45
    learnset MOVE_IRON_HEAD, 48
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_MINIMIZE, 54
    learnset MOVE_LUNGE, 57
    learnset MOVE_FIRST_IMPRESSION, 60
    learnset MOVE_ATTACK_ORDER, 64
    learnset MOVE_SUPERPOWER, 67
    learnset MOVE_GUILLOTINE, 70
    terminatelearnset


levelup SPECIES_DEINO
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 8
    learnset MOVE_DRAGON_BREATH, 10
    learnset MOVE_ROAR, 15
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SLAM, 28
    learnset MOVE_CRUNCH, 28
    learnset MOVE_WORK_UP, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_SCARY_FACE, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_DRAGON_RUSH, 47
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_NASTY_PLOT, 56
    learnset MOVE_OUTRAGE, 60
    terminatelearnset


levelup SPECIES_ZWEILOUS
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 9
    learnset MOVE_ROAR, 15
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_DRAGON_BREATH, 17
    learnset MOVE_SLAM, 28
    learnset MOVE_CRUNCH, 28
    learnset MOVE_WORK_UP, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_SCARY_FACE, 44
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_DRAGON_RUSH, 48
    learnset MOVE_HYPER_VOICE, 55
    learnset MOVE_NASTY_PLOT, 60
    learnset MOVE_OUTRAGE, 68
    terminatelearnset


levelup SPECIES_HYDREIGON
    learnset MOVE_TACKLE, 1
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_HYPER_VOICE, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 9
    learnset MOVE_ROAR, 15
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_DRAGON_BREATH, 17
    learnset MOVE_SLAM, 28
    learnset MOVE_CRUNCH, 28
    learnset MOVE_WORK_UP, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_SCARY_FACE, 44
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_DRAGON_RUSH, 48
    learnset MOVE_HYPER_VOICE, 57
    learnset MOVE_NASTY_PLOT, 60
    learnset MOVE_OUTRAGE, 73
    learnset MOVE_HYPER_BEAM, 76
    terminatelearnset


levelup SPECIES_LARVESTA
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_INFESTATION, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_EMBER, 10
    learnset MOVE_ABSORB, 13
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_FIRE_SPIN, 19
    learnset MOVE_FLAME_CHARGE, 22
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_BUG_BITE, 25
    learnset MOVE_SCREECH, 28
    learnset MOVE_HIDDEN_POWER, 31
    learnset MOVE_PIN_MISSILE, 34
    learnset MOVE_ANCIENT_POWER, 37
    learnset MOVE_FLAME_BURST, 40
    learnset MOVE_HEADBUTT, 43
    learnset MOVE_SIGNAL_BEAM, 46
    learnset MOVE_MYSTICAL_FIRE, 49
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_LEECH_LIFE, 55
    learnset MOVE_FLAMETHROWER, 58
    learnset MOVE_AMNESIA, 61
    learnset MOVE_BUG_BUZZ, 64
    learnset MOVE_FIRE_BLAST, 67
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_FLARE_BLITZ, 73
    terminatelearnset


levelup SPECIES_VOLCARONA
    learnset MOVE_QUIVER_DANCE, 0
    learnset MOVE_FIERY_DANCE, 0
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_FIERY_DANCE, 1
    learnset MOVE_SILVER_WIND, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_WHIRLWIND, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_INFESTATION, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_EMBER, 10
    learnset MOVE_ABSORB, 13
    learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_FIRE_SPIN, 19
    learnset MOVE_FLAME_CHARGE, 22
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_BUG_BITE, 25
    learnset MOVE_SCREECH, 28
    learnset MOVE_HIDDEN_POWER, 31
    learnset MOVE_PIN_MISSILE, 34
    learnset MOVE_ANCIENT_POWER, 37
    learnset MOVE_FLAME_BURST, 40
    learnset MOVE_HEADBUTT, 43
    learnset MOVE_SIGNAL_BEAM, 46
    learnset MOVE_MYSTICAL_FIRE, 49
    learnset MOVE_TAKE_DOWN, 52
    learnset MOVE_LEECH_LIFE, 55
    learnset MOVE_FLAMETHROWER, 58
    learnset MOVE_AMNESIA, 62
    learnset MOVE_BUG_BUZZ, 65
    learnset MOVE_FIRE_BLAST, 68
    learnset MOVE_DOUBLE_EDGE, 71
    learnset MOVE_SOLAR_BEAM, 74
    learnset MOVE_FLARE_BLITZ, 77
    terminatelearnset


levelup SPECIES_COBALION //MadebyDaotama
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_METAL_CLAW, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_QUICK_GUARD, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_MAGNET_BOMB, 18
    learnset MOVE_VACUUM_WAVE, 21
    learnset MOVE_RETALIATE, 24
    learnset MOVE_VOLT_SWITCH, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_METAL_BURST, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_WORK_UP, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_SACRED_SWORD, 48
    learnset MOVE_SWORDS_DANCE, 51
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_MEGAHORN, 63
    learnset MOVE_STEEL_BEAM, 66
    terminatelearnset


levelup SPECIES_TERRAKION //MadebyDaotama
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMACK_DOWN, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_QUICK_GUARD, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_RETALIATE, 24
    learnset MOVE_STOMPING_TANTRUM, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_SMART_STRIKE, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_WORK_UP, 42
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_SACRED_SWORD, 48
    learnset MOVE_SWORDS_DANCE, 51
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_MEGAHORN, 63
    learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_VIRIZION //MadebyDaotama
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_MAGICAL_LEAF, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_QUICK_GUARD, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_VACUUM_WAVE, 21
    learnset MOVE_RETALIATE, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_WORK_UP, 42
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_SACRED_SWORD, 48
    learnset MOVE_SWORDS_DANCE, 51
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_MEGAHORN, 63
    learnset MOVE_SOLAR_BLADE, 66
    terminatelearnset


levelup SPECIES_TORNADUS //MadebyDaotama
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ICY_WIND, 7
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 13
    learnset MOVE_REVENGE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_TAILWIND, 30
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HEAT_WAVE, 42
    learnset MOVE_GRASS_KNOT, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_HYPER_VOICE, 51
    learnset MOVE_HAMMER_ARM, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_HURRICANE, 60
    learnset MOVE_THRASH, 63
    learnset MOVE_BLEAKWIND_STORM, 66
    terminatelearnset


levelup SPECIES_THUNDURUS //MadebyDaotama
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 13
    learnset MOVE_REVENGE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_SHOCK_WAVE, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_VOLT_SWITCH, 27
    learnset MOVE_CHARGE, 30
    learnset MOVE_ZEN_HEADBUTT, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_GRASS_KNOT, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_HYPER_VOICE, 51
    learnset MOVE_HAMMER_ARM, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_THUNDER, 60
    learnset MOVE_THRASH, 63
    learnset MOVE_WILDBOLT_STORM, 66
    terminatelearnset


levelup SPECIES_RESHIRAM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_ANCIENT_POWER, 15
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_FLAMETHROWER, 31
    learnset MOVE_EXTRASENSORY, 32
    learnset MOVE_CRUNCH, 41
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_IMPRISON, 42
    learnset MOVE_FUSION_FLARE, 48
    learnset MOVE_NOBLE_ROAR, 64
    learnset MOVE_FIRE_BLAST, 70
    learnset MOVE_HYPER_VOICE, 72
    learnset MOVE_OUTRAGE, 82
    learnset MOVE_BLUE_FLARE, 93
    terminatelearnset


levelup SPECIES_ZEKROM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_ANCIENT_POWER, 15
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_THUNDERBOLT, 31
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_CRUNCH, 41
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_IMPRISON, 42
    learnset MOVE_FUSION_BOLT, 48
    learnset MOVE_NOBLE_ROAR, 64
    learnset MOVE_THUNDER, 70
    learnset MOVE_HYPER_VOICE, 72
    learnset MOVE_OUTRAGE, 82
    learnset MOVE_BOLT_STRIKE, 93
    terminatelearnset


levelup SPECIES_LANDORUS //MadebyDaotama
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_LEER, 4
    learnset MOVE_BLOCK, 10
    learnset MOVE_GUST, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_AIR_CUTTER, 24
    learnset MOVE_MUD_BOMB, 27
    learnset MOVE_IMPRISON, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_SANDSTORM, 48
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_HAMMER_ARM, 57
    learnset MOVE_FISSURE, 60
    learnset MOVE_OUTRAGE, 63
    learnset MOVE_SANDSEAR_STORM, 66
    terminatelearnset


levelup SPECIES_KYUREM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_SLASH, 8
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_DRAGON_PULSE, 24
    learnset MOVE_ICE_BEAM, 32
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_SCARY_FACE, 48
    learnset MOVE_BLIZZARD, 56
    learnset MOVE_IMPRISON, 64
    learnset MOVE_OUTRAGE, 72
    learnset MOVE_GLACIATE, 80
    learnset MOVE_SHEER_COLD, 88
    terminatelearnset


levelup SPECIES_KELDEO
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


levelup SPECIES_MELOETTA
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


levelup SPECIES_GENESECT
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


levelup SPECIES_CHESPIN //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 4
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_BITE, 10
    learnset MOVE_TRAILBLAZE, 13
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_THUNDER_PUNCH, 24
    learnset MOVE_SYNTHESIS, 27
    learnset MOVE_DRAIN_PUNCH, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_BULK_UP, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_PAIN_SPLIT, 45
    learnset MOVE_WOOD_HAMMER, 48
    terminatelearnset


levelup SPECIES_QUILLADIN //MadebyDaotama
    learnset MOVE_NEEDLE_ARM, 0
    learnset MOVE_NEEDLE_ARM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BITE, 11
    learnset MOVE_TRAILBLAZE, 14
    learnset MOVE_LEECH_SEED, 17
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_THUNDER_PUNCH, 25
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_DRAIN_PUNCH, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_SEED_BOMB, 37
    learnset MOVE_BULK_UP, 40
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_PAIN_SPLIT, 46
    learnset MOVE_WOOD_HAMMER, 49
    terminatelearnset


levelup SPECIES_CHESNAUGHT //MadebyDaotama
    learnset MOVE_SPIKY_SHIELD, 0
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 6
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_BITE, 12
    learnset MOVE_TRAILBLAZE, 15
    learnset MOVE_LEECH_SEED, 18
    learnset MOVE_PIN_MISSILE, 20
    learnset MOVE_BULLDOZE, 23
    learnset MOVE_THUNDER_PUNCH, 26
    learnset MOVE_SYNTHESIS, 29
    learnset MOVE_DRAIN_PUNCH, 32
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_SEED_BOMB, 38
    learnset MOVE_BULK_UP, 41
    learnset MOVE_BODY_PRESS, 44
    learnset MOVE_BODY_SLAM, 47
    learnset MOVE_PAIN_SPLIT, 50
    learnset MOVE_IRON_HEAD, 53
    learnset MOVE_STONE_EDGE, 56
    learnset MOVE_CLOSE_COMBAT, 59
    learnset MOVE_WOOD_HAMMER, 62
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


levelup SPECIES_SCATTERBUG //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_BUG_BITE, 7
    terminatelearnset


levelup SPECIES_SPEWPA //MadebyDaotama
    learnset MOVE_PROTECT, 0
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_BUG_BITE, 7
    learnset MOVE_HARDEN, 10
    terminatelearnset


levelup SPECIES_VIVILLON //MadebyDaotama
    learnset MOVE_GUST, 0
    learnset MOVE_GUST, 1
    learnset MOVE_POISON_POWDER, 1
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_BUG_BITE, 7
    learnset MOVE_HARDEN, 10
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 21
    learnset MOVE_DRAINING_KISS, 24
    learnset MOVE_AIR_CUTTER, 27
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_SIGNAL_BEAM, 33
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_SAFEGUARD, 39
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_QUIVER_DANCE, 45
    learnset MOVE_AIR_SLASH, 48
    learnset MOVE_ENERGY_BALL, 51
    learnset MOVE_POWDER, 54
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_HURRICANE, 60
    terminatelearnset


levelup SPECIES_LITLEO //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_WORK_UP, 7
    learnset MOVE_SWIFT, 10
    learnset MOVE_BITE, 13
    learnset MOVE_NOBLE_ROAR, 16
    learnset MOVE_FIRE_SPIN, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_ENDEAVOR, 27
    learnset MOVE_WILL_O_WISP, 30
    learnset MOVE_PSYCHIC_FANGS, 33
    learnset MOVE_FLAME_BURST, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_WILD_CHARGE, 45
    learnset MOVE_NASTY_PLOT, 48
    learnset MOVE_FLAMETHROWER, 51
    learnset MOVE_DARK_PULSE, 54
    learnset MOVE_FIRE_BLAST, 57
    learnset MOVE_SOLAR_BEAM, 60
    learnset MOVE_OVERHEAT, 63
    terminatelearnset


levelup SPECIES_PYROAR //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WORK_UP, 8
    learnset MOVE_SWIFT, 11
    learnset MOVE_BITE, 14
    learnset MOVE_NOBLE_ROAR, 17
    learnset MOVE_FIRE_SPIN, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_WILL_O_WISP, 31
    learnset MOVE_PSYCHIC_FANGS, 34
    learnset MOVE_FLAME_BURST, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_WILD_CHARGE, 46
    learnset MOVE_NASTY_PLOT, 49
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_DARK_PULSE, 55
    learnset MOVE_FIRE_BLAST, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_OVERHEAT, 64
    learnset MOVE_HYPER_BEAM, 67
    terminatelearnset


levelup SPECIES_FLABEBE
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 22
    learnset MOVE_WISH, 25
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_CHARM, 34
    learnset MOVE_LEAF_TORNADO, 37
    learnset MOVE_LAST_RESORT, 40
    learnset MOVE_GRASSY_TERRAIN, 43
    learnset MOVE_MISTY_TERRAIN, 46
    learnset MOVE_HIDDEN_POWER, 49
    learnset MOVE_NATURE_POWER, 52
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_AROMATHERAPY, 61
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_PETAL_DANCE, 67
    learnset MOVE_SOLAR_BEAM, 70
    terminatelearnset


levelup SPECIES_FLOETTE
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 23
    learnset MOVE_WISH, 26
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_DRAINING_KISS, 32
    learnset MOVE_CHARM, 35
    learnset MOVE_LEAF_TORNADO, 38
    learnset MOVE_LAST_RESORT, 41
    learnset MOVE_GRASSY_TERRAIN, 44
    learnset MOVE_MISTY_TERRAIN, 47
    learnset MOVE_HIDDEN_POWER, 50
    learnset MOVE_NATURE_POWER, 53
    learnset MOVE_DAZZLING_GLEAM, 56
    learnset MOVE_PETAL_BLIZZARD, 59
    learnset MOVE_AROMATHERAPY, 62
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_PETAL_DANCE, 68
    learnset MOVE_SOLAR_BEAM, 71
    terminatelearnset


levelup SPECIES_FLORGES
    learnset MOVE_FLORAL_HEALING, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_WISH, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_DRAINING_KISS, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_LEAF_TORNADO, 40
    learnset MOVE_LAST_RESORT, 43
    learnset MOVE_GRASSY_TERRAIN, 46
    learnset MOVE_MISTY_TERRAIN, 49
    learnset MOVE_HIDDEN_POWER, 52
    learnset MOVE_NATURE_POWER, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_PETAL_BLIZZARD, 61
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_MOONBLAST, 67
    learnset MOVE_PETAL_DANCE, 70
    learnset MOVE_SOLAR_BEAM, 73
    terminatelearnset


levelup SPECIES_SKIDDO //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_VINE_WHIP, 4
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_WORRY_SEED, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_REST, 24
    learnset MOVE_STOMPING_TANTRUM, 27
    learnset MOVE_MILK_DRINK, 30
    learnset MOVE_HORN_LEECH, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_BULK_UP, 39
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_LEAF_BLADE, 51
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_WOOD_HAMMER, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_HEADLONG_RUSH, 66
    terminatelearnset


levelup SPECIES_GOGOAT //MadebyDaotama
    learnset MOVE_AERIAL_ACE, 0
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_TAIL_WHIP, 8
    learnset MOVE_RAZOR_LEAF, 11
    learnset MOVE_LEECH_SEED, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_WORRY_SEED, 19
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_REST, 25
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_MILK_DRINK, 31
    learnset MOVE_HORN_LEECH, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_BULK_UP, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_TAKE_DOWN, 46
    learnset MOVE_ZEN_HEADBUTT, 49
    learnset MOVE_LEAF_BLADE, 52
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_WOOD_HAMMER, 61
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_HEADLONG_RUSH, 67
    terminatelearnset


levelup SPECIES_PANCHAM
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_COMET_PUNCH, 7
    learnset MOVE_WORK_UP, 10
    learnset MOVE_KARATE_CHOP, 13
    learnset MOVE_TAUNT, 16
    learnset MOVE_CIRCLE_THROW, 19
    learnset MOVE_ARM_THRUST, 22
    learnset MOVE_LOW_SWEEP, 25
    learnset MOVE_COVET, 28
    learnset MOVE_DIZZY_PUNCH, 31
    learnset MOVE_POWER_UP_PUNCH, 34
    learnset MOVE_SLASH, 37
    learnset MOVE_VITAL_THROW, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_DRAIN_PUNCH, 49
    learnset MOVE_PLAY_ROUGH, 52
    learnset MOVE_ENTRAINMENT, 55
    learnset MOVE_SKY_UPPERCUT, 58
    learnset MOVE_PARTING_SHOT, 61
    learnset MOVE_CLOSE_COMBAT, 64
    terminatelearnset


levelup SPECIES_PANGORO
    learnset MOVE_BRUTAL_SWING, 0
    learnset MOVE_DETECT, 0
    learnset MOVE_BRUTAL_SWING, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_COMET_PUNCH, 7
    learnset MOVE_WORK_UP, 10
    learnset MOVE_KARATE_CHOP, 13
    learnset MOVE_TAUNT, 16
    learnset MOVE_CIRCLE_THROW, 19
    learnset MOVE_ARM_THRUST, 22
    learnset MOVE_LOW_SWEEP, 25
    learnset MOVE_COVET, 28
    learnset MOVE_DIZZY_PUNCH, 31
    learnset MOVE_POWER_UP_PUNCH, 34
    learnset MOVE_SLASH, 37
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_VITAL_THROW, 43
    learnset MOVE_CRUNCH, 46
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_DRAIN_PUNCH, 52
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_ENTRAINMENT, 58
    learnset MOVE_NIGHT_SLASH, 61
    learnset MOVE_SKY_UPPERCUT, 64
    learnset MOVE_PARTING_SHOT, 67
    learnset MOVE_HAMMER_ARM, 70
    learnset MOVE_CLOSE_COMBAT, 73
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


levelup SPECIES_ESPURR //MadebyDaotama
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FAKE_OUT, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_COVET, 13
    learnset MOVE_TICKLE, 16
    learnset MOVE_LIGHT_SCREEN, 18
    learnset MOVE_REFLECT, 18
    learnset MOVE_PSYBEAM, 21
    terminatelearnset


levelup SPECIES_MEOWSTIC //MadebyDaotama
    learnset MOVE_MEAN_LOOK, 0
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FAKE_OUT, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_COVET, 13
    learnset MOVE_TICKLE, 16
    learnset MOVE_LIGHT_SCREEN, 18
    learnset MOVE_REFLECT, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_DRAINING_KISS, 27
    learnset MOVE_ROLE_PLAY, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_SIGNAL_BEAM, 39
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_IMPRISON, 45
    learnset MOVE_QUICK_GUARD, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_PSYCHIC_TERRAIN, 57
    learnset MOVE_FUTURE_SIGHT, 60
    terminatelearnset


levelup SPECIES_HONEDGE
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_METAL_CLAW, 3
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_CUT, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_AIR_CUTTER, 19
    learnset MOVE_MAGNET_BOMB, 23
    learnset MOVE_OMINOUS_WIND, 26
    learnset MOVE_SCREECH, 29
    learnset MOVE_SLASH, 33
    learnset MOVE_SMART_STRIKE, 36
    learnset MOVE_SECRET_SWORD, 38
    learnset MOVE_REFLECT, 42
    learnset MOVE_SHADOW_CLAW, 45
    learnset MOVE_BRICK_BREAK, 48
    learnset MOVE_AUTOTOMIZE, 51
    learnset MOVE_PSYCHO_CUT, 55
    learnset MOVE_IRON_TAIL, 59
    learnset MOVE_SHIFT_GEAR, 62
    terminatelearnset


levelup SPECIES_DOUBLADE
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_METAL_CLAW, 3
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_CUT, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_AIR_CUTTER, 19
    learnset MOVE_MAGNET_BOMB, 23
    learnset MOVE_OMINOUS_WIND, 26
    learnset MOVE_SCREECH, 30
    learnset MOVE_SLASH, 33
    learnset MOVE_SWORDS_DANCE, 36
    learnset MOVE_SECRET_SWORD, 38
    learnset MOVE_SOLAR_BLADE, 42
    learnset MOVE_SHADOW_CLAW, 45
    learnset MOVE_BRICK_BREAK, 48
    learnset MOVE_AUTOTOMIZE, 51
    learnset MOVE_PSYCHO_CUT, 55
    learnset MOVE_IRON_TAIL, 59
    learnset MOVE_SHIFT_GEAR, 62
    terminatelearnset


levelup SPECIES_AEGISLASH
    learnset MOVE_KINGS_SHIELD, 0
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_METAL_CLAW, 3
    learnset MOVE_QUICK_GUARD, 6
    learnset MOVE_SHOCK_WAVE, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_AIR_CUTTER, 19
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_OMINOUS_WIND, 26
    learnset MOVE_WIDE_GUARD, 29
    learnset MOVE_SHADOW_CLAW, 33
    learnset MOVE_SOLAR_BLADE, 38
    learnset MOVE_FLASH_CANNON, 42
    learnset MOVE_SHADOW_BALL, 45
    learnset MOVE_BRICK_BREAK, 48
    learnset MOVE_AUTOTOMIZE, 51
    learnset MOVE_PSYCHO_CUT, 55
    learnset MOVE_IRON_TAIL, 59
    learnset MOVE_SHIFT_GEAR, 62
    terminatelearnset


levelup SPECIES_SPRITZEE //MadebyDaotama
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_DRAINING_KISS, 10
    learnset MOVE_AROMATHERAPY, 13
    learnset MOVE_GRAVITY, 16
    learnset MOVE_ATTRACT, 18
    learnset MOVE_FLAIL, 21
    learnset MOVE_MISTY_TERRAIN, 24
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_CHARM, 30
    learnset MOVE_CALM_MIND, 33
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_SKILL_SWAP, 39
    learnset MOVE_PSYCHIC, 42
    terminatelearnset


levelup SPECIES_AROMATISSE //MadebyDaotama
    learnset MOVE_AROMATIC_MIST, 0
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_DRAINING_KISS, 11
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_GRAVITY, 17
    learnset MOVE_ATTRACT, 19
    learnset MOVE_FLAIL, 22
    learnset MOVE_MISTY_TERRAIN, 25
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_CHARM, 31
    learnset MOVE_DRAIN_PUNCH, 34
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_PSYSHOCK, 40
    learnset MOVE_HEAL_PULSE, 43
    learnset MOVE_DAZZLING_GLEAM, 46
    learnset MOVE_PSYCH_UP, 49
    learnset MOVE_THUNDERBOLT, 52
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_SKILL_SWAP, 58
    learnset MOVE_PSYCHIC, 61
    learnset MOVE_MISTY_EXPLOSION, 64
    terminatelearnset


levelup SPECIES_SWIRLIX //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_AROMATHERAPY, 10
    learnset MOVE_DRAINING_KISS, 13
    learnset MOVE_FAKE_TEARS, 16
    learnset MOVE_ROUND, 18
    learnset MOVE_STRING_SHOT, 21
    learnset MOVE_COTTON_SPORE, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_WISH, 30
    learnset MOVE_ENERGY_BALL, 33
    learnset MOVE_COPYCAT, 36
    learnset MOVE_EXTRASENSORY, 39
    learnset MOVE_COTTON_GUARD, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_REFLECT, 48
    learnset MOVE_MOONBLAST, 51
    learnset MOVE_FLAMETHROWER, 54
    learnset MOVE_SAFEGUARD, 57
    learnset MOVE_MISTY_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_SLURPUFF //MadebyDaotama
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_AROMATHERAPY, 10
    learnset MOVE_DRAINING_KISS, 13
    learnset MOVE_FAKE_TEARS, 16
    learnset MOVE_ROUND, 18
    learnset MOVE_STRING_SHOT, 21
    learnset MOVE_COTTON_SPORE, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_WISH, 30
    learnset MOVE_ENERGY_BALL, 33
    learnset MOVE_COPYCAT, 36
    learnset MOVE_EXTRASENSORY, 39
    learnset MOVE_COTTON_GUARD, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_REFLECT, 48
    learnset MOVE_MOONBLAST, 51
    learnset MOVE_FLAMETHROWER, 54
    learnset MOVE_SAFEGUARD, 57
    learnset MOVE_MISTY_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_INKAY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PECK, 4
    learnset MOVE_PURSUIT, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_CONSTRICT, 13
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_PAYBACK, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_PLUCK, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_REFLECT, 31
    learnset MOVE_BRUTAL_SWING, 34
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_TOPSY_TURVY, 40
    learnset MOVE_LIGHT_SCREEN, 43
    learnset MOVE_SLASH, 46
    learnset MOVE_SWAGGER, 49
    learnset MOVE_KNOCK_OFF, 52
    learnset MOVE_SWITCHEROO, 55
    learnset MOVE_EXTRASENSORY, 58
    learnset MOVE_NIGHT_SLASH, 61
    learnset MOVE_PSYCHIC, 64
    learnset MOVE_DARK_PULSE, 67
    learnset MOVE_FOUL_PLAY, 70
    learnset MOVE_SUPERPOWER, 73
    terminatelearnset


levelup SPECIES_MALAMAR
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_REVERSE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PECK, 4
    learnset MOVE_PURSUIT, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_CONSTRICT, 13
    learnset MOVE_HYPNOSIS, 16
    learnset MOVE_PAYBACK, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_PLUCK, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_REFLECT, 33
    learnset MOVE_BRUTAL_SWING, 36
    learnset MOVE_PSYCHO_CUT, 39
    learnset MOVE_TOPSY_TURVY, 42
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_SLASH, 48
    learnset MOVE_SWAGGER, 51
    learnset MOVE_KNOCK_OFF, 54
    learnset MOVE_SWITCHEROO, 57
    learnset MOVE_EXTRASENSORY, 60
    learnset MOVE_NIGHT_SLASH, 63
    learnset MOVE_PSYCHIC, 66
    learnset MOVE_DARK_PULSE, 69
    learnset MOVE_FOUL_PLAY, 72
    learnset MOVE_SUPERPOWER, 75
    terminatelearnset


levelup SPECIES_BINACLE
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_FURY_SWIPES, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_CUT, 18
    learnset MOVE_CLAMP, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_KARATE_CHOP, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_BULLDOZE, 33
    learnset MOVE_ROCK_POLISH, 36
    learnset MOVE_SLASH, 39
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_RAZOR_SHELL, 45
    learnset MOVE_SHELL_SMASH, 48
    learnset MOVE_X_SCISSOR, 52
    learnset MOVE_TAUNT, 55
    learnset MOVE_LEAF_BLADE, 59
    learnset MOVE_CROSS_CHOP, 63
    learnset MOVE_HORN_DRILL, 66
    learnset MOVE_GUILLOTINE, 69
    terminatelearnset


levelup SPECIES_BARBARACLE
    learnset MOVE_SKULL_BASH, 0
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_FALSE_SWIPE, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_FOCUS_ENERGY, 12
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_CUT, 18
    learnset MOVE_CLAMP, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_KARATE_CHOP, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_BULLDOZE, 33
    learnset MOVE_ROCK_POLISH, 36
    learnset MOVE_SLASH, 39
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_RAZOR_SHELL, 45
    learnset MOVE_SHELL_SMASH, 48
    learnset MOVE_X_SCISSOR, 52
    learnset MOVE_TAUNT, 55
    learnset MOVE_LEAF_BLADE, 59
    learnset MOVE_CRABHAMMER, 63
    learnset MOVE_STONE_EDGE, 66
    learnset MOVE_GUILLOTINE, 69
    terminatelearnset


levelup SPECIES_SKRELP
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_FEINT_ATTACK, 6
    learnset MOVE_ACID, 9
    learnset MOVE_TAIL_WHIP, 12
    learnset MOVE_BUBBLE, 15
    learnset MOVE_CAMOUFLAGE, 18
    learnset MOVE_POISON_TAIL, 21
    learnset MOVE_TWISTER, 24
    learnset MOVE_WATER_PULSE, 27
    learnset MOVE_THIEF, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_DRAGON_TAIL, 36
    learnset MOVE_ACID_ARMOR, 39
    learnset MOVE_FLIP_TURN, 42
    learnset MOVE_RAIN_DANCE, 45
    learnset MOVE_THUNDERBOLT, 48
    learnset MOVE_TOXIC_SPIKES, 51
    learnset MOVE_AQUA_TAIL, 54
    learnset MOVE_DRAGON_PULSE, 57
    learnset MOVE_PLAY_ROUGH, 60
    learnset MOVE_OUTRAGE, 63
    learnset MOVE_HYDRO_PUMP, 66
    learnset MOVE_GUNK_SHOT, 69
    terminatelearnset


levelup SPECIES_DRAGALGE
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_FEINT_ATTACK, 6
    learnset MOVE_ACID, 9
    learnset MOVE_TAIL_WHIP, 12
    learnset MOVE_BUBBLE, 16
    learnset MOVE_CAMOUFLAGE, 18
    learnset MOVE_POISON_TAIL, 20
    learnset MOVE_TWISTER, 24
    learnset MOVE_WATER_PULSE, 28
    learnset MOVE_THIEF, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_DRAGON_TAIL, 36
    learnset MOVE_ACID_ARMOR, 39
    learnset MOVE_SLUDGE_BOMB, 42
    learnset MOVE_RAIN_DANCE, 46
    learnset MOVE_THUNDERBOLT, 48
    learnset MOVE_TOXIC_SPIKES, 51
    learnset MOVE_AQUA_TAIL, 53
    learnset MOVE_DRAGON_PULSE, 56
    learnset MOVE_PLAY_ROUGH, 60
    learnset MOVE_DRACO_METEOR, 63
    learnset MOVE_HYDRO_PUMP, 65
    learnset MOVE_GUNK_SHOT, 69
    terminatelearnset


levelup SPECIES_CLAUNCHER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 3
    learnset MOVE_WATER_SPORT, 6
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_CLAMP, 11
    learnset MOVE_WITHDRAW, 14
    learnset MOVE_SPIKE_CANNON, 17
    learnset MOVE_CHILLING_WATER, 20
    learnset MOVE_ICE_SHARD, 24
    learnset MOVE_SMACK_DOWN, 27
    learnset MOVE_IRON_DEFENSE, 30
    learnset MOVE_WATER_PULSE, 33
    learnset MOVE_POUNCE, 37
    learnset MOVE_PROTECT, 40
    learnset MOVE_FLIP_TURN, 42
    learnset MOVE_DIVE, 45
    learnset MOVE_BOUNCE, 47
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_SUBSTITUTE, 53
    learnset MOVE_LIFE_DEW, 54
    learnset MOVE_SCALD, 58
    learnset MOVE_DRAGON_PULSE, 61
    learnset MOVE_CRABHAMMER, 64
    learnset MOVE_BOOMBURST, 66
    learnset MOVE_HYDRO_PUMP, 69
    learnset MOVE_SPLASH, 100
    terminatelearnset


levelup SPECIES_CLAWITZER
    learnset MOVE_DARK_PULSE, 0
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_VICE_GRIP, 3
    learnset MOVE_WATER_SPORT, 6
    learnset MOVE_SUPERSONIC, 9
    learnset MOVE_CLAMP, 11
    learnset MOVE_WITHDRAW, 14
    learnset MOVE_SPIKE_CANNON, 17
    learnset MOVE_CHILLING_WATER, 20
    learnset MOVE_ICE_SHARD, 24
    learnset MOVE_SMACK_DOWN, 27
    learnset MOVE_IRON_DEFENSE, 30
    learnset MOVE_WATER_PULSE, 33
    learnset MOVE_POUNCE, 37
    learnset MOVE_PROTECT, 40
    learnset MOVE_FLIP_TURN, 44
    learnset MOVE_DIVE, 47
    learnset MOVE_BOUNCE, 49
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_SUBSTITUTE, 55
    learnset MOVE_RAIN_DANCE, 56
    learnset MOVE_SCALD, 60
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_CRABHAMMER, 66
    learnset MOVE_BOOMBURST, 68
    learnset MOVE_HYDRO_PUMP, 71
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
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_SCARY_FACE, 10
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_BITE, 16
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_ICE_FANG, 22
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_BREAKING_SWIPE, 30
    learnset MOVE_THUNDER_FANG, 33
    learnset MOVE_CHARM, 36
    learnset MOVE_BULLDOZE, 38
    learnset MOVE_STEALTH_ROCK, 40
    learnset MOVE_ROCK_SLIDE, 43
    learnset MOVE_CRUNCH, 46
    learnset MOVE_OUTRAGE, 49
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_DRAGON_DANCE, 54
    learnset MOVE_DRAGON_CLAW, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_HEAD_SMASH, 67
    learnset MOVE_HORN_DRILL, 70
    terminatelearnset


levelup SPECIES_TYRANTRUM
    learnset MOVE_OUTRAGE, 0
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_TACKLE, 1
    learnset MOVE_PSYCHIC_FANGS, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_BITE, 16
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_BREAKING_SWIPE, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_SUBMISSION, 38
    learnset MOVE_STEALTH_ROCK, 40
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_CRUNCH, 47
    learnset MOVE_PLAY_ROUGH, 50
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_DRAGON_DANCE, 55
    learnset MOVE_DRAGON_CLAW, 58
    learnset MOVE_EARTHQUAKE, 61
    learnset MOVE_DOUBLE_EDGE, 65
    learnset MOVE_HEAD_SMASH, 68
    learnset MOVE_SUPERPOWER, 72
    learnset MOVE_HORN_DRILL, 75
    terminatelearnset


levelup SPECIES_AMAURA //MadebyDaotama
    learnset MOVE_GROWL, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ENCORE, 4
    learnset MOVE_ANCIENT_POWER, 7
    learnset MOVE_PROTECT, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_ROUND, 18
    learnset MOVE_MIST, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_STOMPING_TANTRUM, 30
    learnset MOVE_ZEN_HEADBUTT, 33
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_HAIL, 42
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_LIGHT_SCREEN, 48
    learnset MOVE_REFLECT, 48
    learnset MOVE_POWER_GEM, 51
    learnset MOVE_DISCHARGE, 54
    learnset MOVE_EARTH_POWER, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_METEOR_BEAM, 63
    learnset MOVE_THUNDER, 66
    learnset MOVE_BOOMBURST, 69
    terminatelearnset


levelup SPECIES_AURORUS //MadebyDaotama
    learnset MOVE_FREEZE_DRY, 0
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ENCORE, 5
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_PROTECT, 11
    learnset MOVE_ICY_WIND, 14
    learnset MOVE_ROCK_TOMB, 17
    learnset MOVE_ROUND, 19
    learnset MOVE_MIST, 22
    learnset MOVE_AURORA_BEAM, 25
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_STOMPING_TANTRUM, 31
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_HAIL, 43
    learnset MOVE_HYPER_VOICE, 46
    learnset MOVE_LIGHT_SCREEN, 49
    learnset MOVE_REFLECT, 49
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_DISCHARGE, 55
    learnset MOVE_EARTH_POWER, 58
    learnset MOVE_BLIZZARD, 61
    learnset MOVE_METEOR_BEAM, 64
    learnset MOVE_THUNDER, 67
    learnset MOVE_BOOMBURST, 70
    terminatelearnset


levelup SPECIES_SYLVEON
    learnset MOVE_SWEET_SCENT, 0
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_BITE, 19
    learnset MOVE_DISARMING_VOICE, 22
    learnset MOVE_COVET, 25
    learnset MOVE_SWEET_KISS, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_HEART_STAMP, 34
    learnset MOVE_PSYBEAM, 37
    learnset MOVE_HELPING_HAND, 40
    learnset MOVE_ALLURING_VOICE, 43
    learnset MOVE_CHARM, 46
    learnset MOVE_SPARKLY_SWIRL, 49
    learnset MOVE_LAST_RESORT, 52
    learnset MOVE_LIGHT_SCREEN, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_HEAL_PULSE, 61
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_MOONBLAST, 67
    learnset MOVE_DOUBLE_EDGE, 70
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


levelup SPECIES_DEDENNE //MadebyDaotama
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_CHARGE, 10
    learnset MOVE_COVET, 13
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_CHARM, 18
    learnset MOVE_TRAILBLAZE, 21
    learnset MOVE_PARABOLIC_CHARGE, 24
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_VOLT_SWITCH, 30
    learnset MOVE_DRAINING_KISS, 33
    learnset MOVE_REST, 36
    learnset MOVE_SNORE, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_MAGNET_RISE, 45
    learnset MOVE_DISCHARGE, 48
    learnset MOVE_ENERGY_BALL, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_THUNDERBOLT, 57
    learnset MOVE_ENTRAINMENT, 60
    learnset MOVE_THUNDER, 63
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


levelup SPECIES_KLEFKI //MadebyDaotama
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FAIRY_WIND, 7
    learnset MOVE_MIRROR_SHOT, 10
    learnset MOVE_TORMENT, 13
    learnset MOVE_FAIRY_LOCK, 16
    learnset MOVE_SPIKES, 18
    learnset MOVE_METAL_SOUND, 21
    learnset MOVE_DRAINING_KISS, 24
    learnset MOVE_RECYCLE, 27
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_IMPRISON, 33
    learnset MOVE_SWAGGER, 36
    learnset MOVE_FOUL_PLAY, 39
    learnset MOVE_FLASH_CANNON, 42
    learnset MOVE_MAGIC_ROOM, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_HEAL_BLOCK, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_MOONBLAST, 57
    learnset MOVE_STEEL_BEAM, 60
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
    learnset MOVE_POWDER_SNOW, 3
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_ICE_BALL, 11
    learnset MOVE_CURSE, 14
    learnset MOVE_ROCK_BLAST, 17
    learnset MOVE_BITE, 19
    learnset MOVE_IRON_DEFENSE, 22
    learnset MOVE_AVALANCHE, 26
    learnset MOVE_WATER_PULSE, 29
    learnset MOVE_GRASSY_GLIDE, 32
    learnset MOVE_CHILLING_WATER, 35
    learnset MOVE_MIRROR_COAT, 37
    learnset MOVE_CROSS_POISON, 40
    learnset MOVE_ICE_SPINNER, 44
    learnset MOVE_RECOVER, 47
    learnset MOVE_CRUNCH, 50
    learnset MOVE_ROCK_SLIDE, 53
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_HAIL, 59
    learnset MOVE_IRON_HEAD, 61
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_BLIZZARD, 67
    learnset MOVE_STONE_EDGE, 70
    terminatelearnset


levelup SPECIES_AVALUGG
    learnset MOVE_BODY_SLAM, 1
    learnset MOVE_SLEEP_TALK, 1
    learnset MOVE_WIDE_GUARD, 4
    learnset MOVE_HAIL, 7
    learnset MOVE_MIRROR_COAT, 11
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_STRENGTH, 24
    learnset MOVE_ICE_FANG, 27
    learnset MOVE_IRON_DEFENSE, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_PROTECT, 38
    learnset MOVE_ICICLE_CRASH, 43
    learnset MOVE_BODY_PRESS, 47 // 184 base defense. BODY PRESS GAMING. LETSSS GOOOO
    learnset MOVE_REST, 51
    learnset MOVE_SURF, 54
    learnset MOVE_HEAVY_SLAM, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_STONE_EDGE, 63
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
    learnset MOVE_PECK, 1 
    learnset MOVE_LEAFAGE, 1 
    learnset MOVE_GROWL, 1
    learnset MOVE_SHADOW_SNEAK, 4
    learnset MOVE_DEFOG, 6
    learnset MOVE_MEMENTO, 9 
    learnset MOVE_RAZOR_LEAF, 12 
    learnset MOVE_PLUCK, 15
    learnset MOVE_STEEL_WING, 18
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_FEATHER_DANCE, 23
    learnset MOVE_DUAL_WINGBEAT, 25
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_WORRY_SEED, 31
    learnset MOVE_GIGA_DRAIN, 33
    terminatelearnset

levelup SPECIES_DARTRIX
    learnset MOVE_PECK, 1 
    learnset MOVE_LEAFAGE, 1 
    learnset MOVE_GROWL, 1
    learnset MOVE_SHADOW_SNEAK, 4
    learnset MOVE_DEFOG, 6
    learnset MOVE_MEMENTO, 9 
    learnset MOVE_RAZOR_LEAF, 12 
    learnset MOVE_PLUCK, 15
    learnset MOVE_STEEL_WING, 18
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_FEATHER_DANCE, 23
    learnset MOVE_DUAL_WINGBEAT, 25
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_WORRY_SEED, 31
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_SKY_ATTACK, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_LEAF_BLADE, 48
    terminatelearnset

levelup SPECIES_DECIDUEYE
    learnset MOVE_SPIRIT_SHACKLE, 0
    learnset MOVE_SPIRIT_SHACKLE, 1 
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_PECK, 1 
    learnset MOVE_LEAFAGE, 1 
    learnset MOVE_GROWL, 1
    learnset MOVE_SHADOW_SNEAK, 4
    learnset MOVE_DEFOG, 6
    learnset MOVE_MEMENTO, 9 
    learnset MOVE_RAZOR_LEAF, 12 
    learnset MOVE_PLUCK, 15
    learnset MOVE_STEEL_WING, 18
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_FEATHER_DANCE, 23
    learnset MOVE_DUAL_WINGBEAT, 25
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_WORRY_SEED, 31
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_TRIPLE_ARROWS, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_LEAF_BLADE, 48
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_THOUSAND_ARROWS, 55
    learnset MOVE_LEAF_STORM, 58
    learnset MOVE_POLTERGEIST, 62
    learnset MOVE_BRAVE_BIRD, 65
    learnset MOVE_U_TURN, 68
    learnset MOVE_TAILWIND, 72
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
    learnset MOVE_GROWL, 4
    learnset MOVE_ECHOED_VOICE, 7
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_SUPERSONIC, 13
    learnset MOVE_PLUCK, 16
    learnset MOVE_ROOST, 18
    learnset MOVE_FURY_ATTACK, 21
    learnset MOVE_SCREECH, 24
    learnset MOVE_AERIAL_ACE, 27
    learnset MOVE_BULLET_SEED, 30
    learnset MOVE_FEATHER_DANCE, 33
    learnset MOVE_BRICK_BREAK, 36
    terminatelearnset


levelup SPECIES_TRUMBEAK
    learnset MOVE_ROCK_BLAST, 0
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_ROCK_SMASH, 11
    learnset MOVE_SUPERSONIC, 14
    learnset MOVE_PLUCK, 17
    learnset MOVE_ROOST, 19
    learnset MOVE_FURY_ATTACK, 22
    learnset MOVE_SCREECH, 25
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_FEATHER_DANCE, 34
    learnset MOVE_BRICK_BREAK, 37
    terminatelearnset


levelup SPECIES_TOUCANNON
    learnset MOVE_BEAK_BLAST, 0
    learnset MOVE_BEAK_BLAST, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 6
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_SUPERSONIC, 15
    learnset MOVE_PLUCK, 18
    learnset MOVE_ROOST, 20
    learnset MOVE_FURY_ATTACK, 23
    learnset MOVE_SCREECH, 26
    learnset MOVE_AERIAL_ACE, 29
    learnset MOVE_BULLET_SEED, 32
    learnset MOVE_FEATHER_DANCE, 35
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_DRILL_PECK, 41
    learnset MOVE_SWORDS_DANCE, 44
    learnset MOVE_KNOCK_OFF, 47
    learnset MOVE_BODY_SLAM, 50
    learnset MOVE_TEMPER_FLARE, 53
    learnset MOVE_U_TURN, 56
    learnset MOVE_GUNK_SHOT, 59
    learnset MOVE_DOUBLE_EDGE, 62
    learnset MOVE_BRAVE_BIRD, 65
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
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_INFESTATION, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_ELECTROWEB, 16
    learnset MOVE_BITE, 19
    learnset MOVE_VISE_GRIP, 22
    learnset MOVE_BUG_BITE, 25
    learnset MOVE_SPARK, 28
    learnset MOVE_STICKY_WEB, 31
    learnset MOVE_SKITTER_SMACK, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_LEECH_LIFE, 40
    learnset MOVE_DIG, 43
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_CRUNCH, 49
    learnset MOVE_LUNGE, 52
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_GUILLOTINE, 58
    terminatelearnset


levelup SPECIES_CHARJABUG
    learnset MOVE_CHARGE, 0
    learnset MOVE_CHARGE, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_INFESTATION, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_ELECTROWEB, 16
    learnset MOVE_BITE, 19
    learnset MOVE_VISE_GRIP, 23
    learnset MOVE_BUG_BITE, 26
    learnset MOVE_SPARK, 29
    learnset MOVE_STICKY_WEB, 32
    learnset MOVE_CHARGE_BEAM, 35
    learnset MOVE_SKITTER_SMACK, 38
    learnset MOVE_CRUNCH, 41
    learnset MOVE_THUNDER_FANG, 44
    learnset MOVE_LEECH_LIFE, 47
    learnset MOVE_DIG, 50
    learnset MOVE_DISCHARGE, 53
    learnset MOVE_X_SCISSOR, 56
    learnset MOVE_CRUNCH, 59
    learnset MOVE_HYPER_FANG, 62
    learnset MOVE_WILD_CHARGE, 65
    learnset MOVE_LUNGE, 68
    learnset MOVE_BUG_BUZZ, 71
    terminatelearnset


levelup SPECIES_VIKAVOLT
    learnset MOVE_THUNDERBOLT, 0
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_FLY, 1
    learnset MOVE_LOCK_ON, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_INFESTATION, 4
    learnset MOVE_STRING_SHOT, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_ELECTROWEB, 16
    learnset MOVE_BITE, 19
    learnset MOVE_VISE_GRIP, 24
    learnset MOVE_BUG_BITE, 27
    learnset MOVE_SPARK, 30
    learnset MOVE_STICKY_WEB, 33
    learnset MOVE_CHARGE_BEAM, 36
    learnset MOVE_SKITTER_SMACK, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_THUNDER_FANG, 45
    learnset MOVE_LEECH_LIFE, 48
    learnset MOVE_DIG, 51
    learnset MOVE_DISCHARGE, 54
    learnset MOVE_X_SCISSOR, 57
    learnset MOVE_CRUNCH, 60
    learnset MOVE_HYPER_FANG, 63
    learnset MOVE_WILD_CHARGE, 66
    learnset MOVE_LUNGE, 69
    learnset MOVE_BUG_BUZZ, 72
    learnset MOVE_ZAP_CANNON, 75
    learnset MOVE_GUILLOTINE, 78
    terminatelearnset


levelup SPECIES_CRABRAWLER
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_BUBBLE, 3
    learnset MOVE_LEER, 6
    learnset MOVE_PAYBACK, 9
    learnset MOVE_WORK_UP, 12
    learnset MOVE_ENDEAVOR, 15
    learnset MOVE_POWER_UP_PUNCH, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_CROSS_CHOP, 27
    learnset MOVE_BULK_UP, 30
    learnset MOVE_JET_PUNCH, 33
    learnset MOVE_ROCK_TOMB, 36
    learnset MOVE_SLASH, 39
    learnset MOVE_CROSS_POISON, 42
    learnset MOVE_AQUA_CUTTER, 45
    learnset MOVE_ICE_PUNCH, 48
    learnset MOVE_THUNDER_PUNCH, 51
    learnset MOVE_IRON_DEFENSE, 54
    learnset MOVE_SHADOW_PUNCH, 57
    learnset MOVE_ZEN_HEADBUTT, 60
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_CRABHAMMER, 66
    learnset MOVE_CLOSE_COMBAT, 69
    terminatelearnset


levelup SPECIES_CRABOMINABLE
    learnset MOVE_ICE_PUNCH, 0
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_BUBBLE, 3
    learnset MOVE_ICY_WIND, 6
    learnset MOVE_PAYBACK, 9
    learnset MOVE_WORK_UP, 12
    learnset MOVE_ENDEAVOR, 15
    learnset MOVE_POWER_UP_PUNCH, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_CROSS_CHOP, 27
    learnset MOVE_BULK_UP, 30
    learnset MOVE_JET_PUNCH, 33
    learnset MOVE_DUAL_CHOP, 36
    learnset MOVE_SLASH, 39
    learnset MOVE_CROSS_POISON, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_ICE_PUNCH, 48
    learnset MOVE_THUNDER_PUNCH, 51
    learnset MOVE_IRON_DEFENSE, 54
    learnset MOVE_SHADOW_PUNCH, 57
    learnset MOVE_STONE_EDGE, 60
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_CRABHAMMER, 66
    learnset MOVE_SUPERPOWER, 70
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
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_STRUGGLE_BUG, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_SILVER_WIND, 16
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_AROMATHERAPY, 21
    learnset MOVE_SIGNAL_BEAM, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_SWITCHEROO, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_STICKY_WEB, 39
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_DAZZLING_GLEAM, 45
    learnset MOVE_QUIVER_DANCE, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_HEAT_WAVE, 57
    learnset MOVE_POLLEN_PUFF, 60
    learnset MOVE_LUNAR_DANCE, 63
    terminatelearnset


levelup SPECIES_RIBOMBEE
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_STRUGGLE_BUG, 11
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_SILVER_WIND, 16
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_AROMATHERAPY, 21
    learnset MOVE_SIGNAL_BEAM, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_SWITCHEROO, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_STICKY_WEB, 39
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_DAZZLING_GLEAM, 45
    learnset MOVE_QUIVER_DANCE, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_HEAT_WAVE, 57
    learnset MOVE_POLLEN_PUFF, 60
    learnset MOVE_LUNAR_DANCE, 63
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
    learnset MOVE_WIDE_GUARD, 4
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_BITE, 10
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_ACID_SPRAY, 16
    learnset MOVE_INFESTATION, 18
    learnset MOVE_RECOVER, 21
    learnset MOVE_PIN_MISSILE, 24
    learnset MOVE_VENOSHOCK, 27
    learnset MOVE_TOXIC_SPIKES, 30
    learnset MOVE_LEECH_LIFE, 33
    learnset MOVE_SPIKE_CANNON, 36
    learnset MOVE_PROTECT, 39
    learnset MOVE_POISON_JAB, 42
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_SCALD, 51
    learnset MOVE_SLUDGE_BOMB, 54
    learnset MOVE_HAZE, 57
    learnset MOVE_GUNK_SHOT, 60
    terminatelearnset


levelup SPECIES_TOXAPEX
    learnset MOVE_BANEFUL_BUNKER, 0
    learnset MOVE_BANEFUL_BUNKER, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WIDE_GUARD, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_BITE, 11
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_ACID_SPRAY, 17
    learnset MOVE_INFESTATION, 19
    learnset MOVE_RECOVER, 22
    learnset MOVE_PIN_MISSILE, 25
    learnset MOVE_VENOSHOCK, 28
    learnset MOVE_TOXIC_SPIKES, 31
    learnset MOVE_LEECH_LIFE, 34
    learnset MOVE_SPIKE_CANNON, 37
    learnset MOVE_PROTECT, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_TOXIC, 49
    learnset MOVE_SCALD, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_HAZE, 58
    learnset MOVE_GUNK_SHOT, 61
    terminatelearnset


levelup SPECIES_MUDBRAY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_IRON_DEFENSE, 4
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_BULLDOZE, 13
    learnset MOVE_STOMP, 16
    learnset MOVE_LOW_SWEEP, 18
    learnset MOVE_STRENGTH, 21
    learnset MOVE_COUNTER, 24
    learnset MOVE_STOMPING_TANTRUM, 27
    learnset MOVE_REST, 30
    learnset MOVE_SLEEP_TALK, 30
    learnset MOVE_HEAVY_SLAM, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_IRON_HEAD, 39
    learnset MOVE_HIGH_HORSEPOWER, 42
    learnset MOVE_BODY_PRESS, 45
    learnset MOVE_SANDSTORM, 48
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_DOUBLE_EDGE, 57
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_HEADLONG_RUSH, 63
    terminatelearnset


levelup SPECIES_MUDSDALE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_IRON_DEFENSE, 5
    learnset MOVE_DOUBLE_KICK, 8
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_STOMP, 17
    learnset MOVE_LOW_SWEEP, 19
    learnset MOVE_STRENGTH, 22
    learnset MOVE_COUNTER, 25
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_REST, 31
    learnset MOVE_SLEEP_TALK, 31
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_HIGH_HORSEPOWER, 43
    learnset MOVE_BODY_PRESS, 46
    learnset MOVE_SANDSTORM, 49
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_STONE_EDGE, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_CLOSE_COMBAT, 61
    learnset MOVE_HEADLONG_RUSH, 64
    terminatelearnset


levelup SPECIES_DEWPIDER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_BUG_BITE, 4
    learnset MOVE_BITE, 7
    learnset MOVE_STICKY_WEB, 10
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_AQUA_RING, 16
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_SOAK, 27
    learnset MOVE_SKITTER_SMACK, 30
    learnset MOVE_ENTRAINMENT, 33
    learnset MOVE_LIQUIDATION, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_LUNGE, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_MIRROR_COAT, 48
    learnset MOVE_LEECH_LIFE, 51
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_ARAQUANID
    learnset MOVE_WIDE_GUARD, 0
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_BUG_BITE, 5
    learnset MOVE_BITE, 8
    learnset MOVE_STICKY_WEB, 11
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_AQUA_RING, 17
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_SOAK, 28
    learnset MOVE_SKITTER_SMACK, 31
    learnset MOVE_ENTRAINMENT, 34
    learnset MOVE_LIQUIDATION, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_LUNGE, 43
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_MIRROR_COAT, 49
    learnset MOVE_LEECH_LIFE, 52
    learnset MOVE_ICE_BEAM, 55
    learnset MOVE_IRON_DEFENSE, 58
    learnset MOVE_HYDRO_PUMP, 61
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
    learnset MOVE_EMBER, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_POISON_FANG, 13
    learnset MOVE_THIEF, 17
    learnset MOVE_SMOG, 20
    learnset MOVE_INCINERATE, 23
    learnset MOVE_DRAGON_RAGE, 28
    learnset MOVE_NASTY_PLOT, 30
    learnset MOVE_FLAME_BURST, 34
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_TOXIC, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_FLAMETHROWER, 50
    terminatelearnset


levelup SPECIES_SALAZZLE
    learnset MOVE_FIRE_LASH, 0
    learnset MOVE_CAPTIVATE, 0
    learnset MOVE_FIRE_LASH, 1
    learnset MOVE_CAPTIVATE, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_POISON_FANG, 13
    learnset MOVE_THIEF, 17
    learnset MOVE_SMOG, 20
    learnset MOVE_INCINERATE, 23
    learnset MOVE_DRAGON_RAGE, 28
    learnset MOVE_NASTY_PLOT, 30
    learnset MOVE_FLAME_BURST, 34
    learnset MOVE_DISABLE, 37
    learnset MOVE_VENOSHOCK, 40
    learnset MOVE_SWAGGER, 43
    learnset MOVE_DRAGON_PULSE, 46
    learnset MOVE_ENDEAVOR, 49
    learnset MOVE_TOXIC, 52
    learnset MOVE_FLAMETHROWER, 56
    learnset MOVE_SLUDGE_BOMB, 62
    learnset MOVE_ENCORE, 65
    learnset MOVE_OVERHEAT, 72
    terminatelearnset


levelup SPECIES_STUFFUL
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 3
    learnset MOVE_BIDE, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_COACHING, 12
    learnset MOVE_PAYBACK, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_BABY_DOLL_EYES, 21
    learnset MOVE_FORCE_PALM, 24
    learnset MOVE_STOMP, 27
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_BRUTAL_SWING, 33
    learnset MOVE_CHARM, 36
    learnset MOVE_DUAL_CHOP, 39
    learnset MOVE_STRENGTH, 42
    learnset MOVE_BULK_UP, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_IRON_HEAD, 51
    learnset MOVE_SWORDS_DANCE, 54
    learnset MOVE_THRASH, 57
    learnset MOVE_REST, 60
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_SUPERPOWER, 69
    terminatelearnset


levelup SPECIES_BEWEAR
    learnset MOVE_DARKEST_LARIAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ROCK_SMASH, 3
    learnset MOVE_BIDE, 6
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_COACHING, 12
    learnset MOVE_PAYBACK, 15
    learnset MOVE_FEINT, 18
    learnset MOVE_BABY_DOLL_EYES, 21
    learnset MOVE_FORCE_PALM, 24
    learnset MOVE_STOMP, 27
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_BRUTAL_SWING, 33
    learnset MOVE_CHARM, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_STRENGTH, 42
    learnset MOVE_BULK_UP, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_DRAGON_CLAW, 51
    learnset MOVE_SWORDS_DANCE, 54
    learnset MOVE_THRASH, 57
    learnset MOVE_REST, 60
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_SUPERPOWER, 69
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
    learnset MOVE_VINE_WHIP, 4
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_DRAINING_KISS, 10
    learnset MOVE_CHARM, 13
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_SYNTHESIS, 18
    learnset MOVE_LEECH_SEED, 21
    learnset MOVE_GRASS_KNOT, 24
    learnset MOVE_SWEET_KISS, 27
    learnset MOVE_FLORAL_HEALING, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_WORRY_SEED, 36
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_ENCORE, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_GRASSY_TERRAIN, 51
    learnset MOVE_POLLEN_PUFF, 54
    learnset MOVE_PAIN_SPLIT, 57
    learnset MOVE_LEAF_STORM, 60
    learnset MOVE_HEALING_WISH, 63
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
    learnset MOVE_BESTOW, 1
    learnset MOVE_ALLY_SWITCH, 1
    learnset MOVE_ROCK_THROW, 4
    learnset MOVE_MACH_PUNCH, 6
    learnset MOVE_COACHING, 9
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_LOW_KICK, 15
    learnset MOVE_BULK_UP, 18
    learnset MOVE_TRAILBLAZE, 21
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_TAUNT, 25
    learnset MOVE_BEAT_UP, 28
    learnset MOVE_UPPER_HAND, 31
    learnset MOVE_BATON_PASS, 33
    learnset MOVE_DRAIN_PUNCH, 37
    learnset MOVE_STONE_EDGE, 40
    learnset MOVE_QUICK_GUARD, 43
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_COUNTER, 49
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_SNATCH, 55
    learnset MOVE_CLOSE_COMBAT, 58
    learnset MOVE_GUNK_SHOT, 62
    learnset MOVE_HEADLONG_RUSH, 65
    learnset MOVE_REVERSAL, 68
    learnset MOVE_COURT_CHANGE, 72
    terminatelearnset



levelup SPECIES_WIMPOD
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_STRUGGLE_BUG, 1 
    learnset MOVE_AQUA_JET, 4
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_SCALD, 9
    learnset MOVE_BUG_BUZZ, 12
    learnset MOVE_DIG, 15
    learnset MOVE_FLIP_TURN, 18
    learnset MOVE_SPIKES, 21
    learnset MOVE_SKITTER_SMACK, 23
    learnset MOVE_SWAGGER, 25
    learnset MOVE_PROTECT, 28
    terminatelearnset

levelup SPECIES_GOLISOPOD
    learnset MOVE_RAZOR_SHELL, 1 
    learnset MOVE_FIRST_IMPRESSION, 1 
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_STRUGGLE_BUG, 1 
    learnset MOVE_AQUA_JET, 4
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_SCALD, 9
    learnset MOVE_BUG_BUZZ, 12
    learnset MOVE_DIG, 15
    learnset MOVE_FLIP_TURN, 18
    learnset MOVE_SPIKES, 21
    learnset MOVE_SKITTER_SMACK, 23
    learnset MOVE_SWAGGER, 25
    learnset MOVE_PROTECT, 28
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_HONE_CLAWS, 33
    learnset MOVE_PIN_MISSILE, 36
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_SUCKER_PUNCH, 44
    learnset MOVE_POISON_JAB, 47
    learnset MOVE_LEECH_LIFE, 50
    learnset MOVE_TAUNT, 53
    learnset MOVE_DRILL_RUN, 56
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_WAVE_CRASH, 65
    terminatelearnset

levelup SPECIES_SANDYGAST
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 3
    learnset MOVE_MUD_SLAP, 6
    learnset MOVE_INFESTATION, 9
    learnset MOVE_ROLE_PLAY, 12
    learnset MOVE_SAND_TOMB, 15
    learnset MOVE_OMINOUS_WIND, 18
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_STOCKPILE, 24
    learnset MOVE_SPIT_UP, 27
    learnset MOVE_SWALLOW, 30
    learnset MOVE_ROCK_TOMB, 33
    learnset MOVE_BRINE, 36
    learnset MOVE_HEX, 40
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_CURSE, 45
    learnset MOVE_SCORCHING_SANDS, 48
    learnset MOVE_SHORE_UP, 51
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_SANDSTORM, 60
    learnset MOVE_EARTH_POWER, 63
    learnset MOVE_DESTINY_BOND, 66
    learnset MOVE_POLTERGEIST, 69
    terminatelearnset


levelup SPECIES_PALOSSAND
    learnset MOVE_SHORE_UP, 0
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 3
    learnset MOVE_MUD_SLAP, 6
    learnset MOVE_INFESTATION, 9
    learnset MOVE_ROLE_PLAY, 12
    learnset MOVE_SAND_TOMB, 15
    learnset MOVE_OMINOUS_WIND, 18
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_HYPNOSIS, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_TRICK, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_BRINE, 36
    learnset MOVE_HEX, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_CURSE, 45
    learnset MOVE_SCORCHING_SANDS, 48
    learnset MOVE_SHORE_UP, 51
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_SANDSTORM, 60
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_SLUDGE_WAVE, 68
    learnset MOVE_POLTERGEIST, 73
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
    learnset MOVE_RAGE, 4
    learnset MOVE_AERIAL_ACE, 7
    learnset MOVE_SCARY_FACE, 10
    learnset MOVE_PAYBACK, 13
    learnset MOVE_DOUBLE_HIT, 16
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_METAL_SOUND, 21
    learnset MOVE_CRUSH_CLAW, 24
    learnset MOVE_FEINT_ATTACK, 27
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_FACADE, 33
    learnset MOVE_U_TURN, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_TRI_ATTACK, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_X_SCISSOR, 48
    learnset MOVE_TAKE_DOWN, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_IMPRISON, 57
    learnset MOVE_MULTI_ATTACK, 60
    terminatelearnset


levelup SPECIES_SILVALLY
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_POISON_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_RAGE, 4
    learnset MOVE_AERIAL_ACE, 7
    learnset MOVE_SCARY_FACE, 10
    learnset MOVE_PAYBACK, 13
    learnset MOVE_DOUBLE_HIT, 16
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_METAL_SOUND, 21
    learnset MOVE_CRUSH_CLAW, 24
    learnset MOVE_FEINT_ATTACK, 27
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_FACADE, 33
    learnset MOVE_U_TURN, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_TRI_ATTACK, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_X_SCISSOR, 48
    learnset MOVE_TAKE_DOWN, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_IMPRISON, 57
    learnset MOVE_MULTI_ATTACK, 60
    terminatelearnset


levelup SPECIES_MINIOR
    learnset MOVE_TACKLE,1
    learnset MOVE_DEFENSE_CURL,1
    learnset MOVE_ROLLOUT,4
    learnset MOVE_CONFUSE_RAY,6
    learnset MOVE_SWIFT,9
    learnset MOVE_ROCK_THROW,12
    learnset MOVE_SCARY_FACE,15
    learnset MOVE_WING_ATTACK,18
    learnset MOVE_ANCIENT_POWER,21
    learnset MOVE_STEALTH_ROCK,23
    learnset MOVE_U_TURN,25
    learnset MOVE_AIR_SLASH,27
    learnset MOVE_ROCK_SLIDE,30
    learnset MOVE_AGILITY,33
    learnset MOVE_ACROBATICS,36
    learnset MOVE_WIDE_GUARD,40
    learnset MOVE_IRON_HEAD,42
    learnset MOVE_EARTH_POWER,44
    learnset MOVE_ZEN_HEADBUTT,48
    learnset MOVE_RECOVER,50
    learnset MOVE_TAKE_DOWN,52
    learnset MOVE_COSMIC_POWER,56
    learnset MOVE_EXPLOSION,59
    learnset MOVE_SHELL_SMASH,62
    learnset MOVE_STONE_EDGE,66
    terminatelearnset


levelup SPECIES_KOMALA
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_STOCKPILE, 3
    learnset MOVE_SPIT_UP, 6
    learnset MOVE_SWALLOW, 9
    learnset MOVE_TRAILBLAZE, 12
    learnset MOVE_SNORE, 15
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_ACROBATICS, 21
    learnset MOVE_THIEF, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_CHARM, 30
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_BULK_UP, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_YAWN, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_U_TURN, 51
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_WISH, 57
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_SUPERPOWER, 63
    learnset MOVE_THRASH, 66
    learnset MOVE_WOOD_HAMMER, 69
    terminatelearnset


levelup SPECIES_TURTONATOR
    learnset MOVE_SMOG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_ENDURE, 7
    learnset MOVE_PAYBACK, 10
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_CURSE, 23
    learnset MOVE_REVENGE, 25
    learnset MOVE_BRUTAL_SWING, 28
    learnset MOVE_STOMPING_TANTRUM, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_BURNING_JEALOUSY, 38
    learnset MOVE_WILL_O_WISP, 41
    learnset MOVE_SHELL_TRAP, 46
    learnset MOVE_DRAGON_CLAW, 49
    learnset MOVE_BULK_UP, 52
    learnset MOVE_BODY_PRESS, 55
    learnset MOVE_HEAVY_SLAM, 57
    learnset MOVE_FIRE_BLAST, 60
    learnset MOVE_EARTHQUAKE, 64
    learnset MOVE_DRACO_METEOR, 67
    terminatelearnset


levelup SPECIES_TOGEDEMARU
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_CHARGE, 6
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_SPARK, 12
    learnset MOVE_NUZZLE, 15
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_PROTECT, 21
    learnset MOVE_MAGNET_BOMB, 23
    learnset MOVE_ELECTROWEB, 27
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_LIGHT_SCREEN, 33
    learnset MOVE_REFLECT, 33
    learnset MOVE_THUNDER_PUNCH, 36
    learnset MOVE_BOUNCE, 39
    learnset MOVE_VOLT_SWITCH, 42
    learnset MOVE_GYRO_BALL, 45
    learnset MOVE_ELECTRIC_TERRAIN, 48
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_ZING_ZAP, 54
    learnset MOVE_SPIKY_SHIELD, 59
    learnset MOVE_IRON_HEAD, 64
    learnset MOVE_THUNDER, 67
    learnset MOVE_MAGNET_RISE, 70
    learnset MOVE_STEEL_BEAM, 72
    terminatelearnset


levelup SPECIES_MIMIKYU
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_BIDE, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_TAIL_SLAP, 16
    learnset MOVE_COPYCAT, 19
    learnset MOVE_SHADOW_PUNCH, 22
    learnset MOVE_COVET, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_CHARM, 31
    learnset MOVE_REVENGE, 34
    learnset MOVE_SKITTER_SMACK, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_SLASH, 43
    learnset MOVE_DRAIN_PUNCH, 46
    learnset MOVE_SHADOW_CLAW, 49
    learnset MOVE_HONE_CLAWS, 52
    learnset MOVE_PAIN_SPLIT, 55
    learnset MOVE_PHANTOM_FORCE, 58
    learnset MOVE_SUBSTITUTE, 61
    learnset MOVE_IRON_TAIL, 64
    learnset MOVE_WOOD_HAMMER, 67
    learnset MOVE_SWORDS_DANCE, 70
    learnset MOVE_POLTERGEIST, 73
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
    learnset MOVE_TWISTER, 3
    learnset MOVE_RAGE, 6
    learnset MOVE_GLARE, 9
    learnset MOVE_ECHOED_VOICE, 12
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_SCALE_SHOT, 18
    learnset MOVE_ROUND, 21
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_BREAKING_SWIPE, 27
    learnset MOVE_LASH_OUT, 30
    learnset MOVE_TICKLE, 33
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_DRAGON_PULSE, 39
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_SCALD, 45
    learnset MOVE_FLAME_WHEEL, 48
    learnset MOVE_ROOST, 51
    learnset MOVE_HYPER_VOICE, 54
    learnset MOVE_TAILWIND, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_CALM_MIND, 63
    learnset MOVE_HYPER_BEAM, 66
    learnset MOVE_DRACO_METEOR, 69
    terminatelearnset


levelup SPECIES_DHELMISE
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_METAL_SOUND, 9
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_GROWTH, 16
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_GRASSY_GLIDE, 20
    learnset MOVE_WHIRLPOOL, 24
    learnset MOVE_SWITCHEROO, 27
    learnset MOVE_GYRO_BALL, 31
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_HEAVY_SLAM, 35
    learnset MOVE_SLAM, 37
    learnset MOVE_BODY_PRESS, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_SYNTHESIS, 49
    learnset MOVE_SURF, 51
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_DESTINY_BOND, 58
    learnset MOVE_POWER_WHIP, 60
    learnset MOVE_EARTHQUAKE, 64
    learnset MOVE_STEEL_ROLLER, 66
    learnset MOVE_HYDRO_PUMP, 70
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
    learnset MOVE_BRANCH_POKE, 4
    learnset MOVE_TAUNT, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_LOW_KICK, 16
    learnset MOVE_SCREECH, 18
    learnset MOVE_KNOCK_OFF, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_ENERGY_BALL, 30
    learnset MOVE_ENDEAVOR, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_GRASSY_TERRAIN, 39
    terminatelearnset


levelup SPECIES_THWACKEY
    learnset MOVE_DOUBLE_HIT, 0
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_LOW_KICK, 17
    learnset MOVE_SCREECH, 19
    learnset MOVE_KNOCK_OFF, 22
    learnset MOVE_HEADBUTT, 25
    learnset MOVE_U_TURN, 28
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_ENDEAVOR, 34
    learnset MOVE_DRAIN_PUNCH, 37
    learnset MOVE_GRASSY_TERRAIN, 40
    terminatelearnset


levelup SPECIES_RILLABOOM
    learnset MOVE_DRUM_BEATING, 0
    learnset MOVE_DRUM_BEATING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_TAUNT, 9
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_SCREECH, 20
    learnset MOVE_KNOCK_OFF, 23
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_U_TURN, 29
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_ENDEAVOR, 35
    learnset MOVE_DRAIN_PUNCH, 38
    learnset MOVE_GRASSY_TERRAIN, 41
    learnset MOVE_GRASSY_GLIDE, 44
    learnset MOVE_STOMPING_TANTRUM, 47
    learnset MOVE_TAUNT, 50
    learnset MOVE_BODY_SLAM, 53
    learnset MOVE_HAMMER_ARM, 56
    learnset MOVE_WOOD_HAMMER, 59
    learnset MOVE_EARTHQUAKE, 62
    learnset MOVE_FRENZY_PLANT, 65
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
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_BIND, 7
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_CHILLING_WATER, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_TEARFUL_LOOK, 18
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_U_TURN, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_SOAK, 30
    learnset MOVE_MUD_SHOT, 33
    learnset MOVE_RAIN_DANCE, 36
    learnset MOVE_LIQUIDATION, 39
    terminatelearnset


levelup SPECIES_DRIZZILE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_BIND, 8
    learnset MOVE_ICE_SHARD, 11
    learnset MOVE_CHILLING_WATER, 14
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_TEARFUL_LOOK, 19
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_U_TURN, 25
    learnset MOVE_BRINE, 28
    learnset MOVE_SOAK, 31
    learnset MOVE_MUD_SHOT, 34
    learnset MOVE_RAIN_DANCE, 37
    learnset MOVE_LIQUIDATION, 40
    terminatelearnset


levelup SPECIES_INTELEON
    learnset MOVE_SNIPE_SHOT, 0
    learnset MOVE_SNIPE_SHOT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_BIND, 9
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_CHILLING_WATER, 15
    learnset MOVE_AQUA_JET, 18
    learnset MOVE_TEARFUL_LOOK, 20
    learnset MOVE_SUCKER_PUNCH, 23
    learnset MOVE_U_TURN, 26
    learnset MOVE_BRINE, 29
    learnset MOVE_SOAK, 32
    learnset MOVE_MUD_SHOT, 35
    learnset MOVE_RAIN_DANCE, 38
    learnset MOVE_LIQUIDATION, 41
    learnset MOVE_ACROBATICS, 44
    learnset MOVE_DOUBLE_TEAM, 47
    learnset MOVE_DARK_PULSE, 50
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_ICE_BEAM, 56
    learnset MOVE_HAZE, 59
    learnset MOVE_BLIZZARD, 62
    learnset MOVE_HYDRO_CANNON, 65
    terminatelearnset


levelup SPECIES_SKWOVET
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_STUFF_CHEEKS, 10
    learnset MOVE_COVET, 13
    learnset MOVE_STOCKPILE, 16
    learnset MOVE_SWALLOW, 16
    learnset MOVE_SPIT_UP, 16
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_FACADE, 21
    learnset MOVE_REST, 24
    learnset MOVE_BULLET_SEED, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_DIG, 33
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SEED_BOMB, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_BELCH, 45
    terminatelearnset


levelup SPECIES_GREEDENT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_STUFF_CHEEKS, 11
    learnset MOVE_COVET, 14
    learnset MOVE_STOCKPILE, 17
    learnset MOVE_SWALLOW, 17
    learnset MOVE_SPIT_UP, 17
    learnset MOVE_BULLDOZE, 19
    learnset MOVE_FACADE, 22
    learnset MOVE_REST, 25
    learnset MOVE_BULLET_SEED, 28
    learnset MOVE_COUNTER, 31
    learnset MOVE_DIG, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_SEED_BOMB, 40
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_BELCH, 46
    learnset MOVE_PSYCHIC_FANGS, 49
    learnset MOVE_BODY_PRESS, 52
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_AMNESIA, 58
    learnset MOVE_DOUBLE_EDGE, 61
    terminatelearnset


levelup SPECIES_ROOKIDEE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWER_TRIP, 4
    learnset MOVE_TACKLE, 7
    learnset MOVE_GUST, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_HONE_CLAWS, 19
    learnset MOVE_WING_ATTACK, 22
    learnset MOVE_THIEF, 25
    learnset MOVE_ROCK_THROW, 28
    learnset MOVE_PLUCK, 31
    learnset MOVE_TAUNT, 34
    learnset MOVE_METAL_CLAW, 37
    learnset MOVE_DUAL_WINGBEAT, 40
    learnset MOVE_SLASH, 43
    learnset MOVE_SCARY_FACE, 46
    learnset MOVE_STEEL_WING, 49
    learnset MOVE_CRUSH_CLAW, 52
    learnset MOVE_AIR_SLASH, 55
    learnset MOVE_DRILL_PECK, 58
    learnset MOVE_SWAGGER, 61
    learnset MOVE_IRON_HEAD, 64
    learnset MOVE_HURRICANE, 67
    learnset MOVE_BRAVE_BIRD, 70
    terminatelearnset


levelup SPECIES_CORVISQUIRE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWER_TRIP, 4
    learnset MOVE_TACKLE, 7
    learnset MOVE_GUST, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_HONE_CLAWS, 20
    learnset MOVE_WING_ATTACK, 23
    learnset MOVE_THIEF, 26
    learnset MOVE_ROCK_THROW, 29
    learnset MOVE_PLUCK, 32
    learnset MOVE_TAUNT, 35
    learnset MOVE_METAL_CLAW, 38
    learnset MOVE_DUAL_WINGBEAT, 41
    learnset MOVE_SLASH, 44
    learnset MOVE_SCARY_FACE, 47
    learnset MOVE_STEEL_WING, 50
    learnset MOVE_CRUSH_CLAW, 53
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_DRILL_PECK, 59
    learnset MOVE_SWAGGER, 62
    learnset MOVE_IRON_HEAD, 65
    learnset MOVE_HURRICANE, 68
    learnset MOVE_BRAVE_BIRD, 71
    terminatelearnset


levelup SPECIES_CORVIKNIGHT
    learnset MOVE_IRON_DEFENSE, 0
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_METAL_SOUND, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWER_TRIP, 4
    learnset MOVE_TACKLE, 7
    learnset MOVE_GUST, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_HONE_CLAWS, 20
    learnset MOVE_WING_ATTACK, 23
    learnset MOVE_THIEF, 26
    learnset MOVE_ROCK_THROW, 29
    learnset MOVE_PLUCK, 32
    learnset MOVE_TAUNT, 35
    learnset MOVE_METAL_CLAW, 38
    learnset MOVE_DUAL_WINGBEAT, 42
    learnset MOVE_SLASH, 45
    learnset MOVE_SCARY_FACE, 48
    learnset MOVE_STEEL_WING, 51
    learnset MOVE_CRUSH_CLAW, 54
    learnset MOVE_AIR_SLASH, 57
    learnset MOVE_DRILL_PECK, 60
    learnset MOVE_SWAGGER, 63
    learnset MOVE_IRON_HEAD, 66
    learnset MOVE_HURRICANE, 69
    learnset MOVE_DOUBLE_EDGE, 72
    learnset MOVE_BRAVE_BIRD, 75
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
    learnset MOVE_SWEET_SCENT, 7
    learnset MOVE_LEECH_SEED, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_ROUND, 16
    learnset MOVE_CHARM, 18
    learnset MOVE_LEAF_TORNADO, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_HYPER_VOICE, 27
    learnset MOVE_SUNNY_DAY, 30
    learnset MOVE_WEATHER_BALL, 33
    learnset MOVE_AROMATHERAPY, 36
    learnset MOVE_ENERGY_BALL, 39
    learnset MOVE_POLLEN_PUFF, 42
    learnset MOVE_GRASS_KNOT, 45
    learnset MOVE_LEAF_STORM, 48
    terminatelearnset


levelup SPECIES_ELDEGOSS
    learnset MOVE_COTTON_SPORE, 0
    learnset MOVE_COTTON_SPORE, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_LEECH_SEED, 11
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_ROUND, 17
    learnset MOVE_CHARM, 19
    learnset MOVE_LEAF_TORNADO, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_HYPER_VOICE, 28
    learnset MOVE_SUNNY_DAY, 31
    learnset MOVE_WEATHER_BALL, 34
    learnset MOVE_AROMATHERAPY, 37
    learnset MOVE_ENERGY_BALL, 40
    learnset MOVE_POLLEN_PUFF, 43
    learnset MOVE_GRASS_KNOT, 46
    learnset MOVE_LEAF_STORM, 49
    terminatelearnset


levelup SPECIES_WOOLOO
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_COPYCAT, 7
    learnset MOVE_TRAILBLAZE, 10
    learnset MOVE_GUARD_SPLIT, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_PAYBACK, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_WILD_CHARGE, 24
    learnset MOVE_GUARD_SWAP, 27
    learnset MOVE_ENDURE, 30
    learnset MOVE_REVERSAL, 33
    learnset MOVE_COTTON_GUARD, 36
    learnset MOVE_TAKE_DOWN, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_COUNTER, 45
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset


levelup SPECIES_DUBWOOL
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_COPYCAT, 8
    learnset MOVE_TRAILBLAZE, 11
    learnset MOVE_GUARD_SPLIT, 14
    learnset MOVE_DOUBLE_KICK, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_WILD_CHARGE, 25
    learnset MOVE_GUARD_SWAP, 28
    learnset MOVE_ENDURE, 31
    learnset MOVE_REVERSAL, 34
    learnset MOVE_COTTON_GUARD, 37
    learnset MOVE_TAKE_DOWN, 40
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_COUNTER, 46
    learnset MOVE_BODY_PRESS, 49
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_BOUNCE, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_LAST_RESORT, 61
    terminatelearnset


levelup SPECIES_CHEWTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 3
    learnset MOVE_SCARY_FACE, 6
    learnset MOVE_BUBBLE, 9
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_PAYBACK, 15
    learnset MOVE_GASTRO_ACID, 18
    learnset MOVE_WHIRLPOOL, 20
    learnset MOVE_BITE, 23
    learnset MOVE_DRAGON_TAIL, 27
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_JAW_LOCK, 34
    learnset MOVE_SKITTER_SMACK, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_DIVE, 42
    learnset MOVE_SHELL_SMASH, 43
    learnset MOVE_DIG, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_LIQUIDATION, 50
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_PROTECT, 58
    learnset MOVE_HYDRO_PUMP, 62
    learnset MOVE_HORN_DRILL, 66
    learnset MOVE_FISSURE, 69
    terminatelearnset


levelup SPECIES_DREDNAW
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_ROCK_SMASH, 3
    learnset MOVE_SCARY_FACE, 6
    learnset MOVE_BUBBLE, 9
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_PAYBACK, 15
    learnset MOVE_GASTRO_ACID, 18
    learnset MOVE_WHIRLPOOL, 20
    learnset MOVE_BITE, 23
    learnset MOVE_DRAGON_TAIL, 27
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_JAW_LOCK, 34
    learnset MOVE_SKITTER_SMACK, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_DIVE, 42
    learnset MOVE_DIG, 45
    learnset MOVE_ROCK_POLISH, 48
    learnset MOVE_LIQUIDATION, 50
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_PROTECT, 58
    learnset MOVE_HYDRO_PUMP, 62
    learnset MOVE_HORN_DRILL, 66
    learnset MOVE_HEAD_SMASH, 69
    terminatelearnset


levelup SPECIES_YAMPER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 4
    learnset MOVE_HOWL, 7
    learnset MOVE_BITE, 10
    learnset MOVE_THUNDER_SHOCK, 13
    learnset MOVE_ROAR, 16
    learnset MOVE_VOLT_SWITCH, 18
    learnset MOVE_SPARK, 21
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_CHARM, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_THUNDER_FANG, 33
    learnset MOVE_CHARGE, 36
    learnset MOVE_WILD_CHARGE, 39
    learnset MOVE_PLAY_ROUGH, 42
    terminatelearnset


levelup SPECIES_BOLTUND
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 5
    learnset MOVE_HOWL, 8
    learnset MOVE_BITE, 11
    learnset MOVE_THUNDER_SHOCK, 14
    learnset MOVE_ROAR, 17
    learnset MOVE_VOLT_SWITCH, 19
    learnset MOVE_SPARK, 22
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_CHARM, 28
    learnset MOVE_CRUNCH, 31
    learnset MOVE_THUNDER_FANG, 34
    learnset MOVE_CHARGE, 37
    learnset MOVE_PSYCHIC_FANGS, 40
    learnset MOVE_WILD_CHARGE, 43
    learnset MOVE_BULK_UP, 46
    learnset MOVE_PLAY_ROUGH, 49
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset


levelup SPECIES_ROLYCOLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_RAPID_SPIN, 7
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_BULLDOZE, 13
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_INCINERATE, 24
    learnset MOVE_SCORCHING_SANDS, 27
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_HEAT_CRASH, 36
    learnset MOVE_BLOCK, 39
    learnset MOVE_BODY_PRESS, 42
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_POWER_GEM, 51
    learnset MOVE_EARTH_POWER, 54
    learnset MOVE_FIRE_BLAST, 57
    learnset MOVE_STONE_EDGE, 60
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_FLARE_BLITZ, 66
    terminatelearnset


levelup SPECIES_CARKOL
    learnset MOVE_FLAME_CHARGE, 0
    learnset MOVE_FLAME_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_ROCK_TOMB, 17
    learnset MOVE_WILL_O_WISP, 19
    learnset MOVE_ANCIENT_POWER, 22
    learnset MOVE_INCINERATE, 25
    learnset MOVE_SCORCHING_SANDS, 28
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_HEAT_CRASH, 37
    learnset MOVE_BLOCK, 40
    learnset MOVE_BODY_PRESS, 43
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_FLAMETHROWER, 49
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_EARTH_POWER, 55
    learnset MOVE_FIRE_BLAST, 58
    learnset MOVE_STONE_EDGE, 61
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_FLARE_BLITZ, 67
    terminatelearnset


levelup SPECIES_COALOSSAL
    learnset MOVE_TAR_SHOT, 0
    learnset MOVE_TAR_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_ANCIENT_POWER, 23
    learnset MOVE_INCINERATE, 26
    learnset MOVE_SCORCHING_SANDS, 29
    learnset MOVE_STEALTH_ROCK, 32
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_HEAT_CRASH, 38
    learnset MOVE_BLOCK, 41
    learnset MOVE_BODY_PRESS, 44
    learnset MOVE_IRON_DEFENSE, 47
    learnset MOVE_FLAMETHROWER, 50
    learnset MOVE_POWER_GEM, 53
    learnset MOVE_EARTH_POWER, 56
    learnset MOVE_FIRE_BLAST, 59
    learnset MOVE_STONE_EDGE, 62
    learnset MOVE_SOLAR_BEAM, 65
    learnset MOVE_FLARE_BLITZ, 68
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
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_POISON_TAIL, 7
    learnset MOVE_BRUTAL_SWING, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_STEALTH_ROCK, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_GLARE, 24
    learnset MOVE_THUNDER_FANG, 27
    learnset MOVE_STOMPING_TANTRUM, 30
    learnset MOVE_FIRE_FANG, 33
    learnset MOVE_SANDSTORM, 36
    learnset MOVE_SLAM, 39
    learnset MOVE_COIL, 42
    terminatelearnset


levelup SPECIES_SANDACONDA
    learnset MOVE_WRAP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_POISON_TAIL, 8
    learnset MOVE_BRUTAL_SWING, 11
    learnset MOVE_ROCK_TOMB, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_STEALTH_ROCK, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_GLARE, 25
    learnset MOVE_THUNDER_FANG, 28
    learnset MOVE_STOMPING_TANTRUM, 31
    learnset MOVE_FIRE_FANG, 34
    learnset MOVE_SANDSTORM, 37
    learnset MOVE_SLAM, 40
    learnset MOVE_COIL, 43
    learnset MOVE_DRILL_RUN, 46
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_IRON_DEFENSE, 52
    learnset MOVE_BODY_PRESS, 55
    learnset MOVE_DRAGON_RUSH, 58
    learnset MOVE_EARTHQUAKE, 61
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
    learnset MOVE_ACID, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 3
    learnset MOVE_TEARFUL_LOOK, 6
    learnset MOVE_NUZZLE, 9
    learnset MOVE_ENDEAVOR, 12
    learnset MOVE_CHARM, 15
    learnset MOVE_ROUND, 18
    learnset MOVE_SNORE, 21
    learnset MOVE_POWER_UP_PUNCH, 24
    learnset MOVE_SLEEP_TALK, 27
    learnset MOVE_FACADE, 30
    learnset MOVE_BELCH, 33
    learnset MOVE_REST, 37
    terminatelearnset


levelup SPECIES_TOXTRICITY
    learnset MOVE_SPARK, 1
    learnset MOVE_EERIE_IMPULSE, 10
    learnset MOVE_DISARMING_VOICE, 15
    learnset MOVE_PAYBACK, 21
    learnset MOVE_ECHOED_VOICE, 24
    learnset MOVE_NOBLE_ROAR, 27
    learnset MOVE_TAUNT, 30
    learnset MOVE_ROUND, 33
    learnset MOVE_SNARL, 36
    learnset MOVE_ENCORE, 39
    learnset MOVE_HEAL_BELL, 42
    learnset MOVE_TOXIC, 45
    learnset MOVE_HEX, 48
    learnset MOVE_PSYSHOCK, 51 // should be PSYCHIC_NOISE if implemented
    learnset MOVE_OVERDRIVE, 54
    learnset MOVE_HYPER_VOICE, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_PARTING_SHOT, 63
    learnset MOVE_BUG_BUZZ, 66
    learnset MOVE_BOOMBURST, 70
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
    learnset MOVE_FEINT, 4
    learnset MOVE_BIND, 6
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_PAYBACK, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_WORK_UP, 18
    learnset MOVE_REVENGE, 21
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_TRAILBLAZE, 27
    learnset MOVE_POWER_UP_PUNCH, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_JET_PUNCH, 39
    learnset MOVE_DIVE, 42
    learnset MOVE_MEGA_PUNCH, 45
    learnset MOVE_BULK_UP, 48
    learnset MOVE_LIQUIDATION, 51
    learnset MOVE_SUCKER_PUNCH, 54
    learnset MOVE_DETECT, 57
    learnset MOVE_FOUL_PLAY, 60
    learnset MOVE_REST, 63
    learnset MOVE_SUPERPOWER, 66
    learnset MOVE_CLOSE_COMBAT, 69
    terminatelearnset


levelup SPECIES_GRAPPLOCT
    learnset MOVE_OCTOLOCK, 0
    learnset MOVE_OCTOLOCK, 1
    learnset MOVE_OCTAZOOKA, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_SOAK, 1
    learnset MOVE_FEINT, 4
    learnset MOVE_BIND, 6
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_PAYBACK, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_WORK_UP, 18
    learnset MOVE_REVENGE, 21
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_TRAILBLAZE, 27
    learnset MOVE_POWER_UP_PUNCH, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_SKITTER_SMACK, 39
    learnset MOVE_DIVE, 42
    learnset MOVE_MEGA_PUNCH, 45
    learnset MOVE_BULK_UP, 48
    learnset MOVE_LIQUIDATION, 51
    learnset MOVE_SUCKER_PUNCH, 54
    learnset MOVE_DETECT, 57
    learnset MOVE_FOUL_PLAY, 60
    learnset MOVE_REST, 63
    learnset MOVE_SUPERPOWER, 66
    learnset MOVE_CLOSE_COMBAT, 69
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
    learnset MOVE_LIFE_DEW, 4
    learnset MOVE_MAGICAL_LEAF, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_AROMATIC_MIST, 16
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_HEAL_PULSE, 24
    learnset MOVE_MYSTICAL_FIRE, 27
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_CALM_MIND, 36
    learnset MOVE_DARK_PULSE, 39
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_HEALING_WISH, 45
    terminatelearnset


levelup SPECIES_HATTREM
    learnset MOVE_BRUTAL_SWING, 0
    learnset MOVE_BRUTAL_SWING, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_MAGICAL_LEAF, 8
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_SWIFT, 14
    learnset MOVE_AROMATIC_MIST, 17
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_HEAL_PULSE, 25
    learnset MOVE_MYSTICAL_FIRE, 28
    learnset MOVE_DAZZLING_GLEAM, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_HEALING_WISH, 46
    terminatelearnset


levelup SPECIES_HATTERENE
    learnset MOVE_PSYCHO_CUT, 0
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_MAGICAL_LEAF, 8
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_SWIFT, 14
    learnset MOVE_AROMATIC_MIST, 17
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_HEAL_PULSE, 25
    learnset MOVE_MYSTICAL_FIRE, 28
    learnset MOVE_DAZZLING_GLEAM, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_CALM_MIND, 37
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_HEALING_WISH, 46
    learnset MOVE_SHADOW_BALL, 49
    learnset MOVE_TRICK_ROOM, 52
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_CALM_MIND, 58
    learnset MOVE_FUTURE_SIGHT, 61
    learnset MOVE_MAGIC_POWDER, 64
    terminatelearnset


levelup SPECIES_IMPIDIMP
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FLATTER, 7
    learnset MOVE_DRAINING_KISS, 10
    learnset MOVE_FAKE_TEARS, 13
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_SWAGGER, 21
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_TORMENT, 27
    learnset MOVE_DRAIN_PUNCH, 30
    learnset MOVE_DARK_PULSE, 33
    learnset MOVE_PARTING_SHOT, 36
    learnset MOVE_SPIRIT_BREAK, 39
    learnset MOVE_FALSE_SURRENDER, 42
    learnset MOVE_REFLECT, 45
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_FOUL_PLAY, 51
    terminatelearnset


levelup SPECIES_MORGREM
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 5
    learnset MOVE_FLATTER, 8
    learnset MOVE_DRAINING_KISS, 11
    learnset MOVE_FAKE_TEARS, 14
    learnset MOVE_ASSURANCE, 17
    learnset MOVE_LOW_KICK, 19
    learnset MOVE_SWAGGER, 22
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_TORMENT, 28
    learnset MOVE_DRAIN_PUNCH, 31
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_PARTING_SHOT, 37
    learnset MOVE_SPIRIT_BREAK, 40
    learnset MOVE_FALSE_SURRENDER, 43
    learnset MOVE_REFLECT, 46
    learnset MOVE_LIGHT_SCREEN, 46
    learnset MOVE_PLAY_ROUGH, 49
    learnset MOVE_FOUL_PLAY, 52
    terminatelearnset


levelup SPECIES_GRIMMSNARL
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 6
    learnset MOVE_FLATTER, 9
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_FAKE_TEARS, 15
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_LOW_KICK, 20
    learnset MOVE_SWAGGER, 23
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_TORMENT, 29
    learnset MOVE_DRAIN_PUNCH, 32
    learnset MOVE_DARK_PULSE, 35
    learnset MOVE_PARTING_SHOT, 38
    learnset MOVE_SPIRIT_BREAK, 41
    learnset MOVE_FALSE_SURRENDER, 44
    learnset MOVE_REFLECT, 47
    learnset MOVE_LIGHT_SCREEN, 47
    learnset MOVE_PLAY_ROUGH, 50
    learnset MOVE_HAMMER_ARM, 53
    learnset MOVE_FOUL_PLAY, 56
    learnset MOVE_EARTHQUAKE, 59
    learnset MOVE_IMPRISON, 62
    terminatelearnset


levelup SPECIES_OBSTAGOON
    learnset MOVE_OBSTRUCT, 0
    learnset MOVE_OBSTRUCT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 6
    learnset MOVE_LICK, 9
    learnset MOVE_SNARL, 12
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BABY_DOLL_EYES, 18
    learnset MOVE_PIN_MISSILE, 20
    learnset MOVE_REST, 23
    learnset MOVE_KNOCK_OFF, 26
    learnset MOVE_SCARY_FACE, 29
    learnset MOVE_COUNTER, 32
    learnset MOVE_TAUNT, 35
    learnset MOVE_NIGHT_SLASH, 38
    learnset MOVE_QUICK_GUARD, 41
    learnset MOVE_DIG, 44
    learnset MOVE_BODY_SLAM, 47
    learnset MOVE_SUBMISSION, 50
    learnset MOVE_QUICK_GUARD, 53
    learnset MOVE_FOUL_PLAY, 56
    learnset MOVE_PLAY_ROUGH, 59
    learnset MOVE_CROSS_CHOP, 62
    learnset MOVE_BELLY_DRUM, 65
    learnset MOVE_DOUBLE_EDGE, 68
    terminatelearnset


levelup SPECIES_PERRSERKER
    learnset MOVE_SMART_STRIKE, 0
    learnset MOVE_SMART_STRIKE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_METAL_CLAW, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_BULLET_PUNCH, 16
    learnset MOVE_SCREECH, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_TAUNT, 24
    learnset MOVE_MAGNET_BOMB, 27
    learnset MOVE_SWAGGER, 30
    learnset MOVE_SLASH, 33
    learnset MOVE_FLASH_CANNON, 36
    learnset MOVE_ZEN_HEADBUTT, 39
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_NIGHT_SLASH, 48
    learnset MOVE_CURSE, 52
    learnset MOVE_METAL_BURST, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_CLOSE_COMBAT, 62
    terminatelearnset


levelup SPECIES_CURSOLA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_DISABLE, 11
    learnset MOVE_WHIRLPOOL, 14
    learnset MOVE_SPITE, 17
    learnset MOVE_WILL_O_WISP, 19
    learnset MOVE_ANCIENT_POWER, 22
    learnset MOVE_HEX, 25
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_CURSE, 31
    learnset MOVE_LIQUIDATION, 34
    learnset MOVE_STRENGTH_SAP, 37
    learnset MOVE_CONFUSE_RAY, 40
    learnset MOVE_POWER_GEM, 43
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_SCALD, 49
    learnset MOVE_GRUDGE, 52
    learnset MOVE_MIRROR_COAT, 55
    learnset MOVE_POLTERGEIST, 58
    learnset MOVE_HEAD_SMASH, 61
    learnset MOVE_PERISH_SONG, 64
    terminatelearnset


levelup SPECIES_SIRFETCHD
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 6
    learnset MOVE_ROCK_SMASH, 9
    learnset MOVE_FURY_CUTTER, 12
    learnset MOVE_FOCUS_ENERGY, 15
    learnset MOVE_KARATE_CHOP, 18
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_BRUTAL_SWING, 23
    learnset MOVE_DETECT, 26
    learnset MOVE_REVENGE, 29
    learnset MOVE_KNOCK_OFF, 32
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_DEFOG, 38
    learnset MOVE_DUAL_WINGBEAT, 41
    learnset MOVE_FIRST_IMPRESSION, 44
    learnset MOVE_SWORDS_DANCE, 47
    learnset MOVE_LEAF_BLADE, 50
    learnset MOVE_SLAM, 54
    learnset MOVE_POISON_JAB, 57
    learnset MOVE_FINAL_GAMBIT, 60
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_BRAVE_BIRD, 67
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
    learnset MOVE_SHADOW_CLAW, 0
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 5
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_DISABLE, 11
    learnset MOVE_BRUTAL_SWING, 14
    learnset MOVE_OMINOUS_WIND, 17
    learnset MOVE_WILL_O_WISP, 19
    learnset MOVE_HEX, 22
    learnset MOVE_CRAFTY_SHIELD, 25
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_IMPRISON, 31
    learnset MOVE_CURSE, 34
    learnset MOVE_EARTH_POWER, 37
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_POWER_SPLIT, 43
    learnset MOVE_GUARD_SPLIT, 43
    learnset MOVE_EARTHQUAKE, 46
    learnset MOVE_DESTINY_BOND, 49
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_TOXIC_SPIKES, 55
    learnset MOVE_POLTERGEIST, 58
    learnset MOVE_TRICK_ROOM, 61
    learnset MOVE_MEMENTO, 64
    terminatelearnset


levelup SPECIES_MILCERY
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_SWEET_SCENT, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_CONFUSION, 13
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_MAGICAL_LEAF, 18
    learnset MOVE_AROMATHERAPY, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_ACID_ARMOR, 30
    learnset MOVE_MYSTICAL_FIRE, 33
    learnset MOVE_ENCORE, 36
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_RECOVER, 42
    learnset MOVE_MISTY_TERRAIN, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_ENTRAINMENT, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_MISTY_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_ALCREMIE
    learnset MOVE_DECORATE, 0
    learnset MOVE_DECORATE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_AROMATHERAPY, 22
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_MYSTICAL_FIRE, 34
    learnset MOVE_ENCORE, 37
    learnset MOVE_DAZZLING_GLEAM, 40
    learnset MOVE_RECOVER, 43
    learnset MOVE_MISTY_TERRAIN, 46
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_ENTRAINMENT, 52
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_ENERGY_BALL, 58
    learnset MOVE_MISTY_EXPLOSION, 61
    terminatelearnset


levelup SPECIES_FALINKS
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_TRAILBLAZE, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_PROTECT, 16
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_COMET_PUNCH, 21
    learnset MOVE_BEAT_UP, 23
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_BREAKING_SWIPE, 30
    learnset MOVE_SMART_STRIKE, 34
    learnset MOVE_BULK_UP, 36
    learnset MOVE_FACADE, 39
    learnset MOVE_BRICK_BREAK, 42
    learnset MOVE_NO_RETREAT, 44
    learnset MOVE_FALSE_SURRENDER, 48
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_ZEN_HEADBUTT, 54
    learnset MOVE_POISON_FANG, 57
    learnset MOVE_SUBSTITUTE, 60
    learnset MOVE_IRON_HEAD, 62
    learnset MOVE_MEGAHORN, 66
    learnset MOVE_CLOSE_COMBAT, 69
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
    learnset MOVE_INFESTATION, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_ICE_BALL, 13
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_ICICLE_SPEAR, 22
    learnset MOVE_SILK_TRAP, 25
    learnset MOVE_BUG_BUZZ, 28
    terminatelearnset


levelup SPECIES_FROSMOTH
    learnset MOVE_ICY_WIND, 0
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_TAILWIND, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_AURORA_VEIL, 1
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_ICE_BALL, 16
    learnset MOVE_POISON_POWDER, 19
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_SLEEP_POWDER, 25
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_ATTRACT, 31
    learnset MOVE_ICICLE_SPEAR, 34
    learnset MOVE_SILK_TRAP, 37
    learnset MOVE_AURORA_BEAM, 40
    learnset MOVE_MIST, 43
    learnset MOVE_SILVER_WIND, 46
    learnset MOVE_OMINOUS_WIND, 49
    learnset MOVE_FEATHER_DANCE, 52
    learnset MOVE_FREEZE_DRY, 55
    learnset MOVE_SIGNAL_BEAM, 58
    learnset MOVE_QUIVER_DANCE, 61
    learnset MOVE_ICE_BEAM, 64
    learnset MOVE_HAIL, 67
    learnset MOVE_BUG_BUZZ, 70
    learnset MOVE_BLIZZARD, 73
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
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_ENCORE, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_HELPING_HAND, 18
    learnset MOVE_SWIFT, 21
    learnset MOVE_AFTER_YOU, 24
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_SHADOW_BALL, 33
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_IMPRISON, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_POWER_SPLIT, 45
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_PSYCHIC_TERRAIN, 54
    learnset MOVE_LAST_RESORT, 57
    learnset MOVE_FUTURE_SIGHT, 60
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
    learnset MOVE_MIRROR_SHOT, 1 
    learnset MOVE_IRON_DEFENSE, 1 
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ROLLOUT, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_CLEAR_SMOG, 9 
    learnset MOVE_WHIRLWIND, 12 
    learnset MOVE_FLASH_CANNON, 15
    learnset MOVE_ROCK_BLAST, 18
    learnset MOVE_AUTOTOMIZE, 21
    learnset MOVE_SMART_STRIKE, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_STRENGTH, 31
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_CURSE, 41
    learnset MOVE_METEOR_MASH, 43
    learnset MOVE_PLAY_ROUGH, 47
    terminatelearnset

levelup SPECIES_COPPERAJAH
    learnset MOVE_POWER_WHIP, 1 
    learnset MOVE_MIRROR_SHOT, 1 
    learnset MOVE_IRON_DEFENSE, 1 
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ROLLOUT, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_CLEAR_SMOG, 9 
    learnset MOVE_WHIRLWIND, 12 
    learnset MOVE_FLASH_CANNON, 15
    learnset MOVE_ROCK_BLAST, 18
    learnset MOVE_AUTOTOMIZE, 21
    learnset MOVE_SMART_STRIKE, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_STRENGTH, 31
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_CURSE, 41
    learnset MOVE_METEOR_MASH, 43
    learnset MOVE_PLAY_ROUGH, 47
    learnset MOVE_HEAVY_SLAM, 50
    learnset MOVE_HEAT_CRASH, 53
    learnset MOVE_SLACK_OFF, 56
    learnset MOVE_HIGH_HORSEPOWER, 59
    learnset MOVE_DOUBLE_IRON_BASH, 62
    learnset MOVE_SUPERPOWER, 66
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
    learnset MOVE_SNARL, 4
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_MAGNET_BOMB, 10
    learnset MOVE_HONE_CLAWS, 13
    learnset MOVE_BREAKING_SWIPE, 16
    learnset MOVE_METAL_SOUND, 18
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_TAIL, 24
    learnset MOVE_MIRROR_SHOT, 27
    learnset MOVE_DRAGON_BREATH, 30
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_DRAGON_CLAW, 39
    learnset MOVE_LASER_FOCUS, 42
    learnset MOVE_FLASH_CANNON, 45
    learnset MOVE_BODY_PRESS, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_DRAGON_PULSE, 54
    learnset MOVE_THUNDERBOLT, 57
    learnset MOVE_METAL_BURST, 60
    learnset MOVE_DRACO_METEOR, 63
    learnset MOVE_STEEL_BEAM, 66
    terminatelearnset


levelup SPECIES_DREEPY
    learnset MOVE_ASTONISH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 4
    learnset MOVE_LOCK_ON, 7
    learnset MOVE_INFESTATION, 10
    learnset MOVE_ASSURANCE, 13
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_HEX, 18
    learnset MOVE_BREAKING_SWIPE, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_THIEF, 27
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_CURSE, 33
    learnset MOVE_U_TURN, 36
    learnset MOVE_SUCKER_PUNCH, 39
    learnset MOVE_DOUBLE_TEAM, 42
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_PHANTOM_FORCE, 48
    learnset MOVE_PSYCHIC_FANGS, 51
    learnset MOVE_TAKE_DOWN, 54
    learnset MOVE_AGILITY, 57
    learnset MOVE_DRAGON_RUSH, 60
    learnset MOVE_DRAGON_DANCE, 63
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_DRACO_METEOR, 69
    learnset MOVE_SHADOW_FORCE, 72
    terminatelearnset


levelup SPECIES_DRAKLOAK
    learnset MOVE_DRAGON_PULSE, 0
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 5
    learnset MOVE_LOCK_ON, 8
    learnset MOVE_INFESTATION, 11
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_WILL_O_WISP, 17
    learnset MOVE_HEX, 19
    learnset MOVE_BREAKING_SWIPE, 22
    learnset MOVE_AGILITY, 25
    learnset MOVE_THIEF, 28
    learnset MOVE_DOUBLE_HIT, 31
    learnset MOVE_CURSE, 34
    learnset MOVE_U_TURN, 37
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_DOUBLE_TEAM, 43
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_PHANTOM_FORCE, 49
    learnset MOVE_PSYCHIC_FANGS, 52
    learnset MOVE_TAKE_DOWN, 55
    learnset MOVE_AGILITY, 58
    learnset MOVE_DRAGON_RUSH, 61
    learnset MOVE_DRAGON_DANCE, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_DRACO_METEOR, 70
    learnset MOVE_SHADOW_FORCE, 73
    terminatelearnset


levelup SPECIES_DRAGAPULT
    learnset MOVE_DRAGON_DARTS, 0
    learnset MOVE_DRAGON_DARTS, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 6
    learnset MOVE_LOCK_ON, 9
    learnset MOVE_INFESTATION, 12
    learnset MOVE_ASSURANCE, 15
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_HEX, 20
    learnset MOVE_BREAKING_SWIPE, 23
    learnset MOVE_AGILITY, 26
    learnset MOVE_THIEF, 29
    learnset MOVE_DOUBLE_HIT, 32
    learnset MOVE_CURSE, 35
    learnset MOVE_U_TURN, 38
    learnset MOVE_SUCKER_PUNCH, 41
    learnset MOVE_DOUBLE_TEAM, 44
    learnset MOVE_DRAGON_CLAW, 47
    learnset MOVE_PHANTOM_FORCE, 50
    learnset MOVE_PSYCHIC_FANGS, 53
    learnset MOVE_TAKE_DOWN, 56
    learnset MOVE_AGILITY, 59
    learnset MOVE_DRAGON_RUSH, 62
    learnset MOVE_DRAGON_DANCE, 65
    learnset MOVE_DOUBLE_EDGE, 68
    learnset MOVE_DRACO_METEOR, 71
    learnset MOVE_SHADOW_FORCE, 74
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
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_DETECT, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_BULK_UP, 33
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_ENDURE, 42
    learnset MOVE_REVERSAL, 45
    learnset MOVE_DYNAMIC_PUNCH, 48
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_CLOSE_COMBAT, 57
    learnset MOVE_FOCUS_PUNCH, 60
    terminatelearnset


levelup SPECIES_URSHIFU
    learnset MOVE_WICKED_BLOW, 0
    learnset MOVE_WICKED_BLOW, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_DETECT, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_BULK_UP, 33
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_ENDURE, 42
    learnset MOVE_REVERSAL, 45
    learnset MOVE_DYNAMIC_PUNCH, 48
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_CLOSE_COMBAT, 57
    learnset MOVE_FOCUS_PUNCH, 60
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
    learnset MOVE_ICICLE_SPEAR, 4
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_BULLDOZE, 10
    learnset MOVE_ICE_SHARD, 13
    learnset MOVE_TRAILBLAZE, 16
    learnset MOVE_STOMP, 18
    learnset MOVE_AVALANCHE, 21
    learnset MOVE_TORMENT, 24
    learnset MOVE_SMART_STRIKE, 27
    learnset MOVE_MIST, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_ZEN_HEADBUTT, 39
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_ICICLE_CRASH, 45
    learnset MOVE_IRON_DEFENSE, 48
    learnset MOVE_BODY_PRESS, 51
    learnset MOVE_ICE_HAMMER, 54
    learnset MOVE_CLOSE_COMBAT, 57
    learnset MOVE_TAUNT, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_SWORDS_DANCE, 66
    terminatelearnset


levelup SPECIES_SPECTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SNARL, 4
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_OMINOUS_WIND, 10
    learnset MOVE_WILL_O_WISP, 13
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_STOMP, 18
    learnset MOVE_HEX, 21
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_MUD_SHOT, 27
    learnset MOVE_HAZE, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_PHANTOM_FORCE, 36
    learnset MOVE_EXTRASENSORY, 39
    learnset MOVE_AURA_SPHERE, 42
    learnset MOVE_SHADOW_BALL, 45
    learnset MOVE_AGILITY, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_DAZZLING_GLEAM, 57
    learnset MOVE_DISABLE, 60
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_NASTY_PLOT, 66
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
    learnset MOVE_HORN_DRILL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ME_FIRST, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CONFUSE_RAY, 9
    learnset MOVE_HIDDEN_POWER, 12
    learnset MOVE_STOMP, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_CALM_MIND, 21
    learnset MOVE_BULLDOZE, 23
    learnset MOVE_HYPNOSIS, 25
    learnset MOVE_PSYSHIELD_BASH, 28
    learnset MOVE_TRI_ATTACK, 31
    learnset MOVE_IMPRISON, 33
    learnset MOVE_HORN_LEECH, 37
    learnset MOVE_PSYSHOCK, 40
    learnset MOVE_AGILITY, 43
    learnset MOVE_THUNDERBOLT, 46
    learnset MOVE_REST, 49
    learnset MOVE_BODY_SLAM, 53
    learnset MOVE_U_TURN, 56
    learnset MOVE_FUTURE_SIGHT, 59
    learnset MOVE_SUPERPOWER, 62
    learnset MOVE_TRICK_ROOM, 66
    learnset MOVE_BOOMBURST, 68
    learnset MOVE_ME_FIRST, 75
    terminatelearnset


levelup SPECIES_KLEAVOR
    learnset MOVE_STONE_AXE, 0
    learnset MOVE_STONE_AXE, 1
    learnset MOVE_SMACK_DOWN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_FALSE_SWIPE, 7
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_ROCK_BLAST, 13
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_POUNCE, 18
    learnset MOVE_DOUBLE_HIT, 21
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_FOCUS_ENERGY, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_AGILITY, 33
    learnset MOVE_ROCK_TOMB, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_ROCK_SLIDE, 48
    learnset MOVE_NIGHT_SLASH, 51
    learnset MOVE_ENDURE, 54
    learnset MOVE_REVERSAL, 57
    learnset MOVE_STONE_EDGE, 60
    learnset MOVE_CLOSE_COMBAT, 63
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
    learnset MOVE_SHADOW_BALL,0
    learnset MOVE_WATER_GUN,1
    learnset MOVE_TAIL_WHIP,1
    learnset MOVE_TACKLE,4
    learnset MOVE_NIGHT_SHADE,7
    learnset MOVE_AQUA_JET,11
    learnset MOVE_SCARY_FACE,14
    learnset MOVE_BITE,16
    learnset MOVE_PLUCK,18
    learnset MOVE_FOCUS_ENERGY,20
    learnset MOVE_HEADBUTT,21
    learnset MOVE_SHADOW_SNEAK,24
    learnset MOVE_RAIN_DANCE,28
    learnset MOVE_RECOVER,31
    learnset MOVE_SCALD,35
    learnset MOVE_ICE_FANG,40
    learnset MOVE_SURF,43
    learnset MOVE_HEX,48
    learnset MOVE_ACID_ARMOR,52
    learnset MOVE_HYDRO_PUMP,56
    learnset MOVE_DESTINY_BOND,58
    learnset MOVE_DOUBLE_EDGE,60
    learnset MOVE_THUNDER_FANG,63
    learnset MOVE_PHANTOM_FORCE,66
    learnset MOVE_WAVE_CRASH,70
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
    learnset MOVE_HARDEN, 5
    learnset MOVE_BITE, 8
    learnset MOVE_PAYBACK, 11
    learnset MOVE_PIN_MISSILE, 14
    learnset MOVE_MINIMIZE, 17
    learnset MOVE_POISON_TAIL, 19
    learnset MOVE_SPIKES, 22
    learnset MOVE_REVENGE, 25
    learnset MOVE_BRINE, 28
    learnset MOVE_SELF_DESTRUCT, 31
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_TOXIC_SPIKES, 37
    learnset MOVE_STOCKPILE, 40
    learnset MOVE_SPIT_UP, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_ACUPRESSURE, 49
    learnset MOVE_LIQUIDATION, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_DESTINY_BOND, 58
    learnset MOVE_GUNK_SHOT, 61
    learnset MOVE_DOUBLE_EDGE, 63
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
    learnset MOVE_YAWN, 1 
    learnset MOVE_EMBER, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_ROUND, 4 
    learnset MOVE_FIRE_SPIN, 6
    learnset MOVE_MEMENTO, 9 
    learnset MOVE_ROAR, 12 
    learnset MOVE_INCINERATE, 15
    learnset MOVE_SNARL, 18
    learnset MOVE_SING, 21
    learnset MOVE_FLAME_BURST, 23
    learnset MOVE_SCORCHING_SANDS, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_MYSTICAL_FIRE, 31
    learnset MOVE_SLACK_OFF, 33
    terminatelearnset

levelup SPECIES_CROCALOR
    learnset MOVE_YAWN, 1 
    learnset MOVE_EMBER, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_ROUND, 4 
    learnset MOVE_FIRE_SPIN, 6
    learnset MOVE_MEMENTO, 9 
    learnset MOVE_ROAR, 12 
    learnset MOVE_INCINERATE, 15
    learnset MOVE_SNARL, 18
    learnset MOVE_SING, 21
    learnset MOVE_FLAME_BURST, 23
    learnset MOVE_SCORCHING_SANDS, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_MYSTICAL_FIRE, 31
    learnset MOVE_SLACK_OFF, 33
    learnset MOVE_INFERNAL_PARADE, 38
    learnset MOVE_PERISH_SONG, 41
    learnset MOVE_ALLURING_VOICE, 43
    learnset MOVE_ENCORE, 46
    terminatelearnset

levelup SPECIES_SKELEDIRGE
    learnset MOVE_TORCH_SONG, 0 
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_YAWN, 1 
    learnset MOVE_EMBER, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_ROUND, 4 
    learnset MOVE_FIRE_SPIN, 6
    learnset MOVE_MEMENTO, 9 
    learnset MOVE_ROAR, 12 
    learnset MOVE_INCINERATE, 15
    learnset MOVE_SNARL, 18
    learnset MOVE_SING, 21
    learnset MOVE_FLAME_BURST, 23
    learnset MOVE_SCORCHING_SANDS, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_MYSTICAL_FIRE, 31
    learnset MOVE_SLACK_OFF, 33
    learnset MOVE_INFERNAL_PARADE, 38
    learnset MOVE_PERISH_SONG, 41
    learnset MOVE_ALLURING_VOICE, 43
    learnset MOVE_ENCORE, 46
    learnset MOVE_HEAT_WAVE, 49
    learnset MOVE_SHADOW_BALL, 53
    learnset MOVE_CURSE, 57
    learnset MOVE_FIRE_BLAST, 63
    learnset MOVE_BOOMBURST, 67
    learnset MOVE_DESTINY_BOND, 70
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
    learnset MOVE_POUND, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_ECHOED_VOICE, 3
    learnset MOVE_HELPING_HAND, 6
    learnset MOVE_SUPER_FANG, 9
    learnset MOVE_DOUBLE_SLAP, 15
    learnset MOVE_ARM_THRUST, 18
    learnset MOVE_FURY_ATTACK, 21
    learnset MOVE_FURY_SWIPES, 24
    learnset MOVE_TAUNT, 27
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_BULLET_SEED, 36
    learnset MOVE_PIN_MISSILE, 39
    learnset MOVE_TRIPLE_AXEL, 42
    learnset MOVE_BEAT_UP, 45
    learnset MOVE_SWITCHEROO, 48
    learnset MOVE_PLAY_ROUGH, 51
    learnset MOVE_U_TURN, 54
    learnset MOVE_DIG, 57
    learnset MOVE_SEED_BOMB, 60
    learnset MOVE_REST, 63
    learnset MOVE_POPULATION_BOMB, 66
    learnset MOVE_ENCORE, 69
    terminatelearnset

levelup SPECIES_MAUSHOLD
    learnset MOVE_TIDY_UP, 0
    learnset MOVE_POUND, 1
    learnset MOVE_SLEEP_TALK, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_THUNDER_WAVE, 3
    learnset MOVE_HELPING_HAND, 6
    learnset MOVE_LOW_KICK, 9
    learnset MOVE_DOUBLE_SLAP, 15
    learnset MOVE_TRAILBLAZE, 18
    learnset MOVE_FURY_ATTACK, 21
    learnset MOVE_FURY_SWIPES, 24
    learnset MOVE_SUBSTITUTE  , 27
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_CRUNCH, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_BULLET_SEED, 39
    learnset MOVE_PIN_MISSILE, 42
    learnset MOVE_TRIPLE_AXEL, 46
    learnset MOVE_BEAT_UP, 49
    learnset MOVE_SWITCHEROO, 51
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_U_TURN, 56
    learnset MOVE_DIG, 60
    learnset MOVE_SEED_BOMB, 63
    learnset MOVE_REST, 67
    learnset MOVE_POPULATION_BOMB, 69
    learnset MOVE_ENCORE, 73
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
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_LOW_KICK, 7
    learnset MOVE_COMET_PUNCH, 10
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_MACH_PUNCH, 19
    learnset MOVE_NIGHT_SHADE, 22
    learnset MOVE_FLAME_CHARGE, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_INCINERATE, 34
    learnset MOVE_BULLDOZE, 37
    learnset MOVE_FLAME_BURST, 40
    learnset MOVE_ASSURANCE, 43
    learnset MOVE_HEADBUTT, 46
    learnset MOVE_LAVA_PLUME, 49
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_BLAZE_KICK, 55
    learnset MOVE_KNOCK_OFF, 58
    learnset MOVE_FLAMETHROWER, 61
    learnset MOVE_SCORCHING_SANDS, 64
    learnset MOVE_FIRE_BLAST, 67
    terminatelearnset

levelup SPECIES_ARMAROUGE
    learnset MOVE_PSYSHOCK, 0
    learnset MOVE_PSYSHOCK, 1
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_WIDE_GUARD, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_LOW_KICK, 7
    learnset MOVE_COMET_PUNCH, 10
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_MACH_PUNCH, 19
    learnset MOVE_NIGHT_SHADE, 22
    learnset MOVE_FLAME_CHARGE, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_INCINERATE, 34
    learnset MOVE_BULLDOZE, 37
    learnset MOVE_FLAME_BURST, 40
    learnset MOVE_ASSURANCE, 43
    learnset MOVE_DIZZY_PUNCH, 46
    learnset MOVE_LAVA_PLUME, 49
    learnset MOVE_EXTRASENSORY, 52
    learnset MOVE_BLAZE_KICK, 55
    learnset MOVE_KNOCK_OFF, 58
    learnset MOVE_FLAMETHROWER, 61
    learnset MOVE_SCORCHING_SANDS, 64
    learnset MOVE_FIRE_BLAST, 67
    learnset MOVE_EXPANDING_FORCE, 70
    learnset MOVE_ARMOR_CANNON, 73
    terminatelearnset

levelup SPECIES_CERULEDGE
    learnset MOVE_SHADOW_CLAW, 0
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_FIRE_LASH, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_LOW_KICK, 7
    learnset MOVE_COMET_PUNCH, 10
    learnset MOVE_FIRE_SPIN, 13
    learnset MOVE_CLEAR_SMOG, 16
    learnset MOVE_MACH_PUNCH, 19
    learnset MOVE_NIGHT_SHADE, 22
    learnset MOVE_FLAME_CHARGE, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_INCINERATE, 34
    learnset MOVE_BULLDOZE, 37
    learnset MOVE_FLAME_BURST, 40
    learnset MOVE_ASSURANCE, 43
    learnset MOVE_SLASH, 46
    learnset MOVE_LAVA_PLUME, 49
    learnset MOVE_PSYCHO_CUT, 52
    learnset MOVE_BLAZE_KICK, 55
    learnset MOVE_KNOCK_OFF, 58
    learnset MOVE_BITTER_BLADE, 61
    learnset MOVE_STOMPING_TANTRUM, 64
    learnset MOVE_FIRE_BLAST, 67
    learnset MOVE_POLTERGEIST, 70
    learnset MOVE_FLARE_BLITZ, 73
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
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDERSHOCK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_GUST, 13
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_WING_ATTACK, 22
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SPARK, 28
    learnset MOVE_PLUCK, 31
    learnset MOVE_WHIRLWIND, 34
    learnset MOVE_VOLT_SWITCH, 37
    learnset MOVE_DUAL_WINGBEAT, 40
    learnset MOVE_AIR_CUTTER, 43
    learnset MOVE_SLASH, 46
    learnset MOVE_DISCHARGE, 49
    learnset MOVE_AIR_SLASH, 52
    learnset MOVE_STEEL_WING, 55
    learnset MOVE_ROOST, 58
    learnset MOVE_THUNDERBOLT, 61
    learnset MOVE_UPROAR, 64
    learnset MOVE_DRILL_PECK, 67
    learnset MOVE_HURRICANE, 70
    learnset MOVE_THUNDER, 73
    terminatelearnset

levelup SPECIES_KILOWATTREL
    learnset MOVE_ELECTRO_BALL, 0
    learnset MOVE_ELECTRO_BALL, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_TAILWIND, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDERSHOCK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_GUST, 13
    learnset MOVE_ECHOED_VOICE, 16
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_WING_ATTACK, 22
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SPARK, 29
    learnset MOVE_PLUCK, 32
    learnset MOVE_WHIRLWIND, 35
    learnset MOVE_VOLT_SWITCH, 38
    learnset MOVE_DUAL_WINGBEAT, 41
    learnset MOVE_AIR_CUTTER, 44
    learnset MOVE_SLASH, 47
    learnset MOVE_DISCHARGE, 50
    learnset MOVE_AIR_SLASH, 53
    learnset MOVE_STEEL_WING, 56
    learnset MOVE_ROOST, 59
    learnset MOVE_THUNDERBOLT, 62
    learnset MOVE_UPROAR, 65
    learnset MOVE_DRILL_PECK, 68
    learnset MOVE_HURRICANE, 71
    learnset MOVE_THUNDER, 74
    terminatelearnset

levelup SPECIES_MASCHIFF
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 4
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SNARL, 10
    learnset MOVE_ROAR, 13
    learnset MOVE_BITE, 16
    learnset MOVE_COVET, 19
    learnset MOVE_SCARY_FACE, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_REVENGE, 31
    learnset MOVE_PAYBACK, 34
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_CRUSH_CLAW, 40
    learnset MOVE_NIGHT_SLASH, 43
    learnset MOVE_REVERSAL, 46
    learnset MOVE_SWAGGER, 49
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_CRUNCH, 55
    learnset MOVE_PSYCHIC_FANGS, 58
    learnset MOVE_JAW_LOCK, 61
    learnset MOVE_BODY_SLAM, 64
    learnset MOVE_PLAY_ROUGH, 67
    learnset MOVE_DOUBLE_EDGE, 70
    terminatelearnset

levelup SPECIES_MABOSSTIFF
    learnset MOVE_COMEUPPANCE, 0
    learnset MOVE_COMEUPPANCE, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_POISON_FANG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 4
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SNARL, 10
    learnset MOVE_ROAR, 13
    learnset MOVE_BITE, 16
    learnset MOVE_COVET, 19
    learnset MOVE_SCARY_FACE, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_REVENGE, 31
    learnset MOVE_PAYBACK, 34
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_CRUSH_CLAW, 40
    learnset MOVE_NIGHT_SLASH, 43
    learnset MOVE_REVERSAL, 46
    learnset MOVE_SWAGGER, 49
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_CRUNCH, 55
    learnset MOVE_PSYCHIC_FANGS, 58
    learnset MOVE_JAW_LOCK, 61
    learnset MOVE_BODY_SLAM, 64
    learnset MOVE_PLAY_ROUGH, 67
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_OUTRAGE, 73
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
    learnset MOVE_FLATTER, 21
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_FLASH_CANNON, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_SPIRIT_BREAK, 37
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_SKITTER_SMACK, 43
    learnset MOVE_FOUL_PLAY, 46
    learnset MOVE_ACUPRESSURE, 50
    learnset MOVE_PLAY_ROUGH, 55
    terminatelearnset

levelup SPECIES_TINKATUFF
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_FLATTER, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_FLASH_CANNON, 31
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_FAKE_OUT, 38
    learnset MOVE_SPIRIT_BREAK, 40
    learnset MOVE_KNOCK_OFF, 43
    learnset MOVE_SKITTER_SMACK, 46
    learnset MOVE_FOUL_PLAY, 50
    learnset MOVE_ACUPRESSURE, 54
    learnset MOVE_DOUBLE_IRON_BASH, 57
    learnset MOVE_PLAY_ROUGH, 62
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
    learnset MOVE_FLATTER, 21
    learnset MOVE_BRUTAL_SWING, 24
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_FLASH_CANNON, 31
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_FAKE_OUT, 38
    learnset MOVE_SPIRIT_BREAK, 41
    learnset MOVE_KNOCK_OFF, 44
    learnset MOVE_SKITTER_SMACK, 49
    learnset MOVE_FOUL_PLAY, 52
    learnset MOVE_ACUPRESSURE, 57
    learnset MOVE_DOUBLE_IRON_BASH, 60
    learnset MOVE_ICE_HAMMER, 64
    learnset MOVE_PLAY_ROUGH, 68
    terminatelearnset

levelup SPECIES_WIGLETT
    learnset MOVE_WRAP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_FLAIL, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_BUBBLEBEAM, 28
    learnset MOVE_COVET, 31
    learnset MOVE_FLIP_TURN, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_DIVE, 40
    learnset MOVE_DIG, 43
    learnset MOVE_CHIP_AWAY, 46
    learnset MOVE_LIQUIDATION, 49
    learnset MOVE_KNOCK_OFF, 52
    learnset MOVE_SLAM, 52
    learnset MOVE_SUCKER_PUNCH, 55
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_THROAT_CHOP, 61
    learnset MOVE_WAVE_CRASH, 64
    terminatelearnset

levelup SPECIES_WUGTRIO
    learnset MOVE_TRIPLE_DIVE, 0
    learnset MOVE_TRIPLE_DIVE, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_AQUA_RING, 1
    learnset MOVE_FLING, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_FLAIL, 13
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_FEINT_ATTACK, 25
    learnset MOVE_BUBBLEBEAM, 29
    learnset MOVE_COVET, 32
    learnset MOVE_FLIP_TURN, 35
    learnset MOVE_HEADBUTT, 38
    learnset MOVE_DIVE, 41
    learnset MOVE_DIG, 44
    learnset MOVE_CHIP_AWAY, 47
    learnset MOVE_LIQUIDATION, 50
    learnset MOVE_KNOCK_OFF, 53
    learnset MOVE_SLAM, 56
    learnset MOVE_SUCKER_PUNCH, 59
    learnset MOVE_HYDRO_PUMP, 62
    learnset MOVE_THROAT_CHOP, 65
    learnset MOVE_WAVE_CRASH, 68
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
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_SUPERSONIC, 13
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AQUA_JET, 19
    learnset MOVE_DOUBLE_HIT, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_CHARM, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_BREAKING_SWIPE, 37
    learnset MOVE_AURORA_BEAM, 40
    learnset MOVE_AQUA_RING, 43
    learnset MOVE_DIVE, 46
    learnset MOVE_BRICK_BREAK, 49
    learnset MOVE_SLAM, 52
    learnset MOVE_LIQUIDATION, 55
    learnset MOVE_ENCORE, 58
    learnset MOVE_AQUA_TAIL, 61
    learnset MOVE_MIST, 64
    learnset MOVE_TAKE_DOWN, 67
    learnset MOVE_HYDRO_PUMP, 70
    terminatelearnset

levelup SPECIES_PALAFIN
    learnset MOVE_FLIP_TURN, 0
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_JET_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BUBBLE, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_SUPERSONIC, 13
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_AQUA_JET, 19
    learnset MOVE_DOUBLE_HIT, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_CHARM, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_HEADBUTT, 34
    learnset MOVE_BREAKING_SWIPE, 37
    learnset MOVE_AURORA_BEAM, 41
    learnset MOVE_AQUA_RING, 44
    learnset MOVE_DIVE, 47
    learnset MOVE_BRICK_BREAK, 50
    learnset MOVE_SLAM, 53
    learnset MOVE_LIQUIDATION, 56
    learnset MOVE_STRENGTH, 59
    learnset MOVE_ENCORE, 62
    learnset MOVE_AQUA_TAIL, 65
    learnset MOVE_MIST, 68
    learnset MOVE_TAKE_DOWN, 71
    learnset MOVE_HYDRO_PUMP, 74
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_WAVE_CRASH, 80
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
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_PECK, 7
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_ACID_SPRAY, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_POISON_TAIL, 22
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_VENOSHOCK, 31
    learnset MOVE_PLUCK, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_SLAM, 43
    learnset MOVE_DRILL_PECK, 46
    learnset MOVE_POWER_GEM, 49
    learnset MOVE_ROCK_POLISH, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_ACID_ARMOR, 58
    learnset MOVE_DRILL_RUN, 61
    learnset MOVE_SANDSTORM, 64
    learnset MOVE_EARTH_POWER, 67
    learnset MOVE_PETAL_DANCE, 70
    learnset MOVE_SLUDGE_WAVE, 73
    terminatelearnset

levelup SPECIES_GLIMMORA
    learnset MOVE_MORTAL_SPIN, 0
    learnset MOVE_MORTAL_SPIN, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_POISON_STING, 4
    learnset MOVE_PECK, 7
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_ACID_SPRAY, 13
    learnset MOVE_POISON_POWDER, 16
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_POISON_TAIL, 22
    learnset MOVE_ANCIENT_POWER, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_VENOSHOCK, 31
    learnset MOVE_PLUCK, 34
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_POISON_JAB, 41
    learnset MOVE_SLAM, 44
    learnset MOVE_DRILL_PECK, 47
    learnset MOVE_POWER_GEM, 50
    learnset MOVE_ROCK_POLISH, 53
    learnset MOVE_SLUDGE_BOMB, 56
    learnset MOVE_ACID_ARMOR, 59
    learnset MOVE_DRILL_RUN, 62
    learnset MOVE_SANDSTORM, 65
    learnset MOVE_EARTH_POWER, 68
    learnset MOVE_PETAL_DANCE, 71
    learnset MOVE_SLUDGE_WAVE, 74
    learnset MOVE_PETAL_DANCE, 77
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
    learnset MOVE_ENCORE, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 4
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_SEISMIC_TOSS, 16
    learnset MOVE_SWAGGER, 18
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_SCREECH, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_DETECT, 33
    learnset MOVE_LOW_SWEEP, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_SUBMISSION, 42
    learnset MOVE_RAGE_FIST, 45
    learnset MOVE_AGILITY, 48
    learnset MOVE_CROSS_CHOP, 51
    learnset MOVE_POISON_JAB, 54
    learnset MOVE_STOMPING_TANTRUM, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_FINAL_GAMBIT, 68
    terminatelearnset

levelup SPECIES_CLODSIRE
    learnset MOVE_AMNESIA, 0
    learnset MOVE_AMNESIA, 1
    learnset MOVE_GASTRO_ACID, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_POISON_STING, 7
    learnset MOVE_YAWN, 10
    learnset MOVE_ACID, 13
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_POISON_TAIL, 19
    learnset MOVE_WATER_PULSE, 23
    learnset MOVE_BULLDOZE, 26
    learnset MOVE_COVET, 29
    learnset MOVE_MUD_BOMB, 32
    learnset MOVE_SLUDGE, 35
    learnset MOVE_HEADBUTT, 38
    learnset MOVE_TOXIC_SPIKES, 41
    learnset MOVE_POISON_JAB, 44
    learnset MOVE_STOMPING_TANTRUM, 47
    learnset MOVE_SLAM, 50
    learnset MOVE_MUDDY_WATER, 53
    learnset MOVE_SLUDGE_BOMB, 56
    learnset MOVE_EARTH_POWER, 59
    learnset MOVE_BODY_SLAM, 62
    learnset MOVE_SLUDGE_WAVE, 65
    learnset MOVE_TOXIC, 68
    learnset MOVE_EARTHQUAKE, 71
    learnset MOVE_MEGAHORN, 74
    learnset MOVE_GUNK_SHOT, 77
    terminatelearnset

levelup SPECIES_FARIGIRAF
    learnset MOVE_POWER_SWAP, 1
    learnset MOVE_GUARD_SWAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_FORESIGHT, 8
    learnset MOVE_ASSURANCE, 11
    learnset MOVE_SWIFT, 14
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_THIEF, 19
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_AGILITY, 25
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_BATON_PASS, 31
    learnset MOVE_DOUBLE_KICK, 34
    learnset MOVE_FACADE, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_TWIN_BEAM, 43
    learnset MOVE_NASTY_PLOT, 46
    learnset MOVE_HYPER_VOICE, 49
    learnset MOVE_DAZZLING_GLEAM, 52
    learnset MOVE_PSYCHIC, 55
    learnset MOVE_SHADOW_BALL, 58
    learnset MOVE_FUTURE_SIGHT, 61
    learnset MOVE_BOOMBURST, 64
    terminatelearnset

levelup SPECIES_DUDUNSPARCE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_GLARE, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_BITE, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_YAWN, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_FACADE, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_HYPER_DRILL, 42
    learnset MOVE_COIL, 45
    learnset MOVE_DRILL_RUN, 48
    learnset MOVE_ENDEAVOR, 51
    learnset MOVE_DRAGON_RUSH, 54
    learnset MOVE_EARTHQUAKE, 57
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_LAST_RESORT, 63
    learnset MOVE_HURRICANE, 66
    learnset MOVE_BOOMBURST, 69
    terminatelearnset

levelup SPECIES_KINGAMBIT //MadebyDaotama
    learnset MOVE_KOWTOW_CLEAVE, 0
    learnset MOVE_KOWTOW_CLEAVE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_TAUNT, 9
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_FALSE_SWIPE, 15
    learnset MOVE_TORMENT, 18
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_SCARY_FACE, 23
    learnset MOVE_PAYBACK, 26
    learnset MOVE_ROCK_TOMB, 29
    learnset MOVE_METAL_SOUND, 32
    learnset MOVE_SLASH, 35
    learnset MOVE_SUCKER_PUNCH, 39
    learnset MOVE_NIGHT_SLASH, 41
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_IRON_DEFENSE, 47
    learnset MOVE_EMBARGO, 50
    learnset MOVE_IRON_HEAD, 53
    learnset MOVE_SWORDS_DANCE, 56
    learnset MOVE_STONE_EDGE, 59
    learnset MOVE_GUILLOTINE, 62
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
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_TWISTER, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FOCUS_ENERGY, 19
    learnset MOVE_CHILLING_WATER, 22
    learnset MOVE_FROST_BREATH, 25
    learnset MOVE_DRAGON_TAIL, 28
    learnset MOVE_BITE, 31
    learnset MOVE_ICE_FANG, 34
    learnset MOVE_BREAKING_SWIPE, 37
    learnset MOVE_GLACIATE, 40
    learnset MOVE_FREEZE_DRY, 43
    learnset MOVE_SLASH, 46
    learnset MOVE_DRAGON_CLAW, 49
    learnset MOVE_ICE_PUNCH, 52
    learnset MOVE_CRUNCH, 55
    learnset MOVE_BODY_SLAM, 58
    learnset MOVE_ICE_BEAM, 61
    learnset MOVE_TAKE_DOWN, 64
    learnset MOVE_ICICLE_CRASH, 67
    learnset MOVE_DRAGON_RUSH, 70
    learnset MOVE_BLIZZARD, 73
    learnset MOVE_OUTRAGE, 76
    terminatelearnset

levelup SPECIES_ARCTIBAX
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_TWISTER, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FOCUS_ENERGY, 19
    learnset MOVE_CHILLING_WATER, 22
    learnset MOVE_FROST_BREATH, 25
    learnset MOVE_DRAGON_TAIL, 28
    learnset MOVE_BITE, 31
    learnset MOVE_ICE_FANG, 34
    learnset MOVE_BREAKING_SWIPE, 38
    learnset MOVE_GLACIATE, 41
    learnset MOVE_FREEZE_DRY, 44
    learnset MOVE_SLASH, 47
    learnset MOVE_DRAGON_CLAW, 50
    learnset MOVE_ICE_PUNCH, 53
    learnset MOVE_CRUNCH, 56
    learnset MOVE_BODY_SLAM, 59
    learnset MOVE_ICE_BEAM, 62
    learnset MOVE_TAKE_DOWN, 65
    learnset MOVE_ICICLE_CRASH, 68
    learnset MOVE_DRAGON_RUSH, 71
    learnset MOVE_BLIZZARD, 74
    learnset MOVE_OUTRAGE, 77
    terminatelearnset

levelup SPECIES_BAXCALIBUR
    learnset MOVE_GLAIVE_RUSH, 0
    learnset MOVE_GLAIVE_RUSH, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_POWDER_SNOW, 4
    learnset MOVE_TWISTER, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FOCUS_ENERGY, 19
    learnset MOVE_CHILLING_WATER, 22
    learnset MOVE_FROST_BREATH, 25
    learnset MOVE_DRAGON_TAIL, 28
    learnset MOVE_BITE, 31
    learnset MOVE_ICE_FANG, 34
    learnset MOVE_BREAKING_SWIPE, 38
    learnset MOVE_GLACIATE, 41
    learnset MOVE_FREEZE_DRY, 44
    learnset MOVE_SLASH, 47
    learnset MOVE_DRAGON_CLAW, 50
    learnset MOVE_ICE_PUNCH, 53
    learnset MOVE_CRUNCH, 57
    learnset MOVE_BODY_SLAM, 60
    learnset MOVE_ICE_BEAM, 63
    learnset MOVE_TAKE_DOWN, 66
    learnset MOVE_ICICLE_CRASH, 69
    learnset MOVE_DRAGON_RUSH, 72
    learnset MOVE_BLIZZARD, 75
    learnset MOVE_OUTRAGE, 78
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
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SNARL, 6
    learnset MOVE_ROCK_SMASH, 9
    learnset MOVE_MAGNET_BOMB, 12
    learnset MOVE_HONE_CLAWS, 15
    learnset MOVE_BREAKING_SWIPE, 18
    learnset MOVE_METAL_SOUND, 20
    learnset MOVE_SLASH, 23
    learnset MOVE_DRAGON_TAIL, 26
    learnset MOVE_MIRROR_SHOT, 29
    learnset MOVE_DRAGON_BREATH, 32
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_IRON_DEFENSE, 38
    learnset MOVE_DRAGON_CLAW, 41
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_FLASH_CANNON, 47
    learnset MOVE_BODY_PRESS, 50
    learnset MOVE_DARK_PULSE, 53
    learnset MOVE_DRAGON_PULSE, 56
    learnset MOVE_THUNDERBOLT, 59
    learnset MOVE_METAL_BURST, 62
    learnset MOVE_DRACO_METEOR, 65
    learnset MOVE_STEEL_BEAM, 68
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
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_COTTON_SPORE, 11
    learnset MOVE_CHARGE, 14
    learnset MOVE_SWIFT, 17
    learnset MOVE_COTTON_GUARD, 20
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_ELECTRIC_TERRAIN, 30
    learnset MOVE_VOLT_SWITCH, 33
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_SIGNAL_BEAM, 44
    learnset MOVE_REFLECT, 47
    learnset MOVE_LIGHT_SCREEN, 47
    learnset MOVE_PARABOLIC_CHARGE, 50
    learnset MOVE_AGILITY, 52
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_DRAGON_PULSE, 59
    learnset MOVE_FOCUS_BLAST, 63
    learnset MOVE_THUNDERBOLT, 66
    learnset MOVE_RAIN_DANCE, 70
    learnset MOVE_THUNDER, 73
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
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SCARY_FACE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_CHIP_AWAY, 16
    learnset MOVE_TAUNT, 19
	learnset MOVE_BULLDOZE, 21
    learnset MOVE_SCREECH, 23
    learnset MOVE_SANDSTORM, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_PAYBACK, 32
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_STEALTH_ROCK, 38
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_THRASH, 44
    learnset MOVE_CRUNCH, 47
    learnset MOVE_DIG, 51
    learnset MOVE_GIGA_IMPACT, 55
    learnset MOVE_STONE_EDGE, 59
    learnset MOVE_HIGH_HORSEPOWER, 62
    learnset MOVE_OUTRAGE, 66
    learnset MOVE_DRAGON_DANCE, 70
    learnset MOVE_EARTHQUAKE, 74
    learnset MOVE_DARKEST_LARIAT, 79
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
    learnset MOVE_PERISH_SONG, 1
    learnset MOVE_DARK_PULSE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_PURSUIT, 10
    learnset MOVE_DOUBLE_TEAM, 14
    learnset MOVE_TAUNT, 16
    learnset MOVE_BITE, 20
    learnset MOVE_DETECT, 22
    learnset MOVE_SLASH, 25
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_SHADOW_CLAW, 29
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_FOCUS_ENERGY, 34
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_FOUL_PLAY, 39
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_BATON_PASS, 51
    learnset MOVE_ZEN_HEADBUTT, 55
    learnset MOVE_PLAY_ROUGH, 57
    learnset MOVE_PERISH_SONG, 60
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_POWER_TRIP, 67
    learnset MOVE_MEGAHORN, 72
    learnset MOVE_CLOSE_COMBAT, 76
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
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_WORK_UP, 31
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_ENDEAVOR, 43
    learnset MOVE_HYPER_FANG, 46
    learnset MOVE_REVERSAL, 49
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset


levelup SPECIES_RATICATE_ALOLAN
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_PURSUIT, 16
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_GLARE, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_WORK_UP, 34
    learnset MOVE_SUPER_FANG, 37
    learnset MOVE_LUNGE, 40
    learnset MOVE_HEADBUTT, 43
    learnset MOVE_CRUNCH, 46
    learnset MOVE_ENDEAVOR, 49
    learnset MOVE_HYPER_FANG, 52
    learnset MOVE_REVERSAL, 56
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_RAICHU_ALOLAN
    learnset MOVE_PSYCHIC, 0
    learnset MOVE_PSYCHIC, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_PLAY_NICE, 3
    learnset MOVE_NUZZLE, 5
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_SWEET_KISS, 11
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_DOUBLE_TEAM, 17
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_SWIFT, 21
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SPARK, 27
    learnset MOVE_SLAM, 29
    learnset MOVE_DIG, 31
    learnset MOVE_DISCHARGE, 33
    learnset MOVE_AGILITY, 35
    learnset MOVE_ENCORE, 37
    learnset MOVE_PSYSHOCK, 41
    learnset MOVE_DAZZLING_GLEAM, 43
    learnset MOVE_NASTY_PLOT, 45
    learnset MOVE_THUNDERBOLT, 48
    learnset MOVE_LIGHT_SCREEN, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_THUNDER, 57
    terminatelearnset


levelup SPECIES_SANDSHREW_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_BIDE, 3
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_BALL, 7
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_MIST, 11
    learnset MOVE_FURY_CUTTER, 13
    learnset MOVE_METAL_CLAW, 15
    learnset MOVE_SWIFT, 17
    learnset MOVE_ROLLOUT, 19
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_PROTECT, 23
    learnset MOVE_SLASH, 26
    learnset MOVE_ICE_SHARD, 29
    learnset MOVE_GYRO_BALL, 32
    learnset MOVE_MIRROR_COAT, 35
    learnset MOVE_BULLDOZE, 38
    learnset MOVE_ICE_PUNCH, 42
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_DRILL_RUN, 48
    learnset MOVE_HAIL, 52
    learnset MOVE_BLIZZARD, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_METEOR_MASH, 62
    terminatelearnset


levelup SPECIES_SANDSLASH_ALOLAN
    learnset MOVE_ICICLE_SPEAR, 0
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_ICICLE_CRASH, 1
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_BIDE, 3
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_BALL, 7
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_MIST, 11
    learnset MOVE_FURY_CUTTER, 13
    learnset MOVE_METAL_CLAW, 15
    learnset MOVE_SWIFT, 17
    learnset MOVE_ROLLOUT, 19
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_PROTECT, 23
    learnset MOVE_SLASH, 26
    learnset MOVE_ICE_SHARD, 29
    learnset MOVE_GYRO_BALL, 32
    learnset MOVE_MIRROR_COAT, 35
    learnset MOVE_BULLDOZE, 38
    learnset MOVE_ICE_PUNCH, 42
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_DRILL_RUN, 48
    learnset MOVE_HAIL, 52
    learnset MOVE_BLIZZARD, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_METEOR_MASH, 62
    terminatelearnset


levelup SPECIES_VULPIX_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_DISABLE, 3
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ROAR, 7
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_SPITE, 11
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_SNARL, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_IMPRISON, 21
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_SNOWSCAPE, 27
    learnset MOVE_CAPTIVATE, 29
    learnset MOVE_CHILLING_WATER, 31
    learnset MOVE_SAFEGUARD, 33
    learnset MOVE_HEX, 35
    learnset MOVE_DOUBLE_TEAM, 37
    learnset MOVE_SNARL, 39
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_DAZZLING_GLEAM, 48
    learnset MOVE_FREEZE_DRY, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_ENCORE, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_AURORA_VEIL, 64
    learnset MOVE_WEATHER_BALL, 68
    terminatelearnset


levelup SPECIES_NINETALES_ALOLAN
    learnset MOVE_HYPNOSIS, 0
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_DISABLE, 3
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ROAR, 7
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_SPITE, 11
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_SNARL, 15
    learnset MOVE_CONFUSE_RAY, 17
    learnset MOVE_PAYBACK, 19
    learnset MOVE_IMPRISON, 21
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_SNOWSCAPE, 27
    learnset MOVE_CAPTIVATE, 29
    learnset MOVE_CHILLING_WATER, 31
    learnset MOVE_SAFEGUARD, 33
    learnset MOVE_HEX, 35
    learnset MOVE_DOUBLE_TEAM, 37
    learnset MOVE_SNARL, 39
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_DAZZLING_GLEAM, 48
    learnset MOVE_FREEZE_DRY, 51
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_ENCORE, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_AURORA_VEIL, 64
    learnset MOVE_WEATHER_BALL, 68
    terminatelearnset


levelup SPECIES_DIGLETT_ALOLAN
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_HONE_CLAWS, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_ENDURE, 18
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_MUD_BOMB, 24
    learnset MOVE_SMART_STRIKE, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_STEALTH_ROCK, 36
    learnset MOVE_NIGHT_SLASH, 39
    learnset MOVE_AGILITY, 42
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_REVERSAL, 48
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_MEMENTO, 58
    learnset MOVE_FINAL_GAMBIT, 62
    learnset MOVE_STONE_EDGE, 65
    learnset MOVE_HEADLONG_RUSH, 68
    terminatelearnset


levelup SPECIES_DUGTRIO_ALOLAN
    learnset MOVE_SAND_TOMB, 0
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_ASTONISH, 8
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_HONE_CLAWS, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_ENDURE, 19
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_SMART_STRIKE, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_STEALTH_ROCK, 37
    learnset MOVE_NIGHT_SLASH, 40
    learnset MOVE_AGILITY, 43
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_REVERSAL, 49
    learnset MOVE_SWORDS_DANCE, 53
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_MEMENTO, 59
    learnset MOVE_FINAL_GAMBIT, 63
    learnset MOVE_STONE_EDGE, 66
    learnset MOVE_HEADLONG_RUSH, 69
    terminatelearnset


levelup SPECIES_MEOWTH_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SNARL, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_FEINT_ATTACK, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_TAUNT, 22
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SWIFT, 28
    learnset MOVE_ENCORE, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_SWAGGER, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_NASTY_PLOT, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_GUNK_SHOT, 62
    terminatelearnset


levelup SPECIES_PERSIAN_ALOLAN
    learnset MOVE_SWITCHEROO, 1
    learnset MOVE_AMNESIA, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_QUASH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SNARL, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_FEINT_ATTACK, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_TAUNT, 22
    learnset MOVE_TRAILBLAZE, 25
    learnset MOVE_SWIFT, 28
    learnset MOVE_ENCORE, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_SWAGGER, 46
    learnset MOVE_DARK_PULSE, 49
    learnset MOVE_HYPER_VOICE, 52
    learnset MOVE_NASTY_PLOT, 55
    learnset MOVE_DOUBLE_EDGE, 58
    learnset MOVE_GUNK_SHOT, 62
    terminatelearnset


levelup SPECIES_GEODUDE_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_ROCK_POLISH, 7
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_SHOCK_WAVE, 13
    learnset MOVE_STEALTH_ROCK, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_SPARK, 21
    learnset MOVE_FIRE_PUNCH, 24
    learnset MOVE_STEALTH_ROCK, 27
    learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_SCARY_FACE, 36
    learnset MOVE_DISCHARGE, 39
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_GYRO_BALL, 55
    learnset MOVE_CURSE, 58
    learnset MOVE_EXPLOSION, 62
    learnset MOVE_DOUBLE_EDGE, 65
    learnset MOVE_HEAD_SMASH, 68
    terminatelearnset


levelup SPECIES_GRAVELER_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_ROCK_POLISH, 8
    learnset MOVE_ROCK_THROW, 11
    learnset MOVE_SHOCK_WAVE, 14
    learnset MOVE_STEALTH_ROCK, 17
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_SPARK, 22
    learnset MOVE_FIRE_PUNCH, 25
    learnset MOVE_STEALTH_ROCK, 28
    learnset MOVE_THUNDER_PUNCH, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_STONE_EDGE, 43
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_WILD_CHARGE, 53
    learnset MOVE_GYRO_BALL, 56
    learnset MOVE_CURSE, 59
    learnset MOVE_EXPLOSION, 63
    learnset MOVE_DOUBLE_EDGE, 66
    learnset MOVE_HEAD_SMASH, 69
    terminatelearnset


levelup SPECIES_GOLEM_ALOLAN
    learnset MOVE_STEAMROLLER, 1
    learnset MOVE_MEGA_PUNCH, 1
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_THUNDER_SHOCK, 6
    learnset MOVE_ROCK_POLISH, 9
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_STEALTH_ROCK, 18
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_SPARK, 23
    learnset MOVE_FIRE_PUNCH, 26
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_THUNDER_PUNCH, 32
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_DISCHARGE, 41
    learnset MOVE_STONE_EDGE, 44
    learnset MOVE_IRON_DEFENSE, 47
    learnset MOVE_BODY_SLAM, 50
    learnset MOVE_WILD_CHARGE, 54
    learnset MOVE_GYRO_BALL, 57
    learnset MOVE_CURSE, 60
    learnset MOVE_EXPLOSION, 64
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_HEAD_SMASH, 70
    terminatelearnset


levelup SPECIES_GRIMER_ALOLAN
    learnset MOVE_POUND, 1
    learnset MOVE_HARDEN, 3
    learnset MOVE_ACID, 6
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_POISON_GAS, 12
    learnset MOVE_MUD_SLAP, 15
    learnset MOVE_BITE, 18
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_STOCKPILE, 24
    learnset MOVE_SPIT_UP, 27
    learnset MOVE_SWALLOW, 31
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_HEX, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_CRUNCH, 43
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_DISABLE, 50
    learnset MOVE_SLUDGE_WAVE, 54
    learnset MOVE_REST, 57
    learnset MOVE_MINIMIZE, 61
    learnset MOVE_STONE_EDGE, 63
    learnset MOVE_FIRE_BLAST, 66
    learnset MOVE_GUNK_SHOT, 70
    terminatelearnset


levelup SPECIES_MUK_ALOLAN
    learnset MOVE_VENOM_DRENCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_TAUNT, 3
    learnset MOVE_ACID, 6
    learnset MOVE_ACID_ARMOR, 9
    learnset MOVE_POISON_GAS, 12
    learnset MOVE_MUD_SLAP, 15
    learnset MOVE_BITE, 18
    learnset MOVE_CONFUSE_RAY, 21
    learnset MOVE_STOCKPILE, 24
    learnset MOVE_SPIT_UP, 27
    learnset MOVE_SWALLOW, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_HEX, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_KNOCK_OFF, 45
    learnset MOVE_TOXIC, 48
    learnset MOVE_DISABLE, 51
    learnset MOVE_SLUDGE_WAVE, 54
    learnset MOVE_REST, 57
    learnset MOVE_MINIMIZE, 60
    learnset MOVE_STONE_EDGE, 63
    learnset MOVE_FIRE_BLAST, 66
    learnset MOVE_GUNK_SHOT, 69
    terminatelearnset


levelup SPECIES_EXEGGUTOR_ALOLAN
    learnset MOVE_DRAGON_HAMMER, 0
    learnset MOVE_DRAGON_HAMMER, 1
    learnset MOVE_SEED_BOMB, 1
    learnset MOVE_PSYSHOCK, 1
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_BARRAGE, 5
    learnset MOVE_REFLECT, 8
    learnset MOVE_LEECH_SEED, 11
    learnset MOVE_CONFUSION, 14
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_STUN_SPORE, 19
    learnset MOVE_POISON_POWDER, 19
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_BULLET_SEED, 22
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_ANCIENT_POWER, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_NATURAL_GIFT, 34
    learnset MOVE_SUNNY_DAY, 37
    learnset MOVE_PSYBEAM, 40
    learnset MOVE_WORRY_SEED, 43
    learnset MOVE_ENERGY_BALL, 46
    learnset MOVE_EGG_BOMB, 49
    learnset MOVE_PSYCHIC, 52
    learnset MOVE_WEATHER_BALL, 55
    learnset MOVE_UPROAR, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_LEAF_STORM, 64
    terminatelearnset


levelup SPECIES_MAROWAK_ALOLAN
    learnset MOVE_SHADOW_BONE, 0
    learnset MOVE_SHADOW_BONE, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_BONE_CLUB, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_LEER, 14
    learnset MOVE_HEX, 17
    learnset MOVE_DETECT, 19
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_FALSE_SWIPE, 25
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_BONE_RUSH, 31
    learnset MOVE_AERIAL_ACE, 34
    learnset MOVE_ENDEAVOR, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_BULK_UP, 43
    learnset MOVE_BONEMERANG, 46
    learnset MOVE_IRON_HEAD, 49
    learnset MOVE_ROCK_SLIDE, 53
    learnset MOVE_SWORDS_DANCE, 56
    learnset MOVE_DOUBLE_EDGE, 59
    learnset MOVE_FLARE_BLITZ, 63
    learnset MOVE_HEAD_SMASH, 66
    terminatelearnset


levelup SPECIES_MEOWTH_GALARIAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_METAL_CLAW, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_BULLET_PUNCH, 16
    learnset MOVE_SCREECH, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_TAUNT, 24
    learnset MOVE_MAGNET_BOMB, 27
    learnset MOVE_SWAGGER, 30
    learnset MOVE_SLASH, 33
    learnset MOVE_FLASH_CANNON, 36
    learnset MOVE_ZEN_HEADBUTT, 39
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_IRON_DEFENSE, 45
    learnset MOVE_NIGHT_SLASH, 48
    learnset MOVE_CURSE, 52
    learnset MOVE_METAL_BURST, 55
    learnset MOVE_EARTHQUAKE, 58
    learnset MOVE_CLOSE_COMBAT, 62
    terminatelearnset


levelup SPECIES_PONYTA_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_DOUBLE_HIT, 13
    learnset MOVE_CONFUSION, 16
    learnset MOVE_STOMP, 19
    learnset MOVE_HEART_STAMP, 22
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_WORK_UP, 28
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_STOMPING_TANTRUM, 37
    learnset MOVE_HEAL_PULSE, 43
    learnset MOVE_DAZZLING_GLEAM, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_AGILITY, 58
    learnset MOVE_ZEN_HEADBUTT, 61
    learnset MOVE_HIGH_HORSEPOWER, 64
    learnset MOVE_SWORDS_DANCE, 67
    learnset MOVE_PSYCHIC, 70
    learnset MOVE_HEALING_WISH, 73
    terminatelearnset


levelup SPECIES_RAPIDASH_GALARIAN
    learnset MOVE_PSYCHO_CUT, 0
    learnset MOVE_PSYCHO_CUT, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_SMART_STRIKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_DOUBLE_HIT, 13
    learnset MOVE_CONFUSION, 16
    learnset MOVE_STOMP, 19
    learnset MOVE_HEART_STAMP, 22
    learnset MOVE_DRAINING_KISS, 25
    learnset MOVE_WORK_UP, 28
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_STOMPING_TANTRUM, 37
    learnset MOVE_HEAL_PULSE, 43
    learnset MOVE_DAZZLING_GLEAM, 46
    learnset MOVE_TAKE_DOWN, 49
    learnset MOVE_WILD_CHARGE, 52
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_AGILITY, 58
    learnset MOVE_ZEN_HEADBUTT, 61
    learnset MOVE_HIGH_HORSEPOWER, 64
    learnset MOVE_SWORDS_DANCE, 67
    learnset MOVE_PSYCHIC, 70
    learnset MOVE_HEALING_WISH, 73
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
    learnset MOVE_LEER, 4
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_FURY_CUTTER, 10
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_KARATE_CHOP, 16
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_BRUTAL_SWING, 21
    learnset MOVE_DETECT, 24
    learnset MOVE_REVENGE, 27
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_DEFOG, 36
    learnset MOVE_DUAL_WINGBEAT, 39
    learnset MOVE_FIRST_IMPRESSION, 42
    learnset MOVE_SWORDS_DANCE, 45
    learnset MOVE_LEAF_BLADE, 48
    learnset MOVE_SLAM, 52
    learnset MOVE_POISON_JAB, 55
    learnset MOVE_FINAL_GAMBIT, 58
    learnset MOVE_CLOSE_COMBAT, 62
    learnset MOVE_BRAVE_BIRD, 65
    terminatelearnset


levelup SPECIES_WEEZING_GALARIAN
    learnset MOVE_DOUBLE_HIT, 0
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_STRANGE_STEAM, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_AROMATHERAPY, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_ASSURANCE, 11
    learnset MOVE_CLEAR_SMOG, 14
    learnset MOVE_FAIRY_WIND, 17
    learnset MOVE_CURSE, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_HAZE, 25
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_DAZZLING_GLEAM, 31
    learnset MOVE_TOXIC, 34
    learnset MOVE_VENOSHOCK, 37
    learnset MOVE_WILL_O_WISP, 40
    learnset MOVE_EXPLOSION, 44
    learnset MOVE_SLUDGE_BOMB, 47
    learnset MOVE_DESTINY_BOND, 49
    learnset MOVE_MOONBLAST, 52
    learnset MOVE_MISTY_TERRAIN, 55
    learnset MOVE_FLAMETHROWER, 58
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_MISTY_EXPLOSION, 64
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
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_GUST, 1
    learnset MOVE_PSYCHO_SHIFT, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_ICY_WIND, 6
    learnset MOVE_DUAL_WINGBEAT, 9
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_TAILWIND, 18
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_EXPANDING_FORCE, 23
    learnset MOVE_CALM_MIND, 25
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_ESPER_WING, 31
    learnset MOVE_HEAT_WAVE, 33
    learnset MOVE_FUTURE_SIGHT, 36
    learnset MOVE_ICE_BEAM, 40
    learnset MOVE_REFLECT, 43
    learnset MOVE_LIGHT_SCREEN, 43
    learnset MOVE_FREEZING_GLARE, 46
    learnset MOVE_RECOVER, 50
    learnset MOVE_HURRICANE, 53
    learnset MOVE_AURA_SPHERE, 56
    learnset MOVE_STORED_POWER, 59
    learnset MOVE_BLIZZARD, 63
    learnset MOVE_NASTY_PLOT, 66
    learnset MOVE_TRICK_ROOM, 69
    learnset MOVE_AEROBLAST, 72
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
    learnset MOVE_ASTONISH, 4
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 10
    learnset MOVE_WHIRLPOOL, 13
    learnset MOVE_SPITE, 16
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_HEX, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_CURSE, 30
    learnset MOVE_LIQUIDATION, 33
    learnset MOVE_STRENGTH_SAP, 36
    learnset MOVE_CONFUSE_RAY, 39
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_SHADOW_BALL, 45
    learnset MOVE_SCALD, 48
    learnset MOVE_GRUDGE, 51
    learnset MOVE_MIRROR_COAT, 54
    learnset MOVE_POLTERGEIST, 57
    learnset MOVE_HEAD_SMASH, 60
    terminatelearnset


levelup SPECIES_ZIGZAGOON_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_LICK, 7
    learnset MOVE_SNARL, 10
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_REST, 21
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_SCARY_FACE, 27
    learnset MOVE_COUNTER, 30
    learnset MOVE_TAUNT, 33
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_QUICK_GUARD, 39
    learnset MOVE_DIG, 42
    learnset MOVE_BODY_SLAM, 45
    learnset MOVE_QUICK_GUARD, 48
    learnset MOVE_FOUL_PLAY, 51
    learnset MOVE_PLAY_ROUGH, 54
    learnset MOVE_BELLY_DRUM, 57
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_LINOONE_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_LICK, 8
    learnset MOVE_SNARL, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_BABY_DOLL_EYES, 17
    learnset MOVE_PIN_MISSILE, 19
    learnset MOVE_REST, 22
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_SCARY_FACE, 28
    learnset MOVE_COUNTER, 31
    learnset MOVE_TAUNT, 34
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_QUICK_GUARD, 40
    learnset MOVE_DIG, 43
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_QUICK_GUARD, 49
    learnset MOVE_FOUL_PLAY, 52
    learnset MOVE_PLAY_ROUGH, 55
    learnset MOVE_BELLY_DRUM, 58
    learnset MOVE_DOUBLE_EDGE, 61
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
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_DISABLE, 10
    learnset MOVE_BRUTAL_SWING, 13
    learnset MOVE_OMINOUS_WIND, 16
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_HEX, 21
    learnset MOVE_CRAFTY_SHIELD, 24
    learnset MOVE_STOMPING_TANTRUM, 27
    learnset MOVE_IMPRISON, 30
    learnset MOVE_CURSE, 33
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_POWER_SPLIT, 42
    learnset MOVE_GUARD_SPLIT, 42
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_DESTINY_BOND, 48
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_TOXIC_SPIKES, 54
    learnset MOVE_POLTERGEIST, 57
    learnset MOVE_TRICK_ROOM, 60
    learnset MOVE_MEMENTO, 63
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
    learnset MOVE_FLASH, 5
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_SNOWSCAPE, 20
    learnset MOVE_COSMIC_POWER, 24
    learnset MOVE_FACADE, 27
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_AURORA_BEAM, 35
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_SURF, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_WEATHER_BALL, 50
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_FIRE_BLAST, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_HURRICANE, 65
    terminatelearnset


levelup SPECIES_CASTFORM_RAINY
    learnset MOVE_TACKLE, 1
    learnset MOVE_FLASH, 5
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_SNOWSCAPE, 20
    learnset MOVE_COSMIC_POWER, 24
    learnset MOVE_FACADE, 27
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_AURORA_BEAM, 35
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_SURF, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_WEATHER_BALL, 50
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_FIRE_BLAST, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_HURRICANE, 65
    terminatelearnset


levelup SPECIES_CASTFORM_SNOWY
    learnset MOVE_TACKLE, 1
    learnset MOVE_FLASH, 5
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_SNOWSCAPE, 20
    learnset MOVE_COSMIC_POWER, 24
    learnset MOVE_FACADE, 27
    learnset MOVE_WATER_PULSE, 30
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_AURORA_BEAM, 35
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_SURF, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_WEATHER_BALL, 50
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_FIRE_BLAST, 57
    learnset MOVE_BLIZZARD, 60
    learnset MOVE_HURRICANE, 65
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
    learnset MOVE_HARDEN, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_RECOVER, 10
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_CHILLING_WATER, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_WATER_PULSE, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_RAIN_DANCE, 30
    learnset MOVE_MUD_BOMB, 33
    learnset MOVE_YAWN, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_SCALD, 42
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_COUNTER, 48
    learnset MOVE_EARTH_POWER, 51
    learnset MOVE_MEMENTO, 54
    learnset MOVE_SLUDGE_WAVE, 57
    learnset MOVE_HYDRO_PUMP, 60

    terminatelearnset


levelup SPECIES_GASTRODON_EAST_SEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_RECOVER, 11
    learnset MOVE_CLEAR_SMOG, 14
    learnset MOVE_CHILLING_WATER, 17
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_ANCIENT_POWER, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ROCK_TOMB, 28
    learnset MOVE_RAIN_DANCE, 31
    learnset MOVE_MUD_BOMB, 34
    learnset MOVE_YAWN, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_SCALD, 43
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_COUNTER, 49
    learnset MOVE_EARTH_POWER, 52
    learnset MOVE_MEMENTO, 55
    learnset MOVE_SLUDGE_WAVE, 58
    learnset MOVE_HYDRO_PUMP, 61
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


levelup SPECIES_BASCULIN_RED_STRIPED
    learnset MOVE_WATER_GUN,1            //
    learnset MOVE_TAIL_WHIP,1            //
    learnset MOVE_TACKLE,4             //
    learnset MOVE_SOAK,6             //
    learnset MOVE_AQUA_JET,10             //
    learnset MOVE_SCARY_FACE,12             //
    learnset MOVE_BITE,14             //
    learnset MOVE_PLUCK,16             //
    learnset MOVE_FOCUS_ENERGY,19             //
    learnset MOVE_HEADBUTT,21             //
    learnset MOVE_AQUA_CUTTER,24             //
    learnset MOVE_CRUNCH,27             //
    learnset MOVE_AQUA_TAIL,29             //
    learnset MOVE_FINAL_GAMBIT,31            //
    learnset MOVE_SCALD,33             //
    learnset MOVE_ICE_FANG,36             //
    learnset MOVE_DIVE,38             //
    learnset MOVE_AGILITY,40             //
    learnset MOVE_DOUBLE_EDGE,46             //
    learnset MOVE_HEAD_SMASH,54             //
    learnset MOVE_WAVE_CRASH,62             //
    terminatelearnset


levelup SPECIES_BASCULIN_BLUE_STRIPED
    learnset MOVE_WATER_GUN,1            //
    learnset MOVE_TAIL_WHIP,1            //
    learnset MOVE_TACKLE,4             //
    learnset MOVE_SOAK,6             //
    learnset MOVE_AQUA_JET,10             //
    learnset MOVE_SCARY_FACE,12             //
    learnset MOVE_BITE,14             //
    learnset MOVE_PLUCK,16             //
    learnset MOVE_FOCUS_ENERGY,19             //
    learnset MOVE_HEADBUTT,21             //
    learnset MOVE_AQUA_CUTTER,24             //
    learnset MOVE_CRUNCH,27             //
    learnset MOVE_AQUA_TAIL,29             //
    learnset MOVE_FINAL_GAMBIT,31            //
    learnset MOVE_SCALD,33             //
    learnset MOVE_ICE_FANG,36             //
    learnset MOVE_DIVE,38             //
    learnset MOVE_AGILITY,40             //
    learnset MOVE_DOUBLE_EDGE,46             //
    learnset MOVE_HEAD_SMASH,54             //
    learnset MOVE_WAVE_CRASH,62             //
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
    learnset MOVE_LEER, 4
    learnset MOVE_ICY_WIND, 7
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 13
    learnset MOVE_REVENGE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_TAILWIND, 30
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HEAT_WAVE, 42
    learnset MOVE_GRASS_KNOT, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_HYPER_VOICE, 51
    learnset MOVE_HAMMER_ARM, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_HURRICANE, 60
    learnset MOVE_THRASH, 63
    learnset MOVE_BLEAKWIND_STORM, 66
    terminatelearnset


levelup SPECIES_THUNDURUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 13
    learnset MOVE_REVENGE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_SHOCK_WAVE, 21
    learnset MOVE_AGILITY, 24
    learnset MOVE_VOLT_SWITCH, 27
    learnset MOVE_CHARGE, 30
    learnset MOVE_ZEN_HEADBUTT, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_GRASS_KNOT, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_HYPER_VOICE, 51
    learnset MOVE_HAMMER_ARM, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_THUNDER, 60
    learnset MOVE_THRASH, 63
    learnset MOVE_WILDBOLT_STORM, 66
    terminatelearnset


levelup SPECIES_LANDORUS_THERIAN
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_LEER, 4
    learnset MOVE_BLOCK, 10
    learnset MOVE_GUST, 13
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_TAUNT, 18
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_AIR_CUTTER, 24
    learnset MOVE_MUD_BOMB, 27
    learnset MOVE_IMPRISON, 30
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_SANDSTORM, 48
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_HAMMER_ARM, 57
    learnset MOVE_FISSURE, 60
    learnset MOVE_OUTRAGE, 63
    learnset MOVE_SANDSEAR_STORM, 66
    terminatelearnset


levelup SPECIES_KYUREM_WHITE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_SLASH, 8
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_DRAGON_PULSE, 24
    learnset MOVE_ICE_BEAM, 32
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_FUSION_FLARE, 48
    learnset MOVE_BLIZZARD, 56
    learnset MOVE_IMPRISON, 64
    learnset MOVE_OUTRAGE, 72
    learnset MOVE_ICE_BURN, 80
    learnset MOVE_SHEER_COLD, 88
    terminatelearnset


levelup SPECIES_KYUREM_BLACK
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_SLASH, 8
    learnset MOVE_ENDEAVOR, 16
    learnset MOVE_DRAGON_PULSE, 24
    learnset MOVE_ICE_BEAM, 32
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_FUSION_BOLT, 48
    learnset MOVE_BLIZZARD, 56
    learnset MOVE_IMPRISON, 64
    learnset MOVE_OUTRAGE, 72
    learnset MOVE_FREEZE_SHOCK, 80
    learnset MOVE_SHEER_COLD, 88
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
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 22
    learnset MOVE_WISH, 25
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_CHARM, 34
    learnset MOVE_LEAF_TORNADO, 37
    learnset MOVE_LAST_RESORT, 40
    learnset MOVE_GRASSY_TERRAIN, 43
    learnset MOVE_MISTY_TERRAIN, 46
    learnset MOVE_HIDDEN_POWER, 49
    learnset MOVE_NATURE_POWER, 52
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_AROMATHERAPY, 61
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_PETAL_DANCE, 67
    learnset MOVE_SOLAR_BEAM, 70
    terminatelearnset


levelup SPECIES_FLABEBE_ORANGE_FLOWER
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 22
    learnset MOVE_WISH, 25
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_CHARM, 34
    learnset MOVE_LEAF_TORNADO, 37
    learnset MOVE_LAST_RESORT, 40
    learnset MOVE_GRASSY_TERRAIN, 43
    learnset MOVE_MISTY_TERRAIN, 46
    learnset MOVE_HIDDEN_POWER, 49
    learnset MOVE_NATURE_POWER, 52
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_AROMATHERAPY, 61
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_PETAL_DANCE, 67
    learnset MOVE_SOLAR_BEAM, 70
    terminatelearnset


levelup SPECIES_FLABEBE_BLUE_FLOWER
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 22
    learnset MOVE_WISH, 25
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_CHARM, 34
    learnset MOVE_LEAF_TORNADO, 37
    learnset MOVE_LAST_RESORT, 40
    learnset MOVE_GRASSY_TERRAIN, 43
    learnset MOVE_MISTY_TERRAIN, 46
    learnset MOVE_HIDDEN_POWER, 49
    learnset MOVE_NATURE_POWER, 52
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_AROMATHERAPY, 61
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_PETAL_DANCE, 67
    learnset MOVE_SOLAR_BEAM, 70
    terminatelearnset


levelup SPECIES_FLABEBE_WHITE_FLOWER
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 22
    learnset MOVE_WISH, 25
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_DRAINING_KISS, 31
    learnset MOVE_CHARM, 34
    learnset MOVE_LEAF_TORNADO, 37
    learnset MOVE_LAST_RESORT, 40
    learnset MOVE_GRASSY_TERRAIN, 43
    learnset MOVE_MISTY_TERRAIN, 46
    learnset MOVE_HIDDEN_POWER, 49
    learnset MOVE_NATURE_POWER, 52
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_AROMATHERAPY, 61
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_PETAL_DANCE, 67
    learnset MOVE_SOLAR_BEAM, 70
    terminatelearnset


levelup SPECIES_FLOETTE_YELLOW_FLOWER
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 23
    learnset MOVE_WISH, 26
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_DRAINING_KISS, 32
    learnset MOVE_CHARM, 35
    learnset MOVE_LEAF_TORNADO, 38
    learnset MOVE_LAST_RESORT, 41
    learnset MOVE_GRASSY_TERRAIN, 44
    learnset MOVE_MISTY_TERRAIN, 47
    learnset MOVE_HIDDEN_POWER, 50
    learnset MOVE_NATURE_POWER, 53
    learnset MOVE_DAZZLING_GLEAM, 56
    learnset MOVE_PETAL_BLIZZARD, 59
    learnset MOVE_AROMATHERAPY, 62
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_PETAL_DANCE, 68
    learnset MOVE_SOLAR_BEAM, 71
    terminatelearnset


levelup SPECIES_FLOETTE_ORANGE_FLOWER
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 23
    learnset MOVE_WISH, 26
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_DRAINING_KISS, 32
    learnset MOVE_CHARM, 35
    learnset MOVE_LEAF_TORNADO, 38
    learnset MOVE_LAST_RESORT, 41
    learnset MOVE_GRASSY_TERRAIN, 44
    learnset MOVE_MISTY_TERRAIN, 47
    learnset MOVE_HIDDEN_POWER, 50
    learnset MOVE_NATURE_POWER, 53
    learnset MOVE_DAZZLING_GLEAM, 56
    learnset MOVE_PETAL_BLIZZARD, 59
    learnset MOVE_AROMATHERAPY, 62
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_PETAL_DANCE, 68
    learnset MOVE_SOLAR_BEAM, 71
    terminatelearnset


levelup SPECIES_FLOETTE_BLUE_FLOWER
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 23
    learnset MOVE_WISH, 26
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_DRAINING_KISS, 32
    learnset MOVE_CHARM, 35
    learnset MOVE_LEAF_TORNADO, 38
    learnset MOVE_LAST_RESORT, 41
    learnset MOVE_GRASSY_TERRAIN, 44
    learnset MOVE_MISTY_TERRAIN, 47
    learnset MOVE_HIDDEN_POWER, 50
    learnset MOVE_NATURE_POWER, 53
    learnset MOVE_DAZZLING_GLEAM, 56
    learnset MOVE_PETAL_BLIZZARD, 59
    learnset MOVE_AROMATHERAPY, 62
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_PETAL_DANCE, 68
    learnset MOVE_SOLAR_BEAM, 71
    terminatelearnset


levelup SPECIES_FLOETTE_WHITE_FLOWER
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 23
    learnset MOVE_WISH, 26
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_DRAINING_KISS, 32
    learnset MOVE_CHARM, 35
    learnset MOVE_LEAF_TORNADO, 38
    learnset MOVE_LAST_RESORT, 41
    learnset MOVE_GRASSY_TERRAIN, 44
    learnset MOVE_MISTY_TERRAIN, 47
    learnset MOVE_HIDDEN_POWER, 50
    learnset MOVE_NATURE_POWER, 53
    learnset MOVE_DAZZLING_GLEAM, 56
    learnset MOVE_PETAL_BLIZZARD, 59
    learnset MOVE_AROMATHERAPY, 62
    learnset MOVE_MOONBLAST, 65
    learnset MOVE_PETAL_DANCE, 68
    learnset MOVE_SOLAR_BEAM, 71
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
    learnset MOVE_FLORAL_HEALING, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_WISH, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_DRAINING_KISS, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_LEAF_TORNADO, 40
    learnset MOVE_LAST_RESORT, 43
    learnset MOVE_GRASSY_TERRAIN, 46
    learnset MOVE_MISTY_TERRAIN, 49
    learnset MOVE_HIDDEN_POWER, 52
    learnset MOVE_NATURE_POWER, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_PETAL_BLIZZARD, 61
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_MOONBLAST, 67
    learnset MOVE_PETAL_DANCE, 70
    learnset MOVE_SOLAR_BEAM, 73
    terminatelearnset


levelup SPECIES_FLORGES_ORANGE_FLOWER
    learnset MOVE_FLORAL_HEALING, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_WISH, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_DRAINING_KISS, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_LEAF_TORNADO, 40
    learnset MOVE_LAST_RESORT, 43
    learnset MOVE_GRASSY_TERRAIN, 46
    learnset MOVE_MISTY_TERRAIN, 49
    learnset MOVE_HIDDEN_POWER, 52
    learnset MOVE_NATURE_POWER, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_PETAL_BLIZZARD, 61
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_MOONBLAST, 67
    learnset MOVE_PETAL_DANCE, 70
    learnset MOVE_SOLAR_BEAM, 73
    terminatelearnset


levelup SPECIES_FLORGES_BLUE_FLOWER
    learnset MOVE_FLORAL_HEALING, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_WISH, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_DRAINING_KISS, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_LEAF_TORNADO, 40
    learnset MOVE_LAST_RESORT, 43
    learnset MOVE_GRASSY_TERRAIN, 46
    learnset MOVE_MISTY_TERRAIN, 49
    learnset MOVE_HIDDEN_POWER, 52
    learnset MOVE_NATURE_POWER, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_PETAL_BLIZZARD, 61
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_MOONBLAST, 67
    learnset MOVE_PETAL_DANCE, 70
    learnset MOVE_SOLAR_BEAM, 73
    terminatelearnset


levelup SPECIES_FLORGES_WHITE_FLOWER
    learnset MOVE_FLORAL_HEALING, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_CALM_MIND, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_LUCKY_CHANT, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_RAZOR_LEAF, 25
    learnset MOVE_WISH, 28
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_DRAINING_KISS, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_LEAF_TORNADO, 40
    learnset MOVE_LAST_RESORT, 43
    learnset MOVE_GRASSY_TERRAIN, 46
    learnset MOVE_MISTY_TERRAIN, 49
    learnset MOVE_HIDDEN_POWER, 52
    learnset MOVE_NATURE_POWER, 55
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_PETAL_BLIZZARD, 61
    learnset MOVE_AROMATHERAPY, 64
    learnset MOVE_MOONBLAST, 67
    learnset MOVE_PETAL_DANCE, 70
    learnset MOVE_SOLAR_BEAM, 73
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
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BABY_DOLL_EYES, 4
    learnset MOVE_BIDE, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_TAIL_SLAP, 16
    learnset MOVE_COPYCAT, 19
    learnset MOVE_SHADOW_PUNCH, 22
    learnset MOVE_COVET, 25
    learnset MOVE_FEINT_ATTACK, 28
    learnset MOVE_CHARM, 31
    learnset MOVE_REVENGE, 34
    learnset MOVE_SKITTER_SMACK, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_SLASH, 43
    learnset MOVE_DRAIN_PUNCH, 46
    learnset MOVE_SHADOW_CLAW, 49
    learnset MOVE_HONE_CLAWS, 52
    learnset MOVE_PAIN_SPLIT, 55
    learnset MOVE_PHANTOM_FORCE, 58
    learnset MOVE_SUBSTITUTE, 61
    learnset MOVE_IRON_TAIL, 64
    learnset MOVE_WOOD_HAMMER, 67
    learnset MOVE_SWORDS_DANCE, 70
    learnset MOVE_POLTERGEIST, 73
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
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_KARATE_CHOP, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_DETECT, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_BULK_UP, 33
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_U_TURN, 39
    learnset MOVE_ENDURE, 42
    learnset MOVE_REVERSAL, 45
    learnset MOVE_DYNAMIC_PUNCH, 48
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_BODY_SLAM, 54
    learnset MOVE_CLOSE_COMBAT, 57
    learnset MOVE_FOCUS_PUNCH, 60
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
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_HOWL, 7
    learnset MOVE_BITE, 10
    learnset MOVE_FLAME_WHEEL, 13
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_WORK_UP, 27
    learnset MOVE_THUNDER_FANG, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_FLAME_BURST, 36
    learnset MOVE_AGILITY, 39
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_TAKE_DOWN, 45
    learnset MOVE_ROAR, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_REVERSAL, 55
    learnset MOVE_EXTREME_SPEED, 58
    learnset MOVE_FLARE_BLITZ, 62
    learnset MOVE_HEAD_SMASH, 65
    terminatelearnset


levelup SPECIES_ARCANINE_HISUIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_HOWL, 9
    learnset MOVE_BITE, 12
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_HELPING_HAND, 18
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_WORK_UP, 29
    learnset MOVE_THUNDER_FANG, 32
    learnset MOVE_CRUNCH, 35
    learnset MOVE_FLAME_BURST, 38
    learnset MOVE_AGILITY, 41
    learnset MOVE_FLAMETHROWER, 44
    learnset MOVE_TAKE_DOWN, 47
    learnset MOVE_ROAR, 50
    learnset MOVE_ROCK_SLIDE, 54
    learnset MOVE_REVERSAL, 57
    learnset MOVE_EXTREME_SPEED, 60
    learnset MOVE_FLARE_BLITZ, 64
    learnset MOVE_HEAD_SMASH, 67
    learnset MOVE_RAGING_FURY, 70
    terminatelearnset


levelup SPECIES_VOLTORB_HISUIAN
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_BULLET_SEED, 10
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_SCREECH, 16
    learnset MOVE_CHARGE_BEAM, 18
    learnset MOVE_SWIFT, 21
    learnset MOVE_ELECTRO_BALL, 24
    learnset MOVE_SELF_DESTRUCT, 27
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_LIGHT_SCREEN, 33
    learnset MOVE_ZING_ZAP, 36
    learnset MOVE_MIRROR_SHOT, 39
    learnset MOVE_EXPLOSION, 42
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_MIRROR_COAT, 48
    learnset MOVE_THUNDERBOLT, 51
    learnset MOVE_GRASSY_TERRAIN, 54
    learnset MOVE_ENERGY_BALL, 57
    learnset MOVE_THUNDER, 60
    learnset MOVE_CHLOROBLAST, 63
    terminatelearnset


levelup SPECIES_ELECTRODE_HISUIAN
    learnset MOVE_GIGA_DRAIN, 0
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_BULLET_SEED, 11
    learnset MOVE_ROLLOUT, 14
    learnset MOVE_SCREECH, 17
    learnset MOVE_CHARGE_BEAM, 19
    learnset MOVE_SWIFT, 22
    learnset MOVE_ELECTRO_BALL, 25
    learnset MOVE_SELF_DESTRUCT, 28
    learnset MOVE_SEED_BOMB, 31
    learnset MOVE_LIGHT_SCREEN, 34
    learnset MOVE_ZING_ZAP, 37
    learnset MOVE_MIRROR_SHOT, 40
    learnset MOVE_EXPLOSION, 43
    learnset MOVE_DISCHARGE, 46
    learnset MOVE_MIRROR_COAT, 49
    learnset MOVE_THUNDERBOLT, 52
    learnset MOVE_GRASSY_TERRAIN, 55
    learnset MOVE_ENERGY_BALL, 58
    learnset MOVE_THUNDER, 61
    learnset MOVE_CHLOROBLAST, 64
    terminatelearnset


levelup SPECIES_TYPHLOSION_HISUIAN
    learnset MOVE_HEX, 0
    learnset MOVE_HEX, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_HOWL, 14
    learnset MOVE_SWIFT, 18
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 22
    learnset MOVE_ROLLOUT, 25
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_FLAME_CHARGE, 31
    learnset MOVE_WILL_O_WISP, 36
    learnset MOVE_EXTRASENSORY, 38
    learnset MOVE_LAVA_PLUME, 41
    learnset MOVE_SHADOW_BALL, 44
    learnset MOVE_FLAMETHROWER, 47
    learnset MOVE_INFERNO, 50
    learnset MOVE_SOLAR_BEAM, 54
    learnset MOVE_SUNNY_DAY, 58
    learnset MOVE_DOUBLE_EDGE, 61
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_FOCUS_BLAST, 69
    learnset MOVE_DESTINY_BOND, 71
    learnset MOVE_OVERHEAT, 74
    learnset MOVE_ERUPTION, 80
    terminatelearnset


levelup SPECIES_QWILFISH_HISUIAN
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_BITE, 7
    learnset MOVE_PAYBACK, 10
    learnset MOVE_PIN_MISSILE, 13
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_POISON_TAIL, 18
    learnset MOVE_SPIKES, 21
    learnset MOVE_REVENGE, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_VENOSHOCK, 33
    learnset MOVE_TOXIC_SPIKES, 36
    learnset MOVE_STOCKPILE, 39
    learnset MOVE_SPIT_UP, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_POISON_JAB, 45
    learnset MOVE_ACUPRESSURE, 48
    learnset MOVE_LIQUIDATION, 51
    learnset MOVE_SLUDGE_BOMB, 54
    learnset MOVE_DESTINY_BOND, 57
    learnset MOVE_GUNK_SHOT, 60
    learnset MOVE_DOUBLE_EDGE, 63
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
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_AQUA_JET, 9
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_BRINE, 15
    learnset MOVE_NOBLE_ROAR, 18
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_FLIP_TURN, 23
    learnset MOVE_AIR_SLASH, 25
    learnset MOVE_KNOCK_OFF, 28
    learnset MOVE_RAZOR_SHELL, 31
    learnset MOVE_RETALIATE, 33
    learnset MOVE_SACRED_SWORD, 40
    learnset MOVE_TAUNT, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_DRILL_RUN, 51
    learnset MOVE_PSYCHO_CUT, 55
    learnset MOVE_WAVE_CRASH, 59
    learnset MOVE_SUPERPOWER, 63
    learnset MOVE_SWORDS_DANCE, 66
    terminatelearnset


levelup SPECIES_LILLIGANT_HISUIAN
    learnset MOVE_VICTORY_DANCE, 0
    learnset MOVE_VICTORY_DANCE, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_SUNNY_DAY, 1
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_STUN_SPORE, 4
    learnset MOVE_TACKLE, 7
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_LOW_KICK, 16
    learnset MOVE_LEAFAGE, 19
    learnset MOVE_CHARM, 22
    learnset MOVE_DOUBLE_KICK, 25
    learnset MOVE_RAZOR_LEAF, 28
    learnset MOVE_SLEEP_POWDER, 31
    learnset MOVE_ROLLING_KICK, 34
    learnset MOVE_LEECH_SEED, 37
    learnset MOVE_LOW_SWEEP, 40
    learnset MOVE_LEAF_BLADE, 43
    learnset MOVE_DRAIN_PUNCH, 46
    learnset MOVE_AFTER_YOU, 49
    learnset MOVE_PLAY_ROUGH, 52
    learnset MOVE_ENTRAINMENT, 55
    learnset MOVE_PETAL_BLIZZARD, 58
    learnset MOVE_SYNTHESIS, 61
    learnset MOVE_AXE_KICK, 64
    learnset MOVE_AROMATHERAPY, 67
    learnset MOVE_SOLAR_BLADE, 70
    learnset MOVE_HIGH_JUMP_KICK, 73
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
    learnset MOVE_TRIPLE_ARROWS,0
    learnset MOVE_TRIPLE_ARROWS,1 
    learnset MOVE_TRIPLE_AXEL,1
    learnset MOVE_ICICLE_SPEAR,1
    learnset MOVE_PIN_MISSILE,1
    learnset MOVE_ROCK_SMASH,1 
    learnset MOVE_LEAFAGE,1 
    learnset MOVE_GROWL,1
    learnset MOVE_SHADOW_SNEAK,4
    learnset MOVE_DEFOG,6
    learnset MOVE_VACUUM_WAVE,9 
    learnset MOVE_RAZOR_LEAF,12 
    learnset MOVE_LOW_SWEEP,15
    learnset MOVE_STEEL_WING,18
    learnset MOVE_BULLET_SEED,21
    learnset MOVE_BULK_UP,23
    learnset MOVE_DUAL_WINGBEAT,25
    learnset MOVE_DRAIN_PUNCH,28
    learnset MOVE_WORRY_SEED,31
    learnset MOVE_GIGA_DRAIN,33
    learnset MOVE_SUCKER_PUNCH,38
    learnset MOVE_SPIRIT_SHACKLE,42
    learnset MOVE_ROOST,45
    learnset MOVE_LEAF_BLADE,48
    learnset MOVE_JUMP_KICK,52
    learnset MOVE_THOUSAND_ARROWS,55
    learnset MOVE_POISON_JAB,58
    learnset MOVE_CLOSE_COMBAT,62
    learnset MOVE_BRAVE_BIRD,65
    learnset MOVE_U_TURN,68
    learnset MOVE_HIGH_JUMP_KICK,72
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

    learnset MOVE_ASTONISH, 1
    learnset MOVE_MEGA_DRAIN, 4 
    learnset MOVE_ACID, 6
    learnset MOVE_WATER_PULSE, 9 
    learnset MOVE_NIGHT_SHADE, 12 
    learnset MOVE_AQUA_RING, 15
    learnset MOVE_TOXIC, 18
    learnset MOVE_HEX, 18
    learnset MOVE_BRINE, 23
    learnset MOVE_ICY_WIND, 25
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_PAIN_SPLIT, 31
    learnset MOVE_WHIRLPOOL, 33
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SCALD, 44
    learnset MOVE_SLUDGE_BOMB, 47


    terminatelearnset


levelup SPECIES_JELLICENT_FEMALE
    learnset MOVE_STRENGTH_SAP, 0
    learnset MOVE_TRICK, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MEGA_DRAIN, 4 
    learnset MOVE_ACID, 6
    learnset MOVE_WATER_PULSE, 9 
    learnset MOVE_NIGHT_SHADE, 12 
    learnset MOVE_AQUA_RING, 15
    learnset MOVE_TOXIC, 18
    learnset MOVE_HEX, 18
    learnset MOVE_BRINE, 23
    learnset MOVE_ICY_WIND, 25
    learnset MOVE_ACID_SPRAY, 28
    learnset MOVE_PAIN_SPLIT, 31
    learnset MOVE_WHIRLPOOL, 33
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SCALD, 44
    learnset MOVE_SLUDGE_BOMB, 47
    learnset MOVE_HYDRO_PUMP, 52
    learnset MOVE_POLTERGEIST, 55
    learnset MOVE_ENERGY_BALL, 59 
    learnset MOVE_RECOVER, 62
    learnset MOVE_WATER_SPOUT, 66
    learnset MOVE_DESTINY_BOND, 70 
    learnset MOVE_ASTRAL_BARRAGE, 73

    terminatelearnset


levelup SPECIES_PYROAR_FEMALE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WORK_UP, 8
    learnset MOVE_SWIFT, 11
    learnset MOVE_BITE, 14
    learnset MOVE_NOBLE_ROAR, 17
    learnset MOVE_FIRE_SPIN, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_WILL_O_WISP, 31
    learnset MOVE_PSYCHIC_FANGS, 34
    learnset MOVE_FLAME_BURST, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_WILD_CHARGE, 46
    learnset MOVE_NASTY_PLOT, 49
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_DARK_PULSE, 55
    learnset MOVE_FIRE_BLAST, 58
    learnset MOVE_SOLAR_BEAM, 61
    learnset MOVE_OVERHEAT, 64
    learnset MOVE_HYPER_BEAM, 67
    terminatelearnset


levelup SPECIES_MEOWSTIC_FEMALE //MadebyDaotama
    learnset MOVE_MAGICAL_LEAF, 0
    learnset MOVE_MAGICAL_LEAF, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FAKE_OUT, 4
    learnset MOVE_DISARMING_VOICE, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_COVET, 13
    learnset MOVE_STORED_POWER, 16
    learnset MOVE_LIGHT_SCREEN, 18
    learnset MOVE_REFLECT, 18
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_DRAINING_KISS, 27
    learnset MOVE_ROLE_PLAY, 30
    learnset MOVE_CHARGE_BEAM, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_SIGNAL_BEAM, 39
    learnset MOVE_PSYSHOCK, 42
    learnset MOVE_ENERGY_BALL, 45
    learnset MOVE_SHADOW_BALL, 48
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_PSYCHIC, 54
    learnset MOVE_NASTY_PLOT, 57
    learnset MOVE_FUTURE_SIGHT, 60
    terminatelearnset


levelup SPECIES_INDEEDEE_FEMALE
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_BATON_PASS, 4
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_DRAINING_KISS, 16
    learnset MOVE_HELPING_HAND, 18
    learnset MOVE_SWIFT, 21
    learnset MOVE_FOLLOW_ME, 24
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_SHADOW_BALL, 33
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_IMPRISON, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_GUARD_SPLIT, 45
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_PSYCHIC_TERRAIN, 54
    learnset MOVE_LAST_RESORT, 57
    learnset MOVE_FUTURE_SIGHT, 60
    terminatelearnset


levelup SPECIES_BASCULEGION_FEMALE
    learnset MOVE_SHADOW_BALL,0
    learnset MOVE_WATER_GUN,1
    learnset MOVE_TAIL_WHIP,1
    learnset MOVE_TACKLE,4
    learnset MOVE_NIGHT_SHADE,7
    learnset MOVE_AQUA_JET,11
    learnset MOVE_SCARY_FACE,14
    learnset MOVE_BITE,16
    learnset MOVE_PLUCK,18
    learnset MOVE_FOCUS_ENERGY,20
    learnset MOVE_HEADBUTT,21
    learnset MOVE_SHADOW_SNEAK,24
    learnset MOVE_RAIN_DANCE,28
    learnset MOVE_RECOVER,31
    learnset MOVE_SCALD,35
    learnset MOVE_ICE_FANG,40
    learnset MOVE_SURF,43
    learnset MOVE_HEX,48
    learnset MOVE_ACID_ARMOR,52
    learnset MOVE_HYDRO_PUMP,56
    learnset MOVE_DESTINY_BOND,58
    learnset MOVE_DOUBLE_EDGE,60
    learnset MOVE_THUNDER_FANG,63
    learnset MOVE_PHANTOM_FORCE,66
    learnset MOVE_WAVE_CRASH,70
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

levelup SPECIES_WOOPER_PALDEAN
    learnset MOVE_POUND, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_POISON_STING, 7
    learnset MOVE_YAWN, 10
    learnset MOVE_ACID, 13
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_POISON_TAIL, 19
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_COVET, 28
    learnset MOVE_MUD_BOMB, 31
    learnset MOVE_SLUDGE, 34
    learnset MOVE_HEADBUTT, 37
    learnset MOVE_TOXIC_SPIKES, 40
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_STOMPING_TANTRUM, 46
    learnset MOVE_SLAM, 49
    learnset MOVE_MUDDY_WATER, 52
    learnset MOVE_SLUDGE_BOMB, 55
    learnset MOVE_EARTH_POWER, 58
    learnset MOVE_BODY_SLAM, 61
    learnset MOVE_SLUDGE_WAVE, 64
    learnset MOVE_TOXIC, 67
    learnset MOVE_EARTHQUAKE, 70
    learnset MOVE_GUNK_SHOT, 73
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
