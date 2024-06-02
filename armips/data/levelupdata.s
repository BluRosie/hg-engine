.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// the level up moves for each pokemon


levelup SPECIES_NONE
    terminatelearnset


levelup SPECIES_BULBASAUR
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_LEECH_SEED, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_POISON_POWDER, 5
	learnset MOVE_ACID, 6
	learnset MOVE_SWEET_SCENT, 8
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_SLUDGE, 11
	learnset MOVE_GROWTH, 12
	learnset MOVE_FURY_CUTTER, 13
	learnset MOVE_MEGA_DRAIN, 14
	learnset MOVE_PROTECT, 16
	learnset MOVE_SEED_BOMB, 17
	learnset MOVE_POISON_JAB, 18
	terminatelearnset

levelup SPECIES_IVYSAUR
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_BULLET_SEED, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SLUDGE, 1
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_SEED_BOMB, 1
	learnset MOVE_STUN_SPORE, 19
	learnset MOVE_GIGA_DRAIN, 21
	learnset MOVE_CHARM, 22
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_SLEEP_POWDER, 26
	learnset MOVE_SYNTHESIS, 27
	learnset MOVE_SLUDGE_BOMB, 29
	learnset MOVE_DOUBLE_EDGE, 31
	terminatelearnset

levelup SPECIES_VENUSAUR
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_VINE_WHIP, 9
	learnset MOVE_POISON_POWDER, 13
	learnset MOVE_SLEEP_POWDER, 13
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_RAZOR_LEAF, 20
	learnset MOVE_SWEET_SCENT, 23
	learnset MOVE_GROWTH, 28
	learnset MOVE_DOUBLE_EDGE, 31
	learnset MOVE_PETAL_DANCE, 32
	learnset MOVE_WORRY_SEED, 39
	learnset MOVE_SYNTHESIS, 45
	learnset MOVE_SOLAR_BEAM, 53
	terminatelearnset

levelup SPECIES_CHARMANDER
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_EMBER, 3
	learnset MOVE_SMOKESCREEN, 5
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_METAL_CLAW, 8
	learnset MOVE_BITE, 10
	learnset MOVE_QUICK_ATTACK, 11
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_SHADOW_CLAW, 16
	learnset MOVE_BRICK_BREAK, 19
	terminatelearnset

levelup SPECIES_CHARMELEON
	learnset MOVE_EMBER, 1
	learnset MOVE_DRAGON_BREATH, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_BITE, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_AERIAL_ACE, 1
	learnset MOVE_SHADOW_CLAW, 1
	learnset MOVE_BRICK_BREAK, 1
	learnset MOVE_ANCIENT_POWER, 20
	learnset MOVE_WILL_O_WISP, 22
	learnset MOVE_FIRE_PUNCH, 23
	learnset MOVE_CRUNCH, 25
	learnset MOVE_OUTRAGE, 27
	learnset MOVE_SWAGGER, 28
	learnset MOVE_LAVA_PLUME, 31
	terminatelearnset

levelup SPECIES_CHARIZARD
	learnset MOVE_DRAGON_CLAW, 1
	learnset MOVE_SHADOW_CLAW, 1
	learnset MOVE_AIR_SLASH, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_EMBER, 7
	learnset MOVE_SMOKESCREEN, 10
	learnset MOVE_DRAGON_RAGE, 17
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_FIRE_FANG, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_WING_ATTACK, 36
	learnset MOVE_FLAMETHROWER, 42
	learnset MOVE_FIRE_SPIN, 49
	learnset MOVE_HEAT_WAVE, 59
	learnset MOVE_FLARE_BLITZ, 66
	terminatelearnset

levelup SPECIES_SQUIRTLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_BUBBLE, 3
	learnset MOVE_WITHDRAW, 4
	learnset MOVE_AQUA_JET, 6
	learnset MOVE_BITE, 7
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_AQUA_RING, 10
	learnset MOVE_WATER_PULSE, 12
	learnset MOVE_SEISMIC_TOSS, 13
	learnset MOVE_MIRROR_COAT, 14
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_RAIN_DANCE, 18
	learnset MOVE_ICY_WIND, 20
	terminatelearnset

levelup SPECIES_WARTORTLE
	learnset MOVE_AQUA_JET, 1
	learnset MOVE_BITE, 1
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_AQUA_RING, 1
	learnset MOVE_WATER_PULSE, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_RAIN_DANCE, 1
	learnset MOVE_ICY_WIND, 1
	learnset MOVE_WATER_SPORT, 20
	learnset MOVE_IRON_DEFENSE, 22
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_MEGA_PUNCH, 24
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_IRON_TAIL, 28
	learnset MOVE_DIVE, 30
	terminatelearnset

levelup SPECIES_BLASTOISE
	learnset MOVE_FLASH_CANNON, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_TAIL_WHIP, 4
	learnset MOVE_BUBBLE, 7
	learnset MOVE_WITHDRAW, 10
	learnset MOVE_WATER_GUN, 13
	learnset MOVE_BITE, 16
	learnset MOVE_RAPID_SPIN, 20
	learnset MOVE_PROTECT, 24
	learnset MOVE_WATER_PULSE, 28
	learnset MOVE_AQUA_TAIL, 32
	learnset MOVE_SKULL_BASH, 39
	learnset MOVE_IRON_DEFENSE, 46
	learnset MOVE_RAIN_DANCE, 53
	learnset MOVE_HYDRO_PUMP, 60
	terminatelearnset

levelup SPECIES_CATERPIE
	learnset MOVE_TACKLE, 1
	learnset MOVE_HIDDEN_POWER, 2
	learnset MOVE_ODOR_SLEUTH, 4
	learnset MOVE_BIDE, 5
	learnset MOVE_GRASS_KNOT, 6
	learnset MOVE_BLOCK, 8
	learnset MOVE_MUD_SLAP, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_ENDURE, 12
	terminatelearnset

levelup SPECIES_METAPOD
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_GRASS_KNOT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_BLOCK, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_HARDEN, 12
	learnset MOVE_STRING_SHOT, 13
	learnset MOVE_DOUBLE_TEAM, 14
	learnset MOVE_SPIDER_WEB, 15
	terminatelearnset

levelup SPECIES_BUTTERFREE
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_GRASS_KNOT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_BLOCK, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_HARDEN, 12
	learnset MOVE_STRING_SHOT, 13
	learnset MOVE_DOUBLE_TEAM, 14
	learnset MOVE_SPIDER_WEB, 15
	learnset MOVE_SILVER_WIND, 17
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_STUN_SPORE, 20
	learnset MOVE_AIR_CUTTER, 21
	learnset MOVE_U_TURN, 23
	learnset MOVE_TAILWIND, 25
	learnset MOVE_OMINOUS_WIND, 27
	learnset MOVE_AIR_SLASH, 29
	terminatelearnset

levelup SPECIES_WEEDLE
	learnset MOVE_POISON_STING, 1
	learnset MOVE_BLOCK, 2
	learnset MOVE_SNATCH, 4
	learnset MOVE_HIDDEN_POWER, 5
	learnset MOVE_TOXIC_SPIKES, 7
	learnset MOVE_BUG_BITE, 8
	learnset MOVE_POISON_TAIL, 10
	learnset MOVE_ODOR_SLEUTH, 12
	terminatelearnset

levelup SPECIES_KAKUNA
	learnset MOVE_POISON_STING, 1
	learnset MOVE_BLOCK, 2
	learnset MOVE_SNATCH, 4
	learnset MOVE_HIDDEN_POWER, 5
	learnset MOVE_TOXIC_SPIKES, 7
	learnset MOVE_BUG_BITE, 8
	learnset MOVE_POISON_TAIL, 10
	learnset MOVE_ODOR_SLEUTH, 12
	learnset MOVE_HARDEN, 12
	learnset MOVE_STRING_SHOT, 13
	learnset MOVE_DOUBLE_TEAM, 14
	learnset MOVE_SPIDER_WEB, 15
	terminatelearnset

levelup SPECIES_BEEDRILL
	learnset MOVE_BLOCK, 1
	learnset MOVE_SNATCH, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_POISON_TAIL, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_SPIDER_WEB, 1
	learnset MOVE_SILVER_WIND, 15
	learnset MOVE_POISON_FANG, 17
	learnset MOVE_GIGA_DRAIN, 18
	learnset MOVE_SECRET_POWER, 19
	learnset MOVE_POISON_JAB, 21
	learnset MOVE_TAILWIND, 22
	learnset MOVE_PIN_MISSILE, 23
	learnset MOVE_ENDEAVOR, 25
	learnset MOVE_BRICK_BREAK, 27
	learnset MOVE_HORN_DRILL, 31
	terminatelearnset

levelup SPECIES_PIDGEY
	learnset MOVE_TACKLE, 1
	learnset MOVE_SAND_ATTACK, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_GUST, 6
	learnset MOVE_WHIRLWIND, 7
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_FEATHER_DANCE, 9
	learnset MOVE_AERIAL_ACE, 11
	learnset MOVE_TWISTER, 12
	learnset MOVE_TAILWIND, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_OMINOUS_WIND, 18
	terminatelearnset

levelup SPECIES_PIDGEOTTO
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SLASH, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FEATHER_DANCE, 1
	learnset MOVE_AERIAL_ACE, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_TAILWIND, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_PLUCK, 16
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_FEINT, 18
	learnset MOVE_ROOST, 19
	learnset MOVE_U_TURN, 21
	learnset MOVE_STEEL_WING, 23
	learnset MOVE_AIR_SLASH, 25
	learnset MOVE_SUBSTITUTE, 27
	learnset MOVE_DRILL_PECK, 29
	learnset MOVE_HEAT_WAVE, 31
	terminatelearnset

levelup SPECIES_PIDGEOT
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
	terminatelearnset

levelup SPECIES_RATTATA
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_QUICK_ATTACK, 3
	learnset MOVE_PURSUIT, 5
	learnset MOVE_FEINT, 7
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_BITE, 9
	learnset MOVE_SUPER_FANG, 11
	learnset MOVE_AGILITY, 13
	learnset MOVE_AERIAL_ACE, 14
	learnset MOVE_DOUBLE_HIT, 16
	learnset MOVE_ENDURE, 18
	learnset MOVE_HYPER_FANG, 19
	learnset MOVE_FLAME_WHEEL, 22
	terminatelearnset

levelup SPECIES_RATICATE
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_FEINT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_BITE, 1
	learnset MOVE_SUPER_FANG, 1
	learnset MOVE_AGILITY, 1
	learnset MOVE_AERIAL_ACE, 1
	learnset MOVE_HYPER_FANG, 1
	learnset MOVE_FLAME_WHEEL, 1
	learnset MOVE_DIG, 21
	learnset MOVE_SCARY_FACE, 22
	learnset MOVE_CRUNCH, 23
	learnset MOVE_ENDEAVOR, 25
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_IRON_TAIL, 28
	learnset MOVE_BODY_SLAM, 30
	terminatelearnset

levelup SPECIES_SPEAROW
	learnset MOVE_PECK, 1
	learnset MOVE_MIRROR_MOVE, 2
	learnset MOVE_LEER, 3
	learnset MOVE_FURY_ATTACK, 5
	learnset MOVE_PURSUIT, 6
	learnset MOVE_AGILITY, 7
	learnset MOVE_MUD_SLAP, 9
	learnset MOVE_AERIAL_ACE, 11
	learnset MOVE_FEINT_ATTACK, 13
	learnset MOVE_SWIFT, 14
	learnset MOVE_ROOST, 16
	learnset MOVE_FLY, 17
	learnset MOVE_FEINT, 18
	learnset MOVE_DRILL_PECK, 20
	learnset MOVE_SWAGGER, 22
	learnset MOVE_SECRET_POWER, 23
	learnset MOVE_ENDEAVOR, 25
	learnset MOVE_FEATHER_DANCE, 26
	learnset MOVE_TAILWIND, 27
	learnset MOVE_BRAVE_BIRD, 29
	terminatelearnset

levelup SPECIES_FEAROW
	learnset MOVE_PLUCK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FURY_ATTACK, 1
	learnset MOVE_LEER, 5
	learnset MOVE_FURY_ATTACK, 9
	learnset MOVE_PURSUIT, 13
	learnset MOVE_AERIAL_ACE, 17
	learnset MOVE_MIRROR_MOVE, 23
	learnset MOVE_AGILITY, 29
	learnset MOVE_ASSURANCE, 35
	learnset MOVE_ROOST, 41
	learnset MOVE_DRILL_PECK, 47
	terminatelearnset

levelup SPECIES_EKANS
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 2
	learnset MOVE_POISON_STING, 3
	learnset MOVE_PURSUIT, 4
	learnset MOVE_GLARE, 5
	learnset MOVE_MUD_SLAP, 6
	learnset MOVE_BITE, 8
	learnset MOVE_POISON_FANG, 9
	learnset MOVE_ROCK_TOMB, 11
	learnset MOVE_MUD_BOMB, 12
	learnset MOVE_ATTRACT, 13
	learnset MOVE_SLAM, 15
	learnset MOVE_POISON_JAB, 16
	learnset MOVE_DIG, 18
	learnset MOVE_GIGA_DRAIN, 20
	learnset MOVE_SCREECH, 22
	learnset MOVE_TOXIC_SPIKES, 24
	learnset MOVE_ROCK_SLIDE, 26
	learnset MOVE_CRUNCH, 28
	learnset MOVE_IRON_TAIL, 30
	terminatelearnset

levelup SPECIES_ARBOK
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_BITE, 1
	learnset MOVE_POISON_STING, 4
	learnset MOVE_BITE, 9
	learnset MOVE_GLARE, 12
	learnset MOVE_SCREECH, 17
	learnset MOVE_ACID, 20
	learnset MOVE_CRUNCH, 22
	learnset MOVE_STOCKPILE, 28
	learnset MOVE_SWALLOW, 28
	learnset MOVE_SPIT_UP, 28
	learnset MOVE_MUD_BOMB, 34
	learnset MOVE_GASTRO_ACID, 42
	learnset MOVE_HAZE, 48
	learnset MOVE_GUNK_SHOT, 56
	terminatelearnset

levelup SPECIES_PIKACHU
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_ABSORB, 3
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_SWEET_SCENT, 5
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_DOUBLE_SLAP, 8
	learnset MOVE_ENCORE, 10
	learnset MOVE_LAST_RESORT, 13
	learnset MOVE_FAKE_OUT, 15
	learnset MOVE_SHOCK_WAVE, 17
	learnset MOVE_NASTY_PLOT, 20
	learnset MOVE_DISCHARGE, 22
	learnset MOVE_MIRACLE_EYE, 24
	learnset MOVE_IRON_TAIL, 26
	learnset MOVE_REVERSAL, 28
	learnset MOVE_WAKE_UP_SLAP, 30
	terminatelearnset

levelup SPECIES_RAICHU
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_THUNDERBOLT, 1
	terminatelearnset

levelup SPECIES_SANDSHREW
	learnset MOVE_SCRATCH, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_BIDE, 3
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_SAND_TOMB, 6
	learnset MOVE_SANDSTORM, 7
	learnset MOVE_GYRO_BALL, 8
	learnset MOVE_ROCK_TOMB, 10
	learnset MOVE_METAL_CLAW, 11
	learnset MOVE_IRON_DEFENSE, 13
	learnset MOVE_ACCELEROCK, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_MUD_SPORT, 17
	learnset MOVE_METAL_BURST, 19
	learnset MOVE_DIG, 21
	learnset MOVE_SWORDS_DANCE, 22
	learnset MOVE_ROCK_SLIDE, 23
	learnset MOVE_IRON_HEAD, 24
	learnset MOVE_FISSURE, 25
	terminatelearnset

levelup SPECIES_SANDSLASH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_SAND_ATTACK, 7
	learnset MOVE_POISON_STING, 9
	learnset MOVE_RAPID_SPIN, 13
	learnset MOVE_SWIFT, 15
	learnset MOVE_FURY_SWIPES, 19
	learnset MOVE_ROLLOUT, 21
	learnset MOVE_CRUSH_CLAW, 22
	learnset MOVE_FURY_CUTTER, 28
	learnset MOVE_SAND_TOMB, 33
	learnset MOVE_SLASH, 40
	learnset MOVE_GYRO_BALL, 45
	learnset MOVE_SANDSTORM, 52
	terminatelearnset

levelup SPECIES_NIDORAN_F
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 2
	learnset MOVE_TAIL_WHIP, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_BITE, 8
	learnset MOVE_SPIKES, 10
	learnset MOVE_CAPTIVATE, 11
	learnset MOVE_MUD_SHOT, 12
	learnset MOVE_FLATTER, 14
	learnset MOVE_POISON_FANG, 15
	learnset MOVE_HORN_ATTACK, 16
	terminatelearnset

levelup SPECIES_NIDORINA
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SAND_TOMB, 1
	learnset MOVE_BITE, 1
	learnset MOVE_SPIKES, 1
	learnset MOVE_CAPTIVATE, 1
	learnset MOVE_MUD_SHOT, 1
	learnset MOVE_FLATTER, 1
	learnset MOVE_POISON_FANG, 1
	learnset MOVE_DIG, 18
	learnset MOVE_BODY_SLAM, 20
	learnset MOVE_CRUNCH, 22
	learnset MOVE_ATTRACT, 23
	learnset MOVE_SLUDGE_BOMB, 25
	learnset MOVE_SNORE, 27
	learnset MOVE_TOXIC_SPIKES, 29
	learnset MOVE_FISSURE, 31
	terminatelearnset

levelup SPECIES_NIDOQUEEN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_DOUBLE_KICK, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_EARTH_POWER, 43
	learnset MOVE_SUPERPOWER, 58
	terminatelearnset

levelup SPECIES_NIDORAN_M
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 2
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_DOUBLE_KICK, 7
	learnset MOVE_BITE, 8
	learnset MOVE_TOXIC_SPIKES, 10
	learnset MOVE_CHARM, 11
	learnset MOVE_REVENGE, 12
	learnset MOVE_SWAGGER, 14
	learnset MOVE_POISON_FANG, 15
	learnset MOVE_HORN_ATTACK, 16
	terminatelearnset

levelup SPECIES_NIDORINO
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_DOUBLE_KICK, 1
	learnset MOVE_BITE, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_REVENGE, 1
	learnset MOVE_POISON_FANG, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_BRICK_BREAK, 18
	learnset MOVE_BODY_SLAM, 20
	learnset MOVE_CRUNCH, 22
	learnset MOVE_BULK_UP, 23
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_SNORE, 27
	learnset MOVE_SWAGGER, 28
	learnset MOVE_TOXIC_SPIKES, 29
	learnset MOVE_HORN_DRILL, 31
	terminatelearnset

levelup SPECIES_NIDOKING
	learnset MOVE_PECK, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_DOUBLE_KICK, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_THRASH, 23
	learnset MOVE_EARTH_POWER, 43
	learnset MOVE_MEGAHORN, 58
	terminatelearnset

levelup SPECIES_CLEFAIRY
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_ENCORE, 2
	learnset MOVE_METRONOME, 3
	learnset MOVE_SWEET_SCENT, 4
	learnset MOVE_MEGA_PUNCH, 5
	learnset MOVE_SWEET_KISS, 6
	learnset MOVE_MAGICAL_LEAF, 8
	learnset MOVE_MINIMIZE, 9
	learnset MOVE_COSMIC_POWER, 10
	learnset MOVE_SWIFT, 11
	learnset MOVE_GRAVITY, 12
	learnset MOVE_FOLLOW_ME, 13
	learnset MOVE_DRAIN_PUNCH, 15
	learnset MOVE_LAST_RESORT, 17
	learnset MOVE_CALM_MIND, 18
	learnset MOVE_EXTRASENSORY, 20
	learnset MOVE_SHADOW_BALL, 22
	learnset MOVE_MIST_BALL, 24
	learnset MOVE_PSYCHIC, 27
	learnset MOVE_LUNAR_DANCE, 30
	terminatelearnset

levelup SPECIES_CLEFABLE
	learnset MOVE_SING, 1
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_MINIMIZE, 1
	learnset MOVE_METRONOME, 1
	terminatelearnset

levelup SPECIES_VULPIX
	learnset MOVE_FIRE_SPIN, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_GROWL, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_WILL_O_WISP, 6
	learnset MOVE_CONFUSE_RAY, 8
	learnset MOVE_CONFUSION, 9
	learnset MOVE_MEMENTO, 11
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_PAYBACK, 14
	learnset MOVE_HYPNOSIS, 16
	learnset MOVE_EMBARGO, 17
	learnset MOVE_EXTRASENSORY, 19
	learnset MOVE_LAVA_PLUME, 22
	learnset MOVE_CALM_MIND, 24
	learnset MOVE_SUNNY_DAY, 26
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_FLAMETHROWER, 32
	terminatelearnset

levelup SPECIES_NINETALES
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_SAFEGUARD, 1
	terminatelearnset

levelup SPECIES_JIGGLYPUFF
	learnset MOVE_SING, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_SWEET_SCENT, 3
	learnset MOVE_POUND, 4
	learnset MOVE_SWEET_KISS, 5
	learnset MOVE_COPYCAT, 6
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_ATTRACT, 9
	learnset MOVE_WISH, 11
	learnset MOVE_GRAVITY, 12
	learnset MOVE_WAKE_UP_SLAP, 13
	learnset MOVE_LAST_RESORT, 15
	learnset MOVE_SEISMIC_TOSS, 17
	learnset MOVE_LUSTER_PURGE, 19
	learnset MOVE_SHOCK_WAVE, 21
	learnset MOVE_PERISH_SONG, 23
	learnset MOVE_TOXIC, 25
	learnset MOVE_PAIN_SPLIT, 26
	learnset MOVE_HYPER_VOICE, 28
	learnset MOVE_MIST_BALL, 30
	terminatelearnset

levelup SPECIES_WIGGLYTUFF
	learnset MOVE_SING, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_DOUBLE_SLAP, 1
	terminatelearnset

levelup SPECIES_ZUBAT
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SUPERSONIC, 2
	learnset MOVE_ASTONISH, 3
	learnset MOVE_BUG_BITE, 4
	learnset MOVE_GUST, 5
	learnset MOVE_POISON_FANG, 7
	learnset MOVE_TAUNT, 8
	learnset MOVE_TOXIC_SPIKES, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_LEECH_LIFE, 14
	learnset MOVE_U_TURN, 16
	learnset MOVE_AERIAL_ACE, 18
	learnset MOVE_CROSS_POISON, 20
	learnset MOVE_ROOST, 22
	learnset MOVE_AIR_SLASH, 24
	learnset MOVE_HAZE, 26
	learnset MOVE_CRUNCH, 28
	learnset MOVE_TAILWIND, 30
	terminatelearnset

levelup SPECIES_GOLBAT
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SUPERSONIC, 2
	learnset MOVE_ASTONISH, 3
	learnset MOVE_BUG_BITE, 4
	learnset MOVE_GUST, 5
	learnset MOVE_POISON_FANG, 7
	learnset MOVE_TAUNT, 8
	learnset MOVE_TOXIC_SPIKES, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_LEECH_LIFE, 14
	learnset MOVE_U_TURN, 16
	learnset MOVE_AERIAL_ACE, 18
	learnset MOVE_CROSS_POISON, 20
	learnset MOVE_ROOST, 22
	learnset MOVE_AIR_SLASH, 24
	learnset MOVE_HAZE, 26
	learnset MOVE_CRUNCH, 28
	learnset MOVE_TAILWIND, 30
	learnset MOVE_HYPER_FANG, 31
	learnset MOVE_SKY_ATTACK, 32
	terminatelearnset

levelup SPECIES_ODDISH
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_ACID, 2
	learnset MOVE_POISON_POWDER, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_TOXIC, 8
	learnset MOVE_RAZOR_LEAF, 9
	learnset MOVE_SLUDGE, 11
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_INGRAIN, 14
	learnset MOVE_CHARM, 16
	learnset MOVE_GIGA_DRAIN, 17
	learnset MOVE_LEECH_LIFE, 19
	learnset MOVE_POISON_JAB, 20
	learnset MOVE_NATURE_POWER, 21
	terminatelearnset

levelup SPECIES_GLOOM
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_TOXIC, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_SLUDGE, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_CHARM, 1
	learnset MOVE_GIGA_DRAIN, 1
	learnset MOVE_POISON_JAB, 1
	learnset MOVE_MOONLIGHT, 22
	learnset MOVE_DRAIN_PUNCH, 24
	learnset MOVE_SLUDGE_BOMB, 26
	learnset MOVE_PETAL_DANCE, 29
	terminatelearnset

levelup SPECIES_VILEPLUME
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_AROMATHERAPY, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_PETAL_DANCE, 53
	learnset MOVE_SOLAR_BEAM, 65
	terminatelearnset

levelup SPECIES_PARAS
	learnset MOVE_SCRATCH, 1
	learnset MOVE_POISON_POWDER, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_STUN_SPORE, 5
	learnset MOVE_GRASS_KNOT, 7
	learnset MOVE_POISON_STING, 9
	learnset MOVE_PROTECT, 10
	learnset MOVE_SLEEP_POWDER, 12
	learnset MOVE_LEECH_LIFE, 13
	learnset MOVE_FURY_CUTTER, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_DIG, 18
	learnset MOVE_GIGA_DRAIN, 20
	terminatelearnset

levelup SPECIES_PARASECT
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_GRASS_KNOT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_LEECH_LIFE, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_SLASH, 1
	learnset MOVE_SLASH, 1
	learnset MOVE_DIG, 1
	learnset MOVE_GIGA_DRAIN, 1
	learnset MOVE_SLUDGE_BOMB, 22
	learnset MOVE_SIGNAL_BEAM, 24
	learnset MOVE_MIRACLE_EYE, 25
	learnset MOVE_SEED_BOMB, 27
	learnset MOVE_X_SCISSOR, 30
	terminatelearnset

levelup SPECIES_VENONAT
	learnset MOVE_TACKLE, 1
	learnset MOVE_DISABLE, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_POISON_STING, 6
	learnset MOVE_POISON_POWDER, 7
	learnset MOVE_BUG_BITE, 8
	learnset MOVE_DOUBLE_TEAM, 9
	learnset MOVE_POISON_FANG, 11
	learnset MOVE_STUN_SPORE, 12
	learnset MOVE_PSYBEAM, 13
	learnset MOVE_LEECH_LIFE, 14
	learnset MOVE_MEGA_DRAIN, 16
	learnset MOVE_TOXIC, 17
	learnset MOVE_CROSS_POISON, 18
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_PROTECT, 24
	learnset MOVE_SELF_DESTRUCT, 26
	learnset MOVE_BUG_BUZZ, 27
	terminatelearnset

levelup SPECIES_VENOMOTH
	learnset MOVE_SILVER_WIND, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_CONFUSION, 11
	learnset MOVE_POISON_POWDER, 13
	learnset MOVE_LEECH_LIFE, 17
	learnset MOVE_STUN_SPORE, 23
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_SLEEP_POWDER, 29
	learnset MOVE_GUST, 31
	learnset MOVE_SIGNAL_BEAM, 37
	learnset MOVE_ZEN_HEADBUTT, 41
	learnset MOVE_POISON_FANG, 47
	learnset MOVE_PSYCHIC, 55
	learnset MOVE_BUG_BUZZ, 59
	terminatelearnset

levelup SPECIES_DIGLETT
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SAND_TOMB, 2
	learnset MOVE_CHARM, 3
	learnset MOVE_ASTONISH, 4
	learnset MOVE_MAGNITUDE, 5
	learnset MOVE_PROTECT, 7
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_SUCKER_PUNCH, 10
	learnset MOVE_MUD_SPORT, 12
	learnset MOVE_GLARE, 14
	learnset MOVE_STEALTH_ROCK, 15
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_DIG, 18
	learnset MOVE_MIRACLE_EYE, 20
	learnset MOVE_ROCK_SLIDE, 22
	terminatelearnset

levelup SPECIES_DUGTRIO
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SAND_TOMB, 2
	learnset MOVE_CHARM, 3
	learnset MOVE_ASTONISH, 4
	learnset MOVE_MAGNITUDE, 5
	learnset MOVE_PROTECT, 7
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_SUCKER_PUNCH, 10
	learnset MOVE_MUD_SPORT, 12
	learnset MOVE_GLARE, 14
	learnset MOVE_STEALTH_ROCK, 15
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_DIG, 18
	learnset MOVE_MIRACLE_EYE, 20
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_FISSURE, 25
	learnset MOVE_FLAIL, 27
	learnset MOVE_SUCKER_PUNCH, 30
	terminatelearnset

levelup SPECIES_MEOWTH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_BITE, 3
	learnset MOVE_FAKE_OUT, 5
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_SCREECH, 7
	learnset MOVE_FEINT_ATTACK, 9
	learnset MOVE_TAUNT, 10
	learnset MOVE_DOUBLE_SLAP, 12
	learnset MOVE_ATTRACT, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_EMBARGO, 16
	learnset MOVE_FEINT, 18
	learnset MOVE_SLASH, 20
	learnset MOVE_NIGHT_SLASH, 22
	learnset MOVE_HYPNOSIS, 24
	learnset MOVE_DOUBLE_EDGE, 27
	learnset MOVE_ENDEAVOR, 30
	terminatelearnset

levelup SPECIES_PERSIAN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_BITE, 3
	learnset MOVE_FAKE_OUT, 5
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_SCREECH, 7
	learnset MOVE_FEINT_ATTACK, 9
	learnset MOVE_TAUNT, 10
	learnset MOVE_DOUBLE_SLAP, 12
	learnset MOVE_ATTRACT, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_EMBARGO, 16
	learnset MOVE_FEINT, 18
	learnset MOVE_SLASH, 20
	learnset MOVE_NIGHT_SLASH, 22
	learnset MOVE_HYPNOSIS, 24
	learnset MOVE_DOUBLE_EDGE, 27
	learnset MOVE_ENDEAVOR, 30
	terminatelearnset

levelup SPECIES_PSYDUCK
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_WATER_GUN, 9
	learnset MOVE_DISABLE, 14
	learnset MOVE_CONFUSION, 18
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_FURY_SWIPES, 27
	learnset MOVE_SCREECH, 31
	learnset MOVE_PSYCH_UP, 35
	learnset MOVE_ZEN_HEADBUTT, 40
	learnset MOVE_AMNESIA, 44
	learnset MOVE_HYDRO_PUMP, 48
	terminatelearnset

levelup SPECIES_GOLDUCK
	learnset MOVE_AQUA_JET, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_WATER_GUN, 9
	learnset MOVE_DISABLE, 14
	learnset MOVE_CONFUSION, 18
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_FURY_SWIPES, 27
	learnset MOVE_SCREECH, 31
	learnset MOVE_PSYCH_UP, 37
	learnset MOVE_ZEN_HEADBUTT, 44
	learnset MOVE_AMNESIA, 50
	learnset MOVE_HYDRO_PUMP, 56
	terminatelearnset

levelup SPECIES_MANKEY
	learnset MOVE_COVET, 1
	learnset MOVE_SCRATCH, 3
	learnset MOVE_LOW_KICK, 5
	learnset MOVE_LEER, 6
	learnset MOVE_FEINT, 8
	learnset MOVE_DOUBLE_SLAP, 10
	learnset MOVE_KARATE_CHOP, 12
	learnset MOVE_SEISMIC_TOSS, 14
	learnset MOVE_SCREECH, 15
	learnset MOVE_MEGA_PUNCH, 16
	learnset MOVE_ROCK_TOMB, 18
	learnset MOVE_METRONOME, 19
	learnset MOVE_THRASH, 20
	learnset MOVE_PUNISHMENT, 22
	learnset MOVE_FOCUS_PUNCH, 23
	learnset MOVE_THUNDER_PUNCH, 25
	learnset MOVE_ROCK_CLIMB, 27
	learnset MOVE_MIRACLE_EYE, 28
	learnset MOVE_COUNTER, 30
	learnset MOVE_REVERSAL, 32
	terminatelearnset

levelup SPECIES_PRIMEAPE
	learnset MOVE_FLING, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LOW_KICK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_FURY_SWIPES, 9
	learnset MOVE_KARATE_CHOP, 13
	learnset MOVE_SEISMIC_TOSS, 17
	learnset MOVE_SCREECH, 21
	learnset MOVE_ASSURANCE, 25
	learnset MOVE_RAGE, 28
	learnset MOVE_SWAGGER, 35
	learnset MOVE_CROSS_CHOP, 41
	learnset MOVE_THRASH, 47
	learnset MOVE_PUNISHMENT, 53
	learnset MOVE_CLOSE_COMBAT, 59
	terminatelearnset

levelup SPECIES_GROWLITHE
	learnset MOVE_BITE, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_EMBER, 3
	learnset MOVE_LEER, 5
	learnset MOVE_ROAR, 6
	learnset MOVE_HELPING_HAND, 7
	learnset MOVE_FLAME_WHEEL, 8
	learnset MOVE_CHARM, 10
	learnset MOVE_REVERSAL, 11
	learnset MOVE_WILL_O_WISP, 12
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_AGILITY, 15
	learnset MOVE_SNORE, 17
	learnset MOVE_MORNING_SUN, 18
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_CRUNCH, 21
	learnset MOVE_ENDURE, 24
	learnset MOVE_LAVA_PLUME, 27
	learnset MOVE_FLAMETHROWER, 31
	terminatelearnset

levelup SPECIES_ARCANINE
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_SUNNY_DAY, 7
	learnset MOVE_BITE, 9
	learnset MOVE_FLAME_WHEEL, 12
	learnset MOVE_SNARL, 15
	learnset MOVE_THUNDER_FANG, 18
	learnset MOVE_BULLDOZE, 21
	learnset MOVE_SCORCHING_SANDS, 24
	learnset MOVE_LAVA_PLUME, 28
	learnset MOVE_CRUNCH, 32
	learnset MOVE_EXTREME_SPEED, 36
	learnset MOVE_HEAT_WAVE, 41
	learnset MOVE_WILD_CHARGE, 45
	learnset MOVE_CLOSE_COMBAT, 49
	learnset MOVE_RAGING_FURY, 53
	learnset MOVE_WILL_O_WISP, 58
	learnset MOVE_PLAY_ROUGH, 61
	terminatelearnset

levelup SPECIES_POLIWAG
	learnset MOVE_BUBBLE, 1
	learnset MOVE_HYPNOSIS, 3
	learnset MOVE_DOUBLE_SLAP, 5
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_RAIN_DANCE, 7
	learnset MOVE_MUD_SHOT, 9
	learnset MOVE_BUBBLE_BEAM, 11
	learnset MOVE_SEISMIC_TOSS, 12
	learnset MOVE_ICE_BALL, 13
	learnset MOVE_REFRESH, 15
	terminatelearnset

levelup SPECIES_POLIWHIRL
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_RAIN_DANCE, 1
	learnset MOVE_MUD_SHOT, 1
	learnset MOVE_BUBBLE_BEAM, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_ICE_BALL, 1
	learnset MOVE_REFRESH, 1
	learnset MOVE_SLAM, 17
	learnset MOVE_MEGA_PUNCH, 18
	learnset MOVE_DIVE, 20
	learnset MOVE_ICY_WIND, 21
	learnset MOVE_WAKE_UP_SLAP, 23
	learnset MOVE_REVENGE, 24
	learnset MOVE_ICE_PUNCH, 26
	learnset MOVE_WATER_SPORT, 28
	learnset MOVE_FOCUS_PUNCH, 30
	terminatelearnset

levelup SPECIES_POLIWRATH
	learnset MOVE_BUBBLE_BEAM, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_SUBMISSION, 1
	learnset MOVE_DYNAMIC_PUNCH, 43
	learnset MOVE_MIND_READER, 53
	terminatelearnset

levelup SPECIES_ABRA
	learnset MOVE_TELEPORT, 1
	learnset MOVE_CONFUSION, 3
	learnset MOVE_SWEET_SCENT, 5
	learnset MOVE_MEMENTO, 7
	learnset MOVE_RECOVER, 9
	learnset MOVE_TAUNT, 10
	learnset MOVE_COSMIC_POWER, 12
	learnset MOVE_PSYBEAM, 13
	learnset MOVE_METRONOME, 15
	learnset MOVE_GRAVITY, 17
	learnset MOVE_FUTURE_SIGHT, 19
	learnset MOVE_DISABLE, 20
	learnset MOVE_LUSTER_PURGE, 23
	terminatelearnset

levelup SPECIES_KADABRA
	learnset MOVE_TELEPORT, 1
	learnset MOVE_CONFUSION, 3
	learnset MOVE_SWEET_SCENT, 5
	learnset MOVE_MEMENTO, 7
	learnset MOVE_RECOVER, 9
	learnset MOVE_TAUNT, 10
	learnset MOVE_COSMIC_POWER, 12
	learnset MOVE_PSYBEAM, 13
	learnset MOVE_METRONOME, 15
	learnset MOVE_GRAVITY, 17
	learnset MOVE_FUTURE_SIGHT, 19
	learnset MOVE_DISABLE, 20
	learnset MOVE_LUSTER_PURGE, 23
	learnset MOVE_TRICK, 24
	learnset MOVE_TRICK_ROOM, 26
	learnset MOVE_EXTRASENSORY, 28
	learnset MOVE_SHOCK_WAVE, 29
	learnset MOVE_MIRROR_COAT, 31
	terminatelearnset

levelup SPECIES_ALAKAZAM
	learnset MOVE_TELEPORT, 1
	learnset MOVE_KINESIS, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_CONFUSION, 16
	learnset MOVE_DISABLE, 18
	learnset MOVE_MIRACLE_EYE, 22
	learnset MOVE_PSYBEAM, 24
	learnset MOVE_REFLECT, 28
	learnset MOVE_RECOVER, 30
	learnset MOVE_PSYCHO_CUT, 34
	learnset MOVE_CALM_MIND, 36
	learnset MOVE_PSYCHIC, 40
	learnset MOVE_FUTURE_SIGHT, 42
	learnset MOVE_TRICK, 46
	terminatelearnset

levelup SPECIES_MACHOP
	learnset MOVE_LOW_KICK, 1
	learnset MOVE_LEER, 3
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_KARATE_CHOP, 7
	learnset MOVE_SWAGGER, 9
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_MIRACLE_EYE, 13
	learnset MOVE_MEGA_PUNCH, 15
	learnset MOVE_VITAL_THROW, 17
	learnset MOVE_PAYBACK, 19
	learnset MOVE_BULK_UP, 21
	learnset MOVE_REVENGE, 23
	learnset MOVE_THUNDER_PUNCH, 26
	terminatelearnset

levelup SPECIES_MACHOKE
	learnset MOVE_LOW_KICK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_SWAGGER, 1
	learnset MOVE_SEISMIC_TOSS, 1
	learnset MOVE_MIRACLE_EYE, 1
	learnset MOVE_MEGA_PUNCH, 1
	learnset MOVE_VITAL_THROW, 1
	learnset MOVE_PAYBACK, 1
	learnset MOVE_REVENGE, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_ROCK_TOMB, 25
	learnset MOVE_POISON_JAB, 27
	learnset MOVE_DYNAMIC_PUNCH, 30
	terminatelearnset

levelup SPECIES_MACHAMP
	learnset MOVE_LOW_KICK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_FOCUS_ENERGY, 7
	learnset MOVE_KARATE_CHOP, 10
	learnset MOVE_FORESIGHT, 13
	learnset MOVE_SEISMIC_TOSS, 19
	learnset MOVE_REVENGE, 22
	learnset MOVE_VITAL_THROW, 25
	learnset MOVE_SUBMISSION, 32
	learnset MOVE_WAKE_UP_SLAP, 36
	learnset MOVE_CROSS_CHOP, 40
	learnset MOVE_SCARY_FACE, 44
	learnset MOVE_DYNAMIC_PUNCH, 51
	terminatelearnset

levelup SPECIES_BELLSPROUT
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_MEDITATE, 2
	learnset MOVE_WRAP, 3
	learnset MOVE_POISON_POWDER, 4
	learnset MOVE_ACID, 6
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_INGRAIN, 8
	learnset MOVE_KNOCK_OFF, 10
	learnset MOVE_BULLET_SEED, 12
	learnset MOVE_SLEEP_POWDER, 13
	learnset MOVE_MEGA_DRAIN, 14
	learnset MOVE_SLUDGE, 15
	learnset MOVE_SYNTHESIS, 17
	learnset MOVE_GRASS_KNOT, 18
	learnset MOVE_POISON_JAB, 19
	learnset MOVE_SUCKER_PUNCH, 21
	learnset MOVE_GIGA_DRAIN, 22
	terminatelearnset

levelup SPECIES_WEEPINBELL
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_KNOCK_OFF, 1
	learnset MOVE_BULLET_SEED, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_SLUDGE, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_GRASS_KNOT, 1
	learnset MOVE_POISON_JAB, 1
	learnset MOVE_SEED_BOMB, 24
	learnset MOVE_COTTON_SPORE, 26
	learnset MOVE_GASTRO_ACID, 28
	learnset MOVE_TEETER_DANCE, 31
	terminatelearnset

levelup SPECIES_VICTREEBEL
	learnset MOVE_STOCKPILE, 1
	learnset MOVE_SWALLOW, 1
	learnset MOVE_SPIT_UP, 1
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_SLEEP_POWDER, 1
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_LEAF_STORM, 47
	learnset MOVE_LEAF_BLADE, 47
	terminatelearnset

levelup SPECIES_TENTACOOL
	learnset MOVE_WRAP, 1
	learnset MOVE_POISON_STING, 3
	learnset MOVE_AQUA_JET, 4
	learnset MOVE_ACID, 6
	learnset MOVE_WHIRLPOOL, 8
	learnset MOVE_MEGA_DRAIN, 9
	learnset MOVE_BARRIER, 11
	learnset MOVE_SLUDGE, 13
	learnset MOVE_BRINE, 15
	learnset MOVE_AURORA_BEAM, 16
	learnset MOVE_MIRROR_COAT, 18
	learnset MOVE_WRING_OUT, 20
	learnset MOVE_ICY_WIND, 22
	learnset MOVE_RAIN_DANCE, 24
	learnset MOVE_SLUDGE_BOMB, 26
	learnset MOVE_WATER_SPORT, 27
	learnset MOVE_DESTINY_BOND, 29
	learnset MOVE_AQUA_TAIL, 32
	terminatelearnset

levelup SPECIES_TENTACRUEL
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_CONSTRICT, 8
	learnset MOVE_ACID, 12
	learnset MOVE_TOXIC_SPIKES, 15
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_WRAP, 22
	learnset MOVE_BARRIER, 26
	learnset MOVE_WATER_PULSE, 29
	learnset MOVE_POISON_JAB, 36
	learnset MOVE_SCREECH, 42
	learnset MOVE_HYDRO_PUMP, 49
	learnset MOVE_WRING_OUT, 55
	terminatelearnset

levelup SPECIES_GEODUDE
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_ROCK_THROW, 3
	learnset MOVE_ROCK_POLISH, 5
	learnset MOVE_ROLLOUT, 6
	learnset MOVE_PROTECT, 8
	learnset MOVE_SELF_DESTRUCT, 9
	learnset MOVE_MUD_SPORT, 11
	learnset MOVE_ROCK_BLAST, 12
	learnset MOVE_MAGNITUDE, 14
	learnset MOVE_PROTECT, 15
	learnset MOVE_STEALTH_ROCK, 17
	learnset MOVE_ROCK_SLIDE, 18
	learnset MOVE_DIG, 19
	learnset MOVE_ICE_BALL, 20
	learnset MOVE_GYRO_BALL, 21
	learnset MOVE_SANDSTORM, 23
	terminatelearnset

levelup SPECIES_GRAVELER
	learnset MOVE_ROCK_POLISH, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_SELF_DESTRUCT, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_ROCK_BLAST, 1
	learnset MOVE_MAGNITUDE, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_STEALTH_ROCK, 1
	learnset MOVE_ROCK_SLIDE, 18
	learnset MOVE_DIG, 19
	learnset MOVE_ICE_BALL, 20
	learnset MOVE_GYRO_BALL, 21
	learnset MOVE_SANDSTORM, 23
	learnset MOVE_ROCK_CLIMB, 25
	learnset MOVE_CURSE, 27
	learnset MOVE_EXPLOSION, 29
	learnset MOVE_FISSURE, 32
	terminatelearnset

levelup SPECIES_GOLEM
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_ROCK_POLISH, 1
	learnset MOVE_MUD_SPORT, 4
	learnset MOVE_ROCK_POLISH, 8
	learnset MOVE_ROCK_THROW, 11
	learnset MOVE_MAGNITUDE, 15
	learnset MOVE_SELF_DESTRUCT, 18
	learnset MOVE_ROLLOUT, 22
	learnset MOVE_ROCK_BLAST, 27
	learnset MOVE_EARTHQUAKE, 33
	learnset MOVE_EXPLOSION, 38
	learnset MOVE_DOUBLE_EDGE, 44
	learnset MOVE_STONE_EDGE, 49
	terminatelearnset

levelup SPECIES_PONYTA
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 2
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_FIRE_SPIN, 4
	learnset MOVE_STOMP, 6
	learnset MOVE_FLAME_WHEEL, 8
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_AGILITY, 11
	learnset MOVE_HORN_ATTACK, 13
	learnset MOVE_TAKE_DOWN, 14
	learnset MOVE_ATTRACT, 16
	learnset MOVE_FIRE_FANG, 17
	learnset MOVE_BODY_SLAM, 20
	learnset MOVE_MORNING_SUN, 22
	learnset MOVE_BOUNCE, 24
	learnset MOVE_IRON_TAIL, 27
	learnset MOVE_FLAMETHROWER, 32
	terminatelearnset

levelup SPECIES_RAPIDASH
	learnset MOVE_POISON_JAB, 1
	learnset MOVE_MEGAHORN, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_TAIL_WHIP, 6
	learnset MOVE_EMBER, 10
	learnset MOVE_FLAME_WHEEL, 15
	learnset MOVE_STOMP, 19
	learnset MOVE_FIRE_SPIN, 24
	learnset MOVE_TAKE_DOWN, 28
	learnset MOVE_AGILITY, 33
	learnset MOVE_FIRE_BLAST, 37
	learnset MOVE_FURY_ATTACK, 40
	learnset MOVE_BOUNCE, 47
	learnset MOVE_FLARE_BLITZ, 56
	terminatelearnset

levelup SPECIES_SLOWPOKE
	learnset MOVE_CURSE, 1
	learnset MOVE_YAWN, 2
	learnset MOVE_TACKLE, 3
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_GROWL, 6
	learnset MOVE_CONFUSION, 7
	learnset MOVE_WATER_PULSE, 9
	learnset MOVE_SLACK_OFF, 11
	learnset MOVE_TRICK, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_ICY_WIND, 16
	learnset MOVE_AMNESIA, 18
	learnset MOVE_EMBARGO, 20
	learnset MOVE_RAIN_DANCE, 22
	learnset MOVE_MIRROR_COAT, 24
	learnset MOVE_WATER_SPORT, 26
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_TRICK_ROOM, 32
	terminatelearnset

levelup SPECIES_SLOWBRO
	learnset MOVE_CURSE, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_GROWL, 6
	learnset MOVE_WATER_GUN, 11
	learnset MOVE_CONFUSION, 15
	learnset MOVE_DISABLE, 20
	learnset MOVE_HEADBUTT, 25
	learnset MOVE_WATER_PULSE, 29
	learnset MOVE_ZEN_HEADBUTT, 34
	learnset MOVE_WITHDRAW, 37
	learnset MOVE_SLACK_OFF, 41
	learnset MOVE_AMNESIA, 47
	learnset MOVE_PSYCHIC, 54
	learnset MOVE_RAIN_DANCE, 61
	learnset MOVE_PSYCH_UP, 67
	terminatelearnset

levelup SPECIES_MAGNEMITE
	learnset MOVE_METAL_SOUND, 1
	learnset MOVE_TACKLE, 3
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_SONIC_BOOM, 6
	learnset MOVE_THUNDER_WAVE, 8
	learnset MOVE_SPARK, 9
	learnset MOVE_MIRROR_SHOT, 10
	learnset MOVE_METAL_SOUND, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_MAGNET_RISE, 15
	learnset MOVE_GYRO_BALL, 16
	learnset MOVE_CHARGE_BEAM, 18
	learnset MOVE_THUNDER_WAVE, 19
	learnset MOVE_NATURAL_GIFT, 21
	learnset MOVE_SIGNAL_BEAM, 23
	learnset MOVE_FLASH, 25
	learnset MOVE_FLASH_CANNON, 28
	learnset MOVE_DISCHARGE, 30
	terminatelearnset

levelup SPECIES_MAGNETON
	learnset MOVE_TRI_ATTACK, 1
	learnset MOVE_METAL_SOUND, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_SUPERSONIC, 11
	learnset MOVE_SONIC_BOOM, 14
	learnset MOVE_THUNDER_WAVE, 17
	learnset MOVE_SPARK, 22
	learnset MOVE_LOCK_ON, 27
	learnset MOVE_MAGNET_BOMB, 30
	learnset MOVE_SCREECH, 34
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_MIRROR_SHOT, 46
	learnset MOVE_MAGNET_RISE, 50
	learnset MOVE_GYRO_BALL, 54
	learnset MOVE_ZAP_CANNON, 60
	terminatelearnset

levelup SPECIES_FARFETCHD
	learnset MOVE_PECK, 1
	learnset MOVE_SAND_ATTACK, 3
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_LEER, 6
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_FURY_ATTACK, 8
	learnset MOVE_KNOCK_OFF, 9
	learnset MOVE_AERIAL_ACE, 10
	learnset MOVE_AGILITY, 13
	learnset MOVE_POISON_JAB, 15
	learnset MOVE_FEINT, 16
	learnset MOVE_NIGHT_SLASH, 18
	learnset MOVE_AIR_SLASH, 20
	learnset MOVE_U_TURN, 21
	learnset MOVE_LEAF_BLADE, 23
	learnset MOVE_BOUNCE, 26
	learnset MOVE_DOUBLE_EDGE, 30
	terminatelearnset

levelup SPECIES_DODUO
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_RAGE, 5
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_PURSUIT, 8
	learnset MOVE_DOUBLE_HIT, 10
	learnset MOVE_ACUPRESSURE, 11
	learnset MOVE_DOUBLE_KICK, 13
	learnset MOVE_FEINT, 15
	learnset MOVE_PLUCK, 17
	learnset MOVE_AGILITY, 18
	learnset MOVE_MIRROR_MOVE, 20
	learnset MOVE_SECRET_POWER, 22
	learnset MOVE_DRILL_PECK, 25
	learnset MOVE_KNOCK_OFF, 27
	learnset MOVE_EXTREME_SPEED, 33
	terminatelearnset

levelup SPECIES_DODRIO
	learnset MOVE_PLUCK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_RAGE, 10
	learnset MOVE_FURY_ATTACK, 14
	learnset MOVE_PURSUIT, 19
	learnset MOVE_UPROAR, 23
	learnset MOVE_ACUPRESSURE, 28
	learnset MOVE_TRI_ATTACK, 34
	learnset MOVE_AGILITY, 41
	learnset MOVE_DRILL_PECK, 47
	learnset MOVE_ENDEAVOR, 54
	terminatelearnset

levelup SPECIES_SEEL
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ICY_WIND, 7
	learnset MOVE_ENCORE, 8
	learnset MOVE_ICE_SHARD, 10
	learnset MOVE_REST, 11
	learnset MOVE_FAKE_OUT, 13
	learnset MOVE_AQUA_RING, 14
	learnset MOVE_AQUA_JET, 15
	learnset MOVE_SHEER_COLD, 16
	learnset MOVE_TAKE_DOWN, 17
	learnset MOVE_DIVE, 19
	learnset MOVE_HAIL, 20
	learnset MOVE_WATER_SPORT, 22
	learnset MOVE_AURORA_BEAM, 23
	learnset MOVE_ICE_SHARD, 25
	learnset MOVE_BODY_SLAM, 27
	learnset MOVE_ICE_BEAM, 29
	terminatelearnset

levelup SPECIES_DEWGONG
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SIGNAL_BEAM, 1
	learnset MOVE_ICY_WIND, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_SIGNAL_BEAM, 7
	learnset MOVE_ICY_WIND, 11
	learnset MOVE_ENCORE, 13
	learnset MOVE_ICE_SHARD, 17
	learnset MOVE_REST, 21
	learnset MOVE_AQUA_RING, 23
	learnset MOVE_AURORA_BEAM, 27
	learnset MOVE_AQUA_JET, 31
	learnset MOVE_BRINE, 33
	learnset MOVE_SHEER_COLD, 34
	learnset MOVE_TAKE_DOWN, 37
	learnset MOVE_DIVE, 41
	learnset MOVE_AQUA_TAIL, 43
	learnset MOVE_ICE_BEAM, 47
	learnset MOVE_SAFEGUARD, 51
	terminatelearnset

levelup SPECIES_GRIMER
	learnset MOVE_POUND, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_POISON_GAS, 6
	learnset MOVE_DISABLE, 7
	learnset MOVE_MINIMIZE, 8
	learnset MOVE_SLUDGE, 9
	learnset MOVE_EMBARGO, 11
	learnset MOVE_SHADOW_SNEAK, 13
	learnset MOVE_TAUNT, 14
	learnset MOVE_MUD_BOMB, 15
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_SHADOW_PUNCH, 19
	learnset MOVE_HAZE, 22
	learnset MOVE_PAIN_SPLIT, 23
	learnset MOVE_BODY_SLAM, 25
	learnset MOVE_ICE_PUNCH, 27
	learnset MOVE_POISON_JAB, 29
	learnset MOVE_EXPLOSION, 32
	terminatelearnset

levelup SPECIES_MUK
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_POUND, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_HARDEN, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_DISABLE, 12
	learnset MOVE_MINIMIZE, 17
	learnset MOVE_SLUDGE, 20
	learnset MOVE_MUD_BOMB, 23
	learnset MOVE_FLING, 28
	learnset MOVE_SCREECH, 33
	learnset MOVE_SLUDGE_BOMB, 36
	learnset MOVE_ACID_ARMOR, 44
	learnset MOVE_GUNK_SHOT, 54
	learnset MOVE_MEMENTO, 65
	terminatelearnset

levelup SPECIES_SHELLDER
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_WITHDRAW, 2
	learnset MOVE_SUPERSONIC, 3
	learnset MOVE_CLAMP, 5
	learnset MOVE_PROTECT, 7
	learnset MOVE_ICICLE_SPEAR, 8
	learnset MOVE_ICE_SHARD, 10
	learnset MOVE_AURORA_BEAM, 12
	learnset MOVE_IRON_DEFENSE, 14
	learnset MOVE_BRINE, 15
	learnset MOVE_SPIKE_CANNON, 17
	learnset MOVE_SHEER_COLD, 19
	learnset MOVE_ROCK_BLAST, 21
	learnset MOVE_ICY_WIND, 23
	learnset MOVE_DIVE, 25
	learnset MOVE_WATER_SPORT, 28
	learnset MOVE_SELF_DESTRUCT, 31
	terminatelearnset

levelup SPECIES_CLOYSTER
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_AURORA_BEAM, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_SPIKES, 28
	learnset MOVE_SPIKE_CANNON, 40
	terminatelearnset

levelup SPECIES_GASTLY
	learnset MOVE_LICK, 1
	learnset MOVE_SPITE, 2
	learnset MOVE_POISON_GAS, 3
	learnset MOVE_ABSORB, 5
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_MEMENTO, 8
	learnset MOVE_ACID, 9
	learnset MOVE_SUCKER_PUNCH, 10
	learnset MOVE_SHADOW_SNEAK, 12
	learnset MOVE_DESTINY_BOND, 13
	learnset MOVE_HYPNOSIS, 14
	learnset MOVE_EMBARGO, 16
	learnset MOVE_MEMENTO, 17
	learnset MOVE_SLUDGE, 18
	learnset MOVE_DREAM_EATER, 19
	learnset MOVE_OMINOUS_WIND, 21
	learnset MOVE_SHOCK_WAVE, 22
	learnset MOVE_FIRE_PUNCH, 23
	terminatelearnset

levelup SPECIES_HAUNTER
	learnset MOVE_SPITE, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_MEMENTO, 1
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_SHADOW_SNEAK, 1
	learnset MOVE_DESTINY_BOND, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_EMBARGO, 1
	learnset MOVE_MEMENTO, 1
	learnset MOVE_DREAM_EATER, 1
	learnset MOVE_OMINOUS_WIND, 1
	learnset MOVE_SHOCK_WAVE, 1
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_ENERGY_BALL, 25
	learnset MOVE_CURSE, 27
	learnset MOVE_WILL_O_WISP, 28
	learnset MOVE_SHADOW_BALL, 31
	learnset MOVE_SLUDGE, 33
	terminatelearnset

levelup SPECIES_GENGAR
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_SPITE, 5
	learnset MOVE_MEAN_LOOK, 8
	learnset MOVE_CURSE, 12
	learnset MOVE_NIGHT_SHADE, 15
	learnset MOVE_CONFUSE_RAY, 19
	learnset MOVE_SUCKER_PUNCH, 22
	learnset MOVE_SHADOW_PUNCH, 25
	learnset MOVE_PAYBACK, 28
	learnset MOVE_SHADOW_BALL, 33
	learnset MOVE_DREAM_EATER, 39
	learnset MOVE_DARK_PULSE, 44
	learnset MOVE_DESTINY_BOND, 50
	learnset MOVE_NIGHTMARE, 55
	terminatelearnset

levelup SPECIES_ONIX
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_BIND, 5
	learnset MOVE_RAGE, 7
	learnset MOVE_SCREECH, 9
	learnset MOVE_ROCK_THROW, 11
	learnset MOVE_PROTECT, 13
	learnset MOVE_SANDSTORM, 15
	learnset MOVE_STEALTH_ROCK, 16
	learnset MOVE_IRON_DEFENSE, 18
	learnset MOVE_MUD_SPORT, 20
	learnset MOVE_DIG, 21
	learnset MOVE_DRAGON_PULSE, 23
	learnset MOVE_IRON_TAIL, 25
	learnset MOVE_SELF_DESTRUCT, 27
	learnset MOVE_DOUBLE_EDGE, 28
	learnset MOVE_STONE_EDGE, 30
	learnset MOVE_MAGNITUDE, 31
	terminatelearnset

levelup SPECIES_DROWZEE
	learnset MOVE_POUND, 1
	learnset MOVE_HYPNOSIS, 3
	learnset MOVE_DISABLE, 4
	learnset MOVE_CONFUSION, 5
	learnset MOVE_POISON_GAS, 7
	learnset MOVE_LOW_KICK, 9
	learnset MOVE_MEDITATE, 11
	learnset MOVE_REFLECT, 13
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_DRAIN_PUNCH, 16
	learnset MOVE_FLATTER, 17
	learnset MOVE_EMBARGO, 19
	learnset MOVE_ZEN_HEADBUTT, 21
	learnset MOVE_SNORE, 22
	learnset MOVE_SHADOW_BALL, 24
	learnset MOVE_FUTURE_SIGHT, 25
	learnset MOVE_TORMENT, 27
	learnset MOVE_EXTRASENSORY, 29
	learnset MOVE_NASTY_PLOT, 31
	terminatelearnset

levelup SPECIES_HYPNO
	learnset MOVE_NIGHTMARE, 1
	learnset MOVE_SWITCHEROO, 1
	learnset MOVE_POUND, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DISABLE, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_HEADBUTT, 15
	learnset MOVE_POISON_GAS, 18
	learnset MOVE_MEDITATE, 21
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_PSYCH_UP, 33
	learnset MOVE_HEADBUTT, 38
	learnset MOVE_SWAGGER, 45
	learnset MOVE_PSYCHIC, 50
	learnset MOVE_NASTY_PLOT, 55
	learnset MOVE_ZEN_HEADBUTT, 64
	learnset MOVE_FUTURE_SIGHT, 69
	terminatelearnset

levelup SPECIES_KRABBY
	learnset MOVE_BUBBLE, 1
	learnset MOVE_VICE_GRIP, 3
	learnset MOVE_HARDEN, 5
	learnset MOVE_METAL_CLAW, 6
	learnset MOVE_LEER, 8
	learnset MOVE_BUBBLE_BEAM, 10
	learnset MOVE_MUD_SHOT, 12
	learnset MOVE_BRINE, 13
	learnset MOVE_STOMP, 15
	learnset MOVE_PROTECT, 16
	learnset MOVE_SLAM, 17
	learnset MOVE_BRICK_BREAK, 19
	learnset MOVE_CRABHAMMER, 22
	learnset MOVE_FLAIL, 24
	learnset MOVE_IRON_DEFENSE, 27
	learnset MOVE_GUILLOTINE, 30
	learnset MOVE_KNOCK_OFF, 31
	terminatelearnset

levelup SPECIES_KINGLER
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_VICE_GRIP, 1
	learnset MOVE_VICE_GRIP, 5
	learnset MOVE_LEER, 9
	learnset MOVE_HARDEN, 11
	learnset MOVE_BUBBLE_BEAM, 15
	learnset MOVE_MUD_SHOT, 19
	learnset MOVE_METAL_CLAW, 21
	learnset MOVE_STOMP, 25
	learnset MOVE_PROTECT, 32
	learnset MOVE_GUILLOTINE, 37
	learnset MOVE_SLAM, 44
	learnset MOVE_BRINE, 51
	learnset MOVE_CRABHAMMER, 56
	learnset MOVE_FLAIL, 63
	terminatelearnset

levelup SPECIES_VOLTORB
	learnset MOVE_SELF_DESTRUCT, 1
	learnset MOVE_THUNDER_SHOCK, 2
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_SPARK, 5
	learnset MOVE_MIRROR_SHOT, 7
	learnset MOVE_SCREECH, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_CHARGE_BEAM, 12
	learnset MOVE_MAGNET_RISE, 13
	learnset MOVE_MIRROR_COAT, 15
	learnset MOVE_CHARGE, 17
	learnset MOVE_SHOCK_WAVE, 18
	learnset MOVE_SUCKER_PUNCH, 19
	learnset MOVE_THUNDER_WAVE, 20
	learnset MOVE_ZAP_CANNON, 22
	learnset MOVE_FLASH_CANNON, 24
	learnset MOVE_TAUNT, 26
	learnset MOVE_NATURAL_GIFT, 28
	terminatelearnset

levelup SPECIES_ELECTRODE
	learnset MOVE_CHARGE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SONIC_BOOM, 1
	learnset MOVE_SPARK, 1
	learnset MOVE_TACKLE, 5
	learnset MOVE_SONIC_BOOM, 8
	learnset MOVE_SPARK, 12
	learnset MOVE_ROLLOUT, 15
	learnset MOVE_SCREECH, 19
	learnset MOVE_LIGHT_SCREEN, 22
	learnset MOVE_CHARGE_BEAM, 26
	learnset MOVE_SELF_DESTRUCT, 29
	learnset MOVE_SWIFT, 35
	learnset MOVE_MAGNET_RISE, 40
	learnset MOVE_GYRO_BALL, 46
	learnset MOVE_EXPLOSION, 51
	learnset MOVE_MIRROR_COAT, 57
	terminatelearnset

levelup SPECIES_EXEGGCUTE
	learnset MOVE_BARRAGE, 1
	learnset MOVE_UPROAR, 2
	learnset MOVE_HYPNOSIS, 3
	learnset MOVE_REFLECT, 4
	learnset MOVE_LEECH_SEED, 6
	learnset MOVE_BULLET_SEED, 8
	learnset MOVE_STUN_SPORE, 9
	learnset MOVE_CONFUSION, 11
	learnset MOVE_POISON_POWDER, 13
	learnset MOVE_ANCIENT_POWER, 14
	learnset MOVE_LIGHT_SCREEN, 16
	learnset MOVE_GRASS_KNOT, 17
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_EGG_BOMB, 20
	learnset MOVE_GRAVITY, 22
	learnset MOVE_NATURE_POWER, 24
	learnset MOVE_GIGA_DRAIN, 25
	learnset MOVE_EXTRASENSORY, 28
	learnset MOVE_EXPLOSION, 30
	terminatelearnset

levelup SPECIES_EXEGGUTOR
	learnset MOVE_SEED_BOMB, 1
	learnset MOVE_BARRAGE, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_STOMP, 17
	learnset MOVE_EGG_BOMB, 27
	learnset MOVE_WOOD_HAMMER, 37
	learnset MOVE_LEAF_STORM, 47
	terminatelearnset

levelup SPECIES_CUBONE
	learnset MOVE_POUND, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_ROCK_THROW, 4
	learnset MOVE_RAGE, 6
	learnset MOVE_BONE_CLUB, 7
	learnset MOVE_FOCUS_ENERGY, 8
	learnset MOVE_ROCK_TOMB, 10
	learnset MOVE_SCREECH, 11
	learnset MOVE_MEMENTO, 13
	learnset MOVE_DOUBLE_KICK, 14
	learnset MOVE_STEALTH_ROCK, 15
	learnset MOVE_SAND_TOMB, 17
	learnset MOVE_ENDEAVOR, 19
	learnset MOVE_ENDURE, 21
	learnset MOVE_BONEMERANG, 22
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_PERISH_SONG, 25
	learnset MOVE_SKULL_BASH, 28
	learnset MOVE_THUNDER_PUNCH, 31
	terminatelearnset

levelup SPECIES_MAROWAK
	learnset MOVE_POUND, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_ROCK_THROW, 4
	learnset MOVE_RAGE, 6
	learnset MOVE_BONE_CLUB, 7
	learnset MOVE_FOCUS_ENERGY, 8
	learnset MOVE_ROCK_TOMB, 10
	learnset MOVE_SCREECH, 11
	learnset MOVE_MEMENTO, 13
	learnset MOVE_DOUBLE_KICK, 14
	learnset MOVE_STEALTH_ROCK, 15
	learnset MOVE_SAND_TOMB, 17
	learnset MOVE_ENDEAVOR, 19
	learnset MOVE_ENDURE, 21
	learnset MOVE_BONEMERANG, 22
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_PERISH_SONG, 25
	learnset MOVE_SKULL_BASH, 28
	learnset MOVE_THUNDER_PUNCH, 31
	terminatelearnset

levelup SPECIES_HITMONLEE
	learnset MOVE_REVENGE, 1
	learnset MOVE_DOUBLE_KICK, 1
	learnset MOVE_MEDITATE, 5
	learnset MOVE_ROLLING_KICK, 9
	learnset MOVE_JUMP_KICK, 13
	learnset MOVE_BRICK_BREAK, 17
	learnset MOVE_FOCUS_ENERGY, 21
	learnset MOVE_FEINT, 25
	learnset MOVE_HIGH_JUMP_KICK, 29
	learnset MOVE_MIND_READER, 33
	learnset MOVE_FORESIGHT, 37
	learnset MOVE_BLAZE_KICK, 41
	learnset MOVE_ENDURE, 45
	learnset MOVE_MEGA_KICK, 49
	learnset MOVE_CLOSE_COMBAT, 53
	learnset MOVE_REVERSAL, 57
	terminatelearnset

levelup SPECIES_HITMONCHAN
	learnset MOVE_REVENGE, 1
	learnset MOVE_COMET_PUNCH, 1
	learnset MOVE_AGILITY, 6
	learnset MOVE_PURSUIT, 11
	learnset MOVE_MACH_PUNCH, 16
	learnset MOVE_BULLET_PUNCH, 16
	learnset MOVE_FEINT, 21
	learnset MOVE_VACUUM_WAVE, 26
	learnset MOVE_THUNDER_PUNCH, 31
	learnset MOVE_ICE_PUNCH, 31
	learnset MOVE_FIRE_PUNCH, 31
	learnset MOVE_SKY_UPPERCUT, 36
	learnset MOVE_MEGA_PUNCH, 41
	learnset MOVE_DETECT, 46
	learnset MOVE_COUNTER, 51
	learnset MOVE_CLOSE_COMBAT, 56
	terminatelearnset

levelup SPECIES_LICKITUNG
	learnset MOVE_LICK, 1
	learnset MOVE_SUPERSONIC, 3
	learnset MOVE_DEFENSE_CURL, 5
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_STOMP, 9
	learnset MOVE_DISABLE, 11
	learnset MOVE_GRAVITY, 13
	learnset MOVE_SLAM, 15
	learnset MOVE_ME_FIRST, 17
	learnset MOVE_SCREECH, 19
	learnset MOVE_LAST_RESORT, 20
	learnset MOVE_MEGA_PUNCH, 21
	learnset MOVE_SHOCK_WAVE, 23
	learnset MOVE_WRING_OUT, 25
	learnset MOVE_AQUA_TAIL, 27
	learnset MOVE_THUNDERBOLT, 28
	learnset MOVE_FLAMETHROWER, 29
	learnset MOVE_ICE_BEAM, 30
	learnset MOVE_WAKE_UP_SLAP, 32
	terminatelearnset

levelup SPECIES_KOFFING
	learnset MOVE_TACKLE, 1
	learnset MOVE_POISON_GAS, 3
	learnset MOVE_SMOG, 4
	learnset MOVE_SMOKESCREEN, 5
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_THIEF, 8
	learnset MOVE_SLUDGE, 9
	learnset MOVE_HAZE, 11
	learnset MOVE_SELF_DESTRUCT, 12
	learnset MOVE_MEMENTO, 13
	learnset MOVE_WILL_O_WISP, 16
	learnset MOVE_EMBARGO, 18
	learnset MOVE_DOUBLE_TEAM, 19
	learnset MOVE_SHOCK_WAVE, 20
	learnset MOVE_SLUDGE_BOMB, 22
	learnset MOVE_PAIN_SPLIT, 24
	learnset MOVE_OMINOUS_WIND, 26
	learnset MOVE_POISON_JAB, 27
	learnset MOVE_PROTECT, 29
	learnset MOVE_THUNDERBOLT, 31
	terminatelearnset

levelup SPECIES_WEEZING
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_SMOG, 6
	learnset MOVE_SMOKESCREEN, 10
	learnset MOVE_ASSURANCE, 15
	learnset MOVE_SELF_DESTRUCT, 19
	learnset MOVE_SLUDGE, 24
	learnset MOVE_HAZE, 28
	learnset MOVE_DOUBLE_HIT, 33
	learnset MOVE_EXPLOSION, 40
	learnset MOVE_SLUDGE_BOMB, 48
	learnset MOVE_DESTINY_BOND, 55
	learnset MOVE_MEMENTO, 63
	terminatelearnset

levelup SPECIES_RHYHORN
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_STOMP, 3
	learnset MOVE_FURY_ATTACK, 4
	learnset MOVE_SCARY_FACE, 5
	learnset MOVE_HORN_ATTACK, 7
	learnset MOVE_PAYBACK, 8
	learnset MOVE_SANDSTORM, 10
	learnset MOVE_ROAR, 12
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_HARDEN, 14
	learnset MOVE_ROCK_BLAST, 16
	learnset MOVE_MUD_SPORT, 18
	learnset MOVE_FIRE_FANG, 20
	learnset MOVE_SECRET_POWER, 22
	learnset MOVE_ICE_FANG, 24
	learnset MOVE_STEALTH_ROCK, 26
	learnset MOVE_DIG, 28
	learnset MOVE_ROCK_CLIMB, 30
	terminatelearnset

levelup SPECIES_RHYDON
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_FURY_ATTACK, 1
	learnset MOVE_STOMP, 9
	learnset MOVE_FURY_ATTACK, 13
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_ROCK_BLAST, 25
	learnset MOVE_TAKE_DOWN, 33
	learnset MOVE_HORN_DRILL, 37
	learnset MOVE_HAMMER_ARM, 42
	learnset MOVE_STONE_EDGE, 45
	learnset MOVE_EARTHQUAKE, 49
	learnset MOVE_MEGAHORN, 57
	terminatelearnset

levelup SPECIES_CHANSEY
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_REFRESH, 9
	learnset MOVE_SOFT_BOILED, 12
	learnset MOVE_DOUBLE_SLAP, 16
	learnset MOVE_MINIMIZE, 20
	learnset MOVE_SING, 23
	learnset MOVE_FLING, 27
	learnset MOVE_DEFENSE_CURL, 31
	learnset MOVE_LIGHT_SCREEN, 34
	learnset MOVE_EGG_BOMB, 38
	learnset MOVE_HEALING_WISH, 42
	learnset MOVE_DOUBLE_EDGE, 46
	terminatelearnset

levelup SPECIES_TANGELA
	learnset MOVE_INGRAIN, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_SLEEP_POWDER, 5
	learnset MOVE_ABSORB, 8
	learnset MOVE_GROWTH, 12
	learnset MOVE_POISON_POWDER, 15
	learnset MOVE_VINE_WHIP, 19
	learnset MOVE_BIND, 22
	learnset MOVE_MEGA_DRAIN, 26
	learnset MOVE_STUN_SPORE, 29
	learnset MOVE_ANCIENT_POWER, 33
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_NATURAL_GIFT, 40
	learnset MOVE_SLAM, 43
	learnset MOVE_TICKLE, 47
	learnset MOVE_WRING_OUT, 50
	learnset MOVE_POWER_WHIP, 54
	terminatelearnset

levelup SPECIES_KANGASKHAN
	learnset MOVE_COMET_PUNCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FAKE_OUT, 7
	learnset MOVE_TAIL_WHIP, 10
	learnset MOVE_BITE, 13
	learnset MOVE_MEGA_PUNCH, 19
	learnset MOVE_RAGE, 22
	learnset MOVE_DIZZY_PUNCH, 25
	learnset MOVE_CRUNCH, 31
	learnset MOVE_ENDURE, 34
	learnset MOVE_OUTRAGE, 37
	learnset MOVE_DOUBLE_HIT, 43
	learnset MOVE_SUCKER_PUNCH, 46
	learnset MOVE_REVERSAL, 49
	terminatelearnset

levelup SPECIES_HORSEA
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SMOKESCREEN, 2
	learnset MOVE_FOCUS_ENERGY, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_TWISTER, 6
	learnset MOVE_ICY_WIND, 8
	learnset MOVE_AGILITY, 9
	learnset MOVE_BUBBLE_BEAM, 11
	learnset MOVE_DRAGON_BREATH, 12
	learnset MOVE_BRINE, 14
	learnset MOVE_AQUA_RING, 15
	learnset MOVE_AQUA_JET, 17
	learnset MOVE_SHEER_COLD, 18
	learnset MOVE_WATER_SPORT, 20
	learnset MOVE_HAZE, 21
	learnset MOVE_PROTECT, 23
	learnset MOVE_FLATTER, 25
	learnset MOVE_DIVE, 27
	learnset MOVE_WEATHER_BALL, 29
	terminatelearnset

levelup SPECIES_SEADRA
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SMOKESCREEN, 4
	learnset MOVE_LEER, 8
	learnset MOVE_WATER_GUN, 11
	learnset MOVE_FOCUS_ENERGY, 14
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_AGILITY, 23
	learnset MOVE_TWISTER, 26
	learnset MOVE_BRINE, 30
	learnset MOVE_HYDRO_PUMP, 40
	learnset MOVE_DRAGON_DANCE, 48
	learnset MOVE_DRAGON_PULSE, 57
	terminatelearnset

levelup SPECIES_GOLDEEN
	learnset MOVE_SWIFT, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_HORN_ATTACK, 7
	learnset MOVE_AQUA_RING, 9
	learnset MOVE_FLAIL, 11
	learnset MOVE_HIDDEN_POWER, 13
	learnset MOVE_FURY_ATTACK, 14
	learnset MOVE_WATER_PULSE, 16
	learnset MOVE_AGILITY, 17
	learnset MOVE_AQUA_JET, 18
	learnset MOVE_ATTRACT, 20
	learnset MOVE_DIVE, 22
	learnset MOVE_POISON_JAB, 23
	learnset MOVE_ICE_FANG, 25
	learnset MOVE_HORN_DRILL, 27
	learnset MOVE_MEGAHORN, 31
	terminatelearnset

levelup SPECIES_SEAKING
	learnset MOVE_POISON_JAB, 1
	learnset MOVE_PECK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_SUPERSONIC, 7
	learnset MOVE_HORN_ATTACK, 11
	learnset MOVE_WATER_PULSE, 17
	learnset MOVE_FLAIL, 21
	learnset MOVE_AQUA_RING, 27
	learnset MOVE_FURY_ATTACK, 31
	learnset MOVE_WATERFALL, 40
	learnset MOVE_HORN_DRILL, 47
	learnset MOVE_AGILITY, 56
	learnset MOVE_MEGAHORN, 63
	terminatelearnset

levelup SPECIES_STARYU
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_RAPID_SPIN, 6
	learnset MOVE_RECOVER, 7
	learnset MOVE_CAMOUFLAGE, 8
	learnset MOVE_SWIFT, 10
	learnset MOVE_BUBBLE_BEAM, 11
	learnset MOVE_MINIMIZE, 13
	learnset MOVE_LIGHT_SCREEN, 15
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_COSMIC_POWER, 18
	learnset MOVE_POWER_GEM, 20
	learnset MOVE_WATER_SPORT, 21
	learnset MOVE_SIGNAL_BEAM, 23
	learnset MOVE_FLASH, 25
	learnset MOVE_EXTRASENSORY, 28
	learnset MOVE_LUSTER_PURGE, 30
	terminatelearnset

levelup SPECIES_STARMIE
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_RECOVER, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_CONFUSE_RAY, 28
	terminatelearnset

levelup SPECIES_MR_MIME
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_POWER_SWAP, 1
	learnset MOVE_GUARD_SWAP, 1
	learnset MOVE_BARRIER, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_COPYCAT, 4
	learnset MOVE_MEDITATE, 8
	learnset MOVE_ENCORE, 11
	learnset MOVE_DOUBLE_SLAP, 15
	learnset MOVE_MIMIC, 18
	learnset MOVE_LIGHT_SCREEN, 22
	learnset MOVE_REFLECT, 22
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_SUBSTITUTE, 29
	learnset MOVE_RECYCLE, 32
	learnset MOVE_TRICK, 36
	learnset MOVE_PSYCHIC, 39
	learnset MOVE_ROLE_PLAY, 43
	learnset MOVE_BATON_PASS, 46
	learnset MOVE_SAFEGUARD, 50
	terminatelearnset

levelup SPECIES_SCYTHER
	learnset MOVE_VACUUM_WAVE, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_PURSUIT, 9
	learnset MOVE_FALSE_SWIPE, 13
	learnset MOVE_AGILITY, 17
	learnset MOVE_WING_ATTACK, 21
	learnset MOVE_FURY_CUTTER, 25
	learnset MOVE_SLASH, 29
	learnset MOVE_RAZOR_WIND, 33
	learnset MOVE_DOUBLE_TEAM, 37
	learnset MOVE_X_SCISSOR, 41
	learnset MOVE_NIGHT_SLASH, 45
	learnset MOVE_DOUBLE_HIT, 49
	learnset MOVE_AIR_SLASH, 53
	learnset MOVE_SWORDS_DANCE, 57
	learnset MOVE_FEINT, 61
	terminatelearnset

levelup SPECIES_JYNX
	learnset MOVE_POUND, 1
	learnset MOVE_LICK, 1
	learnset MOVE_LOVELY_KISS, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LICK, 5
	learnset MOVE_LOVELY_KISS, 8
	learnset MOVE_POWDER_SNOW, 11
	learnset MOVE_DOUBLE_SLAP, 15
	learnset MOVE_ICE_PUNCH, 18
	learnset MOVE_MEAN_LOOK, 21
	learnset MOVE_FAKE_TEARS, 25
	learnset MOVE_WAKE_UP_SLAP, 28
	learnset MOVE_AVALANCHE, 33
	learnset MOVE_BODY_SLAM, 39
	learnset MOVE_WRING_OUT, 44
	learnset MOVE_PERISH_SONG, 49
	learnset MOVE_BLIZZARD, 55
	terminatelearnset

levelup SPECIES_ELECTABUZZ
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_LOW_KICK, 10
	learnset MOVE_SWIFT, 16
	learnset MOVE_SHOCK_WAVE, 19
	learnset MOVE_LIGHT_SCREEN, 25
	learnset MOVE_THUNDER_PUNCH, 28
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_THUNDERBOLT, 43
	learnset MOVE_SCREECH, 52
	learnset MOVE_THUNDER, 58
	terminatelearnset

levelup SPECIES_MAGMAR
	learnset MOVE_SMOG, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_EMBER, 7
	learnset MOVE_SMOKESCREEN, 10
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_FIRE_SPIN, 19
	learnset MOVE_CONFUSE_RAY, 25
	learnset MOVE_FIRE_PUNCH, 28
	learnset MOVE_LAVA_PLUME, 36
	learnset MOVE_FLAMETHROWER, 41
	learnset MOVE_SUNNY_DAY, 49
	learnset MOVE_FIRE_BLAST, 54
	terminatelearnset

levelup SPECIES_PINSIR
	learnset MOVE_VICE_GRIP, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_BIND, 4
	learnset MOVE_SEISMIC_TOSS, 8
	learnset MOVE_HARDEN, 13
	learnset MOVE_REVENGE, 18
	learnset MOVE_BRICK_BREAK, 21
	learnset MOVE_VITAL_THROW, 25
	learnset MOVE_X_SCISSOR, 30
	learnset MOVE_THRASH, 35
	learnset MOVE_SWORDS_DANCE, 38
	learnset MOVE_SUBMISSION, 42
	learnset MOVE_GUILLOTINE, 47
	learnset MOVE_SUPERPOWER, 52
	terminatelearnset

levelup SPECIES_TAUROS
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_RAGE, 5
	learnset MOVE_HORN_ATTACK, 8
	learnset MOVE_SCARY_FACE, 11
	learnset MOVE_PURSUIT, 15
	learnset MOVE_REST, 19
	learnset MOVE_PAYBACK, 24
	learnset MOVE_ZEN_HEADBUTT, 29
	learnset MOVE_TAKE_DOWN, 35
	learnset MOVE_SWAGGER, 41
	learnset MOVE_THRASH, 48
	learnset MOVE_GIGA_IMPACT, 55
	terminatelearnset

levelup SPECIES_MAGIKARP
	learnset MOVE_SPLASH, 1
	learnset MOVE_FLAIL, 2
	learnset MOVE_SELF_DESTRUCT, 3
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_RAIN_DANCE, 5
	learnset MOVE_WHIRLPOOL, 6
	learnset MOVE_BOUNCE, 8
	learnset MOVE_SUPERSONIC, 10
	learnset MOVE_ICE_FANG, 11
	learnset MOVE_BRINE, 12
	learnset MOVE_HYPNOSIS, 14
	learnset MOVE_DIVE, 15
	learnset MOVE_HYPER_BEAM, 17
	learnset MOVE_WATER_SPORT, 19
	learnset MOVE_ICY_WIND, 21
	learnset MOVE_SHEER_COLD, 22
	learnset MOVE_PROTECT, 24
	learnset MOVE_HYDRO_PUMP, 25
	learnset MOVE_BLIZZARD, 27
	learnset MOVE_HYDRO_CANNON, 29
	terminatelearnset

levelup SPECIES_GYARADOS
	learnset MOVE_WATERFALL, 1
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_DRAGON_RAGE, 22
	learnset MOVE_HYPER_BEAM, 23
	learnset MOVE_TWISTER, 29
	learnset MOVE_ICE_FANG, 32
	learnset MOVE_AQUA_TAIL, 35
	learnset MOVE_RAIN_DANCE, 38
	learnset MOVE_HYDRO_PUMP, 41
	learnset MOVE_DRAGON_DANCE, 44
	learnset MOVE_HYPER_BEAM, 47
	terminatelearnset

levelup SPECIES_LAPRAS
	learnset MOVE_SING, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MIST, 4
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_ICE_SHARD, 10
	learnset MOVE_WATER_PULSE, 14
	learnset MOVE_BODY_SLAM, 18
	learnset MOVE_RAIN_DANCE, 22
	learnset MOVE_PERISH_SONG, 27
	learnset MOVE_ICE_BEAM, 32
	learnset MOVE_BRINE, 37
	learnset MOVE_SAFEGUARD, 43
	learnset MOVE_HYDRO_PUMP, 49
	learnset MOVE_SHEER_COLD, 55
	terminatelearnset

levelup SPECIES_DITTO
	learnset MOVE_TRANSFORM, 1
	learnset MOVE_METRONOME, 1
	terminatelearnset

levelup SPECIES_EEVEE
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_TACKLE, 2
	learnset MOVE_ATTRACT, 4
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_BITE, 8
	learnset MOVE_COVET, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_FAKE_TEARS, 13
	learnset MOVE_TAKE_DOWN, 14
	learnset MOVE_WISH, 16
	learnset MOVE_HEAL_BELL, 18
	learnset MOVE_YAWN, 19
	learnset MOVE_BODY_SLAM, 20
	learnset MOVE_DIG, 21
	learnset MOVE_IRON_TAIL, 23
	learnset MOVE_SHADOW_BALL, 25
	learnset MOVE_DOUBLE_EDGE, 29
	terminatelearnset

levelup SPECIES_VAPOREON
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_WATER_GUN, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_BITE, 29
	learnset MOVE_AURORA_BEAM, 36
	learnset MOVE_AQUA_RING, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_HAZE, 57
	learnset MOVE_ACID_ARMOR, 64
	learnset MOVE_HYDRO_PUMP, 71
	learnset MOVE_MUDDY_WATER, 78
	terminatelearnset

levelup SPECIES_JOLTEON
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_THUNDER_SHOCK, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_DOUBLE_KICK, 29
	learnset MOVE_PIN_MISSILE, 36
	learnset MOVE_THUNDER_FANG, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_THUNDER_WAVE, 57
	learnset MOVE_AGILITY, 64
	learnset MOVE_THUNDER, 71
	learnset MOVE_DISCHARGE, 78
	terminatelearnset

levelup SPECIES_FLAREON
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_EMBER, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_BITE, 29
	learnset MOVE_FIRE_SPIN, 36
	learnset MOVE_FIRE_FANG, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_SMOG, 57
	learnset MOVE_SCARY_FACE, 64
	learnset MOVE_FIRE_BLAST, 71
	learnset MOVE_LAVA_PLUME, 78
	terminatelearnset

levelup SPECIES_PORYGON
	learnset MOVE_CONVERSION_2, 1
	learnset MOVE_TACKLE, 3
	learnset MOVE_CONVERSION, 5
	learnset MOVE_SHARPEN, 7
	learnset MOVE_AERIAL_ACE, 9
	learnset MOVE_AGILITY, 11
	learnset MOVE_RECOVER, 13
	learnset MOVE_CHARGE_BEAM, 15
	learnset MOVE_GRAVITY, 16
	learnset MOVE_RECYCLE, 17
	learnset MOVE_HIDDEN_POWER, 18
	learnset MOVE_NATURAL_GIFT, 20
	learnset MOVE_MIRROR_COAT, 21
	learnset MOVE_CALM_MIND, 23
	learnset MOVE_ZAP_CANNON, 24
	learnset MOVE_TRI_ATTACK, 25
	learnset MOVE_DISCHARGE, 26
	learnset MOVE_SHADOW_BALL, 28
	learnset MOVE_LAST_RESORT, 29
	learnset MOVE_HYPER_BEAM, 31
	terminatelearnset

levelup SPECIES_OMANYTE
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_WITHDRAW, 3
	learnset MOVE_BITE, 4
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_LEER, 8
	learnset MOVE_MUD_SHOT, 10
	learnset MOVE_BRINE, 11
	learnset MOVE_PROTECT, 13
	learnset MOVE_ANCIENT_POWER, 14
	learnset MOVE_TICKLE, 15
	learnset MOVE_ROCK_BLAST, 17
	learnset MOVE_ICY_WIND, 18
	learnset MOVE_RAIN_DANCE, 20
	learnset MOVE_SANDSTORM, 22
	learnset MOVE_ROCK_CLIMB, 25
	learnset MOVE_DIVE, 28
	terminatelearnset

levelup SPECIES_OMASTAR
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_BITE, 1
	learnset MOVE_MUD_SHOT, 7
	learnset MOVE_SHEER_COLD, 10
	learnset MOVE_ROCK_SLIDE, 16
	learnset MOVE_WHIRLPOOL, 19
	learnset MOVE_MUD_SHOT, 25
	learnset MOVE_BRINE, 28
	learnset MOVE_PROTECT, 34
	learnset MOVE_ANCIENT_POWER, 37
	learnset MOVE_SPIKE_CANNON, 40
	learnset MOVE_TICKLE, 48
	learnset MOVE_ROCK_BLAST, 56
	learnset MOVE_HYDRO_PUMP, 67
	terminatelearnset

levelup SPECIES_KABUTO
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_MEGA_DRAIN, 4
	learnset MOVE_LEER, 5
	learnset MOVE_MUD_SLAP, 6
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_AQUA_JET, 9
	learnset MOVE_STEALTH_ROCK, 11
	learnset MOVE_ANCIENT_POWER, 13
	learnset MOVE_MUD_SHOT, 14
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_ROCK_TOMB, 18
	learnset MOVE_DIVE, 21
	learnset MOVE_RAIN_DANCE, 23
	learnset MOVE_METAL_SOUND, 25
	learnset MOVE_ROCK_SLIDE, 27
	learnset MOVE_MUD_SPORT, 29
	learnset MOVE_WATER_SPORT, 31
	terminatelearnset

levelup SPECIES_KABUTOPS
	learnset MOVE_FEINT, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_LEER, 1
	learnset MOVE_PAYBACK, 6
	learnset MOVE_AQUA_JET, 11
	learnset MOVE_AVALANCHE, 16
	learnset MOVE_ROCK_SLIDE, 21
	learnset MOVE_ENDURE, 26
	learnset MOVE_AQUA_JET, 31
	learnset MOVE_MEGA_DRAIN, 36
	learnset MOVE_SLASH, 40
	learnset MOVE_METAL_SOUND, 45
	learnset MOVE_ANCIENT_POWER, 54
	learnset MOVE_WRING_OUT, 63
	learnset MOVE_NIGHT_SLASH, 72
	terminatelearnset

levelup SPECIES_AERODACTYL
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_WING_ATTACK, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_BITE, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_ROAR, 9
	learnset MOVE_AGILITY, 17
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_CRUNCH, 33
	learnset MOVE_TAKE_DOWN, 41
	learnset MOVE_IRON_HEAD, 49
	learnset MOVE_HYPER_BEAM, 57
	learnset MOVE_ROCK_SLIDE, 65
	learnset MOVE_GIGA_IMPACT, 73
	terminatelearnset

levelup SPECIES_SNORLAX
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 4
	learnset MOVE_AMNESIA, 9
	learnset MOVE_LICK, 12
	learnset MOVE_BELLY_DRUM, 17
	learnset MOVE_YAWN, 20
	learnset MOVE_REST, 25
	learnset MOVE_SNORE, 28
	learnset MOVE_SLEEP_TALK, 28
	learnset MOVE_BODY_SLAM, 33
	learnset MOVE_BLOCK, 36
	learnset MOVE_ROLLOUT, 41
	learnset MOVE_CRUNCH, 44
	learnset MOVE_GIGA_IMPACT, 49
	terminatelearnset

levelup SPECIES_ARTICUNO
	learnset MOVE_PECK, 1
	learnset MOVE_FLATTER, 3
	learnset MOVE_HAIL, 5
	learnset MOVE_ICICLE_SPEAR, 7
	learnset MOVE_GUST, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_POWDER_SNOW, 17
	learnset MOVE_FURY_ATTACK, 20
	learnset MOVE_ICY_WIND, 24
	learnset MOVE_PUNISHMENT, 28
	learnset MOVE_ROOST, 33
	learnset MOVE_PLUCK, 36
	learnset MOVE_OMINOUS_WIND, 40
	learnset MOVE_SHEER_COLD, 44
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_AVALANCHE, 52
	learnset MOVE_REFLECT, 57
	learnset MOVE_ICE_BEAM, 60
	learnset MOVE_BRAVE_BIRD, 66
	terminatelearnset

levelup SPECIES_ZAPDOS
	learnset MOVE_PECK, 1
	learnset MOVE_SCREECH, 3
	learnset MOVE_CHARGE, 5
	learnset MOVE_GUST, 7
	learnset MOVE_THUNDER_SHOCK, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_THUNDER_WAVE, 17
	learnset MOVE_FURY_ATTACK, 20
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_PUNISHMENT, 28
	learnset MOVE_ROOST, 33
	learnset MOVE_AERIAL_ACE, 36
	learnset MOVE_ANCIENT_POWER, 40
	learnset MOVE_VOLT_SWITCH, 44
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_DISCHARGE, 52
	learnset MOVE_WHIRLWIND, 57
	learnset MOVE_THUNDERBOLT, 60
	learnset MOVE_BRAVE_BIRD, 66
	terminatelearnset

levelup SPECIES_MOLTRES
	learnset MOVE_PECK, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_RAGE, 5
	learnset MOVE_GUST, 7
	learnset MOVE_EMBER, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_FURY_ATTACK, 20
	learnset MOVE_FLAME_CHARGE, 24
	learnset MOVE_PUNISHMENT, 28
	learnset MOVE_ROOST, 33
	learnset MOVE_AIR_CUTTER, 36
	learnset MOVE_ANCIENT_POWER, 40
	learnset MOVE_U_TURN, 44
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_LAVA_PLUME, 52
	learnset MOVE_WILL_O_WISP, 57
	learnset MOVE_FLAMETHROWER, 60
	learnset MOVE_BRAVE_BIRD, 66
	terminatelearnset

levelup SPECIES_DRATINI
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 3
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_WATER_PULSE, 9
	learnset MOVE_AGILITY, 11
	learnset MOVE_SHOCK_WAVE, 13
	learnset MOVE_OUTRAGE, 15
	learnset MOVE_HIDDEN_POWER, 17
	learnset MOVE_BODY_SLAM, 19
	learnset MOVE_THUNDER_WAVE, 21
	learnset MOVE_DRAGON_DANCE, 23
	learnset MOVE_DRAGON_RAGE, 25
	learnset MOVE_FLAMETHROWER, 27
	learnset MOVE_THUNDERBOLT, 29
	learnset MOVE_EXTREME_SPEED, 31
	terminatelearnset

levelup SPECIES_DRAGONAIR
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 3
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_WATER_PULSE, 9
	learnset MOVE_AGILITY, 11
	learnset MOVE_SHOCK_WAVE, 13
	learnset MOVE_OUTRAGE, 15
	learnset MOVE_HIDDEN_POWER, 17
	learnset MOVE_BODY_SLAM, 19
	learnset MOVE_THUNDER_WAVE, 21
	learnset MOVE_DRAGON_DANCE, 23
	learnset MOVE_DRAGON_RAGE, 25
	learnset MOVE_FLAMETHROWER, 27
	learnset MOVE_THUNDERBOLT, 29
	learnset MOVE_EXTREME_SPEED, 31
	learnset MOVE_DRAGON_RUSH, 33
	terminatelearnset

levelup SPECIES_DRAGONITE
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_ROOST, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_THUNDER_WAVE, 1
	learnset MOVE_TWISTER, 1
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_TWISTER, 11
	learnset MOVE_DRAGON_RAGE, 15
	learnset MOVE_SLAM, 21
	learnset MOVE_AGILITY, 25
	learnset MOVE_AQUA_TAIL, 33
	learnset MOVE_DRAGON_RUSH, 39
	learnset MOVE_SAFEGUARD, 47
	learnset MOVE_DRAGON_DANCE, 53
	learnset MOVE_WING_ATTACK, 55
	learnset MOVE_OUTRAGE, 64
	learnset MOVE_HYPER_BEAM, 73
	terminatelearnset

levelup SPECIES_MEWTWO
	learnset MOVE_TACKLE, 1
	learnset MOVE_BARRIER, 3
	learnset MOVE_NIGHT_SHADE, 5
	learnset MOVE_DISABLE, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_MEMENTO, 17
	learnset MOVE_EMBARGO, 20
	learnset MOVE_CALM_MIND, 25
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_PSYCHO_CUT, 33
	learnset MOVE_HYPNOSIS, 37
	learnset MOVE_RECOVER, 39
	learnset MOVE_PSYCHIC, 44
	learnset MOVE_AURA_SPHERE, 49
	learnset MOVE_EARTH_POWER, 51
	learnset MOVE_NASTY_PLOT, 55
	learnset MOVE_PSYSTRIKE, 59
	learnset MOVE_HYPER_BEAM, 62
	terminatelearnset

levelup SPECIES_MEW
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_TRANSFORM, 3
	learnset MOVE_SUBSTITUTE, 5
	learnset MOVE_TRICK, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_FAKE_OUT, 13
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_CALM_MIND, 20
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_AURA_SPHERE, 28
	learnset MOVE_LAST_RESORT, 33
	learnset MOVE_U_TURN, 37
	learnset MOVE_ZEN_HEADBUTT, 39
	learnset MOVE_KNOCK_OFF, 44
	learnset MOVE_FIRE_PUNCH, 47
	learnset MOVE_ROCK_SLIDE, 50
	learnset MOVE_PSYCHIC, 55
	learnset MOVE_THUNDERBOLT, 59
	learnset MOVE_PSYSTRIKE, 63
	terminatelearnset

levelup SPECIES_CHIKORITA
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_POISON_POWDER, 3
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_REFLECT, 6
	learnset MOVE_LIGHT_SCREEN, 7
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_MAGICAL_LEAF, 9
	learnset MOVE_NATURE_POWER, 11
	learnset MOVE_GROWTH, 12
	learnset MOVE_SWIFT, 14
	learnset MOVE_INGRAIN, 15
	learnset MOVE_LEECH_SEED, 17
	learnset MOVE_BODY_SLAM, 18
	learnset MOVE_AROMATHERAPY, 19
	terminatelearnset

levelup SPECIES_BAYLEEF
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_POISON_POWDER, 3
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_REFLECT, 6
	learnset MOVE_LIGHT_SCREEN, 7
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_MAGICAL_LEAF, 9
	learnset MOVE_NATURE_POWER, 11
	learnset MOVE_GROWTH, 12
	learnset MOVE_SWIFT, 14
	learnset MOVE_INGRAIN, 15
	learnset MOVE_LEECH_SEED, 17
	learnset MOVE_BODY_SLAM, 18
	learnset MOVE_AROMATHERAPY, 19
	learnset MOVE_GIGA_DRAIN, 21
	learnset MOVE_LUSTER_PURGE, 23
	learnset MOVE_PROTECT, 25
	learnset MOVE_IRON_TAIL, 27
	learnset MOVE_ENERGY_BALL, 29
	terminatelearnset

levelup SPECIES_MEGANIUM
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_POISON_POWDER, 1
	learnset MOVE_RAZOR_LEAF, 6
	learnset MOVE_POISON_POWDER, 9
	learnset MOVE_SYNTHESIS, 12
	learnset MOVE_REFLECT, 18
	learnset MOVE_MAGICAL_LEAF, 22
	learnset MOVE_NATURAL_GIFT, 26
	learnset MOVE_PETAL_DANCE, 32
	learnset MOVE_SWEET_SCENT, 34
	learnset MOVE_LIGHT_SCREEN, 40
	learnset MOVE_BODY_SLAM, 46
	learnset MOVE_SAFEGUARD, 54
	learnset MOVE_AROMATHERAPY, 60
	learnset MOVE_SOLAR_BEAM, 66
	terminatelearnset

levelup SPECIES_CYNDAQUIL
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 2
	learnset MOVE_SMOKESCREEN, 3
	learnset MOVE_EMBER, 4
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_WILL_O_WISP, 7
	learnset MOVE_FLAME_WHEEL, 9
	learnset MOVE_SWIFT, 11
	learnset MOVE_ROLLOUT, 12
	learnset MOVE_SECRET_POWER, 14
	learnset MOVE_HIDDEN_POWER, 16
	learnset MOVE_FIRE_PUNCH, 17
	learnset MOVE_ENDURE, 19
	terminatelearnset

levelup SPECIES_QUILAVA
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_WILL_O_WISP, 1
	learnset MOVE_FLAME_WHEEL, 1
	learnset MOVE_SWIFT, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_SECRET_POWER, 1
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_LAVA_PLUME, 20
	learnset MOVE_ROLLOUT, 21
	learnset MOVE_DIG, 23
	learnset MOVE_EXTRASENSORY, 25
	learnset MOVE_THRASH, 26
	learnset MOVE_MORNING_SUN, 28
	learnset MOVE_FLAMETHROWER, 31
	terminatelearnset

levelup SPECIES_TYPHLOSION
	learnset MOVE_GYRO_BALL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOKESCREEN, 6
	learnset MOVE_EMBER, 10
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_FLAME_WHEEL, 20
	learnset MOVE_DEFENSE_CURL, 24
	learnset MOVE_SWIFT, 31
	learnset MOVE_LAVA_PLUME, 35
	learnset MOVE_FLAMETHROWER, 42
	learnset MOVE_ROLLOUT, 46
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_ERUPTION, 57
	terminatelearnset

levelup SPECIES_TOTODILE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_RAGE, 5
	learnset MOVE_BITE, 7
	learnset MOVE_SCARY_FACE, 8
	learnset MOVE_METAL_CLAW, 10
	learnset MOVE_AQUA_JET, 11
	learnset MOVE_SWAGGER, 13
	learnset MOVE_AERIAL_ACE, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_ICE_FANG, 17
	learnset MOVE_BRICK_BREAK, 18
	learnset MOVE_WATER_SPORT, 20
	terminatelearnset

levelup SPECIES_CROCONAW
	learnset MOVE_BITE, 1
	learnset MOVE_SCARY_FACE, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_AQUA_JET, 1
	learnset MOVE_SWAGGER, 1
	learnset MOVE_AERIAL_ACE, 1
	learnset MOVE_SLASH, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_BRICK_BREAK, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_SCREECH, 20
	learnset MOVE_THRASH, 22
	learnset MOVE_SHADOW_CLAW, 24
	learnset MOVE_BULK_UP, 26
	learnset MOVE_SHEER_COLD, 28
	learnset MOVE_WATERFALL, 30
	terminatelearnset

levelup SPECIES_FERALIGATR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_RAGE, 8
	learnset MOVE_BITE, 13
	learnset MOVE_SCARY_FACE, 15
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_FLAIL, 24
	learnset MOVE_AGILITY, 30
	learnset MOVE_CRUNCH, 32
	learnset MOVE_SLASH, 37
	learnset MOVE_SCREECH, 45
	learnset MOVE_THRASH, 50
	learnset MOVE_AQUA_TAIL, 58
	learnset MOVE_SUPERPOWER, 63
	learnset MOVE_HYDRO_PUMP, 71
	terminatelearnset

levelup SPECIES_SENTRET
	learnset MOVE_POUND, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_FOLLOW_ME, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_MEGA_PUNCH, 7
	learnset MOVE_FEINT, 8
	learnset MOVE_BULK_UP, 10
	learnset MOVE_REST, 11
	learnset MOVE_SNORE, 13
	learnset MOVE_SECRET_POWER, 14
	learnset MOVE_MIRACLE_EYE, 15
	learnset MOVE_CUT, 16
	learnset MOVE_ROLLOUT, 17
	terminatelearnset

levelup SPECIES_FURRET
	learnset MOVE_FOLLOW_ME, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_FURY_SWIPES, 1
	learnset MOVE_MEGA_PUNCH, 1
	learnset MOVE_FEINT, 1
	learnset MOVE_BULK_UP, 1
	learnset MOVE_REST, 1
	learnset MOVE_SUCKER_PUNCH, 1
	learnset MOVE_SECRET_POWER, 1
	learnset MOVE_MIRACLE_EYE, 1
	learnset MOVE_CUT, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_AMNESIA, 19
	learnset MOVE_ME_FIRST, 21
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_SHADOW_CLAW, 25
	learnset MOVE_SUCKER_PUNCH, 28
	learnset MOVE_TRICK, 30
	terminatelearnset

levelup SPECIES_HOOTHOOT
	learnset MOVE_PECK, 1
	learnset MOVE_HYPNOSIS, 2
	learnset MOVE_NIGHT_SHADE, 3
	learnset MOVE_CONFUSION, 4
	learnset MOVE_EMBARGO, 6
	learnset MOVE_WING_ATTACK, 7
	learnset MOVE_REFLECT, 8
	learnset MOVE_PLUCK, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_MEMENTO, 13
	learnset MOVE_ZEN_HEADBUTT, 15
	learnset MOVE_ROOST, 17
	learnset MOVE_SWIFT, 19
	learnset MOVE_U_TURN, 20
	learnset MOVE_AIR_SLASH, 22
	learnset MOVE_HYPER_VOICE, 24
	terminatelearnset

levelup SPECIES_NOCTOWL
	learnset MOVE_HYPNOSIS, 2
	learnset MOVE_NIGHT_SHADE, 3
	learnset MOVE_CONFUSION, 4
	learnset MOVE_EMBARGO, 6
	learnset MOVE_WING_ATTACK, 7
	learnset MOVE_REFLECT, 8
	learnset MOVE_PLUCK, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_MEMENTO, 13
	learnset MOVE_ZEN_HEADBUTT, 15
	learnset MOVE_ROOST, 17
	learnset MOVE_AIR_SLASH, 19
	learnset MOVE_U_TURN, 20
	learnset MOVE_SWIFT, 22
	learnset MOVE_HYPER_VOICE, 24
	learnset MOVE_EXTRASENSORY, 26
	learnset MOVE_DREAM_EATER, 27
	learnset MOVE_MIST_BALL, 30
	terminatelearnset

levelup SPECIES_LEDYBA
	learnset MOVE_TACKLE, 1
	learnset MOVE_SUPERSONIC, 2
	learnset MOVE_COMET_PUNCH, 3
	learnset MOVE_LIGHT_SCREEN, 4
	learnset MOVE_REFLECT, 5
	learnset MOVE_ODOR_SLEUTH, 6
	learnset MOVE_HIDDEN_POWER, 8
	learnset MOVE_SILVER_WIND, 9
	learnset MOVE_MEGA_PUNCH, 11
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_DOUBLE_TEAM, 14
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_GIGA_DRAIN, 16
	terminatelearnset

levelup SPECIES_LEDIAN
	learnset MOVE_SUPERSONIC, 2
	learnset MOVE_COMET_PUNCH, 3
	learnset MOVE_LIGHT_SCREEN, 4
	learnset MOVE_REFLECT, 5
	learnset MOVE_ODOR_SLEUTH, 6
	learnset MOVE_HIDDEN_POWER, 8
	learnset MOVE_SILVER_WIND, 9
	learnset MOVE_MEGA_PUNCH, 11
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_DOUBLE_TEAM, 14
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_GIGA_DRAIN, 16
	learnset MOVE_OMINOUS_WIND, 18
	learnset MOVE_AMNESIA, 20
	learnset MOVE_DRAIN_PUNCH, 22
	learnset MOVE_LIGHT_SCREEN, 23
	learnset MOVE_AIR_SLASH, 25
	learnset MOVE_BUG_BUZZ, 28
	learnset MOVE_FOCUS_PUNCH, 30
	terminatelearnset

levelup SPECIES_SPINARAK
	learnset MOVE_POISON_STING, 1
	learnset MOVE_PIN_MISSILE, 2
	learnset MOVE_SPIDER_WEB, 3
	learnset MOVE_NIGHT_SHADE, 4
	learnset MOVE_SHADOW_SNEAK, 5
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_BLOCK, 9
	learnset MOVE_HIDDEN_POWER, 11
	learnset MOVE_NATURE_POWER, 12
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_POISON_FANG, 14
	learnset MOVE_MEGA_DRAIN, 16
	learnset MOVE_SUCKER_PUNCH, 18
	learnset MOVE_GIGA_DRAIN, 20
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_DIG, 23
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_X_SCISSOR, 26
	learnset MOVE_DESTINY_BOND, 27
	terminatelearnset

levelup SPECIES_ARIADOS
	learnset MOVE_POISON_STING, 1
	learnset MOVE_PIN_MISSILE, 2
	learnset MOVE_SPIDER_WEB, 3
	learnset MOVE_NIGHT_SHADE, 4
	learnset MOVE_SHADOW_SNEAK, 5
	learnset MOVE_SCARY_FACE, 7
	learnset MOVE_BLOCK, 9
	learnset MOVE_HIDDEN_POWER, 11
	learnset MOVE_NATURE_POWER, 12
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_POISON_FANG, 14
	learnset MOVE_MEGA_DRAIN, 16
	learnset MOVE_SUCKER_PUNCH, 18
	learnset MOVE_GIGA_DRAIN, 20
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_DIG, 23
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_X_SCISSOR, 26
	learnset MOVE_DESTINY_BOND, 27
	learnset MOVE_MIRACLE_EYE, 29
	terminatelearnset

levelup SPECIES_CROBAT
	learnset MOVE_CROSS_POISON, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_LEECH_LIFE, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_ASTONISH, 9
	learnset MOVE_BITE, 13
	learnset MOVE_WING_ATTACK, 17
	learnset MOVE_CONFUSE_RAY, 21
	learnset MOVE_AIR_CUTTER, 27
	learnset MOVE_MEAN_LOOK, 33
	learnset MOVE_POISON_FANG, 39
	learnset MOVE_HAZE, 45
	learnset MOVE_AIR_SLASH, 51
	terminatelearnset

levelup SPECIES_CHINCHOU
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SUPERSONIC, 2
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_WHIRLPOOL, 8
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_SPARK, 10
	learnset MOVE_HIDDEN_POWER, 12
	learnset MOVE_BUBBLE_BEAM, 14
	learnset MOVE_CHARGE_BEAM, 15
	learnset MOVE_SIGNAL_BEAM, 17
	learnset MOVE_FLASH, 18
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_CHARGE, 21
	learnset MOVE_DISCHARGE, 23
	learnset MOVE_WATER_SPORT, 25
	learnset MOVE_SHEER_COLD, 26
	learnset MOVE_RAIN_DANCE, 27
	learnset MOVE_NATURAL_GIFT, 29
	terminatelearnset

levelup SPECIES_LANTURN
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_THUNDER_WAVE, 1
	learnset MOVE_THUNDER_WAVE, 6
	learnset MOVE_FLAIL, 9
	learnset MOVE_WATER_GUN, 12
	learnset MOVE_CONFUSE_RAY, 17
	learnset MOVE_SPARK, 20
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_STOCKPILE, 27
	learnset MOVE_SWALLOW, 27
	learnset MOVE_SPIT_UP, 27
	learnset MOVE_BUBBLE_BEAM, 30
	learnset MOVE_SIGNAL_BEAM, 35
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_AQUA_RING, 47
	learnset MOVE_HYDRO_PUMP, 52
	learnset MOVE_CHARGE, 57
	terminatelearnset

levelup SPECIES_PICHU
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_ABSORB, 3
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_SWEET_SCENT, 5
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_DOUBLE_SLAP, 8
	learnset MOVE_ENCORE, 10
	learnset MOVE_ATTRACT, 12
	learnset MOVE_FAKE_OUT, 15
	learnset MOVE_SHOCK_WAVE, 17
	learnset MOVE_NASTY_PLOT, 20
	learnset MOVE_THUNDERBOLT, 23
	learnset MOVE_CHARGE_BEAM, 26
	learnset MOVE_VOLT_TACKLE, 29
	terminatelearnset

levelup SPECIES_CLEFFA
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_ENCORE, 2
	learnset MOVE_METRONOME, 3
	learnset MOVE_SWEET_SCENT, 4
	learnset MOVE_MEGA_PUNCH, 5
	learnset MOVE_SWEET_KISS, 6
	learnset MOVE_MAGICAL_LEAF, 8
	learnset MOVE_MINIMIZE, 9
	learnset MOVE_COSMIC_POWER, 10
	learnset MOVE_SWIFT, 11
	learnset MOVE_GRAVITY, 12
	learnset MOVE_FOLLOW_ME, 13
	terminatelearnset

levelup SPECIES_IGGLYBUFF
	learnset MOVE_SING, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_SWEET_SCENT, 3
	learnset MOVE_POUND, 4
	learnset MOVE_SWEET_KISS, 5
	learnset MOVE_COPYCAT, 6
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_ATTRACT, 9
	learnset MOVE_WISH, 11
	learnset MOVE_GRAVITY, 12
	learnset MOVE_WAKE_UP_SLAP, 13
	terminatelearnset

levelup SPECIES_TOGEPI
	learnset MOVE_GROWL, 1
	learnset MOVE_SWEET_KISS, 2
	learnset MOVE_METRONOME, 3
	learnset MOVE_ABSORB, 4
	learnset MOVE_YAWN, 5
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_FOLLOW_ME, 7
	learnset MOVE_WISH, 9
	learnset MOVE_ANCIENT_POWER, 11
	learnset MOVE_GRAVITY, 12
	learnset MOVE_DOUBLE_EDGE, 13
	learnset MOVE_PROTECT, 15
	learnset MOVE_MIRACLE_EYE, 17
	learnset MOVE_THUNDER_WAVE, 18
	learnset MOVE_LAST_RESORT, 19
	learnset MOVE_MIRROR_MOVE, 21
	terminatelearnset

levelup SPECIES_TOGETIC
	learnset MOVE_GROWL, 1
	learnset MOVE_MIRROR_MOVE, 1
	learnset MOVE_SWEET_KISS, 2
	learnset MOVE_METRONOME, 3
	learnset MOVE_ABSORB, 4
	learnset MOVE_YAWN, 5
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_FOLLOW_ME, 7
	learnset MOVE_WISH, 9
	learnset MOVE_ANCIENT_POWER, 11
	learnset MOVE_GRAVITY, 12
	learnset MOVE_DOUBLE_EDGE, 13
	learnset MOVE_PROTECT, 15
	learnset MOVE_MIRACLE_EYE, 17
	learnset MOVE_THUNDER_WAVE, 18
	learnset MOVE_MAGICAL_LEAF, 23
	learnset MOVE_LUSTER_PURGE, 24
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_EXTRASENSORY, 27
	learnset MOVE_AIR_SLASH, 30
	terminatelearnset

levelup SPECIES_NATU
	learnset MOVE_PECK, 1
	learnset MOVE_LEER, 2
	learnset MOVE_NIGHT_SHADE, 4
	learnset MOVE_CONFUSION, 5
	learnset MOVE_WISH, 7
	learnset MOVE_SWEET_SCENT, 8
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_CONFUSE_RAY, 11
	learnset MOVE_AERIAL_ACE, 12
	learnset MOVE_OMINOUS_WIND, 14
	learnset MOVE_TRICK, 15
	learnset MOVE_FEATHER_DANCE, 17
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_MIRROR_COAT, 20
	learnset MOVE_EXTRASENSORY, 22
	learnset MOVE_AIR_SLASH, 25
	learnset MOVE_SHADOW_BALL, 28
	learnset MOVE_U_TURN, 31
	terminatelearnset

levelup SPECIES_XATU
	learnset MOVE_PECK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_NIGHT_SHADE, 6
	learnset MOVE_TELEPORT, 9
	learnset MOVE_LUCKY_CHANT, 12
	learnset MOVE_MIRACLE_EYE, 17
	learnset MOVE_ME_FIRST, 20
	learnset MOVE_CONFUSE_RAY, 23
	learnset MOVE_TAILWIND, 27
	learnset MOVE_WISH, 30
	learnset MOVE_PSYCHO_SHIFT, 37
	learnset MOVE_FUTURE_SIGHT, 42
	learnset MOVE_OMINOUS_WIND, 47
	learnset MOVE_POWER_SWAP, 54
	learnset MOVE_GUARD_SWAP, 54
	learnset MOVE_PSYCHIC, 59
	terminatelearnset

levelup SPECIES_MAREEP
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_COTTON_SPORE, 2
	learnset MOVE_ATTRACT, 3
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_CHARGE, 6
	learnset MOVE_SIGNAL_BEAM, 8
	learnset MOVE_MUD_SLAP, 9
	learnset MOVE_REFLECT, 11
	learnset MOVE_LIGHT_SCREEN, 11
	learnset MOVE_SHOCK_WAVE, 13
	learnset MOVE_FLASH, 14
	terminatelearnset

levelup SPECIES_FLAAFFY
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_CHARGE, 6
	learnset MOVE_SIGNAL_BEAM, 8
	learnset MOVE_MUD_SLAP, 9
	learnset MOVE_REFLECT, 11
	learnset MOVE_LIGHT_SCREEN, 11
	learnset MOVE_SHOCK_WAVE, 13
	learnset MOVE_FLASH, 14
	learnset MOVE_SIGNAL_BEAM, 16
	learnset MOVE_CHARGE, 18
	learnset MOVE_DISCHARGE, 19
	learnset MOVE_POWER_GEM, 21
	learnset MOVE_DISABLE, 23
	learnset MOVE_NATURAL_GIFT, 25
	learnset MOVE_CALM_MIND, 27
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_THUNDERBOLT, 31
	terminatelearnset

levelup SPECIES_AMPHAROS
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_POWER_GEM, 16
	learnset MOVE_OUTRAGE, 17
	learnset MOVE_BODY_SLAM, 18
	learnset MOVE_SHOCK_WAVE, 19
	learnset MOVE_COTTON_SPORE, 20
	learnset MOVE_CHARGE, 25
	learnset MOVE_THUNDER_PUNCH, 30
	learnset MOVE_DISCHARGE, 34
	learnset MOVE_SIGNAL_BEAM, 42
	learnset MOVE_LIGHT_SCREEN, 51
	learnset MOVE_POWER_GEM, 59
	learnset MOVE_THUNDER, 68
	terminatelearnset

levelup SPECIES_BELLOSSOM
	learnset MOVE_LEAF_BLADE, 1
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_SUNNY_DAY, 1
	learnset MOVE_MAGICAL_LEAF, 23
	learnset MOVE_LEAF_STORM, 53
	terminatelearnset

levelup SPECIES_MARILL
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_ATTRACT, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_AQUA_JET, 8
	learnset MOVE_ICE_BALL, 10
	learnset MOVE_BATON_PASS, 12
	learnset MOVE_DOUBLE_SLAP, 13
	learnset MOVE_BIDE, 14
	learnset MOVE_BRINE, 16
	learnset MOVE_ENDURE, 18
	learnset MOVE_FOCUS_PUNCH, 20
	learnset MOVE_ICE_PUNCH, 22
	learnset MOVE_BOUNCE, 24
	learnset MOVE_TICKLE, 26
	learnset MOVE_BELLY_DRUM, 28
	learnset MOVE_DIVE, 30
	learnset MOVE_DOUBLE_EDGE, 31
	terminatelearnset

levelup SPECIES_AZUMARILL
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_TAIL_WHIP, 7
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_ROLLOUT, 15
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_AQUA_RING, 27
	learnset MOVE_DOUBLE_EDGE, 33
	learnset MOVE_RAIN_DANCE, 40
	learnset MOVE_AQUA_TAIL, 47
	learnset MOVE_HYDRO_PUMP, 54
	terminatelearnset

levelup SPECIES_SUDOWOODO
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_COPYCAT, 2
	learnset MOVE_FLAIL, 3
	learnset MOVE_LOW_KICK, 4
	learnset MOVE_STEALTH_ROCK, 6
	learnset MOVE_FEINT_ATTACK, 8
	learnset MOVE_DEFENSE_CURL, 9
	learnset MOVE_ENCORE, 10
	learnset MOVE_SUCKER_PUNCH, 11
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_SELF_DESTRUCT, 14
	learnset MOVE_IRON_HEAD, 16
	learnset MOVE_DOUBLE_EDGE, 17
	learnset MOVE_PROTECT, 18
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_REST, 21
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_ROCK_CLIMB, 25
	learnset MOVE_ICE_PUNCH, 28
	terminatelearnset

levelup SPECIES_POLITOED
	learnset MOVE_BUBBLE_BEAM, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_PERISH_SONG, 1
	learnset MOVE_SWAGGER, 27
	learnset MOVE_BOUNCE, 37
	learnset MOVE_HYPER_VOICE, 48
	terminatelearnset

levelup SPECIES_HOPPIP
	learnset MOVE_SPLASH, 1
	learnset MOVE_SYNTHESIS, 3
	learnset MOVE_BULLET_SEED, 4
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_GUST, 6
	learnset MOVE_LEECH_SEED, 8
	learnset MOVE_SLEEP_POWDER, 9
	learnset MOVE_MEGA_DRAIN, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_COTTON_SPORE, 14
	learnset MOVE_U_TURN, 15
	learnset MOVE_GIGA_DRAIN, 17
	learnset MOVE_BOUNCE, 18
	terminatelearnset

levelup SPECIES_SKIPLOOM
	learnset MOVE_SPLASH, 1
	learnset MOVE_SYNTHESIS, 3
	learnset MOVE_BULLET_SEED, 4
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_GUST, 6
	learnset MOVE_LEECH_SEED, 8
	learnset MOVE_SLEEP_POWDER, 9
	learnset MOVE_MEGA_DRAIN, 10
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_COTTON_SPORE, 14
	learnset MOVE_U_TURN, 15
	learnset MOVE_SYNTHESIS, 17
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_BOUNCE, 21
	learnset MOVE_SUNNY_DAY, 23
	learnset MOVE_AIR_SLASH, 25
	learnset MOVE_EXTRASENSORY, 27
	learnset MOVE_SUBSTITUTE, 29
	learnset MOVE_AMNESIA, 30
	terminatelearnset

levelup SPECIES_JUMPLUFF
	learnset MOVE_SPLASH, 1
	learnset MOVE_SYNTHESIS, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SYNTHESIS, 4
	learnset MOVE_TAIL_WHIP, 7
	learnset MOVE_TACKLE, 10
	learnset MOVE_POISON_POWDER, 12
	learnset MOVE_STUN_SPORE, 14
	learnset MOVE_SLEEP_POWDER, 16
	learnset MOVE_BULLET_SEED, 20
	learnset MOVE_LEECH_SEED, 24
	learnset MOVE_MEGA_DRAIN, 28
	learnset MOVE_COTTON_SPORE, 32
	learnset MOVE_U_TURN, 36
	learnset MOVE_WORRY_SEED, 40
	learnset MOVE_GIGA_DRAIN, 44
	learnset MOVE_BOUNCE, 48
	learnset MOVE_MEMENTO, 52
	terminatelearnset

levelup SPECIES_AIPOM
	learnset MOVE_SCRATCH, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_ASTONISH, 5
	learnset MOVE_BATON_PASS, 7
	learnset MOVE_TICKLE, 8
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_METRONOME, 12
	learnset MOVE_SCREECH, 13
	learnset MOVE_AGILITY, 14
	learnset MOVE_DOUBLE_HIT, 16
	learnset MOVE_FEINT, 17
	learnset MOVE_MIRACLE_EYE, 19
	learnset MOVE_BRICK_BREAK, 21
	learnset MOVE_SHADOW_CLAW, 23
	learnset MOVE_MEGA_PUNCH, 25
	learnset MOVE_BODY_SLAM, 27
	learnset MOVE_IRON_TAIL, 29
	terminatelearnset

levelup SPECIES_SUNKERN
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 2
	learnset MOVE_HIDDEN_POWER, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_MIMIC, 5
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_ENDEAVOR, 8
	learnset MOVE_RAZOR_LEAF, 10
	learnset MOVE_SYNTHESIS, 13
	learnset MOVE_MAGICAL_LEAF, 16
	learnset MOVE_SUNNY_DAY, 19
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_PROTECT, 24
	learnset MOVE_GRASS_WHISTLE, 26
	learnset MOVE_SWAGGER, 28
	learnset MOVE_WISH, 29
	learnset MOVE_NASTY_PLOT, 30
	learnset MOVE_ENERGY_BALL, 31
	learnset MOVE_EXPLOSION, 32
	terminatelearnset

levelup SPECIES_SUNFLORA
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 2
	learnset MOVE_HIDDEN_POWER, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_MIMIC, 5
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_ENDEAVOR, 8
	learnset MOVE_RAZOR_LEAF, 10
	learnset MOVE_SYNTHESIS, 13
	learnset MOVE_MAGICAL_LEAF, 16
	learnset MOVE_SUNNY_DAY, 19
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_PROTECT, 24
	learnset MOVE_GRASS_WHISTLE, 26
	learnset MOVE_SWAGGER, 28
	learnset MOVE_WISH, 29
	learnset MOVE_NASTY_PLOT, 30
	learnset MOVE_ENERGY_BALL, 31
	terminatelearnset

levelup SPECIES_YANMA
	learnset MOVE_TACKLE, 1
	learnset MOVE_QUICK_ATTACK, 3
	learnset MOVE_DOUBLE_TEAM, 5
	learnset MOVE_SONIC_BOOM, 7
	learnset MOVE_DETECT, 9
	learnset MOVE_CONFUSE_RAY, 11
	learnset MOVE_SILVER_WIND, 13
	learnset MOVE_ANCIENT_POWER, 14
	learnset MOVE_HYPNOSIS, 15
	learnset MOVE_AERIAL_ACE, 17
	learnset MOVE_SCREECH, 19
	learnset MOVE_U_TURN, 20
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_AIR_SLASH, 24
	learnset MOVE_SIGNAL_BEAM, 25
	learnset MOVE_TAILWIND, 26
	learnset MOVE_FEINT, 27
	learnset MOVE_SHADOW_BALL, 30
	terminatelearnset

levelup SPECIES_WOOPER
	learnset MOVE_SPLASH, 1
	learnset MOVE_MUD_SLAP, 2
	learnset MOVE_AMNESIA, 3
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_SLAM, 7
	learnset MOVE_MUD_BOMB, 8
	learnset MOVE_RAIN_DANCE, 9
	learnset MOVE_YAWN, 10
	learnset MOVE_MUD_SPORT, 12
	learnset MOVE_WATER_SPORT, 14
	learnset MOVE_DIG, 15
	learnset MOVE_HAZE, 16
	learnset MOVE_DIVE, 17
	learnset MOVE_COUNTER, 18
	learnset MOVE_ENCORE, 19
	learnset MOVE_ICE_PUNCH, 20
	learnset MOVE_WATERFALL, 21
	learnset MOVE_SPIKES, 22
	learnset MOVE_EARTHQUAKE, 24
	learnset MOVE_AQUA_TAIL, 25
	terminatelearnset

levelup SPECIES_QUAGSIRE
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_MUD_SPORT, 5
	learnset MOVE_MUD_SHOT, 9
	learnset MOVE_SLAM, 15
	learnset MOVE_MUD_BOMB, 19
	learnset MOVE_AMNESIA, 24
	learnset MOVE_YAWN, 31
	learnset MOVE_EARTHQUAKE, 36
	learnset MOVE_RAIN_DANCE, 41
	learnset MOVE_MIST, 48
	learnset MOVE_HAZE, 48
	learnset MOVE_MUDDY_WATER, 53
	terminatelearnset

levelup SPECIES_ESPEON
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_CONFUSION, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_SWIFT, 29
	learnset MOVE_PSYBEAM, 36
	learnset MOVE_FUTURE_SIGHT, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_PSYCH_UP, 57
	learnset MOVE_PSYCHIC, 64
	learnset MOVE_MORNING_SUN, 71
	learnset MOVE_POWER_SWAP, 78
	terminatelearnset

levelup SPECIES_UMBREON
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_PURSUIT, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_CONFUSE_RAY, 29
	learnset MOVE_FEINT_ATTACK, 36
	learnset MOVE_ASSURANCE, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_MEAN_LOOK, 57
	learnset MOVE_SCREECH, 64
	learnset MOVE_MOONLIGHT, 71
	learnset MOVE_GUARD_SWAP, 78
	terminatelearnset

levelup SPECIES_MURKROW
	learnset MOVE_PECK, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_HIDDEN_POWER, 5
	learnset MOVE_HAZE, 7
	learnset MOVE_WING_ATTACK, 9
	learnset MOVE_NIGHT_SHADE, 11
	learnset MOVE_TAUNT, 13
	learnset MOVE_EMBARGO, 15
	learnset MOVE_AIR_CUTTER, 16
	learnset MOVE_SNORE, 18
	learnset MOVE_TAILWIND, 19
	learnset MOVE_HYPNOSIS, 21
	learnset MOVE_DRILL_PECK, 23
	learnset MOVE_DARK_PULSE, 26
	learnset MOVE_FEATHER_DANCE, 27
	learnset MOVE_STEEL_WING, 28
	learnset MOVE_U_TURN, 30
	terminatelearnset

levelup SPECIES_SLOWKING
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 6
	learnset MOVE_WHIRLPOOL, 9
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CALM_MIND, 9
	learnset MOVE_POWDER_SNOW, 9
	learnset MOVE_WATER_GUN, 11
	learnset MOVE_CONFUSION, 15
	learnset MOVE_DISABLE, 20
	learnset MOVE_HEADBUTT, 25
	learnset MOVE_WATER_PULSE, 29
	learnset MOVE_ZEN_HEADBUTT, 34
	learnset MOVE_NASTY_PLOT, 39
	learnset MOVE_SWAGGER, 43
	learnset MOVE_PSYCHIC, 48
	learnset MOVE_TRUMP_CARD, 53
	learnset MOVE_PSYCH_UP, 57
	terminatelearnset

levelup SPECIES_MISDREAVUS
	learnset MOVE_EMBARGO, 8
	learnset MOVE_OMINOUS_WIND, 8
	learnset MOVE_GRAVITY, 8
	learnset MOVE_CONFUSE_RAY, 8
	learnset MOVE_CONFUSE_RAY, 14
	learnset MOVE_MEAN_LOOK, 19
	learnset MOVE_PSYBEAM, 23
	learnset MOVE_PAIN_SPLIT, 28
	learnset MOVE_PAYBACK, 32
	learnset MOVE_SHADOW_BALL, 37
	learnset MOVE_PERISH_SONG, 41
	learnset MOVE_GRUDGE, 46
	learnset MOVE_POWER_GEM, 50
	terminatelearnset

levelup SPECIES_UNOWN
	learnset MOVE_CONFUSION, 1
	learnset MOVE_HIDDEN_POWER, 3
	learnset MOVE_TRICK_ROOM, 5
	learnset MOVE_LIGHT_SCREEN, 7
	learnset MOVE_REFLECT, 8
	learnset MOVE_REST, 9
	learnset MOVE_AMNESIA, 10
	learnset MOVE_BARRIER, 11
	learnset MOVE_COSMIC_POWER, 13
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_CALM_MIND, 16
	learnset MOVE_AGILITY, 18
	learnset MOVE_PSYCHO_CUT, 20
	learnset MOVE_TRICK, 21
	learnset MOVE_POWER_TRICK, 23
	learnset MOVE_MIRROR_COAT, 25
	learnset MOVE_KINESIS, 27
	learnset MOVE_PSYCHIC, 30
	terminatelearnset

levelup SPECIES_WOBBUFFET
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
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ODOR_SLEUTH, 5
	learnset MOVE_STOMP, 10
	learnset MOVE_AGILITY, 14
	learnset MOVE_PSYBEAM, 19
	learnset MOVE_BATON_PASS, 23
	learnset MOVE_ASSURANCE, 28
	learnset MOVE_DOUBLE_HIT, 32
	learnset MOVE_PSYCHIC, 37
	learnset MOVE_ZEN_HEADBUTT, 41
	learnset MOVE_CRUNCH, 46
	terminatelearnset

levelup SPECIES_PINECO
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_SELF_DESTRUCT, 4
	learnset MOVE_SPIKES, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_BIDE, 9
	learnset MOVE_PAYBACK, 10
	learnset MOVE_SAND_TOMB, 11
	learnset MOVE_GYRO_BALL, 13
	learnset MOVE_IRON_DEFENSE, 14
	learnset MOVE_PIN_MISSILE, 16
	learnset MOVE_BUG_BITE, 17
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_PROTECT, 21
	learnset MOVE_REVENGE, 23
	learnset MOVE_PAIN_SPLIT, 25
	learnset MOVE_EXPLOSION, 29
	learnset MOVE_X_SCISSOR, 31
	terminatelearnset

levelup SPECIES_FORRETRESS
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_SELF_DESTRUCT, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_SELF_DESTRUCT, 6
	learnset MOVE_BUG_BITE, 9
	learnset MOVE_TAKE_DOWN, 12
	learnset MOVE_RAPID_SPIN, 17
	learnset MOVE_BIDE, 20
	learnset MOVE_NATURAL_GIFT, 23
	learnset MOVE_SPIKES, 28
	learnset MOVE_MIRROR_SHOT, 31
	learnset MOVE_PAYBACK, 33
	learnset MOVE_EXPLOSION, 38
	learnset MOVE_IRON_DEFENSE, 45
	learnset MOVE_GYRO_BALL, 50
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_MAGNET_RISE, 62
	learnset MOVE_ZAP_CANNON, 67
	terminatelearnset

levelup SPECIES_DUNSPARCE
	learnset MOVE_RAGE, 1
	learnset MOVE_DEFENSE_CURL, 5
	learnset MOVE_YAWN, 9
	learnset MOVE_GLARE, 13
	learnset MOVE_ROLLOUT, 17
	learnset MOVE_SPITE, 21
	learnset MOVE_PURSUIT, 25
	learnset MOVE_SCREECH, 29
	learnset MOVE_ROOST, 33
	learnset MOVE_TAKE_DOWN, 37
	learnset MOVE_ANCIENT_POWER, 41
	learnset MOVE_DIG, 45
	learnset MOVE_ENDEAVOR, 49
	learnset MOVE_FLAIL, 53
	terminatelearnset

levelup SPECIES_GLIGAR
	learnset MOVE_POISON_STING, 1
	learnset MOVE_SAND_ATTACK, 5
	learnset MOVE_HARDEN, 9
	learnset MOVE_KNOCK_OFF, 12
	learnset MOVE_QUICK_ATTACK, 16
	learnset MOVE_FURY_CUTTER, 20
	learnset MOVE_FEINT_ATTACK, 23
	learnset MOVE_SCREECH, 27
	learnset MOVE_SLASH, 31
	learnset MOVE_SWORDS_DANCE, 34
	learnset MOVE_POUND, 38
	learnset MOVE_X_SCISSOR, 42
	learnset MOVE_GUILLOTINE, 45
	terminatelearnset

levelup SPECIES_STEELIX
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_BIND, 1
	learnset MOVE_SCREECH, 6
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_RAGE, 14
	learnset MOVE_ROCK_TOMB, 17
	learnset MOVE_SANDSTORM, 22
	learnset MOVE_SLAM, 25
	learnset MOVE_ROCK_POLISH, 30
	learnset MOVE_DRAGON_BREATH, 33
	learnset MOVE_CURSE, 38
	learnset MOVE_IRON_TAIL, 41
	learnset MOVE_CRUNCH, 46
	learnset MOVE_DOUBLE_EDGE, 49
	learnset MOVE_STONE_EDGE, 54
	terminatelearnset

levelup SPECIES_SNUBBULL
	learnset MOVE_CHARM, 1
	learnset MOVE_POUND, 2
	learnset MOVE_LICK, 3
	learnset MOVE_SCARY_FACE, 5
	learnset MOVE_BITE, 6
	learnset MOVE_RAGE, 7
	learnset MOVE_LAST_RESORT, 9
	learnset MOVE_BULK_UP, 10
	learnset MOVE_SEISMIC_TOSS, 11
	learnset MOVE_TAUNT, 13
	learnset MOVE_MIRACLE_EYE, 15
	learnset MOVE_TAKE_DOWN, 17
	learnset MOVE_PAYBACK, 19
	learnset MOVE_WAKE_UP_SLAP, 21
	learnset MOVE_THUNDER_FANG, 22
	learnset MOVE_ICE_FANG, 23
	learnset MOVE_FIRE_FANG, 26
	learnset MOVE_DYNAMIC_PUNCH, 28
	learnset MOVE_DOUBLE_EDGE, 32
	terminatelearnset

levelup SPECIES_GRANBULL
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
	learnset MOVE_TAKE_DOWN, 43
	learnset MOVE_PAYBACK, 51
	terminatelearnset

levelup SPECIES_QWILFISH
	learnset MOVE_SPIKES, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_HARDEN, 9
	learnset MOVE_MINIMIZE, 9
	learnset MOVE_WATER_GUN, 13
	learnset MOVE_ROLLOUT, 17
	learnset MOVE_TOXIC_SPIKES, 21
	learnset MOVE_STOCKPILE, 25
	learnset MOVE_SPIT_UP, 25
	learnset MOVE_REVENGE, 29
	learnset MOVE_BRINE, 33
	learnset MOVE_PIN_MISSILE, 37
	learnset MOVE_TAKE_DOWN, 41
	learnset MOVE_AQUA_TAIL, 45
	learnset MOVE_POISON_JAB, 49
	learnset MOVE_DESTINY_BOND, 53
	learnset MOVE_HYDRO_PUMP, 57
	terminatelearnset

levelup SPECIES_SCIZOR
	learnset MOVE_BULLET_PUNCH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_PURSUIT, 9
	learnset MOVE_FALSE_SWIPE, 13
	learnset MOVE_AGILITY, 17
	learnset MOVE_METAL_CLAW, 21
	learnset MOVE_FURY_CUTTER, 25
	learnset MOVE_SLASH, 29
	learnset MOVE_RAZOR_WIND, 33
	learnset MOVE_IRON_DEFENSE, 37
	learnset MOVE_X_SCISSOR, 41
	learnset MOVE_NIGHT_SLASH, 45
	learnset MOVE_DOUBLE_HIT, 49
	learnset MOVE_IRON_HEAD, 53
	learnset MOVE_SWORDS_DANCE, 57
	learnset MOVE_FEINT, 61
	terminatelearnset

levelup SPECIES_SHUCKLE
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_ENCORE, 9
	learnset MOVE_SAFEGUARD, 14
	learnset MOVE_WRAP, 22
	learnset MOVE_REST, 27
	learnset MOVE_GASTRO_ACID, 35
	learnset MOVE_BUG_BITE, 40
	learnset MOVE_POWER_TRICK, 48
	terminatelearnset

levelup SPECIES_HERACROSS
	learnset MOVE_NIGHT_SLASH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_ENDURE, 1
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_BRICK_BREAK, 19
	learnset MOVE_COUNTER, 25
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_CLOSE_COMBAT, 37
	learnset MOVE_REVERSAL, 43
	learnset MOVE_FEINT, 49
	learnset MOVE_MEGAHORN, 55
	terminatelearnset

levelup SPECIES_SNEASEL
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_TAUNT, 1
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_SCREECH, 10
	learnset MOVE_FEINT_ATTACK, 14
	learnset MOVE_FURY_SWIPES, 21
	learnset MOVE_AGILITY, 24
	learnset MOVE_ICY_WIND, 28
	learnset MOVE_SLASH, 35
	learnset MOVE_BEAT_UP, 38
	learnset MOVE_METAL_CLAW, 42
	learnset MOVE_ICE_SHARD, 49
	terminatelearnset

levelup SPECIES_TEDDIURSA
	learnset MOVE_COVET, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_LICK, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_FURY_SWIPES, 8
	learnset MOVE_FEINT_ATTACK, 15
	learnset MOVE_SWEET_SCENT, 22
	learnset MOVE_SLASH, 29
	learnset MOVE_CHARM, 36
	learnset MOVE_REST, 43
	learnset MOVE_SNORE, 43
	learnset MOVE_THRASH, 50
	learnset MOVE_FLING, 57
	terminatelearnset

levelup SPECIES_URSARING
	learnset MOVE_COVET, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_LICK, 1
	learnset MOVE_FAKE_TEARS, 1
	learnset MOVE_FURY_SWIPES, 8
	learnset MOVE_FEINT_ATTACK, 15
	learnset MOVE_SWEET_SCENT, 22
	learnset MOVE_SLASH, 29
	learnset MOVE_SCARY_FACE, 38
	learnset MOVE_REST, 47
	learnset MOVE_SNORE, 49
	learnset MOVE_THRASH, 58
	learnset MOVE_HAMMER_ARM, 67
	terminatelearnset

levelup SPECIES_SLUGMA
	learnset MOVE_STEALTH_ROCK, 1
	learnset MOVE_SMOG, 2
	learnset MOVE_HARDEN, 4
	learnset MOVE_YAWN, 6
	learnset MOVE_ROCK_TOMB, 8
	learnset MOVE_FIRE_SPIN, 9
	learnset MOVE_ANCIENT_POWER, 11
	learnset MOVE_AMNESIA, 12
	learnset MOVE_SUNNY_DAY, 14
	learnset MOVE_FIRE_FANG, 15
	learnset MOVE_RECOVER, 17
	learnset MOVE_MUD_SPORT, 19
	learnset MOVE_SLUDGE, 21
	learnset MOVE_LAVA_PLUME, 24
	learnset MOVE_POWER_GEM, 27
	learnset MOVE_PROTECT, 28
	terminatelearnset

levelup SPECIES_MAGCARGO
	learnset MOVE_STEALTH_ROCK, 1
	learnset MOVE_SMOG, 2
	learnset MOVE_HARDEN, 4
	learnset MOVE_YAWN, 6
	learnset MOVE_ROCK_TOMB, 8
	learnset MOVE_FIRE_SPIN, 9
	learnset MOVE_ANCIENT_POWER, 11
	learnset MOVE_AMNESIA, 12
	learnset MOVE_SUNNY_DAY, 14
	learnset MOVE_FIRE_FANG, 15
	learnset MOVE_RECOVER, 17
	learnset MOVE_MUD_SPORT, 19
	learnset MOVE_SLUDGE, 21
	learnset MOVE_LAVA_PLUME, 24
	learnset MOVE_POWER_GEM, 27
	learnset MOVE_PROTECT, 28
	learnset MOVE_EXPLOSION, 30
	terminatelearnset

levelup SPECIES_SWINUB
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POWDER_SNOW, 2
	learnset MOVE_ENDURE, 3
	learnset MOVE_ICY_WIND, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_ICE_SHARD, 9
	learnset MOVE_ROCK_SMASH, 11
	learnset MOVE_AMNESIA, 12
	learnset MOVE_ICICLE_SPEAR, 14
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_MUD_SPORT, 16
	learnset MOVE_ICE_BEAM, 18
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_DIG, 20
	learnset MOVE_AVALANCHE, 22
	learnset MOVE_SWAGGER, 23
	learnset MOVE_EARTHQUAKE, 24
	learnset MOVE_GIGA_IMPACT, 26
	learnset MOVE_FISSURE, 28
	terminatelearnset

levelup SPECIES_PILOSWINE
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POWDER_SNOW, 2
	learnset MOVE_ENDURE, 3
	learnset MOVE_ICY_WIND, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_ICE_SHARD, 9
	learnset MOVE_ROCK_SMASH, 11
	learnset MOVE_AMNESIA, 12
	learnset MOVE_ICICLE_SPEAR, 14
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_MUD_SPORT, 16
	learnset MOVE_ICE_BEAM, 18
	learnset MOVE_ROCK_TOMB, 19
	learnset MOVE_DIG, 20
	learnset MOVE_AVALANCHE, 22
	learnset MOVE_SWAGGER, 23
	learnset MOVE_EARTHQUAKE, 24
	learnset MOVE_GIGA_IMPACT, 26
	learnset MOVE_FISSURE, 28
	terminatelearnset

levelup SPECIES_CORSOLA
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_BUBBLE, 3
	learnset MOVE_RECOVER, 5
	learnset MOVE_REFRESH, 6
	learnset MOVE_ROCK_BLAST, 7
	learnset MOVE_AQUA_RING, 8
	learnset MOVE_WHIRLPOOL, 10
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_SPIKE_CANNON, 13
	learnset MOVE_MIRROR_COAT, 15
	learnset MOVE_ANCIENT_POWER, 16
	learnset MOVE_BRINE, 18
	learnset MOVE_SUPER_FANG, 19
	learnset MOVE_SUCKER_PUNCH, 22
	learnset MOVE_BRICK_BREAK, 24
	learnset MOVE_DIVE, 25
	learnset MOVE_ROCK_SLIDE, 27
	learnset MOVE_DOUBLE_EDGE, 29
	terminatelearnset

levelup SPECIES_REMORAID
	learnset MOVE_BUBBLE, 1
	learnset MOVE_BULLET_SEED, 3
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_SUPERSONIC, 6
	learnset MOVE_SWIFT, 8
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_OCTAZOOKA, 11
	learnset MOVE_SIGNAL_BEAM, 12
	learnset MOVE_AURORA_BEAM, 14
	learnset MOVE_CHARGE_BEAM, 15
	learnset MOVE_HAZE, 17
	learnset MOVE_DIVE, 19
	learnset MOVE_ENDURE, 20
	learnset MOVE_BRINE, 22
	learnset MOVE_FLAIL, 25
	learnset MOVE_HYPER_BEAM, 31
	terminatelearnset

levelup SPECIES_OCTILLERY
	learnset MOVE_GUNK_SHOT, 1
	learnset MOVE_ROCK_BLAST, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_PSYBEAM, 1
	learnset MOVE_AURORA_BEAM, 1
	learnset MOVE_CONSTRICT, 6
	learnset MOVE_PSYBEAM, 10
	learnset MOVE_AURORA_BEAM, 14
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_FOCUS_ENERGY, 23
	learnset MOVE_OCTAZOOKA, 25
	learnset MOVE_BULLET_SEED, 29
	learnset MOVE_WRING_OUT, 36
	learnset MOVE_SIGNAL_BEAM, 42
	learnset MOVE_ICE_BEAM, 48
	learnset MOVE_HYPER_BEAM, 55
	terminatelearnset

levelup SPECIES_DELIBIRD
	learnset MOVE_PRESENT, 1
	learnset MOVE_ICE_BALL, 3
	learnset MOVE_FAKE_OUT, 5
	learnset MOVE_ICE_SHARD, 7
	learnset MOVE_DEFOG, 9
	learnset MOVE_HAIL, 11
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_AURORA_BEAM, 17
	learnset MOVE_PLUCK, 19
	learnset MOVE_MEGA_PUNCH, 21
	learnset MOVE_FEINT, 22
	learnset MOVE_AVALANCHE, 24
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_BOUNCE, 27
	learnset MOVE_SEED_BOMB, 28
	learnset MOVE_DOUBLE_EDGE, 30
	terminatelearnset

levelup SPECIES_MANTINE
	learnset MOVE_PSYBEAM, 1
	learnset MOVE_BULLET_SEED, 1
	learnset MOVE_SIGNAL_BEAM, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_BUBBLE_BEAM, 1
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_BUBBLE_BEAM, 10
	learnset MOVE_HEADBUTT, 13
	learnset MOVE_AGILITY, 19
	learnset MOVE_WING_ATTACK, 22
	learnset MOVE_WATER_PULSE, 28
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_CONFUSE_RAY, 37
	learnset MOVE_BOUNCE, 40
	learnset MOVE_AQUA_RING, 46
	learnset MOVE_HYDRO_PUMP, 49
	terminatelearnset

levelup SPECIES_SKARMORY
	learnset MOVE_LEER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_SAND_ATTACK, 6
	learnset MOVE_SWIFT, 9
	learnset MOVE_AGILITY, 12
	learnset MOVE_FURY_ATTACK, 17
	learnset MOVE_FEINT, 20
	learnset MOVE_AIR_CUTTER, 23
	learnset MOVE_SPIKES, 28
	learnset MOVE_METAL_SOUND, 31
	learnset MOVE_STEEL_WING, 34
	learnset MOVE_AIR_SLASH, 39
	learnset MOVE_SLASH, 42
	learnset MOVE_NIGHT_SLASH, 45
	terminatelearnset

levelup SPECIES_HOUNDOUR
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 2
	learnset MOVE_HOWL, 3
	learnset MOVE_SMOG, 4
	learnset MOVE_ROAR, 6
	learnset MOVE_SNORE, 7
	learnset MOVE_BEAT_UP, 9
	learnset MOVE_FIRE_FANG, 10
	learnset MOVE_THUNDER_FANG, 12
	learnset MOVE_EMBARGO, 13
	learnset MOVE_TORMENT, 15
	learnset MOVE_WILL_O_WISP, 16
	learnset MOVE_LAVA_PLUME, 18
	learnset MOVE_NIGHT_SLASH, 20
	learnset MOVE_DIG, 21
	learnset MOVE_SUPER_FANG, 23
	learnset MOVE_CRUNCH, 25
	learnset MOVE_CALM_MIND, 29
	terminatelearnset

levelup SPECIES_HOUNDOOM
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_HOWL, 4
	learnset MOVE_SMOG, 9
	learnset MOVE_ROAR, 14
	learnset MOVE_BITE, 17
	learnset MOVE_ODOR_SLEUTH, 22
	learnset MOVE_BEAT_UP, 28
	learnset MOVE_FIRE_FANG, 32
	learnset MOVE_FEINT_ATTACK, 38
	learnset MOVE_EMBARGO, 44
	learnset MOVE_FLAMETHROWER, 48
	learnset MOVE_CRUNCH, 54
	learnset MOVE_NASTY_PLOT, 60
	terminatelearnset

levelup SPECIES_KINGDRA
	learnset MOVE_YAWN, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SMOKESCREEN, 4
	learnset MOVE_LEER, 8
	learnset MOVE_WATER_GUN, 11
	learnset MOVE_FOCUS_ENERGY, 14
	learnset MOVE_BUBBLE_BEAM, 18
	learnset MOVE_AGILITY, 23
	learnset MOVE_TWISTER, 26
	learnset MOVE_BRINE, 30
	learnset MOVE_HYDRO_PUMP, 40
	learnset MOVE_DRAGON_DANCE, 48
	learnset MOVE_DRAGON_PULSE, 57
	terminatelearnset

levelup SPECIES_PHANPY
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_DEFENSE_CURL, 4
	learnset MOVE_ROLLOUT, 6
	learnset MOVE_FLAIL, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_STEALTH_ROCK, 11
	learnset MOVE_FIRE_FANG, 12
	learnset MOVE_CHARM, 14
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_DIG, 17
	learnset MOVE_ENDEAVOR, 18
	learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_KNOCK_OFF, 22
	learnset MOVE_COUNTER, 24
	learnset MOVE_FISSURE, 26
	learnset MOVE_HEAD_SMASH, 30
	terminatelearnset

levelup SPECIES_DONPHAN
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_FLAIL, 1
	learnset MOVE_RAPID_SPIN, 6
	learnset MOVE_KNOCK_OFF, 10
	learnset MOVE_ROLLOUT, 15
	learnset MOVE_MAGNITUDE, 19
	learnset MOVE_SLAM, 24
	learnset MOVE_FURY_ATTACK, 25
	learnset MOVE_ASSURANCE, 31
	learnset MOVE_SCARY_FACE, 39
	learnset MOVE_EARTHQUAKE, 46
	learnset MOVE_GIGA_IMPACT, 54
	terminatelearnset

levelup SPECIES_PORYGON2
	learnset MOVE_CONVERSION_2, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONVERSION, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_PSYBEAM, 7
	learnset MOVE_AGILITY, 12
	learnset MOVE_RECOVER, 18
	learnset MOVE_MAGNET_RISE, 23
	learnset MOVE_SIGNAL_BEAM, 29
	learnset MOVE_RECYCLE, 34
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_LOCK_ON, 45
	learnset MOVE_TRI_ATTACK, 51
	learnset MOVE_MAGIC_COAT, 56
	learnset MOVE_ZAP_CANNON, 62
	learnset MOVE_HYPER_BEAM, 67
	terminatelearnset

levelup SPECIES_STANTLER
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_ASTONISH, 7
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_STOMP, 13
	learnset MOVE_SAND_ATTACK, 16
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_CONFUSE_RAY, 23
	learnset MOVE_CALM_MIND, 27
	learnset MOVE_ROLE_PLAY, 33
	learnset MOVE_ZEN_HEADBUTT, 38
	learnset MOVE_IMPRISON, 43
	learnset MOVE_CAPTIVATE, 49
	learnset MOVE_ME_FIRST, 53
	terminatelearnset

levelup SPECIES_SMEARGLE
	learnset MOVE_SKETCH, 1
	learnset MOVE_SKETCH, 3
	learnset MOVE_SKETCH, 5
	learnset MOVE_SKETCH, 7
	learnset MOVE_SKETCH, 9
	learnset MOVE_SKETCH, 11
	learnset MOVE_SKETCH, 13
	learnset MOVE_SKETCH, 15
	learnset MOVE_SKETCH, 17
	learnset MOVE_SKETCH, 19
	learnset MOVE_METRONOME, 21
	learnset MOVE_SKETCH, 23
	learnset MOVE_SKETCH, 25
	learnset MOVE_SKETCH, 27
	learnset MOVE_SKETCH, 29
	learnset MOVE_HYPER_BEAM, 31
	terminatelearnset

levelup SPECIES_TYROGUE
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOLLOW_ME, 2
	learnset MOVE_FAKE_OUT, 3
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_ROCK_SMASH, 6
	learnset MOVE_BULK_UP, 8
	learnset MOVE_SWIFT, 9
	learnset MOVE_MACH_PUNCH, 10
	learnset MOVE_TRIPLE_KICK, 11
	learnset MOVE_PAYBACK, 12
	learnset MOVE_BRICK_BREAK, 14
	learnset MOVE_FEINT, 15
	learnset MOVE_DETECT, 17
	learnset MOVE_MIRACLE_EYE, 18
	learnset MOVE_ENDURE, 19
	learnset MOVE_REVERSAL, 22
	learnset MOVE_CLOSE_COMBAT, 23
	learnset MOVE_WAKE_UP_SLAP, 25
	learnset MOVE_GIGA_IMPACT, 28
	terminatelearnset

levelup SPECIES_HITMONTOP
	learnset MOVE_REVENGE, 1
	learnset MOVE_ROLLING_KICK, 1
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_PURSUIT, 10
	learnset MOVE_QUICK_ATTACK, 15
	learnset MOVE_TRIPLE_KICK, 19
	learnset MOVE_RAPID_SPIN, 24
	learnset MOVE_COUNTER, 28
	learnset MOVE_FEINT, 33
	learnset MOVE_AGILITY, 37
	learnset MOVE_GYRO_BALL, 42
	learnset MOVE_DETECT, 46
	learnset MOVE_CLOSE_COMBAT, 51
	learnset MOVE_ENDEAVOR, 55
	terminatelearnset

levelup SPECIES_SMOOCHUM
	learnset MOVE_POUND, 1
	learnset MOVE_POWDER_SNOW, 2
	learnset MOVE_SWEET_KISS, 4
	learnset MOVE_ABSORB, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_LOVELY_KISS, 8
	learnset MOVE_GRAVITY, 11
	learnset MOVE_FAKE_TEARS, 13
	learnset MOVE_ICY_WIND, 14
	learnset MOVE_PERISH_SONG, 16
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_MIRACLE_EYE, 19
	learnset MOVE_SHEER_COLD, 20
	learnset MOVE_MIST_BALL, 23
	learnset MOVE_EXTRASENSORY, 25
	learnset MOVE_CALM_MIND, 27
	learnset MOVE_ICE_BEAM, 29
	learnset MOVE_LUNAR_DANCE, 33
	terminatelearnset

levelup SPECIES_ELEKID
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_METAL_SOUND, 2
	learnset MOVE_SWIFT, 3
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_LIGHT_SCREEN, 8
	learnset MOVE_LOW_KICK, 10
	learnset MOVE_SPARK, 11
	learnset MOVE_SCREECH, 13
	learnset MOVE_SEISMIC_TOSS, 15
	learnset MOVE_NATURAL_GIFT, 17
	learnset MOVE_FIRE_PUNCH, 18
	learnset MOVE_THUNDER_PUNCH, 20
	learnset MOVE_BRICK_BREAK, 21
	learnset MOVE_COUNTER, 23
	learnset MOVE_DYNAMIC_PUNCH, 25
	learnset MOVE_SWAGGER, 27
	learnset MOVE_FEINT, 28
	learnset MOVE_THUNDER, 29
	learnset MOVE_RAIN_DANCE, 31
	terminatelearnset

levelup SPECIES_MAGBY
	learnset MOVE_SMOG, 1
	learnset MOVE_LEER, 2
	learnset MOVE_EMBER, 4
	learnset MOVE_SMOKESCREEN, 5
	learnset MOVE_FIRE_SPIN, 7
	learnset MOVE_CONFUSE_RAY, 8
	learnset MOVE_SEISMIC_TOSS, 10
	learnset MOVE_SUNNY_DAY, 11
	learnset MOVE_POISON_GAS, 13
	learnset MOVE_FIRE_PUNCH, 15
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_MEGA_PUNCH, 19
	learnset MOVE_BELLY_DRUM, 22
	learnset MOVE_EXTRASENSORY, 24
	learnset MOVE_COUNTER, 26
	learnset MOVE_LAVA_PLUME, 29
	learnset MOVE_ENCORE, 30
	learnset MOVE_DYNAMIC_PUNCH, 31
	terminatelearnset

levelup SPECIES_MILTANK
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_FIRE_PUNCH, 15
	learnset MOVE_SHADOW_CLAW, 16
	learnset MOVE_MILK_DRINK, 17
	learnset MOVE_BODY_SLAM, 18
	learnset MOVE_ROLLOUT, 19
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_ZEN_HEADBUTT, 29
	learnset MOVE_CAPTIVATE, 35
	learnset MOVE_GYRO_BALL, 41
	learnset MOVE_HEAL_BELL, 48
	learnset MOVE_WAKE_UP_SLAP, 55
	terminatelearnset

levelup SPECIES_BLISSEY
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_REFRESH, 9
	learnset MOVE_SOFT_BOILED, 12
	learnset MOVE_DOUBLE_SLAP, 16
	learnset MOVE_MINIMIZE, 20
	learnset MOVE_SING, 23
	learnset MOVE_FLING, 27
	learnset MOVE_DEFENSE_CURL, 31
	learnset MOVE_LIGHT_SCREEN, 34
	learnset MOVE_EGG_BOMB, 38
	learnset MOVE_HEALING_WISH, 42
	learnset MOVE_DOUBLE_EDGE, 46
	terminatelearnset

levelup SPECIES_RAIKOU
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_THUNDER_WAVE, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_CHARGE_BEAM, 17
	learnset MOVE_WEATHER_BALL, 20
	learnset MOVE_AGILITY, 23
	learnset MOVE_SPARK, 27
	learnset MOVE_BULLDOZE, 31
	learnset MOVE_LIGHT_SCREEN, 36
	learnset MOVE_VOLT_SWITCH, 40
	learnset MOVE_SCALD, 44
	learnset MOVE_SHADOW_BALL, 48
	learnset MOVE_EXTREME_SPEED, 52
	learnset MOVE_THUNDERBOLT, 55
	learnset MOVE_AURA_SPHERE, 58
	learnset MOVE_VOLT_TACKLE, 62
	terminatelearnset

levelup SPECIES_ENTEI
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_FIRE_SPIN, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_SUNNY_DAY, 17
	learnset MOVE_FLAME_CHARGE, 20
	learnset MOVE_THUNDER_FANG, 25
	learnset MOVE_BITE, 29
	learnset MOVE_BULK_UP, 32
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_CRUNCH, 39
	learnset MOVE_EXTRASENSORY, 43
	learnset MOVE_SCORCHING_SANDS, 48
	learnset MOVE_STONE_EDGE, 51
	learnset MOVE_SACRED_FIRE, 54
	learnset MOVE_EXTREME_SPEED, 57
	learnset MOVE_ERUPTION, 62
	terminatelearnset

levelup SPECIES_SUICUNE
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAIN_DANCE, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_AGILITY, 7
	learnset MOVE_WHIRLPOOL, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_WEATHER_BALL, 17
	learnset MOVE_WATER_PULSE, 20
	learnset MOVE_OMINOUS_WIND, 23
	learnset MOVE_SHEER_COLD, 27
	learnset MOVE_AURORA_BEAM, 32
	learnset MOVE_SCALD, 36
	learnset MOVE_EXTRASENSORY, 40
	learnset MOVE_MUDDY_WATER, 44
	learnset MOVE_CALM_MIND, 48
	learnset MOVE_EXTREME_SPEED, 52
	learnset MOVE_MIRROR_COAT, 54
	learnset MOVE_ICE_BEAM, 56
	learnset MOVE_HYDRO_PUMP, 61
	terminatelearnset

levelup SPECIES_LARVITAR
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_SANDSTORM, 5
	learnset MOVE_SCREECH, 7
	learnset MOVE_ROCK_TOMB, 9
	learnset MOVE_PAYBACK, 11
	learnset MOVE_SAND_TOMB, 13
	learnset MOVE_TAUNT, 15
	learnset MOVE_DRAGON_DANCE, 17
	learnset MOVE_MEGA_PUNCH, 18
	learnset MOVE_DIG, 20
	learnset MOVE_THRASH, 21
	learnset MOVE_CRUNCH, 23
	learnset MOVE_ROCK_SLIDE, 25
	learnset MOVE_ROCK_POLISH, 26
	learnset MOVE_ROCK_CLIMB, 28
	learnset MOVE_AVALANCHE, 30
	learnset MOVE_FOCUS_PUNCH, 31
	terminatelearnset

levelup SPECIES_PUPITAR
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_SANDSTORM, 5
	learnset MOVE_SCREECH, 7
	learnset MOVE_ROCK_TOMB, 9
	learnset MOVE_PAYBACK, 11
	learnset MOVE_SAND_TOMB, 13
	learnset MOVE_TAUNT, 15
	learnset MOVE_DRAGON_DANCE, 17
	learnset MOVE_MEGA_PUNCH, 18
	learnset MOVE_DIG, 20
	learnset MOVE_THRASH, 21
	learnset MOVE_CRUNCH, 23
	learnset MOVE_ROCK_SLIDE, 25
	learnset MOVE_ROCK_POLISH, 26
	learnset MOVE_ROCK_CLIMB, 28
	learnset MOVE_AVALANCHE, 30
	learnset MOVE_FISSURE, 32
	terminatelearnset

levelup SPECIES_TYRANITAR
	learnset MOVE_PURSUIT, 1
	learnset MOVE_SPIKES, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_HONE_CLAWS, 9
	learnset MOVE_TAUNT, 13
	learnset MOVE_MEGA_PUNCH, 17
	learnset MOVE_MUD_SHOT, 20
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_FIRE_FANG, 28
	learnset MOVE_MAGNITUDE, 33
	learnset MOVE_NIGHT_SLASH, 37
	learnset MOVE_ROCK_SLIDE, 40
	learnset MOVE_STEALTH_ROCK, 44
	learnset MOVE_ROCK_POLISH, 48
	learnset MOVE_DARK_PULSE, 51
	learnset MOVE_FISSURE, 56
	learnset MOVE_DRAGON_DANCE, 61
	learnset MOVE_ROCK_WRECKER, 65
	terminatelearnset

levelup SPECIES_LUGIA
	learnset MOVE_POUND, 1
	learnset MOVE_DEFOG, 3
	learnset MOVE_GUST, 5
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_ROOST, 13
	learnset MOVE_AIR_CUTTER, 17
	learnset MOVE_HYPNOSIS, 20
	learnset MOVE_WEATHER_BALL, 25
	learnset MOVE_WATER_PULSE, 29
	learnset MOVE_ANCIENT_POWER, 33
	learnset MOVE_THUNDER_WAVE, 37
	learnset MOVE_AIR_SLASH, 39
	learnset MOVE_EXTRASENSORY, 44
	learnset MOVE_AEROBLAST, 49
	learnset MOVE_PSYCHIC, 51
	learnset MOVE_COSMIC_POWER, 55
	learnset MOVE_SKY_ATTACK, 59
	learnset MOVE_FUTURE_SIGHT, 60
	terminatelearnset

levelup SPECIES_HO_OH
	learnset MOVE_GUST, 1
	learnset MOVE_TWISTER, 3
	learnset MOVE_SUNNY_DAY, 5
	learnset MOVE_PECK, 7
	learnset MOVE_EMBER, 9
	learnset MOVE_FURY_ATTACK, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_ROOST, 20
	learnset MOVE_FLAME_WHEEL, 24
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_PLUCK, 33
	learnset MOVE_MYSTICAL_FIRE, 36
	learnset MOVE_WILL_O_WISP, 40
	learnset MOVE_DRILL_PECK, 44
	learnset MOVE_LAVA_PLUME, 48
	learnset MOVE_U_TURN, 52
	learnset MOVE_SCORCHING_SANDS, 54
	learnset MOVE_SACRED_FIRE, 58
	learnset MOVE_BRAVE_BIRD, 62
	terminatelearnset

levelup SPECIES_CELEBI
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 3
	learnset MOVE_METRONOME, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_MEGA_DRAIN, 9
	learnset MOVE_TRICK, 13
	learnset MOVE_SYNTHESIS, 17
	learnset MOVE_LEECH_SEED, 20
	learnset MOVE_MAGICAL_LEAF, 25
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_ANCIENT_POWER, 33
	learnset MOVE_TRICK_ROOM, 36
	learnset MOVE_PSYCHO_CUT, 39
	learnset MOVE_GIGA_DRAIN, 43
	learnset MOVE_STUN_SPORE, 47
	learnset MOVE_U_TURN, 51
	learnset MOVE_LEAF_BLADE, 55
	learnset MOVE_MOONBLAST, 61
	learnset MOVE_PSYCHO_BOOST, 63
	terminatelearnset

levelup SPECIES_TREECKO
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 2
	learnset MOVE_VINE_WHIP, 3
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_PURSUIT, 5
	learnset MOVE_AGILITY, 6
	learnset MOVE_BULLET_SEED, 7
	learnset MOVE_LOW_KICK, 9
	learnset MOVE_AERIAL_ACE, 10
	learnset MOVE_DETECT, 11
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_FEINT, 14
	learnset MOVE_MIRACLE_EYE, 16
	learnset MOVE_FORCE_PALM, 18
	learnset MOVE_GIGA_DRAIN, 19
	terminatelearnset

levelup SPECIES_GROVYLE
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_PURSUIT, 5
	learnset MOVE_AGILITY, 6
	learnset MOVE_BULLET_SEED, 7
	learnset MOVE_LOW_KICK, 9
	learnset MOVE_AERIAL_ACE, 10
	learnset MOVE_DETECT, 11
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_FEINT, 14
	learnset MOVE_MIRACLE_EYE, 16
	learnset MOVE_FORCE_PALM, 18
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_CRUNCH, 21
	learnset MOVE_SEED_BOMB, 23
	learnset MOVE_DIG, 25
	learnset MOVE_LEAF_BLADE, 27
	learnset MOVE_SUBMISSION, 29
	learnset MOVE_SWORDS_DANCE, 32
	terminatelearnset

levelup SPECIES_SCEPTILE
	learnset MOVE_NIGHT_SLASH, 1
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_ABSORB, 6
	learnset MOVE_QUICK_ATTACK, 11
	learnset MOVE_X_SCISSOR, 16
	learnset MOVE_PURSUIT, 17
	learnset MOVE_SCREECH, 23
	learnset MOVE_LEAF_BLADE, 29
	learnset MOVE_AGILITY, 35
	learnset MOVE_SLAM, 43
	learnset MOVE_DETECT, 51
	learnset MOVE_FALSE_SWIPE, 59
	learnset MOVE_LEAF_STORM, 67
	terminatelearnset

levelup SPECIES_TORCHIC
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_FOCUS_ENERGY, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_PECK, 6
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_ROCK_SMASH, 8
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_MIRROR_MOVE, 11
	learnset MOVE_FLAME_WHEEL, 12
	learnset MOVE_PLUCK, 13
	learnset MOVE_FEINT, 15
	learnset MOVE_SLASH, 16
	learnset MOVE_MEGA_PUNCH, 17
	learnset MOVE_DETECT, 19
	terminatelearnset

levelup SPECIES_COMBUSKEN
	learnset MOVE_PECK, 6
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_ROCK_SMASH, 8
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_MIRROR_MOVE, 11
	learnset MOVE_FLAME_WHEEL, 12
	learnset MOVE_PLUCK, 13
	learnset MOVE_FEINT, 15
	learnset MOVE_SLASH, 16
	learnset MOVE_MEGA_PUNCH, 17
	learnset MOVE_DETECT, 19
	learnset MOVE_LOW_KICK, 21
	learnset MOVE_AERIAL_ACE, 22
	learnset MOVE_SKY_UPPERCUT, 25
	learnset MOVE_BULK_UP, 27
	learnset MOVE_POISON_JAB, 28
	learnset MOVE_FIRE_PUNCH, 30
	terminatelearnset

levelup SPECIES_BLAZIKEN
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_FOCUS_ENERGY, 7
	learnset MOVE_EMBER, 13
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_PECK, 17
	learnset MOVE_SAND_ATTACK, 21
	learnset MOVE_BULK_UP, 28
	learnset MOVE_QUICK_ATTACK, 32
	learnset MOVE_BLAZE_KICK, 36
	learnset MOVE_SLASH, 42
	learnset MOVE_BRAVE_BIRD, 49
	learnset MOVE_SKY_UPPERCUT, 59
	learnset MOVE_FLARE_BLITZ, 66
	terminatelearnset

levelup SPECIES_MUDKIP
	learnset MOVE_HIDDEN_POWER, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_BIDE, 6
	learnset MOVE_ICE_BALL, 8
	learnset MOVE_BITE, 9
	learnset MOVE_COUNTER, 11
	learnset MOVE_WHIRLPOOL, 12
	learnset MOVE_PROTECT, 13
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_WATER_SPORT, 19
	terminatelearnset

levelup SPECIES_MARSHTOMP
	learnset MOVE_BIDE, 6
	learnset MOVE_ICE_BALL, 8
	learnset MOVE_BITE, 9
	learnset MOVE_COUNTER, 11
	learnset MOVE_WHIRLPOOL, 12
	learnset MOVE_PROTECT, 13
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_WATER_SPORT, 19
	learnset MOVE_PROTECT, 21
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_ENDEAVOR, 25
	learnset MOVE_ANCIENT_POWER, 26
	learnset MOVE_MUD_SPORT, 27
	learnset MOVE_CURSE, 29
	learnset MOVE_DIVE, 30
	terminatelearnset

levelup SPECIES_SWAMPERT
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MUD_SLAP, 6
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_BIDE, 15
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_FORESIGHT, 20
	learnset MOVE_MUD_BOMB, 25
	learnset MOVE_TAKE_DOWN, 31
	learnset MOVE_MUDDY_WATER, 39
	learnset MOVE_PROTECT, 46
	learnset MOVE_EARTHQUAKE, 52
	learnset MOVE_ENDEAVOR, 61
	learnset MOVE_HAMMER_ARM, 69
	terminatelearnset

levelup SPECIES_POOCHYENA
	learnset MOVE_TACKLE, 1
	learnset MOVE_HOWL, 2
	learnset MOVE_PURSUIT, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_THIEF, 6
	learnset MOVE_TAUNT, 7
	learnset MOVE_SWAGGER, 8
	learnset MOVE_EMBARGO, 9
	learnset MOVE_SCARY_FACE, 10
	learnset MOVE_BITE, 11
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_ROCK_SMASH, 15
	learnset MOVE_SUPER_FANG, 16
	learnset MOVE_THUNDER_FANG, 17
	learnset MOVE_CRUNCH, 19
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_HYPER_FANG, 23
	learnset MOVE_COUNTER, 25
	terminatelearnset

levelup SPECIES_MIGHTYENA
	learnset MOVE_THIEF, 6
	learnset MOVE_TAUNT, 7
	learnset MOVE_SWAGGER, 8
	learnset MOVE_EMBARGO, 9
	learnset MOVE_SCARY_FACE, 10
	learnset MOVE_BITE, 11
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_ROCK_SMASH, 15
	learnset MOVE_SUPER_FANG, 16
	learnset MOVE_THUNDER_FANG, 17
	learnset MOVE_CRUNCH, 19
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_HYPER_FANG, 23
	learnset MOVE_COUNTER, 25
	learnset MOVE_DIG, 27
	learnset MOVE_ICE_FANG, 29
	learnset MOVE_BULK_UP, 31
	terminatelearnset

levelup SPECIES_ZIGZAGOON
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_BITE, 4
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_PIN_MISSILE, 6
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_COVET, 11
	learnset MOVE_FLAIL, 13
	learnset MOVE_NATURE_POWER, 14
	learnset MOVE_FEINT, 16
	learnset MOVE_BULK_UP, 19
	learnset MOVE_SLASH, 21
	terminatelearnset

levelup SPECIES_LINOONE
	learnset MOVE_PIN_MISSILE, 6
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_COVET, 11
	learnset MOVE_FLAIL, 13
	learnset MOVE_NATURE_POWER, 14
	learnset MOVE_FEINT, 16
	learnset MOVE_BULK_UP, 19
	learnset MOVE_SLASH, 21
	learnset MOVE_SHADOW_CLAW, 23
	learnset MOVE_DOUBLE_TEAM, 24
	learnset MOVE_TICKLE, 26
	learnset MOVE_FACADE, 28
	learnset MOVE_REST, 30
	learnset MOVE_EXTREME_SPEED, 33
	terminatelearnset

levelup SPECIES_WURMPLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_ABSORB, 2
	learnset MOVE_BLOCK, 3
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_PIN_MISSILE, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_CUT, 10
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_ODOR_SLEUTH, 13
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_POISON_JAB, 18
	terminatelearnset

levelup SPECIES_SILCOON
	learnset MOVE_BLOCK, 3
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_PIN_MISSILE, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_CUT, 10
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_ODOR_SLEUTH, 13
	learnset MOVE_SPIDER_WEB, 14
	learnset MOVE_BUG_BITE, 15
	terminatelearnset

levelup SPECIES_BEAUTIFLY
	learnset MOVE_BLOCK, 3
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_PIN_MISSILE, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_CUT, 10
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_ODOR_SLEUTH, 13
	learnset MOVE_SPIDER_WEB, 14
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_SILVER_WIND, 16
	learnset MOVE_AERIAL_ACE, 17
	learnset MOVE_OMINOUS_WIND, 19
	learnset MOVE_U_TURN, 21
	learnset MOVE_GIGA_DRAIN, 23
	learnset MOVE_EXTRASENSORY, 25
	learnset MOVE_BUG_BUZZ, 28
	learnset MOVE_ROOST, 30
	terminatelearnset

levelup SPECIES_CASCOON
	learnset MOVE_BLOCK, 3
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_PIN_MISSILE, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_CUT, 10
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_ODOR_SLEUTH, 13
	learnset MOVE_SPIDER_WEB, 14
	learnset MOVE_BUG_BITE, 15
	terminatelearnset

levelup SPECIES_DUSTOX
	learnset MOVE_BLOCK, 3
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_POISON_STING, 5
	learnset MOVE_PIN_MISSILE, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_CUT, 10
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_DEFENSE_CURL, 12
	learnset MOVE_ODOR_SLEUTH, 13
	learnset MOVE_SPIDER_WEB, 14
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_SILVER_WIND, 16
	learnset MOVE_POISON_JAB, 18
	learnset MOVE_TOXIC, 20
	learnset MOVE_DEFEND_ORDER, 22
	learnset MOVE_SHADOW_BALL, 24
	learnset MOVE_X_SCISSOR, 26
	learnset MOVE_TOXIC_SPIKES, 28
	learnset MOVE_SLUDGE_BOMB, 30
	terminatelearnset

levelup SPECIES_LOTAD
	learnset MOVE_CUT, 1
	learnset MOVE_AQUA_RING, 2
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_NATURE_POWER, 4
	learnset MOVE_POWDER_SNOW, 6
	learnset MOVE_MEGA_DRAIN, 7
	learnset MOVE_BUBBLE_BEAM, 8
	learnset MOVE_BULLET_SEED, 10
	learnset MOVE_INGRAIN, 12
	learnset MOVE_RAIN_DANCE, 13
	learnset MOVE_ICY_WIND, 14
	terminatelearnset

levelup SPECIES_LOMBRE
	learnset MOVE_CUT, 1
	learnset MOVE_AQUA_RING, 2
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_NATURE_POWER, 4
	learnset MOVE_POWDER_SNOW, 6
	learnset MOVE_MEGA_DRAIN, 7
	learnset MOVE_BUBBLE_BEAM, 8
	learnset MOVE_BULLET_SEED, 10
	learnset MOVE_ZEN_HEADBUTT, 12
	learnset MOVE_RAIN_DANCE, 13
	learnset MOVE_ICY_WIND, 14
	learnset MOVE_FAKE_OUT, 16
	learnset MOVE_WATER_SPORT, 18
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_MEGA_PUNCH, 21
	learnset MOVE_ICE_PUNCH, 22
	learnset MOVE_SYNTHESIS, 24
	learnset MOVE_DIVE, 26
	learnset MOVE_DYNAMIC_PUNCH, 28
	learnset MOVE_SEED_BOMB, 29
	terminatelearnset

levelup SPECIES_LUDICOLO
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_NATURE_POWER, 1
	terminatelearnset

levelup SPECIES_SEEDOT
	learnset MOVE_COUNTER, 1
	learnset MOVE_ABSORB, 2
	learnset MOVE_INGRAIN, 3
	learnset MOVE_NATURE_POWER, 4
	learnset MOVE_SELF_DESTRUCT, 5
	learnset MOVE_SUNNY_DAY, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_LEECH_SEED, 11
	learnset MOVE_SYNTHESIS, 12
	learnset MOVE_GRASS_KNOT, 14
	learnset MOVE_TAUNT, 16
	learnset MOVE_MAGICAL_LEAF, 17
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_SEED_BOMB, 20
	learnset MOVE_EXPLOSION, 22
	terminatelearnset

levelup SPECIES_NUZLEAF
	learnset MOVE_COUNTER, 1
	learnset MOVE_ABSORB, 2
	learnset MOVE_INGRAIN, 3
	learnset MOVE_NATURE_POWER, 4
	learnset MOVE_SELF_DESTRUCT, 5
	learnset MOVE_SUNNY_DAY, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_LEECH_SEED, 11
	learnset MOVE_SYNTHESIS, 12
	learnset MOVE_GRASS_KNOT, 14
	learnset MOVE_TAUNT, 16
	learnset MOVE_MAGICAL_LEAF, 18
	learnset MOVE_EMBARGO, 20
	learnset MOVE_SNORE, 21
	learnset MOVE_NATURE_POWER, 23
	learnset MOVE_SEED_BOMB, 25
	learnset MOVE_DARK_PULSE, 27
	learnset MOVE_ROCK_SLIDE, 29
	learnset MOVE_SOLAR_BEAM, 32
	terminatelearnset

levelup SPECIES_SHIFTRY
	learnset MOVE_FEINT_ATTACK, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_LEAF_STORM, 49
	terminatelearnset

levelup SPECIES_TAILLOW
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_DOUBLE_TEAM, 19
	learnset MOVE_ENDEAVOR, 26
	learnset MOVE_AERIAL_ACE, 34
	learnset MOVE_AGILITY, 43
	learnset MOVE_AIR_SLASH, 53
	terminatelearnset

levelup SPECIES_SWELLOW
	learnset MOVE_PLUCK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_DOUBLE_TEAM, 19
	learnset MOVE_ENDEAVOR, 28
	learnset MOVE_AERIAL_ACE, 38
	learnset MOVE_AGILITY, 49
	learnset MOVE_AIR_SLASH, 61
	terminatelearnset

levelup SPECIES_WINGULL
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_GUST, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_PROTECT, 9
	learnset MOVE_AIR_CUTTER, 11
	learnset MOVE_BRINE, 13
	learnset MOVE_ROOST, 15
	learnset MOVE_SNORE, 17
	learnset MOVE_OMINOUS_WIND, 19
	learnset MOVE_TAILWIND, 21
	learnset MOVE_ICY_WIND, 23
	learnset MOVE_U_TURN, 25
	terminatelearnset

levelup SPECIES_PELIPPER
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_GUST, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_PROTECT, 9
	learnset MOVE_AIR_CUTTER, 11
	learnset MOVE_BRINE, 13
	learnset MOVE_ROOST, 15
	learnset MOVE_SNORE, 17
	learnset MOVE_OMINOUS_WIND, 19
	learnset MOVE_TAILWIND, 21
	learnset MOVE_ICY_WIND, 23
	learnset MOVE_U_TURN, 25
	learnset MOVE_WATER_SPORT, 27
	learnset MOVE_AIR_SLASH, 29
	learnset MOVE_ICE_BEAM, 31
	terminatelearnset

levelup SPECIES_RALTS
	learnset MOVE_GROWL, 1
	learnset MOVE_ABSORB, 2
	learnset MOVE_CONFUSION, 3
	learnset MOVE_MEMENTO, 4
	learnset MOVE_GROWTH, 6
	learnset MOVE_MAGICAL_LEAF, 8
	learnset MOVE_GRAVITY, 9
	learnset MOVE_PSYBEAM, 10
	learnset MOVE_HYPNOSIS, 12
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_CHARM, 14
	terminatelearnset

levelup SPECIES_KIRLIA
	learnset MOVE_GROWL, 1
	learnset MOVE_ABSORB, 2
	learnset MOVE_CONFUSION, 3
	learnset MOVE_MEMENTO, 4
	learnset MOVE_GROWTH, 6
	learnset MOVE_MAGICAL_LEAF, 8
	learnset MOVE_GRAVITY, 9
	learnset MOVE_PSYBEAM, 10
	learnset MOVE_HYPNOSIS, 12
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_CHARM, 14
	learnset MOVE_ZEN_HEADBUTT, 16
	learnset MOVE_FIRE_PUNCH, 18
	learnset MOVE_EXTRASENSORY, 20
	learnset MOVE_HYPNOSIS, 22
	learnset MOVE_LUSTER_PURGE, 24
	learnset MOVE_FUTURE_SIGHT, 25
	learnset MOVE_MIST_BALL, 27
	learnset MOVE_MOONLIGHT, 28
	learnset MOVE_CALM_MIND, 30
	terminatelearnset

levelup SPECIES_GARDEVOIR
	learnset MOVE_HEALING_WISH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DOUBLE_TEAM, 1
	learnset MOVE_TELEPORT, 1
	learnset MOVE_CONFUSION, 6
	learnset MOVE_DOUBLE_TEAM, 10
	learnset MOVE_TELEPORT, 12
	learnset MOVE_WISH, 17
	learnset MOVE_MAGICAL_LEAF, 22
	learnset MOVE_CALM_MIND, 25
	learnset MOVE_PSYCHIC, 33
	learnset MOVE_IMPRISON, 40
	learnset MOVE_FUTURE_SIGHT, 45
	learnset MOVE_CAPTIVATE, 53
	learnset MOVE_HYPNOSIS, 60
	learnset MOVE_DREAM_EATER, 65
	terminatelearnset

levelup SPECIES_SURSKIT
	learnset MOVE_BUBBLE, 1
	learnset MOVE_QUICK_ATTACK, 2
	learnset MOVE_ABSORB, 3
	learnset MOVE_ODOR_SLEUTH, 5
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_AGILITY, 8
	learnset MOVE_HAZE, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_RAIN_DANCE, 11
	learnset MOVE_BUBBLE_BEAM, 13
	learnset MOVE_MEGA_DRAIN, 14
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_SIGNAL_BEAM, 18
	terminatelearnset

levelup SPECIES_MASQUERAIN
	learnset MOVE_BUBBLE, 1
	learnset MOVE_QUICK_ATTACK, 2
	learnset MOVE_ABSORB, 3
	learnset MOVE_ODOR_SLEUTH, 5
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_AGILITY, 8
	learnset MOVE_HAZE, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_RAIN_DANCE, 11
	learnset MOVE_BUBBLE_BEAM, 13
	learnset MOVE_MEGA_DRAIN, 14
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_SIGNAL_BEAM, 18
	learnset MOVE_BRINE, 20
	learnset MOVE_AGILITY, 22
	learnset MOVE_GIGA_DRAIN, 24
	learnset MOVE_AIR_SLASH, 26
	learnset MOVE_TAILWIND, 28
	learnset MOVE_WATER_SPORT, 30
	learnset MOVE_BUG_BUZZ, 31
	terminatelearnset

levelup SPECIES_SHROOMISH
	learnset MOVE_ABSORB, 1
	learnset MOVE_TACKLE, 5
	learnset MOVE_STUN_SPORE, 9
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_MEGA_DRAIN, 17
	learnset MOVE_HEADBUTT, 21
	learnset MOVE_POISON_POWDER, 25
	learnset MOVE_WORRY_SEED, 29
	learnset MOVE_GROWTH, 33
	learnset MOVE_GIGA_DRAIN, 37
	learnset MOVE_SEED_BOMB, 41
	learnset MOVE_SPORE, 45
	terminatelearnset

levelup SPECIES_BRELOOM
	learnset MOVE_ABSORB, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_LEECH_SEED, 1
	learnset MOVE_TACKLE, 5
	learnset MOVE_STUN_SPORE, 9
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_MEGA_DRAIN, 17
	learnset MOVE_HEADBUTT, 21
	learnset MOVE_MACH_PUNCH, 23
	learnset MOVE_COUNTER, 25
	learnset MOVE_FORCE_PALM, 29
	learnset MOVE_SKY_UPPERCUT, 33
	learnset MOVE_MIND_READER, 37
	learnset MOVE_SEED_BOMB, 41
	learnset MOVE_DYNAMIC_PUNCH, 45
	terminatelearnset

levelup SPECIES_SLAKOTH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_YAWN, 2
	learnset MOVE_ENCORE, 4
	learnset MOVE_SLACK_OFF, 6
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_AMNESIA, 8
	learnset MOVE_COVET, 9
	learnset MOVE_COUNTER, 10
	learnset MOVE_FLAIL, 12
	learnset MOVE_FURY_SWIPES, 13
	learnset MOVE_ENDURE, 15
	learnset MOVE_FOCUS_PUNCH, 16
	learnset MOVE_SLASH, 18
	learnset MOVE_AERIAL_ACE, 19
	learnset MOVE_LOW_SWEEP, 21
	terminatelearnset

levelup SPECIES_VIGOROTH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_YAWN, 2
	learnset MOVE_ENCORE, 4
	learnset MOVE_SLACK_OFF, 6
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_AMNESIA, 8
	learnset MOVE_COVET, 9
	learnset MOVE_COUNTER, 10
	learnset MOVE_FLAIL, 12
	learnset MOVE_FURY_SWIPES, 13
	learnset MOVE_ENDURE, 15
	learnset MOVE_FOCUS_PUNCH, 16
	learnset MOVE_SLASH, 18
	learnset MOVE_AERIAL_ACE, 19
	learnset MOVE_LOW_SWEEP, 21
	learnset MOVE_PUNISHMENT, 24
	learnset MOVE_THUNDER_PUNCH, 26
	learnset MOVE_ZEN_HEADBUTT, 28
	learnset MOVE_BODY_SLAM, 30
	terminatelearnset

levelup SPECIES_SLAKING
	learnset MOVE_SCRATCH, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_ENCORE, 1
	learnset MOVE_SLACK_OFF, 1
	learnset MOVE_ENCORE, 7
	learnset MOVE_SLACK_OFF, 13
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_AMNESIA, 25
	learnset MOVE_COVET, 31
	learnset MOVE_SWAGGER, 36
	learnset MOVE_COUNTER, 37
	learnset MOVE_FLAIL, 43
	learnset MOVE_FLING, 49
	learnset MOVE_PUNISHMENT, 55
	learnset MOVE_HAMMER_ARM, 61
	terminatelearnset

levelup SPECIES_NINCADA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_BLOCK, 4
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_METAL_CLAW, 8
	learnset MOVE_FURY_CUTTER, 10
	learnset MOVE_SAND_TOMB, 12
	learnset MOVE_LEECH_LIFE, 13
	learnset MOVE_DIG, 15
	learnset MOVE_AERIAL_ACE, 17
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_X_SCISSOR, 22
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_DOUBLE_EDGE, 25
	learnset MOVE_SWORDS_DANCE, 27
	learnset MOVE_EARTHQUAKE, 31
	terminatelearnset

levelup SPECIES_NINJASK
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_LEECH_LIFE, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_LEECH_LIFE, 5
	learnset MOVE_SAND_ATTACK, 9
	learnset MOVE_FURY_SWIPES, 14
	learnset MOVE_MIND_READER, 19
	learnset MOVE_DOUBLE_TEAM, 20
	learnset MOVE_FURY_CUTTER, 20
	learnset MOVE_SCREECH, 20
	learnset MOVE_SWORDS_DANCE, 25
	learnset MOVE_SLASH, 31
	learnset MOVE_AGILITY, 38
	learnset MOVE_BATON_PASS, 45
	learnset MOVE_X_SCISSOR, 52
	terminatelearnset

levelup SPECIES_SHEDINJA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_LEECH_LIFE, 5
	learnset MOVE_SAND_ATTACK, 9
	learnset MOVE_FURY_SWIPES, 14
	learnset MOVE_MIND_READER, 19
	learnset MOVE_SPITE, 25
	learnset MOVE_CONFUSE_RAY, 31
	learnset MOVE_SHADOW_SNEAK, 38
	learnset MOVE_GRUDGE, 45
	learnset MOVE_HEAL_BLOCK, 52
	learnset MOVE_SHADOW_BALL, 59
	terminatelearnset

levelup SPECIES_WHISMUR
	learnset MOVE_SNORE, 1
	learnset MOVE_UPROAR, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_HOWL, 4
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_STOMP, 8
	learnset MOVE_REST, 9
	learnset MOVE_TICKLE, 10
	learnset MOVE_SECRET_POWER, 12
	learnset MOVE_ENDEAVOR, 13
	learnset MOVE_PROTECT, 14
	learnset MOVE_SEISMIC_TOSS, 16
	terminatelearnset

levelup SPECIES_LOUDRED
	learnset MOVE_SNORE, 1
	learnset MOVE_UPROAR, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_HOWL, 4
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_STOMP, 8
	learnset MOVE_REST, 9
	learnset MOVE_TICKLE, 10
	learnset MOVE_SECRET_POWER, 12
	learnset MOVE_ENDEAVOR, 13
	learnset MOVE_PROTECT, 14
	learnset MOVE_SEISMIC_TOSS, 16
	learnset MOVE_MIRACLE_EYE, 18
	learnset MOVE_MEGA_PUNCH, 20
	learnset MOVE_ZEN_HEADBUTT, 22
	learnset MOVE_SCREECH, 24
	learnset MOVE_BODY_SLAM, 26
	learnset MOVE_FIRE_PUNCH, 28
	learnset MOVE_HYPER_VOICE, 30
	terminatelearnset

levelup SPECIES_EXPLOUD
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_POUND, 1
	learnset MOVE_UPROAR, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_UPROAR, 5
	learnset MOVE_ASTONISH, 11
	learnset MOVE_HOWL, 15
	learnset MOVE_BITE, 20
	learnset MOVE_SUPERSONIC, 23
	learnset MOVE_STOMP, 29
	learnset MOVE_SCREECH, 37
	learnset MOVE_CRUNCH, 40
	learnset MOVE_ROAR, 45
	learnset MOVE_REST, 55
	learnset MOVE_SLEEP_TALK, 55
	learnset MOVE_HYPER_VOICE, 63
	learnset MOVE_HYPER_BEAM, 71
	terminatelearnset

levelup SPECIES_MAKUHITA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_FORCE_PALM, 13
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_VITAL_THROW, 22
    learnset MOVE_BELLY_DRUM, 25
    learnset MOVE_SMELLING_SALTS, 28
    learnset MOVE_SEISMIC_TOSS, 31
    learnset MOVE_WAKE_UP_SLAP, 34
    learnset MOVE_ENDURE, 37
    learnset MOVE_CLOSE_COMBAT, 40
    learnset MOVE_REVERSAL, 43
    learnset MOVE_HEAVY_SLAM, 46
    terminatelearnset


levelup SPECIES_HARIYAMA
    learnset MOVE_BRINE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_FORCE_PALM, 13
    learnset MOVE_WHIRLWIND, 16
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_VITAL_THROW, 22
    learnset MOVE_BELLY_DRUM, 26
    learnset MOVE_SMELLING_SALTS, 30
    learnset MOVE_SEISMIC_TOSS, 34
    learnset MOVE_WAKE_UP_SLAP, 38
    learnset MOVE_ENDURE, 42
    learnset MOVE_CLOSE_COMBAT, 46
    learnset MOVE_REVERSAL, 50
    learnset MOVE_HEAVY_SLAM, 54
    terminatelearnset


levelup SPECIES_AZURILL
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_ATTRACT, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_AQUA_JET, 8
	learnset MOVE_ICE_BALL, 10
	learnset MOVE_BATON_PASS, 12
	learnset MOVE_DOUBLE_SLAP, 13
	learnset MOVE_BIDE, 14
	learnset MOVE_SWIFT, 17
	learnset MOVE_WATER_PULSE, 19
	learnset MOVE_DIVE, 22
	learnset MOVE_ENDURE, 24
	learnset MOVE_BOUNCE, 27
	learnset MOVE_ICY_WIND, 29
	learnset MOVE_FLAIL, 31
	terminatelearnset

levelup SPECIES_NOSEPASS
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_ROCK_THROW, 5
	learnset MOVE_MAGNET_RISE, 7
	learnset MOVE_SHOCK_WAVE, 9
	learnset MOVE_ROCK_TOMB, 11
	learnset MOVE_SANDSTORM, 13
	learnset MOVE_ANCIENT_POWER, 15
	learnset MOVE_NATURAL_GIFT, 17
	learnset MOVE_GYRO_BALL, 19
	learnset MOVE_ZAP_CANNON, 21
	learnset MOVE_THUNDER_WAVE, 23
	learnset MOVE_ROCK_SLIDE, 25
	learnset MOVE_EARTH_POWER, 26
	learnset MOVE_EXPLOSION, 28
	learnset MOVE_PROTECT, 29
	learnset MOVE_ICE_PUNCH, 31
	terminatelearnset

levelup SPECIES_SKITTY
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_DOUBLE_SLAP, 7
	learnset MOVE_ATTRACT, 9
	learnset MOVE_SING, 11
	learnset MOVE_ASSIST, 13
	learnset MOVE_LAST_RESORT, 15
	learnset MOVE_COPYCAT, 16
	learnset MOVE_CHARM, 18
	learnset MOVE_SUCKER_PUNCH, 19
	learnset MOVE_MIRACLE_EYE, 20
	learnset MOVE_BULK_UP, 21
	terminatelearnset

levelup SPECIES_DELCATTY
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_TAIL_WHIP, 5
	learnset MOVE_DOUBLE_SLAP, 7
	learnset MOVE_ATTRACT, 9
	learnset MOVE_SING, 11
	learnset MOVE_ASSIST, 13
	learnset MOVE_LAST_RESORT, 15
	learnset MOVE_COPYCAT, 16
	learnset MOVE_CHARM, 18
	learnset MOVE_SUCKER_PUNCH, 19
	learnset MOVE_MIRACLE_EYE, 20
	learnset MOVE_BULK_UP, 21
	learnset MOVE_ZEN_HEADBUTT, 23
	learnset MOVE_WAKE_UP_SLAP, 26
	learnset MOVE_PROTECT, 28
	learnset MOVE_SECRET_POWER, 30
	terminatelearnset

levelup SPECIES_SABLEYE
	learnset MOVE_LEER, 1
	learnset MOVE_SCRATCH, 3
	learnset MOVE_NIGHT_SHADE, 5
	learnset MOVE_MEMENTO, 7
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_DETECT, 11
	learnset MOVE_SHADOW_SNEAK, 13
	learnset MOVE_KNOCK_OFF, 15
	learnset MOVE_PUNISHMENT, 16
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_OMINOUS_WIND, 19
	learnset MOVE_EMBARGO, 20
	learnset MOVE_PAIN_SPLIT, 22
	learnset MOVE_SNORE, 24
	learnset MOVE_CONFUSE_RAY, 26
	learnset MOVE_POWER_GEM, 27
	learnset MOVE_GRAVITY, 29
	learnset MOVE_SUCKER_PUNCH, 32
	terminatelearnset

levelup SPECIES_MAWILE
	learnset MOVE_ASTONISH, 1
	learnset MOVE_FAKE_TEARS, 3
	learnset MOVE_BITE, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_DOUBLE_SLAP, 9
	learnset MOVE_FEINT_ATTACK, 11
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_IRON_DEFENSE, 15
	learnset MOVE_STOCKPILE, 16
	learnset MOVE_LAST_RESORT, 17
	learnset MOVE_MAGNET_BOMB, 19
	learnset MOVE_SUCKER_PUNCH, 21
	learnset MOVE_MIRACLE_EYE, 22
	learnset MOVE_IRON_HEAD, 25
	learnset MOVE_WAKE_UP_SLAP, 26
	learnset MOVE_PUNISHMENT, 27
	learnset MOVE_LUNAR_DANCE, 29
	learnset MOVE_IRON_TAIL, 31
	terminatelearnset

levelup SPECIES_ARON
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_ROLLOUT, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_IRON_DEFENSE, 9
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_ROAR, 12
	learnset MOVE_ANCIENT_POWER, 13
	learnset MOVE_PROTECT, 15
	learnset MOVE_METAL_SOUND, 16
	learnset MOVE_MAGNET_BOMB, 18
	learnset MOVE_ROCK_CLIMB, 20
	learnset MOVE_METAL_BURST, 21
	learnset MOVE_IRON_HEAD, 23
	learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_ENDEAVOR, 27
	learnset MOVE_ROCK_SLIDE, 29
	terminatelearnset

levelup SPECIES_LAIRON
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_ROLLOUT, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_IRON_DEFENSE, 9
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_ROAR, 12
	learnset MOVE_ANCIENT_POWER, 13
	learnset MOVE_PROTECT, 15
	learnset MOVE_METAL_SOUND, 16
	learnset MOVE_MAGNET_BOMB, 18
	learnset MOVE_ROCK_CLIMB, 20
	learnset MOVE_METAL_BURST, 21
	learnset MOVE_IRON_HEAD, 23
	learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_ENDEAVOR, 27
	learnset MOVE_ROCK_SLIDE, 29
	terminatelearnset

levelup SPECIES_AGGRON
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_HARDEN, 4
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_HEADBUTT, 11
	learnset MOVE_METAL_CLAW, 15
	learnset MOVE_IRON_DEFENSE, 18
	learnset MOVE_ROAR, 22
	learnset MOVE_TAKE_DOWN, 25
	learnset MOVE_IRON_HEAD, 29
	learnset MOVE_PROTECT, 34
	learnset MOVE_METAL_SOUND, 40
	learnset MOVE_IRON_TAIL, 48
	learnset MOVE_DOUBLE_EDGE, 57
	learnset MOVE_METAL_BURST, 65
	terminatelearnset

levelup SPECIES_MEDITITE
	learnset MOVE_BIDE, 1
	learnset MOVE_MEDITATE, 2
	learnset MOVE_CONFUSION, 4
	learnset MOVE_DETECT, 5
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_FAKE_OUT, 7
	learnset MOVE_FEINT, 9
	learnset MOVE_BULK_UP, 10
	learnset MOVE_FORCE_PALM, 11
	learnset MOVE_REVERSAL, 13
	learnset MOVE_MEGA_PUNCH, 15
	learnset MOVE_ROCK_TOMB, 17
	learnset MOVE_PSYCHO_CUT, 18
	learnset MOVE_DOUBLE_TEAM, 19
	learnset MOVE_MIRACLE_EYE, 21
	learnset MOVE_DRAIN_PUNCH, 22
	learnset MOVE_LIGHT_SCREEN, 24
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_TRICK, 28
	learnset MOVE_DYNAMIC_PUNCH, 29
	terminatelearnset

levelup SPECIES_MEDICHAM
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_MEDITATE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DETECT, 1
	learnset MOVE_MEDITATE, 4
	learnset MOVE_CONFUSION, 8
	learnset MOVE_DETECT, 11
	learnset MOVE_HIDDEN_POWER, 15
	learnset MOVE_MIND_READER, 18
	learnset MOVE_FEINT, 22
	learnset MOVE_CALM_MIND, 25
	learnset MOVE_FORCE_PALM, 29
	learnset MOVE_HIGH_JUMP_KICK, 32
	learnset MOVE_PSYCH_UP, 36
	learnset MOVE_POWER_TRICK, 42
	learnset MOVE_REVERSAL, 49
	learnset MOVE_RECOVER, 55
	terminatelearnset

levelup SPECIES_ELECTRIKE
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_WAVE, 2
	learnset MOVE_QUICK_ATTACK, 3
	learnset MOVE_HOWL, 4
	learnset MOVE_SWITCHEROO, 6
	learnset MOVE_SPARK, 7
	learnset MOVE_BITE, 8
	learnset MOVE_CHARGE, 9
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_FLAME_WHEEL, 13
	learnset MOVE_SWAGGER, 15
	learnset MOVE_CHARGE_BEAM, 16
	learnset MOVE_MAGNET_RISE, 17
	learnset MOVE_NATURAL_GIFT, 18
	learnset MOVE_DISCHARGE, 19
	learnset MOVE_ENDURE, 21
	learnset MOVE_DOUBLE_EDGE, 23
	learnset MOVE_FLAMETHROWER, 25
	learnset MOVE_REVERSAL, 27
	learnset MOVE_HYPER_FANG, 28
	terminatelearnset

levelup SPECIES_MANECTRIC
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_WAVE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_HOWL, 1
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_LEER, 9
	learnset MOVE_HOWL, 12
	learnset MOVE_QUICK_ATTACK, 17
	learnset MOVE_SPARK, 20
	learnset MOVE_ODOR_SLEUTH, 25
	learnset MOVE_BITE, 30
	learnset MOVE_THUNDER_FANG, 37
	learnset MOVE_ROAR, 42
	learnset MOVE_DISCHARGE, 49
	learnset MOVE_CHARGE, 54
	learnset MOVE_THUNDER, 61
	terminatelearnset

levelup SPECIES_PLUSLE
	learnset MOVE_ABSORB, 1
	learnset MOVE_THUNDER_WAVE, 2
	learnset MOVE_THUNDER_SHOCK, 3
	learnset MOVE_CHARM, 4
	learnset MOVE_SPIDER_WEB, 6
	learnset MOVE_ENCORE, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_GRASS_KNOT, 10
	learnset MOVE_GRAVITY, 11
	learnset MOVE_CHARGE, 13
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_SWEET_KISS, 15
	learnset MOVE_MIRACLE_EYE, 17
	learnset MOVE_MEGA_PUNCH, 18
	learnset MOVE_HIDDEN_POWER, 20
	learnset MOVE_DISCHARGE, 22
	learnset MOVE_LUSTER_PURGE, 24
	learnset MOVE_FOCUS_PUNCH, 27
	learnset MOVE_LUNAR_DANCE, 29
	terminatelearnset

levelup SPECIES_MINUN
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_THUNDER_WAVE, 2
	learnset MOVE_THUNDER_SHOCK, 3
	learnset MOVE_ATTRACT, 4
	learnset MOVE_SPIDER_WEB, 6
	learnset MOVE_TORMENT, 7
	learnset MOVE_FEINT, 9
	learnset MOVE_SIGNAL_BEAM, 10
	learnset MOVE_GRAVITY, 11
	learnset MOVE_COSMIC_POWER, 13
	learnset MOVE_HIDDEN_POWER, 14
	learnset MOVE_SWEET_KISS, 15
	learnset MOVE_MIRACLE_EYE, 17
	learnset MOVE_CHARGE_BEAM, 18
	learnset MOVE_AMNESIA, 19
	learnset MOVE_NATURAL_GIFT, 20
	learnset MOVE_DISCHARGE, 22
	learnset MOVE_WAKE_UP_SLAP, 24
	learnset MOVE_DYNAMIC_PUNCH, 27
	learnset MOVE_LUSTER_PURGE, 29
	terminatelearnset

levelup SPECIES_VOLBEAT
	learnset MOVE_FLASH, 1
	learnset MOVE_TACKLE, 3
	learnset MOVE_DOUBLE_TEAM, 5
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_SPIDER_WEB, 7
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_TAIL_GLOW, 9
	learnset MOVE_ODOR_SLEUTH, 10
	learnset MOVE_PROTECT, 12
	learnset MOVE_THUNDER_WAVE, 13
	learnset MOVE_SHOCK_WAVE, 15
	learnset MOVE_OMINOUS_WIND, 17
	learnset MOVE_BUG_BITE, 18
	learnset MOVE_NATURAL_GIFT, 20
	learnset MOVE_DOUBLE_TEAM, 21
	learnset MOVE_THUNDER_PUNCH, 23
	learnset MOVE_BUG_BUZZ, 25
	learnset MOVE_FOCUS_PUNCH, 28
	learnset MOVE_TAILWIND, 31
	terminatelearnset

levelup SPECIES_ILLUMISE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWEET_SCENT, 3
	learnset MOVE_CHARM, 5
	learnset MOVE_MOONLIGHT, 7
	learnset MOVE_FEINT, 8
	learnset MOVE_WISH, 10
	learnset MOVE_PSYBEAM, 11
	learnset MOVE_ENCORE, 13
	learnset MOVE_BUG_BITE, 15
	learnset MOVE_SILVER_WIND, 17
	learnset MOVE_LAST_RESORT, 18
	learnset MOVE_PSYCHO_CUT, 20
	learnset MOVE_BARRIER, 22
	learnset MOVE_METRONOME, 24
	learnset MOVE_U_TURN, 26
	learnset MOVE_ZEN_HEADBUTT, 27
	learnset MOVE_FOCUS_PUNCH, 28
	learnset MOVE_TAILWIND, 31
	terminatelearnset

levelup SPECIES_ROSELIA
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_GROWTH, 2
	learnset MOVE_POISON_STING, 3
	learnset MOVE_STUN_SPORE, 4
	learnset MOVE_INGRAIN, 6
	learnset MOVE_PROTECT, 8
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_MAGICAL_LEAF, 11
	learnset MOVE_SYNTHESIS, 13
	learnset MOVE_SLUDGE, 15
	learnset MOVE_CALM_MIND, 17
	learnset MOVE_HIDDEN_POWER, 19
	learnset MOVE_GRASS_KNOT, 21
	learnset MOVE_SLEEP_POWDER, 23
	learnset MOVE_TOXIC, 25
	learnset MOVE_TOXIC_SPIKES, 27
	learnset MOVE_PETAL_DANCE, 29
	terminatelearnset

levelup SPECIES_GULPIN
	learnset MOVE_POUND, 1
	learnset MOVE_YAWN, 2
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_SLUDGE, 6
	learnset MOVE_AMNESIA, 7
	learnset MOVE_ENCORE, 9
	learnset MOVE_STOCKPILE, 11
	learnset MOVE_SPIT_UP, 12
	learnset MOVE_DEFENSE_CURL, 13
	learnset MOVE_ROLLOUT, 14
	learnset MOVE_MUD_BOMB, 16
	learnset MOVE_REST, 18
	learnset MOVE_ACID_ARMOR, 19
	learnset MOVE_SLUDGE_BOMB, 21
	learnset MOVE_SLACK_OFF, 22
	learnset MOVE_COUNTER, 24
	learnset MOVE_BODY_SLAM, 25
	learnset MOVE_PAIN_SPLIT, 27
	learnset MOVE_GIGA_DRAIN, 29
	learnset MOVE_GUNK_SHOT, 32
	terminatelearnset

levelup SPECIES_SWALOT
	learnset MOVE_POUND, 1
	learnset MOVE_YAWN, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_SLUDGE, 1
	learnset MOVE_YAWN, 6
	learnset MOVE_POISON_GAS, 9
	learnset MOVE_SLUDGE, 14
	learnset MOVE_AMNESIA, 17
	learnset MOVE_ENCORE, 23
	learnset MOVE_BODY_SLAM, 26
	learnset MOVE_TOXIC, 30
	learnset MOVE_STOCKPILE, 38
	learnset MOVE_SPIT_UP, 38
	learnset MOVE_SWALLOW, 38
	learnset MOVE_SLUDGE_BOMB, 45
	learnset MOVE_GASTRO_ACID, 52
	learnset MOVE_WRING_OUT, 59
	learnset MOVE_GUNK_SHOT, 66
	terminatelearnset

levelup SPECIES_CARVANHA
	learnset MOVE_LEER, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_BITE, 5
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_AQUA_JET, 7
	learnset MOVE_SCARY_FACE, 8
	learnset MOVE_ICE_FANG, 9
	learnset MOVE_SWAGGER, 11
	learnset MOVE_SNORE, 12
	learnset MOVE_BRINE, 14
	learnset MOVE_EMBARGO, 15
	learnset MOVE_AGILITY, 17
	learnset MOVE_THRASH, 19
	learnset MOVE_DETECT, 21
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_DIVE, 27
	learnset MOVE_HYPER_FANG, 30
	terminatelearnset

levelup SPECIES_SHARPEDO
	learnset MOVE_FEINT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_BITE, 1
	learnset MOVE_RAGE, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_RAGE, 6
	learnset MOVE_FOCUS_ENERGY, 8
	learnset MOVE_SCARY_FACE, 11
	learnset MOVE_ICE_FANG, 16
	learnset MOVE_SCREECH, 18
	learnset MOVE_SWAGGER, 21
	learnset MOVE_ASSURANCE, 26
	learnset MOVE_CRUNCH, 28
	learnset MOVE_SLASH, 30
	learnset MOVE_AQUA_JET, 34
	learnset MOVE_TAUNT, 40
	learnset MOVE_AGILITY, 45
	learnset MOVE_SKULL_BASH, 50
	learnset MOVE_NIGHT_SLASH, 56
	terminatelearnset

levelup SPECIES_WAILMER
	learnset MOVE_SPLASH, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_ROLLOUT, 5
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_ICE_BALL, 8
	learnset MOVE_AMNESIA, 10
	learnset MOVE_TICKLE, 12
	learnset MOVE_REST, 14
	learnset MOVE_BRINE, 15
	learnset MOVE_AVALANCHE, 17
	learnset MOVE_CHARM, 18
	learnset MOVE_DIVE, 20
	learnset MOVE_BOUNCE, 22
	learnset MOVE_BODY_SLAM, 24
	learnset MOVE_CAPTIVATE, 26
	learnset MOVE_WATER_SPOUT, 30
	terminatelearnset

levelup SPECIES_WAILORD
	learnset MOVE_SPLASH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_ROLLOUT, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_ROLLOUT, 11
	learnset MOVE_WHIRLPOOL, 14
	learnset MOVE_ASTONISH, 17
	learnset MOVE_WATER_PULSE, 21
	learnset MOVE_MIST, 24
	learnset MOVE_REST, 27
	learnset MOVE_BRINE, 31
	learnset MOVE_WATER_SPOUT, 34
	learnset MOVE_AMNESIA, 37
	learnset MOVE_CAPTIVATE, 46
	learnset MOVE_BOUNCE, 54
	learnset MOVE_HYDRO_PUMP, 62
	terminatelearnset

levelup SPECIES_NUMEL
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_MAGNITUDE, 11
	learnset MOVE_FOCUS_ENERGY, 15
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_AMNESIA, 25
	learnset MOVE_LAVA_PLUME, 31
	learnset MOVE_EARTH_POWER, 35
	learnset MOVE_EARTHQUAKE, 41
	learnset MOVE_FLAMETHROWER, 45
	learnset MOVE_DOUBLE_EDGE, 51
	terminatelearnset

levelup SPECIES_CAMERUPT
	learnset MOVE_GROWL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_MAGNITUDE, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_MAGNITUDE, 11
	learnset MOVE_FOCUS_ENERGY, 15
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_AMNESIA, 25
	learnset MOVE_LAVA_PLUME, 31
	learnset MOVE_ROCK_SLIDE, 33
	learnset MOVE_EARTH_POWER, 39
	learnset MOVE_EARTHQUAKE, 49
	learnset MOVE_ERUPTION, 57
	learnset MOVE_FISSURE, 67
	terminatelearnset

levelup SPECIES_TORKOAL
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOG, 4
	learnset MOVE_WITHDRAW, 7
	learnset MOVE_CURSE, 12
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_SMOKESCREEN, 20
	learnset MOVE_RAPID_SPIN, 23
	learnset MOVE_FLAMETHROWER, 28
	learnset MOVE_BODY_SLAM, 33
	learnset MOVE_PROTECT, 36
	learnset MOVE_LAVA_PLUME, 39
	learnset MOVE_IRON_DEFENSE, 44
	learnset MOVE_AMNESIA, 49
	learnset MOVE_FLAIL, 52
	learnset MOVE_HEAT_WAVE, 55
	terminatelearnset

levelup SPECIES_SPOINK
	learnset MOVE_SPLASH, 1
	learnset MOVE_PSYWAVE, 3
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_CONFUSION, 5
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_MIRROR_COAT, 8
	learnset MOVE_REST, 10
	learnset MOVE_SLEEP_TALK, 11
	learnset MOVE_PSYBEAM, 12
	learnset MOVE_BOUNCE, 14
	learnset MOVE_EMBARGO, 15
	learnset MOVE_AMNESIA, 17
	learnset MOVE_FUTURE_SIGHT, 19
	learnset MOVE_TRICK, 21
	learnset MOVE_LUSTER_PURGE, 23
	learnset MOVE_LIGHT_SCREEN, 25
	learnset MOVE_REFLECT, 26
	learnset MOVE_MIST_BALL, 29
	terminatelearnset

levelup SPECIES_GRUMPIG
	learnset MOVE_SPLASH, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_PSYBEAM, 1
	learnset MOVE_PSYWAVE, 7
	learnset MOVE_ODOR_SLEUTH, 10
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_PSYCH_UP, 15
	learnset MOVE_CONFUSE_RAY, 18
	learnset MOVE_MAGIC_COAT, 21
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_REST, 29
	learnset MOVE_SNORE, 29
	learnset MOVE_PAYBACK, 37
	learnset MOVE_PSYCHIC, 47
	learnset MOVE_POWER_GEM, 55
	learnset MOVE_BOUNCE, 60
	terminatelearnset

levelup SPECIES_SPINDA
	learnset MOVE_TACKLE, 1
	learnset MOVE_UPROAR, 3
	learnset MOVE_COPYCAT, 5
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_PSYBEAM, 8
	learnset MOVE_HYPNOSIS, 10
	learnset MOVE_DIZZY_PUNCH, 10
	learnset MOVE_SNORE, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_PSYCH_UP, 15
	learnset MOVE_FLAIL, 17
	learnset MOVE_GRAVITY, 18
	learnset MOVE_THRASH, 20
	learnset MOVE_TEETER_DANCE, 22
	learnset MOVE_SUCKER_PUNCH, 23
	learnset MOVE_LAST_RESORT, 24
	learnset MOVE_DYNAMIC_PUNCH, 26
	learnset MOVE_DOUBLE_EDGE, 31
	terminatelearnset

levelup SPECIES_TRAPINCH
	learnset MOVE_BITE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_FEINT_ATTACK, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_SANDSTORM, 9
	learnset MOVE_BUG_BITE, 11
	learnset MOVE_FOCUS_ENERGY, 13
	learnset MOVE_FEINT, 15
	learnset MOVE_MUD_SPORT, 17
	learnset MOVE_FLAIL, 19
	learnset MOVE_PROTECT, 20
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_CRUNCH, 24
	terminatelearnset

levelup SPECIES_VIBRAVA
	learnset MOVE_BITE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_FEINT_ATTACK, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_SANDSTORM, 9
	learnset MOVE_BUG_BITE, 11
	learnset MOVE_FOCUS_ENERGY, 13
	learnset MOVE_FEINT, 15
	learnset MOVE_MUD_SPORT, 17
	learnset MOVE_FLAIL, 19
	learnset MOVE_PROTECT, 20
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_DRAGON_BREATH, 24
	learnset MOVE_BUG_BUZZ, 26
	learnset MOVE_OUTRAGE, 27
	learnset MOVE_MAGNITUDE, 28
	learnset MOVE_U_TURN, 29
	learnset MOVE_EARTH_POWER, 30
	learnset MOVE_STEEL_WING, 31
	terminatelearnset

levelup SPECIES_FLYGON
	learnset MOVE_SONIC_BOOM, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_FEINT_ATTACK, 1
	learnset MOVE_SAND_TOMB, 1
	learnset MOVE_SAND_ATTACK, 9
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_SAND_TOMB, 25
	learnset MOVE_SUPERSONIC, 33
	learnset MOVE_DRAGON_BREATH, 35
	learnset MOVE_SCREECH, 41
	learnset MOVE_DRAGON_CLAW, 45
	learnset MOVE_SANDSTORM, 49
	learnset MOVE_HYPER_BEAM, 57
	terminatelearnset

levelup SPECIES_CACNEA
	learnset MOVE_POISON_STING, 1
	learnset MOVE_LEER, 2
	learnset MOVE_ABSORB, 4
	learnset MOVE_GROWTH, 5
	learnset MOVE_LEECH_SEED, 6
	learnset MOVE_MUD_SLAP, 8
	learnset MOVE_PIN_MISSILE, 9
	learnset MOVE_INGRAIN, 10
	learnset MOVE_FEINT_ATTACK, 12
	learnset MOVE_NEEDLE_ARM, 14
	learnset MOVE_PAYBACK, 15
	learnset MOVE_MEGA_PUNCH, 16
	learnset MOVE_COTTON_SPORE, 17
	learnset MOVE_DRAIN_PUNCH, 19
	learnset MOVE_SANDSTORM, 21
	learnset MOVE_GIGA_DRAIN, 24
	learnset MOVE_GRASS_KNOT, 26
	learnset MOVE_SUCKER_PUNCH, 29
	terminatelearnset

levelup SPECIES_CACTURNE
	learnset MOVE_REVENGE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_GROWTH, 9
	learnset MOVE_LEECH_SEED, 13
	learnset MOVE_SAND_ATTACK, 17
	learnset MOVE_PIN_MISSILE, 21
	learnset MOVE_INGRAIN, 25
	learnset MOVE_FEINT_ATTACK, 29
	learnset MOVE_SPIKES, 35
	learnset MOVE_SUCKER_PUNCH, 41
	learnset MOVE_PAYBACK, 47
	learnset MOVE_NEEDLE_ARM, 53
	learnset MOVE_COTTON_SPORE, 59
	learnset MOVE_SANDSTORM, 65
	learnset MOVE_DESTINY_BOND, 71
	terminatelearnset

levelup SPECIES_SWABLU
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SNORE, 3
	learnset MOVE_SING, 5
	learnset MOVE_PECK, 7
	learnset MOVE_SAFEGUARD, 9
	learnset MOVE_FURY_ATTACK, 11
	learnset MOVE_COTTON_SPORE, 13
	learnset MOVE_MIRROR_MOVE, 15
	learnset MOVE_DRAGON_BREATH, 17
	learnset MOVE_AERIAL_ACE, 18
	learnset MOVE_PERISH_SONG, 19
	learnset MOVE_AIR_SLASH, 21
	learnset MOVE_DRAGON_PULSE, 23
	learnset MOVE_BODY_SLAM, 25
	learnset MOVE_ROOST, 26
	learnset MOVE_DRAGON_RUSH, 28
	learnset MOVE_DOUBLE_EDGE, 31
	terminatelearnset

levelup SPECIES_ALTARIA
	learnset MOVE_PLUCK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SING, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_SING, 9
	learnset MOVE_FURY_ATTACK, 13
	learnset MOVE_SAFEGUARD, 18
	learnset MOVE_MIST, 23
	learnset MOVE_TAKE_DOWN, 28
	learnset MOVE_NATURAL_GIFT, 32
	learnset MOVE_DRAGON_BREATH, 35
	learnset MOVE_DRAGON_DANCE, 39
	learnset MOVE_REFRESH, 46
	learnset MOVE_DRAGON_PULSE, 54
	learnset MOVE_PERISH_SONG, 62
	learnset MOVE_SKY_ATTACK, 70
	terminatelearnset

levelup SPECIES_ZANGOOSE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_NIGHT_SLASH, 5
	learnset MOVE_REVENGE, 9
	learnset MOVE_FACADE, 14
	learnset MOVE_SLASH, 18
	learnset MOVE_PURSUIT, 22
	learnset MOVE_EMBARGO, 27
	learnset MOVE_CRUSH_CLAW, 31
	learnset MOVE_TAUNT, 35
	learnset MOVE_DETECT, 40
	learnset MOVE_FALSE_SWIPE, 44
	learnset MOVE_X_SCISSOR, 48
	learnset MOVE_CLOSE_COMBAT, 53
	terminatelearnset

levelup SPECIES_SEVIPER
	learnset MOVE_CRUNCH, 1
	learnset MOVE_FIRE_FANG, 7
	learnset MOVE_THUNDER_FANG, 10
	learnset MOVE_POISON_FANG, 15
	learnset MOVE_SCREECH, 19
	learnset MOVE_GLARE, 25
	learnset MOVE_CRUNCH, 28
	learnset MOVE_POISON_FANG, 34
	learnset MOVE_SWAGGER, 37
	learnset MOVE_HAZE, 43
	learnset MOVE_NIGHT_SLASH, 46
	learnset MOVE_POISON_JAB, 52
	learnset MOVE_WRING_OUT, 55
	terminatelearnset

levelup SPECIES_LUNATONE
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_HYPNOSIS, 12
	learnset MOVE_ROCK_POLISH, 20
	learnset MOVE_PSYWAVE, 23
	learnset MOVE_EMBARGO, 31
	learnset MOVE_COSMIC_POWER, 34
	learnset MOVE_HEAL_BLOCK, 42
	learnset MOVE_PSYCHIC, 45
	learnset MOVE_FUTURE_SIGHT, 53
	learnset MOVE_EXPLOSION, 56
	terminatelearnset

levelup SPECIES_SOLROCK
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_FIRE_SPIN, 12
	learnset MOVE_ROCK_POLISH, 20
	learnset MOVE_PSYWAVE, 23
	learnset MOVE_EMBARGO, 31
	learnset MOVE_COSMIC_POWER, 34
	learnset MOVE_HEAL_BLOCK, 42
	learnset MOVE_ROCK_SLIDE, 45
	learnset MOVE_SOLAR_BEAM, 53
	learnset MOVE_EXPLOSION, 56
	terminatelearnset

levelup SPECIES_BARBOACH
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SANDSTORM, 2
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_AMNESIA, 5
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SWAGGER, 8
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_REST, 11
	learnset MOVE_WATER_PULSE, 12
	learnset MOVE_MUD_BOMB, 14
	learnset MOVE_FLAIL, 16
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_CAPTIVATE, 18
	learnset MOVE_SLEEP_TALK, 19
	learnset MOVE_WATER_SPORT, 20
	learnset MOVE_MUD_SPORT, 22
	learnset MOVE_RAIN_DANCE, 23
	learnset MOVE_SHEER_COLD, 26
	learnset MOVE_BOUNCE, 29
	terminatelearnset

levelup SPECIES_WHISCASH
	learnset MOVE_ZEN_HEADBUTT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_MUD_SPORT, 6
	learnset MOVE_WATER_SPORT, 6
	learnset MOVE_WATER_GUN, 10
	learnset MOVE_MUD_BOMB, 14
	learnset MOVE_AMNESIA, 18
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_MAGNITUDE, 26
	learnset MOVE_REST, 33
	learnset MOVE_SNORE, 33
	learnset MOVE_AQUA_TAIL, 39
	learnset MOVE_EARTHQUAKE, 45
	learnset MOVE_FUTURE_SIGHT, 51
	learnset MOVE_FISSURE, 57
	terminatelearnset

levelup SPECIES_CORPHISH
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_VICE_GRIP, 4
	learnset MOVE_LEER, 5
	learnset MOVE_CLAMP, 6
	learnset MOVE_PROTECT, 8
	learnset MOVE_KNOCK_OFF, 9
	learnset MOVE_TAUNT, 11
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_FURY_CUTTER, 14
	learnset MOVE_AERIAL_ACE, 16
	learnset MOVE_PAYBACK, 18
	learnset MOVE_SWAGGER, 19
	learnset MOVE_CRABHAMMER, 22
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_GUILLOTINE, 29
	terminatelearnset

levelup SPECIES_CRAWDAUNT
	learnset MOVE_BUBBLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_VICE_GRIP, 1
	learnset MOVE_LEER, 1
	learnset MOVE_HARDEN, 7
	learnset MOVE_VICE_GRIP, 10
	learnset MOVE_LEER, 13
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_PROTECT, 23
	learnset MOVE_KNOCK_OFF, 26
	learnset MOVE_SWIFT, 30
	learnset MOVE_TAUNT, 34
	learnset MOVE_NIGHT_SLASH, 39
	learnset MOVE_CRABHAMMER, 44
	learnset MOVE_SWORDS_DANCE, 52
	learnset MOVE_CRUNCH, 57
	learnset MOVE_GUILLOTINE, 65
	terminatelearnset

levelup SPECIES_BALTOY
	learnset MOVE_CONFUSION, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_STEALTH_ROCK, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_ROCK_POLISH, 8
	learnset MOVE_ROCK_BLAST, 9
	learnset MOVE_POWER_TRICK, 10
	learnset MOVE_MUD_SHOT, 12
	learnset MOVE_COSMIC_POWER, 13
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_ANCIENT_POWER, 16
	learnset MOVE_SELF_DESTRUCT, 17
	learnset MOVE_EXTRASENSORY, 19
	learnset MOVE_MUD_SPORT, 21
	learnset MOVE_COSMIC_POWER, 23
	learnset MOVE_MIRROR_COAT, 24
	learnset MOVE_DIG, 26
	learnset MOVE_EXPLOSION, 30
	terminatelearnset

levelup SPECIES_CLAYDOL
	learnset MOVE_TELEPORT, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_RAPID_SPIN, 5
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_PSYBEAM, 11
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_SELF_DESTRUCT, 19
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_POWER_TRICK, 31
	learnset MOVE_HYPER_BEAM, 36
	learnset MOVE_SANDSTORM, 40
	learnset MOVE_COSMIC_POWER, 51
	learnset MOVE_EARTH_POWER, 62
	learnset MOVE_HEAL_BLOCK, 73
	learnset MOVE_EXPLOSION, 86
	terminatelearnset

levelup SPECIES_LILEEP
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 2
	learnset MOVE_ACID, 3
	learnset MOVE_INGRAIN, 5
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_ANCIENT_POWER, 9
	learnset MOVE_LEECH_SEED, 11
	learnset MOVE_MEGA_DRAIN, 13
	learnset MOVE_IRON_DEFENSE, 14
	learnset MOVE_SANDSTORM, 16
	learnset MOVE_SWALLOW, 18
	learnset MOVE_GIGA_DRAIN, 20
	learnset MOVE_STEALTH_ROCK, 22
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_WATER_PULSE, 26
	learnset MOVE_MUD_SPORT, 28
	learnset MOVE_SEED_BOMB, 31
	terminatelearnset

levelup SPECIES_CRADILY
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_ACID, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_ACID, 8
	learnset MOVE_INGRAIN, 15
	learnset MOVE_CONFUSE_RAY, 22
	learnset MOVE_AMNESIA, 29
	learnset MOVE_ANCIENT_POWER, 36
	learnset MOVE_GASTRO_ACID, 46
	learnset MOVE_ENERGY_BALL, 56
	learnset MOVE_STOCKPILE, 66
	learnset MOVE_SPIT_UP, 66
	learnset MOVE_SWALLOW, 66
	learnset MOVE_WRING_OUT, 76
	terminatelearnset

levelup SPECIES_ANORITH
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_ODOR_SLEUTH, 4
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_METAL_CLAW, 6
	learnset MOVE_PROTECT, 8
	learnset MOVE_ANCIENT_POWER, 9
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_SLASH, 13
	learnset MOVE_ROCK_BLAST, 14
	learnset MOVE_AERIAL_ACE, 16
	learnset MOVE_CRUSH_CLAW, 18
	learnset MOVE_ROCK_TOMB, 20
	learnset MOVE_BUG_BITE, 22
	learnset MOVE_WATER_PULSE, 24
	learnset MOVE_IRON_DEFENSE, 26
	learnset MOVE_STEALTH_ROCK, 28
	learnset MOVE_ROCK_SLIDE, 31
	terminatelearnset

levelup SPECIES_ARMALDO
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_MUD_SPORT, 7
	learnset MOVE_WATER_GUN, 13
	learnset MOVE_METAL_CLAW, 19
	learnset MOVE_PROTECT, 25
	learnset MOVE_ANCIENT_POWER, 31
	learnset MOVE_FURY_CUTTER, 37
	learnset MOVE_SLASH, 46
	learnset MOVE_ROCK_BLAST, 55
	learnset MOVE_CRUSH_CLAW, 67
	learnset MOVE_X_SCISSOR, 73
	terminatelearnset

levelup SPECIES_FEEBAS
	learnset MOVE_SPLASH, 1
	learnset MOVE_RAIN_DANCE, 2
	learnset MOVE_BUBBLE, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_AQUA_RING, 10
	learnset MOVE_ENDURE, 11
	learnset MOVE_BITE, 13
	learnset MOVE_WATER_PULSE, 14
	learnset MOVE_DIVE, 16
	learnset MOVE_ICE_FANG, 18
	learnset MOVE_DOUBLE_EDGE, 19
	learnset MOVE_DRAGON_DANCE, 21
	learnset MOVE_WATER_SPORT, 22
	learnset MOVE_SHEER_COLD, 24
	learnset MOVE_PROTECT, 25
	learnset MOVE_HYDRO_PUMP, 27
	learnset MOVE_ICE_BEAM, 29
	learnset MOVE_EXPLOSION, 30
	terminatelearnset

levelup SPECIES_MILOTIC
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_WATER_SPORT, 5
	learnset MOVE_REFRESH, 9
	learnset MOVE_WATER_PULSE, 13
	learnset MOVE_TWISTER, 17
	learnset MOVE_RECOVER, 21
	learnset MOVE_CAPTIVATE, 25
	learnset MOVE_AQUA_TAIL, 29
	learnset MOVE_RAIN_DANCE, 33
	learnset MOVE_HYDRO_PUMP, 37
	learnset MOVE_ATTRACT, 41
	learnset MOVE_SAFEGUARD, 45
	learnset MOVE_AQUA_RING, 49
	terminatelearnset

levelup SPECIES_CASTFORM
	learnset MOVE_SUNNY_DAY, 1
	learnset MOVE_RAIN_DANCE, 2
	learnset MOVE_SANDSTORM, 3
	learnset MOVE_HAIL, 4
	learnset MOVE_EMBER, 6
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_ICY_WIND, 10
	learnset MOVE_WEATHER_BALL, 11
	learnset MOVE_HIDDEN_POWER, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_FLAME_WHEEL, 15
	learnset MOVE_AURORA_BEAM, 16
	learnset MOVE_CALM_MIND, 18
	learnset MOVE_TRI_ATTACK, 19
	learnset MOVE_WATER_SPORT, 22
	learnset MOVE_NATURAL_GIFT, 24
	learnset MOVE_FLAMETHROWER, 26
	learnset MOVE_ICE_BEAM, 28
	learnset MOVE_ENDURE, 30
	learnset MOVE_SELF_DESTRUCT, 31
	terminatelearnset

levelup SPECIES_KECLEON
	learnset MOVE_THIEF, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_LICK, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_BIND, 4
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_FEINT, 14
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_SHADOW_SNEAK, 22
	learnset MOVE_SLASH, 27
	learnset MOVE_SCREECH, 32
	learnset MOVE_SUBSTITUTE, 37
	learnset MOVE_SUCKER_PUNCH, 43
	learnset MOVE_SHADOW_CLAW, 49
	learnset MOVE_ANCIENT_POWER, 55
	terminatelearnset

levelup SPECIES_SHUPPET
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SCREECH, 2
	learnset MOVE_NIGHT_SHADE, 4
	learnset MOVE_CURSE, 5
	learnset MOVE_SPITE, 6
	learnset MOVE_MEMENTO, 8
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_EMBARGO, 11
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_SHOCK_WAVE, 15
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_KNOCK_OFF, 18
	learnset MOVE_SWAGGER, 19
	learnset MOVE_SUCKER_PUNCH, 21
	learnset MOVE_TRICK_ROOM, 24
	learnset MOVE_DESTINY_BOND, 25
	learnset MOVE_SHADOW_BALL, 27
	terminatelearnset

levelup SPECIES_BANETTE
	learnset MOVE_MEMENTO, 1
	learnset MOVE_NIGHT_SHADE, 5
	learnset MOVE_KNOCK_OFF, 8
	learnset MOVE_MEGA_PUNCH, 8
	learnset MOVE_SHADOW_SNEAK, 8
	learnset MOVE_BULK_UP, 8
	learnset MOVE_CURSE, 13
	learnset MOVE_SPITE, 16
	learnset MOVE_SHADOW_SNEAK, 20
	learnset MOVE_WILL_O_WISP, 23
	learnset MOVE_FEINT_ATTACK, 28
	learnset MOVE_SHADOW_BALL, 31
	learnset MOVE_SUCKER_PUNCH, 35
	learnset MOVE_EMBARGO, 42
	learnset MOVE_SNATCH, 51
	learnset MOVE_GRUDGE, 58
	learnset MOVE_TRICK, 66
	terminatelearnset

levelup SPECIES_DUSKULL
	learnset MOVE_LICK, 1
	learnset MOVE_NIGHT_SHADE, 2
	learnset MOVE_DISABLE, 3
	learnset MOVE_CONFUSE_RAY, 4
	learnset MOVE_SHADOW_SNEAK, 6
	learnset MOVE_TAUNT, 8
	learnset MOVE_MEMENTO, 9
	learnset MOVE_WILL_O_WISP, 11
	learnset MOVE_PAYBACK, 12
	learnset MOVE_FUTURE_SIGHT, 13
	learnset MOVE_SHADOW_PUNCH, 14
	learnset MOVE_EMBARGO, 16
	learnset MOVE_CURSE, 17
	learnset MOVE_SHADOW_CLAW, 18
	learnset MOVE_MIRACLE_EYE, 19
	learnset MOVE_SHADOW_BALL, 20
	learnset MOVE_PAIN_SPLIT, 22
	learnset MOVE_DARK_PULSE, 23
	learnset MOVE_SPITE, 24
	terminatelearnset

levelup SPECIES_DUSCLOPS
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_GRAVITY, 1
	learnset MOVE_BIND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_NIGHT_SHADE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_DISABLE, 6
	learnset MOVE_FORESIGHT, 9
	learnset MOVE_ASTONISH, 14
	learnset MOVE_CONFUSE_RAY, 17
	learnset MOVE_SHADOW_SNEAK, 22
	learnset MOVE_PURSUIT, 25
	learnset MOVE_CURSE, 30
	learnset MOVE_WILL_O_WISP, 33
	learnset MOVE_SHADOW_PUNCH, 37
	learnset MOVE_MEAN_LOOK, 43
	learnset MOVE_PAYBACK, 51
	learnset MOVE_FUTURE_SIGHT, 61
	terminatelearnset

levelup SPECIES_TROPIUS
	learnset MOVE_LEER, 1
	learnset MOVE_GUST, 1
	learnset MOVE_GROWTH, 7
	learnset MOVE_RAZOR_LEAF, 11
	learnset MOVE_STOMP, 17
	learnset MOVE_SWEET_SCENT, 21
	learnset MOVE_WHIRLWIND, 27
	learnset MOVE_MAGICAL_LEAF, 31
	learnset MOVE_BODY_SLAM, 37
	learnset MOVE_SYNTHESIS, 41
	learnset MOVE_AIR_SLASH, 47
	learnset MOVE_SOLAR_BEAM, 51
	learnset MOVE_NATURAL_GIFT, 57
	learnset MOVE_LEAF_STORM, 61
	terminatelearnset

levelup SPECIES_CHIMECHO
	learnset MOVE_WRAP, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_ASTONISH, 3
	learnset MOVE_UPROAR, 5
	learnset MOVE_CONFUSION, 6
	learnset MOVE_SWIFT, 8
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_KNOCK_OFF, 11
	learnset MOVE_ABSORB, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_AGILITY, 17
	learnset MOVE_GRAVITY, 19
	learnset MOVE_SIGNAL_BEAM, 21
	learnset MOVE_REFLECT, 22
	learnset MOVE_LIGHT_SCREEN, 23
	learnset MOVE_EXTRASENSORY, 25
	learnset MOVE_FLASH, 27
	learnset MOVE_LUSTER_PURGE, 29
	learnset MOVE_YAWN, 31
	terminatelearnset

levelup SPECIES_ABSOL
	learnset MOVE_SCRATCH, 1
	learnset MOVE_DOUBLE_TEAM, 3
	learnset MOVE_SNARL, 5
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_SWAGGER, 9
	learnset MOVE_PERISH_SONG, 13
	learnset MOVE_CUT, 17
	learnset MOVE_BRUTAL_SWING, 20
	learnset MOVE_FEINT, 24
	learnset MOVE_EMBARGO, 29
	learnset MOVE_SPIRIT_BREAK, 33
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_PSYCHO_CUT, 39
	learnset MOVE_HONE_CLAWS, 43
	learnset MOVE_NIGHT_SLASH, 47
	learnset MOVE_X_SCISSOR, 51
	learnset MOVE_SUCKER_PUNCH, 54
	learnset MOVE_MEGAHORN, 57
	learnset MOVE_CLOSE_COMBAT, 61
	terminatelearnset

levelup SPECIES_WYNAUT
	learnset MOVE_SPLASH, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_ENCORE, 3
	learnset MOVE_COUNTER, 5
	learnset MOVE_MIRROR_COAT, 7
	learnset MOVE_SAFEGUARD, 9
	learnset MOVE_DESTINY_BOND, 15
	terminatelearnset

levelup SPECIES_SNORUNT
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LEER, 3
	learnset MOVE_BITE, 5
	learnset MOVE_DOUBLE_TEAM, 7
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_LIGHT_SCREEN, 11
	learnset MOVE_ICE_SHARD, 12
	learnset MOVE_ICE_FANG, 13
	learnset MOVE_WATER_PULSE, 15
	learnset MOVE_SHEER_COLD, 17
	learnset MOVE_HAIL, 18
	learnset MOVE_AVALANCHE, 19
	learnset MOVE_CRUNCH, 21
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_SHADOW_BALL, 24
	learnset MOVE_AMNESIA, 26
	learnset MOVE_BLIZZARD, 27
	learnset MOVE_DESTINY_BOND, 29
	learnset MOVE_PERISH_SONG, 31
	terminatelearnset

levelup SPECIES_GLALIE
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LEER, 1
	learnset MOVE_DOUBLE_TEAM, 1
	learnset MOVE_BITE, 1
	learnset MOVE_DOUBLE_TEAM, 4
	learnset MOVE_BITE, 10
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_PROTECT, 22
	learnset MOVE_ICE_FANG, 28
	learnset MOVE_CRUNCH, 31
	learnset MOVE_ICE_BEAM, 37
	learnset MOVE_HAIL, 40
	learnset MOVE_BLIZZARD, 51
	learnset MOVE_SHEER_COLD, 59
	terminatelearnset

levelup SPECIES_SPHEAL
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_POWDER_SNOW, 3
	learnset MOVE_GROWL, 4
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ENCORE, 7
	learnset MOVE_ICE_BALL, 8
	learnset MOVE_ICY_WIND, 10
	learnset MOVE_HAIL, 11
	learnset MOVE_REST, 13
	learnset MOVE_SHEER_COLD, 15
	learnset MOVE_WATER_PULSE, 17
	learnset MOVE_ROLLOUT, 18
	learnset MOVE_BRINE, 20
	learnset MOVE_AURORA_BEAM, 21
	learnset MOVE_STOCKPILE, 23
	learnset MOVE_YAWN, 24
	terminatelearnset

levelup SPECIES_SEALEO
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_POWDER_SNOW, 3
	learnset MOVE_GROWL, 4
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ENCORE, 7
	learnset MOVE_ICE_BALL, 8
	learnset MOVE_ICY_WIND, 10
	learnset MOVE_HAIL, 11
	learnset MOVE_REST, 13
	learnset MOVE_SHEER_COLD, 15
	learnset MOVE_WATER_PULSE, 17
	learnset MOVE_ROLLOUT, 18
	learnset MOVE_BRINE, 20
	learnset MOVE_AURORA_BEAM, 21
	learnset MOVE_STOCKPILE, 23
	learnset MOVE_YAWN, 24
	learnset MOVE_WATER_SPORT, 25
	learnset MOVE_SNORE, 26
	learnset MOVE_ICE_BEAM, 28
	learnset MOVE_MUDDY_WATER, 31
	terminatelearnset

levelup SPECIES_WALREIN
	learnset MOVE_CRUNCH, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_ENCORE, 1
	learnset MOVE_ENCORE, 7
	learnset MOVE_ICE_BALL, 13
	learnset MOVE_BODY_SLAM, 19
	learnset MOVE_AURORA_BEAM, 25
	learnset MOVE_HAIL, 31
	learnset MOVE_SWAGGER, 32
	learnset MOVE_REST, 39
	learnset MOVE_SNORE, 39
	learnset MOVE_ICE_FANG, 44
	learnset MOVE_BLIZZARD, 52
	learnset MOVE_SHEER_COLD, 65
	terminatelearnset

levelup SPECIES_CLAMPERL
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_IRON_DEFENSE, 3
	learnset MOVE_WHIRLPOOL, 4
	learnset MOVE_IRON_DEFENSE, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_CLAMP, 11
	learnset MOVE_SELF_DESTRUCT, 12
	learnset MOVE_BATON_PASS, 14
	learnset MOVE_CALM_MIND, 16
	learnset MOVE_WATER_SPORT, 18
	learnset MOVE_SHEER_COLD, 20
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_MUDDY_WATER, 26
	learnset MOVE_ICE_BEAM, 30
	terminatelearnset

levelup SPECIES_HUNTAIL
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_BITE, 6
	learnset MOVE_SCREECH, 10
	learnset MOVE_WATER_PULSE, 15
	learnset MOVE_SCARY_FACE, 19
	learnset MOVE_ICE_FANG, 24
	learnset MOVE_BRINE, 28
	learnset MOVE_BATON_PASS, 33
	learnset MOVE_DIVE, 37
	learnset MOVE_CRUNCH, 42
	learnset MOVE_AQUA_TAIL, 46
	learnset MOVE_HYDRO_PUMP, 51
	terminatelearnset

levelup SPECIES_GOREBYSS
	learnset MOVE_WHIRLPOOL, 1
	learnset MOVE_CONFUSION, 6
	learnset MOVE_AGILITY, 10
	learnset MOVE_WATER_PULSE, 15
	learnset MOVE_AMNESIA, 19
	learnset MOVE_AQUA_RING, 24
	learnset MOVE_CAPTIVATE, 28
	learnset MOVE_BATON_PASS, 33
	learnset MOVE_DIVE, 37
	learnset MOVE_PSYCHIC, 42
	learnset MOVE_AQUA_TAIL, 46
	learnset MOVE_HYDRO_PUMP, 51
	terminatelearnset

levelup SPECIES_RELICANTH
	learnset MOVE_TACKLE, 1
	learnset MOVE_ANCIENT_POWER, 2
	learnset MOVE_BRINE, 8
	learnset MOVE_MUD_SPORT, 15
	learnset MOVE_ROCK_SLIDE, 22
	learnset MOVE_TAKE_DOWN, 29
	learnset MOVE_MUD_SPORT, 36
	learnset MOVE_ANCIENT_POWER, 43
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_DIVE, 57
	learnset MOVE_REST, 64
	learnset MOVE_HYDRO_PUMP, 71
	learnset MOVE_HEAD_SMASH, 78
	terminatelearnset

levelup SPECIES_LUVDISC
	learnset MOVE_ABSORB, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_BIDE, 5
	learnset MOVE_ATTRACT, 6
	learnset MOVE_AQUA_RING, 8
	learnset MOVE_WHIRLPOOL, 9
	learnset MOVE_SWEET_KISS, 10
	learnset MOVE_LOVELY_KISS, 12
	learnset MOVE_BRINE, 13
	learnset MOVE_HIDDEN_POWER, 15
	learnset MOVE_DOUBLE_TEAM, 17
	learnset MOVE_RAIN_DANCE, 18
	learnset MOVE_WATER_SPORT, 20
	learnset MOVE_ENDURE, 22
	learnset MOVE_SHEER_COLD, 24
	learnset MOVE_BOUNCE, 26
	learnset MOVE_AGILITY, 28
	learnset MOVE_BATON_PASS, 30
	terminatelearnset

levelup SPECIES_BAGON
	learnset MOVE_RAGE, 1
	learnset MOVE_BITE, 3
	learnset MOVE_LEER, 5
	learnset MOVE_FOCUS_ENERGY, 7
	learnset MOVE_FIRE_FANG, 9
	learnset MOVE_DRAGON_BREATH, 11
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_BRICK_BREAK, 16
	learnset MOVE_CRUNCH, 17
	learnset MOVE_THRASH, 19
	learnset MOVE_OUTRAGE, 21
	learnset MOVE_SWAGGER, 23
	learnset MOVE_FIRE_PUNCH, 25
	learnset MOVE_DRAGON_PULSE, 27
	learnset MOVE_DOUBLE_EDGE, 29
	learnset MOVE_ZEN_HEADBUTT, 31
	terminatelearnset

levelup SPECIES_SHELGON
	learnset MOVE_RAGE, 1
	learnset MOVE_BITE, 3
	learnset MOVE_LEER, 5
	learnset MOVE_FOCUS_ENERGY, 7
	learnset MOVE_FIRE_FANG, 9
	learnset MOVE_DRAGON_BREATH, 11
	learnset MOVE_SCARY_FACE, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_BRICK_BREAK, 16
	learnset MOVE_CRUNCH, 17
	learnset MOVE_THRASH, 19
	learnset MOVE_OUTRAGE, 21
	learnset MOVE_SWAGGER, 23
	learnset MOVE_FIRE_PUNCH, 25
	learnset MOVE_DRAGON_PULSE, 27
	learnset MOVE_DOUBLE_EDGE, 29
	learnset MOVE_ZEN_HEADBUTT, 31
	terminatelearnset

levelup SPECIES_SALAMENCE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_GROWTH, 17
	learnset MOVE_MEMENTO, 20
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_AGILITY, 29
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_AIR_CUTTER, 36
	learnset MOVE_EXTRASENSORY, 39
	learnset MOVE_CALM_MIND, 43
	learnset MOVE_OUTRAGE, 49
	learnset MOVE_MOONBLAST, 51
	learnset MOVE_U_TURN, 55
	learnset MOVE_DRACO_METEOR, 61
	learnset MOVE_PSYCHO_BOOST, 63
	terminatelearnset

levelup SPECIES_BELDUM
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_GYRO_BALL, 5
	learnset MOVE_FLASH, 6
	learnset MOVE_MAGNET_RISE, 7
	learnset MOVE_METAL_CLAW, 8
	learnset MOVE_REFLECT, 9
	learnset MOVE_HIDDEN_POWER, 11
	learnset MOVE_BULLET_PUNCH, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_ROCK_TOMB, 16
	learnset MOVE_ROCK_POLISH, 17
	learnset MOVE_IRON_DEFENSE, 19
	learnset MOVE_PSYCHO_CUT, 22
	learnset MOVE_BRICK_BREAK, 25
	learnset MOVE_IRON_HEAD, 28
	learnset MOVE_ZEN_HEADBUTT, 31
	terminatelearnset

levelup SPECIES_METANG
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_GYRO_BALL, 5
	learnset MOVE_FLASH, 6
	learnset MOVE_MAGNET_RISE, 7
	learnset MOVE_METAL_CLAW, 8
	learnset MOVE_REFLECT, 9
	learnset MOVE_HIDDEN_POWER, 11
	learnset MOVE_BULLET_PUNCH, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_ROCK_TOMB, 16
	learnset MOVE_ROCK_POLISH, 17
	learnset MOVE_IRON_DEFENSE, 19
	learnset MOVE_PSYCHO_CUT, 22
	learnset MOVE_BRICK_BREAK, 25
	learnset MOVE_IRON_HEAD, 28
	learnset MOVE_ZEN_HEADBUTT, 31
	terminatelearnset

levelup SPECIES_METAGROSS
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_TAKE_DOWN, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_CONFUSION, 20
	learnset MOVE_SCARY_FACE, 24
	learnset MOVE_PURSUIT, 28
	learnset MOVE_BULLET_PUNCH, 32
	learnset MOVE_PSYCHIC, 36
	learnset MOVE_IRON_DEFENSE, 40
	learnset MOVE_AGILITY, 44
	learnset MOVE_HAMMER_ARM, 45
	learnset MOVE_METEOR_MASH, 53
	learnset MOVE_ZEN_HEADBUTT, 62
	learnset MOVE_HYPER_BEAM, 71
	terminatelearnset

levelup SPECIES_REGIROCK
	learnset MOVE_LICK, 1
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_SAND_TOMB, 5
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_PROTECT, 13
	learnset MOVE_STEALTH_ROCK, 17
	learnset MOVE_THUNDER_WAVE, 20
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_POWER_UP_PUNCH, 29
	learnset MOVE_ROCK_SLIDE, 34
	learnset MOVE_CHARGE_BEAM, 37
	learnset MOVE_BULLDOZE, 41
	learnset MOVE_DRAIN_PUNCH, 45
	learnset MOVE_IRON_DEFENSE, 48
	learnset MOVE_EXPLOSION, 53
	learnset MOVE_ZAP_CANNON, 56
	learnset MOVE_IRON_HEAD, 60
	learnset MOVE_ROCK_WRECKER, 65
	terminatelearnset

levelup SPECIES_REGICE
	learnset MOVE_TACKLE, 1
	learnset MOVE_HAIL, 3
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_SEISMIC_TOSS, 7
	learnset MOVE_THUNDER_WAVE, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_AURORA_BEAM, 17
	learnset MOVE_SELF_DESTRUCT, 20
	learnset MOVE_SHOCK_WAVE, 23
	learnset MOVE_AMNESIA, 27
	learnset MOVE_AVALANCHE, 32
	learnset MOVE_ANCIENT_POWER, 36
	learnset MOVE_SUBSTITUTE, 40
	learnset MOVE_AURA_SPHERE, 44
	learnset MOVE_ZAP_CANNON, 48
	learnset MOVE_ICE_BEAM, 52
	learnset MOVE_THUNDERBOLT, 54
	learnset MOVE_EARTH_POWER, 57
	learnset MOVE_HYPER_BEAM, 62
	terminatelearnset

levelup SPECIES_REGISTEEL
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_GYRO_BALL, 5
	learnset MOVE_ROLLOUT, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_PROTECT, 16
	learnset MOVE_STOMP, 20
	learnset MOVE_ROCK_TOMB, 24
	learnset MOVE_THUNDER_WAVE, 28
	learnset MOVE_SUBSTITUTE, 32
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_FIRE_PUNCH, 39
	learnset MOVE_BODY_SLAM, 43
	learnset MOVE_IRON_HEAD, 48
	learnset MOVE_HAMMER_ARM, 51
	learnset MOVE_FISSURE, 54
	learnset MOVE_ZAP_CANNON, 58
	learnset MOVE_EXPLOSION, 62
	terminatelearnset

levelup SPECIES_LATIAS
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLATTER, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_REFRESH, 17
	learnset MOVE_WHIRLPOOL, 20
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_CHARM, 29
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_AIR_CUTTER, 36
	learnset MOVE_MIST_BALL, 39
	learnset MOVE_COSMIC_POWER, 43
	learnset MOVE_DRAGON_PULSE, 49
	learnset MOVE_DAZZLING_GLEAM, 51
	learnset MOVE_THUNDER_WAVE, 55
	learnset MOVE_DRACO_METEOR, 61
	learnset MOVE_FUTURE_SIGHT, 63
	terminatelearnset

levelup SPECIES_LATIOS
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_GROWTH, 17
	learnset MOVE_MEMENTO, 20
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_AGILITY, 29
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_AIR_CUTTER, 36
	learnset MOVE_LUSTER_PURGE, 39
	learnset MOVE_CALM_MIND, 43
	learnset MOVE_OUTRAGE, 49
	learnset MOVE_MOONBLAST, 51
	learnset MOVE_U_TURN, 55
	learnset MOVE_DRACO_METEOR, 61
	learnset MOVE_PSYCHO_BOOST, 63
	terminatelearnset

levelup SPECIES_KYOGRE
	learnset MOVE_TACKLE, 1
	learnset MOVE_AQUA_RING, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_SAFEGUARD, 7
	learnset MOVE_WHIRLPOOL, 9
	learnset MOVE_HIDDEN_POWER, 13
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_ANCIENT_POWER, 20
	learnset MOVE_BRINE, 24
	learnset MOVE_THUNDER_WAVE, 28
	learnset MOVE_SHEER_COLD, 33
	learnset MOVE_SCARY_FACE, 36
	learnset MOVE_BULLDOZE, 40
	learnset MOVE_CALM_MIND, 44
	learnset MOVE_SCALD, 48
	learnset MOVE_IRON_HEAD, 51
	learnset MOVE_ICE_BEAM, 54
	learnset MOVE_ORIGIN_PULSE, 58
	learnset MOVE_THUNDER, 60
	terminatelearnset

levelup SPECIES_GROUDON
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_SEISMIC_TOSS, 7
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_ROCK_BLAST, 13
	learnset MOVE_METAL_CLAW, 17
	learnset MOVE_MUD_BOMB, 20
	learnset MOVE_FLAME_CHARGE, 24
	learnset MOVE_HONE_CLAWS, 28
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_FIRE_FANG, 36
	learnset MOVE_THUNDER_PUNCH, 40
	learnset MOVE_DRAGON_CLAW, 44
	learnset MOVE_PRECIPICE_BLADES, 48
	learnset MOVE_HEAVY_SLAM, 51
	learnset MOVE_SOLAR_BEAM, 54
	learnset MOVE_EARTHQUAKE, 58
	learnset MOVE_OVERHEAT, 60
	terminatelearnset

levelup SPECIES_RAYQUAZA
	learnset MOVE_POUND, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_WHIRLPOOL, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_GUST, 9
	learnset MOVE_DEFOG, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_AIR_CUTTER, 20
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_HONE_CLAWS, 29
	learnset MOVE_AERIAL_ACE, 32
	learnset MOVE_AVALANCHE, 36
	learnset MOVE_AIR_SLASH, 40
	learnset MOVE_OUTRAGE, 44
	learnset MOVE_ROOST, 49
	learnset MOVE_AGILITY, 52
	learnset MOVE_HYPER_BEAM, 54
	learnset MOVE_DRACO_METEOR, 58
	learnset MOVE_DRAGON_ASCENT, 61
	terminatelearnset

levelup SPECIES_JIRACHI
	learnset MOVE_POUND, 1
	learnset MOVE_GYRO_BALL, 3
	learnset MOVE_LIGHT_SCREEN, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_METAL_CLAW, 9
	learnset MOVE_COSMIC_POWER, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_MIRROR_SHOT, 18
	learnset MOVE_LAST_RESORT, 21
	learnset MOVE_WISH, 24
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_GRAVITY, 32
	learnset MOVE_PSYSHOCK, 36
	learnset MOVE_CHARGE_BEAM, 41
	learnset MOVE_DAZZLING_GLEAM, 45
	learnset MOVE_FLASH_CANNON, 49
	learnset MOVE_PSYCHIC, 53
	learnset MOVE_DOOM_DESIRE, 58
	terminatelearnset

levelup SPECIES_DEOXYS
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_HIDDEN_POWER, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_TAUNT, 7
	learnset MOVE_VACUUM_WAVE, 9
	learnset MOVE_DETECT, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_CHARGE_BEAM, 18
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_SIGNAL_BEAM, 24
	learnset MOVE_PSYSHOCK, 28
	learnset MOVE_BRICK_BREAK, 32
	learnset MOVE_RECOVER, 36
	learnset MOVE_SHADOW_BALL, 41
	learnset MOVE_ZEN_HEADBUTT, 45
	learnset MOVE_CALM_MIND, 49
	learnset MOVE_ICE_BEAM, 53
	learnset MOVE_PSYCHO_BOOST, 58
	learnset MOVE_EXTREME_SPEED, 61
	terminatelearnset

levelup SPECIES_TURTWIG
	learnset MOVE_TACKLE, 1
	learnset MOVE_WITHDRAW, 2
	learnset MOVE_CUT, 3
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_LEECH_SEED, 6
	learnset MOVE_BITE, 8
	learnset MOVE_RAZOR_LEAF, 9
	learnset MOVE_SECRET_POWER, 10
	learnset MOVE_PROTECT, 12
	learnset MOVE_CURSE, 13
	learnset MOVE_DOUBLE_KICK, 15
	learnset MOVE_PAYBACK, 16
	learnset MOVE_MUD_BOMB, 17
	learnset MOVE_BODY_SLAM, 19
	terminatelearnset

levelup SPECIES_GROTLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_WITHDRAW, 2
	learnset MOVE_CUT, 3
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_LEECH_SEED, 6
	learnset MOVE_BITE, 8
	learnset MOVE_RAZOR_LEAF, 9
	learnset MOVE_SECRET_POWER, 10
	learnset MOVE_PROTECT, 12
	learnset MOVE_CURSE, 13
	learnset MOVE_DOUBLE_KICK, 15
	learnset MOVE_PAYBACK, 16
	learnset MOVE_MUD_BOMB, 17
	learnset MOVE_BODY_SLAM, 19
	learnset MOVE_SEED_BOMB, 20
	learnset MOVE_DIG, 22
	learnset MOVE_CRUNCH, 24
	learnset MOVE_SYNTHESIS, 26
	learnset MOVE_ROCK_CLIMB, 28
	learnset MOVE_SUPERPOWER, 31
	terminatelearnset

levelup SPECIES_TORTERRA
	learnset MOVE_WOOD_HAMMER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_WITHDRAW, 5
	learnset MOVE_ABSORB, 9
	learnset MOVE_RAZOR_LEAF, 13
	learnset MOVE_CURSE, 17
	learnset MOVE_BITE, 22
	learnset MOVE_MEGA_DRAIN, 27
	learnset MOVE_EARTHQUAKE, 32
	learnset MOVE_LEECH_SEED, 33
	learnset MOVE_SYNTHESIS, 39
	learnset MOVE_CRUNCH, 45
	learnset MOVE_GIGA_DRAIN, 51
	learnset MOVE_LEAF_STORM, 57
	terminatelearnset

levelup SPECIES_CHIMCHAR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 2
	learnset MOVE_EMBER, 3
	learnset MOVE_TAUNT, 5
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_FLAME_WHEEL, 8
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_BULK_UP, 12
	learnset MOVE_SUNNY_DAY, 13
	learnset MOVE_SLACK_OFF, 15
	learnset MOVE_DIG, 17
	terminatelearnset

levelup SPECIES_MONFERNO
	learnset MOVE_TAUNT, 5
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_FLAME_WHEEL, 8
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_DOUBLE_KICK, 10
	learnset MOVE_BULK_UP, 12
	learnset MOVE_SUNNY_DAY, 13
	learnset MOVE_SLACK_OFF, 15
	learnset MOVE_DIG, 17
	learnset MOVE_FACADE, 19
	learnset MOVE_FIRE_PUNCH, 21
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_THUNDER_PUNCH, 25
	learnset MOVE_BLAZE_KICK, 26
	learnset MOVE_DETECT, 28
	learnset MOVE_ROCK_CLIMB, 30
	terminatelearnset

levelup SPECIES_INFERNAPE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_TAUNT, 1
	learnset MOVE_EMBER, 7
	learnset MOVE_TAUNT, 9
	learnset MOVE_MACH_PUNCH, 14
	learnset MOVE_FURY_SWIPES, 17
	learnset MOVE_FLAME_WHEEL, 21
	learnset MOVE_FEINT, 29
	learnset MOVE_PUNISHMENT, 33
	learnset MOVE_CLOSE_COMBAT, 41
	learnset MOVE_FIRE_SPIN, 45
	learnset MOVE_CALM_MIND, 53
	learnset MOVE_FLARE_BLITZ, 57
	terminatelearnset

levelup SPECIES_PIPLUP
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_BUBBLE, 3
	learnset MOVE_PECK, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_WHIRLPOOL, 8
	learnset MOVE_BIDE, 9
	learnset MOVE_FURY_ATTACK, 11
	learnset MOVE_AQUA_RING, 13
	learnset MOVE_BRINE, 15
	learnset MOVE_ICY_WIND, 16
	learnset MOVE_RAIN_DANCE, 18
	terminatelearnset

levelup SPECIES_PRINPLUP
	learnset MOVE_PECK, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_WHIRLPOOL, 8
	learnset MOVE_BIDE, 9
	learnset MOVE_FURY_ATTACK, 11
	learnset MOVE_AQUA_RING, 13
	learnset MOVE_BRINE, 15
	learnset MOVE_ICY_WIND, 16
	learnset MOVE_RAIN_DANCE, 18
	learnset MOVE_SHEER_COLD, 19
	learnset MOVE_SHADOW_CLAW, 21
	learnset MOVE_DRILL_PECK, 23
	learnset MOVE_WATER_SPORT, 25
	learnset MOVE_YAWN, 27
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_STEEL_WING, 29
	learnset MOVE_ICE_BEAM, 32
	terminatelearnset

levelup SPECIES_EMPOLEON
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_BUBBLE, 8
	learnset MOVE_SWORDS_DANCE, 11
	learnset MOVE_PECK, 15
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_BUBBLE_BEAM, 19
	learnset MOVE_SWAGGER, 24
	learnset MOVE_FURY_ATTACK, 28
	learnset MOVE_BRINE, 33
	learnset MOVE_AQUA_JET, 36
	learnset MOVE_WHIRLPOOL, 39
	learnset MOVE_MIST, 46
	learnset MOVE_DRILL_PECK, 52
	learnset MOVE_HYDRO_PUMP, 59
	terminatelearnset

levelup SPECIES_STARLY
	learnset MOVE_ASTONISH, 1
	learnset MOVE_PECK, 2
	learnset MOVE_QUICK_ATTACK, 3
	learnset MOVE_AIR_CUTTER, 4
	learnset MOVE_DOUBLE_TEAM, 5
	learnset MOVE_WHIRLWIND, 6
	learnset MOVE_FEINT, 7
	learnset MOVE_AGILITY, 8
	learnset MOVE_AERIAL_ACE, 9
	learnset MOVE_THIEF, 10
	learnset MOVE_TAKE_DOWN, 12
	terminatelearnset

levelup SPECIES_STARAVIA
	learnset MOVE_ASTONISH, 1
	learnset MOVE_PECK, 2
	learnset MOVE_QUICK_ATTACK, 3
	learnset MOVE_AIR_CUTTER, 4
	learnset MOVE_DOUBLE_TEAM, 5
	learnset MOVE_WHIRLWIND, 6
	learnset MOVE_FEINT, 7
	learnset MOVE_AGILITY, 8
	learnset MOVE_AERIAL_ACE, 9
	learnset MOVE_THIEF, 10
	learnset MOVE_TAKE_DOWN, 12
	learnset MOVE_SECRET_POWER, 14
	learnset MOVE_TAILWIND, 16
	learnset MOVE_U_TURN, 18
	learnset MOVE_FEATHER_DANCE, 20
	learnset MOVE_DRILL_PECK, 22
	learnset MOVE_STEEL_WING, 24
	learnset MOVE_SWAGGER, 26
	learnset MOVE_DOUBLE_EDGE, 29
	learnset MOVE_ROOST, 31
	terminatelearnset

levelup SPECIES_STARAPTOR
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_WING_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_WING_ATTACK, 9
	learnset MOVE_DOUBLE_TEAM, 13
	learnset MOVE_ENDEAVOR, 18
	learnset MOVE_WHIRLWIND, 23
	learnset MOVE_AERIAL_ACE, 28
	learnset MOVE_TAKE_DOWN, 33
	learnset MOVE_CLOSE_COMBAT, 34
	learnset MOVE_AGILITY, 41
	learnset MOVE_BRAVE_BIRD, 49
	terminatelearnset

levelup SPECIES_BIDOOF
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_PURSUIT, 3
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_COVET, 6
	learnset MOVE_YAWN, 8
	learnset MOVE_SUPER_FANG, 10
	learnset MOVE_AMNESIA, 11
	learnset MOVE_TAKE_DOWN, 13
	learnset MOVE_CURSE, 14
	learnset MOVE_DOUBLE_KICK, 15
	terminatelearnset

levelup SPECIES_BIBAREL
	learnset MOVE_PURSUIT, 3
	learnset MOVE_ROLLOUT, 4
	learnset MOVE_COVET, 6
	learnset MOVE_YAWN, 8
	learnset MOVE_SUPER_FANG, 10
	learnset MOVE_AMNESIA, 11
	learnset MOVE_TAKE_DOWN, 13
	learnset MOVE_CURSE, 14
	learnset MOVE_DOUBLE_KICK, 15
	learnset MOVE_WATER_PULSE, 17
	learnset MOVE_AMNESIA, 19
	learnset MOVE_SUPER_FANG, 21
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_WATERFALL, 25
	learnset MOVE_HYPER_FANG, 27
	learnset MOVE_YAWN, 29
	learnset MOVE_SUBSTITUTE, 31
	terminatelearnset

levelup SPECIES_KRICKETOT
	learnset MOVE_BLOCK, 1
	learnset MOVE_COUNTER, 2
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_UPROAR, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_CUT, 8
	learnset MOVE_PROTECT, 9
	learnset MOVE_BUG_BITE, 11
	learnset MOVE_ENDEAVOR, 12
	learnset MOVE_SIGNAL_BEAM, 13
	learnset MOVE_MAGICAL_LEAF, 14
	terminatelearnset

levelup SPECIES_KRICKETUNE
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_COUNTER, 2
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_UPROAR, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_CUT, 8
	learnset MOVE_PROTECT, 9
	learnset MOVE_BUG_BITE, 11
	learnset MOVE_ENDEAVOR, 12
	learnset MOVE_SIGNAL_BEAM, 13
	learnset MOVE_MAGICAL_LEAF, 14
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_PERISH_SONG, 18
	learnset MOVE_X_SCISSOR, 21
	learnset MOVE_AERIAL_ACE, 23
	learnset MOVE_NIGHT_SLASH, 25
	learnset MOVE_SWORDS_DANCE, 27
	terminatelearnset

levelup SPECIES_SHINX
	learnset MOVE_PURSUIT, 1
	learnset MOVE_ROAR, 2
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_BITE, 8
	learnset MOVE_SWAGGER, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_SCARY_FACE, 14
	learnset MOVE_QUICK_ATTACK, 15
	terminatelearnset

levelup SPECIES_LUXIO
	learnset MOVE_PURSUIT, 1
	learnset MOVE_ROAR, 2
	learnset MOVE_THUNDER_WAVE, 4
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_BITE, 8
	learnset MOVE_SWAGGER, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_FIRE_FANG, 13
	learnset MOVE_SCARY_FACE, 14
	learnset MOVE_QUICK_ATTACK, 15
	learnset MOVE_CHARGE, 16
	learnset MOVE_DISCHARGE, 18
	learnset MOVE_CRUNCH, 20
	learnset MOVE_ICE_FANG, 22
	learnset MOVE_MAGNET_RISE, 23
	learnset MOVE_FEINT, 25
	learnset MOVE_TAKE_DOWN, 27
	learnset MOVE_THUNDERBOLT, 29
	terminatelearnset

levelup SPECIES_LUXRAY
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_LEER, 5
	learnset MOVE_CHARGE, 9
	learnset MOVE_SPARK, 13
	learnset MOVE_BITE, 18
	learnset MOVE_ROAR, 23
	learnset MOVE_SWAGGER, 28
	learnset MOVE_THUNDER_FANG, 35
	learnset MOVE_CRUNCH, 42
	learnset MOVE_SCARY_FACE, 49
	learnset MOVE_DISCHARGE, 56
	terminatelearnset

levelup SPECIES_BUDEW
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_GROWTH, 2
	learnset MOVE_POISON_STING, 3
	learnset MOVE_STUN_SPORE, 4
	learnset MOVE_INGRAIN, 6
	learnset MOVE_PROTECT, 8
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_MAGICAL_LEAF, 11
	learnset MOVE_SYNTHESIS, 13
	learnset MOVE_SLUDGE, 15
	learnset MOVE_CALM_MIND, 17
	learnset MOVE_HIDDEN_POWER, 19
	learnset MOVE_GRASS_KNOT, 21
	learnset MOVE_SLEEP_POWDER, 23
	terminatelearnset

levelup SPECIES_ROSERADE
	learnset MOVE_WEATHER_BALL, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_MEGA_DRAIN, 1
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_SWEET_SCENT, 1
	terminatelearnset

levelup SPECIES_CRANIDOS
	learnset MOVE_PURSUIT, 1
	learnset MOVE_LEER, 2
	learnset MOVE_FOCUS_ENERGY, 4
	learnset MOVE_STEALTH_ROCK, 6
	learnset MOVE_SCARY_FACE, 8
	learnset MOVE_ROCK_TOMB, 10
	learnset MOVE_ANCIENT_POWER, 12
	learnset MOVE_STOMP, 13
	learnset MOVE_SANDSTORM, 15
	learnset MOVE_SLAM, 17
	learnset MOVE_ROCK_CLIMB, 19
	learnset MOVE_SWAGGER, 21
	learnset MOVE_IRON_HEAD, 23
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_ROCK_POLISH, 27
	learnset MOVE_ENDEAVOR, 28
	learnset MOVE_HAMMER_ARM, 30
	terminatelearnset

levelup SPECIES_RAMPARDOS
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_LEER, 1
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_PURSUIT, 10
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_SCARY_FACE, 19
	learnset MOVE_ASSURANCE, 24
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_ENDEAVOR, 30
	learnset MOVE_ZEN_HEADBUTT, 36
	learnset MOVE_SCREECH, 43
	learnset MOVE_HEAD_SMASH, 52
	terminatelearnset

levelup SPECIES_SHIELDON
	learnset MOVE_TACKLE, 1
	learnset MOVE_PROTECT, 2
	learnset MOVE_TAUNT, 3
	learnset MOVE_ROCK_THROW, 5
	learnset MOVE_IRON_DEFENSE, 7
	learnset MOVE_GYRO_BALL, 8
	learnset MOVE_METAL_SOUND, 9
	learnset MOVE_MAGNET_RISE, 11
	learnset MOVE_ENDURE, 12
	learnset MOVE_MAGNET_BOMB, 14
	learnset MOVE_ANCIENT_POWER, 15
	learnset MOVE_METAL_BURST, 17
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_SHOCK_WAVE, 21
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_IRON_HEAD, 25
	learnset MOVE_ROCK_SLIDE, 27
	learnset MOVE_EARTH_POWER, 29
	terminatelearnset

levelup SPECIES_BASTIODON
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
	learnset MOVE_BLOCK, 30
	learnset MOVE_ENDURE, 36
	learnset MOVE_METAL_BURST, 43
	learnset MOVE_IRON_HEAD, 52
	terminatelearnset

levelup SPECIES_BURMY
	learnset MOVE_CAMOUFLAGE, 1
	learnset MOVE_HIDDEN_POWER, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_BULLET_SEED, 4
	learnset MOVE_INGRAIN, 6
	learnset MOVE_BLOCK, 8
	learnset MOVE_FAKE_TEARS, 9
	learnset MOVE_STRING_SHOT, 10
	learnset MOVE_SIGNAL_BEAM, 12
	learnset MOVE_FLAIL, 13
	learnset MOVE_LEECH_SEED, 15
	learnset MOVE_AROMATHERAPY, 17
	learnset MOVE_NATURE_POWER, 19
	learnset MOVE_BUG_BUZZ, 21
	terminatelearnset

levelup SPECIES_WORMADAM
	learnset MOVE_CAMOUFLAGE, 1
	learnset MOVE_HIDDEN_POWER, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_BULLET_SEED, 4
	learnset MOVE_INGRAIN, 6
	learnset MOVE_BLOCK, 8
	learnset MOVE_FAKE_TEARS, 9
	learnset MOVE_STRING_SHOT, 10
	learnset MOVE_SIGNAL_BEAM, 12
	learnset MOVE_FLAIL, 13
	learnset MOVE_LEECH_SEED, 15
	learnset MOVE_AROMATHERAPY, 17
	learnset MOVE_NATURE_POWER, 19
	learnset MOVE_BUG_BUZZ, 21
	learnset MOVE_GRASS_KNOT, 23
	learnset MOVE_LEECH_SEED, 25
	learnset MOVE_PROTECT, 27
	learnset MOVE_SHADOW_BALL, 29
	learnset MOVE_EXPLOSION, 31
	terminatelearnset

levelup SPECIES_MOTHIM
	learnset MOVE_CAMOUFLAGE, 1
	learnset MOVE_HIDDEN_POWER, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_BULLET_SEED, 4
	learnset MOVE_INGRAIN, 6
	learnset MOVE_BLOCK, 8
	learnset MOVE_FAKE_TEARS, 9
	learnset MOVE_STRING_SHOT, 10
	learnset MOVE_SIGNAL_BEAM, 12
	learnset MOVE_FLAIL, 13
	learnset MOVE_LEECH_SEED, 15
	learnset MOVE_AROMATHERAPY, 17
	learnset MOVE_NATURE_POWER, 19
	learnset MOVE_BUG_BUZZ, 21
	learnset MOVE_AIR_SLASH, 23
	learnset MOVE_TAILWIND, 25
	learnset MOVE_PROTECT, 27
	learnset MOVE_U_TURN, 29
	learnset MOVE_PSYCHIC, 31
	terminatelearnset

levelup SPECIES_COMBEE
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_GUST, 2
	learnset MOVE_ODOR_SLEUTH, 3
	learnset MOVE_DEFEND_ORDER, 5
	learnset MOVE_DOUBLE_TEAM, 6
	learnset MOVE_MEGA_DRAIN, 8
	learnset MOVE_ENDEAVOR, 10
	learnset MOVE_SLASH, 11
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_BLOCK, 14
	learnset MOVE_ABSORB, 16
	learnset MOVE_AERIAL_ACE, 17
	learnset MOVE_U_TURN, 18
	learnset MOVE_HEAL_ORDER, 20
	learnset MOVE_AIR_SLASH, 22
	learnset MOVE_POWER_GEM, 23
	learnset MOVE_ATTACK_ORDER, 25
	learnset MOVE_TOXIC, 26
	learnset MOVE_SWAGGER, 27
	learnset MOVE_DESTINY_BOND, 29
	terminatelearnset

levelup SPECIES_VESPIQUEN
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_GUST, 1
	learnset MOVE_POISON_STING, 3
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_FURY_CUTTER, 9
	learnset MOVE_DEFEND_ORDER, 13
	learnset MOVE_PURSUIT, 15
	learnset MOVE_FURY_SWIPES, 19
	learnset MOVE_POWER_GEM, 21
	learnset MOVE_HEAL_ORDER, 25
	learnset MOVE_TOXIC, 27
	learnset MOVE_SLASH, 31
	learnset MOVE_CAPTIVATE, 33
	learnset MOVE_ATTACK_ORDER, 37
	learnset MOVE_SWAGGER, 39
	learnset MOVE_DESTINY_BOND, 43
	terminatelearnset

levelup SPECIES_PACHIRISU
	learnset MOVE_GROWL, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_CHARM, 9
	learnset MOVE_SPARK, 13
	learnset MOVE_ENDURE, 17
	learnset MOVE_SWIFT, 21
	learnset MOVE_SWEET_KISS, 25
	learnset MOVE_DISCHARGE, 29
	learnset MOVE_SUPER_FANG, 33
	learnset MOVE_LAST_RESORT, 37
	terminatelearnset

levelup SPECIES_BUIZEL
	learnset MOVE_SONIC_BOOM, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_PURSUIT, 8
	learnset MOVE_SWIFT, 9
	learnset MOVE_ICY_WIND, 11
	learnset MOVE_AQUA_JET, 12
	learnset MOVE_AGILITY, 13
	learnset MOVE_SLASH, 14
	learnset MOVE_BRINE, 16
	learnset MOVE_HIDDEN_POWER, 17
	learnset MOVE_BULK_UP, 19
	learnset MOVE_DIVE, 20
	learnset MOVE_ICE_PUNCH, 22
	learnset MOVE_BRICK_BREAK, 25
	learnset MOVE_WATER_SPORT, 27
	learnset MOVE_CRUNCH, 29
	learnset MOVE_IRON_TAIL, 31
	terminatelearnset

levelup SPECIES_FLOATZEL
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_SONIC_BOOM, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 3
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_PURSUIT, 10
	learnset MOVE_SWIFT, 15
	learnset MOVE_AQUA_JET, 21
	learnset MOVE_CRUNCH, 26
	learnset MOVE_AGILITY, 29
	learnset MOVE_WHIRLPOOL, 39
	learnset MOVE_RAZOR_WIND, 50
	terminatelearnset

levelup SPECIES_CHERUBI
	learnset MOVE_ABSORB, 1
	learnset MOVE_MEGA_DRAIN, 2
	learnset MOVE_LEECH_SEED, 4
	learnset MOVE_SYNTHESIS, 6
	learnset MOVE_MAGICAL_LEAF, 7
	learnset MOVE_SUNNY_DAY, 8
	learnset MOVE_GRASS_WHISTLE, 9
	learnset MOVE_GRASS_KNOT, 10
	learnset MOVE_CALM_MIND, 12
	learnset MOVE_AROMATHERAPY, 13
	learnset MOVE_SEED_BOMB, 15
	learnset MOVE_MIST_BALL, 17
	learnset MOVE_GIGA_DRAIN, 18
	learnset MOVE_PROTECT, 20
	learnset MOVE_SOLAR_BEAM, 21
	learnset MOVE_WEATHER_BALL, 23
	learnset MOVE_NATURE_POWER, 25
	learnset MOVE_SELF_DESTRUCT, 27
	learnset MOVE_ENERGY_BALL, 29
	terminatelearnset

levelup SPECIES_CHERRIM
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_GROWTH, 7
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_HELPING_HAND, 13
	learnset MOVE_MAGICAL_LEAF, 19
	learnset MOVE_SUNNY_DAY, 22
	learnset MOVE_PETAL_DANCE, 25
	learnset MOVE_WORRY_SEED, 30
	learnset MOVE_TAKE_DOWN, 35
	learnset MOVE_SOLAR_BEAM, 43
	learnset MOVE_LUCKY_CHANT, 48
	terminatelearnset

levelup SPECIES_SHELLOS
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_HARDEN, 4
	learnset MOVE_HIDDEN_POWER, 5
	learnset MOVE_RAIN_DANCE, 7
	learnset MOVE_STRING_SHOT, 8
	learnset MOVE_WATER_PULSE, 10
	learnset MOVE_YAWN, 11
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_SLUDGE, 15
	learnset MOVE_RECOVER, 16
	learnset MOVE_BRINE, 17
	learnset MOVE_MUD_SPORT, 19
	learnset MOVE_MIRROR_COAT, 20
	learnset MOVE_STOCKPILE, 22
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_WATER_SPORT, 25
	learnset MOVE_SHEER_COLD, 27
	learnset MOVE_AMNESIA, 29
	terminatelearnset

levelup SPECIES_GASTRODON
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_WATER_PULSE, 1
	learnset MOVE_MUD_SPORT, 2
	learnset MOVE_HARDEN, 4
	learnset MOVE_WATER_PULSE, 7
	learnset MOVE_MUD_BOMB, 11
	learnset MOVE_HIDDEN_POWER, 16
	learnset MOVE_RAIN_DANCE, 22
	learnset MOVE_BODY_SLAM, 29
	learnset MOVE_MUDDY_WATER, 41
	learnset MOVE_RECOVER, 54
	terminatelearnset

levelup SPECIES_AMBIPOM
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
	learnset MOVE_WRAP, 1
	learnset MOVE_MINIMIZE, 2
	learnset MOVE_ASTONISH, 3
	learnset MOVE_GUST, 4
	learnset MOVE_CALM_MIND, 6
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_PAYBACK, 9
	learnset MOVE_EMBARGO, 11
	learnset MOVE_OMINOUS_WIND, 13
	learnset MOVE_AIR_CUTTER, 14
	learnset MOVE_KNOCK_OFF, 15
	learnset MOVE_SHOCK_WAVE, 17
	learnset MOVE_SELF_DESTRUCT, 18
	learnset MOVE_THUNDER_WAVE, 19
	learnset MOVE_SHADOW_BALL, 20
	learnset MOVE_AIR_SLASH, 22
	learnset MOVE_THUNDERBOLT, 24
	learnset MOVE_MAGICAL_LEAF, 26
	learnset MOVE_EXPLOSION, 27
	learnset MOVE_BATON_PASS, 28
	terminatelearnset

levelup SPECIES_DRIFBLIM
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_MINIMIZE, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GUST, 1
	learnset MOVE_ASTONISH, 6
	learnset MOVE_GUST, 11
	learnset MOVE_FOCUS_ENERGY, 14
	learnset MOVE_PAYBACK, 17
	learnset MOVE_STOCKPILE, 22
	learnset MOVE_SWALLOW, 27
	learnset MOVE_SPIT_UP, 27
	learnset MOVE_OMINOUS_WIND, 32
	learnset MOVE_BATON_PASS, 37
	learnset MOVE_SHADOW_BALL, 44
	learnset MOVE_EXPLOSION, 51
	terminatelearnset

levelup SPECIES_BUNEARY
	learnset MOVE_SPLASH, 1
	learnset MOVE_POUND, 2
	learnset MOVE_CHARM, 4
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_FAKE_OUT, 6
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_FEINT, 9
	learnset MOVE_DOUBLE_SLAP, 10
	learnset MOVE_AGILITY, 12
	learnset MOVE_DIZZY_PUNCH, 14
	learnset MOVE_DOUBLE_TEAM, 15
	learnset MOVE_MEGA_PUNCH, 17
	learnset MOVE_CAPTIVATE, 18
	learnset MOVE_BOUNCE, 20
	learnset MOVE_MIRACLE_EYE, 22
	learnset MOVE_SWEET_KISS, 23
	learnset MOVE_FLAIL, 25
	learnset MOVE_JUMP_KICK, 27
	learnset MOVE_DRAIN_PUNCH, 29
	learnset MOVE_BODY_SLAM, 30
	terminatelearnset

levelup SPECIES_LOPUNNY
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_MAGIC_COAT, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_POUND, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_ENDURE, 6
	learnset MOVE_RETURN, 13
	learnset MOVE_QUICK_ATTACK, 16
	learnset MOVE_JUMP_KICK, 23
	learnset MOVE_BATON_PASS, 26
	learnset MOVE_AGILITY, 33
	learnset MOVE_DIZZY_PUNCH, 36
	learnset MOVE_CHARM, 43
	learnset MOVE_BOUNCE, 46
	learnset MOVE_HEALING_WISH, 53
	terminatelearnset

levelup SPECIES_MISMAGIUS
	learnset MOVE_LUCKY_CHANT, 1
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_SPITE, 1
	learnset MOVE_ASTONISH, 1
	terminatelearnset

levelup SPECIES_HONCHKROW
	learnset MOVE_ASTONISH, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_HAZE, 1
	learnset MOVE_WING_ATTACK, 1
	learnset MOVE_SWAGGER, 25
	learnset MOVE_NASTY_PLOT, 35
	learnset MOVE_NIGHT_SLASH, 45
	learnset MOVE_DARK_PULSE, 55
	terminatelearnset

levelup SPECIES_GLAMEOW
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_THIEF, 2
	learnset MOVE_GROWL, 4
	learnset MOVE_HYPNOSIS, 6
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_CHARM, 9
	learnset MOVE_QUICK_ATTACK, 10
	learnset MOVE_SWAGGER, 12
	learnset MOVE_DIG, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_SUCKER_PUNCH, 17
	learnset MOVE_ASSIST, 19
	learnset MOVE_MIRACLE_EYE, 21
	learnset MOVE_BODY_SLAM, 23
	learnset MOVE_SHADOW_CLAW, 25
	learnset MOVE_TAKE_DOWN, 28
	learnset MOVE_U_TURN, 31
	terminatelearnset

levelup SPECIES_PURUGLY
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_SCRATCH, 5
	learnset MOVE_GROWL, 8
	learnset MOVE_HYPNOSIS, 13
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_FURY_SWIPES, 20
	learnset MOVE_CHARM, 25
	learnset MOVE_ASSIST, 29
	learnset MOVE_CAPTIVATE, 32
	learnset MOVE_SLASH, 37
	learnset MOVE_SWAGGER, 38
	learnset MOVE_BODY_SLAM, 45
	learnset MOVE_ATTRACT, 53
	terminatelearnset

levelup SPECIES_CHINGLING
	learnset MOVE_WRAP, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_ASTONISH, 3
	learnset MOVE_UPROAR, 5
	learnset MOVE_CONFUSION, 6
	learnset MOVE_SWIFT, 8
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_KNOCK_OFF, 11
	learnset MOVE_ABSORB, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_AGILITY, 17
	learnset MOVE_GRAVITY, 19
	learnset MOVE_SIGNAL_BEAM, 21
	learnset MOVE_REFLECT, 22
	learnset MOVE_LIGHT_SCREEN, 23
	terminatelearnset

levelup SPECIES_STUNKY
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FOCUS_ENERGY, 2
	learnset MOVE_POISON_GAS, 3
	learnset MOVE_POISON_TAIL, 5
	learnset MOVE_MUD_SLAP, 6
	learnset MOVE_THIEF, 8
	learnset MOVE_TOXIC, 10
	learnset MOVE_EMBARGO, 11
	learnset MOVE_FIRE_SPIN, 13
	learnset MOVE_SWAGGER, 15
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_DIG, 18
	learnset MOVE_BULK_UP, 20
	learnset MOVE_TAUNT, 21
	learnset MOVE_MUD_BOMB, 23
	learnset MOVE_POISON_JAB, 25
	learnset MOVE_NIGHT_SLASH, 27
	terminatelearnset

levelup SPECIES_SKUNTANK
	learnset MOVE_SCRATCH, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_SCREECH, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_SMOKESCREEN, 14
	learnset MOVE_FEINT, 18
	learnset MOVE_SLASH, 22
	learnset MOVE_TOXIC, 27
	learnset MOVE_NIGHT_SLASH, 32
	learnset MOVE_FLAMETHROWER, 34
	learnset MOVE_MEMENTO, 42
	learnset MOVE_EXPLOSION, 52
	terminatelearnset

levelup SPECIES_BRONZOR
	learnset MOVE_GYRO_BALL, 1
	learnset MOVE_ROCK_THROW, 2
	learnset MOVE_HARDEN, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_FEINT_ATTACK, 8
	learnset MOVE_ANCIENT_POWER, 10
	learnset MOVE_MAGNET_BOMB, 11
	learnset MOVE_CALM_MIND, 13
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_CHARGE_BEAM, 16
	learnset MOVE_HYPNOSIS, 17
	learnset MOVE_SWAGGER, 18
	learnset MOVE_FLASH_CANNON, 20
	learnset MOVE_EXTRASENSORY, 21
	learnset MOVE_ROCK_SLIDE, 23
	learnset MOVE_LUSTER_PURGE, 25
	learnset MOVE_SHADOW_BALL, 28
	learnset MOVE_SELF_DESTRUCT, 30
	terminatelearnset

levelup SPECIES_BRONZONG
	learnset MOVE_SUNNY_DAY, 1
	learnset MOVE_RAIN_DANCE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_HYPNOSIS, 7
	learnset MOVE_IMPRISON, 12
	learnset MOVE_CONFUSE_RAY, 14
	learnset MOVE_EXTRASENSORY, 19
	learnset MOVE_IRON_DEFENSE, 26
	learnset MOVE_SAFEGUARD, 30
	learnset MOVE_BLOCK, 33
	learnset MOVE_GYRO_BALL, 38
	learnset MOVE_FUTURE_SIGHT, 43
	learnset MOVE_FEINT_ATTACK, 50
	learnset MOVE_PAYBACK, 61
	learnset MOVE_HEAL_BLOCK, 67
	terminatelearnset

levelup SPECIES_BONSLY
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_COPYCAT, 2
	learnset MOVE_FLAIL, 3
	learnset MOVE_LOW_KICK, 4
	learnset MOVE_STEALTH_ROCK, 6
	learnset MOVE_FEINT_ATTACK, 8
	learnset MOVE_DEFENSE_CURL, 9
	learnset MOVE_ENCORE, 10
	learnset MOVE_SUCKER_PUNCH, 11
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_SELF_DESTRUCT, 14
	learnset MOVE_IRON_HEAD, 16
	learnset MOVE_DOUBLE_EDGE, 17
	learnset MOVE_PROTECT, 18
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_REST, 21
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_ROCK_CLIMB, 25
	terminatelearnset

levelup SPECIES_MIMEJR
	learnset MOVE_TICKLE, 1
	learnset MOVE_POUND, 2
	learnset MOVE_DOUBLE_SLAP, 4
	learnset MOVE_COPYCAT, 6
	learnset MOVE_MEDITATE, 7
	learnset MOVE_ENCORE, 8
	learnset MOVE_CONFUSION, 9
	learnset MOVE_SWEET_SCENT, 10
	learnset MOVE_LIGHT_SCREEN, 11
	learnset MOVE_REFLECT, 12
	learnset MOVE_GRAVITY, 14
	learnset MOVE_SUBSTITUTE, 15
	learnset MOVE_PSYBEAM, 17
	learnset MOVE_TRICK, 18
	learnset MOVE_LUSTER_PURGE, 20
	learnset MOVE_EXTRASENSORY, 22
	learnset MOVE_CALM_MIND, 23
	learnset MOVE_WISH, 26
	learnset MOVE_MIST_BALL, 28
	learnset MOVE_LUNAR_DANCE, 31
	terminatelearnset

levelup SPECIES_HAPPINY
	learnset MOVE_METRONOME, 1
	learnset MOVE_CHARM, 2
	learnset MOVE_HIDDEN_POWER, 3
	learnset MOVE_MEGA_PUNCH, 4
	learnset MOVE_SOFT_BOILED, 5
	learnset MOVE_ABSORB, 6
	learnset MOVE_UPROAR, 8
	learnset MOVE_PROTECT, 9
	learnset MOVE_LIGHT_SCREEN, 11
	learnset MOVE_REFLECT, 11
	learnset MOVE_SWIFT, 12
	learnset MOVE_COUNTER, 14
	learnset MOVE_GRAVITY, 16
	learnset MOVE_SWEET_KISS, 18
	learnset MOVE_MIST_BALL, 20
	learnset MOVE_TOXIC, 22
	learnset MOVE_HYPER_VOICE, 23
	learnset MOVE_WISH, 25
	learnset MOVE_EGG_BOMB, 26
	learnset MOVE_YAWN, 28
	terminatelearnset

levelup SPECIES_CHATOT
	learnset MOVE_GUST, 1
	learnset MOVE_SCREECH, 2
	learnset MOVE_MIRROR_MOVE, 3
	learnset MOVE_SING, 4
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_CHATTER, 8
	learnset MOVE_TAUNT, 9
	learnset MOVE_UPROAR, 11
	learnset MOVE_ROOST, 12
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_STEEL_WING, 15
	learnset MOVE_DRILL_PECK, 16
	learnset MOVE_SWAGGER, 18
	learnset MOVE_TRI_ATTACK, 19
	learnset MOVE_OMINOUS_WIND, 20
	learnset MOVE_AIR_SLASH, 22
	learnset MOVE_NASTY_PLOT, 24
	learnset MOVE_HEAT_WAVE, 26
	learnset MOVE_TAILWIND, 28
	learnset MOVE_HYPER_VOICE, 29
	terminatelearnset

levelup SPECIES_SPIRITOMB
	learnset MOVE_SHADOW_SNEAK, 1
	learnset MOVE_FEINT_ATTACK, 7
	learnset MOVE_FEINT_ATTACK, 9
	learnset MOVE_MEMENTO, 9
	learnset MOVE_SHADOW_SNEAK, 9
	learnset MOVE_HYPNOSIS, 9
	learnset MOVE_HYPNOSIS, 13
	learnset MOVE_DREAM_EATER, 19
	learnset MOVE_OMINOUS_WIND, 25
	learnset MOVE_SUCKER_PUNCH, 31
	learnset MOVE_NASTY_PLOT, 37
	learnset MOVE_MEMENTO, 43
	learnset MOVE_DARK_PULSE, 49
	terminatelearnset

levelup SPECIES_GIBLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_DRAGON_BREATH, 5
	learnset MOVE_SANDSTORM, 7
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_SLASH, 11
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_ROCK_TOMB, 14
	learnset MOVE_BULK_UP, 16
	learnset MOVE_BITE, 17
	learnset MOVE_STEALTH_ROCK, 19
	learnset MOVE_SWAGGER, 21
	learnset MOVE_SHADOW_CLAW, 23
	learnset MOVE_ROCK_CLIMB, 24
	learnset MOVE_DIG, 26
	learnset MOVE_DRAGON_RUSH, 27
	learnset MOVE_IRON_HEAD, 29
	terminatelearnset

levelup SPECIES_GABITE
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_DRAGON_BREATH, 5
	learnset MOVE_SANDSTORM, 7
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_SLASH, 11
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_ROCK_TOMB, 14
	learnset MOVE_BULK_UP, 16
	learnset MOVE_BITE, 17
	learnset MOVE_STEALTH_ROCK, 19
	learnset MOVE_SWAGGER, 21
	learnset MOVE_SHADOW_CLAW, 23
	learnset MOVE_ROCK_CLIMB, 24
	learnset MOVE_DIG, 26
	learnset MOVE_OUTRAGE, 27
	learnset MOVE_IRON_HEAD, 29
	learnset MOVE_DRAGON_RUSH, 31
	terminatelearnset

levelup SPECIES_GARCHOMP
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_FALSE_SWIPE, 7
	learnset MOVE_TWISTER, 9
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_MUD_SHOT, 17
	learnset MOVE_BREAKING_SWIPE, 20
	learnset MOVE_AERIAL_ACE, 26
	learnset MOVE_SHARPEN, 29
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_THUNDER_FANG, 37
	learnset MOVE_DRAGON_RAGE, 39
	learnset MOVE_ROCK_SLIDE, 44
	learnset MOVE_SHADOW_CLAW, 47
	learnset MOVE_OUTRAGE, 51
	learnset MOVE_POISON_JAB, 55
	learnset MOVE_DRAGON_RUSH, 61
	learnset MOVE_FISSURE, 63
	terminatelearnset

levelup SPECIES_MUNCHLAX
	learnset MOVE_METRONOME, 1
	learnset MOVE_TACKLE, 3
	learnset MOVE_DEFENSE_CURL, 5
	learnset MOVE_LICK, 7
	learnset MOVE_SECRET_POWER, 9
	learnset MOVE_AMNESIA, 11
	learnset MOVE_CURSE, 13
	learnset MOVE_ROLLOUT, 14
	learnset MOVE_MEGA_PUNCH, 16
	learnset MOVE_ROCK_TOMB, 18
	learnset MOVE_LAST_RESORT, 19
	learnset MOVE_THUNDER_PUNCH, 21
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_SUBSTITUTE, 25
	learnset MOVE_BODY_SLAM, 26
	learnset MOVE_WAKE_UP_SLAP, 28
	learnset MOVE_FISSURE, 32
	terminatelearnset

levelup SPECIES_RIOLU
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_BULLET_PUNCH, 3
	learnset MOVE_FEINT, 5
	learnset MOVE_REVERSAL, 7
	learnset MOVE_FORCE_PALM, 9
	learnset MOVE_HIDDEN_POWER, 11
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_BULK_UP, 15
	learnset MOVE_COPYCAT, 17
	learnset MOVE_AGILITY, 19
	learnset MOVE_DRAIN_PUNCH, 21
	learnset MOVE_LAST_RESORT, 22
	learnset MOVE_SUBSTITUTE, 24
	learnset MOVE_FOCUS_PUNCH, 25
	learnset MOVE_POISON_JAB, 27
	learnset MOVE_IRON_TAIL, 31
	learnset MOVE_ENDURE, 32
	terminatelearnset

levelup SPECIES_LUCARIO
	learnset MOVE_DARK_PULSE, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FORESIGHT, 1
	learnset MOVE_DETECT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_COUNTER, 6
	learnset MOVE_FORCE_PALM, 11
	learnset MOVE_FEINT, 15
	learnset MOVE_BONE_RUSH, 19
	learnset MOVE_METAL_SOUND, 24
	learnset MOVE_ME_FIRST, 29
	learnset MOVE_SWORDS_DANCE, 33
	learnset MOVE_AURA_SPHERE, 37
	learnset MOVE_CLOSE_COMBAT, 42
	learnset MOVE_DRAGON_PULSE, 47
	learnset MOVE_EXTREME_SPEED, 51
	terminatelearnset

levelup SPECIES_HIPPOPOTAS
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_BITE, 5
	learnset MOVE_YAWN, 7
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_SLACK_OFF, 12
	learnset MOVE_STEALTH_ROCK, 14
	learnset MOVE_REVENGE, 16
	learnset MOVE_MUD_SPORT, 18
	learnset MOVE_TAKE_DOWN, 20
	learnset MOVE_STOCKPILE, 21
	learnset MOVE_ICE_FANG, 23
	learnset MOVE_CRUNCH, 25
	learnset MOVE_FISSURE, 28
	learnset MOVE_IRON_HEAD, 30
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
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_DIG, 19
	learnset MOVE_SAND_TOMB, 25
	learnset MOVE_CRUNCH, 31
	learnset MOVE_EARTHQUAKE, 40
	learnset MOVE_DOUBLE_EDGE, 50
	learnset MOVE_FISSURE, 60
	terminatelearnset

levelup SPECIES_SKORUPI
	learnset MOVE_BITE, 1
	learnset MOVE_POISON_STING, 2
	learnset MOVE_LEER, 3
	learnset MOVE_KNOCK_OFF, 5
	learnset MOVE_PIN_MISSILE, 6
	learnset MOVE_ACUPRESSURE, 8
	learnset MOVE_TOXIC_SPIKES, 9
	learnset MOVE_BLOCK, 11
	learnset MOVE_POISON_FANG, 12
	learnset MOVE_AERIAL_ACE, 14
	learnset MOVE_FURY_CUTTER, 16
	learnset MOVE_ROCK_TOMB, 18
	learnset MOVE_BUG_BITE, 19
	learnset MOVE_CROSS_POISON, 22
	learnset MOVE_BRICK_BREAK, 24
	learnset MOVE_NIGHT_SLASH, 26
	learnset MOVE_AGILITY, 29
	learnset MOVE_DIG, 31
	terminatelearnset

levelup SPECIES_DRAPION
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_BITE, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_LEER, 1
	learnset MOVE_KNOCK_OFF, 1
	learnset MOVE_KNOCK_OFF, 6
	learnset MOVE_PIN_MISSILE, 12
	learnset MOVE_ACUPRESSURE, 17
	learnset MOVE_SCARY_FACE, 23
	learnset MOVE_TOXIC_SPIKES, 28
	learnset MOVE_BUG_BITE, 34
	learnset MOVE_POISON_FANG, 39
	learnset MOVE_CRUNCH, 49
	learnset MOVE_CROSS_POISON, 58
	terminatelearnset

levelup SPECIES_CROAGUNK
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_POISON_STING, 4
	learnset MOVE_TAUNT, 5
	learnset MOVE_PURSUIT, 7
	learnset MOVE_REVENGE, 8
	learnset MOVE_SWAGGER, 10
	learnset MOVE_MUD_BOMB, 11
	learnset MOVE_FAKE_OUT, 13
	learnset MOVE_FLATTER, 15
	learnset MOVE_POISON_FANG, 16
	learnset MOVE_BRICK_BREAK, 18
	learnset MOVE_EMBARGO, 19
	learnset MOVE_SUCKER_PUNCH, 21
	learnset MOVE_TAUNT, 22
	learnset MOVE_ME_FIRST, 24
	learnset MOVE_BULK_UP, 25
	learnset MOVE_POISON_JAB, 27
	learnset MOVE_WAKE_UP_SLAP, 29
	learnset MOVE_DYNAMIC_PUNCH, 31
	terminatelearnset

levelup SPECIES_TOXICROAK
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_POISON_STING, 8
	learnset MOVE_TAUNT, 10
	learnset MOVE_PURSUIT, 15
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_REVENGE, 22
	learnset MOVE_SWAGGER, 24
	learnset MOVE_MUD_BOMB, 29
	learnset MOVE_SUCKER_PUNCH, 31
	learnset MOVE_NASTY_PLOT, 36
	learnset MOVE_POISON_JAB, 41
	learnset MOVE_SLUDGE_BOMB, 49
	learnset MOVE_FLATTER, 54
	terminatelearnset

levelup SPECIES_CARNIVINE
	learnset MOVE_BIND, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_BITE, 7
	learnset MOVE_VINE_WHIP, 11
	learnset MOVE_SWEET_SCENT, 17
	learnset MOVE_INGRAIN, 21
	learnset MOVE_FEINT_ATTACK, 27
	learnset MOVE_STOCKPILE, 31
	learnset MOVE_SPIT_UP, 31
	learnset MOVE_SWALLOW, 31
	learnset MOVE_CRUNCH, 37
	learnset MOVE_WRING_OUT, 41
	learnset MOVE_POWER_WHIP, 47
	terminatelearnset

levelup SPECIES_FINNEON
	learnset MOVE_POUND, 1
	learnset MOVE_WHIRLPOOL, 3
	learnset MOVE_ATTRACT, 4
	learnset MOVE_RAIN_DANCE, 5
	learnset MOVE_GUST, 6
	learnset MOVE_CAPTIVATE, 8
	learnset MOVE_BUBBLE_BEAM, 9
	learnset MOVE_AQUA_RING, 11
	learnset MOVE_SILVER_WIND, 13
	learnset MOVE_HIDDEN_POWER, 15
	learnset MOVE_U_TURN, 16
	learnset MOVE_BOUNCE, 18
	learnset MOVE_PSYBEAM, 20
	learnset MOVE_WATER_SPORT, 22
	learnset MOVE_FLAIL, 24
	learnset MOVE_DIVE, 26
	learnset MOVE_ICE_BEAM, 29
	learnset MOVE_HYDRO_PUMP, 30
	terminatelearnset

levelup SPECIES_LUMINEON
	learnset MOVE_POUND, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_ATTRACT, 1
	learnset MOVE_WATER_GUN, 6
	learnset MOVE_ATTRACT, 10
	learnset MOVE_RAIN_DANCE, 13
	learnset MOVE_GUST, 17
	learnset MOVE_WATER_PULSE, 22
	learnset MOVE_CAPTIVATE, 26
	learnset MOVE_SAFEGUARD, 29
	learnset MOVE_AQUA_RING, 35
	learnset MOVE_WHIRLPOOL, 42
	learnset MOVE_U_TURN, 48
	learnset MOVE_BOUNCE, 53
	learnset MOVE_SILVER_WIND, 59
	terminatelearnset

levelup SPECIES_MANTYKE
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_AGILITY, 6
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_AQUA_RING, 9
	learnset MOVE_AERIAL_ACE, 11
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_TWISTER, 14
	learnset MOVE_SWIFT, 16
	learnset MOVE_WATER_PULSE, 17
	learnset MOVE_AIR_CUTTER, 19
	learnset MOVE_HIDDEN_POWER, 20
	learnset MOVE_MIRROR_COAT, 22
	learnset MOVE_TAILWIND, 23
	learnset MOVE_ROOST, 25
	learnset MOVE_WATER_SPORT, 27
	learnset MOVE_AIR_SLASH, 30
	terminatelearnset

levelup SPECIES_SNOVER
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LEER, 3
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_ICY_WIND, 6
	learnset MOVE_GRASS_WHISTLE, 8
	learnset MOVE_SWAGGER, 10
	learnset MOVE_ICE_SHARD, 12
	learnset MOVE_INGRAIN, 14
	learnset MOVE_SHEER_COLD, 16
	learnset MOVE_MAGICAL_LEAF, 18
	learnset MOVE_WATER_PULSE, 19
	learnset MOVE_AVALANCHE, 21
	learnset MOVE_GIGA_DRAIN, 23
	learnset MOVE_AMNESIA, 24
	learnset MOVE_PROTECT, 26
	learnset MOVE_SEED_BOMB, 28
	learnset MOVE_LEECH_SEED, 29
	learnset MOVE_DOUBLE_EDGE, 30
	learnset MOVE_ICE_BEAM, 32
	terminatelearnset

levelup SPECIES_ABOMASNOW
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LEER, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_ICY_WIND, 1
	learnset MOVE_RAZOR_LEAF, 5
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_GRASS_WHISTLE, 13
	learnset MOVE_SWAGGER, 17
	learnset MOVE_MIST, 21
	learnset MOVE_ICE_SHARD, 26
	learnset MOVE_INGRAIN, 31
	learnset MOVE_WOOD_HAMMER, 36
	learnset MOVE_BLIZZARD, 47
	learnset MOVE_SHEER_COLD, 58
	terminatelearnset

levelup SPECIES_WEAVILE
	learnset MOVE_EMBARGO, 1
	learnset MOVE_REVENGE, 1
	learnset MOVE_ASSURANCE, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_TAUNT, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_SCREECH, 10
	learnset MOVE_FEINT_ATTACK, 14
	learnset MOVE_FURY_SWIPES, 21
	learnset MOVE_NASTY_PLOT, 24
	learnset MOVE_ICY_WIND, 28
	learnset MOVE_NIGHT_SLASH, 35
	learnset MOVE_FLING, 38
	learnset MOVE_METAL_CLAW, 42
	learnset MOVE_DARK_PULSE, 49
	terminatelearnset

levelup SPECIES_MAGNEZONE
	learnset MOVE_MIRROR_COAT, 1
	learnset MOVE_BARRIER, 1
	learnset MOVE_METAL_SOUND, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_SUPERSONIC, 11
	learnset MOVE_SONIC_BOOM, 14
	learnset MOVE_THUNDER_WAVE, 17
	learnset MOVE_SPARK, 22
	learnset MOVE_LOCK_ON, 27
	learnset MOVE_MAGNET_BOMB, 30
	learnset MOVE_SCREECH, 34
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_MIRROR_SHOT, 46
	learnset MOVE_MAGNET_RISE, 50
	learnset MOVE_GYRO_BALL, 54
	learnset MOVE_ZAP_CANNON, 60
	terminatelearnset

levelup SPECIES_LICKILICKY
	learnset MOVE_LICK, 1
	learnset MOVE_SUPERSONIC, 5
	learnset MOVE_DEFENSE_CURL, 9
	learnset MOVE_KNOCK_OFF, 13
	learnset MOVE_WRAP, 17
	learnset MOVE_STOMP, 21
	learnset MOVE_DISABLE, 25
	learnset MOVE_SLAM, 29
	learnset MOVE_ROLLOUT, 33
	learnset MOVE_ME_FIRST, 37
	learnset MOVE_REFRESH, 41
	learnset MOVE_SCREECH, 45
	learnset MOVE_POWER_WHIP, 49
	learnset MOVE_WRING_OUT, 53
	learnset MOVE_GYRO_BALL, 57
	terminatelearnset

levelup SPECIES_RHYPERIOR
	learnset MOVE_POISON_JAB, 1
	learnset MOVE_HORN_ATTACK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_FURY_ATTACK, 1
	learnset MOVE_STOMP, 9
	learnset MOVE_FURY_ATTACK, 13
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_ROCK_BLAST, 25
	learnset MOVE_TAKE_DOWN, 33
	learnset MOVE_HORN_DRILL, 37
	learnset MOVE_HAMMER_ARM, 42
	learnset MOVE_STONE_EDGE, 45
	learnset MOVE_EARTHQUAKE, 49
	learnset MOVE_MEGAHORN, 57
	learnset MOVE_ROCK_WRECKER, 61
	terminatelearnset

levelup SPECIES_TANGROWTH
	learnset MOVE_INGRAIN, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_SLEEP_POWDER, 5
	learnset MOVE_ABSORB, 8
	learnset MOVE_GROWTH, 12
	learnset MOVE_POISON_POWDER, 15
	learnset MOVE_VINE_WHIP, 19
	learnset MOVE_BIND, 22
	learnset MOVE_MEGA_DRAIN, 26
	learnset MOVE_STUN_SPORE, 29
	learnset MOVE_ANCIENT_POWER, 33
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_NATURAL_GIFT, 40
	learnset MOVE_SLAM, 43
	learnset MOVE_TICKLE, 47
	learnset MOVE_WRING_OUT, 50
	learnset MOVE_POWER_WHIP, 54
	learnset MOVE_BLOCK, 57
	terminatelearnset

levelup SPECIES_ELECTIVIRE
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_LEER, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_LOW_KICK, 1
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_LOW_KICK, 10
	learnset MOVE_SWIFT, 16
	learnset MOVE_SHOCK_WAVE, 19
	learnset MOVE_LIGHT_SCREEN, 25
	learnset MOVE_THUNDER_PUNCH, 28
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_THUNDERBOLT, 43
	learnset MOVE_SCREECH, 52
	learnset MOVE_THUNDER, 58
	learnset MOVE_GIGA_IMPACT, 67
	terminatelearnset

levelup SPECIES_MAGMORTAR
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_SMOG, 1
	learnset MOVE_LEER, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_EMBER, 7
	learnset MOVE_SMOKESCREEN, 10
	learnset MOVE_FEINT_ATTACK, 16
	learnset MOVE_FIRE_SPIN, 19
	learnset MOVE_CONFUSE_RAY, 25
	learnset MOVE_FIRE_PUNCH, 28
	learnset MOVE_LAVA_PLUME, 37
	learnset MOVE_FLAMETHROWER, 43
	learnset MOVE_SUNNY_DAY, 52
	learnset MOVE_FIRE_BLAST, 58
	learnset MOVE_HYPER_BEAM, 67
	terminatelearnset

levelup SPECIES_TOGEKISS
	learnset MOVE_SKY_ATTACK, 1
	learnset MOVE_EXTREME_SPEED, 1
	learnset MOVE_AURA_SPHERE, 1
	learnset MOVE_AIR_SLASH, 1
	terminatelearnset

levelup SPECIES_YANMEGA
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
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_RAZOR_LEAF, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_SYNTHESIS, 29
	learnset MOVE_MAGICAL_LEAF, 36
	learnset MOVE_GIGA_DRAIN, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_GRASS_WHISTLE, 57
	learnset MOVE_SUNNY_DAY, 64
	learnset MOVE_LEAF_BLADE, 71
	learnset MOVE_SWORDS_DANCE, 78
	terminatelearnset

levelup SPECIES_GLACEON
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SAND_ATTACK, 8
	learnset MOVE_ICY_WIND, 15
	learnset MOVE_QUICK_ATTACK, 22
	learnset MOVE_BITE, 29
	learnset MOVE_ICE_SHARD, 36
	learnset MOVE_ICE_FANG, 43
	learnset MOVE_LAST_RESORT, 50
	learnset MOVE_MIRROR_COAT, 57
	learnset MOVE_HAIL, 64
	learnset MOVE_BLIZZARD, 71
	learnset MOVE_BARRIER, 78
	terminatelearnset

levelup SPECIES_GLISCOR
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_POISON_JAB, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_KNOCK_OFF, 1
	learnset MOVE_SAND_ATTACK, 5
	learnset MOVE_HARDEN, 9
	learnset MOVE_KNOCK_OFF, 12
	learnset MOVE_QUICK_ATTACK, 16
	learnset MOVE_FURY_CUTTER, 20
	learnset MOVE_FEINT_ATTACK, 23
	learnset MOVE_SCREECH, 27
	learnset MOVE_NIGHT_SLASH, 31
	learnset MOVE_SWORDS_DANCE, 34
	learnset MOVE_U_TURN, 38
	learnset MOVE_X_SCISSOR, 42
	learnset MOVE_GUILLOTINE, 45
	terminatelearnset

levelup SPECIES_MAMOSWINE
	learnset MOVE_ANCIENT_POWER, 1
	learnset MOVE_PECK, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_MUD_SPORT, 4
	learnset MOVE_ICE_SHARD, 8
	learnset MOVE_ROCK_SLIDE, 13
	learnset MOVE_SHEER_COLD, 16
	learnset MOVE_FISSURE, 20
	learnset MOVE_HAIL, 25
	learnset MOVE_ICE_FANG, 28
	learnset MOVE_TAKE_DOWN, 32
	learnset MOVE_DOUBLE_HIT, 33
	learnset MOVE_EARTHQUAKE, 40
	learnset MOVE_MIST, 48
	learnset MOVE_BLIZZARD, 56
	learnset MOVE_SCARY_FACE, 65
	terminatelearnset

levelup SPECIES_PORYGON_Z
	learnset MOVE_TRICK_ROOM, 1
	learnset MOVE_CONVERSION_2, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONVERSION, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_PSYBEAM, 7
	learnset MOVE_AGILITY, 12
	learnset MOVE_RECOVER, 18
	learnset MOVE_MAGNET_RISE, 23
	learnset MOVE_SIGNAL_BEAM, 29
	learnset MOVE_EMBARGO, 34
	learnset MOVE_DISCHARGE, 40
	learnset MOVE_LOCK_ON, 45
	learnset MOVE_TRI_ATTACK, 51
	learnset MOVE_MAGIC_COAT, 56
	learnset MOVE_ZAP_CANNON, 62
	learnset MOVE_HYPER_BEAM, 67
	terminatelearnset

levelup SPECIES_GALLADE
	learnset MOVE_LEAF_BLADE, 1
	learnset MOVE_NIGHT_SLASH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_DOUBLE_TEAM, 1
	learnset MOVE_TELEPORT, 1
	learnset MOVE_CONFUSION, 6
	learnset MOVE_DOUBLE_TEAM, 10
	learnset MOVE_TELEPORT, 12
	learnset MOVE_FURY_CUTTER, 17
	learnset MOVE_SLASH, 22
	learnset MOVE_SWORDS_DANCE, 25
	learnset MOVE_PSYCHO_CUT, 31
	learnset MOVE_HELPING_HAND, 36
	learnset MOVE_FEINT, 39
	learnset MOVE_FALSE_SWIPE, 45
	learnset MOVE_PROTECT, 50
	learnset MOVE_CLOSE_COMBAT, 53
	terminatelearnset

levelup SPECIES_PROBOPASS
	learnset MOVE_MAGNET_RISE, 1
	learnset MOVE_GRAVITY, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_IRON_DEFENSE, 1
	learnset MOVE_MAGNET_BOMB, 1
	learnset MOVE_BLOCK, 1
	learnset MOVE_IRON_DEFENSE, 7
	learnset MOVE_MAGNET_BOMB, 13
	learnset MOVE_BLOCK, 19
	learnset MOVE_THUNDER_WAVE, 25
	learnset MOVE_ROCK_SLIDE, 31
	learnset MOVE_SANDSTORM, 37
	learnset MOVE_REST, 43
	learnset MOVE_POWER_GEM, 49
	learnset MOVE_DISCHARGE, 55
	learnset MOVE_STONE_EDGE, 61
	learnset MOVE_ZAP_CANNON, 67
	learnset MOVE_LOCK_ON, 73
	learnset MOVE_EARTH_POWER, 79
	terminatelearnset

levelup SPECIES_DUSKNOIR
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_GRAVITY, 1
	learnset MOVE_BIND, 1
	learnset MOVE_LEER, 1
	learnset MOVE_NIGHT_SHADE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_DISABLE, 6
	learnset MOVE_FORESIGHT, 9
	learnset MOVE_ASTONISH, 14
	learnset MOVE_CONFUSE_RAY, 17
	learnset MOVE_SHADOW_SNEAK, 22
	learnset MOVE_PURSUIT, 25
	learnset MOVE_CURSE, 30
	learnset MOVE_WILL_O_WISP, 33
	learnset MOVE_SHADOW_PUNCH, 37
	learnset MOVE_MEAN_LOOK, 43
	learnset MOVE_PAYBACK, 51
	learnset MOVE_FUTURE_SIGHT, 61
	terminatelearnset

levelup SPECIES_FROSLASS
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_LEER, 1
	learnset MOVE_DOUBLE_TEAM, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_DOUBLE_TEAM, 4
	learnset MOVE_OMINOUS_WIND, 10
	learnset MOVE_DOUBLE_TEAM, 13
	learnset MOVE_SHADOW_BALL, 19
	learnset MOVE_BLIZZARD, 22
	learnset MOVE_WAKE_UP_SLAP, 28
	learnset MOVE_CAPTIVATE, 31
	learnset MOVE_ICE_SHARD, 37
	learnset MOVE_HAIL, 40
	learnset MOVE_BLIZZARD, 51
	learnset MOVE_DESTINY_BOND, 59
	terminatelearnset

levelup SPECIES_ROTOM
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_THUNDER_WAVE, 7
	learnset MOVE_MEMENTO, 7
	learnset MOVE_CONFUSE_RAY, 7
	learnset MOVE_UPROAR, 8
	learnset MOVE_DOUBLE_TEAM, 15
	learnset MOVE_SHOCK_WAVE, 22
	learnset MOVE_OMINOUS_WIND, 29
	learnset MOVE_SUBSTITUTE, 36
	learnset MOVE_CHARGE, 43
	learnset MOVE_DISCHARGE, 50
	terminatelearnset

levelup SPECIES_UXIE
	learnset MOVE_POUND, 1
	learnset MOVE_COSMIC_POWER, 3
	learnset MOVE_METRONOME, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_ELECTROWEB, 9
	learnset MOVE_HIDDEN_POWER, 12
	learnset MOVE_CONFUSE_RAY, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_SHOCK_WAVE, 21
	learnset MOVE_GRAVITY, 24
	learnset MOVE_TRICK_ROOM, 28
	learnset MOVE_THUNDER_WAVE, 32
	learnset MOVE_PSYCHO_CUT, 36
	learnset MOVE_VOLT_SWITCH, 41
	learnset MOVE_TRI_ATTACK, 45
	learnset MOVE_DISCHARGE, 49
	learnset MOVE_PSYCHIC, 53
	learnset MOVE_MOONBLAST, 58
	terminatelearnset

levelup SPECIES_MESPRIT
	learnset MOVE_POUND, 1
	learnset MOVE_MEDITATE, 3
	learnset MOVE_FAIRY_WIND, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_ACID_SPRAY, 9
	learnset MOVE_HIDDEN_POWER, 12
	learnset MOVE_FLATTER, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_SLUDGE, 21
	learnset MOVE_GRAVITY, 24
	learnset MOVE_YAWN, 28
	learnset MOVE_TOXIC, 32
	learnset MOVE_EXTRASENSORY, 36
	learnset MOVE_U_TURN, 41
	learnset MOVE_TRI_ATTACK, 45
	learnset MOVE_CROSS_POISON, 49
	learnset MOVE_PSYCHIC, 53
	learnset MOVE_MOONBLAST, 58
	terminatelearnset

levelup SPECIES_AZELF
	learnset MOVE_POUND, 1
	learnset MOVE_SHARPEN, 3
	learnset MOVE_DOUBLE_SLAP, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_WHIRLPOOL, 9
	learnset MOVE_HIDDEN_POWER, 12
	learnset MOVE_SWAGGER, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_BRINE, 21
	learnset MOVE_GRAVITY, 24
	learnset MOVE_TAUNT, 28
	learnset MOVE_FAKE_OUT, 32
	learnset MOVE_PSYCHO_CUT, 36
	learnset MOVE_U_TURN, 41
	learnset MOVE_TRI_ATTACK, 45
	learnset MOVE_SCALD, 49
	learnset MOVE_PSYCHIC, 53
	learnset MOVE_MOONBLAST, 58
	terminatelearnset

levelup SPECIES_DIALGA
	learnset MOVE_SAND_TOMB, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_ROAR, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_GYRO_BALL, 9
	learnset MOVE_ROCK_SMASH, 12
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_IRON_DEFENSE, 18
	learnset MOVE_ANCIENT_POWER, 21
	learnset MOVE_DRAGON_BREATH, 24
	learnset MOVE_MAGNET_RISE, 28
	learnset MOVE_POWER_GEM, 32
	learnset MOVE_METAL_SOUND, 36
	learnset MOVE_DRAGON_PULSE, 41
	learnset MOVE_FLASH_CANNON, 45
	learnset MOVE_AURA_SPHERE, 49
	learnset MOVE_HEAVY_SLAM, 53
	learnset MOVE_EARTH_POWER, 58
	learnset MOVE_ROAR_OF_TIME, 61
	terminatelearnset

levelup SPECIES_PALKIA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_AQUA_RING, 3
	learnset MOVE_WHIRLPOOL, 5
	learnset MOVE_RAIN_DANCE, 7
	learnset MOVE_SCALE_SHOT, 9
	learnset MOVE_TRICK_ROOM, 12
	learnset MOVE_CHILLING_WATER, 15
	learnset MOVE_ICY_WIND, 18
	learnset MOVE_DRAGON_BREATH, 21
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_BRINE, 28
	learnset MOVE_OUTRAGE, 32
	learnset MOVE_AURA_SPHERE, 36
	learnset MOVE_SCALD, 41
	learnset MOVE_SPACIAL_REND, 45
	learnset MOVE_THUNDERBOLT, 49
	learnset MOVE_ICE_BEAM, 53
	learnset MOVE_EARTH_POWER, 58
	learnset MOVE_HYDRO_PUMP, 61
	terminatelearnset

levelup SPECIES_HEATRAN
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_METAL_BURST, 5
	learnset MOVE_FIRE_SPIN, 7
	learnset MOVE_ROCK_BLAST, 9
	learnset MOVE_PAYBACK, 13
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_FLAME_CHARGE, 20
	learnset MOVE_METAL_CLAW, 24
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_METAL_SOUND, 32
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_CRUNCH, 39
	learnset MOVE_SCORCHING_SANDS, 43
	learnset MOVE_LAVA_PLUME, 48
	learnset MOVE_FLASH_CANNON, 51
	learnset MOVE_MAGMA_STORM, 55
	learnset MOVE_EARTH_POWER, 59
	learnset MOVE_ERUPTION, 63
	terminatelearnset

levelup SPECIES_REGIGIGAS
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_POWER_UP_PUNCH, 7
	learnset MOVE_DOUBLE_HIT, 9
	learnset MOVE_PROTECT, 12
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_BULLDOZE, 18
	learnset MOVE_REVENGE, 21
	learnset MOVE_BULK_UP, 24
	learnset MOVE_ICE_PUNCH, 28
	learnset MOVE_CRUSH_CLAW, 32
	learnset MOVE_THUNDER_PUNCH, 36
	learnset MOVE_ZEN_HEADBUTT, 41
	learnset MOVE_CRUSH_GRIP, 45
	learnset MOVE_HEAVY_SLAM, 49
	learnset MOVE_EARTHQUAKE, 53
	learnset MOVE_SUBSTITUTE, 58
	learnset MOVE_GIGA_IMPACT, 61
	terminatelearnset

levelup SPECIES_GIRATINA
	learnset MOVE_TACKLE, 1
	learnset MOVE_DESTINY_BOND, 3
	learnset MOVE_LICK, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_OMINOUS_WIND, 20
	learnset MOVE_CURSE, 26
	learnset MOVE_DRAGON_RAGE, 30
	learnset MOVE_ANCIENT_POWER, 32
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_SHADOW_CLAW, 39
	learnset MOVE_AURA_SPHERE, 43
	learnset MOVE_PAIN_SPLIT, 48
	learnset MOVE_DRAGON_CLAW, 51
	learnset MOVE_SHADOW_FORCE, 54
	learnset MOVE_DRACO_METEOR, 57
	learnset MOVE_EARTH_POWER, 59
	terminatelearnset

levelup SPECIES_CRESSELIA
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_DRAINING_KISS, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_THUNDER_WAVE, 13
	learnset MOVE_ICY_WIND, 15
	learnset MOVE_CHARM, 18
	learnset MOVE_LAST_RESORT, 21
	learnset MOVE_AURORA_BEAM, 24
	learnset MOVE_COSMIC_POWER, 28
	learnset MOVE_PSYBEAM, 32
	learnset MOVE_MOONLIGHT, 36
	learnset MOVE_PSYSHOCK, 41
	learnset MOVE_DAZZLING_GLEAM, 45
	learnset MOVE_THUNDERBOLT, 49
	learnset MOVE_CALM_MIND, 53
	learnset MOVE_PSYCHIC, 57
	learnset MOVE_LUNAR_DANCE, 60
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 3
	learnset MOVE_HEART_SWAP, 5
	learnset MOVE_SWEET_SCENT, 7
	learnset MOVE_WHIRLPOOL, 9
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_ACID_ARMOR, 17
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_LAST_RESORT, 23
	learnset MOVE_U_TURN, 27
	learnset MOVE_AQUA_RING, 32
	learnset MOVE_CHARM, 36
	learnset MOVE_SIGNAL_BEAM, 40
	learnset MOVE_DAZZLING_GLEAM, 44
	learnset MOVE_MUDDY_WATER, 48
	learnset MOVE_TAIL_GLOW, 52
	learnset MOVE_PSYCHIC, 54
	learnset MOVE_ICE_BEAM, 57
	learnset MOVE_HYDRO_PUMP, 60
	terminatelearnset

levelup SPECIES_DARKRAI
	learnset MOVE_LICK, 1
	learnset MOVE_DOUBLE_TEAM, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_HYPNOSIS, 7
	learnset MOVE_SNARL, 9
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_NIGHTMARE, 17
	learnset MOVE_OMINOUS_WIND, 20
	learnset MOVE_GRAVITY, 25
	learnset MOVE_WILL_O_WISP, 29
	learnset MOVE_EMBARGO, 32
	learnset MOVE_DARK_VOID, 36
	learnset MOVE_EXTRASENSORY, 39
	learnset MOVE_CALM_MIND, 44
	learnset MOVE_SHADOW_BALL, 49
	learnset MOVE_DREAM_EATER, 51
	learnset MOVE_DARK_PULSE, 55
	learnset MOVE_ICE_BEAM, 58
	learnset MOVE_LUNAR_DANCE, 60
	terminatelearnset

levelup SPECIES_SHAYMIN
	learnset MOVE_TACKLE, 1
	learnset MOVE_CHARM, 3
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_SWEET_SCENT, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_COVET, 13
	learnset MOVE_GRASS_WHISTLE, 17
	learnset MOVE_MEGA_DRAIN, 20
	learnset MOVE_LIGHT_SCREEN, 24
	learnset MOVE_NATURE_POWER, 28
	learnset MOVE_CALM_MIND, 33
	learnset MOVE_ZEN_HEADBUTT, 36
	learnset MOVE_GIGA_DRAIN, 39
	learnset MOVE_DAZZLING_GLEAM, 43
	learnset MOVE_AROMATHERAPY, 47
	learnset MOVE_EARTH_POWER, 51
	learnset MOVE_SEED_FLARE, 55
	learnset MOVE_NASTY_PLOT, 61
	learnset MOVE_ENDEAVOR, 63
	terminatelearnset

levelup SPECIES_ARCEUS
	learnset MOVE_SCRATCH, 1
	learnset MOVE_DOUBLE_TEAM, 3
	learnset MOVE_RECOVER, 5
	learnset MOVE_DOUBLE_HIT, 7
	learnset MOVE_SEISMIC_TOSS, 9
	learnset MOVE_ANCIENT_POWER, 12
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_LAST_RESORT, 18
	learnset MOVE_CALM_MIND, 21
	learnset MOVE_TRI_ATTACK, 24
	learnset MOVE_AURA_SPHERE, 28
	learnset MOVE_PERISH_SONG, 32
	learnset MOVE_JUDGMENT, 36
	learnset MOVE_NASTY_PLOT, 41
	learnset MOVE_EXTREME_SPEED, 45
	learnset MOVE_ROAR_OF_TIME, 49
	learnset MOVE_SPACIAL_REND, 49
	learnset MOVE_HYDRO_CANNON, 53
	learnset MOVE_HYPER_BEAM, 58
	learnset MOVE_BLAST_BURN, 61
	terminatelearnset


levelup SPECIES_EGG
    learnset MOVE_SPLASH, 1 
    terminatelearnset


levelup SPECIES_BAD_EGG
    learnset MOVE_SPLASH, 1 
    terminatelearnset


levelup SPECIES_DEOXYS_ATTACK
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_POWER_UP_PUNCH, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_TAUNT, 7
	learnset MOVE_MACH_PUNCH, 9
	learnset MOVE_BULK_UP, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_KNOCK_OFF, 18
	learnset MOVE_DRAIN_PUNCH, 21
	learnset MOVE_SWORDS_DANCE, 24
	learnset MOVE_PSYSHOCK, 28
	learnset MOVE_FIRE_PUNCH, 32
	learnset MOVE_ZEN_HEADBUTT, 36
	learnset MOVE_SHADOW_BALL, 41
	learnset MOVE_THUNDERBOLT, 45
	learnset MOVE_ICE_BEAM, 49
	learnset MOVE_CLOSE_COMBAT, 53
	learnset MOVE_PSYCHO_BOOST, 58
	learnset MOVE_EXTREME_SPEED, 61
    terminatelearnset


levelup SPECIES_DEOXYS_DEFENSE
	learnset MOVE_NIGHT_SHADE, 1
	learnset MOVE_SPIKES, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_TAUNT, 7
	learnset MOVE_RECOVER, 9
	learnset MOVE_THUNDER_WAVE, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_CONFUSE_RAY, 18
	learnset MOVE_ICY_WIND, 21
	learnset MOVE_TOXIC, 24
	learnset MOVE_SUBSTITUTE, 28
	learnset MOVE_EXTRASENSORY, 32
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_BARRIER, 41
	learnset MOVE_PAIN_SPLIT, 45
	learnset MOVE_PSYCHIC, 49
	learnset MOVE_ZAP_CANNON, 53
	learnset MOVE_PSYCHO_BOOST, 58
	learnset MOVE_MIRROR_COAT, 61
    terminatelearnset


levelup SPECIES_DEOXYS_SPEED
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_HIDDEN_POWER, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_TAUNT, 7
	learnset MOVE_VACUUM_WAVE, 9
	learnset MOVE_DETECT, 12
	learnset MOVE_PSYBEAM, 15
	learnset MOVE_CHARGE_BEAM, 18
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_SIGNAL_BEAM, 24
	learnset MOVE_PSYSHOCK, 28
	learnset MOVE_BRICK_BREAK, 32
	learnset MOVE_RECOVER, 36
	learnset MOVE_SHADOW_BALL, 41
	learnset MOVE_ZEN_HEADBUTT, 45
	learnset MOVE_CALM_MIND, 49
	learnset MOVE_ICE_BEAM, 53
	learnset MOVE_PSYCHO_BOOST, 58
	learnset MOVE_EXTREME_SPEED, 61
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_DESTINY_BOND, 3
	learnset MOVE_LICK, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_OMINOUS_WIND, 20
	learnset MOVE_CURSE, 26
	learnset MOVE_DRAGON_RAGE, 30
	learnset MOVE_ANCIENT_POWER, 32
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_SHADOW_CLAW, 39
	learnset MOVE_AURA_SPHERE, 43
	learnset MOVE_PAIN_SPLIT, 48
	learnset MOVE_DRAGON_CLAW, 51
	learnset MOVE_SHADOW_FORCE, 54
	learnset MOVE_DRACO_METEOR, 57
	learnset MOVE_EARTH_POWER, 59
    terminatelearnset


levelup SPECIES_SHAYMIN_SKY
	learnset MOVE_TACKLE, 1
	learnset MOVE_CHARM, 3
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_GUST, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_AGILITY, 17
	learnset MOVE_MAGICAL_LEAF, 20
	learnset MOVE_AIR_CUTTER, 24
	learnset MOVE_NATURE_POWER, 28
	learnset MOVE_CALM_MIND, 33
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_GIGA_DRAIN, 39
	learnset MOVE_DAZZLING_GLEAM, 43
	learnset MOVE_AROMATHERAPY, 47
	learnset MOVE_EARTH_POWER, 51
	learnset MOVE_SEED_FLARE, 55
	learnset MOVE_BRAVE_BIRD, 59
	learnset MOVE_MOONBLAST, 63
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
	learnset MOVE_POUND, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_SWIFT, 13
	learnset MOVE_FLAME_CHARGE, 17
	learnset MOVE_TRICK_ROOM, 20
	learnset MOVE_POWER_UP_PUNCH, 25
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_SCORCHING_SANDS, 33
	learnset MOVE_FIRE_PUNCH, 36
	learnset MOVE_TRICK, 39
	learnset MOVE_EXTRASENSORY, 44
	learnset MOVE_FLAMETHROWER, 48
	learnset MOVE_AURA_SPHERE, 50
	learnset MOVE_WILD_CHARGE, 55
	learnset MOVE_DAZZLING_GLEAM, 59
	learnset MOVE_V_CREATE, 63
    terminatelearnset


levelup SPECIES_SNIVY
	learnset MOVE_TWISTER, 1
	learnset MOVE_TACKLE, 2
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_MEGA_DRAIN, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_SLAM, 9
	learnset MOVE_AERIAL_ACE, 11
	learnset MOVE_GROWTH, 12
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_GLARE, 14
	learnset MOVE_SYNTHESIS, 17
	learnset MOVE_IRON_TAIL, 19
	learnset MOVE_SEED_BOMB, 21
	learnset MOVE_KNOCK_OFF, 22
	learnset MOVE_ENERGY_BALL, 24
	learnset MOVE_COIL, 27
	learnset MOVE_LEAF_STORM, 31
	terminatelearnset

levelup SPECIES_SERVINE
	learnset MOVE_TWISTER, 1
	learnset MOVE_TACKLE, 2
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_MEGA_DRAIN, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_SLAM, 9
	learnset MOVE_AERIAL_ACE, 11
	learnset MOVE_GROWTH, 12
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_GLARE, 14
	learnset MOVE_SYNTHESIS, 17
	learnset MOVE_IRON_TAIL, 19
	learnset MOVE_SEED_BOMB, 21
	learnset MOVE_KNOCK_OFF, 22
	learnset MOVE_ENERGY_BALL, 24
	learnset MOVE_COIL, 27
	learnset MOVE_LEAF_STORM, 31
	terminatelearnset

levelup SPECIES_SERPERIOR
	learnset MOVE_LEAF_STORM, 1
	terminatelearnset

levelup SPECIES_TEPIG
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_EMBER, 3
	learnset MOVE_DEFENSE_CURL, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_CURSE, 7
	learnset MOVE_ROLLOUT, 9
	learnset MOVE_FLAME_CHARGE, 11
	learnset MOVE_ROCK_SMASH, 12
	learnset MOVE_WILL_O_WISP, 14
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_ROAR, 18
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_LAVA_PLUME, 23
	learnset MOVE_HEAVY_SLAM, 24
	learnset MOVE_SUPERPOWER, 30
	learnset MOVE_FLARE_BLITZ, 31
	learnset MOVE_HEAD_SMASH, 32
	terminatelearnset

levelup SPECIES_PIGNITE
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_EMBER, 3
	learnset MOVE_DEFENSE_CURL, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_CURSE, 7
	learnset MOVE_ROLLOUT, 9
	learnset MOVE_FLAME_CHARGE, 11
	learnset MOVE_ROCK_SMASH, 12
	learnset MOVE_WILL_O_WISP, 14
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_ROAR, 18
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_LAVA_PLUME, 23
	learnset MOVE_HEAVY_SLAM, 24
	learnset MOVE_SUPERPOWER, 30
	learnset MOVE_FLARE_BLITZ, 31
	learnset MOVE_HEAD_SMASH, 32
	terminatelearnset

levelup SPECIES_EMBOAR
	learnset MOVE_EMBER, 1
	terminatelearnset

levelup SPECIES_OSHAWOTT
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SOAK, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SCREECH, 7
	learnset MOVE_FURY_CUTTER, 9
	learnset MOVE_AQUA_JET, 11
	learnset MOVE_DETECT, 12
	learnset MOVE_REVENGE, 14
	learnset MOVE_SHEER_COLD, 15
	learnset MOVE_ENCORE, 17
	learnset MOVE_RAZOR_SHELL, 19
	learnset MOVE_AIR_SLASH, 21
	learnset MOVE_WATER_SPORT, 23
	learnset MOVE_SWORDS_DANCE, 26
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_HYDRO_PUMP, 31
	terminatelearnset

levelup SPECIES_DEWOTT
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_WATER_GUN, 3
	learnset MOVE_SOAK, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SCREECH, 7
	learnset MOVE_FURY_CUTTER, 9
	learnset MOVE_AQUA_JET, 11
	learnset MOVE_DETECT, 12
	learnset MOVE_REVENGE, 14
	learnset MOVE_SHEER_COLD, 15
	learnset MOVE_ENCORE, 17
	learnset MOVE_RAZOR_SHELL, 19
	learnset MOVE_AIR_SLASH, 21
	learnset MOVE_WATER_SPORT, 23
	learnset MOVE_SWORDS_DANCE, 26
	learnset MOVE_AQUA_TAIL, 30
	learnset MOVE_HYDRO_PUMP, 31
	terminatelearnset

levelup SPECIES_SAMUROTT
	learnset MOVE_AQUA_JET, 1
	terminatelearnset

levelup SPECIES_PATRAT
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_BITE, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SUPER_FANG, 7
	learnset MOVE_DETECT, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_FOLLOW_ME, 12
	learnset MOVE_SLAM, 14
	learnset MOVE_HONE_CLAWS, 15
	learnset MOVE_SUPER_FANG, 17
	learnset MOVE_KNOCK_OFF, 19
	learnset MOVE_HYPNOSIS, 21
	learnset MOVE_DIG, 23
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_HYPER_FANG, 27
	learnset MOVE_DOUBLE_EDGE, 29
	terminatelearnset

levelup SPECIES_WATCHOG
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_BITE, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SUPER_FANG, 7
	learnset MOVE_DETECT, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_FOLLOW_ME, 12
	learnset MOVE_SLAM, 14
	learnset MOVE_HONE_CLAWS, 15
	learnset MOVE_SUPER_FANG, 17
	learnset MOVE_KNOCK_OFF, 19
	learnset MOVE_HYPNOSIS, 21
	learnset MOVE_DIG, 23
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_HYPER_FANG, 27
	learnset MOVE_DOUBLE_EDGE, 29
	learnset MOVE_AQUA_TAIL, 31
	learnset MOVE_GIGA_IMPACT, 34
	terminatelearnset

levelup SPECIES_LILLIPUP
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 2
	learnset MOVE_LICK, 3
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_BITE, 6
	learnset MOVE_YAWN, 7
	learnset MOVE_FEINT, 9
	learnset MOVE_HOWL, 11
	learnset MOVE_COVET, 12
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_CHARM, 15
	learnset MOVE_ICE_FANG, 17
	learnset MOVE_SNORE, 19
	learnset MOVE_THUNDER_FANG, 21
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_WAKE_UP_SLAP, 25
	learnset MOVE_RETURN, 27
	learnset MOVE_REVERSAL, 29
	terminatelearnset

levelup SPECIES_HERDIER
	learnset MOVE_LICK, 3
	learnset MOVE_HIDDEN_POWER, 4
	learnset MOVE_BITE, 6
	learnset MOVE_YAWN, 7
	learnset MOVE_FEINT, 9
	learnset MOVE_HOWL, 11
	learnset MOVE_COVET, 12
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_CHARM, 15
	learnset MOVE_ICE_FANG, 17
	learnset MOVE_SNORE, 19
	learnset MOVE_THUNDER_FANG, 21
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_WAKE_UP_SLAP, 25
	learnset MOVE_RETURN, 27
	learnset MOVE_REVERSAL, 29
	learnset MOVE_DOUBLE_EDGE, 32
	terminatelearnset

levelup SPECIES_STOUTLAND
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PURRLOIN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_PURSUIT, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_FAKE_OUT, 7
	learnset MOVE_SNORE, 9
	learnset MOVE_COVET, 11
	learnset MOVE_TAUNT, 12
	learnset MOVE_EMBARGO, 14
	learnset MOVE_MEMENTO, 15
	learnset MOVE_HONE_CLAWS, 17
	learnset MOVE_MIRACLE_EYE, 19
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_DIG, 22
	learnset MOVE_IRON_TAIL, 24
	learnset MOVE_SUCKER_PUNCH, 26
	learnset MOVE_YAWN, 28
	terminatelearnset

levelup SPECIES_LIEPARD
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PANSAGE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 2
	learnset MOVE_LICK, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_BITE, 6
	learnset MOVE_TICKLE, 7
	learnset MOVE_FURY_SWIPES, 9
	learnset MOVE_BULLET_SEED, 11
	learnset MOVE_TORMENT, 12
	learnset MOVE_MEGA_DRAIN, 14
	learnset MOVE_LEECH_SEED, 15
	learnset MOVE_HONE_CLAWS, 17
	learnset MOVE_SEED_BOMB, 19
	learnset MOVE_LOW_SWEEP, 21
	learnset MOVE_GRASS_WHISTLE, 22
	learnset MOVE_KNOCK_OFF, 24
	learnset MOVE_SUNNY_DAY, 26
	learnset MOVE_SOLAR_BEAM, 28
	terminatelearnset

levelup SPECIES_SIMISAGE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PANSEAR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 2
	learnset MOVE_LICK, 3
	learnset MOVE_EMBER, 4
	learnset MOVE_BITE, 6
	learnset MOVE_TICKLE, 7
	learnset MOVE_FURY_SWIPES, 9
	learnset MOVE_FLAME_CHARGE, 11
	learnset MOVE_TORMENT, 12
	learnset MOVE_WILL_O_WISP, 14
	learnset MOVE_GRASS_KNOT, 15
	learnset MOVE_HONE_CLAWS, 17
	learnset MOVE_FIRE_PUNCH, 19
	learnset MOVE_LOW_SWEEP, 20
	learnset MOVE_KNOCK_OFF, 23
	learnset MOVE_LAVA_PLUME, 25
	learnset MOVE_SUNNY_DAY, 27
	learnset MOVE_OVERHEAT, 29
	terminatelearnset

levelup SPECIES_SIMISEAR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PANPOUR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 2
	learnset MOVE_LICK, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_BITE, 6
	learnset MOVE_TICKLE, 7
	learnset MOVE_FURY_SWIPES, 9
	learnset MOVE_BRINE, 11
	learnset MOVE_TORMENT, 12
	learnset MOVE_COVET, 14
	learnset MOVE_GRASS_KNOT, 15
	learnset MOVE_HONE_CLAWS, 17
	learnset MOVE_WATER_SPORT, 19
	learnset MOVE_LOW_SWEEP, 21
	learnset MOVE_AQUA_TAIL, 22
	learnset MOVE_KNOCK_OFF, 24
	learnset MOVE_RAIN_DANCE, 26
	learnset MOVE_HYDRO_PUMP, 28
	terminatelearnset

levelup SPECIES_SIMIPOUR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_MUNNA
	learnset MOVE_PSYWAVE, 1
	learnset MOVE_DEFENSE_CURL, 2
	learnset MOVE_CONFUSION, 3
	learnset MOVE_YAWN, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_YAWN, 7
	learnset MOVE_SWIFT, 9
	learnset MOVE_PSYBEAM, 11
	learnset MOVE_MOONLIGHT, 12
	learnset MOVE_HYPNOSIS, 13
	learnset MOVE_MEMENTO, 15
	learnset MOVE_SONIC_BOOM, 17
	learnset MOVE_HEAL_BELL, 19
	learnset MOVE_ZEN_HEADBUTT, 21
	learnset MOVE_CALM_MIND, 22
	learnset MOVE_EXTRASENSORY, 24
	learnset MOVE_TRICK_ROOM, 27
	learnset MOVE_DREAM_EATER, 30
	terminatelearnset

levelup SPECIES_MUSHARNA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PIDOVE
	learnset MOVE_GUST, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_LEER, 3
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_TAUNT, 6
	learnset MOVE_AIR_CUTTER, 7
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_PLUCK, 12
	learnset MOVE_DETECT, 13
	learnset MOVE_STEEL_WING, 15
	learnset MOVE_ROOST, 17
	learnset MOVE_SECRET_POWER, 19
	learnset MOVE_AIR_SLASH, 21
	learnset MOVE_U_TURN, 22
	learnset MOVE_DRILL_PECK, 24
	learnset MOVE_NIGHT_SLASH, 26
	learnset MOVE_BRAVE_BIRD, 29
	terminatelearnset

levelup SPECIES_TRANQUILL
	learnset MOVE_GUST, 1
	learnset MOVE_GROWL, 2
	learnset MOVE_LEER, 3
	learnset MOVE_QUICK_ATTACK, 4
	learnset MOVE_TAUNT, 6
	learnset MOVE_AIR_CUTTER, 7
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_FEINT, 11
	learnset MOVE_PLUCK, 12
	learnset MOVE_DETECT, 13
	learnset MOVE_STEEL_WING, 15
	learnset MOVE_ROOST, 17
	learnset MOVE_SECRET_POWER, 19
	learnset MOVE_AIR_SLASH, 21
	learnset MOVE_U_TURN, 22
	learnset MOVE_DRILL_PECK, 24
	learnset MOVE_NIGHT_SLASH, 26
	learnset MOVE_BRAVE_BIRD, 29
	terminatelearnset

levelup SPECIES_UNFEZANT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BLITZLE
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_THUNDER_SHOCK, 3
	learnset MOVE_CHARGE, 4
	learnset MOVE_THUNDER_WAVE, 6
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_STOMP, 9
	learnset MOVE_SPARK, 11
	learnset MOVE_FLAME_CHARGE, 12
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_ME_FIRST, 15
	learnset MOVE_SHOCK_WAVE, 17
	learnset MOVE_BOUNCE, 19
	learnset MOVE_LIGHT_SCREEN, 21
	learnset MOVE_DISCHARGE, 23
	learnset MOVE_AGILITY, 25
	learnset MOVE_TAKE_DOWN, 27
	learnset MOVE_THUNDERBOLT, 30
	terminatelearnset

levelup SPECIES_ZEBSTRIKA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_ROGGENROLA
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_ROCK_THROW, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SECRET_POWER, 7
	learnset MOVE_SANDSTORM, 9
	learnset MOVE_ROCK_BLAST, 11
	learnset MOVE_IRON_DEFENSE, 12
	learnset MOVE_STEALTH_ROCK, 13
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_SELF_DESTRUCT, 17
	learnset MOVE_MAGNITUDE, 19
	learnset MOVE_ROCK_SLIDE, 21
	learnset MOVE_IRON_HEAD, 23
	learnset MOVE_STONE_EDGE, 25
	learnset MOVE_FISSURE, 27
	learnset MOVE_EXPLOSION, 30
	terminatelearnset

levelup SPECIES_BOLDORE
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_ROCK_THROW, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SECRET_POWER, 7
	learnset MOVE_SANDSTORM, 9
	learnset MOVE_ROCK_BLAST, 11
	learnset MOVE_IRON_DEFENSE, 12
	learnset MOVE_STEALTH_ROCK, 13
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_SELF_DESTRUCT, 17
	learnset MOVE_MAGNITUDE, 19
	learnset MOVE_ROCK_SLIDE, 21
	learnset MOVE_IRON_HEAD, 23
	learnset MOVE_STONE_EDGE, 25
	learnset MOVE_FISSURE, 27
	learnset MOVE_EXPLOSION, 30
	terminatelearnset

levelup SPECIES_GIGALITH
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_WOOBAT
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ATTRACT, 2
	learnset MOVE_GUST, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SWEET_SCENT, 7
	learnset MOVE_PSYBEAM, 9
	learnset MOVE_GRAVITY, 11
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_FAKE_TEARS, 14
	learnset MOVE_EMBARGO, 16
	learnset MOVE_LEECH_LIFE, 18
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_AIR_SLASH, 22
	learnset MOVE_EXTRASENSORY, 24
	learnset MOVE_U_TURN, 26
	learnset MOVE_PSYCHIC, 28
	learnset MOVE_NASTY_PLOT, 30
	terminatelearnset

levelup SPECIES_SWOOBAT
	learnset MOVE_CONFUSION, 1
	learnset MOVE_ATTRACT, 2
	learnset MOVE_GUST, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_HIDDEN_POWER, 6
	learnset MOVE_SWEET_SCENT, 7
	learnset MOVE_PSYBEAM, 9
	learnset MOVE_GRAVITY, 11
	learnset MOVE_AIR_CUTTER, 12
	learnset MOVE_FAKE_TEARS, 14
	learnset MOVE_EMBARGO, 16
	learnset MOVE_LEECH_LIFE, 18
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_AIR_SLASH, 22
	learnset MOVE_EXTRASENSORY, 24
	learnset MOVE_U_TURN, 26
	learnset MOVE_PSYCHIC, 29
	learnset MOVE_NASTY_PLOT, 32
	terminatelearnset

levelup SPECIES_DRILBUR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 2
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_METAL_CLAW, 4
	learnset MOVE_FURY_SWIPES, 6
	learnset MOVE_MUD_SHOT, 7
	learnset MOVE_SANDSTORM, 9
	learnset MOVE_HIDDEN_POWER, 11
	learnset MOVE_STEALTH_ROCK, 12
	learnset MOVE_MUD_SPORT, 13
	learnset MOVE_ROCK_TOMB, 14
	learnset MOVE_SLASH, 17
	learnset MOVE_DIG, 19
	learnset MOVE_ROCK_SLIDE, 21
	learnset MOVE_SHADOW_CLAW, 23
	learnset MOVE_IRON_HEAD, 25
	learnset MOVE_SWORDS_DANCE, 26
	learnset MOVE_FISSURE, 29
	terminatelearnset

levelup SPECIES_EXCADRILL
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_AUDINO
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_TIMBURR
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 3
	learnset MOVE_ARM_THRUST, 4
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_MEGA_PUNCH, 10
	learnset MOVE_ROCK_BLAST, 13
	learnset MOVE_FORCE_PALM, 15
	learnset MOVE_DETECT, 17
	learnset MOVE_MIRACLE_EYE, 19
	learnset MOVE_PAYBACK, 22
	learnset MOVE_BULK_UP, 24
	learnset MOVE_THUNDER_PUNCH, 26
	learnset MOVE_DRAIN_PUNCH, 28
	learnset MOVE_COUNTER, 30
	learnset MOVE_ICE_PUNCH, 31
	learnset MOVE_REVERSAL, 33
	terminatelearnset

levelup SPECIES_GURDURR
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 3
	learnset MOVE_ARM_THRUST, 4
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_ENDURE, 8
	learnset MOVE_MEGA_PUNCH, 10
	learnset MOVE_ROCK_BLAST, 13
	learnset MOVE_FORCE_PALM, 15
	learnset MOVE_DETECT, 17
	learnset MOVE_MIRACLE_EYE, 19
	learnset MOVE_PAYBACK, 22
	learnset MOVE_BULK_UP, 24
	learnset MOVE_THUNDER_PUNCH, 26
	learnset MOVE_DRAIN_PUNCH, 28
	learnset MOVE_COUNTER, 30
	learnset MOVE_ICE_PUNCH, 31
	learnset MOVE_REVERSAL, 33
	terminatelearnset

levelup SPECIES_CONKELDURR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_TYMPOLE
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SOAK, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_SUPERSONIC, 6
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_MUD_SHOT, 9
	learnset MOVE_ICY_WIND, 11
	learnset MOVE_AQUA_RING, 13
	learnset MOVE_MUD_BOMB, 15
	terminatelearnset

levelup SPECIES_PALPITOAD
	learnset MOVE_BUBBLE, 1
	learnset MOVE_SOAK, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_SUPERSONIC, 6
	learnset MOVE_WHIRLPOOL, 7
	learnset MOVE_MUD_SHOT, 9
	learnset MOVE_ICY_WIND, 11
	learnset MOVE_AQUA_RING, 13
	learnset MOVE_MUD_BOMB, 15
	learnset MOVE_KNOCK_OFF, 17
	learnset MOVE_WATER_SPORT, 19
	learnset MOVE_SLUDGE, 21
	learnset MOVE_MUD_SPORT, 23
	learnset MOVE_FLAIL, 25
	learnset MOVE_SLUDGE_BOMB, 27
	learnset MOVE_EARTH_POWER, 29
	learnset MOVE_ENDEAVOR, 31
	terminatelearnset

levelup SPECIES_SEISMITOAD
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_THROH
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SAWK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SEWADDLE
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_BLOCK, 6
	learnset MOVE_CUT, 8
	learnset MOVE_SPIDER_WEB, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_GRASS_KNOT, 12
	learnset MOVE_SYNTHESIS, 14
	terminatelearnset

levelup SPECIES_SWADLOON
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_BLOCK, 6
	learnset MOVE_CUT, 8
	learnset MOVE_SPIDER_WEB, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_GRASS_KNOT, 12
	learnset MOVE_SYNTHESIS, 14
	learnset MOVE_IRON_DEFENSE, 16
	learnset MOVE_RAZOR_LEAF, 17
	learnset MOVE_SILVER_WIND, 20
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_BUG_BUZZ, 24
	learnset MOVE_GRASS_WHISTLE, 26
	learnset MOVE_DREAM_EATER, 28
	learnset MOVE_AIR_SLASH, 31
	terminatelearnset

levelup SPECIES_LEAVANNY
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_VENIPEDE
	learnset MOVE_TACKLE, 1
	learnset MOVE_POISON_GAS, 3
	learnset MOVE_POISON_STING, 4
	learnset MOVE_TWINEEDLE, 6
	learnset MOVE_TOXIC_SPIKES, 8
	learnset MOVE_POISON_TAIL, 9
	learnset MOVE_PAYBACK, 11
	learnset MOVE_BUG_BITE, 13
	terminatelearnset

levelup SPECIES_WHIRLIPEDE
	learnset MOVE_POISON_STING, 4
	learnset MOVE_TWINEEDLE, 6
	learnset MOVE_TOXIC_SPIKES, 8
	learnset MOVE_POISON_TAIL, 9
	learnset MOVE_PAYBACK, 11
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_VENOSHOCK, 15
	learnset MOVE_NATURE_POWER, 17
	learnset MOVE_SWAGGER, 18
	learnset MOVE_HORN_ATTACK, 20
	learnset MOVE_POISON_JAB, 22
	learnset MOVE_X_SCISSOR, 24
	learnset MOVE_EXPLOSION, 26
	learnset MOVE_ROCK_CLIMB, 29
	terminatelearnset

levelup SPECIES_SCOLIPEDE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_COTTONEE
	learnset MOVE_TACKLE, 1
	learnset MOVE_COTTON_SPORE, 3
	learnset MOVE_ABSORB, 4
	learnset MOVE_MEGA_DRAIN, 6
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_GRASS_WHISTLE, 9
	learnset MOVE_TAUNT, 10
	learnset MOVE_RAZOR_LEAF, 12
	learnset MOVE_PROTECT, 13
	learnset MOVE_FAKE_TEARS, 15
	learnset MOVE_LUSTER_PURGE, 17
	learnset MOVE_CHARM, 19
	learnset MOVE_GIGA_DRAIN, 21
	learnset MOVE_DREAM_EATER, 23
	learnset MOVE_MOONBLAST, 25
	learnset MOVE_ENERGY_BALL, 27
	learnset MOVE_ENDEAVOR, 29
	terminatelearnset

levelup SPECIES_WHIMSICOTT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PETILIL
	learnset MOVE_POUND, 1
	learnset MOVE_LEECH_SEED, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_STUN_SPORE, 6
	learnset MOVE_GROWTH, 7
	learnset MOVE_CUT, 9
	learnset MOVE_FEINT_ATTACK, 11
	learnset MOVE_HEAL_BELL, 13
	learnset MOVE_MAGICAL_LEAF, 14
	learnset MOVE_SNORE, 16
	learnset MOVE_SLEEP_POWDER, 18
	learnset MOVE_SEED_BOMB, 20
	learnset MOVE_FACADE, 22
	learnset MOVE_NASTY_PLOT, 24
	learnset MOVE_GIGA_DRAIN, 26
	learnset MOVE_PROTECT, 28
	learnset MOVE_EXPLOSION, 31
	terminatelearnset

levelup SPECIES_LILLIGANT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BASCULIN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SANDILE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 2
	learnset MOVE_SNORE, 4
	learnset MOVE_SAND_TOMB, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_TAUNT, 8
	learnset MOVE_MUD_BOMB, 10
	learnset MOVE_STEALTH_ROCK, 12
	learnset MOVE_THUNDER_FANG, 13
	learnset MOVE_BITE, 15
	learnset MOVE_DIG, 17
	terminatelearnset

levelup SPECIES_KROKOROK
	learnset MOVE_SNORE, 4
	learnset MOVE_SAND_TOMB, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_TAUNT, 8
	learnset MOVE_MUD_BOMB, 10
	learnset MOVE_STEALTH_ROCK, 12
	learnset MOVE_THUNDER_FANG, 13
	learnset MOVE_BITE, 15
	learnset MOVE_MUD_SPORT, 17
	learnset MOVE_DIG, 19
	learnset MOVE_HONE_CLAWS, 21
	learnset MOVE_CRUNCH, 23
	learnset MOVE_ROCK_CLIMB, 25
	learnset MOVE_FISSURE, 27
	learnset MOVE_AQUA_TAIL, 29
	learnset MOVE_SWORDS_DANCE, 32
	terminatelearnset

levelup SPECIES_KROOKODILE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DARUMAKA
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_LAVA_PLUME, 4
	learnset MOVE_YAWN, 5
	learnset MOVE_MEGA_PUNCH, 7
	learnset MOVE_FLAME_CHARGE, 9
	learnset MOVE_WILL_O_WISP, 11
	learnset MOVE_NATURE_POWER, 13
	learnset MOVE_FIRE_FANG, 15
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_BELLY_DRUM, 19
	learnset MOVE_FIRE_PUNCH, 21
	learnset MOVE_ROCK_SLIDE, 23
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_HAMMER_ARM, 27
	learnset MOVE_FLARE_BLITZ, 30
	terminatelearnset

levelup SPECIES_DARMANITAN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_MARACTUS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DWEBBLE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_ROCK_SMASH, 6
	learnset MOVE_ROCK_TOMB, 8
	learnset MOVE_BUG_BITE, 9
	learnset MOVE_ROCK_POLISH, 11
	learnset MOVE_HONE_CLAWS, 12
	learnset MOVE_ROCK_BLAST, 14
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_SHADOW_CLAW, 18
	learnset MOVE_ROCK_SLIDE, 20
	learnset MOVE_SPIKES, 22
	learnset MOVE_X_SCISSOR, 24
	learnset MOVE_SWORDS_DANCE, 26
	learnset MOVE_STEALTH_ROCK, 28
	learnset MOVE_ROCK_WRECKER, 32
	terminatelearnset

levelup SPECIES_CRUSTLE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SCRAGGY
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 3
	learnset MOVE_MEGA_PUNCH, 5
	learnset MOVE_PURSUIT, 7
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_SCARY_FACE, 11
	learnset MOVE_LOW_SWEEP, 13
	learnset MOVE_FIRE_FANG, 15
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_BRICK_BREAK, 19
	learnset MOVE_ICE_PUNCH, 21
	learnset MOVE_SUPER_FANG, 23
	learnset MOVE_DRAGON_DANCE, 25
	learnset MOVE_DRAGON_CLAW, 27
	learnset MOVE_HIGH_JUMP_KICK, 29
	learnset MOVE_HEAD_SMASH, 31
	terminatelearnset

levelup SPECIES_SCRAFTY
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SIGILYPH
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_YAMASK
	learnset MOVE_ASTONISH, 1
	learnset MOVE_CURSE, 3
	learnset MOVE_WILL_O_WISP, 5
	learnset MOVE_NIGHT_SHADE, 6
	learnset MOVE_TOXIC_SPIKES, 8
	learnset MOVE_MEMENTO, 9
	learnset MOVE_SHADOW_SNEAK, 11
	learnset MOVE_HYPNOSIS, 13
	learnset MOVE_OMINOUS_WIND, 15
	learnset MOVE_SPITE, 17
	learnset MOVE_SHADOW_BALL, 20
	learnset MOVE_PAIN_SPLIT, 22
	learnset MOVE_FAKE_TEARS, 24
	learnset MOVE_HAZE, 26
	learnset MOVE_PSYCHIC, 28
	learnset MOVE_TRICK_ROOM, 30
	terminatelearnset

levelup SPECIES_COFAGRIGUS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_TIRTOUGA
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_ROCK_BLAST, 7
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_STEALTH_ROCK, 9
	learnset MOVE_AQUA_JET, 11
	learnset MOVE_ROCK_POLISH, 13
	learnset MOVE_CURSE, 14
	learnset MOVE_ROCK_TOMB, 15
	learnset MOVE_BITE, 17
	learnset MOVE_DIVE, 20
	learnset MOVE_SHEER_COLD, 22
	learnset MOVE_ROCK_SLIDE, 24
	learnset MOVE_WATER_SPORT, 26
	learnset MOVE_AVALANCHE, 28
	learnset MOVE_AQUA_TAIL, 31
	terminatelearnset

levelup SPECIES_CARRACOSTA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_ARCHEN
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_SAND_TOMB, 4
	learnset MOVE_ROCK_THROW, 6
	learnset MOVE_SANDSTORM, 8
	learnset MOVE_AIR_CUTTER, 10
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_AERIAL_ACE, 14
	learnset MOVE_DIG, 17
	learnset MOVE_TAILWIND, 20
	learnset MOVE_TAUNT, 22
	learnset MOVE_POWER_GEM, 24
	learnset MOVE_AIR_SLASH, 25
	learnset MOVE_STEALTH_ROCK, 27
	learnset MOVE_MUD_SPORT, 29
	learnset MOVE_HEAD_SMASH, 31
	terminatelearnset

levelup SPECIES_ARCHEOPS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_TRUBBISH
	learnset MOVE_POUND, 1
	learnset MOVE_EXPLOSION, 3
	learnset MOVE_POISON_GAS, 4
	learnset MOVE_ACID_SPRAY, 6
	learnset MOVE_TOXIC_SPIKES, 8
	learnset MOVE_PAYBACK, 9
	learnset MOVE_VENOSHOCK, 11
	learnset MOVE_PAIN_SPLIT, 13
	learnset MOVE_RECYCLE, 15
	learnset MOVE_MUD_BOMB, 17
	learnset MOVE_GIGA_DRAIN, 20
	learnset MOVE_DRAIN_PUNCH, 22
	learnset MOVE_SPITE, 24
	learnset MOVE_MUD_SPORT, 26
	learnset MOVE_SLUDGE_WAVE, 28
	learnset MOVE_GUNK_SHOT, 32
	terminatelearnset

levelup SPECIES_GARBODOR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_ZORUA
	learnset MOVE_POUND, 1
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_THIEF, 4
	learnset MOVE_HONE_CLAWS, 5
	learnset MOVE_SNORE, 7
	learnset MOVE_AGILITY, 9
	learnset MOVE_FLAME_CHARGE, 11
	learnset MOVE_FAKE_TEARS, 13
	learnset MOVE_EMBARGO, 15
	learnset MOVE_DOUBLE_TEAM, 17
	learnset MOVE_U_TURN, 19
	learnset MOVE_DIG, 21
	learnset MOVE_SUCKER_PUNCH, 23
	learnset MOVE_MIRACLE_EYE, 25
	learnset MOVE_EXTRASENSORY, 27
	learnset MOVE_NASTY_PLOT, 29
	learnset MOVE_DARK_PULSE, 32
	terminatelearnset

levelup SPECIES_ZOROARK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_MINCCINO
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_DOUBLE_SLAP, 5
	learnset MOVE_TICKLE, 7
	learnset MOVE_COVET, 9
	learnset MOVE_ROCK_SMASH, 11
	learnset MOVE_KNOCK_OFF, 13
	learnset MOVE_CHARM, 15
	learnset MOVE_U_TURN, 17
	learnset MOVE_SLAM, 19
	learnset MOVE_DIG, 21
	learnset MOVE_SEED_BOMB, 23
	learnset MOVE_WAKE_UP_SLAP, 24
	learnset MOVE_IRON_TAIL, 26
	learnset MOVE_AQUA_TAIL, 28
	learnset MOVE_DOUBLE_EDGE, 30
	learnset MOVE_FLAIL, 31
	terminatelearnset

levelup SPECIES_CINCCINO
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_GOTHITA
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SUBSTITUTE, 3
	learnset MOVE_CONFUSION, 4
	learnset MOVE_MAGIC_COAT, 5
	learnset MOVE_MEMENTO, 7
	learnset MOVE_SHOCK_WAVE, 9
	learnset MOVE_PSYBEAM, 11
	learnset MOVE_EMBARGO, 13
	learnset MOVE_FAKE_TEARS, 15
	learnset MOVE_ATTRACT, 17
	learnset MOVE_EXTRASENSORY, 19
	terminatelearnset

levelup SPECIES_GOTHORITA
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SUBSTITUTE, 3
	learnset MOVE_CONFUSION, 4
	learnset MOVE_MAGIC_COAT, 5
	learnset MOVE_MEMENTO, 7
	learnset MOVE_SHOCK_WAVE, 9
	learnset MOVE_PSYBEAM, 11
	learnset MOVE_EMBARGO, 13
	learnset MOVE_FAKE_TEARS, 15
	learnset MOVE_ATTRACT, 17
	learnset MOVE_ZEN_HEADBUTT, 19
	learnset MOVE_EXTRASENSORY, 21
	learnset MOVE_OMINOUS_WIND, 23
	learnset MOVE_DARK_PULSE, 25
	learnset MOVE_HYPNOSIS, 27
	learnset MOVE_DREAM_EATER, 29
	terminatelearnset

levelup SPECIES_GOTHITELLE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SOLOSIS
	learnset MOVE_ASTONISH, 1
	learnset MOVE_COSMIC_POWER, 3
	learnset MOVE_CONFUSION, 4
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_SNORE, 8
	learnset MOVE_CALM_MIND, 10
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_PAIN_SPLIT, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_EMBARGO, 17
	learnset MOVE_EXTRASENSORY, 20
	terminatelearnset

levelup SPECIES_DUOSION
	learnset MOVE_COSMIC_POWER, 3
	learnset MOVE_CONFUSION, 4
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_SNORE, 8
	learnset MOVE_CALM_MIND, 10
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_PAIN_SPLIT, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_THUNDER_WAVE, 16
	learnset MOVE_EMBARGO, 17
	learnset MOVE_ZEN_HEADBUTT, 20
	learnset MOVE_EXTRASENSORY, 23
	learnset MOVE_EXPLOSION, 25
	learnset MOVE_ENERGY_BALL, 27
	learnset MOVE_FUTURE_SIGHT, 29
	learnset MOVE_SHADOW_BALL, 31
	terminatelearnset

levelup SPECIES_REUNICLUS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DUCKLETT
	learnset MOVE_BUBBLE, 1
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_RAIN_DANCE, 4
	learnset MOVE_WHIRLPOOL, 6
	learnset MOVE_PECK, 7
	learnset MOVE_WHIRLWIND, 9
	learnset MOVE_AQUA_RING, 10
	learnset MOVE_PLUCK, 12
	learnset MOVE_ICY_WIND, 14
	learnset MOVE_ROOST, 16
	learnset MOVE_BRINE, 17
	learnset MOVE_FEATHER_DANCE, 19
	learnset MOVE_WATER_SPORT, 21
	learnset MOVE_AIR_SLASH, 23
	learnset MOVE_DIVE, 25
	learnset MOVE_TAILWIND, 27
	learnset MOVE_HYDRO_PUMP, 30
	terminatelearnset

levelup SPECIES_SWANNA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_VANILLITE
	learnset MOVE_ASTONISH, 1
	learnset MOVE_HAIL, 3
	learnset MOVE_ICE_SHARD, 4
	learnset MOVE_MIRROR_COAT, 6
	learnset MOVE_ICICLE_SPEAR, 8
	learnset MOVE_TAUNT, 10
	learnset MOVE_MIRROR_SHOT, 12
	learnset MOVE_SHEER_COLD, 14
	learnset MOVE_ACID_ARMOR, 16
	learnset MOVE_PROTECT, 17
	learnset MOVE_AVALANCHE, 19
	learnset MOVE_WATER_PULSE, 21
	terminatelearnset

levelup SPECIES_VANILLISH
	learnset MOVE_HAIL, 3
	learnset MOVE_ICE_SHARD, 4
	learnset MOVE_MIRROR_COAT, 6
	learnset MOVE_ICICLE_SPEAR, 8
	learnset MOVE_TAUNT, 10
	learnset MOVE_MIRROR_SHOT, 12
	learnset MOVE_SHEER_COLD, 14
	learnset MOVE_ACID_ARMOR, 16
	learnset MOVE_PROTECT, 17
	learnset MOVE_AVALANCHE, 19
	learnset MOVE_WATER_PULSE, 21
	learnset MOVE_SELF_DESTRUCT, 23
	learnset MOVE_FLASH_CANNON, 25
	learnset MOVE_ICE_BEAM, 27
	learnset MOVE_DOUBLE_TEAM, 28
	learnset MOVE_BLIZZARD, 31
	terminatelearnset

levelup SPECIES_VANILLUXE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DEERLING
	learnset MOVE_TACKLE, 1
	learnset MOVE_CHARM, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_DOUBLE_KICK, 6
	learnset MOVE_GRASS_WHISTLE, 8
	learnset MOVE_FEINT_ATTACK, 10
	learnset MOVE_LEECH_SEED, 12
	learnset MOVE_RAZOR_LEAF, 14
	learnset MOVE_NATURE_POWER, 16
	learnset MOVE_SYNTHESIS, 18
	learnset MOVE_JUMP_KICK, 20
	learnset MOVE_SEED_BOMB, 22
	learnset MOVE_TAKE_DOWN, 23
	learnset MOVE_SHADOW_BALL, 25
	learnset MOVE_LIGHT_SCREEN, 27
	learnset MOVE_DOUBLE_EDGE, 30
	terminatelearnset

levelup SPECIES_SAWSBUCK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_EMOLGA
	learnset MOVE_ASTONISH, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_CHARM, 6
	learnset MOVE_LIGHT_SCREEN, 8
	learnset MOVE_SPIDER_WEB, 10
	learnset MOVE_TICKLE, 11
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_SHOCK_WAVE, 15
	learnset MOVE_THUNDER_WAVE, 17
	learnset MOVE_AIR_SLASH, 20
	learnset MOVE_SIGNAL_BEAM, 22
	learnset MOVE_IRON_TAIL, 24
	learnset MOVE_KNOCK_OFF, 26
	learnset MOVE_DISCHARGE, 28
	learnset MOVE_DAZZLING_GLEAM, 30
	learnset MOVE_ZAP_CANNON, 33
	terminatelearnset

levelup SPECIES_KARRABLAST
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 2
	learnset MOVE_FURY_CUTTER, 4
	learnset MOVE_CUT, 6
	learnset MOVE_HORN_ATTACK, 7
	learnset MOVE_FURY_ATTACK, 9
	learnset MOVE_FEINT_ATTACK, 11
	learnset MOVE_SWAGGER, 13
	learnset MOVE_AERIAL_ACE, 15
	learnset MOVE_KNOCK_OFF, 17
	learnset MOVE_GIGA_DRAIN, 19
	learnset MOVE_FLAIL, 21
	learnset MOVE_COUNTER, 23
	learnset MOVE_X_SCISSOR, 25
	learnset MOVE_TAKE_DOWN, 27
	learnset MOVE_MEGAHORN, 30
	terminatelearnset

levelup SPECIES_ESCAVALIER
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FOONGUS
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GASTRO_ACID, 3
	learnset MOVE_MEGA_DRAIN, 4
	learnset MOVE_POISON_STING, 6
	learnset MOVE_STUN_SPORE, 8
	learnset MOVE_VENOSHOCK, 9
	learnset MOVE_TOXIC_SPIKES, 11
	learnset MOVE_SYNTHESIS, 13
	learnset MOVE_NATURE_POWER, 15
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_SPORE, 19
	learnset MOVE_TOXIC, 21
	learnset MOVE_SEED_BOMB, 23
	learnset MOVE_SLUDGE_WAVE, 25
	learnset MOVE_RAGE_POWDER, 27
	learnset MOVE_GIGA_DRAIN, 29
	terminatelearnset

levelup SPECIES_AMOONGUSS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FRILLISH
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SOAK, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_TRICK, 6
	learnset MOVE_MEMENTO, 8
	learnset MOVE_CONFUSE_RAY, 10
	learnset MOVE_BRINE, 12
	learnset MOVE_WILL_O_WISP, 14
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_TRICK_ROOM, 17
	learnset MOVE_RECOVER, 20
	learnset MOVE_LUSTER_PURGE, 22
	learnset MOVE_WATER_SPORT, 24
	learnset MOVE_RAIN_DANCE, 26
	learnset MOVE_SHADOW_BALL, 28
	learnset MOVE_WATER_SPOUT, 30
	terminatelearnset

levelup SPECIES_JELLICENT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_ALOMOMOLA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_JOLTIK
	learnset MOVE_SCRATCH, 1
	learnset MOVE_STRING_SHOT, 3
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_ODOR_SLEUTH, 5
	learnset MOVE_SPIDER_WEB, 7
	learnset MOVE_CUT, 9
	learnset MOVE_POISON_FANG, 11
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_SLASH, 15
	learnset MOVE_CHARGE, 16
	learnset MOVE_FEINT_ATTACK, 17
	learnset MOVE_DISCHARGE, 20
	learnset MOVE_X_SCISSOR, 23
	learnset MOVE_SUCKER_PUNCH, 25
	learnset MOVE_CAMOUFLAGE, 27
	learnset MOVE_POISON_JAB, 28
	learnset MOVE_THUNDERBOLT, 30
	terminatelearnset

levelup SPECIES_GALVANTULA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FERROSEED
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_SPIKE_CANNON, 4
	learnset MOVE_SPIKES, 5
	learnset MOVE_LEECH_SEED, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_GYRO_BALL, 11
	learnset MOVE_RAZOR_LEAF, 13
	learnset MOVE_ACID_SPRAY, 15
	learnset MOVE_METAL_CLAW, 16
	learnset MOVE_KNOCK_OFF, 17
	learnset MOVE_CURSE, 20
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_STEALTH_ROCK, 24
	learnset MOVE_SEED_BOMB, 26
	learnset MOVE_EXPLOSION, 29
	learnset MOVE_IRON_HEAD, 31
	terminatelearnset

levelup SPECIES_FERROTHORN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_KLINK
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_GYRO_BALL, 4
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_CHARGE_BEAM, 7
	learnset MOVE_VICE_GRIP, 9
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_IRON_DEFENSE, 13
	learnset MOVE_METAL_SOUND, 15
	learnset MOVE_MIRROR_SHOT, 17
	learnset MOVE_NATURAL_GIFT, 19
	learnset MOVE_AUTOTOMIZE, 21
	learnset MOVE_RECYCLE, 23
	learnset MOVE_FLASH_CANNON, 25
	learnset MOVE_MIRROR_COAT, 27
	learnset MOVE_METAL_BURST, 29
	learnset MOVE_ZAP_CANNON, 31
	terminatelearnset

levelup SPECIES_KLANG
	learnset MOVE_GYRO_BALL, 4
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_CHARGE_BEAM, 7
	learnset MOVE_VICE_GRIP, 9
	learnset MOVE_SHOCK_WAVE, 11
	learnset MOVE_IRON_DEFENSE, 13
	learnset MOVE_METAL_SOUND, 15
	learnset MOVE_MIRROR_SHOT, 17
	learnset MOVE_NATURAL_GIFT, 19
	learnset MOVE_AUTOTOMIZE, 21
	learnset MOVE_RECYCLE, 23
	learnset MOVE_FLASH_CANNON, 25
	learnset MOVE_MIRROR_COAT, 27
	learnset MOVE_METAL_BURST, 29
	learnset MOVE_ZAP_CANNON, 31
	learnset MOVE_LOCK_ON, 33
	terminatelearnset

levelup SPECIES_KLINKLANG
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_TYNAMO
	learnset MOVE_TACKLE, 1
	learnset MOVE_CHARM, 3
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_THUNDER_WAVE, 6
	learnset MOVE_ACID_SPRAY, 8
	learnset MOVE_MEGA_DRAIN, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_WATER_PULSE, 14
	learnset MOVE_LIGHT_SCREEN, 15
	learnset MOVE_NATURAL_GIFT, 17
	learnset MOVE_REFLECT, 19
	learnset MOVE_ATTRACT, 20
	terminatelearnset

levelup SPECIES_EELEKTRIK
	learnset MOVE_CHARM, 3
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_THUNDER_WAVE, 6
	learnset MOVE_ACID_SPRAY, 8
	learnset MOVE_MEGA_DRAIN, 10
	learnset MOVE_SPARK, 12
	learnset MOVE_WATER_PULSE, 14
	learnset MOVE_LIGHT_SCREEN, 15
	learnset MOVE_NATURAL_GIFT, 17
	learnset MOVE_REFLECT, 19
	learnset MOVE_ATTRACT, 20
	learnset MOVE_GIGA_DRAIN, 22
	learnset MOVE_DISCHARGE, 24
	learnset MOVE_SUPER_FANG, 26
	learnset MOVE_COIL, 28
	learnset MOVE_THUNDER, 30
	terminatelearnset

levelup SPECIES_EELEKTROSS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_ELGYEM
	learnset MOVE_POUND, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_ASTONISH, 5
	learnset MOVE_CONFUSION, 6
	learnset MOVE_PROTECT, 8
	learnset MOVE_COSMIC_POWER, 10
	learnset MOVE_SHOCK_WAVE, 12
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_TRICK_ROOM, 16
	learnset MOVE_GRAVITY, 18
	learnset MOVE_EMBARGO, 19
	learnset MOVE_RECOVER, 21
	learnset MOVE_EXTRASENSORY, 23
	learnset MOVE_DARK_PULSE, 25
	learnset MOVE_CALM_MIND, 27
	learnset MOVE_PSYCHIC, 30
	terminatelearnset

levelup SPECIES_BEHEEYEM
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_LITWICK
	learnset MOVE_ASTONISH, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_EMBER, 4
	learnset MOVE_NIGHT_SHADE, 6
	learnset MOVE_CURSE, 8
	learnset MOVE_MEMENTO, 9
	learnset MOVE_WILL_O_WISP, 11
	learnset MOVE_FIRE_SPIN, 13
	learnset MOVE_PAIN_SPLIT, 15
	learnset MOVE_SHOCK_WAVE, 16
	terminatelearnset

levelup SPECIES_LAMPENT
	learnset MOVE_ASTONISH, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_EMBER, 4
	learnset MOVE_NIGHT_SHADE, 6
	learnset MOVE_CURSE, 8
	learnset MOVE_MEMENTO, 9
	learnset MOVE_WILL_O_WISP, 11
	learnset MOVE_FIRE_SPIN, 13
	learnset MOVE_PAIN_SPLIT, 15
	learnset MOVE_SHOCK_WAVE, 16
	learnset MOVE_FLAME_CHARGE, 18
	learnset MOVE_OMINOUS_WIND, 20
	learnset MOVE_LAVA_PLUME, 22
	learnset MOVE_TRICK_ROOM, 24
	learnset MOVE_MINIMIZE, 26
	learnset MOVE_SHADOW_BALL, 28
	learnset MOVE_ENERGY_BALL, 30
	terminatelearnset

levelup SPECIES_CHANDELURE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_AXEW
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SCARY_FACE, 3
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_CUT, 6
	learnset MOVE_DRAGON_BREATH, 8
	learnset MOVE_HONE_CLAWS, 10
	learnset MOVE_TAUNT, 12
	learnset MOVE_ROCK_TOMB, 14
	learnset MOVE_SHOCK_WAVE, 16
	learnset MOVE_SLASH, 18
	learnset MOVE_OUTRAGE, 20
	learnset MOVE_FIRE_FANG, 22
	learnset MOVE_NIGHT_SLASH, 24
	learnset MOVE_POISON_JAB, 26
	terminatelearnset

levelup SPECIES_FRAXURE
	learnset MOVE_HONE_CLAWS, 10
	learnset MOVE_TAUNT, 12
	learnset MOVE_ROCK_TOMB, 14
	learnset MOVE_SHOCK_WAVE, 16
	learnset MOVE_SLASH, 18
	learnset MOVE_OUTRAGE, 20
	learnset MOVE_FIRE_FANG, 22
	learnset MOVE_NIGHT_SLASH, 24
	learnset MOVE_POISON_JAB, 26
	learnset MOVE_DRAGON_CLAW, 27
	learnset MOVE_DRAGON_DANCE, 29
	learnset MOVE_REVERSAL, 31
	learnset MOVE_GUILLOTINE, 32
	terminatelearnset

levelup SPECIES_HAXORUS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_CUBCHOO
	learnset MOVE_POUND, 1
	learnset MOVE_CHARM, 3
	learnset MOVE_HAIL, 4
	learnset MOVE_POWDER_SNOW, 6
	learnset MOVE_HONE_CLAWS, 8
	learnset MOVE_ROCK_TOMB, 10
	learnset MOVE_ICE_SHARD, 11
	learnset MOVE_AERIAL_ACE, 13
	learnset MOVE_BRINE, 15
	learnset MOVE_SHEER_COLD, 17
	learnset MOVE_SECRET_POWER, 19
	learnset MOVE_NIGHT_SLASH, 21
	learnset MOVE_AVALANCHE, 23
	learnset MOVE_WAKE_UP_SLAP, 25
	learnset MOVE_DIG, 27
	learnset MOVE_ICE_BEAM, 29
	learnset MOVE_SUPERPOWER, 32
	terminatelearnset

levelup SPECIES_BEARTIC
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_DOUBLE_TEAM, 2
	learnset MOVE_WAKE_UP_SLAP, 3
	learnset MOVE_SUBMISSION, 4
	terminatelearnset

levelup SPECIES_CRYOGONAL
	learnset MOVE_ICE_BEAM, 1
	learnset MOVE_ANCIENT_POWER, 2
	learnset MOVE_EARTH_POWER, 3
	learnset MOVE_GLARE, 4
	terminatelearnset

levelup SPECIES_SHELMET
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_ODOR_SLEUTH, 6
	learnset MOVE_SNORE, 8
	learnset MOVE_BUG_BITE, 9
	learnset MOVE_VENOSHOCK, 11
	learnset MOVE_SPIKES, 13
	learnset MOVE_CURSE, 15
	learnset MOVE_GYRO_BALL, 17
	learnset MOVE_POISON_GAS, 19
	learnset MOVE_RECOVER, 21
	learnset MOVE_SIGNAL_BEAM, 23
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_SLUDGE_BOMB, 26
	learnset MOVE_ENERGY_BALL, 28
	learnset MOVE_BUG_BUZZ, 30
	terminatelearnset

levelup SPECIES_ACCELGOR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_STUNFISK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_MIENFOO
	learnset MOVE_POUND, 1
	learnset MOVE_MEDITATE, 3
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_FAKE_OUT, 7
	learnset MOVE_DOUBLE_SLAP, 8
	learnset MOVE_MEGA_PUNCH, 10
	learnset MOVE_AERIAL_ACE, 12
	learnset MOVE_FEINT, 14
	learnset MOVE_BULK_UP, 16
	learnset MOVE_KNOCK_OFF, 17
	learnset MOVE_FORCE_PALM, 20
	learnset MOVE_ICE_PUNCH, 23
	learnset MOVE_DRAIN_PUNCH, 24
	learnset MOVE_BOUNCE, 26
	learnset MOVE_ROCK_SLIDE, 28
	learnset MOVE_HIGH_JUMP_KICK, 30
	learnset MOVE_REVERSAL, 33
	terminatelearnset

levelup SPECIES_MIENSHAO
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DRUDDIGON
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_GOLETT
	learnset MOVE_POUND, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_MUD_SLAP, 4
	learnset MOVE_NIGHT_SHADE, 6
	learnset MOVE_MEGA_PUNCH, 8
	learnset MOVE_ROCK_TOMB, 10
	learnset MOVE_SHADOW_SNEAK, 12
	learnset MOVE_LOW_SWEEP, 14
	learnset MOVE_SHADOW_PUNCH, 16
	learnset MOVE_MUD_SPORT, 18
	learnset MOVE_THUNDER_PUNCH, 20
	learnset MOVE_DRAIN_PUNCH, 22
	learnset MOVE_SUCKER_PUNCH, 24
	learnset MOVE_SHADOW_BALL, 26
	learnset MOVE_FISSURE, 28
	learnset MOVE_HAMMER_ARM, 31
	terminatelearnset

levelup SPECIES_GOLURK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PAWNIARD
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 3
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_PURSUIT, 7
	learnset MOVE_METAL_CLAW, 9
	learnset MOVE_SHADOW_SNEAK, 11
	learnset MOVE_HONE_CLAWS, 12
	learnset MOVE_REVENGE, 14
	learnset MOVE_KNOCK_OFF, 16
	learnset MOVE_MAGNET_BOMB, 18
	learnset MOVE_MEGA_PUNCH, 20
	learnset MOVE_IRON_HEAD, 22
	learnset MOVE_SUCKER_PUNCH, 24
	learnset MOVE_SWORDS_DANCE, 26
	learnset MOVE_METAL_BURST, 28
	learnset MOVE_GUILLOTINE, 30
	terminatelearnset

levelup SPECIES_BISHARP
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BOUFFALANT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_RUFFLET
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_PECK, 4
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_ROCK_TOMB, 8
	learnset MOVE_FURY_ATTACK, 10
	learnset MOVE_FEINT, 12
	learnset MOVE_ROCK_SMASH, 14
	learnset MOVE_AERIAL_ACE, 16
	learnset MOVE_BULK_UP, 17
	learnset MOVE_CRUSH_CLAW, 19
	learnset MOVE_U_TURN, 21
	learnset MOVE_SHADOW_CLAW, 23
	learnset MOVE_ROCK_SLIDE, 25
	learnset MOVE_THRASH, 27
	learnset MOVE_DRILL_PECK, 29
	learnset MOVE_BRAVE_BIRD, 31
	terminatelearnset

levelup SPECIES_BRAVIARY
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_VULLABY
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_PECK, 4
	learnset MOVE_PAYBACK, 6
	learnset MOVE_FURY_ATTACK, 8
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_SNORE, 12
	learnset MOVE_PLUCK, 14
	learnset MOVE_ROOST, 16
	learnset MOVE_EMBARGO, 17
	learnset MOVE_STEEL_WING, 19
	learnset MOVE_KNOCK_OFF, 21
	learnset MOVE_U_TURN, 23
	learnset MOVE_AIR_SLASH, 25
	learnset MOVE_DARK_PULSE, 27
	learnset MOVE_TOXIC, 29
	learnset MOVE_IRON_DEFENSE, 31
	terminatelearnset

levelup SPECIES_MANDIBUZZ
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_HEATMOR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DURANT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DEINO
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MEDITATE, 3
	learnset MOVE_TWISTER, 4
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_DRAGON_BREATH, 8
	learnset MOVE_THIEF, 10
	learnset MOVE_ROAR, 12
	learnset MOVE_SNORE, 14
	learnset MOVE_SLAM, 16
	learnset MOVE_FIRE_FANG, 18
	learnset MOVE_EMBARGO, 20
	learnset MOVE_OUTRAGE, 22
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_CRUNCH, 28
	learnset MOVE_EARTH_POWER, 30
	learnset MOVE_SUPERPOWER, 33
	terminatelearnset

levelup SPECIES_ZWEILOUS
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MEDITATE, 3
	learnset MOVE_TWISTER, 4
	learnset MOVE_FOCUS_ENERGY, 6
	learnset MOVE_DRAGON_BREATH, 8
	learnset MOVE_THIEF, 10
	learnset MOVE_ROAR, 12
	learnset MOVE_SNORE, 14
	learnset MOVE_SLAM, 16
	learnset MOVE_FIRE_FANG, 18
	learnset MOVE_EMBARGO, 20
	learnset MOVE_OUTRAGE, 22
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_CRUNCH, 28
	learnset MOVE_EARTH_POWER, 30
	learnset MOVE_SUPERPOWER, 33
	terminatelearnset

levelup SPECIES_HYDREIGON
	learnset MOVE_TACKLE, 1
	learnset MOVE_TORMENT, 3
	learnset MOVE_FIRE_SPIN, 5
	learnset MOVE_ASTONISH, 7
	learnset MOVE_BEAT_UP, 9
	learnset MOVE_TWISTER, 13
	learnset MOVE_SNARL, 17
	learnset MOVE_SCARY_FACE, 20
	learnset MOVE_BITE, 25
	learnset MOVE_DRAGON_BREATH, 28
	learnset MOVE_EMBARGO, 34
	learnset MOVE_ICE_FANG, 37
	learnset MOVE_DRAGON_RAGE, 39
	learnset MOVE_TRI_ATTACK, 44
	learnset MOVE_ZEN_HEADBUTT, 48
	learnset MOVE_DARK_PULSE, 50
	learnset MOVE_OUTRAGE, 56
	learnset MOVE_HEAT_WAVE, 61
	learnset MOVE_DRACO_METEOR, 64
	terminatelearnset

levelup SPECIES_LARVESTA
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 3
	learnset MOVE_ODOR_SLEUTH, 4
	learnset MOVE_DOUBLE_TEAM, 6
	learnset MOVE_EMBER, 7
	learnset MOVE_BUG_BITE, 9
	learnset MOVE_SNORE, 11
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_ROCK_SMASH, 15
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_MORNING_SUN, 19
	learnset MOVE_GIGA_DRAIN, 21
	learnset MOVE_SIGNAL_BEAM, 23
	learnset MOVE_LAVA_PLUME, 25
	learnset MOVE_U_TURN, 27
	learnset MOVE_BULK_UP, 29
	learnset MOVE_FLARE_BLITZ, 31
	terminatelearnset

levelup SPECIES_VOLCARONA
	learnset MOVE_POUND, 1
	learnset MOVE_EMBER, 3
	learnset MOVE_SUNNY_DAY, 5
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_FIRE_SPIN, 9
	learnset MOVE_MEGA_DRAIN, 13
	learnset MOVE_CALM_MIND, 17
	learnset MOVE_FLAME_CHARGE, 20
	learnset MOVE_WILL_O_WISP, 24
	learnset MOVE_LEECH_LIFE, 28
	learnset MOVE_FIRE_FANG, 33
	learnset MOVE_SNARL, 36
	learnset MOVE_U_TURN, 40
	learnset MOVE_GIGA_DRAIN, 44
	learnset MOVE_LAVA_PLUME, 48
	learnset MOVE_SIGNAL_BEAM, 52
	learnset MOVE_QUIVER_DANCE, 57
	learnset MOVE_FLAMETHROWER, 61
	learnset MOVE_BUG_BUZZ, 63
	terminatelearnset

levelup SPECIES_COBALION
	learnset MOVE_SCRATCH, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_ROCK_THROW, 5
	learnset MOVE_FALSE_SWIPE, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_CUT, 13
	learnset MOVE_METAL_CLAW, 17
	learnset MOVE_DOUBLE_KICK, 18
	learnset MOVE_METAL_BURST, 24
	learnset MOVE_REVENGE, 28
	learnset MOVE_REVERSAL, 32
	learnset MOVE_AERIAL_ACE, 36
	learnset MOVE_VOLT_SWITCH, 39
	learnset MOVE_BRICK_BREAK, 43
	learnset MOVE_SWORDS_DANCE, 47
	learnset MOVE_IRON_HEAD, 51
	learnset MOVE_STONE_EDGE, 54
	learnset MOVE_MEGAHORN, 61
	learnset MOVE_CLOSE_COMBAT, 63
	terminatelearnset

levelup SPECIES_TERRAKION
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 3
	learnset MOVE_TRIPLE_KICK, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_ROCK_BLAST, 13
	learnset MOVE_SANDSTORM, 17
	learnset MOVE_BULLDOZE, 20
	learnset MOVE_AGILITY, 24
	learnset MOVE_REVENGE, 28
	learnset MOVE_ROCK_THROW, 33
	learnset MOVE_BULK_UP, 36
	learnset MOVE_FEINT, 40
	learnset MOVE_ZEN_HEADBUTT, 45
	learnset MOVE_TAKE_DOWN, 47
	learnset MOVE_ROCK_SLIDE, 52
	learnset MOVE_IRON_HEAD, 57
	learnset MOVE_EARTHQUAKE, 61
	learnset MOVE_CLOSE_COMBAT, 63
	terminatelearnset

levelup SPECIES_VIRIZION
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_VACUUM_WAVE, 5
	learnset MOVE_MEGA_DRAIN, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_DOUBLE_KICK, 13
	learnset MOVE_BULLET_SEED, 17
	learnset MOVE_FEINT_ATTACK, 20
	learnset MOVE_BULLDOZE, 25
	learnset MOVE_REVENGE, 28
	learnset MOVE_AERIAL_ACE, 33
	learnset MOVE_NEEDLE_ARM, 36
	learnset MOVE_FEINT, 40
	learnset MOVE_SEED_BOMB, 43
	learnset MOVE_TAKE_DOWN, 47
	learnset MOVE_BULK_UP, 51
	learnset MOVE_ZEN_HEADBUTT, 54
	learnset MOVE_LEAF_BLADE, 57
	learnset MOVE_SUPERPOWER, 60
	terminatelearnset

levelup SPECIES_TORNADUS
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_FLATTER, 5
	learnset MOVE_GUST, 7
	learnset MOVE_DEFOG, 9
	learnset MOVE_WEATHER_BALL, 13
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_AIR_CUTTER, 20
	learnset MOVE_RAIN_DANCE, 24
	learnset MOVE_SUNNY_DAY, 24
	learnset MOVE_REVENGE, 28
	learnset MOVE_FEINT, 33
	learnset MOVE_U_TURN, 36
	learnset MOVE_AIR_SLASH, 40
	learnset MOVE_ROOST, 44
	learnset MOVE_CRUNCH, 48
	learnset MOVE_ACROBATICS, 51
	learnset MOVE_HEAT_WAVE, 55
	learnset MOVE_SUPERPOWER, 59
	learnset MOVE_GRASS_KNOT, 62
	terminatelearnset

levelup SPECIES_THUNDURUS
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_SWAGGER, 5
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_GUST, 9
	learnset MOVE_THUNDER_WAVE, 13
	learnset MOVE_SNARL, 17
	learnset MOVE_ELECTROWEB, 20
	learnset MOVE_BITE, 25
	learnset MOVE_CHARGE_BEAM, 28
	learnset MOVE_AIR_CUTTER, 33
	learnset MOVE_REVENGE, 36
	learnset MOVE_VOLT_SWITCH, 40
	learnset MOVE_AIR_SLASH, 45
	learnset MOVE_GRASS_KNOT, 48
	learnset MOVE_THUNDERBOLT, 51
	learnset MOVE_NASTY_PLOT, 56
	learnset MOVE_HAMMER_ARM, 59
	learnset MOVE_SLUDGE_WAVE, 62
	learnset MOVE_THUNDER, 65
	terminatelearnset

levelup SPECIES_RESHIRAM
	learnset MOVE_SCRATCH, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_FIRE_SPIN, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_FLAME_CHARGE, 13
	learnset MOVE_SUNNY_DAY, 17
	learnset MOVE_DRAGON_BREATH, 20
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_DRAGON_RAGE, 28
	learnset MOVE_MYSTICAL_FIRE, 32
	learnset MOVE_WEATHER_BALL, 36
	learnset MOVE_DRAGON_PULSE, 39
	learnset MOVE_EXTRASENSORY, 43
	learnset MOVE_LAVA_PLUME, 47
	learnset MOVE_PSYCHIC, 51
	learnset MOVE_BLUE_FLARE, 54
	learnset MOVE_DRACO_METEOR, 57
	learnset MOVE_SOLAR_BEAM, 59
	terminatelearnset

levelup SPECIES_ZEKROM
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_THUNDER_WAVE, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_RAIN_DANCE, 17
	learnset MOVE_SNARL, 20
	learnset MOVE_BREAKING_SWIPE, 26
	learnset MOVE_ROCK_TOMB, 30
	learnset MOVE_WEATHER_BALL, 32
	learnset MOVE_THUNDER_PUNCH, 36
	learnset MOVE_DRAGON_RAGE, 39
	learnset MOVE_VOLT_SWITCH, 43
	learnset MOVE_BULK_UP, 48
	learnset MOVE_ZEN_HEADBUTT, 51
	learnset MOVE_DRAGON_RUSH, 54
	learnset MOVE_BOLT_STRIKE, 57
	learnset MOVE_DRAGON_DANCE, 59
	terminatelearnset

levelup SPECIES_LANDORUS
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_SWAGGER, 5
	learnset MOVE_GUST, 7
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_PAYBACK, 17
	learnset MOVE_TAUNT, 20
	learnset MOVE_AERIAL_ACE, 24
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_SCARY_FACE, 33
	learnset MOVE_REVENGE, 36
	learnset MOVE_DIG, 40
	learnset MOVE_U_TURN, 44
	learnset MOVE_BOUNCE, 48
	learnset MOVE_TAKE_DOWN, 51
	learnset MOVE_FISSURE, 55
	learnset MOVE_BULK_UP, 59
	learnset MOVE_BRAVE_BIRD, 62
	terminatelearnset

levelup SPECIES_KYUREM
	learnset MOVE_POUND, 1
	learnset MOVE_POWDER_SNOW, 3
	learnset MOVE_HAIL, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_ICICLE_SPEAR, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_PROTECT, 17
	learnset MOVE_GLACIATE, 20
	learnset MOVE_BREAKING_SWIPE, 23
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_SHEER_COLD, 33
	learnset MOVE_DRAGON_RAGE, 36
	learnset MOVE_ENDEAVOR, 40
	learnset MOVE_SHADOW_BALL, 44
	learnset MOVE_CALM_MIND, 48
	learnset MOVE_DRAGON_CLAW, 52
	learnset MOVE_ICE_BEAM, 54
	learnset MOVE_AURA_SPHERE, 58
	learnset MOVE_BLIZZARD, 60
	terminatelearnset

levelup SPECIES_KELDEO
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_MEDITATE, 7
	learnset MOVE_CUT, 9
	learnset MOVE_AQUA_JET, 13
	learnset MOVE_DOUBLE_KICK, 17
	learnset MOVE_ROCK_TOMB, 20
	learnset MOVE_HORN_ATTACK, 25
	learnset MOVE_BRINE, 29
	learnset MOVE_CALM_MIND, 32
	learnset MOVE_ANCIENT_POWER, 36
	learnset MOVE_SCALD, 40
	learnset MOVE_AURA_SPHERE, 42
	learnset MOVE_ROCK_SLIDE, 46
	learnset MOVE_AIR_SLASH, 51
	learnset MOVE_ICE_BEAM, 54
	learnset MOVE_HYDRO_PUMP, 57
	learnset MOVE_SUPERPOWER, 60
	terminatelearnset

levelup SPECIES_MELOETTA
	learnset MOVE_POUND, 1
	learnset MOVE_DRAINING_KISS, 3
	learnset MOVE_SING, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_UPROAR, 13
	learnset MOVE_SUPERSONIC, 15
	learnset MOVE_SNARL, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_METAL_SOUND, 24
	learnset MOVE_CALM_MIND, 28
	learnset MOVE_EXTRASENSORY, 32
	learnset MOVE_DAZZLING_GLEAM, 36
	learnset MOVE_TRI_ATTACK, 41
	learnset MOVE_MOONBLAST, 45
	learnset MOVE_HYPER_VOICE, 49
	learnset MOVE_NASTY_PLOT, 53
	learnset MOVE_PSYCHIC, 57
	terminatelearnset

levelup SPECIES_GENESECT
	learnset MOVE_POUND, 1
	learnset MOVE_DOUBLE_TEAM, 3
	learnset MOVE_METAL_CLAW, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_ODOR_SLEUTH, 9
	learnset MOVE_ELECTROWEB, 13
	learnset MOVE_THUNDER_WAVE, 17
	learnset MOVE_BUG_BITE, 20
	learnset MOVE_ROCK_POLISH, 24
	learnset MOVE_MAGNET_BOMB, 28
	learnset MOVE_SHOCK_WAVE, 33
	learnset MOVE_LEECH_LIFE, 36
	learnset MOVE_GIGA_DRAIN, 40
	learnset MOVE_IRON_HEAD, 44
	learnset MOVE_METAL_SOUND, 48
	learnset MOVE_SIGNAL_BEAM, 52
	learnset MOVE_EXTREME_SPEED, 57
	learnset MOVE_FLASH_CANNON, 61
	learnset MOVE_FLAMETHROWER, 66
	terminatelearnset

levelup SPECIES_CHESPIN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_QUILLADIN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_CHESNAUGHT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FENNEKIN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BRAIXEN
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DELPHOX
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FROAKIE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FROGADIER
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_GRENINJA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BUNNELBY
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DIGGERSBY
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FLETCHLING
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_PECK, 4
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_TAUNT, 8
	learnset MOVE_FLAME_CHARGE, 10
	learnset MOVE_DOUBLE_TEAM, 11
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_THIEF, 14
	learnset MOVE_SWAGGER, 16
	learnset MOVE_FLAME_WHEEL, 18
	terminatelearnset

levelup SPECIES_FLETCHINDER
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_TAUNT, 8
	learnset MOVE_FLAME_CHARGE, 10
	learnset MOVE_DOUBLE_TEAM, 11
	learnset MOVE_WING_ATTACK, 13
	learnset MOVE_THIEF, 14
	learnset MOVE_SWAGGER, 16
	learnset MOVE_FLAME_WHEEL, 18
	learnset MOVE_FEINT, 19
	learnset MOVE_U_TURN, 21
	learnset MOVE_AIR_SLASH, 23
	learnset MOVE_WILL_O_WISP, 25
	learnset MOVE_SUNNY_DAY, 26
	learnset MOVE_LAVA_PLUME, 28
	learnset MOVE_STEEL_WING, 30
	learnset MOVE_ROOST, 31
	terminatelearnset

levelup SPECIES_TALONFLAME
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SCATTERBUG
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 2
	learnset MOVE_POISON_POWDER, 4
	learnset MOVE_RAGE_POWDER, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_STUN_SPORE, 9
	learnset MOVE_BUG_BITE, 10
	terminatelearnset

levelup SPECIES_SPEWPA
	learnset MOVE_POISON_POWDER, 4
	learnset MOVE_RAGE_POWDER, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_STUN_SPORE, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_SPIDER_WEB, 11
	learnset MOVE_IRON_DEFENSE, 13
	learnset MOVE_SIGNAL_BEAM, 15
	learnset MOVE_SNORE, 16
	learnset MOVE_FLATTER, 18
	terminatelearnset

levelup SPECIES_VIVILLON
	learnset MOVE_RAGE_POWDER, 6
	learnset MOVE_ODOR_SLEUTH, 7
	learnset MOVE_STUN_SPORE, 9
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_SPIDER_WEB, 11
	learnset MOVE_IRON_DEFENSE, 13
	learnset MOVE_SIGNAL_BEAM, 15
	learnset MOVE_SNORE, 16
	learnset MOVE_FLATTER, 18
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_HYPNOSIS, 22
	learnset MOVE_ROOST, 24
	learnset MOVE_AIR_SLASH, 26
	learnset MOVE_BUG_BUZZ, 28
	learnset MOVE_QUIVER_DANCE, 30
	learnset MOVE_U_TURN, 32
	terminatelearnset

levelup SPECIES_LITLEO
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_TAUNT, 4
	learnset MOVE_EMBER, 6
	learnset MOVE_THIEF, 7
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_FLAME_CHARGE, 11
	learnset MOVE_SNORE, 13
	learnset MOVE_ROAR, 15
	learnset MOVE_BITE, 17
	learnset MOVE_FIRE_FANG, 19
	learnset MOVE_THUNDER_FANG, 21
	learnset MOVE_SECRET_POWER, 23
	learnset MOVE_ICE_FANG, 25
	learnset MOVE_LAVA_PLUME, 27
	learnset MOVE_DIG, 29
	learnset MOVE_TAKE_DOWN, 31
	terminatelearnset

levelup SPECIES_PYROAR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FLABEBE
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_SYNTHESIS, 5
	learnset MOVE_VINE_WHIP, 6
	learnset MOVE_COVET, 8
	learnset MOVE_CALM_MIND, 9
	learnset MOVE_ABSORB, 10
	learnset MOVE_MAGIC_COAT, 11
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_AROMATHERAPY, 14
	learnset MOVE_PROTECT, 17
	terminatelearnset

levelup SPECIES_FLOETTE
	learnset MOVE_SYNTHESIS, 5
	learnset MOVE_VINE_WHIP, 6
	learnset MOVE_COVET, 8
	learnset MOVE_CALM_MIND, 9
	learnset MOVE_ABSORB, 10
	learnset MOVE_MAGIC_COAT, 11
	learnset MOVE_MAGICAL_LEAF, 13
	learnset MOVE_AROMATHERAPY, 14
	learnset MOVE_PROTECT, 17
	learnset MOVE_GRASS_KNOT, 20
	learnset MOVE_LUSTER_PURGE, 21
	learnset MOVE_CAMOUFLAGE, 23
	learnset MOVE_GIGA_DRAIN, 25
	learnset MOVE_MOONBLAST, 27
	learnset MOVE_EXTRASENSORY, 29
	learnset MOVE_LUNAR_DANCE, 31
	terminatelearnset

levelup SPECIES_FLORGES
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SKIDDO
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_VINE_WHIP, 6
	learnset MOVE_LEECH_SEED, 8
	learnset MOVE_MUD_SHOT, 10
	learnset MOVE_SNORE, 12
	learnset MOVE_RAZOR_LEAF, 14
	learnset MOVE_NATURE_POWER, 16
	learnset MOVE_PAYBACK, 17
	learnset MOVE_ROAR, 19
	learnset MOVE_TAKE_DOWN, 21
	learnset MOVE_GIGA_DRAIN, 23
	learnset MOVE_ZEN_HEADBUTT, 26
	learnset MOVE_LEAF_BLADE, 29
	learnset MOVE_IRON_TAIL, 32
	terminatelearnset

levelup SPECIES_GOGOAT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PANCHAM
	learnset MOVE_POUND, 1
	learnset MOVE_LEER, 3
	learnset MOVE_PURSUIT, 4
	learnset MOVE_ARM_THRUST, 6
	learnset MOVE_ROCK_THROW, 8
	learnset MOVE_MEGA_PUNCH, 9
	learnset MOVE_PAYBACK, 11
	learnset MOVE_FEINT, 13
	learnset MOVE_BULK_UP, 15
	learnset MOVE_KNOCK_OFF, 17
	learnset MOVE_LOW_SWEEP, 18
	learnset MOVE_THUNDER_PUNCH, 20
	learnset MOVE_ICE_PUNCH, 23
	learnset MOVE_FLING, 25
	learnset MOVE_BRICK_BREAK, 27
	learnset MOVE_ROCK_SLIDE, 29
	learnset MOVE_ENDEAVOR, 32
	terminatelearnset

levelup SPECIES_PANGORO
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_FURFROU
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_ESPURR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_MAGIC_COAT, 4
	learnset MOVE_ASSIST, 6
	learnset MOVE_CONFUSION, 7
	learnset MOVE_THUNDER_WAVE, 8
	learnset MOVE_FAKE_OUT, 10
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_TRICK_ROOM, 15
	learnset MOVE_PSYBEAM, 16
	learnset MOVE_MEMENTO, 18
	learnset MOVE_HEAL_BELL, 20
	learnset MOVE_BARRIER, 21
	learnset MOVE_PAIN_SPLIT, 22
	learnset MOVE_EXTRASENSORY, 23
	learnset MOVE_DARK_PULSE, 25
	learnset MOVE_MIRROR_COAT, 28
	terminatelearnset

levelup SPECIES_MEOWSTIC
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_HONEDGE
	learnset MOVE_POUND, 1
	learnset MOVE_SHARPEN, 3
	learnset MOVE_ROCK_SMASH, 4
	learnset MOVE_METAL_CLAW, 6
	learnset MOVE_MEMENTO, 8
	learnset MOVE_CUT, 10
	learnset MOVE_IRON_DEFENSE, 12
	learnset MOVE_SHADOW_SNEAK, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_MAGNET_BOMB, 17
	learnset MOVE_SHADOW_CLAW, 19
	learnset MOVE_SWORDS_DANCE, 21
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_AUTOTOMIZE, 25
	learnset MOVE_GYRO_BALL, 28
	learnset MOVE_DESTINY_BOND, 30
	learnset MOVE_IRON_HEAD, 32
	terminatelearnset

levelup SPECIES_DOUBLADE
	learnset MOVE_POUND, 1
	learnset MOVE_SHARPEN, 3
	learnset MOVE_ROCK_SMASH, 4
	learnset MOVE_METAL_CLAW, 6
	learnset MOVE_MEMENTO, 8
	learnset MOVE_CUT, 10
	learnset MOVE_IRON_DEFENSE, 12
	learnset MOVE_SHADOW_SNEAK, 14
	learnset MOVE_SLASH, 16
	learnset MOVE_MAGNET_BOMB, 17
	learnset MOVE_SHADOW_CLAW, 19
	learnset MOVE_SWORDS_DANCE, 21
	learnset MOVE_BRICK_BREAK, 23
	learnset MOVE_AUTOTOMIZE, 25
	learnset MOVE_GYRO_BALL, 28
	learnset MOVE_DESTINY_BOND, 30
	learnset MOVE_IRON_HEAD, 32
	terminatelearnset

levelup SPECIES_AEGISLASH
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SPRITZEE
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_TRICK_ROOM, 5
	learnset MOVE_DOUBLE_TEAM, 7
	learnset MOVE_ABSORB, 8
	learnset MOVE_HELPING_HAND, 10
	learnset MOVE_MIRROR_COAT, 11
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_GRAVITY, 14
	learnset MOVE_SNORE, 15
	learnset MOVE_CHARM, 17
	learnset MOVE_HYPNOSIS, 19
	learnset MOVE_DREAM_EATER, 21
	learnset MOVE_LUSTER_PURGE, 23
	learnset MOVE_ENERGY_BALL, 26
	learnset MOVE_MOONBLAST, 28
	learnset MOVE_FLAIL, 30
	terminatelearnset

levelup SPECIES_AROMATISSE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SWIRLIX
	learnset MOVE_POUND, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_ABSORB, 4
	learnset MOVE_YAWN, 6
	learnset MOVE_LIGHT_SCREEN, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_HEAL_BELL, 11
	learnset MOVE_COVET, 13
	learnset MOVE_GRAVITY, 14
	learnset MOVE_CHARM, 16
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_LUSTER_PURGE, 20
	learnset MOVE_AMNESIA, 22
	learnset MOVE_ENDEAVOR, 24
	learnset MOVE_MOONBLAST, 27
	learnset MOVE_THUNDERBOLT, 29
	terminatelearnset

levelup SPECIES_SLURPUFF
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_INKAY
	learnset MOVE_ASTONISH, 1
	learnset MOVE_POWER_SPLIT, 2
	learnset MOVE_PURSUIT, 4
	learnset MOVE_CONFUSION, 6
	learnset MOVE_SPITE, 7
	learnset MOVE_FLATTER, 9
	learnset MOVE_PAYBACK, 11
	learnset MOVE_PSYBEAM, 13
	learnset MOVE_TRICK_ROOM, 15
	learnset MOVE_EMBARGO, 17
	learnset MOVE_TAUNT, 18
	learnset MOVE_REFLECT, 20
	learnset MOVE_PSYCHO_CUT, 22
	learnset MOVE_NIGHT_SLASH, 24
	learnset MOVE_FLAMETHROWER, 27
	learnset MOVE_SUPERPOWER, 29
	learnset MOVE_FLING, 32
	terminatelearnset

levelup SPECIES_MALAMAR
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BINACLE
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_SHARPEN, 2
	learnset MOVE_STEALTH_ROCK, 4
	learnset MOVE_ROCK_SMASH, 5
	learnset MOVE_FLAIL, 7
	learnset MOVE_MEGA_PUNCH, 9
	learnset MOVE_AQUA_JET, 10
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_AERIAL_ACE, 14
	learnset MOVE_BRINE, 15
	learnset MOVE_SHADOW_CLAW, 17
	learnset MOVE_BULK_UP, 19
	learnset MOVE_ROCK_SLIDE, 21
	learnset MOVE_DIVE, 23
	learnset MOVE_X_SCISSOR, 25
	learnset MOVE_ICE_BEAM, 27
	learnset MOVE_CROSS_CHOP, 30
	terminatelearnset

levelup SPECIES_BARBARACLE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SKRELP
	learnset MOVE_BUBBLE, 1
	learnset MOVE_HAZE, 2
	learnset MOVE_CAMOUFLAGE, 4
	learnset MOVE_ACID_SPRAY, 6
	learnset MOVE_TOXIC_SPIKES, 8
	learnset MOVE_BRINE, 9
	learnset MOVE_SLUDGE, 11
	learnset MOVE_ACID_ARMOR, 13
	learnset MOVE_DRAGON_BREATH, 15
	learnset MOVE_POISON_GAS, 16
	learnset MOVE_VENOSHOCK, 17
	learnset MOVE_FEINT_ATTACK, 19
	learnset MOVE_WATER_SPORT, 21
	learnset MOVE_SLUDGE_BOMB, 23
	learnset MOVE_RAIN_DANCE, 25
	learnset MOVE_DRAGON_PULSE, 27
	learnset MOVE_HYDRO_PUMP, 30
	terminatelearnset

levelup SPECIES_DRAGALGE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_CLAUNCHER
	learnset MOVE_BUBBLE, 1
	learnset MOVE_HONE_CLAWS, 3
	learnset MOVE_FLAIL, 4
	learnset MOVE_VICE_GRIP, 6
	learnset MOVE_AQUA_JET, 7
	learnset MOVE_ICY_WIND, 9
	learnset MOVE_VENOSHOCK, 11
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_BRINE, 15
	learnset MOVE_CALM_MIND, 17
	learnset MOVE_U_TURN, 19
	learnset MOVE_DIVE, 20
	learnset MOVE_DRAGON_PULSE, 22
	learnset MOVE_SLUDGE_BOMB, 24
	learnset MOVE_RAIN_DANCE, 26
	learnset MOVE_SWORDS_DANCE, 27
	learnset MOVE_CRABHAMMER, 30
	terminatelearnset

levelup SPECIES_CLAWITZER
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_HELIOPTILE
	learnset MOVE_POUND, 1
	learnset MOVE_TAIL_WHIP, 2
	learnset MOVE_THUNDER_SHOCK, 4
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_SPIDER_WEB, 9
	learnset MOVE_LOW_SWEEP, 11
	learnset MOVE_GLARE, 12
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_SWAGGER, 16
	learnset MOVE_SECRET_POWER, 18
	learnset MOVE_NATURAL_GIFT, 20
	learnset MOVE_DARK_PULSE, 22
	learnset MOVE_IRON_TAIL, 24
	learnset MOVE_HYPER_VOICE, 26
	learnset MOVE_DIG, 28
	learnset MOVE_THUNDERBOLT, 30
	terminatelearnset

levelup SPECIES_HELIOLISK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_TYRUNT
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 2
	learnset MOVE_BITE, 4
	learnset MOVE_STEALTH_ROCK, 5
	learnset MOVE_DRAGON_BREATH, 7
	learnset MOVE_ROCK_TOMB, 9
	learnset MOVE_FIRE_FANG, 11
	learnset MOVE_ROCK_POLISH, 12
	learnset MOVE_ICE_FANG, 14
	learnset MOVE_HONE_CLAWS, 15
	learnset MOVE_ROCK_SLIDE, 17
	learnset MOVE_CRUNCH, 19
	learnset MOVE_OUTRAGE, 21
	learnset MOVE_CHARM, 23
	learnset MOVE_ZEN_HEADBUTT, 25
	learnset MOVE_DRAGON_CLAW, 27
	learnset MOVE_HEAD_SMASH, 30
	terminatelearnset

levelup SPECIES_TYRANTRUM
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_AMAURA
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_POWDER_SNOW, 4
	learnset MOVE_SANDSTORM, 6
	learnset MOVE_ROCK_BLAST, 7
	learnset MOVE_ICICLE_SPEAR, 9
	learnset MOVE_THUNDER_WAVE, 11
	learnset MOVE_ICY_WIND, 12
	learnset MOVE_ANCIENT_POWER, 14
	learnset MOVE_AURORA_BEAM, 16
	learnset MOVE_TAKE_DOWN, 17
	learnset MOVE_ROCK_POLISH, 18
	learnset MOVE_POWER_GEM, 20
	learnset MOVE_HAZE, 22
	learnset MOVE_ICE_BEAM, 24
	learnset MOVE_CALM_MIND, 26
	learnset MOVE_ROCK_SLIDE, 28
	terminatelearnset

levelup SPECIES_AURORUS
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_SYLVEON
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_HAWLUCHA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_DEDENNE
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_CARBINK
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_GOOMY
	learnset MOVE_TACKLE, 1
	learnset MOVE_ACID_SPRAY, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_TWISTER, 5
	learnset MOVE_ACID_ARMOR, 7
	learnset MOVE_MEGA_DRAIN, 9
	learnset MOVE_WATER_PULSE, 11
	learnset MOVE_MIRROR_COAT, 12
	learnset MOVE_DRAGON_BREATH, 14
	learnset MOVE_SHOCK_WAVE, 16
	learnset MOVE_BODY_SLAM, 19
	learnset MOVE_AMNESIA, 20
	learnset MOVE_RECOVER, 23
	learnset MOVE_OUTRAGE, 25
	learnset MOVE_SLUDGE_BOMB, 27
	learnset MOVE_DRAGON_PULSE, 29
	learnset MOVE_AQUA_TAIL, 31
	terminatelearnset

levelup SPECIES_SLIGGOO
	learnset MOVE_TACKLE, 1
	learnset MOVE_ACID_SPRAY, 3
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_TWISTER, 5
	learnset MOVE_ACID_ARMOR, 7
	learnset MOVE_MEGA_DRAIN, 9
	learnset MOVE_WATER_PULSE, 11
	learnset MOVE_MIRROR_COAT, 12
	learnset MOVE_DRAGON_BREATH, 14
	learnset MOVE_SHOCK_WAVE, 16
	learnset MOVE_BODY_SLAM, 19
	learnset MOVE_AMNESIA, 20
	learnset MOVE_RECOVER, 23
	learnset MOVE_OUTRAGE, 25
	learnset MOVE_SLUDGE_BOMB, 27
	learnset MOVE_DRAGON_PULSE, 29
	learnset MOVE_AQUA_TAIL, 31
	terminatelearnset

levelup SPECIES_GOODRA
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_KLEFKI
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PHANTUMP
	learnset MOVE_ASTONISH, 2
	learnset MOVE_INGRAIN, 3
	learnset MOVE_MEGA_DRAIN, 4
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_SHADOW_SNEAK, 7
	learnset MOVE_THIEF, 9
	learnset MOVE_GROWTH, 11
	learnset MOVE_WILL_O_WISP, 13
	learnset MOVE_OMINOUS_WIND, 15
	learnset MOVE_GIGA_DRAIN, 16
	learnset MOVE_EMBARGO, 18
	learnset MOVE_TRICK_ROOM, 20
	learnset MOVE_POISON_JAB, 22
	learnset MOVE_SHADOW_BALL, 24
	learnset MOVE_ENERGY_BALL, 26
	learnset MOVE_DIG, 28
	learnset MOVE_NASTY_PLOT, 30
	terminatelearnset

levelup SPECIES_TREVENANT
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_PUMPKABOO
	learnset MOVE_ASTONISH, 1
	learnset MOVE_TRICK, 3
	learnset MOVE_VINE_WHIP, 4
	learnset MOVE_CONFUSE_RAY, 6
	learnset MOVE_MEMENTO, 8
	learnset MOVE_LEECH_SEED, 10
	learnset MOVE_RAZOR_LEAF, 11
	learnset MOVE_CURSE, 13
	learnset MOVE_NATURE_POWER, 14
	learnset MOVE_WILL_O_WISP, 16
	learnset MOVE_PAIN_SPLIT, 17
	learnset MOVE_SEED_BOMB, 19
	learnset MOVE_SHADOW_CLAW, 21
	learnset MOVE_PROTECT, 22
	learnset MOVE_DESTINY_BOND, 24
	learnset MOVE_POWER_WHIP, 26
	learnset MOVE_SHADOW_BALL, 28
	learnset MOVE_EXPLOSION, 32
	terminatelearnset

levelup SPECIES_GOURGEIST
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_BERGMITE
	learnset MOVE_POWDER_SNOW, 2
	learnset MOVE_PROTECT, 4
	learnset MOVE_BITE, 6
	learnset MOVE_SHARPEN, 8
	learnset MOVE_ICICLE_SPEAR, 9
	learnset MOVE_ROCK_TOMB, 11
	learnset MOVE_PROTECT, 13
	learnset MOVE_ICE_FANG, 15
	learnset MOVE_IRON_DEFENSE, 16
	learnset MOVE_CRUNCH, 18
	learnset MOVE_RECOVER, 20
	learnset MOVE_AVALANCHE, 21
	learnset MOVE_MIRROR_COAT, 23
	learnset MOVE_CURSE, 24
	learnset MOVE_GYRO_BALL, 26
	learnset MOVE_ROCK_SLIDE, 28
	learnset MOVE_BODY_SLAM, 30
	terminatelearnset

levelup SPECIES_AVALUGG
	learnset MOVE_SPLASH, 1
	terminatelearnset

levelup SPECIES_NOIBAT
	learnset MOVE_BITE, 1
	learnset MOVE_LEECH_LIFE, 3
	learnset MOVE_SUPERSONIC, 4
	learnset MOVE_TWISTER, 5
	learnset MOVE_GUST, 7
	learnset MOVE_DOUBLE_TEAM, 9
	learnset MOVE_THIEF, 11
	learnset MOVE_AIR_CUTTER, 13
	learnset MOVE_DRAGON_BREATH, 14
	learnset MOVE_METAL_SOUND, 15
	learnset MOVE_SUPER_FANG, 17
	learnset MOVE_AIR_SLASH, 19
	learnset MOVE_ROOST, 20
	learnset MOVE_U_TURN, 22
	learnset MOVE_DRAGON_DANCE, 24
	learnset MOVE_DRAGON_CLAW, 26
	learnset MOVE_HYPER_VOICE, 28
	learnset MOVE_PROTECT, 30
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
	learnset MOVE_FLASH, 3
	learnset MOVE_DRAINING_KISS, 5
	learnset MOVE_LIGHT_SCREEN, 7
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_REFLECT, 13
	learnset MOVE_CHARGE_BEAM, 17
	learnset MOVE_GRAVITY, 20
	learnset MOVE_AURORA_BEAM, 25
	learnset MOVE_PSYBEAM, 29
	learnset MOVE_CALM_MIND, 32
	learnset MOVE_SPIRIT_BREAK, 36
	learnset MOVE_GEOMANCY, 40
	learnset MOVE_TAKE_DOWN, 43
	learnset MOVE_THUNDERBOLT, 47
	learnset MOVE_DAZZLING_GLEAM, 51
	learnset MOVE_FOCUS_BLAST, 54
	learnset MOVE_MOONBLAST, 58
	learnset MOVE_LUNAR_DANCE, 60
    terminatelearnset


levelup SPECIES_YVELTAL
	learnset MOVE_TACKLE, 1
	learnset MOVE_DEFOG, 3
	learnset MOVE_ASSURANCE, 5
	learnset MOVE_TAUNT, 7
	learnset MOVE_GUST, 9
	learnset MOVE_HONE_CLAWS, 13
	learnset MOVE_SNARL, 16
	learnset MOVE_FEATHER_DANCE, 20
	learnset MOVE_AIR_CUTTER, 25
	learnset MOVE_EMBARGO, 29
	learnset MOVE_AIR_SLASH, 32
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_U_TURN, 40
	learnset MOVE_SUCKER_PUNCH, 44
	learnset MOVE_OBLIVION_WING, 47
	learnset MOVE_ZEN_HEADBUTT, 51
	learnset MOVE_HEAT_WAVE, 54
	learnset MOVE_DARK_VOID, 57
	learnset MOVE_BRAVE_BIRD, 61
    terminatelearnset


levelup SPECIES_ZYGARDE
	learnset MOVE_BIND, 1
	learnset MOVE_SANDSTORM, 3
	learnset MOVE_WRAP, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_TWISTER, 9
	learnset MOVE_GLARE, 13
	learnset MOVE_ROCK_TOMB, 17
	learnset MOVE_MUD_SHOT, 20
	learnset MOVE_BITE, 26
	learnset MOVE_BREAKING_SWIPE, 29
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_DUAL_CHOP, 36
	learnset MOVE_COIL, 40
	learnset MOVE_THOUSAND_WAVES, 43
	learnset MOVE_PAIN_SPLIT, 48
	learnset MOVE_ZEN_HEADBUTT, 51
	learnset MOVE_FISSURE, 54
	learnset MOVE_CORE_ENFORCER, 57
	learnset MOVE_EXTREME_SPEED, 61
    terminatelearnset


levelup SPECIES_DIANCIE
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_FAIRY_WIND, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_HIDDEN_POWER, 9
	learnset MOVE_GYRO_BALL, 13
	learnset MOVE_DRAINING_KISS, 17
	learnset MOVE_IRON_DEFENSE, 20
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_GRAVITY, 29
	learnset MOVE_CHARM, 32
	learnset MOVE_SCORCHING_SANDS, 36
	learnset MOVE_DAZZLING_GLEAM, 40
	learnset MOVE_DIAMOND_STORM, 43
	learnset MOVE_CALM_MIND, 47
	learnset MOVE_MOONBLAST, 51
	learnset MOVE_EXPLOSION, 54
	learnset MOVE_EARTH_POWER, 58
	learnset MOVE_LUNAR_DANCE, 61
    terminatelearnset


levelup SPECIES_HOOPA
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_DESTINY_BOND, 5
	learnset MOVE_ASSURANCE, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CURSE, 13
	learnset MOVE_MIRROR_COAT, 17
	learnset MOVE_MEMENTO, 20
	learnset MOVE_SNARL, 25
	learnset MOVE_PSYBEAM, 29
	learnset MOVE_GRAVITY, 33
	learnset MOVE_HYPERSPACE_HOLE, 37
	learnset MOVE_CALM_MIND, 39
	learnset MOVE_SHADOW_BALL, 44
	learnset MOVE_HYPNOSIS, 49
	learnset MOVE_PSYCHIC, 51
	learnset MOVE_DREAM_EATER, 55
	learnset MOVE_SHADOW_FORCE, 61
	learnset MOVE_TRICK, 63
    terminatelearnset


levelup SPECIES_VOLCANION
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_FIRE_SPIN, 7
	learnset MOVE_PROTECT, 9
	learnset MOVE_WHIRLPOOL, 13
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_MUD_BOMB, 20
	learnset MOVE_SUNNY_DAY, 23
	learnset MOVE_RAIN_DANCE, 23
	learnset MOVE_MYSTICAL_FIRE, 28
	learnset MOVE_SCALD, 33
	learnset MOVE_THUNDER_FANG, 36
	learnset MOVE_RECOVER, 40
	learnset MOVE_CALM_MIND, 44
	learnset MOVE_STEAM_ERUPTION, 48
	learnset MOVE_SCORCHING_SANDS, 52
	learnset MOVE_FLAMETHROWER, 54
	learnset MOVE_FLASH_CANNON, 58
	learnset MOVE_OVERHEAT, 60
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_WAVE, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_DRAINING_KISS, 7
	learnset MOVE_CHARGE, 9
	learnset MOVE_ELECTROWEB, 12
	learnset MOVE_GROWTH, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_SHOCK_WAVE, 21
	learnset MOVE_NATURES_MADNESS, 24
	learnset MOVE_SPIRIT_BREAK, 28
	learnset MOVE_PARABOLIC_CHARGE, 32
	learnset MOVE_REFLECT, 36
	learnset MOVE_VOLT_SWITCH, 41
	learnset MOVE_LIGHT_SCREEN, 45
	learnset MOVE_PLAY_ROUGH, 49
	learnset MOVE_WILD_CHARGE, 53
	learnset MOVE_BRAVE_BIRD, 58
	learnset MOVE_TAUNT, 61
    terminatelearnset


levelup SPECIES_TAPU_LELE
	learnset MOVE_TACKLE, 1
	learnset MOVE_COSMIC_POWER, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_DRAINING_KISS, 7
	learnset MOVE_WISH, 9
	learnset MOVE_STORED_POWER, 12
	learnset MOVE_OMINOUS_WIND, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_MAGIC_COAT, 21
	learnset MOVE_NATURES_MADNESS, 24
	learnset MOVE_CHARM, 28
	learnset MOVE_DAZZLING_GLEAM, 32
	learnset MOVE_PSYSHOCK, 36
	learnset MOVE_TRICK, 41
	learnset MOVE_MOONBLAST, 45
	learnset MOVE_PSYCHIC, 49
	learnset MOVE_SHADOW_BALL, 53
	learnset MOVE_CALM_MIND, 58
	learnset MOVE_LUNAR_DANCE, 61
    terminatelearnset


levelup SPECIES_TAPU_BULU
	learnset MOVE_TACKLE, 1
	learnset MOVE_DISABLE, 3
	learnset MOVE_LEAFAGE, 5
	learnset MOVE_FAIRY_WIND, 7
	learnset MOVE_LEECH_SEED, 9
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_GROWTH, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_RAZOR_LEAF, 21
	learnset MOVE_NATURES_MADNESS, 24
	learnset MOVE_SPIRIT_BREAK, 28
	learnset MOVE_HORN_LEECH, 32
	learnset MOVE_SYNTHESIS, 36
	learnset MOVE_PETAL_BLIZZARD, 41
	learnset MOVE_TAUNT, 45
	learnset MOVE_PLAY_ROUGH, 49
	learnset MOVE_HIGH_HORSEPOWER, 53
	learnset MOVE_MEGAHORN, 58
	learnset MOVE_WOOD_HAMMER, 61
    terminatelearnset


levelup SPECIES_TAPU_FINI
	learnset MOVE_TACKLE, 1
	learnset MOVE_SOAK, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_FAIRY_WIND, 7
	learnset MOVE_AQUA_RING, 9
	learnset MOVE_WHIRLPOOL, 12
	learnset MOVE_ICY_WIND, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_FLIP_TURN, 21
	learnset MOVE_NATURES_MADNESS, 24
	learnset MOVE_KNOCK_OFF, 28
	learnset MOVE_DAZZLING_GLEAM, 32
	learnset MOVE_MUDDY_WATER, 36
	learnset MOVE_TRICK, 41
	learnset MOVE_MOONBLAST, 45
	learnset MOVE_SCALD, 49
	learnset MOVE_ICE_BEAM, 53
	learnset MOVE_CALM_MIND, 58
	learnset MOVE_LUNAR_DANCE, 61
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_HOWL, 3
	learnset MOVE_FIRE_SPIN, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_METAL_CLAW, 9
	learnset MOVE_IRON_DEFENSE, 12
	learnset MOVE_FLAME_CHARGE, 15
	learnset MOVE_SNARL, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_MAGNET_BOMB, 24
	learnset MOVE_COSMIC_POWER, 28
	learnset MOVE_MYSTICAL_FIRE, 32
	learnset MOVE_PSYCHIC_FANGS, 36
	learnset MOVE_IRON_HEAD, 41
	learnset MOVE_WILD_CHARGE, 45
	learnset MOVE_SUNSTEEL_STRIKE, 49
	learnset MOVE_ZEN_HEADBUTT, 53
	learnset MOVE_HEAT_CRASH, 58
	learnset MOVE_EARTHQUAKE, 61
    terminatelearnset


levelup SPECIES_LUNALA
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_TRICK_ROOM, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_HYPNOSIS, 9
	learnset MOVE_LIGHT_SCREEN, 13
	learnset MOVE_MEMENTO, 17
	learnset MOVE_REFLECT, 20
	learnset MOVE_PSYBEAM, 24
	learnset MOVE_SHADOW_CLAW, 28
	learnset MOVE_MOONLIGHT, 33
	learnset MOVE_EXTRASENSORY, 36
	learnset MOVE_COSMIC_POWER, 40
	learnset MOVE_NIGHT_DAZE, 44
	learnset MOVE_PSYCHIC, 48
	learnset MOVE_SHADOW_BALL, 53
	learnset MOVE_DREAM_EATER, 54
	learnset MOVE_MOONGEIST_BEAM, 58
	learnset MOVE_FOCUS_BLAST, 62
    terminatelearnset


levelup SPECIES_NIHILEGO
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_SMOG, 3
	learnset MOVE_ROCK_THROW, 5
	learnset MOVE_SPIKES, 7
	learnset MOVE_ACID_SPRAY, 9
	learnset MOVE_ROCK_BLAST, 12
	learnset MOVE_SANDSTORM, 15
	learnset MOVE_CROSS_POISON, 18
	learnset MOVE_BRUTAL_SWING, 21
	learnset MOVE_ANCIENT_POWER, 24
	learnset MOVE_SLUDGE, 28
	learnset MOVE_PAIN_SPLIT, 32
	learnset MOVE_PSYSHOCK, 36
	learnset MOVE_POWER_GEM, 41
	learnset MOVE_SLUDGE_BOMB, 45
	learnset MOVE_DAZZLING_GLEAM, 49
	learnset MOVE_SLUDGE_WAVE, 53
	learnset MOVE_METEOR_BEAM, 58
	learnset MOVE_FOUL_PLAY, 61
    terminatelearnset


levelup SPECIES_BUZZWOLE
	learnset MOVE_POUND, 1
	learnset MOVE_COMET_PUNCH, 3
	learnset MOVE_PIN_MISSILE, 5
	learnset MOVE_MEDITATE, 7
	learnset MOVE_KARATE_CHOP, 9
	learnset MOVE_TAUNT, 13
	learnset MOVE_POUNCE, 15
	learnset MOVE_POWER_UP_PUNCH, 18
	learnset MOVE_PAYBACK, 21
	learnset MOVE_BUG_BITE, 24
	learnset MOVE_LOW_SWEEP, 28
	learnset MOVE_DUAL_WINGBEAT, 32
	learnset MOVE_LEECH_LIFE, 36
	learnset MOVE_DRAIN_PUNCH, 41
	learnset MOVE_BULK_UP, 45
	learnset MOVE_MEGAHORN, 49
	learnset MOVE_HAMMER_ARM, 53
	learnset MOVE_EARTHQUAKE, 58
	learnset MOVE_SUPERPOWER, 61
    terminatelearnset


levelup SPECIES_PHEROMOSA
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_TRIPLE_KICK, 5
	learnset MOVE_TWINEEDLE, 7
	learnset MOVE_DETECT, 9
	learnset MOVE_KARATE_CHOP, 12
	learnset MOVE_STRUGGLE_BUG, 15
	learnset MOVE_POUNCE, 18
	learnset MOVE_REVENGE, 21
	learnset MOVE_BULK_UP, 24
	learnset MOVE_REVERSAL, 28
	learnset MOVE_ENDURE, 28
	learnset MOVE_SILVER_WIND, 32
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_U_TURN, 41
	learnset MOVE_AURA_SPHERE, 45
	learnset MOVE_JUMP_KICK, 45
	learnset MOVE_QUIVER_DANCE, 49
	learnset MOVE_BUG_BUZZ, 53
	learnset MOVE_DRILL_RUN, 58
	learnset MOVE_METEOR_ASSAULT, 61
    terminatelearnset


levelup SPECIES_XURKITREE
	learnset MOVE_BIND, 1
	learnset MOVE_ELECTRIC_TERRAIN, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_TWINEEDLE, 7
	learnset MOVE_MIRROR_COAT, 9
	learnset MOVE_MAGNET_RISE, 13
	learnset MOVE_ELECTROWEB, 15
	learnset MOVE_CHARGE, 18
	learnset MOVE_SPARK, 21
	learnset MOVE_SIGNAL_BEAM, 24
	learnset MOVE_THUNDER_WAVE, 28
	learnset MOVE_DISCHARGE, 32
	learnset MOVE_DAZZLING_GLEAM, 36
	learnset MOVE_CALM_MIND, 41
	learnset MOVE_SOLAR_BEAM, 45
	learnset MOVE_THUNDERBOLT, 49
	learnset MOVE_ENERGY_BALL, 53
	learnset MOVE_TAIL_GLOW, 58
	learnset MOVE_THUNDER, 61
    terminatelearnset


levelup SPECIES_CELESTEELA
	learnset MOVE_TACKLE, 1
	learnset MOVE_MEGA_DRAIN, 3
	learnset MOVE_PROTECT, 5
	learnset MOVE_GYRO_BALL, 7
	learnset MOVE_LEECH_SEED, 9
	learnset MOVE_GUST, 13
	learnset MOVE_SUBSTITUTE, 15
	learnset MOVE_IRON_DEFENSE, 18
	learnset MOVE_FLAME_CHARGE, 21
	learnset MOVE_AIR_CUTTER, 24
	learnset MOVE_SMART_STRIKE, 28
	learnset MOVE_GIGA_DRAIN, 32
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_ROOST, 41
	learnset MOVE_FLASH_CANNON, 45
	learnset MOVE_TOXIC, 49
	learnset MOVE_SELF_DESTRUCT, 53
	learnset MOVE_SOLAR_BEAM, 58
	learnset MOVE_HEAVY_SLAM, 61
    terminatelearnset


levelup SPECIES_KARTANA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FOCUS_ENERGY, 3
    learnset MOVE_VACUUM_WAVE, 5
    learnset MOVE_BULLET_SEED, 7
    learnset MOVE_MIRROR_SHOT, 9
    learnset MOVE_SYNTHESIS, 13
    learnset MOVE_METAL_CLAW, 17
    learnset MOVE_FALSE_SWIPE, 20
    learnset MOVE_MAGNET_BOMB, 25
    learnset MOVE_KNOCK_OFF, 29
    learnset MOVE_AERIAL_ACE, 34
    learnset MOVE_FEINT, 37
    learnset MOVE_DETECT, 41
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_LEAF_BLADE, 48
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_SWORDS_DANCE, 56
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_GUILLOTINE, 64
    terminatelearnset


levelup SPECIES_GUZZLORD
	learnset MOVE_TACKLE, 1
	learnset MOVE_STOCKPILE, 3
	learnset MOVE_SWALLOW, 3
	learnset MOVE_TWISTER, 5
	learnset MOVE_PAYBACK, 7
	learnset MOVE_AMNESIA, 9
	learnset MOVE_REST, 13
	learnset MOVE_STOMP, 15
	learnset MOVE_BITE, 18
	learnset MOVE_BREAKING_SWIPE, 21
	learnset MOVE_TAUNT, 24
	learnset MOVE_KNOCK_OFF, 28
	learnset MOVE_DUAL_CHOP, 32
	learnset MOVE_FIRE_FANG, 36
	learnset MOVE_ROCK_SLIDE, 41
	learnset MOVE_FOUL_PLAY, 45
	learnset MOVE_DRAGON_RUSH, 49
	learnset MOVE_FLAMETHROWER, 53
	learnset MOVE_EARTHQUAKE, 58
	learnset MOVE_HEAVY_SLAM, 61
    terminatelearnset


levelup SPECIES_NECROZMA
	learnset MOVE_TACKLE, 1
	learnset MOVE_LIGHT_SCREEN, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_TRICK, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_RECOVER, 21
	learnset MOVE_BRUTAL_SWING, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_PSYSHOCK, 32
	learnset MOVE_POWER_GEM, 36
	learnset MOVE_PHOTON_GEYSER, 41
	learnset MOVE_CALM_MIND, 45
	learnset MOVE_DRAGON_PULSE, 49
	learnset MOVE_EARTH_POWER, 53
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_PRISMATIC_LASER, 61
    terminatelearnset


levelup SPECIES_MAGEARNA
	learnset MOVE_SONIC_BOOM, 1
	learnset MOVE_GYRO_BALL, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_FAIRY_WIND, 7
	learnset MOVE_THUNDER_WAVE, 9
	learnset MOVE_ELECTROWEB, 13
	learnset MOVE_DRAINING_KISS, 15
	learnset MOVE_MIRROR_SHOT, 18
	learnset MOVE_AURORA_BEAM, 21
	learnset MOVE_PAIN_SPLIT, 24
	learnset MOVE_SMART_STRIKE, 28
	learnset MOVE_CONFUSE_RAY, 32
	learnset MOVE_DAZZLING_GLEAM, 36
	learnset MOVE_FLASH_CANNON, 41
	learnset MOVE_AURA_SPHERE, 45
	learnset MOVE_FLEUR_CANNON, 49
	learnset MOVE_HEAVY_SLAM, 53
	learnset MOVE_EXPLOSION, 58
	learnset MOVE_ZAP_CANNON, 61
    terminatelearnset


levelup SPECIES_MARSHADOW
	learnset MOVE_POUND, 1
	learnset MOVE_PSYCH_UP, 3
	learnset MOVE_POWER_UP_PUNCH, 5
	learnset MOVE_SHADOW_SNEAK, 7
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_THIEF, 13
	learnset MOVE_HEX, 15
	learnset MOVE_FORCE_PALM, 18
	learnset MOVE_SWAGGER, 21
	learnset MOVE_DRAIN_PUNCH, 24
	learnset MOVE_SHADOW_CLAW, 28
	learnset MOVE_SUCKER_PUNCH, 32
	learnset MOVE_BLAZE_KICK, 36
	learnset MOVE_PHANTOM_FORCE, 41
	learnset MOVE_JUMP_KICK, 45
	learnset MOVE_SPECTRAL_THIEF, 49
	learnset MOVE_CLOSE_COMBAT, 53
	learnset MOVE_ENDEAVOR, 58
	learnset MOVE_DETECT, 61
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
	learnset MOVE_PIN_MISSILE, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_POISON_STING, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_POISON_GAS, 9
	learnset MOVE_ACID, 12
	learnset MOVE_HEX, 15
	learnset MOVE_TOXIC_SPIKES, 18
	learnset MOVE_VENOSHOCK, 21
	learnset MOVE_BREAKING_SWIPE, 24
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_DRAGON_BREATH, 32
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_DRAGON_PULSE, 41
	learnset MOVE_SLUDGE_BOMB, 45
	learnset MOVE_DRAGON_DANCE, 49
	learnset MOVE_HEAT_WAVE, 53
	learnset MOVE_GUNK_SHOT, 58
	learnset MOVE_DRACO_METEOR, 61
    terminatelearnset


levelup SPECIES_STAKATAKA
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_SANDSTORM, 2
	learnset MOVE_ROCK_BLAST, 4
	learnset MOVE_IRON_DEFENSE, 6
	learnset MOVE_GYRO_BALL, 8
	learnset MOVE_ROCK_TOMB, 12
	learnset MOVE_TRICK_ROOM, 16
	learnset MOVE_MAGNET_BOMB, 19
	learnset MOVE_SCORCHING_SANDS, 23
	learnset MOVE_SPIKES, 27
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_RECOVER, 36
	learnset MOVE_ROCK_SLIDE, 40
	learnset MOVE_IRON_HEAD, 44
	learnset MOVE_TOXIC, 48
	learnset MOVE_PROTECT, 53
	learnset MOVE_FISSURE, 54
	learnset MOVE_HEAVY_SLAM, 58
	learnset MOVE_HEAT_CRASH, 63
    terminatelearnset


levelup SPECIES_BLACEPHALON
	learnset MOVE_TACKLE, 1
	learnset MOVE_MAGIC_COAT, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_EMBER, 9
	learnset MOVE_SHADOW_SNEAK, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_TAUNT, 20
	learnset MOVE_FLAME_WHEEL, 25
	learnset MOVE_OMINOUS_WIND, 30
	learnset MOVE_WILL_O_WISP, 33
	learnset MOVE_PSYBEAM, 36
	learnset MOVE_EMBARGO, 39
	learnset MOVE_HYPNOSIS, 43
	learnset MOVE_FIRE_PUNCH, 48
	learnset MOVE_SHADOW_BALL, 51
	learnset MOVE_PSYCHIC, 54
	learnset MOVE_FLAMETHROWER, 57
	learnset MOVE_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_ZERAORA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_CHARGE, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_TAUNT, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_FEINT, 17
	learnset MOVE_LOW_KICK, 20
	learnset MOVE_FAKE_OUT, 24
	learnset MOVE_SPIDER_WEB, 28
	learnset MOVE_REVENGE, 33
	learnset MOVE_POWER_UP_PUNCH, 36
	learnset MOVE_FIRE_PUNCH, 40
	learnset MOVE_THUNDER_PUNCH, 44
	learnset MOVE_MIRACLE_EYE, 48
	learnset MOVE_OUTRAGE, 53
	learnset MOVE_VOLT_SWITCH, 54
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_VOLT_TACKLE, 62
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
    learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_GYRO_BALL, 5
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_IRON_DEFENSE, 9
	learnset MOVE_PROTECT, 12
	learnset MOVE_METAL_CLAW, 15
	learnset MOVE_POWER_UP_PUNCH, 18
	learnset MOVE_ELECTRIC_TERRAIN, 21
	learnset MOVE_THUNDER_PUNCH, 24
	learnset MOVE_REST, 28
	learnset MOVE_BULLET_PUNCH, 32
	learnset MOVE_BODY_PRESS, 36
	learnset MOVE_DOUBLE_IRON_BASH, 41
	learnset MOVE_HIGH_HORSEPOWER, 45
	learnset MOVE_ICE_PUNCH, 49
	learnset MOVE_FIRE_PUNCH, 53
	learnset MOVE_HEAVY_SLAM, 58
	learnset MOVE_SUPERPOWER, 61
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_AGILITY, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_DISARMING_VOICE, 9
	learnset MOVE_TAIL_SLAP, 13
	learnset MOVE_SNARL, 15
	learnset MOVE_SLASH, 18
	learnset MOVE_FIRE_FANG, 21
	learnset MOVE_SPIRIT_BREAK, 24
	learnset MOVE_SWORDS_DANCE, 28
	learnset MOVE_MISTY_TERRAIN, 32
	learnset MOVE_PSYCHIC_FANGS, 36
	learnset MOVE_IRON_HEAD, 41
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_SACRED_SWORD, 49
	learnset MOVE_WILD_CHARGE, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_ENDURE, 61
	learnset MOVE_REVERSAL, 61
	terminatelearnset


levelup SPECIES_ZAMAZENTA
	learnset MOVE_TACKLE, 1
	learnset MOVE_IRON_DEFENSE, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_BITE, 9
	learnset MOVE_TAIL_SLAP, 13
	learnset MOVE_SNARL, 15
	learnset MOVE_HELPING_HAND, 18
	learnset MOVE_DOUBLE_KICK, 21
	learnset MOVE_ICE_FANG, 24
	learnset MOVE_BULK_UP, 28
	learnset MOVE_BODY_PRESS, 32
	learnset MOVE_MOONBLAST, 36
	learnset MOVE_IRON_HEAD, 41
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_METAL_BURST, 49
	learnset MOVE_CRUNCH, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_PROTECT, 61
	terminatelearnset


levelup SPECIES_ETERNATUS
	learnset MOVE_POUND, 1
	learnset MOVE_POISON_GAS, 3
	learnset MOVE_POISON_STING, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_FIRE_SPIN, 9
	learnset MOVE_ACID_SPRAY, 13
	learnset MOVE_ASSURANCE, 17
	learnset MOVE_COSMIC_POWER, 20
	learnset MOVE_BREAKING_SWIPE, 25
	learnset MOVE_TOXIC_SPIKES, 30
	learnset MOVE_RECOVER, 33
	learnset MOVE_VENOSHOCK, 37
	learnset MOVE_OUTRAGE, 40
	learnset MOVE_POISON_JAB, 44
	learnset MOVE_FLAMETHROWER, 49
	learnset MOVE_SLUDGE_WAVE, 51
	learnset MOVE_DRAGON_PULSE, 55
	learnset MOVE_FIRE_BLAST, 59
	learnset MOVE_DRACO_METEOR, 62
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_BEAT_UP, 5
	learnset MOVE_KARATE_CHOP, 7
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_METAL_CLAW, 13
	learnset MOVE_DETECT, 17
	learnset MOVE_LOW_SWEEP, 20
	learnset MOVE_ASSURANCE, 24
	learnset MOVE_BULK_UP, 28
	learnset MOVE_AERIAL_ACE, 33
	learnset MOVE_SUCKER_PUNCH, 36
	learnset MOVE_DRAIN_PUNCH, 40
	learnset MOVE_IRON_HEAD, 44
	learnset MOVE_POISON_JAB, 48
	learnset MOVE_ICE_PUNCH, 53
	learnset MOVE_WICKED_BLOW, 54
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_ACROBATICS, 62
	terminatelearnset


levelup SPECIES_ZARUDE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GRASSY_TERRAIN, 3
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_FURY_SWIPES, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_SNARL, 12
	learnset MOVE_MUD_SHOT, 15
	learnset MOVE_TAUNT, 18
	learnset MOVE_TRAILBLAZE, 21
	learnset MOVE_LOW_SWEEP, 24
	learnset MOVE_BRUTAL_SWING, 28
	learnset MOVE_GIGA_DRAIN, 32
	learnset MOVE_SYNTHESIS, 36
	learnset MOVE_BULK_UP, 41
	learnset MOVE_U_TURN, 45
	learnset MOVE_CRUNCH, 49
	learnset MOVE_PETAL_BLIZZARD, 53
	learnset MOVE_SUPERPOWER, 58
	learnset MOVE_POWER_WHIP, 61
	terminatelearnset


levelup SPECIES_REGIELEKI
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAPID_SPIN, 3
	learnset MOVE_NUZZLE, 5
	learnset MOVE_MAGNET_RISE, 7
	learnset MOVE_THUNDER_SHOCK, 9
	learnset MOVE_LIGHT_SCREEN, 12
	learnset MOVE_ANCIENT_POWER, 15
	learnset MOVE_ELECTROWEB, 18
	learnset MOVE_ELECTRIC_TERRAIN, 21
	learnset MOVE_SHOCK_WAVE, 24
	learnset MOVE_EXTREME_SPEED, 28
	learnset MOVE_BOUNCE, 32
	learnset MOVE_VOLT_SWITCH, 36
	learnset MOVE_TAKE_DOWN, 41
	learnset MOVE_THUNDERBOLT, 45
	learnset MOVE_RAIN_DANCE, 49
	learnset MOVE_THUNDER, 53
	learnset MOVE_EXPLOSION, 58
	learnset MOVE_HYPER_BEAM, 61
	terminatelearnset


levelup SPECIES_REGIDRAGO
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 3
	learnset MOVE_TWISTER, 5
	learnset MOVE_SWIFT, 7
	learnset MOVE_SELF_DESTRUCT, 9
	learnset MOVE_VICE_GRIP, 12
	learnset MOVE_ANCIENT_POWER, 15
	learnset MOVE_BREAKING_SWIPE, 18
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_FIRE_FANG, 24
	learnset MOVE_DRAGON_RAGE, 28
	learnset MOVE_CRUNCH, 32
	learnset MOVE_RECOVER, 36
	learnset MOVE_DRAGON_HAMMER, 41
	learnset MOVE_HAMMER_ARM, 45
	learnset MOVE_EXPLOSION, 49
	learnset MOVE_DRAGON_ENERGY, 53
	learnset MOVE_EARTHQUAKE, 58
	learnset MOVE_DRAGON_PULSE, 61
	terminatelearnset


levelup SPECIES_GLASTRIER
	learnset MOVE_TACKLE, 1
	learnset MOVE_HAIL, 3
	learnset MOVE_ICICLE_SPEAR, 5
	learnset MOVE_STOMP, 7
	learnset MOVE_DOUBLE_KICK, 9
	learnset MOVE_SNARL, 12
	learnset MOVE_PROTECT, 15
	learnset MOVE_TRAILBLAZE, 18
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_AVALANCHE, 32
	learnset MOVE_BODY_PRESS, 36
	learnset MOVE_HIGH_HORSEPOWER, 41
	learnset MOVE_ICICLE_CRASH, 45
	learnset MOVE_SWORDS_DANCE, 49
	learnset MOVE_HEAVY_SLAM, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_MEGAHORN, 61
	terminatelearnset


levelup SPECIES_SPECTRIER
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_SHADOW_SNEAK, 3
	learnset MOVE_DOUBLE_KICK, 5
	learnset MOVE_SNARL, 7
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_OMINOUS_WIND, 12
	learnset MOVE_SNARL, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_MUD_SHOT, 21
	learnset MOVE_HEX, 24
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_TRICK_ROOM, 32
	learnset MOVE_SHADOW_BALL, 36
	learnset MOVE_FOUL_PLAY, 41
	learnset MOVE_PSYSHOCK, 45
	learnset MOVE_NASTY_PLOT, 49
	learnset MOVE_TAUNT, 53
	learnset MOVE_NIGHT_DAZE, 58
	learnset MOVE_DESTINY_BOND, 61
	terminatelearnset


levelup SPECIES_CALYREX
    learnset MOVE_TACKLE, 1
	learnset MOVE_BULLET_SEED, 3
	learnset MOVE_LIGHT_SCREEN, 5
	learnset MOVE_CONFUSION, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_MEGA_DRAIN, 12
	learnset MOVE_TRICK_ROOM, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_MAGICAL_LEAF, 21
	learnset MOVE_PSYBEAM, 24
	learnset MOVE_LEECH_SEED, 28
	learnset MOVE_PSYSHOCK, 32
	learnset MOVE_GRASSY_TERRAIN, 36
	learnset MOVE_ENERGY_BALL, 41
	learnset MOVE_CALM_MIND, 45
	learnset MOVE_DAZZLING_GLEAM, 49
	learnset MOVE_LEAF_STORM, 53
	learnset MOVE_SUBSTITUTE, 58
	learnset MOVE_PSYCHO_BOOST, 61
	terminatelearnset


levelup SPECIES_WYRDEER
	learnset MOVE_TACKLE, 1
	learnset MOVE_PSYWAVE, 3
	learnset MOVE_ASTONISH, 5
	learnset MOVE_BARRIER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_DOUBLE_KICK, 13
	learnset MOVE_STOMP, 17
	learnset MOVE_TRICK_ROOM, 20
	learnset MOVE_PSYBEAM, 26
	learnset MOVE_HYPNOSIS, 29
	learnset MOVE_CHARGE_BEAM, 32
	learnset MOVE_NATURE_POWER, 36
	learnset MOVE_SUCKER_PUNCH, 39
	learnset MOVE_BOUNCE, 42
	learnset MOVE_BODY_SLAM, 46
	learnset MOVE_ZEN_HEADBUTT, 49
	learnset MOVE_WILD_CHARGE, 52
	learnset MOVE_DOUBLE_EDGE, 55
	learnset MOVE_PSYCHIC, 58
    terminatelearnset


levelup SPECIES_KLEAVOR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_DOUBLE_HIT, 7
	learnset MOVE_ROCK_BLAST, 9
	learnset MOVE_FALSE_SWIPE, 13
	learnset MOVE_CUT, 17
	learnset MOVE_BUG_BITE, 20
	learnset MOVE_STEALTH_ROCK, 26
	learnset MOVE_AERIAL_ACE, 29
	learnset MOVE_IRON_DEFENSE, 33
	learnset MOVE_FEINT, 36
	learnset MOVE_ROCK_SLIDE, 40
	learnset MOVE_X_SCISSOR, 44
	learnset MOVE_BULK_UP, 48
	learnset MOVE_STONE_EDGE, 52
	learnset MOVE_U_TURN, 56
	learnset MOVE_EARTHQUAKE, 61
	learnset MOVE_REVERSAL, 64
    terminatelearnset


levelup SPECIES_URSALUNA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_METRONOME, 7
	learnset MOVE_ROLLOUT, 9
	learnset MOVE_ROCK_SMASH, 13
	learnset MOVE_PAYBACK, 17
	learnset MOVE_MUD_BOMB, 20
	learnset MOVE_METAL_CLAW, 24
	learnset MOVE_SNARL, 28
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_BULK_UP, 36
	learnset MOVE_SHADOW_CLAW, 40
	learnset MOVE_BODY_SLAM, 43
	learnset MOVE_CRUNCH, 48
	learnset MOVE_TAKE_DOWN, 51
	learnset MOVE_WAKE_UP_SLAP, 54
	learnset MOVE_FISSURE, 56
	learnset MOVE_FACADE, 63
    terminatelearnset


levelup SPECIES_BASCULEGION
	learnset MOVE_TACKLE, 1
	learnset MOVE_LICK, 3
	learnset MOVE_AQUA_RING, 5
	learnset MOVE_WATER_GUN, 7
	learnset MOVE_CONFUSE_RAY, 9
	learnset MOVE_AQUA_JET, 13
	learnset MOVE_MEMENTO, 17
	learnset MOVE_ICY_WIND, 20
	learnset MOVE_BUBBLE_BEAM, 24
	learnset MOVE_RAIN_DANCE, 28
	learnset MOVE_ICE_FANG, 33
	learnset MOVE_OMINOUS_WIND, 36
	learnset MOVE_FACADE, 40
	learnset MOVE_DIVE, 44
	learnset MOVE_ICE_BEAM, 48
	learnset MOVE_DOUBLE_EDGE, 53
	learnset MOVE_SHADOW_FORCE, 54
	learnset MOVE_WATER_SPOUT, 59
	learnset MOVE_HEAD_SMASH, 62
    terminatelearnset


levelup SPECIES_SNEASLER
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
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_ICY_WIND, 24
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_HONE_CLAWS, 36
    learnset MOVE_FLING, 42
    learnset MOVE_NASTY_PLOT, 48
    learnset MOVE_SCREECH, 54
    learnset MOVE_NIGHT_SLASH, 60
    learnset MOVE_DARK_PULSE, 66
    terminatelearnset


levelup SPECIES_OVERQWIL
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_FELL_STINGER, 12
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_SPIKES, 20
    learnset MOVE_BRINE, 24
    learnset MOVE_REVENGE, 28
    learnset MOVE_PIN_MISSILE, 32
    learnset MOVE_TOXIC_SPIKES, 36
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_STOCKPILE, 44
    learnset MOVE_SPIT_UP, 4
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_TOXIC, 52
    learnset MOVE_AQUA_TAIL, 56
    learnset MOVE_ACUPRESSURE, 60
    learnset MOVE_DESTINY_BOND, 66
    terminatelearnset


levelup SPECIES_ENAMORUS
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_ASTONISH, 5
	learnset MOVE_FAIRY_WIND, 7
	learnset MOVE_GUST, 9
	learnset MOVE_AMNESIA, 12
	learnset MOVE_DRAINING_KISS, 15
	learnset MOVE_CHARM, 18
	learnset MOVE_AIR_CUTTER, 21
	learnset MOVE_TRICK_ROOM, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_CHARM, 32
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_SPRINGTIDE_STORM, 41
	learnset MOVE_AURA_SPHERE, 45
	learnset MOVE_MOONBLAST, 49
	learnset MOVE_CALM_MIND, 53
	learnset MOVE_EARTH_POWER, 58
	learnset MOVE_LUNAR_DANCE, 61
    terminatelearnset



levelup SPECIES_SPRIGATITO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FLORAGATO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_MEOWSCARADA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FUECOCO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CROCALOR
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SKELEDIRGE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_QUAXLY
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_QUAXWELL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_QUAQUAVAL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_LECHONK
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_OINKOLOGNE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TAROUNTULA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SPIDOPS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_NYMBLE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_LOKIX
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_PAWMI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_PAWMO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_PAWMOT
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TANDEMAUS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_MAUSHOLD
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FIDOUGH
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_DACHSBUN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SMOLIV
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_DOLLIV
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ARBOLIVA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SQUAWKABILLY
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_NACLI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_NACLSTACK
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GARGANACL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CHARCADET
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ARMAROUGE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CERULEDGE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TADBULB
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_BELLIBOLT
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_WATTREL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_KILOWATTREL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_MASCHIFF
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_MABOSSTIFF
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SHROODLE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GRAFAIAI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_BRAMBLIN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_BRAMBLEGHAST
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TOEDSCOOL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TOEDSCRUEL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_KLAWF
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CAPSAKID
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SCOVILLAIN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_RELLOR
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_RABSCA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FLITTLE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ESPATHRA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TINKATINK
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TINKATUFF
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TINKATON
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_WIGLETT
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_WUGTRIO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_BOMBIRDIER
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FINIZEN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_PALAFIN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_VAROOM
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_REVAVROOM
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CYCLIZAR
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ORTHWORM
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GLIMMET
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GLIMMORA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GREAVARD
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_HOUNDSTONE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FLAMIGO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CETODDLE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CETITAN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_VELUZA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_DONDOZO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TATSUGIRI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ANNIHILAPE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CLODSIRE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FARIGIRAF
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_DUDUNSPARCE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_KINGAMBIT
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GREAT_TUSK
    learnset MOVE_ROLLOUT, 1
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_TRIPLE_KICK, 5
	learnset MOVE_PROTECT, 7
	learnset MOVE_ROCK_BLAST, 9
	learnset MOVE_ROCK_SMASH, 12
	learnset MOVE_BULK_UP, 15
	learnset MOVE_TAUNT, 18
	learnset MOVE_ROCK_TOMB, 21
	learnset MOVE_HORN_ATTACK, 24
	learnset MOVE_FIRE_FANG, 28
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_BODY_PRESS, 36
	learnset MOVE_ICE_FANG, 41
	learnset MOVE_ROCK_SLIDE, 45
	learnset MOVE_TAKE_DOWN, 49
	learnset MOVE_FISSURE, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_HEAD_SMASH, 61
    terminatelearnset

levelup SPECIES_SCREAM_TAIL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_BRUTE_BONNET
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FLUTTER_MANE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SLITHER_WING
    learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_GUST, 7
	learnset MOVE_STRUGGLE_BUG, 9
	learnset MOVE_ROCK_SMASH, 12
	learnset MOVE_TRAILBLAZE, 15
	learnset MOVE_WILL_O_WISP, 18
	learnset MOVE_U_TURN, 21
	learnset MOVE_FLAME_CHARGE, 24
	learnset MOVE_BRICK_BREAK, 28
	learnset MOVE_LEECH_LIFE, 32
	learnset MOVE_QUIVER_DANCE, 36
	learnset MOVE_HEAT_WAVE, 41
	learnset MOVE_TAKE_DOWN, 45
	learnset MOVE_FLARE_BLITZ, 49
	learnset MOVE_CLOSE_COMBAT, 53
	learnset MOVE_X_SCISSOR, 58
	learnset MOVE_HURRICANE, 61
    terminatelearnset

levelup SPECIES_SANDY_SHOCKS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_TREADS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_BUNDLE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_HANDS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_JUGULIS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_MOTH
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_THORNS
    learnset MOVE_TACKLE, 1
	learnset MOVE_TAUNT, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_ELECTRIC_TERRAIN, 9
	learnset MOVE_SAND_TOMB, 12
	learnset MOVE_BITE, 15
	learnset MOVE_ELECTROWEB, 18
	learnset MOVE_ROCK_TOMB, 21
	learnset MOVE_BULLDOZE, 24
	learnset MOVE_SNARL, 28
	learnset MOVE_VOLT_SWITCH, 32
	learnset MOVE_FIRE_PUNCH, 36
	learnset MOVE_THUNDER_PUNCH, 41
	learnset MOVE_EARTHQUAKE, 45
	learnset MOVE_WILD_CHARGE, 49
	learnset MOVE_DRAGON_DANCE, 53
	learnset MOVE_STONE_EDGE, 58
	learnset MOVE_HEAVY_SLAM, 61
    terminatelearnset

levelup SPECIES_FRIGIBAX
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ARCTIBAX
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_BAXCALIBUR
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GIMMIGHOUL
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GHOLDENGO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_WO_CHIEN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CHIEN_PAO
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TING_LU
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_CHI_YU
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_ROARING_MOON
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_VALIANT
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_KORAIDON
	learnset MOVE_TACKLE, 1
	learnset MOVE_FOCUS_ENERGY, 3
	learnset MOVE_TWISTER, 5
	learnset MOVE_VACUUM_WAVE, 7
	learnset MOVE_ARM_THRUST, 9
	learnset MOVE_COUNTER, 13
	learnset MOVE_DRAGON_BREATH, 17
	learnset MOVE_POWER_UP_PUNCH, 20
	learnset MOVE_REFLECT, 24
	learnset MOVE_REVENGE, 28
	learnset MOVE_DRAIN_PUNCH, 33
	learnset MOVE_U_TURN, 36
	learnset MOVE_DUAL_CHOP, 40
	learnset MOVE_FLAME_CHARGE, 44
	learnset MOVE_AGILITY, 48
	learnset MOVE_FLAMETHROWER, 52
	learnset MOVE_SKY_UPPERCUT, 54
	learnset MOVE_DRAGON_RUSH, 58
	learnset MOVE_DRAGON_DANCE, 61
	learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset

levelup SPECIES_MIRAIDON
	learnset MOVE_TACKLE, 1
	learnset MOVE_CHARGE, 3
	learnset MOVE_TWISTER, 5
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_THUNDER_WAVE, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_DRAGON_BREATH, 17
	learnset MOVE_CHARGE_BEAM, 20
	learnset MOVE_LIGHT_SCREEN, 24
	learnset MOVE_SHOCK_WAVE, 28
	learnset MOVE_PARABOLIC_CHARGE, 33
	learnset MOVE_VOLT_SWITCH, 36
	learnset MOVE_DRAGON_PULSE, 40
	learnset MOVE_SCALD, 44
	learnset MOVE_AGILITY, 48
	learnset MOVE_DAZZLING_GLEAM, 52
	learnset MOVE_THUNDERBOLT, 54
	learnset MOVE_DRACO_METEOR, 58
	learnset MOVE_CALM_MIND, 61
	learnset MOVE_THUNDER, 63
    terminatelearnset

levelup SPECIES_WALKING_WAKE
	learnset MOVE_TACKLE, 1
	learnset MOVE_HOWL, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_RAIN_DANCE, 9
	learnset MOVE_CHILLING_WATER, 12
	learnset MOVE_BITE, 15
	learnset MOVE_ICY_WIND, 18
	learnset MOVE_DRAGON_BREATH, 21
	learnset MOVE_SNARL, 24
	learnset MOVE_FIRE_FANG, 28
	learnset MOVE_DRAGON_RAGE, 32
	learnset MOVE_AGILITY, 36
	learnset MOVE_SCALD, 41
	learnset MOVE_DRAGON_PULSE, 45
	learnset MOVE_FLAMETHROWER, 49
	learnset MOVE_HURRICANE, 53
	learnset MOVE_HYDRO_PUMP, 58
	learnset MOVE_DRACO_METEOR, 61
    terminatelearnset

levelup SPECIES_IRON_LEAVES
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_DIPPLIN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_POLTCHAGEIST
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_SINISTCHA
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_OKIDOGI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_MUNKIDORI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_FEZANDIPITI
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_OGERPON
    learnset MOVE_TACKLE, 1 
    terminatelearnset


levelup SPECIES_ARCHALUDON
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_HYDRAPPLE
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_GOUGING_FIRE
    learnset MOVE_TACKLE, 1 
    terminatelearnset
levelup SPECIES_RAGING_BOLT
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_BOULDER
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_IRON_CROWN
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_TERAPAGOS
    learnset MOVE_TACKLE, 1 
    terminatelearnset

levelup SPECIES_PECHARUNT
    learnset MOVE_TACKLE, 1 
    terminatelearnset
levelup SPECIES_MEGA_VENUSAUR
	learnset MOVE_TACKLE, 1
	learnset MOVE_INGRAIN, 3
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_ACID, 7
	learnset MOVE_POISON_POWDER, 9
	learnset MOVE_BULLET_SEED, 13
	learnset MOVE_WEATHER_BALL, 17
	learnset MOVE_VENOSHOCK, 20
	learnset MOVE_TOXIC_SPIKES, 26
	learnset MOVE_BULLDOZE, 29
	learnset MOVE_MAGICAL_LEAF, 33
	learnset MOVE_KNOCK_OFF, 37
	learnset MOVE_STUN_SPORE, 40
	learnset MOVE_BODY_SLAM, 44
	learnset MOVE_SLUDGE, 47
	learnset MOVE_GIGA_DRAIN, 51
	learnset MOVE_EARTH_POWER, 55
	learnset MOVE_SLUDGE_BOMB, 61
	learnset MOVE_FRENZY_PLANT, 63
    terminatelearnset


levelup SPECIES_MEGA_CHARIZARD_X
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_EMBER, 7
	learnset MOVE_TWISTER, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_DRAGON_RAGE, 24
	learnset MOVE_FLAME_WHEEL, 28
	learnset MOVE_BREAKING_SWIPE, 32
	learnset MOVE_AERIAL_ACE, 36
	learnset MOVE_NIGHT_SLASH, 40
	learnset MOVE_SCORCHING_SANDS, 43
	learnset MOVE_OUTRAGE, 47
	learnset MOVE_AIR_SLASH, 51
	learnset MOVE_SACRED_FIRE, 54
	learnset MOVE_DRAGON_RUSH, 57
	learnset MOVE_DRAGON_DANCE, 61
    terminatelearnset


levelup SPECIES_MEGA_CHARIZARD_Y
	learnset MOVE_SCRATCH, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_EMBER, 7
	learnset MOVE_GUST, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_AIR_CUTTER, 26
	learnset MOVE_FLAME_CHARGE, 29
	learnset MOVE_ROOST, 32
	learnset MOVE_FEATHER_DANCE, 36
	learnset MOVE_AIR_SLASH, 40
	learnset MOVE_SCORCHING_SANDS, 43
	learnset MOVE_OUTRAGE, 48
	learnset MOVE_SOLAR_BEAM, 51
	learnset MOVE_AEROBLAST, 54
	learnset MOVE_BLAST_BURN, 57
	learnset MOVE_DRAGON_DANCE, 61
    terminatelearnset


levelup SPECIES_MEGA_BLASTOISE
	learnset MOVE_SPLASH, 1
	learnset MOVE_TACKLE, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_FAKE_OUT, 7
	learnset MOVE_AQUA_JET, 9
	learnset MOVE_POWER_UP_PUNCH, 12
	learnset MOVE_CHILLING_WATER, 15
	learnset MOVE_MIRROR_COAT, 18
	learnset MOVE_ICY_WIND, 21
	learnset MOVE_WEATHER_BALL, 24
	learnset MOVE_IRON_DEFENSE, 28
	learnset MOVE_WATER_PULSE, 32
	learnset MOVE_SHELL_SMASH, 36
	learnset MOVE_SUBMISSION, 41
	learnset MOVE_ICE_PUNCH, 45
	learnset MOVE_SCALD, 49
	learnset MOVE_FLASH_CANNON, 53
	learnset MOVE_EARTHQUAKE, 58
	learnset MOVE_HYDRO_CANNON, 61
    terminatelearnset


levelup SPECIES_MEGA_BEEDRILL
    learnset MOVE_FURY_ATTACK, 1 
    learnset MOVE_FURY_ATTACK, 10 
    learnset MOVE_FOCUS_ENERGY, 13 
    learnset MOVE_TWINEEDLE, 16 
    learnset MOVE_RAGE, 19 
    learnset MOVE_PURSUIT, 22 
    learnset MOVE_TOXIC_SPIKES, 25 
    learnset MOVE_PIN_MISSILE, 28 
    learnset MOVE_AGILITY, 31 
    learnset MOVE_ASSURANCE, 34 
    learnset MOVE_POISON_JAB, 37 
    learnset MOVE_ENDEAVOR, 40 
    terminatelearnset


levelup SPECIES_MEGA_PIDGEOT
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_GUST, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_DETECT, 12
	learnset MOVE_FURY_ATTACK, 15
	learnset MOVE_ROOST, 18
	learnset MOVE_AIR_CUTTER, 21
	learnset MOVE_U_TURN, 24
	learnset MOVE_FEINT, 28
	learnset MOVE_AIR_SLASH, 32
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_HEAT_WAVE, 41
	learnset MOVE_DOUBLE_EDGE, 45
	learnset MOVE_HURRICANE, 49
	learnset MOVE_HYPER_BEAM, 53
	learnset MOVE_NASTY_PLOT, 58
    terminatelearnset


levelup SPECIES_MEGA_ALAKAZAM
	learnset MOVE_POUND, 1
	learnset MOVE_PSYWAVE, 3
	learnset MOVE_METRONOME, 5
	learnset MOVE_PSYCHO_CUT, 7
	learnset MOVE_MEMENTO, 9
	learnset MOVE_CONFUSION, 13
	learnset MOVE_DISABLE, 17
	learnset MOVE_MIRACLE_EYE, 20
	learnset MOVE_RECOVER, 24
	learnset MOVE_CHARGE_BEAM, 28
	learnset MOVE_PSYBEAM, 32
	learnset MOVE_OMINOUS_WIND, 36
	learnset MOVE_CALM_MIND, 39
	learnset MOVE_EMBARGO, 43
	learnset MOVE_EXTRASENSORY, 49
	learnset MOVE_DAZZLING_GLEAM, 51
	learnset MOVE_PSYCHIC, 55
	learnset MOVE_ENERGY_BALL, 61
	learnset MOVE_FOCUS_BLAST, 63
    terminatelearnset


levelup SPECIES_MEGA_SLOWBRO
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_METRONOME, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_PROTECT, 12
	learnset MOVE_WHIRLPOOL, 15
	learnset MOVE_SLACK_OFF, 18
	learnset MOVE_TRICK_ROOM, 21
	learnset MOVE_BRINE, 24
	learnset MOVE_PSYSHOCK, 28
	learnset MOVE_DRAIN_PUNCH, 32
	learnset MOVE_SLACK_OFF, 36
	learnset MOVE_ZEN_HEADBUTT, 41
	learnset MOVE_YAWN, 45
	learnset MOVE_SCALD, 49
	learnset MOVE_FUTURE_SIGHT, 53
	learnset MOVE_FLIP_TURN, 58
	learnset MOVE_MUDDY_WATER, 61
    terminatelearnset


levelup SPECIES_MEGA_GENGAR
	learnset MOVE_POUND, 1
	learnset MOVE_SMOG, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_PERISH_SONG, 7
	learnset MOVE_ACID_SPRAY, 9
	learnset MOVE_DISABLE, 13
	learnset MOVE_SHADOW_PUNCH, 17
	learnset MOVE_CURSE, 20
	learnset MOVE_GRAVITY, 25
	learnset MOVE_HYPNOSIS, 29
	learnset MOVE_OMINOUS_WIND, 33
	learnset MOVE_VENOSHOCK, 37
	learnset MOVE_TOXIC_SPIKES, 39
	learnset MOVE_SUBSTITUTE, 44
	learnset MOVE_DAZZLING_GLEAM, 49
	learnset MOVE_SHADOW_BALL, 51
	learnset MOVE_SLUDGE_WAVE, 55
	learnset MOVE_AURA_SPHERE, 61
	learnset MOVE_WILL_O_WISP, 63
    terminatelearnset


levelup SPECIES_MEGA_KANGASKHAN
	learnset MOVE_POUND, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_COMET_PUNCH, 5
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_DISABLE, 9
	learnset MOVE_ROCK_THROW, 12
	learnset MOVE_FOCUS_ENERGY, 15
	learnset MOVE_FAKE_OUT, 18
	learnset MOVE_POWER_UP_PUNCH, 21
	learnset MOVE_ROCK_TOMB, 24
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_STOMP, 32
	learnset MOVE_CRUSH_CLAW, 36
	learnset MOVE_SUCKER_PUNCH, 41
	learnset MOVE_YAWN, 45
	learnset MOVE_ICE_PUNCH, 49
	learnset MOVE_DRAIN_PUNCH, 53
	learnset MOVE_IRON_HEAD, 57
	learnset MOVE_FACADE, 61
    terminatelearnset


levelup SPECIES_MEGA_PINSIR
   	learnset MOVE_SCRATCH, 1
	learnset MOVE_STRING_SHOT, 3
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_FALSE_SWIPE, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_CUT, 13
	learnset MOVE_MEDITATE, 17
	learnset MOVE_BUG_BITE, 20
	learnset MOVE_DOUBLE_HIT, 24
	learnset MOVE_REVENGE, 28
	learnset MOVE_ROCK_TOMB, 33
	learnset MOVE_FEINT_ATTACK, 36
	learnset MOVE_SUBMISSION, 40
	learnset MOVE_BUG_BUZZ, 44
	learnset MOVE_BULK_UP, 48
	learnset MOVE_BODY_SLAM, 52
	learnset MOVE_U_TURN, 57
	learnset MOVE_SUPERPOWER, 61
	learnset MOVE_X_SCISSOR, 63
    terminatelearnset


levelup SPECIES_MEGA_GYARADOS
	learnset MOVE_TACKLE, 1
	learnset MOVE_WHIRLPOOL, 3
	learnset MOVE_FLAIL, 5
	learnset MOVE_RAGE, 7
	learnset MOVE_SCALE_SHOT, 9
	learnset MOVE_PAYBACK, 13
	learnset MOVE_BRINE, 17
	learnset MOVE_TAUNT, 20
	learnset MOVE_SNARL, 24
	learnset MOVE_FLIP_TURN, 27
	learnset MOVE_BITE, 32
	learnset MOVE_DRAGON_RAGE, 36
	learnset MOVE_CRUNCH, 40
	learnset MOVE_LIQUIDATION, 44
	learnset MOVE_AVALANCHE, 48
	learnset MOVE_IRON_HEAD, 52
	learnset MOVE_FLAMETHROWER, 55
	learnset MOVE_DRAGON_DANCE, 56
	learnset MOVE_AQUA_TAIL, 60
    terminatelearnset


levelup SPECIES_MEGA_AERODACTYL
	learnset MOVE_SCRATCH, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_PECK, 5
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_STEALTH_ROCK, 9
	learnset MOVE_SHARPEN, 13
	learnset MOVE_FURY_ATTACK, 17
	learnset MOVE_ROCK_TOMB, 20
	learnset MOVE_SNARL, 26
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_BITE, 33
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_ROCK_POLISH, 40
	learnset MOVE_AERIAL_ACE, 45
	learnset MOVE_FIRE_FANG, 48
	learnset MOVE_ROCK_SLIDE, 52
	learnset MOVE_STEEL_WING, 56
	learnset MOVE_AQUA_TAIL, 60
	learnset MOVE_BRAVE_BIRD, 63
    terminatelearnset


levelup SPECIES_MEGA_MEWTWO_X
	learnset MOVE_TACKLE, 1
	learnset MOVE_COSMIC_POWER, 3
	learnset MOVE_SEISMIC_TOSS, 5
	learnset MOVE_DISABLE, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_MACH_PUNCH, 13
	learnset MOVE_MEMENTO, 17
	learnset MOVE_POWER_UP_PUNCH, 20
	learnset MOVE_BRUTAL_SWING, 23
	learnset MOVE_REVENGE, 27
	learnset MOVE_PSYCHO_CUT, 31
	learnset MOVE_MEDITATE, 36
	learnset MOVE_RECOVER, 40
	learnset MOVE_DRAIN_PUNCH, 44
	learnset MOVE_ZEN_HEADBUTT, 48
	learnset MOVE_EARTHQUAKE, 52
	learnset MOVE_BULK_UP, 55
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_PSYSTRIKE, 61
	learnset MOVE_HEAD_SMASH, 63
    terminatelearnset


levelup SPECIES_MEGA_MEWTWO_Y
	learnset MOVE_POUND, 1
	learnset MOVE_AGILITY, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_DISABLE, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CHARGE_BEAM, 13
	learnset MOVE_MEMENTO, 17
	learnset MOVE_FOUL_PLAY, 20
	learnset MOVE_CALM_MIND, 23
	learnset MOVE_ANCIENT_POWER, 27
	learnset MOVE_PSYBEAM, 31
	learnset MOVE_WILL_O_WISP, 36
	learnset MOVE_RECOVER, 40
	learnset MOVE_PSYSHOCK, 44
	learnset MOVE_DARK_PULSE, 48
	learnset MOVE_ICE_BEAM, 52
	learnset MOVE_NASTY_PLOT, 55
	learnset MOVE_AURA_SPHERE, 58
	learnset MOVE_PSYSTRIKE, 61
    terminatelearnset


levelup SPECIES_MEGA_AMPHAROS
	learnset MOVE_TWISTER, 1
	learnset MOVE_COTTON_SPORE, 3
	learnset MOVE_CHARGE, 5
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_SUPERSONIC, 9
	learnset MOVE_THUNDER_WAVE, 13
	learnset MOVE_SWIFT, 17
	learnset MOVE_ELECTROWEB, 20
	learnset MOVE_DRAGON_BREATH, 24
	learnset MOVE_FACADE, 28
	learnset MOVE_CHARGE_BEAM, 32
	learnset MOVE_SIGNAL_BEAM, 36
	learnset MOVE_OUTRAGE, 40
	learnset MOVE_THUNDER_PUNCH, 43
	learnset MOVE_ICE_PUNCH, 43
	learnset MOVE_CALM_MIND, 48
	learnset MOVE_THUNDERBOLT, 51
	learnset MOVE_DRAGON_PULSE, 53
	learnset MOVE_MOONBLAST, 56
	learnset MOVE_ZAP_CANNON, 60
    terminatelearnset


levelup SPECIES_MEGA_STEELIX
	learnset MOVE_BIND, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_SWAGGER, 5
	learnset MOVE_GYRO_BALL, 7
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_MIRROR_SHOT, 13
	learnset MOVE_SELF_DESTRUCT, 17
	learnset MOVE_BITE, 20
	learnset MOVE_BULLDOZE, 26
	learnset MOVE_MAGNET_BOMB, 29
	learnset MOVE_ICE_FANG, 33
	learnset MOVE_DIG, 37
	learnset MOVE_BULK_UP, 40
	learnset MOVE_ROCK_SLIDE, 45
	learnset MOVE_IRON_HEAD, 48
	learnset MOVE_AQUA_TAIL, 52
	learnset MOVE_FISSURE, 56
	learnset MOVE_HEAD_SMASH, 60
	learnset MOVE_IRON_TAIL, 64
    terminatelearnset


levelup SPECIES_MEGA_SCIZOR
	learnset MOVE_SCRATCH, 1
	learnset MOVE_HARDEN, 3
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_DOUBLE_HIT, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_ODOR_SLEUTH, 13
	learnset MOVE_IRON_DEFENSE, 17
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_WING_ATTACK, 24
	learnset MOVE_BUG_BITE, 28
	learnset MOVE_BULLET_PUNCH, 33
	learnset MOVE_FEINT, 36
	learnset MOVE_SLASH, 40
	learnset MOVE_KNOCK_OFF, 44
	learnset MOVE_U_TURN, 48
	learnset MOVE_SWORDS_DANCE, 52
	learnset MOVE_IRON_HEAD, 57
	learnset MOVE_REVERSAL, 60
	learnset MOVE_COUNTER, 63
    terminatelearnset


levelup SPECIES_MEGA_HERACROSS
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 3
	learnset MOVE_VACUUM_WAVE, 5
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_PIN_MISSILE, 13
	learnset MOVE_FURY_ATTACK, 17
	learnset MOVE_CUT, 20
	learnset MOVE_MEDITATE, 24
	learnset MOVE_ROCK_TOMB, 28
	learnset MOVE_ARM_THRUST, 33
	learnset MOVE_HORN_ATTACK, 36
	learnset MOVE_DETECT, 40
	learnset MOVE_BULLET_SEED, 44
	learnset MOVE_ROCK_BLAST, 48
	learnset MOVE_BULK_UP, 52
	learnset MOVE_COUNTER, 57
	learnset MOVE_ROCK_SLIDE, 61
	learnset MOVE_X_SCISSOR, 66
    terminatelearnset


levelup SPECIES_MEGA_HOUNDOOM
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_BEAT_UP, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_FIRE_SPIN, 13
	learnset MOVE_MUD_SHOT, 17
	learnset MOVE_WILL_O_WISP, 20
	learnset MOVE_SNARL, 25
	learnset MOVE_THUNDER_FANG, 29
	learnset MOVE_FLAME_CHARGE, 34
	learnset MOVE_TAUNT, 37
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_SUCKER_PUNCH, 44
	learnset MOVE_FLAMETHROWER, 48
	learnset MOVE_DARK_PULSE, 50
	learnset MOVE_SUPER_FANG, 56
	learnset MOVE_SUNNY_DAY, 61
	learnset MOVE_BLAST_BURN, 64
    terminatelearnset


levelup SPECIES_MEGA_TYRANITAR
	learnset MOVE_POUND, 1
	learnset MOVE_PROTECT, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_ROCK_THROW, 7
	learnset MOVE_PAYBACK, 9
	learnset MOVE_TAUNT, 13
	learnset MOVE_POWER_UP_PUNCH, 17
	learnset MOVE_MUD_SHOT, 20
	learnset MOVE_ANCIENT_POWER, 25
	learnset MOVE_THUNDER_FANG, 28
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_NIGHT_SLASH, 37
	learnset MOVE_ROCK_SLIDE, 40
	learnset MOVE_STEALTH_ROCK, 44
	learnset MOVE_ROCK_POLISH, 48
	learnset MOVE_DARK_PULSE, 51
	learnset MOVE_FISSURE, 56
	learnset MOVE_IRON_HEAD, 61
	learnset MOVE_ROCK_WRECKER, 65
    terminatelearnset


levelup SPECIES_MEGA_SCEPTILE
	learnset MOVE_POUND, 1
	learnset MOVE_DETECT, 3
	learnset MOVE_VINE_WHIP, 5
	learnset MOVE_GRASS_WHISTLE, 7
	learnset MOVE_DOUBLE_KICK, 9
	learnset MOVE_BULLET_SEED, 13
	learnset MOVE_QUICK_ATTACK, 17
	learnset MOVE_FALSE_SWIPE, 20
	learnset MOVE_DRAGON_BREATH, 25
	learnset MOVE_AERIAL_ACE, 28
	learnset MOVE_POWER_UP_PUNCH, 33
	learnset MOVE_SYNTHESIS, 36
	learnset MOVE_BREAKING_SWIPE, 39
	learnset MOVE_ACROBATICS, 43
	learnset MOVE_DUAL_CHOP, 47
	learnset MOVE_LEAF_BLADE, 51
	learnset MOVE_DRAGON_PULSE, 55
	learnset MOVE_SOLAR_BEAM, 61
	learnset MOVE_CLOSE_COMBAT, 63
    terminatelearnset


levelup SPECIES_MEGA_BLAZIKEN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_PECK, 5
	learnset MOVE_EMBER, 7
	learnset MOVE_VACUUM_WAVE, 9
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_MEDITATE, 17
	learnset MOVE_FLAME_CHARGE, 20
	learnset MOVE_AERIAL_ACE, 24
	learnset MOVE_ROCK_THROW, 29
	learnset MOVE_LOW_SWEEP, 33
	learnset MOVE_CRUSH_CLAW, 36
	learnset MOVE_POWER_UP_PUNCH, 39
	learnset MOVE_AURA_SPHERE, 43
	learnset MOVE_U_TURN, 48
	learnset MOVE_DETECT, 51
	learnset MOVE_FLARE_BLITZ, 54
	learnset MOVE_HIGH_JUMP_KICK, 57
	learnset MOVE_BRAVE_BIRD, 60
    terminatelearnset


levelup SPECIES_MEGA_SWAMPERT
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_YAWN, 7
	learnset MOVE_PROTECT, 9
	learnset MOVE_STEALTH_ROCK, 13
	learnset MOVE_MUD_SHOT, 17
	learnset MOVE_WHIRLPOOL, 20
	learnset MOVE_RAIN_DANCE, 24
	learnset MOVE_MUD_BOMB, 28
	learnset MOVE_BUBBLE_BEAM, 33
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_SCORCHING_SANDS, 40
	learnset MOVE_AVALANCHE, 44
	learnset MOVE_MUDDY_WATER, 48
	learnset MOVE_HAMMER_ARM, 53
	learnset MOVE_BULK_UP, 54
	learnset MOVE_FISSURE, 58
	learnset MOVE_AQUA_TAIL, 62
    terminatelearnset


levelup SPECIES_MEGA_GARDEVOIR
	learnset MOVE_POUND, 1
	learnset MOVE_PSYWAVE, 3
	learnset MOVE_HIDDEN_POWER, 5
	learnset MOVE_SWEET_SCENT, 7
	learnset MOVE_REFRESH, 9
	learnset MOVE_CONFUSION, 13
	learnset MOVE_MEMENTO, 17
	learnset MOVE_DRAINING_KISS, 20
	learnset MOVE_MAGICAL_LEAF, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_PSYBEAM, 32
	learnset MOVE_PAIN_SPLIT, 36
	learnset MOVE_OMINOUS_WIND, 39
	learnset MOVE_WISH, 43
	learnset MOVE_DAZZLING_GLEAM, 49
	learnset MOVE_EXTRASENSORY, 51
	learnset MOVE_LUNAR_DANCE, 55
	learnset MOVE_MOONBLAST, 61
	learnset MOVE_PSYCHIC, 62
    terminatelearnset


levelup SPECIES_MEGA_SABLEYE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_FURY_SWIPES, 5
	learnset MOVE_WILL_O_WISP, 7
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_RECOVER, 17
	learnset MOVE_ENCORE, 20
	learnset MOVE_OMINOUS_WIND, 24
	learnset MOVE_TAUNT, 28
	learnset MOVE_EMBARGO, 33
	learnset MOVE_SUCKER_PUNCH, 36
	learnset MOVE_COUNTER, 40
	learnset MOVE_SHADOW_BALL, 44
	learnset MOVE_PAIN_SPLIT, 48
	learnset MOVE_DARK_PULSE, 53
	learnset MOVE_HYPNOSIS, 54
	learnset MOVE_DREAM_EATER, 58
	learnset MOVE_PHANTOM_FORCE, 61
    terminatelearnset


levelup SPECIES_MEGA_MAWILE
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_TAUNT, 5
	learnset MOVE_FAIRY_WIND, 7
	learnset MOVE_METAL_CLAW, 9
	learnset MOVE_TORMENT, 13
	learnset MOVE_POISON_FANG, 15
	learnset MOVE_VICE_GRIP, 18
	learnset MOVE_DRAINING_KISS, 21
	learnset MOVE_BITE, 24
	learnset MOVE_FIRE_FANG, 28
	learnset MOVE_THUNDER_FANG, 28
	learnset MOVE_ICE_FANG, 28
	learnset MOVE_SPIRIT_BREAK, 32
	learnset MOVE_IRON_HEAD, 36
	learnset MOVE_SUPER_FANG, 40
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_SUCKER_PUNCH, 49
	learnset MOVE_PSYCHIC_FANGS, 53
	learnset MOVE_IRON_TAIL, 58
	learnset MOVE_MISTY_TERRAIN, 61
    terminatelearnset


levelup SPECIES_MEGA_AGGRON
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_PROTECT, 5
	learnset MOVE_GYRO_BALL, 7
	learnset MOVE_STOMP, 9
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_POWER_UP_PUNCH, 17
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_STEALTH_ROCK, 24
	learnset MOVE_THUNDER_WAVE, 28
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_MAGNET_BOMB, 36
	learnset MOVE_IRON_DEFENSE, 40
	learnset MOVE_BRICK_BREAK, 45
	learnset MOVE_ICE_FANG, 47
	learnset MOVE_IRON_HEAD, 52
	learnset MOVE_DRAGON_CLAW, 56
	learnset MOVE_STONE_EDGE, 60
	learnset MOVE_IRON_TAIL, 63
    terminatelearnset


levelup SPECIES_MEGA_MEDICHAM
    learnset MOVE_FIRE_PUNCH, 1 
    learnset MOVE_THUNDER_PUNCH, 1 
    learnset MOVE_ICE_PUNCH, 1 
    learnset MOVE_BIDE, 1 
    learnset MOVE_MEDITATE, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_DETECT, 1 
    learnset MOVE_MEDITATE, 4 
    learnset MOVE_CONFUSION, 8 
    learnset MOVE_DETECT, 11 
    learnset MOVE_HIDDEN_POWER, 15 
    learnset MOVE_MIND_READER, 18 
    learnset MOVE_FEINT, 22 
    learnset MOVE_CALM_MIND, 25 
    learnset MOVE_FORCE_PALM, 29 
    learnset MOVE_HIGH_JUMP_KICK, 32 
    learnset MOVE_PSYCH_UP, 36 
    learnset MOVE_POWER_TRICK, 42 
    learnset MOVE_REVERSAL, 49 
    learnset MOVE_RECOVER, 55 
    terminatelearnset


levelup SPECIES_MEGA_MANECTRIC
	learnset MOVE_TACKLE, 1
	learnset MOVE_HOWL, 3
	learnset MOVE_THUNDER_SHOCK, 5
	learnset MOVE_CHARGE, 7
	learnset MOVE_SNARL, 9
	learnset MOVE_HIDDEN_POWER, 13
	learnset MOVE_FEINT, 17
	learnset MOVE_SPARK, 20
	learnset MOVE_BITE, 23
	learnset MOVE_SHOCK_WAVE, 27
	learnset MOVE_ICE_FANG, 31
	learnset MOVE_VOLT_SWITCH, 36
	learnset MOVE_CRUNCH, 40
	learnset MOVE_SECRET_POWER, 44
	learnset MOVE_DISCHARGE, 48
	learnset MOVE_FLAMETHROWER, 52
	learnset MOVE_NASTY_PLOT, 55
	learnset MOVE_VOLT_TACKLE, 58
	learnset MOVE_OVERHEAT, 61
    terminatelearnset


levelup SPECIES_MEGA_SHARPEDO
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 3
	learnset MOVE_PROTECT, 5
	learnset MOVE_RAIN_DANCE, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_FEINT, 13
	learnset MOVE_AQUA_JET, 17
	learnset MOVE_SWAGGER, 20
	learnset MOVE_BRINE, 23
	learnset MOVE_BITE, 27
	learnset MOVE_SUPER_FANG, 32
	learnset MOVE_EMBARGO, 36
	learnset MOVE_DIVE, 36
	learnset MOVE_ICE_FANG, 40
	learnset MOVE_CRUNCH, 44
	learnset MOVE_LIQUIDATION, 48
	learnset MOVE_BOUNCE, 52
	learnset MOVE_SWORDS_DANCE, 55
	learnset MOVE_EARTHQUAKE, 57
	learnset MOVE_CLOSE_COMBAT, 59
    terminatelearnset


levelup SPECIES_MEGA_CAMERUPT
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_AMNESIA, 5
	learnset MOVE_EMBER, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_MUD_SHOT, 13
	learnset MOVE_STEALTH_ROCK, 17
	learnset MOVE_FIRE_SPIN, 20
	learnset MOVE_ROCK_TOMB, 23
	learnset MOVE_YAWN, 28
	learnset MOVE_STOMP, 33
	learnset MOVE_BULLDOZE, 36
	learnset MOVE_ROCK_SLIDE, 40
	learnset MOVE_SCORCHING_SANDS, 44
	learnset MOVE_ZEN_HEADBUTT, 48
	learnset MOVE_FLAMETHROWER, 52
	learnset MOVE_EARTH_POWER, 54
	learnset MOVE_SELF_DESTRUCT, 58
	learnset MOVE_ERUPTION, 60
    terminatelearnset


levelup SPECIES_MEGA_ALTARIA
	learnset MOVE_TACKLE, 1
	learnset MOVE_ATTRACT, 3
	learnset MOVE_SWEET_SCENT, 5
	learnset MOVE_PECK, 7
	learnset MOVE_TWISTER, 9
	learnset MOVE_COTTON_SPORE, 13
	learnset MOVE_PERISH_SONG, 17
	learnset MOVE_PLUCK, 20
	learnset MOVE_GRAVITY, 26
	learnset MOVE_FEATHER_DANCE, 29
	learnset MOVE_DRAGON_BREATH, 33
	learnset MOVE_ROOST, 37
	learnset MOVE_BODY_SLAM, 40
	learnset MOVE_MIRACLE_EYE, 44
	learnset MOVE_OUTRAGE, 48
	learnset MOVE_STEEL_WING, 51
	learnset MOVE_DRAGON_PULSE, 55
	learnset MOVE_MOONBLAST, 61
	learnset MOVE_HYPER_BEAM, 63
    terminatelearnset


levelup SPECIES_MEGA_BANETTE
	learnset MOVE_POUND, 1
	learnset MOVE_TAUNT, 3
	learnset MOVE_ASTONISH, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_PURSUIT, 9
	learnset MOVE_SHADOW_SNEAK, 13
	learnset MOVE_WILL_O_WISP, 17
	learnset MOVE_SNARL, 20
	learnset MOVE_PSYBEAM, 25
	learnset MOVE_EMBARGO, 29
	learnset MOVE_TRICK_ROOM, 34
	learnset MOVE_SPIRIT_BREAK, 37
	learnset MOVE_SUCKER_PUNCH, 40
	learnset MOVE_HYPNOSIS, 45
	learnset MOVE_DREAM_EATER, 48
	learnset MOVE_DAZZLING_GLEAM, 51
	learnset MOVE_SHADOW_BALL, 56
	learnset MOVE_PSYCH_UP, 61
	learnset MOVE_SHADOW_FORCE, 65
    terminatelearnset


levelup SPECIES_MEGA_ABSOL
	learnset MOVE_SCRATCH, 1
	learnset MOVE_DOUBLE_TEAM, 3
	learnset MOVE_SNARL, 5
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_SWAGGER, 9
	learnset MOVE_PERISH_SONG, 13
	learnset MOVE_CUT, 17
	learnset MOVE_BRUTAL_SWING, 20
	learnset MOVE_FEINT, 24
	learnset MOVE_EMBARGO, 29
	learnset MOVE_SPIRIT_BREAK, 33
	learnset MOVE_KNOCK_OFF, 36
	learnset MOVE_PSYCHO_CUT, 39
	learnset MOVE_HONE_CLAWS, 43
	learnset MOVE_NIGHT_SLASH, 47
	learnset MOVE_X_SCISSOR, 51
	learnset MOVE_SUCKER_PUNCH, 54
	learnset MOVE_MEGAHORN, 57
	learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_MEGA_GLALIE
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROLLOUT, 3
	learnset MOVE_TORMENT, 5
	learnset MOVE_ICE_SHARD, 7
	learnset MOVE_SPIKES, 9
	learnset MOVE_ICICLE_SPEAR, 13
	learnset MOVE_BITE, 17
	learnset MOVE_SELF_DESTRUCT, 20
	learnset MOVE_GYRO_BALL, 23
	learnset MOVE_BULLDOZE, 27
	learnset MOVE_SHEER_COLD, 32
	learnset MOVE_IRON_DEFENSE, 36
	learnset MOVE_AVALANCHE, 40
	learnset MOVE_IRON_HEAD, 44
	learnset MOVE_BODY_SLAM, 48
	learnset MOVE_CRUNCH, 52
	learnset MOVE_FISSURE, 54
	learnset MOVE_DOUBLE_EDGE, 57
	learnset MOVE_EXPLOSION, 62
    terminatelearnset


levelup SPECIES_MEGA_SALAMENCE
	learnset MOVE_SCRATCH, 1
	learnset MOVE_RAGE, 3
	learnset MOVE_FOCUS_ENERGY, 5
	learnset MOVE_EMBER, 7
	learnset MOVE_TWISTER, 9
	learnset MOVE_GUST, 13
	learnset MOVE_FIRE_SPIN, 17
	learnset MOVE_SWIFT, 20
	learnset MOVE_DRAGON_BREATH, 26
	learnset MOVE_THUNDER_FANG, 29
	learnset MOVE_STOMP, 33
	learnset MOVE_FIRE_FANG, 37
	learnset MOVE_HONE_CLAWS, 39
	learnset MOVE_ROCK_SLIDE, 43
	learnset MOVE_CRUSH_CLAW, 49
	learnset MOVE_DRAGON_PULSE, 51
	learnset MOVE_HEAT_WAVE, 55
	learnset MOVE_IRON_TAIL, 61
	learnset MOVE_DOUBLE_EDGE, 64
    terminatelearnset


levelup SPECIES_MEGA_METAGROSS
	learnset MOVE_POUND, 1
	learnset MOVE_DEFENSE_CURL, 3
	learnset MOVE_MAGNET_RISE, 5
	learnset MOVE_BULLET_PUNCH, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_STEALTH_ROCK, 13
	learnset MOVE_IRON_DEFENSE, 17
	learnset MOVE_METAL_CLAW, 20
	learnset MOVE_REFLECT, 25
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_MAGNET_BOMB, 36
	learnset MOVE_HONE_CLAWS, 39
	learnset MOVE_PSYCHO_CUT, 43
	learnset MOVE_IRON_HEAD, 49
	learnset MOVE_ROCK_SLIDE, 51
	learnset MOVE_TAKE_DOWN, 54
	learnset MOVE_EARTHQUAKE, 59
	learnset MOVE_EXPLOSION, 62
    terminatelearnset


levelup SPECIES_MEGA_LATIAS
	learnset MOVE_TACKLE, 1
	learnset MOVE_FLATTER, 3
	learnset MOVE_PSYWAVE, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_ICY_WIND, 12
	learnset MOVE_LIGHT_SCREEN, 15
	learnset MOVE_WATER_PULSE, 18
	learnset MOVE_DRAGON_BREATH, 21
	learnset MOVE_CHARM, 24
	learnset MOVE_AIR_CUTTER, 28
	learnset MOVE_PSYBEAM, 32
	learnset MOVE_AMNESIA, 36
	learnset MOVE_PSYSHOCK, 41
	learnset MOVE_DRAGON_PULSE, 45
	learnset MOVE_DAZZLING_GLEAM, 49
	learnset MOVE_ROOST, 53
	learnset MOVE_DRACO_METEOR, 58
	learnset MOVE_FUTURE_SIGHT, 61
    terminatelearnset


levelup SPECIES_MEGA_LATIOS
	learnset MOVE_POUND, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_SWIFT, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_CHARGE_BEAM, 12
	learnset MOVE_REFLECT, 15
	learnset MOVE_AERIAL_ACE, 18
	learnset MOVE_SCALE_SHOT, 21
	learnset MOVE_AGILITY, 24
	learnset MOVE_PSYBEAM, 28
	learnset MOVE_AIR_SLASH, 32
	learnset MOVE_CALM_MIND, 36
	learnset MOVE_PSYSHOCK, 41
	learnset MOVE_DRAGON_CLAW, 45
	learnset MOVE_MOONBLAST, 49
	learnset MOVE_U_TURN, 53
	learnset MOVE_DRAGON_RUSH, 58
	learnset MOVE_PSYCHIC, 61
    terminatelearnset


levelup SPECIES_MEGA_RAYQUAZA
	learnset MOVE_POUND, 1
	learnset MOVE_ROAR, 3
	learnset MOVE_WHIRLPOOL, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_GUST, 9
	learnset MOVE_DEFOG, 13
	learnset MOVE_FLAME_CHARGE, 17
	learnset MOVE_AIR_CUTTER, 20
	learnset MOVE_SUBSTITUTE, 25
	learnset MOVE_AERIAL_ACE, 29
	learnset MOVE_BULK_UP, 32
	learnset MOVE_BREAKING_SWIPE, 36
	learnset MOVE_AIR_SLASH, 40
	learnset MOVE_OUTRAGE, 44
	learnset MOVE_ROOST, 49
	learnset MOVE_DRAGON_DANCE, 51
	learnset MOVE_DRAGON_ASCENT, 54
	learnset MOVE_DRACO_METEOR, 58
	learnset MOVE_V_CREATE, 61
    terminatelearnset


levelup SPECIES_MEGA_LOPUNNY
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_DOUBLE_HIT, 7
	learnset MOVE_QUICK_ATTACK, 9
	learnset MOVE_CHARM, 13
	learnset MOVE_FAKE_OUT, 17
	learnset MOVE_POWER_UP_PUNCH, 20
	learnset MOVE_LOW_KICK, 25
	learnset MOVE_SWAGGER, 29
	learnset MOVE_MIRACLE_EYE, 32
	learnset MOVE_DETECT, 36
	learnset MOVE_U_TURN, 40
	learnset MOVE_JUMP_KICK, 42
	learnset MOVE_THUNDER_PUNCH, 46
	learnset MOVE_IRON_HEAD, 51
	learnset MOVE_BULK_UP, 54
	learnset MOVE_HIGH_JUMP_KICK, 57
	learnset MOVE_GIGA_IMPACT, 61
    terminatelearnset


levelup SPECIES_MEGA_GARCHOMP
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SPIKES, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_METAL_CLAW, 7
	learnset MOVE_TWISTER, 9
	learnset MOVE_ROCK_BLAST, 13
	learnset MOVE_MUD_SHOT, 16
	learnset MOVE_DRAGON_BREATH, 20
	learnset MOVE_BITE, 26
	learnset MOVE_SHARPEN, 29
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_FIRE_FANG, 37
	learnset MOVE_BREAKING_SWIPE, 39
	learnset MOVE_CRUSH_CLAW, 44
	learnset MOVE_ROCK_CLIMB, 47
	learnset MOVE_OUTRAGE, 51
	learnset MOVE_IRON_HEAD, 55
	learnset MOVE_DRAGON_RUSH, 61
	learnset MOVE_EARTHQUAKE, 63
    terminatelearnset


levelup SPECIES_MEGA_LUCARIO
	learnset MOVE_POUND, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_METRONOME, 5
	learnset MOVE_BULLET_PUNCH, 7
	learnset MOVE_VACUUM_WAVE, 9
	learnset MOVE_AGILITY, 13
	learnset MOVE_POWER_UP_PUNCH, 17
	learnset MOVE_FEINT, 20
	learnset MOVE_BONE_RUSH, 24
	learnset MOVE_METAL_CLAW, 28
	learnset MOVE_PAYBACK, 32
	learnset MOVE_ROCK_TOMB, 36
	learnset MOVE_HONE_CLAWS, 39
	learnset MOVE_REVENGE, 43
	learnset MOVE_THUNDER_PUNCH, 49
	learnset MOVE_AURA_SPHERE, 51
	learnset MOVE_FLASH_CANNON, 54
	learnset MOVE_CALM_MIND, 61
	learnset MOVE_EXTREME_SPEED, 63
    terminatelearnset


levelup SPECIES_MEGA_ABOMASNOW
	learnset MOVE_TACKLE, 1
	learnset MOVE_VINE_WHIP, 3
	learnset MOVE_GRASS_WHISTLE, 5
	learnset MOVE_POWDER_SNOW, 7
	learnset MOVE_BULLET_SEED, 9
	learnset MOVE_ICE_SHARD, 13
	learnset MOVE_INGRAIN, 17
	learnset MOVE_MEGA_DRAIN, 20
	learnset MOVE_LEECH_SEED, 23
	learnset MOVE_PROTECT, 27
	learnset MOVE_WATER_PULSE, 32
	learnset MOVE_POWER_UP_PUNCH, 36
	learnset MOVE_GIGA_DRAIN, 40
	learnset MOVE_AVALANCHE, 44
	learnset MOVE_SEED_BOMB, 48
	learnset MOVE_TAKE_DOWN, 52
	learnset MOVE_EARTH_POWER, 54
	learnset MOVE_BLIZZARD, 58
	learnset MOVE_WOOD_HAMMER, 62
    terminatelearnset


levelup SPECIES_MEGA_GALLADE
	learnset MOVE_TACKLE, 1
	learnset MOVE_PSYWAVE, 3
	learnset MOVE_SHARPEN, 5
	learnset MOVE_FURY_CUTTER, 7
	learnset MOVE_VACUUM_WAVE, 9
	learnset MOVE_CONFUSION, 13
	learnset MOVE_SHADOW_SNEAK, 17
	learnset MOVE_POWER_UP_PUNCH, 20
	learnset MOVE_ROCK_TOMB, 26
	learnset MOVE_SLASH, 29
	learnset MOVE_LOW_SWEEP, 32
	learnset MOVE_PSYCHO_CUT, 36
	learnset MOVE_NIGHT_SLASH, 40
	learnset MOVE_BRICK_BREAK, 42
	learnset MOVE_WAKE_UP_SLAP, 46
	learnset MOVE_SWORDS_DANCE, 51
	learnset MOVE_LEAF_BLADE, 54
	learnset MOVE_ZEN_HEADBUTT, 57
	learnset MOVE_SUPERPOWER, 60
    terminatelearnset


levelup SPECIES_MEGA_AUDINO
	learnset MOVE_POUND, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_DISARMING_VOICE, 5
	learnset MOVE_ENCORE, 7
	learnset MOVE_DOUBLE_SLAP, 9
	learnset MOVE_POWER_UP_PUNCH, 12
	learnset MOVE_FAKE_OUT, 15
	learnset MOVE_COVET, 18
	learnset MOVE_WISH, 21
	learnset MOVE_LAST_RESORT, 24
	learnset MOVE_RECOVER, 28
	learnset MOVE_DRAIN_PUNCH, 32
	learnset MOVE_PSYSHOCK, 36
	learnset MOVE_TOXIC, 41
	learnset MOVE_PROTECT, 45
	learnset MOVE_HYPER_VOICE, 49
	learnset MOVE_DAZZLING_GLEAM, 53
	learnset MOVE_FIRE_BLAST, 58
	learnset MOVE_BLIZZARD, 61
	learnset MOVE_THUNDER, 63
    terminatelearnset


levelup SPECIES_MEGA_DIANCIE
    learnset MOVE_TACKLE, 1
	learnset MOVE_FLASH, 3
	learnset MOVE_FAIRY_WIND, 5
	learnset MOVE_STEALTH_ROCK, 7
	learnset MOVE_TRICK_ROOM, 9
	learnset MOVE_GYRO_BALL, 13
	learnset MOVE_DRAINING_KISS, 17
	learnset MOVE_AMNESIA, 20
	learnset MOVE_ROCK_TOMB, 25
	learnset MOVE_SPIRIT_BREAK, 29
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_CHARM, 36
	learnset MOVE_PLAY_ROUGH, 40
	learnset MOVE_DIAMOND_STORM, 43
	learnset MOVE_BULK_UP, 47
	learnset MOVE_TAKE_DOWN, 51
	learnset MOVE_STONE_EDGE, 54
	learnset MOVE_EARTHQUAKE, 58
	learnset MOVE_LUNAR_DANCE, 61
    terminatelearnset
    
levelup SPECIES_KYOGRE_PRIMAL
	learnset MOVE_SPLASH, 1
	learnset MOVE_AQUA_RING, 3
	learnset MOVE_WATER_GUN, 5
	learnset MOVE_SAFEGUARD, 7
	learnset MOVE_AQUA_JET, 9
	learnset MOVE_HIDDEN_POWER, 13
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_ANCIENT_POWER, 20
	learnset MOVE_WATER_PULSE, 24
	learnset MOVE_THUNDER_WAVE, 28
	learnset MOVE_AURORA_BEAM, 33
	learnset MOVE_SOAK, 36
	learnset MOVE_BULLDOZE, 40
	learnset MOVE_CALM_MIND, 44
	learnset MOVE_SCALD, 48
	learnset MOVE_THUNDERBOLT, 51
	learnset MOVE_ORIGIN_PULSE, 54
	learnset MOVE_ICE_BEAM, 58
	learnset MOVE_WATER_SPOUT, 61
    terminatelearnset


levelup SPECIES_GROUDON_PRIMAL
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWAGGER, 3
	learnset MOVE_MUD_SLAP, 5
	learnset MOVE_FIRE_SPIN, 7
	learnset MOVE_MUD_SHOT, 9
	learnset MOVE_ROCK_TOMB, 13
	learnset MOVE_METAL_CLAW, 17
	learnset MOVE_FLAME_CHARGE, 20
	learnset MOVE_BULLDOZE, 24
	learnset MOVE_HONE_CLAWS, 28
	learnset MOVE_BULLDOZE, 33
	learnset MOVE_LAVA_PLUME, 36
	learnset MOVE_DIG, 40
	learnset MOVE_THUNDER_PUNCH, 44
	learnset MOVE_PRECIPICE_BLADES, 48
	learnset MOVE_HEAT_CRASH, 52
	learnset MOVE_SOLAR_BEAM, 54
	learnset MOVE_FISSURE, 58
	learnset MOVE_ERUPTION, 60
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
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_EARTH_POWER, 28
    learnset MOVE_DIG, 31
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_EARTHQUAKE, 39
    learnset MOVE_FISSURE, 43
    terminatelearnset


levelup SPECIES_DUGTRIO_ALOLAN
    learnset MOVE_SAND_TOMB, 0
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_ROTOTILLER, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_MUD_SLAP, 10
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_EARTH_POWER, 30
    learnset MOVE_DIG, 35
    learnset MOVE_IRON_HEAD, 41
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
    learnset MOVE_SLASH, 33
    learnset MOVE_NASTY_PLOT, 39
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_PLAY_ROUGH, 44
    learnset MOVE_CAPTIVATE, 46
    learnset MOVE_DARK_PULSE, 55
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


levelup SPECIES_MEOWTH_GALARIAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HONE_CLAWS, 4
    learnset MOVE_SCRATCH, 8
    learnset MOVE_PAY_DAY, 12
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_SWAGGER, 24
    learnset MOVE_FURY_SWIPES, 29
    learnset MOVE_SCREECH, 32
    learnset MOVE_SLASH, 36
    learnset MOVE_METAL_SOUND, 40
    learnset MOVE_THRASH, 44
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
    learnset MOVE_TACKLE, 1
    learnset MOVE_CURSE, 1
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
    learnset MOVE_SHELL_SIDE_ARM, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ACID, 1
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
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_STRANGE_STEAM, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_CLEAR_SMOG, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SLUDGE, 20
    learnset MOVE_AROMATHERAPY, 24
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
    learnset MOVE_PSYCHO_SHIFT, 1
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
	learnset MOVE_GUST, 1
	learnset MOVE_SCREECH, 3
	learnset MOVE_VACUUM_WAVE, 5
	learnset MOVE_PECK, 7
	learnset MOVE_TRIPLE_KICK, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_BULK_UP, 17
	learnset MOVE_FURY_ATTACK, 20
	learnset MOVE_ROLLING_KICK, 24
	learnset MOVE_PUNISHMENT, 28
	learnset MOVE_ROOST, 33
	learnset MOVE_AERIAL_ACE, 36
	learnset MOVE_KNOCK_OFF, 40
	learnset MOVE_U_TURN, 44
	learnset MOVE_DRILL_PECK, 48
	learnset MOVE_BRICK_BREAK, 52
	learnset MOVE_TAILWIND, 56
	learnset MOVE_MEGA_KICK, 59
	learnset MOVE_BRAVE_BIRD, 62
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
    learnset MOVE_EERIE_SPELL, 1
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_NASTY_PLOT, 1
    learnset MOVE_SWAGGER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ACID, 1
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
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_ROCK_STAR
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_BELLE
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_POP_STAR
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_PH_D
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_LIBRE
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_ORIGINAL_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_HOENN_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_SINNOH_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_UNOVA_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_KALOS_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_ALOLA_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_PARTNER_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_WORLD_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
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
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_GROWTH, 7
    learnset MOVE_LEECH_SEED, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_SUNNY_DAY, 22
    learnset MOVE_WORRY_SEED, 30
    learnset MOVE_TAKE_DOWN, 35
    learnset MOVE_SOLAR_BEAM, 43
    learnset MOVE_LUCKY_CHANT, 48
    learnset MOVE_PETAL_BLIZZARD, 50
    terminatelearnset


levelup SPECIES_SHELLOS_EAST_SEA
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 2
    learnset MOVE_HARDEN, 4
    learnset MOVE_WATER_PULSE, 7
    learnset MOVE_MUD_BOMB, 11
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_RAIN_DANCE, 22
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_MUDDY_WATER, 37
    learnset MOVE_RECOVER, 46
    terminatelearnset


levelup SPECIES_GASTRODON_EAST_SEA
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_MUD_SPORT, 2
    learnset MOVE_HARDEN, 4
    learnset MOVE_WATER_PULSE, 7
    learnset MOVE_MUD_BOMB, 11
    learnset MOVE_HIDDEN_POWER, 16
    learnset MOVE_RAIN_DANCE, 22
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_MUDDY_WATER, 41
    learnset MOVE_RECOVER, 54
    terminatelearnset


levelup SPECIES_DIALGA_ORIGIN
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SONIC_BOOM, 4
    learnset MOVE_EERIE_IMPULSE, 6
    learnset MOVE_SPARK, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_SCREECH, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_LIGHT_SCREEN, 29
    learnset MOVE_MAGNET_RISE, 34
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_EXPLOSION, 41
    learnset MOVE_GYRO_BALL, 46
    learnset MOVE_MIRROR_COAT, 48
    terminatelearnset


levelup SPECIES_PALKIA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_DRAGON_BREATH, 8
    learnset MOVE_ANCIENT_POWER, 16
    learnset MOVE_SLASH, 24
    learnset MOVE_AQUA_RING, 32
    learnset MOVE_DRAGON_CLAW, 40
    learnset MOVE_AURA_SPHERE, 48
    learnset MOVE_POWER_GEM, 56
    learnset MOVE_AQUA_TAIL, 64
    learnset MOVE_EARTH_POWER, 72
    learnset MOVE_SPACIAL_REND, 80
    learnset MOVE_HYDRO_PUMP, 88
    terminatelearnset


levelup SPECIES_BASCULIN_RED_STRIPED
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_FLATTER, 5
	learnset MOVE_GUST, 7
	learnset MOVE_DEFOG, 9
	learnset MOVE_WEATHER_BALL, 13
	learnset MOVE_ICY_WIND, 17
	learnset MOVE_AIR_CUTTER, 20
	learnset MOVE_RAIN_DANCE, 24
	learnset MOVE_SUNNY_DAY, 24
	learnset MOVE_REVENGE, 28
	learnset MOVE_FEINT, 33
	learnset MOVE_U_TURN, 36
	learnset MOVE_AIR_SLASH, 40
	learnset MOVE_ROOST, 44
	learnset MOVE_CRUNCH, 48
	learnset MOVE_ACROBATICS, 51
	learnset MOVE_HEAT_WAVE, 55
	learnset MOVE_SUPERPOWER, 59
	learnset MOVE_GRASS_KNOT, 62
    terminatelearnset


levelup SPECIES_THUNDURUS_THERIAN
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_SWAGGER, 5
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_GUST, 9
	learnset MOVE_THUNDER_WAVE, 13
	learnset MOVE_SNARL, 17
	learnset MOVE_ELECTROWEB, 20
	learnset MOVE_BITE, 25
	learnset MOVE_CHARGE_BEAM, 28
	learnset MOVE_AIR_CUTTER, 33
	learnset MOVE_REVENGE, 36
	learnset MOVE_VOLT_SWITCH, 40
	learnset MOVE_AIR_SLASH, 45
	learnset MOVE_GRASS_KNOT, 48
	learnset MOVE_THUNDERBOLT, 51
	learnset MOVE_NASTY_PLOT, 56
	learnset MOVE_HAMMER_ARM, 59
	learnset MOVE_SLUDGE_WAVE, 62
	learnset MOVE_THUNDER, 65
    terminatelearnset


levelup SPECIES_LANDORUS_THERIAN
	learnset MOVE_TACKLE, 1
	learnset MOVE_MUD_SLAP, 3
	learnset MOVE_SWAGGER, 5
	learnset MOVE_GUST, 7
	learnset MOVE_SAND_TOMB, 9
	learnset MOVE_ROCK_THROW, 13
	learnset MOVE_PAYBACK, 17
	learnset MOVE_TAUNT, 20
	learnset MOVE_AERIAL_ACE, 24
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_SCARY_FACE, 33
	learnset MOVE_REVENGE, 36
	learnset MOVE_DIG, 40
	learnset MOVE_U_TURN, 44
	learnset MOVE_BOUNCE, 48
	learnset MOVE_TAKE_DOWN, 51
	learnset MOVE_FISSURE, 55
	learnset MOVE_BULK_UP, 59
	learnset MOVE_BRAVE_BIRD, 62
    terminatelearnset


levelup SPECIES_KYUREM_WHITE
    learnset MOVE_TACKLE, 1
	learnset MOVE_POWDER_SNOW, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_ICE_BALL, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_HAIL, 17
	learnset MOVE_FLAME_WHEEL, 20
	learnset MOVE_DRAGON_BREATH, 23
	learnset MOVE_AURORA_BEAM, 28
	learnset MOVE_ANCIENT_POWER, 33
	learnset MOVE_DRAGON_RAGE, 36
	learnset MOVE_ENDEAVOR, 40
	learnset MOVE_SHADOW_BALL, 44
	learnset MOVE_CALM_MIND, 48
	learnset MOVE_DRAGON_PULSE, 52
	learnset MOVE_ICE_BEAM, 54
	learnset MOVE_BLUE_FLARE, 58
	learnset MOVE_DRACO_METEOR, 60
    terminatelearnset


levelup SPECIES_KYUREM_BLACK
    learnset MOVE_TACKLE, 1
	learnset MOVE_POWDER_SNOW, 3
	learnset MOVE_HAIL, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_ICE_BALL, 9
	learnset MOVE_SNARL, 13
	learnset MOVE_ICICLE_SPEAR, 17
	learnset MOVE_SPARK, 20
	learnset MOVE_SLAM, 23
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_SHEER_COLD, 33
	learnset MOVE_DRAGON_RAGE, 36
	learnset MOVE_SHADOW_CLAW, 40
	learnset MOVE_THUNDER_PUNCH, 44
	learnset MOVE_BULK_UP, 48
	learnset MOVE_OUTRAGE, 52
	learnset MOVE_AVALANCHE, 54
	learnset MOVE_BOLT_STRIKE, 58
	learnset MOVE_DRAGON_DANCE, 60
    terminatelearnset


levelup SPECIES_KELDEO_RESOLUTE
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_BUBBLE_BEAM, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_RETALIATE, 31
    learnset MOVE_AQUA_TAIL, 37
    learnset MOVE_SACRED_SWORD, 43
    learnset MOVE_SWORDS_DANCE, 49
    learnset MOVE_QUICK_GUARD, 55
    learnset MOVE_WORK_UP, 61
    learnset MOVE_HYDRO_PUMP, 67
    learnset MOVE_CLOSE_COMBAT, 73
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
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_LOCK_ON, 11
    learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_SELF_DESTRUCT, 77
    terminatelearnset


levelup SPECIES_GENESECT_SHOCK_DRIVE
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_LOCK_ON, 11
    learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_SELF_DESTRUCT, 77
    terminatelearnset


levelup SPECIES_GENESECT_BURN_DRIVE
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_LOCK_ON, 11
    learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_SELF_DESTRUCT, 77
    terminatelearnset


levelup SPECIES_GENESECT_CHILL_DRIVE
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_LOCK_ON, 11
    learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_BUG_BUZZ, 55
    learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_SELF_DESTRUCT, 77
    terminatelearnset


levelup SPECIES_GRENINJA_BATTLE_BOND
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
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_AUTOTOMIZE, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_SLASH, 1
    learnset MOVE_IRON_DEFENSE, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_POWER_TRICK, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_AERIAL_ACE, 1
    learnset MOVE_KINGS_SHIELD, 1
    learnset MOVE_SACRED_SWORD, 1
    terminatelearnset


levelup SPECIES_PUMPKABOO_SMALL
    learnset MOVE_TRICK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SCARY_FACE, 4
    learnset MOVE_TRICK_OR_TREAT, 6
    learnset MOVE_WORRY_SEED, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TRICK_OR_TREAT, 40
    learnset MOVE_PAIN_SPLIT, 42
    learnset MOVE_SEED_BOMB, 48
    terminatelearnset


levelup SPECIES_PUMPKABOO_LARGE
    learnset MOVE_TRICK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SCARY_FACE, 4
    learnset MOVE_TRICK_OR_TREAT, 6
    learnset MOVE_WORRY_SEED, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TRICK_OR_TREAT, 40
    learnset MOVE_PAIN_SPLIT, 42
    learnset MOVE_SEED_BOMB, 48
    terminatelearnset


levelup SPECIES_PUMPKABOO_SUPER
    learnset MOVE_TRICK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SCARY_FACE, 4
    learnset MOVE_TRICK_OR_TREAT, 6
    learnset MOVE_WORRY_SEED, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TRICK_OR_TREAT, 40
    learnset MOVE_PAIN_SPLIT, 42
    learnset MOVE_SEED_BOMB, 48
    terminatelearnset


levelup SPECIES_GOURGEIST_SMALL
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SCARY_FACE, 4
    learnset MOVE_TRICK_OR_TREAT, 6
    learnset MOVE_WORRY_SEED, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TRICK_OR_TREAT, 40
    learnset MOVE_PAIN_SPLIT, 42
    learnset MOVE_SEED_BOMB, 48
    learnset MOVE_PHANTOM_FORCE, 57
    learnset MOVE_TRICK_OR_TREAT, 63
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_GOURGEIST_LARGE
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SCARY_FACE, 4
    learnset MOVE_TRICK_OR_TREAT, 6
    learnset MOVE_WORRY_SEED, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TRICK_OR_TREAT, 40
    learnset MOVE_PAIN_SPLIT, 42
    learnset MOVE_SEED_BOMB, 48
    learnset MOVE_PHANTOM_FORCE, 57
    learnset MOVE_TRICK_OR_TREAT, 63
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_GOURGEIST_SUPER
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SCARY_FACE, 4
    learnset MOVE_TRICK_OR_TREAT, 6
    learnset MOVE_WORRY_SEED, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_TRICK_OR_TREAT, 23
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_SHADOW_SNEAK, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TRICK_OR_TREAT, 40
    learnset MOVE_PAIN_SPLIT, 42
    learnset MOVE_SEED_BOMB, 48
    learnset MOVE_PHANTOM_FORCE, 57
    learnset MOVE_TRICK_OR_TREAT, 63
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_XERNEAS_ACTIVE
    learnset MOVE_HEAL_PULSE, 1
    learnset MOVE_AROMATHERAPY, 1
    learnset MOVE_INGRAIN, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_LIGHT_SCREEN, 5
    learnset MOVE_AURORA_BEAM, 10
    learnset MOVE_GRAVITY, 18
    learnset MOVE_GEOMANCY, 26
    learnset MOVE_MOONBLAST, 35
    learnset MOVE_MEGAHORN, 44
    learnset MOVE_NIGHT_SLASH, 51
    learnset MOVE_HORN_LEECH, 55
    learnset MOVE_PSYCH_UP, 59
    learnset MOVE_MISTY_TERRAIN, 63
    learnset MOVE_NATURE_POWER, 72
    learnset MOVE_CLOSE_COMBAT, 80
    learnset MOVE_GIGA_IMPACT, 88
    learnset MOVE_OUTRAGE, 93
    terminatelearnset


levelup SPECIES_ZYGARDE_10
    learnset MOVE_GLARE, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_DIG, 10
    learnset MOVE_BIND, 18
    learnset MOVE_LANDS_WRATH, 26
    learnset MOVE_SANDSTORM, 35
    learnset MOVE_HAZE, 44
    learnset MOVE_CRUNCH, 51
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 80
    terminatelearnset


levelup SPECIES_ZYGARDE_10_POWER_CONSTRUCT
    learnset MOVE_GLARE, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_DIG, 10
    learnset MOVE_BIND, 18
    learnset MOVE_LANDS_WRATH, 26
    learnset MOVE_SANDSTORM, 35
    learnset MOVE_HAZE, 44
    learnset MOVE_CRUNCH, 51
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 80
    terminatelearnset


levelup SPECIES_ZYGARDE_50_POWER_CONSTRUCT
    learnset MOVE_GLARE, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_DIG, 10
    learnset MOVE_BIND, 18
    learnset MOVE_LANDS_WRATH, 26
    learnset MOVE_SANDSTORM, 35
    learnset MOVE_HAZE, 44
    learnset MOVE_CRUNCH, 51
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 80
    terminatelearnset


levelup SPECIES_ZYGARDE_10_COMPLETE
    learnset MOVE_GLARE, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAFEGUARD, 5
    learnset MOVE_DIG, 10
    learnset MOVE_BIND, 18
    learnset MOVE_LANDS_WRATH, 26
    learnset MOVE_SANDSTORM, 35
    learnset MOVE_HAZE, 44
    learnset MOVE_CRUNCH, 51
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_CAMOUFLAGE, 59
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_COIL, 72
    learnset MOVE_OUTRAGE, 80
    terminatelearnset


levelup SPECIES_ZYGARDE_50_COMPLETE
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_SANDSTORM, 3
	learnset MOVE_WRAP, 5
	learnset MOVE_SAND_TOMB, 7
	learnset MOVE_SCALE_SHOT, 9
	learnset MOVE_GLARE, 13
	learnset MOVE_ROCK_TOMB, 17
	learnset MOVE_MUD_BOMB, 20
	learnset MOVE_BREAKING_SWIPE, 26
	learnset MOVE_BRUTAL_SWING, 29
	learnset MOVE_BULLDOZE, 32
	learnset MOVE_COIL, 36
	learnset MOVE_ROCK_SLIDE, 40
	learnset MOVE_LANDS_WRATH, 43
	learnset MOVE_DUAL_CHOP, 48
	learnset MOVE_REST, 51
	learnset MOVE_THOUSAND_ARROWS, 54
	learnset MOVE_CORE_ENFORCER, 57
	learnset MOVE_EXTREME_SPEED, 61
    terminatelearnset


levelup SPECIES_HOOPA_UNBOUND
	learnset MOVE_TACKLE, 1
	learnset MOVE_ASTONISH, 3
	learnset MOVE_TAUNT, 5
	learnset MOVE_PURSUIT, 7
	learnset MOVE_CONFUSION, 9
	learnset MOVE_TRICK_ROOM, 13
	learnset MOVE_MIRROR_COAT, 17
	learnset MOVE_SNARL, 20
	learnset MOVE_PSYBEAM, 26
	learnset MOVE_EMBARGO, 29
	learnset MOVE_GRAVITY, 33
	learnset MOVE_HYPERSPACE_HOLE, 37
	learnset MOVE_DRAIN_PUNCH, 39
	learnset MOVE_DARK_PULSE, 44
	learnset MOVE_DARK_VOID, 49
	learnset MOVE_PSYCHIC, 51
	learnset MOVE_DREAM_EATER, 55
	learnset MOVE_CALM_MIND, 61
	learnset MOVE_FOCUS_BLAST, 63
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
    learnset MOVE_BITE, 7
    learnset MOVE_HOWL, 12
    learnset MOVE_ROCK_THROW, 15
    learnset MOVE_ODOR_SLEUTH, 18
    learnset MOVE_ROCK_TOMB, 23
    learnset MOVE_ROAR, 26
    learnset MOVE_STEALTH_ROCK, 29
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_CRUNCH, 40
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
    learnset MOVE_HELPING_HAND, 6
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_BRINE, 14
    learnset MOVE_AQUA_RING, 17
    learnset MOVE_TEARFUL_LOOK, 22
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_DIVE, 30
    learnset MOVE_BEAT_UP, 33
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_SOAK, 46
    learnset MOVE_ENDEAVOR, 49
    learnset MOVE_HYDRO_PUMP, 54
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
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_DOUBLE_TEAM, 5
    learnset MOVE_BABY_DOLL_EYES, 10
    learnset MOVE_SHADOW_SNEAK, 14
    learnset MOVE_MIMIC, 19
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_CHARM, 28
    learnset MOVE_SLASH, 32
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_HONE_CLAWS, 41
    learnset MOVE_PLAY_ROUGH, 46
    learnset MOVE_PAIN_SPLIT, 50
    terminatelearnset


levelup SPECIES_NECROZMA_DUSK_MANE
	learnset MOVE_TACKLE, 1
	learnset MOVE_LIGHT_SCREEN, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_MIRROR_SHOT, 13
	learnset MOVE_TRICK_ROOM, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_MOONLIGHT, 21
	learnset MOVE_SMART_STRIKE, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_PSYCHIC_FANGS, 32
	learnset MOVE_POWER_GEM, 36
	learnset MOVE_PHOTON_GEYSER, 41
	learnset MOVE_DRAGON_DANCE, 45
	learnset MOVE_SUNSTEEL_STRIKE, 49
	learnset MOVE_ROCK_SLIDE, 53
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_PRISMATIC_LASER, 61
    terminatelearnset


levelup SPECIES_NECROZMA_DAWN_WINGS
	learnset MOVE_TACKLE, 1
	learnset MOVE_LIGHT_SCREEN, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_HEX, 13
	learnset MOVE_TRICK_ROOM, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_MORNING_SUN, 21
	learnset MOVE_OMINOUS_WIND, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_EXTRASENSORY, 32
	learnset MOVE_POWER_GEM, 36
	learnset MOVE_PHOTON_GEYSER, 41
	learnset MOVE_CALM_MIND, 45
	learnset MOVE_MOONGEIST_BEAM, 49
	learnset MOVE_SHADOW_BALL, 53
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_PRISMATIC_LASER, 61
    terminatelearnset


levelup SPECIES_NECROZMA_ULTRA_DUSK_MANE
	learnset MOVE_TACKLE, 1
	learnset MOVE_LIGHT_SCREEN, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_TWISTER, 13
	learnset MOVE_TRICK, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_RECOVER, 21
	learnset MOVE_BREAKING_SWIPE, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_PSYSHOCK, 32
	learnset MOVE_POWER_GEM, 36
	learnset MOVE_PHOTON_GEYSER, 41
	learnset MOVE_CALM_MIND, 45
	learnset MOVE_MOONGEIST_BEAM, 49
	learnset MOVE_SUNSTEEL_STRIKE, 49
	learnset MOVE_DRAGON_PULSE, 53
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_LIGHT_THAT_BURNS_THE_SKY, 61
    terminatelearnset


levelup SPECIES_NECROZMA_ULTRA_DAWN_WINGS
	learnset MOVE_TACKLE, 1
	learnset MOVE_LIGHT_SCREEN, 3
	learnset MOVE_CONFUSION, 5
	learnset MOVE_HIDDEN_POWER, 7
	learnset MOVE_REFLECT, 9
	learnset MOVE_TWISTER, 13
	learnset MOVE_TRICK, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_RECOVER, 21
	learnset MOVE_BREAKING_SWIPE, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_PSYSHOCK, 32
	learnset MOVE_POWER_GEM, 36
	learnset MOVE_PHOTON_GEYSER, 41
	learnset MOVE_CALM_MIND, 45
	learnset MOVE_MOONGEIST_BEAM, 49
	learnset MOVE_SUNSTEEL_STRIKE, 49
	learnset MOVE_DRAGON_PULSE, 53
	learnset MOVE_WRING_OUT, 58
	learnset MOVE_LIGHT_THAT_BURNS_THE_SKY, 61
    terminatelearnset


levelup SPECIES_MAGEARNA_ORIGINAL
    learnset MOVE_CRAFTY_SHIELD, 1
    learnset MOVE_GEAR_UP, 1
    learnset MOVE_SHIFT_GEAR, 1
    learnset MOVE_IRON_HEAD, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_LUCKY_CHANT, 9
    learnset MOVE_AURORA_BEAM, 17
    learnset MOVE_MIRROR_SHOT, 25
    learnset MOVE_MIND_READER, 33
    learnset MOVE_FLASH_CANNON, 41
    learnset MOVE_FLEUR_CANNON, 49
    learnset MOVE_IRON_DEFENSE, 57
    learnset MOVE_PAIN_SPLIT, 65
    learnset MOVE_SYNCHRONOISE, 73
    learnset MOVE_AURA_SPHERE, 81
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
	learnset MOVE_TACKLE, 1
	learnset MOVE_AGILITY, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_DISARMING_VOICE, 7
	learnset MOVE_TAIL_SLAP, 9
	learnset MOVE_MAGNET_BOMB, 13
	learnset MOVE_SNARL, 15
	learnset MOVE_THUNDER_FANG, 18
	learnset MOVE_FIRE_FANG, 21
	learnset MOVE_SPIRIT_BREAK, 24
	learnset MOVE_SWORDS_DANCE, 28
	learnset MOVE_LEAF_BLADE, 32
	learnset MOVE_PSYCHIC_FANGS, 36
	learnset MOVE_BEHEMOTH_BLADE, 41
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_SACRED_SWORD, 49
	learnset MOVE_WILD_CHARGE, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_ENDURE, 61
	learnset MOVE_REVERSAL, 61
    terminatelearnset


levelup SPECIES_ZAMAZENTA_CROWNED
	learnset MOVE_TACKLE, 1
	learnset MOVE_IRON_DEFENSE, 3
	learnset MOVE_QUICK_ATTACK, 5
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_BITE, 9
	learnset MOVE_TAIL_SLAP, 13
	learnset MOVE_SNARL, 15
	learnset MOVE_COUNTER, 18
	learnset MOVE_REVENGE, 21
	learnset MOVE_ICE_FANG, 24
	learnset MOVE_BULK_UP, 28
	learnset MOVE_BODY_PRESS, 32
	learnset MOVE_MOONBLAST, 36
	learnset MOVE_BEHEMOTH_BASH, 41
	learnset MOVE_PLAY_ROUGH, 45
	learnset MOVE_METAL_BURST, 49
	learnset MOVE_CRUNCH, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_GIGA_IMPACT, 61
    terminatelearnset


levelup SPECIES_ETERNATUS_ETERNAMAX
	learnset MOVE_POUND, 1
	learnset MOVE_POISON_GAS, 3
	learnset MOVE_POISON_STING, 5
	learnset MOVE_TWISTER, 7
	learnset MOVE_FIRE_SPIN, 9
	learnset MOVE_ACID_SPRAY, 13
	learnset MOVE_ASSURANCE, 17
	learnset MOVE_COSMIC_POWER, 20
	learnset MOVE_BREAKING_SWIPE, 25
	learnset MOVE_TOXIC_SPIKES, 30
	learnset MOVE_TOXIC, 33
	learnset MOVE_VENOSHOCK, 37
	learnset MOVE_OUTRAGE, 40
	learnset MOVE_POISON_JAB, 44
	learnset MOVE_FLAMETHROWER, 49
	learnset MOVE_SLUDGE_WAVE, 51
	learnset MOVE_DRAGON_PULSE, 55
	learnset MOVE_FIRE_BLAST, 59
	learnset MOVE_DRACO_METEOR, 62
    terminatelearnset


levelup SPECIES_URSHIFU_RAPID_STRIKE
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 3
	learnset MOVE_WHIRLPOOL, 5
	learnset MOVE_KARATE_CHOP, 7
	learnset MOVE_ROCK_THROW, 9
	learnset MOVE_AQUA_JET, 13
	learnset MOVE_DETECT, 17
	learnset MOVE_LOW_SWEEP, 20
	learnset MOVE_BRINE, 24
	learnset MOVE_BULK_UP, 28
	learnset MOVE_AERIAL_ACE, 33
	learnset MOVE_WATERFALL, 36
	learnset MOVE_DRAIN_PUNCH, 40
	learnset MOVE_IRON_HEAD, 44
	learnset MOVE_POISON_JAB, 48
	learnset MOVE_THUNDER_PUNCH, 53
	learnset MOVE_WICKED_BLOW, 54
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_ACROBATICS, 62
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
	learnset MOVE_CONFUSION, 1
	learnset MOVE_HAIL, 3
	learnset MOVE_ICICLE_SPEAR, 5
	learnset MOVE_STOMP, 7
	learnset MOVE_DOUBLE_KICK, 9
	learnset MOVE_SNARL, 12
	learnset MOVE_TRICK_ROOM, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_AVALANCHE, 32
	learnset MOVE_BODY_PRESS, 36
	learnset MOVE_PSYCHIC_FANGS, 41
	learnset MOVE_GLACIAL_LANCE, 45
	learnset MOVE_SWORDS_DANCE, 49
	learnset MOVE_HEAVY_SLAM, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_MEGAHORN, 61
    terminatelearnset


levelup SPECIES_CALYREX_SHADOW_RIDER
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_SHADOW_SNEAK, 3
	learnset MOVE_DOUBLE_KICK, 5
	learnset MOVE_SNARL, 7
	learnset MOVE_WILL_O_WISP, 9
	learnset MOVE_HEX, 12
	learnset MOVE_SNARL, 15
	learnset MOVE_PSYBEAM, 18
	learnset MOVE_ICE_FANG, 21
	learnset MOVE_IRON_DEFENSE, 24
	learnset MOVE_BULLDOZE, 28
	learnset MOVE_AVALANCHE, 32
	learnset MOVE_BODY_PRESS, 36
	learnset MOVE_PSYCHIC_FANGS, 41
	learnset MOVE_GLACIAL_LANCE, 45
	learnset MOVE_SWORDS_DANCE, 49
	learnset MOVE_HEAVY_SLAM, 53
	learnset MOVE_CLOSE_COMBAT, 58
	learnset MOVE_MEGAHORN, 61
    terminatelearnset


levelup SPECIES_ENAMORUS_THERIAN
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_ASTONISH, 5
	learnset MOVE_FAIRY_WIND, 7
	learnset MOVE_GUST, 9
	learnset MOVE_AMNESIA, 12
	learnset MOVE_DRAINING_KISS, 15
	learnset MOVE_CHARM, 18
	learnset MOVE_AIR_CUTTER, 21
	learnset MOVE_TRICK_ROOM, 24
	learnset MOVE_GRAVITY, 28
	learnset MOVE_CHARM, 32
	learnset MOVE_AIR_SLASH, 36
	learnset MOVE_SPRINGTIDE_STORM, 41
	learnset MOVE_AURA_SPHERE, 45
	learnset MOVE_MOONBLAST, 49
	learnset MOVE_CALM_MIND, 53
	learnset MOVE_EARTH_POWER, 58
	learnset MOVE_LUNAR_DANCE, 61
    terminatelearnset


levelup SPECIES_GROWLITHE_HISUIAN
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HOWL, 4
    learnset MOVE_BITE, 8
    learnset MOVE_FLAME_WHEEL, 12
    learnset MOVE_HELPING_HAND, 16
    learnset MOVE_AGILITY, 20
    learnset MOVE_FIRE_FANG, 24
    learnset MOVE_RETALIATE, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_ROAR, 44
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_REVERSAL, 52
    learnset MOVE_FLARE_BLITZ, 56
    terminatelearnset


levelup SPECIES_ARCANINE_HISUIAN
	learnset MOVE_ROCK_BLAST, 1
	learnset MOVE_GROWL, 3
	learnset MOVE_EMBER, 5
	learnset MOVE_ACCELEROCK, 7
	learnset MOVE_BITE, 9
	learnset MOVE_FLAME_CHARGE, 12
	learnset MOVE_DOUBLE_KICK, 15
	learnset MOVE_FIRE_FANG, 18
	learnset MOVE_ROCK_TOMB, 21
	learnset MOVE_PSYCHIC_FANGS, 24
	learnset MOVE_LAVA_PLUME, 28
	learnset MOVE_ROCK_SLIDE, 32
	learnset MOVE_EXTREME_SPEED, 36
	learnset MOVE_FLAMETHROWER, 41
	learnset MOVE_WILD_CHARGE, 45
	learnset MOVE_CLOSE_COMBAT, 49
	learnset MOVE_RAGING_FURY, 53
	learnset MOVE_HEAD_SMASH, 58
	learnset MOVE_PLAY_ROUGH, 61
    terminatelearnset


levelup SPECIES_VOLTORB_HISUIAN
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SONIC_BOOM, 4
    learnset MOVE_EERIE_IMPULSE, 6
    learnset MOVE_SPARK, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_SCREECH, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ENERGY_BALL, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_LIGHT_SCREEN, 29
    learnset MOVE_MAGNET_RISE, 34
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_EXPLOSION, 41
    learnset MOVE_GYRO_BALL, 46
    learnset MOVE_MIRROR_COAT, 48
    terminatelearnset


levelup SPECIES_ELECTRODE_HISUIAN
    learnset MOVE_MAGNETIC_FLUX, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SONIC_BOOM, 1
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_SONIC_BOOM, 4
    learnset MOVE_EERIE_IMPULSE, 6
    learnset MOVE_SPARK, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_SCREECH, 13
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ENERGY_BALL, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_LIGHT_SCREEN, 29
    learnset MOVE_MAGNET_RISE, 36
    learnset MOVE_DISCHARGE, 41
    learnset MOVE_EXPLOSION, 47
    learnset MOVE_GYRO_BALL, 54
    learnset MOVE_MIRROR_COAT, 58
    terminatelearnset


levelup SPECIES_TYPHLOSION_HISUIAN
    learnset MOVE_ERUPTION, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 10
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 24
    learnset MOVE_SWIFT, 31
    learnset MOVE_HEX, 35
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_INFERNO, 56
    learnset MOVE_ROLLOUT, 61
    learnset MOVE_DOUBLE_EDGE, 69
    learnset MOVE_BURN_UP, 74
    learnset MOVE_ERUPTION, 82
    terminatelearnset


levelup SPECIES_QWILFISH_HISUIAN
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_FELL_STINGER, 12
    learnset MOVE_MINIMIZE, 16
    learnset MOVE_SPIKES, 20
    learnset MOVE_DARK_PULSE, 24
    learnset MOVE_REVENGE, 28
    learnset MOVE_PIN_MISSILE, 32
    learnset MOVE_TOXIC_SPIKES, 36
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_STOCKPILE, 44
    learnset MOVE_SPIT_UP, 44
    learnset MOVE_TAKE_DOWN, 48
    learnset MOVE_TOXIC, 52
    learnset MOVE_AQUA_TAIL, 56
    learnset MOVE_ACUPRESSURE, 60
    learnset MOVE_DESTINY_BOND, 66
    terminatelearnset


levelup SPECIES_SNEASEL_HISUIAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TAUNT, 6
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_ROCK_SMASH, 16
    learnset MOVE_METAL_CLAW, 18
    learnset MOVE_ICY_WIND, 24
    learnset MOVE_FURY_SWIPES, 30
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_BEAT_UP, 42
    learnset MOVE_AGILITY, 48
    learnset MOVE_CLOSE_COMBAT, 54
    learnset MOVE_SLASH, 60
    terminatelearnset


levelup SPECIES_SAMUROTT_HISUIAN
    learnset MOVE_SLASH, 1
    learnset MOVE_MEGAHORN, 1
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
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_REVENGE, 29
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_ENCORE, 39
    learnset MOVE_AQUA_TAIL, 46
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_SWORDS_DANCE, 58
    learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_LILLIGANT_HISUIAN
	learnset MOVE_TACKLE, 1
	learnset MOVE_METRONOME, 3
	learnset MOVE_INGRAIN, 5
	learnset MOVE_SWEET_SCENT, 7
	learnset MOVE_ROCK_SMASH, 9
	learnset MOVE_CUT, 13
	learnset MOVE_POWER_UP_PUNCH, 17
	learnset MOVE_LEECH_SEED, 20
	learnset MOVE_DETECT, 26
	learnset MOVE_LOW_SWEEP, 29
	learnset MOVE_MAGICAL_LEAF, 32
	learnset MOVE_TAKE_DOWN, 36
	learnset MOVE_STUN_SPORE, 40
	learnset MOVE_TEETER_DANCE, 44
	learnset MOVE_SEED_BOMB, 48
	learnset MOVE_JUMP_KICK, 52
	learnset MOVE_LEAF_BLADE, 56
	learnset MOVE_FRENZY_PLANT, 63
	learnset MOVE_QUIVER_DANCE, 65
    terminatelearnset


levelup SPECIES_ZORUA_HISUIAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TORMENT, 4
    learnset MOVE_HONE_CLAWS, 8
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_SNARL, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_FAKE_TEARS, 28
    learnset MOVE_AGILITY, 32
    learnset MOVE_IMPRISON, 36
    learnset MOVE_NIGHT_DAZE, 40
    learnset MOVE_NASTY_PLOT, 44
    learnset MOVE_SHADOW_CLAW, 45
    learnset MOVE_FOUL_PLAY, 48
    terminatelearnset


levelup SPECIES_ZOROARK_HISUIAN
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_SNARL, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_FAKE_TEARS, 28
    learnset MOVE_AGILITY, 34
    learnset MOVE_IMPRISON, 40
    learnset MOVE_NIGHT_DAZE, 46
    learnset MOVE_SHADOW_BALL, 51
    learnset MOVE_SHADOW_CLAW, 52
    learnset MOVE_FOUL_PLAY, 58
    learnset MOVE_EXTRASENSORY, 64
    terminatelearnset


levelup SPECIES_BRAVIARY_HISUIAN
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_SKY_ATTACK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_TAILWIND, 18
    learnset MOVE_SCARY_FACE, 24
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_ROOST, 36
    learnset MOVE_WHIRLWIND, 42
    learnset MOVE_CRUSH_CLAW, 48
    learnset MOVE_AIR_SLASH, 57
    learnset MOVE_DEFOG, 64
    learnset MOVE_THRASH, 72
    learnset MOVE_BRAVE_BIRD, 80
    learnset MOVE_HURRICANE, 80
    terminatelearnset


levelup SPECIES_SLIGGOO_HISUIAN
    learnset MOVE_FEINT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_PROTECT, 9
    learnset MOVE_ACID_ARMOR, 13
    learnset MOVE_IRON_HEAD, 18
    learnset MOVE_RAIN_DANCE, 25
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_MUDDY_WATER, 38
    learnset MOVE_POWER_WHIP, 47
    terminatelearnset


levelup SPECIES_GOODRA_HISUIAN
    learnset MOVE_AQUA_TAIL, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_PROTECT, 15
    learnset MOVE_ACID_ARMOR, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_RAIN_DANCE, 30
    learnset MOVE_DRAGON_PULSE, 35
    learnset MOVE_CURSE, 43
    learnset MOVE_BODY_SLAM, 49
    learnset MOVE_MUDDY_WATER, 58
    learnset MOVE_POWER_WHIP, 67
    terminatelearnset


levelup SPECIES_AVALUGG_HISUIAN
    learnset MOVE_BODY_SLAM, 1
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
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_CRUNCH, 33
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_BLIZZARD, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_SKULL_BASH, 51
    terminatelearnset


levelup SPECIES_DECIDUEYE_HISUIAN
    learnset MOVE_SPIRIT_SHACKLE, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_SPITE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PECK, 9
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_PLUCK, 25
    learnset MOVE_NASTY_PLOT, 30
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_LEAF_BLADE, 44
    learnset MOVE_FEATHER_DANCE, 51
    learnset MOVE_BRAVE_BIRD, 58
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
    learnset MOVE_ROOST, 18
    learnset MOVE_DETECT, 23
    learnset MOVE_TAUNT, 27
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_RAZOR_WIND, 38
    learnset MOVE_FEATHER_DANCE, 44
    learnset MOVE_SWAGGER, 49
    learnset MOVE_FACADE, 55
    learnset MOVE_TAILWIND, 60
    learnset MOVE_SKY_ATTACK, 66
    terminatelearnset


levelup SPECIES_FRILLISH_FEMALE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_NIGHT_SHADE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_RECOVER, 17
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_OMINOUS_WIND, 27
    learnset MOVE_BRINE, 32
    learnset MOVE_RAIN_DANCE, 37
    //learnset MOVE_HEX, 43
    learnset MOVE_HYDRO_PUMP, 49
    learnset MOVE_WRING_OUT, 55
    learnset MOVE_WATER_SPOUT, 61
    terminatelearnset


levelup SPECIES_JELLICENT_FEMALE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_NIGHT_SHADE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_RECOVER, 17
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_OMINOUS_WIND, 27
    learnset MOVE_BRINE, 32
    learnset MOVE_RAIN_DANCE, 37
    //learnset MOVE_HEX, 45
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_WRING_OUT, 61
    learnset MOVE_WATER_SPOUT, 69
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
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FLAIL, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SOAK, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_FINAL_GAMBIT, 40
    learnset MOVE_AQUA_TAIL, 44
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 56
    terminatelearnset

levelup SPECIES_MAUSHOLD_FAMILY_OF_THREE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_BLUE_PLUMAGE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_WHITE_PLUMAGE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_PALAFIN_HERO
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TATSUGIRI_DROOPY
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TATSUGIRI_STRETCHY
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_DUDUNSPARCE_THREE_SEGMENT
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_GIMMIGHOUL_ROAMING
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TERAPAGOS_TERASTAL
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_WOOPER_PALDEAN
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TAUROS_COMBAT
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TAUROS_BLAZE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TAUROS_AQUA
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_OINKOLOGNE_FEMALE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_SEGIN
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_SCHEDAR
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_NAVI
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_RUCHBAH
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_CAPH
    learnset MOVE_TACKLE, 1
    terminatelearnset