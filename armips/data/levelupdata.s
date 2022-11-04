.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/asm/levelup.s"

// the level up moves for each pokemon


levelup SPECIES_NONE
    terminatelearnset

levelup SPECIES_BULBASAUR
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 3 
    learnset MOVE_LEECH_SEED, 7 
    learnset MOVE_VINE_WHIP, 9 
    learnset MOVE_POISON_POWDER, 13 
    learnset MOVE_SLEEP_POWDER, 13 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_RAZOR_LEAF, 19 
    learnset MOVE_SWEET_SCENT, 21 
    learnset MOVE_GROWTH, 25 
    learnset MOVE_DOUBLE_EDGE, 27 
    learnset MOVE_WORRY_SEED, 31 
    learnset MOVE_SYNTHESIS, 33 
    learnset MOVE_SEED_BOMB, 37 
    terminatelearnset

levelup SPECIES_IVYSAUR
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_LEECH_SEED, 1 
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
    learnset MOVE_WORRY_SEED, 36 
    learnset MOVE_SYNTHESIS, 39 
    learnset MOVE_SOLAR_BEAM, 44 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_EMBER, 7 
    learnset MOVE_SMOKESCREEN, 10 
    learnset MOVE_DRAGON_RAGE, 16 
    learnset MOVE_SCARY_FACE, 19 
    learnset MOVE_FIRE_FANG, 25 
    learnset MOVE_SLASH, 28 
    learnset MOVE_FLAMETHROWER, 34 
    learnset MOVE_FIRE_SPIN, 37 
    terminatelearnset

levelup SPECIES_CHARMELEON
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_EMBER, 1 
    learnset MOVE_EMBER, 7 
    learnset MOVE_SMOKESCREEN, 10 
    learnset MOVE_DRAGON_RAGE, 17 
    learnset MOVE_SCARY_FACE, 21 
    learnset MOVE_FIRE_FANG, 28 
    learnset MOVE_SLASH, 32 
    learnset MOVE_FLAMETHROWER, 39 
    learnset MOVE_FIRE_SPIN, 43 
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
    learnset MOVE_TAIL_WHIP, 4 
    learnset MOVE_BUBBLE, 7 
    learnset MOVE_WITHDRAW, 10 
    learnset MOVE_WATER_GUN, 13 
    learnset MOVE_BITE, 16 
    learnset MOVE_RAPID_SPIN, 19 
    learnset MOVE_PROTECT, 22 
    learnset MOVE_WATER_PULSE, 25 
    learnset MOVE_AQUA_TAIL, 28 
    learnset MOVE_SKULL_BASH, 31 
    learnset MOVE_IRON_DEFENSE, 34 
    learnset MOVE_RAIN_DANCE, 37 
    learnset MOVE_HYDRO_PUMP, 40 
    terminatelearnset

levelup SPECIES_WARTORTLE
    learnset MOVE_TACKLE, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_BUBBLE, 1 
    learnset MOVE_TAIL_WHIP, 4 
    learnset MOVE_BUBBLE, 7 
    learnset MOVE_WITHDRAW, 10 
    learnset MOVE_WATER_GUN, 13 
    learnset MOVE_BITE, 16 
    learnset MOVE_RAPID_SPIN, 20 
    learnset MOVE_PROTECT, 24 
    learnset MOVE_WATER_PULSE, 28 
    learnset MOVE_AQUA_TAIL, 32 
    learnset MOVE_SKULL_BASH, 36 
    learnset MOVE_IRON_DEFENSE, 40 
    learnset MOVE_RAIN_DANCE, 44 
    learnset MOVE_HYDRO_PUMP, 48 
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
    learnset MOVE_STRING_SHOT, 1 
    learnset MOVE_BUG_BITE, 15 
    terminatelearnset

levelup SPECIES_METAPOD
    learnset MOVE_HARDEN, 1 
    learnset MOVE_HARDEN, 7 
    terminatelearnset

levelup SPECIES_BUTTERFREE
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_CONFUSION, 10 
    learnset MOVE_POISON_POWDER, 12 
    learnset MOVE_STUN_SPORE, 12 
    learnset MOVE_SLEEP_POWDER, 12 
    learnset MOVE_GUST, 16 
    learnset MOVE_SUPERSONIC, 18 
    learnset MOVE_WHIRLWIND, 22 
    learnset MOVE_PSYBEAM, 24 
    learnset MOVE_SILVER_WIND, 28 
    learnset MOVE_TAILWIND, 30 
    learnset MOVE_SAFEGUARD, 34 
    learnset MOVE_CAPTIVATE, 36 
    learnset MOVE_BUG_BUZZ, 40 
    terminatelearnset

levelup SPECIES_WEEDLE
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_STRING_SHOT, 1 
    learnset MOVE_BUG_BITE, 15 
    terminatelearnset

levelup SPECIES_KAKUNA
    learnset MOVE_HARDEN, 1 
    learnset MOVE_HARDEN, 7 
    terminatelearnset

levelup SPECIES_BEEDRILL
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

levelup SPECIES_PIDGEY
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SAND_ATTACK, 5 
    learnset MOVE_GUST, 9 
    learnset MOVE_QUICK_ATTACK, 13 
    learnset MOVE_WHIRLWIND, 17 
    learnset MOVE_TWISTER, 21 
    learnset MOVE_FEATHER_DANCE, 25 
    learnset MOVE_AGILITY, 29 
    learnset MOVE_WING_ATTACK, 33 
    learnset MOVE_ROOST, 37 
    learnset MOVE_TAILWIND, 41 
    learnset MOVE_MIRROR_MOVE, 45 
    learnset MOVE_AIR_SLASH, 49 
    terminatelearnset

levelup SPECIES_PIDGEOTTO
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_GUST, 1 
    learnset MOVE_SAND_ATTACK, 5 
    learnset MOVE_GUST, 9 
    learnset MOVE_QUICK_ATTACK, 13 
    learnset MOVE_WHIRLWIND, 17 
    learnset MOVE_TWISTER, 22 
    learnset MOVE_FEATHER_DANCE, 27 
    learnset MOVE_AGILITY, 32 
    learnset MOVE_WING_ATTACK, 37 
    learnset MOVE_ROOST, 42 
    learnset MOVE_TAILWIND, 47 
    learnset MOVE_MIRROR_MOVE, 52 
    learnset MOVE_AIR_SLASH, 57 
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
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_QUICK_ATTACK, 4 
    learnset MOVE_FOCUS_ENERGY, 7 
    learnset MOVE_BITE, 10 
    learnset MOVE_PURSUIT, 13 
    learnset MOVE_HYPER_FANG, 16 
    learnset MOVE_SUCKER_PUNCH, 19 
    learnset MOVE_CRUNCH, 22 
    learnset MOVE_ASSURANCE, 25 
    learnset MOVE_SUPER_FANG, 28 
    learnset MOVE_DOUBLE_EDGE, 31 
    learnset MOVE_ENDEAVOR, 34 
    terminatelearnset

levelup SPECIES_RATICATE
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
    learnset MOVE_SUCKER_PUNCH, 19 
    learnset MOVE_SCARY_FACE, 20 
    learnset MOVE_CRUNCH, 24 
    learnset MOVE_ASSURANCE, 29 
    learnset MOVE_SUPER_FANG, 34 
    learnset MOVE_DOUBLE_EDGE, 39 
    learnset MOVE_ENDEAVOR, 44 
    terminatelearnset

levelup SPECIES_SPEAROW
    learnset MOVE_PECK, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_LEER, 5 
    learnset MOVE_FURY_ATTACK, 9 
    learnset MOVE_PURSUIT, 13 
    learnset MOVE_AERIAL_ACE, 17 
    learnset MOVE_MIRROR_MOVE, 21 
    learnset MOVE_AGILITY, 25 
    learnset MOVE_ASSURANCE, 29 
    learnset MOVE_ROOST, 33 
    learnset MOVE_DRILL_PECK, 37 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_POISON_STING, 4 
    learnset MOVE_BITE, 9 
    learnset MOVE_GLARE, 12 
    learnset MOVE_SCREECH, 17 
    learnset MOVE_ACID, 20 
    learnset MOVE_STOCKPILE, 25 
    learnset MOVE_SWALLOW, 25 
    learnset MOVE_SPIT_UP, 25 
    learnset MOVE_MUD_BOMB, 28 
    learnset MOVE_GASTRO_ACID, 33 
    learnset MOVE_HAZE, 36 
    learnset MOVE_GUNK_SHOT, 41 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_TAIL_WHIP, 5 
    learnset MOVE_THUNDER_WAVE, 10 
    learnset MOVE_QUICK_ATTACK, 13 
    learnset MOVE_DOUBLE_TEAM, 18 
    learnset MOVE_SLAM, 21 
    learnset MOVE_THUNDERBOLT, 26 
    learnset MOVE_FEINT, 29 
    learnset MOVE_AGILITY, 34 
    learnset MOVE_DISCHARGE, 37 
    learnset MOVE_LIGHT_SCREEN, 42 
    learnset MOVE_THUNDER, 45 
    terminatelearnset

levelup SPECIES_RAICHU
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_THUNDERBOLT, 1 
    terminatelearnset

levelup SPECIES_SANDSHREW
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_DEFENSE_CURL, 3 
    learnset MOVE_SAND_ATTACK, 7 
    learnset MOVE_POISON_STING, 9 
    learnset MOVE_RAPID_SPIN, 13 
    learnset MOVE_SWIFT, 15 
    learnset MOVE_FURY_SWIPES, 19 
    learnset MOVE_ROLLOUT, 21 
    learnset MOVE_FURY_CUTTER, 25 
    learnset MOVE_SAND_TOMB, 27 
    learnset MOVE_SLASH, 31 
    learnset MOVE_GYRO_BALL, 33 
    learnset MOVE_SANDSTORM, 37 
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
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_TAIL_WHIP, 7 
    learnset MOVE_DOUBLE_KICK, 9 
    learnset MOVE_POISON_STING, 13 
    learnset MOVE_FURY_SWIPES, 19 
    learnset MOVE_BITE, 21 
    learnset MOVE_HELPING_HAND, 25 
    learnset MOVE_TOXIC_SPIKES, 31 
    learnset MOVE_FLATTER, 33 
    learnset MOVE_CRUNCH, 37 
    learnset MOVE_CAPTIVATE, 43 
    learnset MOVE_POISON_FANG, 45 
    terminatelearnset

levelup SPECIES_NIDORINA
    learnset MOVE_GROWL, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_TAIL_WHIP, 7 
    learnset MOVE_DOUBLE_KICK, 9 
    learnset MOVE_POISON_STING, 13 
    learnset MOVE_FURY_SWIPES, 20 
    learnset MOVE_BITE, 23 
    learnset MOVE_HELPING_HAND, 28 
    learnset MOVE_TOXIC_SPIKES, 35 
    learnset MOVE_FLATTER, 38 
    learnset MOVE_CRUNCH, 43 
    learnset MOVE_CAPTIVATE, 50 
    learnset MOVE_POISON_FANG, 58 
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
    learnset MOVE_PECK, 1 
    learnset MOVE_FOCUS_ENERGY, 7 
    learnset MOVE_DOUBLE_KICK, 9 
    learnset MOVE_POISON_STING, 13 
    learnset MOVE_FURY_ATTACK, 19 
    learnset MOVE_HORN_ATTACK, 21 
    learnset MOVE_HELPING_HAND, 25 
    learnset MOVE_TOXIC_SPIKES, 31 
    learnset MOVE_FLATTER, 33 
    learnset MOVE_POISON_JAB, 37 
    learnset MOVE_CAPTIVATE, 43 
    learnset MOVE_HORN_DRILL, 45 
    terminatelearnset

levelup SPECIES_NIDORINO
    learnset MOVE_LEER, 1 
    learnset MOVE_PECK, 1 
    learnset MOVE_FOCUS_ENERGY, 7 
    learnset MOVE_DOUBLE_KICK, 9 
    learnset MOVE_POISON_STING, 13 
    learnset MOVE_FURY_ATTACK, 20 
    learnset MOVE_HORN_ATTACK, 23 
    learnset MOVE_HELPING_HAND, 28 
    learnset MOVE_TOXIC_SPIKES, 35 
    learnset MOVE_FLATTER, 38 
    learnset MOVE_POISON_JAB, 43 
    learnset MOVE_CAPTIVATE, 50 
    learnset MOVE_HORN_DRILL, 58 
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
    learnset MOVE_POUND, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_ENCORE, 4 
    learnset MOVE_SING, 7 
    learnset MOVE_DOUBLE_SLAP, 10 
    learnset MOVE_DEFENSE_CURL, 13 
    learnset MOVE_FOLLOW_ME, 16 
    learnset MOVE_MINIMIZE, 19 
    learnset MOVE_WAKE_UP_SLAP, 22 
    learnset MOVE_COSMIC_POWER, 25 
    learnset MOVE_LUCKY_CHANT, 28 
    learnset MOVE_METRONOME, 31 
    learnset MOVE_GRAVITY, 34 
    learnset MOVE_MOONLIGHT, 37 
    learnset MOVE_LIGHT_SCREEN, 40 
    learnset MOVE_METEOR_MASH, 43 
    learnset MOVE_HEALING_WISH, 46 
    terminatelearnset

levelup SPECIES_CLEFABLE
    learnset MOVE_SING, 1 
    learnset MOVE_DOUBLE_SLAP, 1 
    learnset MOVE_MINIMIZE, 1 
    learnset MOVE_METRONOME, 1 
    terminatelearnset

levelup SPECIES_VULPIX
    learnset MOVE_EMBER, 1 
    learnset MOVE_TAIL_WHIP, 4 
    learnset MOVE_ROAR, 7 
    learnset MOVE_QUICK_ATTACK, 11 
    learnset MOVE_WILL_O_WISP, 14 
    learnset MOVE_CONFUSE_RAY, 17 
    learnset MOVE_IMPRISON, 21 
    learnset MOVE_FLAMETHROWER, 24 
    learnset MOVE_SAFEGUARD, 27 
    learnset MOVE_PAYBACK, 31 
    learnset MOVE_FIRE_SPIN, 34 
    learnset MOVE_CAPTIVATE, 37 
    learnset MOVE_GRUDGE, 41 
    learnset MOVE_EXTRASENSORY, 44 
    learnset MOVE_FIRE_BLAST, 47 
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
    learnset MOVE_DEFENSE_CURL, 5 
    learnset MOVE_POUND, 9 
    learnset MOVE_DISABLE, 13 
    learnset MOVE_ROLLOUT, 17 
    learnset MOVE_DOUBLE_SLAP, 21 
    learnset MOVE_REST, 25 
    learnset MOVE_BODY_SLAM, 29 
    learnset MOVE_GYRO_BALL, 33 
    learnset MOVE_WAKE_UP_SLAP, 37 
    learnset MOVE_MIMIC, 41 
    learnset MOVE_HYPER_VOICE, 45 
    learnset MOVE_DOUBLE_EDGE, 49 
    terminatelearnset

levelup SPECIES_WIGGLYTUFF
    learnset MOVE_SING, 1 
    learnset MOVE_DISABLE, 1 
    learnset MOVE_DEFENSE_CURL, 1 
    learnset MOVE_DOUBLE_SLAP, 1 
    terminatelearnset

levelup SPECIES_ZUBAT
    learnset MOVE_LEECH_LIFE, 1 
    learnset MOVE_SUPERSONIC, 5 
    learnset MOVE_ASTONISH, 9 
    learnset MOVE_BITE, 13 
    learnset MOVE_WING_ATTACK, 17 
    learnset MOVE_CONFUSE_RAY, 21 
    learnset MOVE_AIR_CUTTER, 25 
    learnset MOVE_MEAN_LOOK, 29 
    learnset MOVE_POISON_FANG, 33 
    learnset MOVE_HAZE, 37 
    learnset MOVE_AIR_SLASH, 41 
    terminatelearnset

levelup SPECIES_GOLBAT
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

levelup SPECIES_ODDISH
    learnset MOVE_ABSORB, 1 
    learnset MOVE_SWEET_SCENT, 5 
    learnset MOVE_ACID, 9 
    learnset MOVE_POISON_POWDER, 13 
    learnset MOVE_STUN_SPORE, 15 
    learnset MOVE_SLEEP_POWDER, 17 
    learnset MOVE_MEGA_DRAIN, 21 
    learnset MOVE_LUCKY_CHANT, 25 
    learnset MOVE_NATURAL_GIFT, 29 
    learnset MOVE_MOONLIGHT, 33 
    learnset MOVE_GIGA_DRAIN, 37 
    learnset MOVE_PETAL_DANCE, 41 
    terminatelearnset

levelup SPECIES_GLOOM
    learnset MOVE_ABSORB, 1 
    learnset MOVE_SWEET_SCENT, 1 
    learnset MOVE_ACID, 1 
    learnset MOVE_SWEET_SCENT, 5 
    learnset MOVE_ACID, 9 
    learnset MOVE_POISON_POWDER, 13 
    learnset MOVE_STUN_SPORE, 15 
    learnset MOVE_SLEEP_POWDER, 17 
    learnset MOVE_MEGA_DRAIN, 23 
    learnset MOVE_LUCKY_CHANT, 29 
    learnset MOVE_NATURAL_GIFT, 35 
    learnset MOVE_MOONLIGHT, 41 
    learnset MOVE_GIGA_DRAIN, 47 
    learnset MOVE_PETAL_DANCE, 53 
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
    learnset MOVE_STUN_SPORE, 6 
    learnset MOVE_POISON_POWDER, 6 
    learnset MOVE_LEECH_LIFE, 11 
    learnset MOVE_SPORE, 17 
    learnset MOVE_SLASH, 22 
    learnset MOVE_GROWTH, 27 
    learnset MOVE_GIGA_DRAIN, 33 
    learnset MOVE_AROMATHERAPY, 38 
    learnset MOVE_X_SCISSOR, 43 
    terminatelearnset

levelup SPECIES_PARASECT
    learnset MOVE_CROSS_POISON, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_STUN_SPORE, 1 
    learnset MOVE_POISON_POWDER, 1 
    learnset MOVE_LEECH_LIFE, 1 
    learnset MOVE_STUN_SPORE, 6 
    learnset MOVE_POISON_POWDER, 6 
    learnset MOVE_LEECH_LIFE, 11 
    learnset MOVE_SPORE, 17 
    learnset MOVE_SLASH, 22 
    learnset MOVE_GROWTH, 30 
    learnset MOVE_GIGA_DRAIN, 39 
    learnset MOVE_AROMATHERAPY, 47 
    learnset MOVE_X_SCISSOR, 55 
    terminatelearnset

levelup SPECIES_VENONAT
    learnset MOVE_TACKLE, 1 
    learnset MOVE_DISABLE, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_SUPERSONIC, 5 
    learnset MOVE_CONFUSION, 11 
    learnset MOVE_POISON_POWDER, 13 
    learnset MOVE_LEECH_LIFE, 17 
    learnset MOVE_STUN_SPORE, 23 
    learnset MOVE_PSYBEAM, 25 
    learnset MOVE_SLEEP_POWDER, 29 
    learnset MOVE_SIGNAL_BEAM, 35 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_POISON_FANG, 41 
    learnset MOVE_PSYCHIC, 47 
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
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_GROWL, 4 
    learnset MOVE_ASTONISH, 7 
    learnset MOVE_MAGNITUDE, 12 
    learnset MOVE_MUD_SLAP, 15 
    learnset MOVE_DIG, 18 
    learnset MOVE_SUCKER_PUNCH, 23 
    learnset MOVE_EARTH_POWER, 26 
    learnset MOVE_MUD_BOMB, 29 
    learnset MOVE_SLASH, 34 
    learnset MOVE_EARTHQUAKE, 37 
    learnset MOVE_FISSURE, 40 
    terminatelearnset

levelup SPECIES_DUGTRIO
    learnset MOVE_NIGHT_SLASH, 1 
    learnset MOVE_TRI_ATTACK, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_GROWL, 4 
    learnset MOVE_ASTONISH, 7 
    learnset MOVE_MAGNITUDE, 12 
    learnset MOVE_MUD_SLAP, 15 
    learnset MOVE_DIG, 18 
    learnset MOVE_SUCKER_PUNCH, 23 
    learnset MOVE_SAND_TOMB, 26 
    learnset MOVE_EARTH_POWER, 28 
    learnset MOVE_MUD_BOMB, 33 
    learnset MOVE_SLASH, 40 
    learnset MOVE_EARTHQUAKE, 45 
    learnset MOVE_FISSURE, 50 
    terminatelearnset

levelup SPECIES_MEOWTH
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_BITE, 6 
    learnset MOVE_FAKE_OUT, 9 
    learnset MOVE_FURY_SWIPES, 14 
    learnset MOVE_SCREECH, 17 
    learnset MOVE_FAINT_ATTACK, 22 
    learnset MOVE_TAUNT, 25 
    learnset MOVE_PAY_DAY, 30 
    learnset MOVE_SLASH, 33 
    learnset MOVE_NASTY_PLOT, 38 
    learnset MOVE_ASSURANCE, 41 
    learnset MOVE_CAPTIVATE, 46 
    learnset MOVE_NIGHT_SLASH, 49 
    learnset MOVE_FEINT, 54 
    terminatelearnset

levelup SPECIES_PERSIAN
    learnset MOVE_SWITCHEROO, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_FAKE_OUT, 1 
    learnset MOVE_BITE, 6 
    learnset MOVE_FAKE_OUT, 9 
    learnset MOVE_FURY_SWIPES, 14 
    learnset MOVE_SCREECH, 17 
    learnset MOVE_FAINT_ATTACK, 22 
    learnset MOVE_TAUNT, 25 
    learnset MOVE_POWER_GEM, 32 
    learnset MOVE_SLASH, 37 
    learnset MOVE_NASTY_PLOT, 44 
    learnset MOVE_ASSURANCE, 49 
    learnset MOVE_CAPTIVATE, 56 
    learnset MOVE_NIGHT_SLASH, 61 
    learnset MOVE_FEINT, 68 
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
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_LOW_KICK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_FOCUS_ENERGY, 1 
    learnset MOVE_FURY_SWIPES, 9 
    learnset MOVE_KARATE_CHOP, 13 
    learnset MOVE_SEISMIC_TOSS, 17 
    learnset MOVE_SCREECH, 21 
    learnset MOVE_ASSURANCE, 25 
    learnset MOVE_SWAGGER, 33 
    learnset MOVE_CROSS_CHOP, 37 
    learnset MOVE_THRASH, 41 
    learnset MOVE_PUNISHMENT, 45 
    learnset MOVE_CLOSE_COMBAT, 49 
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
    learnset MOVE_ROAR, 1 
    learnset MOVE_EMBER, 6 
    learnset MOVE_LEER, 9 
    learnset MOVE_ODOR_SLEUTH, 14 
    learnset MOVE_HELPING_HAND, 17 
    learnset MOVE_FLAME_WHEEL, 20 
    learnset MOVE_REVERSAL, 25 
    learnset MOVE_FIRE_FANG, 28 
    learnset MOVE_TAKE_DOWN, 31 
    learnset MOVE_FLAMETHROWER, 34 
    learnset MOVE_AGILITY, 39 
    learnset MOVE_CRUNCH, 42 
    learnset MOVE_HEAT_WAVE, 45 
    learnset MOVE_FLARE_BLITZ, 48 
    terminatelearnset

levelup SPECIES_ARCANINE
    learnset MOVE_THUNDER_FANG, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_ROAR, 1 
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_EXTREME_SPEED, 39 
    terminatelearnset

levelup SPECIES_POLIWAG
    learnset MOVE_WATER_SPORT, 1 
    learnset MOVE_BUBBLE, 5 
    learnset MOVE_HYPNOSIS, 8 
    learnset MOVE_WATER_GUN, 11 
    learnset MOVE_DOUBLE_SLAP, 15 
    learnset MOVE_RAIN_DANCE, 18 
    learnset MOVE_BODY_SLAM, 21 
    learnset MOVE_BUBBLE_BEAM, 25 
    learnset MOVE_MUD_SHOT, 28 
    learnset MOVE_BELLY_DRUM, 31 
    learnset MOVE_WAKE_UP_SLAP, 35 
    learnset MOVE_HYDRO_PUMP, 38 
    learnset MOVE_MUD_BOMB, 41 
    terminatelearnset

levelup SPECIES_POLIWHIRL
    learnset MOVE_WATER_SPORT, 1 
    learnset MOVE_BUBBLE, 1 
    learnset MOVE_HYPNOSIS, 1 
    learnset MOVE_BUBBLE, 5 
    learnset MOVE_HYPNOSIS, 8 
    learnset MOVE_WATER_GUN, 11 
    learnset MOVE_DOUBLE_SLAP, 15 
    learnset MOVE_RAIN_DANCE, 18 
    learnset MOVE_BODY_SLAM, 21 
    learnset MOVE_BUBBLE_BEAM, 27 
    learnset MOVE_MUD_SHOT, 32 
    learnset MOVE_BELLY_DRUM, 37 
    learnset MOVE_WAKE_UP_SLAP, 43 
    learnset MOVE_HYDRO_PUMP, 48 
    learnset MOVE_MUD_BOMB, 53 
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
    terminatelearnset

levelup SPECIES_KADABRA
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
    learnset MOVE_ROLE_PLAY, 36 
    learnset MOVE_PSYCHIC, 40 
    learnset MOVE_FUTURE_SIGHT, 42 
    learnset MOVE_TRICK, 46 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_FOCUS_ENERGY, 7 
    learnset MOVE_KARATE_CHOP, 10 
    learnset MOVE_FORESIGHT, 13 
    learnset MOVE_SEISMIC_TOSS, 19 
    learnset MOVE_REVENGE, 22 
    learnset MOVE_VITAL_THROW, 25 
    learnset MOVE_SUBMISSION, 31 
    learnset MOVE_WAKE_UP_SLAP, 34 
    learnset MOVE_CROSS_CHOP, 37 
    learnset MOVE_SCARY_FACE, 43 
    learnset MOVE_DYNAMIC_PUNCH, 46 
    terminatelearnset

levelup SPECIES_MACHOKE
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
    learnset MOVE_GROWTH, 7 
    learnset MOVE_WRAP, 11 
    learnset MOVE_SLEEP_POWDER, 13 
    learnset MOVE_POISON_POWDER, 15 
    learnset MOVE_STUN_SPORE, 17 
    learnset MOVE_ACID, 23 
    learnset MOVE_KNOCK_OFF, 27 
    learnset MOVE_SWEET_SCENT, 29 
    learnset MOVE_GASTRO_ACID, 35 
    learnset MOVE_RAZOR_LEAF, 39 
    learnset MOVE_SLAM, 41 
    learnset MOVE_WRING_OUT, 47 
    terminatelearnset

levelup SPECIES_WEEPINBELL
    learnset MOVE_VINE_WHIP, 1 
    learnset MOVE_GROWTH, 1 
    learnset MOVE_WRAP, 1 
    learnset MOVE_GROWTH, 7 
    learnset MOVE_WRAP, 11 
    learnset MOVE_SLEEP_POWDER, 13 
    learnset MOVE_POISON_POWDER, 15 
    learnset MOVE_STUN_SPORE, 17 
    learnset MOVE_ACID, 23 
    learnset MOVE_KNOCK_OFF, 27 
    learnset MOVE_SWEET_SCENT, 29 
    learnset MOVE_GASTRO_ACID, 35 
    learnset MOVE_RAZOR_LEAF, 39 
    learnset MOVE_SLAM, 41 
    learnset MOVE_WRING_OUT, 47 
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
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_SUPERSONIC, 5 
    learnset MOVE_CONSTRICT, 8 
    learnset MOVE_ACID, 12 
    learnset MOVE_TOXIC_SPIKES, 15 
    learnset MOVE_BUBBLE_BEAM, 19 
    learnset MOVE_WRAP, 22 
    learnset MOVE_BARRIER, 26 
    learnset MOVE_WATER_PULSE, 29 
    learnset MOVE_POISON_JAB, 33 
    learnset MOVE_SCREECH, 36 
    learnset MOVE_HYDRO_PUMP, 40 
    learnset MOVE_WRING_OUT, 43 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_DEFENSE_CURL, 1 
    learnset MOVE_MUD_SPORT, 4 
    learnset MOVE_ROCK_POLISH, 8 
    learnset MOVE_ROCK_THROW, 11 
    learnset MOVE_MAGNITUDE, 15 
    learnset MOVE_SELF_DESTRUCT, 18 
    learnset MOVE_ROLLOUT, 22 
    learnset MOVE_ROCK_BLAST, 25 
    learnset MOVE_EARTHQUAKE, 29 
    learnset MOVE_EXPLOSION, 32 
    learnset MOVE_DOUBLE_EDGE, 36 
    learnset MOVE_STONE_EDGE, 39 
    terminatelearnset

levelup SPECIES_GRAVELER
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_TAIL_WHIP, 6 
    learnset MOVE_EMBER, 10 
    learnset MOVE_FLAME_WHEEL, 15 
    learnset MOVE_STOMP, 19 
    learnset MOVE_FIRE_SPIN, 24 
    learnset MOVE_TAKE_DOWN, 28 
    learnset MOVE_AGILITY, 33 
    learnset MOVE_FIRE_BLAST, 37 
    learnset MOVE_BOUNCE, 42 
    learnset MOVE_FLARE_BLITZ, 46 
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
    learnset MOVE_YAWN, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 6 
    learnset MOVE_WATER_GUN, 11 
    learnset MOVE_CONFUSION, 15 
    learnset MOVE_DISABLE, 20 
    learnset MOVE_HEADBUTT, 25 
    learnset MOVE_WATER_PULSE, 29 
    learnset MOVE_ZEN_HEADBUTT, 34 
    learnset MOVE_SLACK_OFF, 39 
    learnset MOVE_AMNESIA, 43 
    learnset MOVE_PSYCHIC, 48 
    learnset MOVE_RAIN_DANCE, 53 
    learnset MOVE_PSYCH_UP, 57 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_THUNDER_SHOCK, 6 
    learnset MOVE_SUPERSONIC, 11 
    learnset MOVE_SONIC_BOOM, 14 
    learnset MOVE_THUNDER_WAVE, 17 
    learnset MOVE_SPARK, 22 
    learnset MOVE_LOCK_ON, 27 
    learnset MOVE_MAGNET_BOMB, 30 
    learnset MOVE_SCREECH, 33 
    learnset MOVE_DISCHARGE, 38 
    learnset MOVE_MIRROR_SHOT, 43 
    learnset MOVE_MAGNET_RISE, 46 
    learnset MOVE_GYRO_BALL, 49 
    learnset MOVE_ZAP_CANNON, 54 
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
    learnset MOVE_POISON_JAB, 1 
    learnset MOVE_PECK, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_FURY_CUTTER, 1 
    learnset MOVE_FURY_ATTACK, 7 
    learnset MOVE_KNOCK_OFF, 9 
    learnset MOVE_AERIAL_ACE, 13 
    learnset MOVE_SLASH, 19 
    learnset MOVE_AIR_CUTTER, 21 
    learnset MOVE_SWORDS_DANCE, 25 
    learnset MOVE_AGILITY, 31 
    learnset MOVE_NIGHT_SLASH, 33 
    learnset MOVE_AIR_SLASH, 37 
    learnset MOVE_FEINT, 43 
    learnset MOVE_FALSE_SWIPE, 45 
    terminatelearnset

levelup SPECIES_DODUO
    learnset MOVE_PECK, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_QUICK_ATTACK, 5 
    learnset MOVE_RAGE, 10 
    learnset MOVE_FURY_ATTACK, 14 
    learnset MOVE_PURSUIT, 19 
    learnset MOVE_UPROAR, 23 
    learnset MOVE_ACUPRESSURE, 28 
    learnset MOVE_DOUBLE_HIT, 32 
    learnset MOVE_AGILITY, 37 
    learnset MOVE_DRILL_PECK, 41 
    learnset MOVE_ENDEAVOR, 46 
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
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_GROWL, 3 
    learnset MOVE_WATER_SPORT, 7 
    learnset MOVE_ICY_WIND, 11 
    learnset MOVE_ENCORE, 13 
    learnset MOVE_ICE_SHARD, 17 
    learnset MOVE_REST, 21 
    learnset MOVE_AQUA_RING, 23 
    learnset MOVE_AURORA_BEAM, 27 
    learnset MOVE_AQUA_JET, 31 
    learnset MOVE_BRINE, 33 
    learnset MOVE_TAKE_DOWN, 37 
    learnset MOVE_DIVE, 41 
    learnset MOVE_AQUA_TAIL, 43 
    learnset MOVE_ICE_BEAM, 47 
    learnset MOVE_SAFEGUARD, 51 
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
    learnset MOVE_POISON_GAS, 1 
    learnset MOVE_POUND, 1 
    learnset MOVE_HARDEN, 4 
    learnset MOVE_MUD_SLAP, 7 
    learnset MOVE_DISABLE, 12 
    learnset MOVE_MINIMIZE, 17 
    learnset MOVE_SLUDGE, 20 
    learnset MOVE_MUD_BOMB, 23 
    learnset MOVE_FLING, 28 
    learnset MOVE_SCREECH, 33 
    learnset MOVE_SLUDGE_BOMB, 36 
    learnset MOVE_ACID_ARMOR, 39 
    learnset MOVE_GUNK_SHOT, 44 
    learnset MOVE_MEMENTO, 49 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_WITHDRAW, 4 
    learnset MOVE_SUPERSONIC, 8 
    learnset MOVE_ICICLE_SPEAR, 13 
    learnset MOVE_PROTECT, 16 
    learnset MOVE_LEER, 20 
    learnset MOVE_CLAMP, 25 
    learnset MOVE_ICE_SHARD, 28 
    learnset MOVE_AURORA_BEAM, 32 
    learnset MOVE_WHIRLPOOL, 37 
    learnset MOVE_IRON_DEFENSE, 40 
    learnset MOVE_BRINE, 44 
    learnset MOVE_ICE_BEAM, 49 
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
    learnset MOVE_HYPNOSIS, 1 
    learnset MOVE_LICK, 1 
    learnset MOVE_SPITE, 5 
    learnset MOVE_MEAN_LOOK, 8 
    learnset MOVE_CURSE, 12 
    learnset MOVE_NIGHT_SHADE, 15 
    learnset MOVE_CONFUSE_RAY, 19 
    learnset MOVE_SUCKER_PUNCH, 22 
    learnset MOVE_PAYBACK, 26 
    learnset MOVE_SHADOW_BALL, 29 
    learnset MOVE_DREAM_EATER, 33 
    learnset MOVE_DARK_PULSE, 36 
    learnset MOVE_DESTINY_BOND, 40 
    learnset MOVE_NIGHTMARE, 43 
    terminatelearnset

levelup SPECIES_HAUNTER
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
    learnset MOVE_SAND_TOMB, 46 
    learnset MOVE_DOUBLE_EDGE, 49 
    learnset MOVE_STONE_EDGE, 54 
    terminatelearnset

levelup SPECIES_DROWZEE
    learnset MOVE_POUND, 1 
    learnset MOVE_HYPNOSIS, 1 
    learnset MOVE_DISABLE, 7 
    learnset MOVE_CONFUSION, 9 
    learnset MOVE_HEADBUTT, 15 
    learnset MOVE_POISON_GAS, 18 
    learnset MOVE_MEDITATE, 21 
    learnset MOVE_PSYBEAM, 26 
    learnset MOVE_PSYCH_UP, 29 
    learnset MOVE_HEADBUTT, 32 
    learnset MOVE_SWAGGER, 37 
    learnset MOVE_PSYCHIC, 40 
    learnset MOVE_NASTY_PLOT, 43 
    learnset MOVE_ZEN_HEADBUTT, 50 
    learnset MOVE_FUTURE_SIGHT, 53 
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
    learnset MOVE_MUD_SPORT, 1 
    learnset MOVE_BUBBLE, 1 
    learnset MOVE_VICE_GRIP, 5 
    learnset MOVE_LEER, 9 
    learnset MOVE_HARDEN, 11 
    learnset MOVE_BUBBLE_BEAM, 15 
    learnset MOVE_MUD_SHOT, 19 
    learnset MOVE_METAL_CLAW, 21 
    learnset MOVE_STOMP, 25 
    learnset MOVE_PROTECT, 29 
    learnset MOVE_GUILLOTINE, 31 
    learnset MOVE_SLAM, 35 
    learnset MOVE_BRINE, 39 
    learnset MOVE_CRABHAMMER, 41 
    learnset MOVE_FLAIL, 45 
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
    learnset MOVE_CHARGE, 1 
    learnset MOVE_TACKLE, 5 
    learnset MOVE_SONIC_BOOM, 8 
    learnset MOVE_SPARK, 12 
    learnset MOVE_ROLLOUT, 15 
    learnset MOVE_SCREECH, 19 
    learnset MOVE_LIGHT_SCREEN, 22 
    learnset MOVE_CHARGE_BEAM, 26 
    learnset MOVE_SELF_DESTRUCT, 29 
    learnset MOVE_SWIFT, 33 
    learnset MOVE_MAGNET_RISE, 36 
    learnset MOVE_GYRO_BALL, 40 
    learnset MOVE_EXPLOSION, 43 
    learnset MOVE_MIRROR_COAT, 47 
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
    learnset MOVE_UPROAR, 1 
    learnset MOVE_HYPNOSIS, 1 
    learnset MOVE_REFLECT, 7 
    learnset MOVE_LEECH_SEED, 11 
    learnset MOVE_BULLET_SEED, 17 
    learnset MOVE_STUN_SPORE, 19 
    learnset MOVE_POISON_POWDER, 21 
    learnset MOVE_SLEEP_POWDER, 23 
    learnset MOVE_CONFUSION, 27 
    learnset MOVE_WORRY_SEED, 33 
    learnset MOVE_NATURAL_GIFT, 37 
    learnset MOVE_SOLAR_BEAM, 43 
    learnset MOVE_PSYCHIC, 47 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_TAIL_WHIP, 3 
    learnset MOVE_BONE_CLUB, 7 
    learnset MOVE_HEADBUTT, 11 
    learnset MOVE_LEER, 13 
    learnset MOVE_FOCUS_ENERGY, 17 
    learnset MOVE_BONEMERANG, 21 
    learnset MOVE_RAGE, 23 
    learnset MOVE_FALSE_SWIPE, 27 
    learnset MOVE_THRASH, 31 
    learnset MOVE_FLING, 33 
    learnset MOVE_BONE_RUSH, 37 
    learnset MOVE_ENDEAVOR, 41 
    learnset MOVE_DOUBLE_EDGE, 43 
    terminatelearnset

levelup SPECIES_MAROWAK
    learnset MOVE_GROWL, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_BONE_CLUB, 1 
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_TAIL_WHIP, 3 
    learnset MOVE_BONE_CLUB, 7 
    learnset MOVE_HEADBUTT, 11 
    learnset MOVE_LEER, 13 
    learnset MOVE_FOCUS_ENERGY, 17 
    learnset MOVE_BONEMERANG, 21 
    learnset MOVE_RAGE, 23 
    learnset MOVE_FALSE_SWIPE, 27 
    learnset MOVE_THRASH, 33 
    learnset MOVE_FLING, 37 
    learnset MOVE_BONE_RUSH, 43 
    learnset MOVE_ENDEAVOR, 49 
    learnset MOVE_DOUBLE_EDGE, 53 
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
    learnset MOVE_HI_JUMP_KICK, 29 
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
    terminatelearnset

levelup SPECIES_KOFFING
    learnset MOVE_POISON_GAS, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SMOG, 6 
    learnset MOVE_SMOKESCREEN, 10 
    learnset MOVE_ASSURANCE, 15 
    learnset MOVE_SELF_DESTRUCT, 19 
    learnset MOVE_SLUDGE, 24 
    learnset MOVE_HAZE, 28 
    learnset MOVE_GYRO_BALL, 33 
    learnset MOVE_EXPLOSION, 37 
    learnset MOVE_SLUDGE_BOMB, 42 
    learnset MOVE_DESTINY_BOND, 46 
    learnset MOVE_MEMENTO, 51 
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
    learnset MOVE_HORN_ATTACK, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_STOMP, 9 
    learnset MOVE_FURY_ATTACK, 13 
    learnset MOVE_SCARY_FACE, 21 
    learnset MOVE_ROCK_BLAST, 25 
    learnset MOVE_TAKE_DOWN, 33 
    learnset MOVE_HORN_DRILL, 37 
    learnset MOVE_STONE_EDGE, 45 
    learnset MOVE_EARTHQUAKE, 49 
    learnset MOVE_MEGAHORN, 57 
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
    learnset MOVE_SMOKESCREEN, 4 
    learnset MOVE_LEER, 8 
    learnset MOVE_WATER_GUN, 11 
    learnset MOVE_FOCUS_ENERGY, 14 
    learnset MOVE_BUBBLE_BEAM, 18 
    learnset MOVE_AGILITY, 23 
    learnset MOVE_TWISTER, 26 
    learnset MOVE_BRINE, 30 
    learnset MOVE_HYDRO_PUMP, 35 
    learnset MOVE_DRAGON_DANCE, 38 
    learnset MOVE_DRAGON_PULSE, 42 
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
    learnset MOVE_PECK, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_WATER_SPORT, 1 
    learnset MOVE_SUPERSONIC, 7 
    learnset MOVE_HORN_ATTACK, 11 
    learnset MOVE_WATER_PULSE, 17 
    learnset MOVE_FLAIL, 21 
    learnset MOVE_AQUA_RING, 27 
    learnset MOVE_FURY_ATTACK, 31 
    learnset MOVE_WATERFALL, 37 
    learnset MOVE_HORN_DRILL, 41 
    learnset MOVE_AGILITY, 47 
    learnset MOVE_MEGAHORN, 51 
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
    learnset MOVE_HARDEN, 1 
    learnset MOVE_WATER_GUN, 6 
    learnset MOVE_RAPID_SPIN, 10 
    learnset MOVE_RECOVER, 15 
    learnset MOVE_CAMOUFLAGE, 19 
    learnset MOVE_SWIFT, 24 
    learnset MOVE_BUBBLE_BEAM, 28 
    learnset MOVE_MINIMIZE, 33 
    learnset MOVE_GYRO_BALL, 37 
    learnset MOVE_LIGHT_SCREEN, 42 
    learnset MOVE_POWER_GEM, 46 
    learnset MOVE_COSMIC_POWER, 51 
    learnset MOVE_HYDRO_PUMP, 55 
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
    learnset MOVE_FAINT_ATTACK, 16 
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
    learnset MOVE_TACKLE, 15 
    learnset MOVE_FLAIL, 30 
    terminatelearnset

levelup SPECIES_GYARADOS
    learnset MOVE_THRASH, 1 
    learnset MOVE_BITE, 20 
    learnset MOVE_DRAGON_RAGE, 23 
    learnset MOVE_LEER, 26 
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
    terminatelearnset

levelup SPECIES_EEVEE
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_HELPING_HAND, 1 
    learnset MOVE_SAND_ATTACK, 8 
    learnset MOVE_GROWL, 15 
    learnset MOVE_QUICK_ATTACK, 22 
    learnset MOVE_BITE, 29 
    learnset MOVE_BATON_PASS, 36 
    learnset MOVE_TAKE_DOWN, 43 
    learnset MOVE_LAST_RESORT, 50 
    learnset MOVE_TRUMP_CARD, 57 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_CONVERSION, 1 
    learnset MOVE_SHARPEN, 1 
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
    terminatelearnset

levelup SPECIES_OMANYTE
    learnset MOVE_CONSTRICT, 1 
    learnset MOVE_WITHDRAW, 1 
    learnset MOVE_BITE, 7 
    learnset MOVE_WATER_GUN, 10 
    learnset MOVE_ROLLOUT, 16 
    learnset MOVE_LEER, 19 
    learnset MOVE_MUD_SHOT, 25 
    learnset MOVE_BRINE, 28 
    learnset MOVE_PROTECT, 34 
    learnset MOVE_ANCIENT_POWER, 37 
    learnset MOVE_TICKLE, 43 
    learnset MOVE_ROCK_BLAST, 46 
    learnset MOVE_HYDRO_PUMP, 52 
    terminatelearnset

levelup SPECIES_OMASTAR
    learnset MOVE_CONSTRICT, 1 
    learnset MOVE_WITHDRAW, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_BITE, 7 
    learnset MOVE_WATER_GUN, 10 
    learnset MOVE_ROLLOUT, 16 
    learnset MOVE_LEER, 19 
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
    learnset MOVE_HARDEN, 1 
    learnset MOVE_ABSORB, 6 
    learnset MOVE_LEER, 11 
    learnset MOVE_MUD_SHOT, 16 
    learnset MOVE_SAND_ATTACK, 21 
    learnset MOVE_ENDURE, 26 
    learnset MOVE_AQUA_JET, 31 
    learnset MOVE_MEGA_DRAIN, 36 
    learnset MOVE_METAL_SOUND, 41 
    learnset MOVE_ANCIENT_POWER, 46 
    learnset MOVE_WRING_OUT, 51 
    terminatelearnset

levelup SPECIES_KABUTOPS
    learnset MOVE_FEINT, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_HARDEN, 1 
    learnset MOVE_ABSORB, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_ABSORB, 6 
    learnset MOVE_LEER, 11 
    learnset MOVE_MUD_SHOT, 16 
    learnset MOVE_SAND_ATTACK, 21 
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
    learnset MOVE_GUST, 1 
    learnset MOVE_POWDER_SNOW, 1 
    learnset MOVE_MIST, 8 
    learnset MOVE_ICE_SHARD, 15 
    learnset MOVE_MIND_READER, 22 
    learnset MOVE_ANCIENT_POWER, 29 
    learnset MOVE_AGILITY, 36 
    learnset MOVE_ICE_BEAM, 43 
    learnset MOVE_REFLECT, 50 
    learnset MOVE_ROOST, 57 
    learnset MOVE_TAILWIND, 64 
    learnset MOVE_BLIZZARD, 71 
    learnset MOVE_SHEER_COLD, 78 
    learnset MOVE_HAIL, 85 
    terminatelearnset

levelup SPECIES_ZAPDOS
    learnset MOVE_PECK, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_THUNDER_WAVE, 8 
    learnset MOVE_DETECT, 15 
    learnset MOVE_PLUCK, 22 
    learnset MOVE_ANCIENT_POWER, 29 
    learnset MOVE_CHARGE, 36 
    learnset MOVE_AGILITY, 43 
    learnset MOVE_DISCHARGE, 50 
    learnset MOVE_ROOST, 57 
    learnset MOVE_LIGHT_SCREEN, 64 
    learnset MOVE_DRILL_PECK, 71 
    learnset MOVE_THUNDER, 78 
    learnset MOVE_RAIN_DANCE, 85 
    terminatelearnset

levelup SPECIES_MOLTRES
    learnset MOVE_WING_ATTACK, 1 
    learnset MOVE_EMBER, 1 
    learnset MOVE_FIRE_SPIN, 8 
    learnset MOVE_AGILITY, 15 
    learnset MOVE_ENDURE, 22 
    learnset MOVE_ANCIENT_POWER, 29 
    learnset MOVE_FLAMETHROWER, 36 
    learnset MOVE_SAFEGUARD, 43 
    learnset MOVE_AIR_SLASH, 50 
    learnset MOVE_ROOST, 57 
    learnset MOVE_HEAT_WAVE, 64 
    learnset MOVE_SOLAR_BEAM, 71 
    learnset MOVE_SKY_ATTACK, 78 
    learnset MOVE_SUNNY_DAY, 85 
    terminatelearnset

levelup SPECIES_DRATINI
    learnset MOVE_WRAP, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_THUNDER_WAVE, 5 
    learnset MOVE_TWISTER, 11 
    learnset MOVE_DRAGON_RAGE, 15 
    learnset MOVE_SLAM, 21 
    learnset MOVE_AGILITY, 25 
    learnset MOVE_AQUA_TAIL, 31 
    learnset MOVE_DRAGON_RUSH, 35 
    learnset MOVE_SAFEGUARD, 41 
    learnset MOVE_DRAGON_DANCE, 45 
    learnset MOVE_OUTRAGE, 51 
    learnset MOVE_HYPER_BEAM, 55 
    terminatelearnset

levelup SPECIES_DRAGONAIR
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
    learnset MOVE_OUTRAGE, 61 
    learnset MOVE_HYPER_BEAM, 67 
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
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_DISABLE, 1 
    learnset MOVE_BARRIER, 8 
    learnset MOVE_SWIFT, 15 
    learnset MOVE_FUTURE_SIGHT, 22 
    learnset MOVE_PSYCH_UP, 29 
    learnset MOVE_MIRACLE_EYE, 36 
    learnset MOVE_MIST, 43 
    learnset MOVE_PSYCHO_CUT, 50 
    learnset MOVE_AMNESIA, 57 
    learnset MOVE_POWER_SWAP, 64 
    learnset MOVE_GUARD_SWAP, 64 
    learnset MOVE_PSYCHIC, 71 
    learnset MOVE_ME_FIRST, 79 
    learnset MOVE_RECOVER, 86 
    learnset MOVE_SAFEGUARD, 93 
    learnset MOVE_AURA_SPHERE, 100 
    terminatelearnset

levelup SPECIES_MEW
    learnset MOVE_POUND, 1 
    learnset MOVE_TRANSFORM, 1 
    learnset MOVE_MEGA_PUNCH, 10 
    learnset MOVE_METRONOME, 20 
    learnset MOVE_PSYCHIC, 30 
    learnset MOVE_BARRIER, 40 
    learnset MOVE_ANCIENT_POWER, 50 
    learnset MOVE_AMNESIA, 60 
    learnset MOVE_ME_FIRST, 70 
    learnset MOVE_BATON_PASS, 80 
    learnset MOVE_NASTY_PLOT, 90 
    learnset MOVE_AURA_SPHERE, 100 
    terminatelearnset

levelup SPECIES_CHIKORITA
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_RAZOR_LEAF, 6 
    learnset MOVE_POISON_POWDER, 9 
    learnset MOVE_SYNTHESIS, 12 
    learnset MOVE_REFLECT, 17 
    learnset MOVE_MAGICAL_LEAF, 20 
    learnset MOVE_NATURAL_GIFT, 23 
    learnset MOVE_SWEET_SCENT, 28 
    learnset MOVE_LIGHT_SCREEN, 31 
    learnset MOVE_BODY_SLAM, 34 
    learnset MOVE_SAFEGUARD, 39 
    learnset MOVE_AROMATHERAPY, 42 
    learnset MOVE_SOLAR_BEAM, 45 
    terminatelearnset

levelup SPECIES_BAYLEEF
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
    learnset MOVE_SWEET_SCENT, 32 
    learnset MOVE_LIGHT_SCREEN, 36 
    learnset MOVE_BODY_SLAM, 40 
    learnset MOVE_SAFEGUARD, 46 
    learnset MOVE_AROMATHERAPY, 50 
    learnset MOVE_SOLAR_BEAM, 54 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_SMOKESCREEN, 6 
    learnset MOVE_EMBER, 10 
    learnset MOVE_QUICK_ATTACK, 13 
    learnset MOVE_FLAME_WHEEL, 19 
    learnset MOVE_DEFENSE_CURL, 22 
    learnset MOVE_SWIFT, 28 
    learnset MOVE_LAVA_PLUME, 31 
    learnset MOVE_FLAMETHROWER, 37 
    learnset MOVE_ROLLOUT, 40 
    learnset MOVE_DOUBLE_EDGE, 46 
    learnset MOVE_ERUPTION, 49 
    terminatelearnset

levelup SPECIES_QUILAVA
    learnset MOVE_TACKLE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_SMOKESCREEN, 1 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_WATER_GUN, 6 
    learnset MOVE_RAGE, 8 
    learnset MOVE_BITE, 13 
    learnset MOVE_SCARY_FACE, 15 
    learnset MOVE_ICE_FANG, 20 
    learnset MOVE_FLAIL, 22 
    learnset MOVE_CRUNCH, 27 
    learnset MOVE_SLASH, 29 
    learnset MOVE_SCREECH, 34 
    learnset MOVE_THRASH, 36 
    learnset MOVE_AQUA_TAIL, 41 
    learnset MOVE_SUPERPOWER, 43 
    learnset MOVE_HYDRO_PUMP, 48 
    terminatelearnset

levelup SPECIES_CROCONAW
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_WATER_GUN, 6 
    learnset MOVE_RAGE, 8 
    learnset MOVE_BITE, 13 
    learnset MOVE_SCARY_FACE, 15 
    learnset MOVE_ICE_FANG, 21 
    learnset MOVE_FLAIL, 24 
    learnset MOVE_CRUNCH, 30 
    learnset MOVE_SLASH, 33 
    learnset MOVE_SCREECH, 39 
    learnset MOVE_THRASH, 42 
    learnset MOVE_AQUA_TAIL, 48 
    learnset MOVE_SUPERPOWER, 51 
    learnset MOVE_HYDRO_PUMP, 57 
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
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_DEFENSE_CURL, 4 
    learnset MOVE_QUICK_ATTACK, 7 
    learnset MOVE_FURY_SWIPES, 13 
    learnset MOVE_HELPING_HAND, 16 
    learnset MOVE_FOLLOW_ME, 19 
    learnset MOVE_SLAM, 25 
    learnset MOVE_REST, 28 
    learnset MOVE_SUCKER_PUNCH, 31 
    learnset MOVE_AMNESIA, 36 
    learnset MOVE_BATON_PASS, 39 
    learnset MOVE_ME_FIRST, 42 
    learnset MOVE_HYPER_VOICE, 47 
    terminatelearnset

levelup SPECIES_FURRET
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_DEFENSE_CURL, 1 
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_DEFENSE_CURL, 4 
    learnset MOVE_QUICK_ATTACK, 7 
    learnset MOVE_FURY_SWIPES, 13 
    learnset MOVE_HELPING_HAND, 17 
    learnset MOVE_FOLLOW_ME, 21 
    learnset MOVE_SLAM, 28 
    learnset MOVE_REST, 32 
    learnset MOVE_SUCKER_PUNCH, 36 
    learnset MOVE_AMNESIA, 42 
    learnset MOVE_BATON_PASS, 46 
    learnset MOVE_ME_FIRST, 50 
    learnset MOVE_HYPER_VOICE, 56 
    terminatelearnset

levelup SPECIES_HOOTHOOT
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_HYPNOSIS, 5 
    learnset MOVE_PECK, 9 
    learnset MOVE_UPROAR, 13 
    learnset MOVE_REFLECT, 17 
    learnset MOVE_CONFUSION, 21 
    learnset MOVE_TAKE_DOWN, 25 
    learnset MOVE_AIR_SLASH, 29 
    learnset MOVE_ZEN_HEADBUTT, 33 
    learnset MOVE_EXTRASENSORY, 37 
    learnset MOVE_PSYCHO_SHIFT, 41 
    learnset MOVE_ROOST, 45 
    learnset MOVE_DREAM_EATER, 49 
    terminatelearnset

levelup SPECIES_NOCTOWL
    learnset MOVE_SKY_ATTACK, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_HYPNOSIS, 1 
    learnset MOVE_HYPNOSIS, 5 
    learnset MOVE_PECK, 9 
    learnset MOVE_UPROAR, 13 
    learnset MOVE_REFLECT, 17 
    learnset MOVE_CONFUSION, 22 
    learnset MOVE_TAKE_DOWN, 27 
    learnset MOVE_AIR_SLASH, 32 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_EXTRASENSORY, 42 
    learnset MOVE_PSYCHO_SHIFT, 47 
    learnset MOVE_ROOST, 52 
    learnset MOVE_DREAM_EATER, 57 
    terminatelearnset

levelup SPECIES_LEDYBA
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SUPERSONIC, 6 
    learnset MOVE_COMET_PUNCH, 9 
    learnset MOVE_LIGHT_SCREEN, 14 
    learnset MOVE_REFLECT, 14 
    learnset MOVE_SAFEGUARD, 14 
    learnset MOVE_MACH_PUNCH, 17 
    learnset MOVE_BATON_PASS, 22 
    learnset MOVE_SILVER_WIND, 25 
    learnset MOVE_AGILITY, 30 
    learnset MOVE_SWIFT, 33 
    learnset MOVE_DOUBLE_EDGE, 38 
    learnset MOVE_BUG_BUZZ, 41 
    terminatelearnset

levelup SPECIES_LEDIAN
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SUPERSONIC, 1 
    learnset MOVE_COMET_PUNCH, 1 
    learnset MOVE_SUPERSONIC, 6 
    learnset MOVE_COMET_PUNCH, 9 
    learnset MOVE_LIGHT_SCREEN, 14 
    learnset MOVE_REFLECT, 14 
    learnset MOVE_SAFEGUARD, 14 
    learnset MOVE_MACH_PUNCH, 17 
    learnset MOVE_BATON_PASS, 24 
    learnset MOVE_SILVER_WIND, 29 
    learnset MOVE_AGILITY, 36 
    learnset MOVE_SWIFT, 41 
    learnset MOVE_DOUBLE_EDGE, 48 
    learnset MOVE_BUG_BUZZ, 53 
    terminatelearnset

levelup SPECIES_SPINARAK
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_STRING_SHOT, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_CONSTRICT, 8 
    learnset MOVE_LEECH_LIFE, 12 
    learnset MOVE_NIGHT_SHADE, 15 
    learnset MOVE_SHADOW_SNEAK, 19 
    learnset MOVE_FURY_SWIPES, 22 
    learnset MOVE_SUCKER_PUNCH, 26 
    learnset MOVE_SPIDER_WEB, 29 
    learnset MOVE_AGILITY, 33 
    learnset MOVE_PIN_MISSILE, 36 
    learnset MOVE_PSYCHIC, 40 
    learnset MOVE_POISON_JAB, 43 
    terminatelearnset

levelup SPECIES_ARIADOS
    learnset MOVE_BUG_BITE, 1 
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_STRING_SHOT, 1 
    learnset MOVE_SCARY_FACE, 1 
    learnset MOVE_CONSTRICT, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_CONSTRICT, 8 
    learnset MOVE_LEECH_LIFE, 12 
    learnset MOVE_NIGHT_SHADE, 15 
    learnset MOVE_SHADOW_SNEAK, 19 
    learnset MOVE_FURY_SWIPES, 23 
    learnset MOVE_SUCKER_PUNCH, 28 
    learnset MOVE_SPIDER_WEB, 32 
    learnset MOVE_AGILITY, 37 
    learnset MOVE_PIN_MISSILE, 41 
    learnset MOVE_PSYCHIC, 46 
    learnset MOVE_POISON_JAB, 50 
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
    learnset MOVE_SUPERSONIC, 1 
    learnset MOVE_THUNDER_WAVE, 6 
    learnset MOVE_FLAIL, 9 
    learnset MOVE_WATER_GUN, 12 
    learnset MOVE_CONFUSE_RAY, 17 
    learnset MOVE_SPARK, 20 
    learnset MOVE_TAKE_DOWN, 23 
    learnset MOVE_BUBBLE_BEAM, 28 
    learnset MOVE_SIGNAL_BEAM, 31 
    learnset MOVE_DISCHARGE, 34 
    learnset MOVE_AQUA_RING, 39 
    learnset MOVE_HYDRO_PUMP, 42 
    learnset MOVE_CHARGE, 45 
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
    learnset MOVE_CHARM, 1 
    learnset MOVE_TAIL_WHIP, 5 
    learnset MOVE_THUNDER_WAVE, 10 
    learnset MOVE_SWEET_KISS, 13 
    learnset MOVE_NASTY_PLOT, 18 
    terminatelearnset

levelup SPECIES_CLEFFA
    learnset MOVE_POUND, 1 
    learnset MOVE_CHARM, 1 
    learnset MOVE_ENCORE, 4 
    learnset MOVE_SING, 7 
    learnset MOVE_SWEET_KISS, 10 
    learnset MOVE_COPYCAT, 13 
    learnset MOVE_MAGICAL_LEAF, 16 
    terminatelearnset

levelup SPECIES_IGGLYBUFF
    learnset MOVE_SING, 1 
    learnset MOVE_CHARM, 1 
    learnset MOVE_DEFENSE_CURL, 5 
    learnset MOVE_POUND, 9 
    learnset MOVE_SWEET_KISS, 13 
    learnset MOVE_COPYCAT, 17 
    terminatelearnset

levelup SPECIES_TOGEPI
    learnset MOVE_GROWL, 1 
    learnset MOVE_CHARM, 1 
    learnset MOVE_METRONOME, 6 
    learnset MOVE_SWEET_KISS, 10 
    learnset MOVE_YAWN, 15 
    learnset MOVE_ENCORE, 19 
    learnset MOVE_FOLLOW_ME, 24 
    learnset MOVE_WISH, 28 
    learnset MOVE_ANCIENT_POWER, 33 
    learnset MOVE_SAFEGUARD, 37 
    learnset MOVE_BATON_PASS, 42 
    learnset MOVE_DOUBLE_EDGE, 46 
    learnset MOVE_LAST_RESORT, 51 
    terminatelearnset

levelup SPECIES_TOGETIC
    learnset MOVE_MAGICAL_LEAF, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_CHARM, 1 
    learnset MOVE_METRONOME, 1 
    learnset MOVE_SWEET_KISS, 1 
    learnset MOVE_METRONOME, 6 
    learnset MOVE_SWEET_KISS, 10 
    learnset MOVE_YAWN, 15 
    learnset MOVE_ENCORE, 19 
    learnset MOVE_FOLLOW_ME, 24 
    learnset MOVE_WISH, 28 
    learnset MOVE_ANCIENT_POWER, 33 
    learnset MOVE_SAFEGUARD, 37 
    learnset MOVE_BATON_PASS, 42 
    learnset MOVE_DOUBLE_EDGE, 46 
    learnset MOVE_LAST_RESORT, 51 
    terminatelearnset

levelup SPECIES_NATU
    learnset MOVE_PECK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_NIGHT_SHADE, 6 
    learnset MOVE_TELEPORT, 9 
    learnset MOVE_LUCKY_CHANT, 12 
    learnset MOVE_MIRACLE_EYE, 17 
    learnset MOVE_ME_FIRST, 20 
    learnset MOVE_CONFUSE_RAY, 23 
    learnset MOVE_WISH, 28 
    learnset MOVE_PSYCHO_SHIFT, 33 
    learnset MOVE_FUTURE_SIGHT, 36 
    learnset MOVE_OMINOUS_WIND, 39 
    learnset MOVE_POWER_SWAP, 44 
    learnset MOVE_GUARD_SWAP, 44 
    learnset MOVE_PSYCHIC, 47 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 5 
    learnset MOVE_THUNDER_SHOCK, 10 
    learnset MOVE_THUNDER_WAVE, 14 
    learnset MOVE_COTTON_SPORE, 19 
    learnset MOVE_CHARGE, 23 
    learnset MOVE_DISCHARGE, 28 
    learnset MOVE_SIGNAL_BEAM, 32 
    learnset MOVE_LIGHT_SCREEN, 37 
    learnset MOVE_POWER_GEM, 41 
    learnset MOVE_THUNDER, 46 
    terminatelearnset

levelup SPECIES_FLAAFFY
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_GROWL, 5 
    learnset MOVE_THUNDER_SHOCK, 10 
    learnset MOVE_THUNDER_WAVE, 14 
    learnset MOVE_COTTON_SPORE, 20 
    learnset MOVE_CHARGE, 25 
    learnset MOVE_DISCHARGE, 31 
    learnset MOVE_SIGNAL_BEAM, 36 
    learnset MOVE_LIGHT_SCREEN, 42 
    learnset MOVE_POWER_GEM, 47 
    learnset MOVE_THUNDER, 53 
    terminatelearnset

levelup SPECIES_AMPHAROS
    learnset MOVE_FIRE_PUNCH, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_GROWL, 5 
    learnset MOVE_THUNDER_SHOCK, 10 
    learnset MOVE_THUNDER_WAVE, 14 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_DEFENSE_CURL, 2 
    learnset MOVE_TAIL_WHIP, 7 
    learnset MOVE_WATER_GUN, 10 
    learnset MOVE_ROLLOUT, 15 
    learnset MOVE_BUBBLE_BEAM, 18 
    learnset MOVE_AQUA_RING, 23 
    learnset MOVE_DOUBLE_EDGE, 27 
    learnset MOVE_RAIN_DANCE, 32 
    learnset MOVE_AQUA_TAIL, 37 
    learnset MOVE_HYDRO_PUMP, 42 
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
    learnset MOVE_WOOD_HAMMER, 1 
    learnset MOVE_COPYCAT, 1 
    learnset MOVE_FLAIL, 1 
    learnset MOVE_LOW_KICK, 1 
    learnset MOVE_ROCK_THROW, 1 
    learnset MOVE_FLAIL, 6 
    learnset MOVE_LOW_KICK, 9 
    learnset MOVE_ROCK_THROW, 14 
    learnset MOVE_MIMIC, 17 
    learnset MOVE_BLOCK, 22 
    learnset MOVE_FAINT_ATTACK, 25 
    learnset MOVE_ROCK_TOMB, 30 
    learnset MOVE_ROCK_SLIDE, 33 
    learnset MOVE_SLAM, 38 
    learnset MOVE_SUCKER_PUNCH, 41 
    learnset MOVE_DOUBLE_EDGE, 46 
    learnset MOVE_HAMMER_ARM, 49 
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
    learnset MOVE_SYNTHESIS, 4 
    learnset MOVE_TAIL_WHIP, 7 
    learnset MOVE_TACKLE, 10 
    learnset MOVE_POISON_POWDER, 12 
    learnset MOVE_STUN_SPORE, 14 
    learnset MOVE_SLEEP_POWDER, 16 
    learnset MOVE_BULLET_SEED, 19 
    learnset MOVE_LEECH_SEED, 22 
    learnset MOVE_MEGA_DRAIN, 25 
    learnset MOVE_COTTON_SPORE, 28 
    learnset MOVE_U_TURN, 31 
    learnset MOVE_WORRY_SEED, 34 
    learnset MOVE_GIGA_DRAIN, 37 
    learnset MOVE_BOUNCE, 40 
    learnset MOVE_MEMENTO, 43 
    terminatelearnset

levelup SPECIES_SKIPLOOM
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
    learnset MOVE_MEGA_DRAIN, 5 
    learnset MOVE_INGRAIN, 9 
    learnset MOVE_GRASS_WHISTLE, 13 
    learnset MOVE_LEECH_SEED, 17 
    learnset MOVE_ENDEAVOR, 21 
    learnset MOVE_WORRY_SEED, 25 
    learnset MOVE_RAZOR_LEAF, 29 
    learnset MOVE_SYNTHESIS, 33 
    learnset MOVE_SUNNY_DAY, 37 
    learnset MOVE_GIGA_DRAIN, 41 
    learnset MOVE_SEED_BOMB, 45 
    terminatelearnset

levelup SPECIES_SUNFLORA
    learnset MOVE_ABSORB, 1 
    learnset MOVE_POUND, 1 
    learnset MOVE_GROWTH, 1 
    learnset MOVE_MEGA_DRAIN, 5 
    learnset MOVE_INGRAIN, 9 
    learnset MOVE_GRASS_WHISTLE, 13 
    learnset MOVE_LEECH_SEED, 17 
    learnset MOVE_BULLET_SEED, 21 
    learnset MOVE_WORRY_SEED, 25 
    learnset MOVE_RAZOR_LEAF, 29 
    learnset MOVE_PETAL_DANCE, 33 
    learnset MOVE_SUNNY_DAY, 37 
    learnset MOVE_SOLAR_BEAM, 41 
    learnset MOVE_LEAF_STORM, 43 
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
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_MUD_SPORT, 5 
    learnset MOVE_MUD_SHOT, 9 
    learnset MOVE_SLAM, 15 
    learnset MOVE_MUD_BOMB, 19 
    learnset MOVE_AMNESIA, 23 
    learnset MOVE_YAWN, 29 
    learnset MOVE_EARTHQUAKE, 33 
    learnset MOVE_RAIN_DANCE, 37 
    learnset MOVE_MIST, 43 
    learnset MOVE_HAZE, 43 
    learnset MOVE_MUDDY_WATER, 47 
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
    learnset MOVE_FAINT_ATTACK, 36 
    learnset MOVE_ASSURANCE, 43 
    learnset MOVE_LAST_RESORT, 50 
    learnset MOVE_MEAN_LOOK, 57 
    learnset MOVE_SCREECH, 64 
    learnset MOVE_MOONLIGHT, 71 
    learnset MOVE_GUARD_SWAP, 78 
    terminatelearnset

levelup SPECIES_MURKROW
    learnset MOVE_PECK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_PURSUIT, 5 
    learnset MOVE_HAZE, 11 
    learnset MOVE_WING_ATTACK, 15 
    learnset MOVE_NIGHT_SHADE, 21 
    learnset MOVE_ASSURANCE, 25 
    learnset MOVE_TAUNT, 31 
    learnset MOVE_FAINT_ATTACK, 35 
    learnset MOVE_MEAN_LOOK, 41 
    learnset MOVE_SUCKER_PUNCH, 45 
    terminatelearnset

levelup SPECIES_SLOWKING
    learnset MOVE_POWER_GEM, 1 
    learnset MOVE_HIDDEN_POWER, 1 
    learnset MOVE_CURSE, 1 
    learnset MOVE_YAWN, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 6 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_PSYWAVE, 1 
    learnset MOVE_SPITE, 5 
    learnset MOVE_ASTONISH, 10 
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
    learnset MOVE_HIDDEN_POWER, 1 
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
    learnset MOVE_PROTECT, 1 
    learnset MOVE_SELF_DESTRUCT, 6 
    learnset MOVE_BUG_BITE, 9 
    learnset MOVE_TAKE_DOWN, 12 
    learnset MOVE_RAPID_SPIN, 17 
    learnset MOVE_BIDE, 20 
    learnset MOVE_NATURAL_GIFT, 23 
    learnset MOVE_SPIKES, 28 
    learnset MOVE_PAYBACK, 31 
    learnset MOVE_EXPLOSION, 34 
    learnset MOVE_IRON_DEFENSE, 39 
    learnset MOVE_GYRO_BALL, 42 
    learnset MOVE_DOUBLE_EDGE, 45 
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
    learnset MOVE_FAINT_ATTACK, 23 
    learnset MOVE_SCREECH, 27 
    learnset MOVE_SLASH, 31 
    learnset MOVE_SWORDS_DANCE, 34 
    learnset MOVE_U_TURN, 38 
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
    learnset MOVE_TAKE_DOWN, 37 
    learnset MOVE_PAYBACK, 43 
    learnset MOVE_CRUNCH, 49 
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
    learnset MOVE_CRUNCH, 59 
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
    learnset MOVE_FAINT_ATTACK, 14 
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
    learnset MOVE_FAINT_ATTACK, 15 
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
    learnset MOVE_FAINT_ATTACK, 15 
    learnset MOVE_SWEET_SCENT, 22 
    learnset MOVE_SLASH, 29 
    learnset MOVE_SCARY_FACE, 38 
    learnset MOVE_REST, 47 
    learnset MOVE_SNORE, 49 
    learnset MOVE_THRASH, 58 
    learnset MOVE_HAMMER_ARM, 67 
    terminatelearnset

levelup SPECIES_SLUGMA
    learnset MOVE_YAWN, 1 
    learnset MOVE_SMOG, 1 
    learnset MOVE_EMBER, 8 
    learnset MOVE_ROCK_THROW, 11 
    learnset MOVE_HARDEN, 16 
    learnset MOVE_RECOVER, 23 
    learnset MOVE_ANCIENT_POWER, 26 
    learnset MOVE_AMNESIA, 31 
    learnset MOVE_LAVA_PLUME, 38 
    learnset MOVE_ROCK_SLIDE, 41 
    learnset MOVE_BODY_SLAM, 46 
    learnset MOVE_FLAMETHROWER, 53 
    learnset MOVE_EARTH_POWER, 56 
    terminatelearnset

levelup SPECIES_MAGCARGO
    learnset MOVE_YAWN, 1 
    learnset MOVE_SMOG, 1 
    learnset MOVE_EMBER, 1 
    learnset MOVE_ROCK_THROW, 1 
    learnset MOVE_EMBER, 8 
    learnset MOVE_ROCK_THROW, 11 
    learnset MOVE_HARDEN, 16 
    learnset MOVE_RECOVER, 23 
    learnset MOVE_ANCIENT_POWER, 26 
    learnset MOVE_AMNESIA, 31 
    learnset MOVE_LAVA_PLUME, 40 
    learnset MOVE_ROCK_SLIDE, 45 
    learnset MOVE_BODY_SLAM, 52 
    learnset MOVE_FLAMETHROWER, 61 
    learnset MOVE_EARTH_POWER, 66 
    terminatelearnset

levelup SPECIES_SWINUB
    learnset MOVE_TACKLE, 1 
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_MUD_SPORT, 4 
    learnset MOVE_POWDER_SNOW, 8 
    learnset MOVE_MUD_SLAP, 13 
    learnset MOVE_ENDURE, 16 
    learnset MOVE_MUD_BOMB, 20 
    learnset MOVE_ICY_WIND, 25 
    learnset MOVE_ICE_SHARD, 28 
    learnset MOVE_TAKE_DOWN, 32 
    learnset MOVE_EARTHQUAKE, 37 
    learnset MOVE_MIST, 40 
    learnset MOVE_BLIZZARD, 44 
    learnset MOVE_AMNESIA, 49 
    terminatelearnset

levelup SPECIES_PILOSWINE
    learnset MOVE_ANCIENT_POWER, 1 
    learnset MOVE_PECK, 1 
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_MUD_SPORT, 1 
    learnset MOVE_POWDER_SNOW, 1 
    learnset MOVE_MUD_SPORT, 4 
    learnset MOVE_POWDER_SNOW, 8 
    learnset MOVE_MUD_SLAP, 13 
    learnset MOVE_ENDURE, 16 
    learnset MOVE_MUD_BOMB, 20 
    learnset MOVE_ICY_WIND, 25 
    learnset MOVE_ICE_FANG, 28 
    learnset MOVE_TAKE_DOWN, 32 
    learnset MOVE_FURY_ATTACK, 33 
    learnset MOVE_EARTHQUAKE, 40 
    learnset MOVE_MIST, 48 
    learnset MOVE_BLIZZARD, 56 
    learnset MOVE_AMNESIA, 65 
    terminatelearnset

levelup SPECIES_CORSOLA
    learnset MOVE_TACKLE, 1 
    learnset MOVE_HARDEN, 4 
    learnset MOVE_BUBBLE, 8 
    learnset MOVE_RECOVER, 13 
    learnset MOVE_REFRESH, 16 
    learnset MOVE_ROCK_BLAST, 20 
    learnset MOVE_BUBBLE_BEAM, 25 
    learnset MOVE_LUCKY_CHANT, 28 
    learnset MOVE_ANCIENT_POWER, 32 
    learnset MOVE_AQUA_RING, 37 
    learnset MOVE_SPIKE_CANNON, 40 
    learnset MOVE_POWER_GEM, 44 
    learnset MOVE_MIRROR_COAT, 48 
    learnset MOVE_EARTH_POWER, 53 
    terminatelearnset

levelup SPECIES_REMORAID
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_LOCK_ON, 6 
    learnset MOVE_PSYBEAM, 10 
    learnset MOVE_AURORA_BEAM, 14 
    learnset MOVE_BUBBLE_BEAM, 19 
    learnset MOVE_FOCUS_ENERGY, 23 
    learnset MOVE_BULLET_SEED, 27 
    learnset MOVE_WATER_PULSE, 32 
    learnset MOVE_SIGNAL_BEAM, 36 
    learnset MOVE_ICE_BEAM, 40 
    learnset MOVE_HYPER_BEAM, 45 
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
    learnset MOVE_EMBER, 1 
    learnset MOVE_HOWL, 4 
    learnset MOVE_SMOG, 9 
    learnset MOVE_ROAR, 14 
    learnset MOVE_BITE, 17 
    learnset MOVE_ODOR_SLEUTH, 22 
    learnset MOVE_BEAT_UP, 27 
    learnset MOVE_FIRE_FANG, 30 
    learnset MOVE_FAINT_ATTACK, 35 
    learnset MOVE_EMBARGO, 40 
    learnset MOVE_FLAMETHROWER, 43 
    learnset MOVE_CRUNCH, 48 
    learnset MOVE_NASTY_PLOT, 53 
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
    learnset MOVE_FAINT_ATTACK, 38 
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
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_DEFENSE_CURL, 1 
    learnset MOVE_FLAIL, 6 
    learnset MOVE_TAKE_DOWN, 10 
    learnset MOVE_ROLLOUT, 15 
    learnset MOVE_NATURAL_GIFT, 19 
    learnset MOVE_SLAM, 24 
    learnset MOVE_ENDURE, 28 
    learnset MOVE_CHARM, 33 
    learnset MOVE_LAST_RESORT, 37 
    learnset MOVE_DOUBLE_EDGE, 42 
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
    learnset MOVE_LICK, 5 
    learnset MOVE_SWEET_KISS, 8 
    learnset MOVE_POWDER_SNOW, 11 
    learnset MOVE_CONFUSION, 15 
    learnset MOVE_SING, 18 
    learnset MOVE_MEAN_LOOK, 21 
    learnset MOVE_FAKE_TEARS, 25 
    learnset MOVE_LUCKY_CHANT, 28 
    learnset MOVE_AVALANCHE, 31 
    learnset MOVE_PSYCHIC, 35 
    learnset MOVE_COPYCAT, 38 
    learnset MOVE_PERISH_SONG, 41 
    learnset MOVE_BLIZZARD, 45 
    terminatelearnset

levelup SPECIES_ELEKID
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_THUNDER_SHOCK, 7 
    learnset MOVE_LOW_KICK, 10 
    learnset MOVE_SWIFT, 16 
    learnset MOVE_SHOCK_WAVE, 19 
    learnset MOVE_LIGHT_SCREEN, 25 
    learnset MOVE_THUNDER_PUNCH, 28 
    learnset MOVE_DISCHARGE, 34 
    learnset MOVE_THUNDERBOLT, 37 
    learnset MOVE_SCREECH, 43 
    learnset MOVE_THUNDER, 46 
    terminatelearnset

levelup SPECIES_MAGBY
    learnset MOVE_SMOG, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_EMBER, 7 
    learnset MOVE_SMOKESCREEN, 10 
    learnset MOVE_FAINT_ATTACK, 16 
    learnset MOVE_FIRE_SPIN, 19 
    learnset MOVE_CONFUSE_RAY, 25 
    learnset MOVE_FIRE_PUNCH, 28 
    learnset MOVE_LAVA_PLUME, 34 
    learnset MOVE_FLAMETHROWER, 37 
    learnset MOVE_SUNNY_DAY, 43 
    learnset MOVE_FIRE_BLAST, 46 
    terminatelearnset

levelup SPECIES_MILTANK
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 3 
    learnset MOVE_DEFENSE_CURL, 5 
    learnset MOVE_STOMP, 8 
    learnset MOVE_MILK_DRINK, 11 
    learnset MOVE_BIDE, 15 
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
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_THUNDER_SHOCK, 8 
    learnset MOVE_ROAR, 15 
    learnset MOVE_QUICK_ATTACK, 22 
    learnset MOVE_SPARK, 29 
    learnset MOVE_REFLECT, 36 
    learnset MOVE_CRUNCH, 43 
    learnset MOVE_THUNDER_FANG, 50 
    learnset MOVE_DISCHARGE, 57 
    learnset MOVE_EXTRASENSORY, 64 
    learnset MOVE_RAIN_DANCE, 71 
    learnset MOVE_CALM_MIND, 78 
    learnset MOVE_THUNDER, 85 
    terminatelearnset

levelup SPECIES_ENTEI
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_EMBER, 8 
    learnset MOVE_ROAR, 15 
    learnset MOVE_FIRE_SPIN, 22 
    learnset MOVE_STOMP, 29 
    learnset MOVE_FLAMETHROWER, 36 
    learnset MOVE_SWAGGER, 43 
    learnset MOVE_FIRE_FANG, 50 
    learnset MOVE_LAVA_PLUME, 57 
    learnset MOVE_EXTRASENSORY, 64 
    learnset MOVE_FIRE_BLAST, 71 
    learnset MOVE_CALM_MIND, 78 
    learnset MOVE_ERUPTION, 85 
    terminatelearnset

levelup SPECIES_SUICUNE
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_BUBBLE_BEAM, 8 
    learnset MOVE_RAIN_DANCE, 15 
    learnset MOVE_GUST, 22 
    learnset MOVE_AURORA_BEAM, 29 
    learnset MOVE_MIST, 36 
    learnset MOVE_MIRROR_COAT, 43 
    learnset MOVE_ICE_FANG, 50 
    learnset MOVE_TAILWIND, 57 
    learnset MOVE_EXTRASENSORY, 64 
    learnset MOVE_HYDRO_PUMP, 71 
    learnset MOVE_CALM_MIND, 78 
    learnset MOVE_BLIZZARD, 85 
    terminatelearnset

levelup SPECIES_LARVITAR
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_SANDSTORM, 5 
    learnset MOVE_SCREECH, 10 
    learnset MOVE_ROCK_SLIDE, 14 
    learnset MOVE_SCARY_FACE, 19 
    learnset MOVE_THRASH, 23 
    learnset MOVE_DARK_PULSE, 28 
    learnset MOVE_PAYBACK, 32 
    learnset MOVE_CRUNCH, 37 
    learnset MOVE_EARTHQUAKE, 41 
    learnset MOVE_STONE_EDGE, 46 
    learnset MOVE_HYPER_BEAM, 50 
    terminatelearnset

levelup SPECIES_PUPITAR
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_SANDSTORM, 1 
    learnset MOVE_SCREECH, 1 
    learnset MOVE_SANDSTORM, 5 
    learnset MOVE_SCREECH, 10 
    learnset MOVE_ROCK_SLIDE, 14 
    learnset MOVE_SCARY_FACE, 19 
    learnset MOVE_THRASH, 23 
    learnset MOVE_DARK_PULSE, 28 
    learnset MOVE_PAYBACK, 34 
    learnset MOVE_CRUNCH, 41 
    learnset MOVE_EARTHQUAKE, 47 
    learnset MOVE_STONE_EDGE, 54 
    learnset MOVE_HYPER_BEAM, 60 
    terminatelearnset

levelup SPECIES_TYRANITAR
    learnset MOVE_THUNDER_FANG, 1 
    learnset MOVE_ICE_FANG, 1 
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_SANDSTORM, 1 
    learnset MOVE_SCREECH, 1 
    learnset MOVE_SANDSTORM, 5 
    learnset MOVE_SCREECH, 10 
    learnset MOVE_ROCK_SLIDE, 14 
    learnset MOVE_SCARY_FACE, 19 
    learnset MOVE_THRASH, 23 
    learnset MOVE_DARK_PULSE, 28 
    learnset MOVE_PAYBACK, 34 
    learnset MOVE_CRUNCH, 41 
    learnset MOVE_EARTHQUAKE, 47 
    learnset MOVE_STONE_EDGE, 54 
    learnset MOVE_HYPER_BEAM, 70 
    terminatelearnset

levelup SPECIES_LUGIA
    learnset MOVE_WHIRLWIND, 1 
    learnset MOVE_WEATHER_BALL, 1 
    learnset MOVE_GUST, 9 
    learnset MOVE_DRAGON_RUSH, 15 
    learnset MOVE_EXTRASENSORY, 23 
    learnset MOVE_RAIN_DANCE, 29 
    learnset MOVE_HYDRO_PUMP, 37 
    learnset MOVE_AEROBLAST, 43 
    learnset MOVE_PUNISHMENT, 50 
    learnset MOVE_ANCIENT_POWER, 57 
    learnset MOVE_SAFEGUARD, 65 
    learnset MOVE_RECOVER, 71 
    learnset MOVE_FUTURE_SIGHT, 79 
    learnset MOVE_NATURAL_GIFT, 85 
    learnset MOVE_CALM_MIND, 93 
    learnset MOVE_SKY_ATTACK, 99 
    terminatelearnset

levelup SPECIES_HO_OH
    learnset MOVE_WHIRLWIND, 1 
    learnset MOVE_WEATHER_BALL, 1 
    learnset MOVE_GUST, 9 
    learnset MOVE_BRAVE_BIRD, 15 
    learnset MOVE_EXTRASENSORY, 23 
    learnset MOVE_SUNNY_DAY, 29 
    learnset MOVE_FIRE_BLAST, 37 
    learnset MOVE_SACRED_FIRE, 43 
    learnset MOVE_PUNISHMENT, 50 
    learnset MOVE_ANCIENT_POWER, 57 
    learnset MOVE_SAFEGUARD, 65 
    learnset MOVE_RECOVER, 71 
    learnset MOVE_FUTURE_SIGHT, 79 
    learnset MOVE_NATURAL_GIFT, 85 
    learnset MOVE_CALM_MIND, 93 
    learnset MOVE_SKY_ATTACK, 99 
    terminatelearnset

levelup SPECIES_CELEBI
    learnset MOVE_LEECH_SEED, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_RECOVER, 1 
    learnset MOVE_HEAL_BELL, 1 
    learnset MOVE_SAFEGUARD, 10 
    learnset MOVE_MAGICAL_LEAF, 19 
    learnset MOVE_ANCIENT_POWER, 28 
    learnset MOVE_BATON_PASS, 37 
    learnset MOVE_NATURAL_GIFT, 46 
    learnset MOVE_HEAL_BLOCK, 55 
    learnset MOVE_FUTURE_SIGHT, 64 
    learnset MOVE_HEALING_WISH, 73 
    learnset MOVE_LEAF_STORM, 82 
    learnset MOVE_PERISH_SONG, 91 
    terminatelearnset

levelup SPECIES_TREECKO
    learnset MOVE_POUND, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_ABSORB, 6 
    learnset MOVE_QUICK_ATTACK, 11 
    learnset MOVE_PURSUIT, 16 
    learnset MOVE_SCREECH, 21 
    learnset MOVE_MEGA_DRAIN, 26 
    learnset MOVE_AGILITY, 31 
    learnset MOVE_SLAM, 36 
    learnset MOVE_DETECT, 41 
    learnset MOVE_GIGA_DRAIN, 46 
    learnset MOVE_ENERGY_BALL, 51 
    terminatelearnset

levelup SPECIES_GROVYLE
    learnset MOVE_POUND, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_ABSORB, 1 
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_ABSORB, 6 
    learnset MOVE_QUICK_ATTACK, 11 
    learnset MOVE_FURY_CUTTER, 16 
    learnset MOVE_PURSUIT, 17 
    learnset MOVE_SCREECH, 23 
    learnset MOVE_LEAF_BLADE, 29 
    learnset MOVE_AGILITY, 35 
    learnset MOVE_SLAM, 41 
    learnset MOVE_DETECT, 47 
    learnset MOVE_FALSE_SWIPE, 53 
    learnset MOVE_LEAF_STORM, 59 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_FOCUS_ENERGY, 7 
    learnset MOVE_EMBER, 10 
    learnset MOVE_PECK, 16 
    learnset MOVE_SAND_ATTACK, 19 
    learnset MOVE_FIRE_SPIN, 25 
    learnset MOVE_QUICK_ATTACK, 28 
    learnset MOVE_SLASH, 34 
    learnset MOVE_MIRROR_MOVE, 37 
    learnset MOVE_FLAMETHROWER, 43 
    terminatelearnset

levelup SPECIES_COMBUSKEN
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
    learnset MOVE_SLASH, 39 
    learnset MOVE_MIRROR_MOVE, 43 
    learnset MOVE_SKY_UPPERCUT, 50 
    learnset MOVE_FLARE_BLITZ, 54 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_MUD_SLAP, 6 
    learnset MOVE_WATER_GUN, 10 
    learnset MOVE_BIDE, 15 
    learnset MOVE_FORESIGHT, 19 
    learnset MOVE_MUD_SPORT, 24 
    learnset MOVE_TAKE_DOWN, 28 
    learnset MOVE_WHIRLPOOL, 33 
    learnset MOVE_PROTECT, 37 
    learnset MOVE_HYDRO_PUMP, 42 
    learnset MOVE_ENDEAVOR, 46 
    terminatelearnset

levelup SPECIES_MARSHTOMP
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
    learnset MOVE_MUDDY_WATER, 37 
    learnset MOVE_PROTECT, 42 
    learnset MOVE_EARTHQUAKE, 46 
    learnset MOVE_ENDEAVOR, 53 
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
    learnset MOVE_HOWL, 5 
    learnset MOVE_SAND_ATTACK, 9 
    learnset MOVE_BITE, 13 
    learnset MOVE_ODOR_SLEUTH, 17 
    learnset MOVE_ROAR, 21 
    learnset MOVE_SWAGGER, 25 
    learnset MOVE_ASSURANCE, 29 
    learnset MOVE_SCARY_FACE, 33 
    learnset MOVE_TAUNT, 37 
    learnset MOVE_EMBARGO, 41 
    learnset MOVE_TAKE_DOWN, 45 
    learnset MOVE_SUCKER_PUNCH, 49 
    learnset MOVE_CRUNCH, 53 
    terminatelearnset

levelup SPECIES_MIGHTYENA
    learnset MOVE_TACKLE, 1 
    learnset MOVE_HOWL, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_HOWL, 5 
    learnset MOVE_SAND_ATTACK, 9 
    learnset MOVE_BITE, 13 
    learnset MOVE_ODOR_SLEUTH, 17 
    learnset MOVE_ROAR, 22 
    learnset MOVE_SWAGGER, 27 
    learnset MOVE_ASSURANCE, 32 
    learnset MOVE_SCARY_FACE, 37 
    learnset MOVE_TAUNT, 42 
    learnset MOVE_EMBARGO, 47 
    learnset MOVE_TAKE_DOWN, 52 
    learnset MOVE_THIEF, 57 
    learnset MOVE_SUCKER_PUNCH, 62 
    terminatelearnset

levelup SPECIES_ZIGZAGOON
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_TAIL_WHIP, 5 
    learnset MOVE_HEADBUTT, 9 
    learnset MOVE_SAND_ATTACK, 13 
    learnset MOVE_ODOR_SLEUTH, 17 
    learnset MOVE_MUD_SPORT, 21 
    learnset MOVE_PIN_MISSILE, 25 
    learnset MOVE_COVET, 29 
    learnset MOVE_FLAIL, 33 
    learnset MOVE_REST, 37 
    learnset MOVE_BELLY_DRUM, 41 
    learnset MOVE_FLING, 45 
    terminatelearnset

levelup SPECIES_LINOONE
    learnset MOVE_SWITCHEROO, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_TAIL_WHIP, 5 
    learnset MOVE_HEADBUTT, 9 
    learnset MOVE_SAND_ATTACK, 13 
    learnset MOVE_ODOR_SLEUTH, 17 
    learnset MOVE_MUD_SPORT, 23 
    learnset MOVE_FURY_SWIPES, 29 
    learnset MOVE_COVET, 35 
    learnset MOVE_SLASH, 41 
    learnset MOVE_REST, 47 
    learnset MOVE_BELLY_DRUM, 53 
    learnset MOVE_FLING, 59 
    terminatelearnset

levelup SPECIES_WURMPLE
    learnset MOVE_TACKLE, 1 
    learnset MOVE_STRING_SHOT, 1 
    learnset MOVE_POISON_STING, 5 
    learnset MOVE_BUG_BITE, 15 
    terminatelearnset

levelup SPECIES_SILCOON
    learnset MOVE_HARDEN, 1 
    learnset MOVE_HARDEN, 7 
    terminatelearnset

levelup SPECIES_BEAUTIFLY
    learnset MOVE_ABSORB, 1 
    learnset MOVE_ABSORB, 10 
    learnset MOVE_GUST, 13 
    learnset MOVE_STUN_SPORE, 17 
    learnset MOVE_MORNING_SUN, 20 
    learnset MOVE_MEGA_DRAIN, 24 
    learnset MOVE_WHIRLWIND, 27 
    learnset MOVE_ATTRACT, 31 
    learnset MOVE_SILVER_WIND, 34 
    learnset MOVE_GIGA_DRAIN, 38 
    learnset MOVE_BUG_BUZZ, 41 
    terminatelearnset

levelup SPECIES_CASCOON
    learnset MOVE_HARDEN, 1 
    learnset MOVE_HARDEN, 7 
    terminatelearnset

levelup SPECIES_DUSTOX
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_CONFUSION, 10 
    learnset MOVE_GUST, 13 
    learnset MOVE_PROTECT, 17 
    learnset MOVE_MOONLIGHT, 20 
    learnset MOVE_PSYBEAM, 24 
    learnset MOVE_WHIRLWIND, 27 
    learnset MOVE_LIGHT_SCREEN, 31 
    learnset MOVE_SILVER_WIND, 34 
    learnset MOVE_TOXIC, 38 
    learnset MOVE_BUG_BUZZ, 41 
    terminatelearnset

levelup SPECIES_LOTAD
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_GROWL, 3 
    learnset MOVE_ABSORB, 5 
    learnset MOVE_NATURE_POWER, 7 
    learnset MOVE_MIST, 11 
    learnset MOVE_NATURAL_GIFT, 15 
    learnset MOVE_MEGA_DRAIN, 19 
    learnset MOVE_BUBBLE_BEAM, 25 
    learnset MOVE_ZEN_HEADBUTT, 31 
    learnset MOVE_RAIN_DANCE, 37 
    learnset MOVE_ENERGY_BALL, 45 
    terminatelearnset

levelup SPECIES_LOMBRE
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_GROWL, 3 
    learnset MOVE_ABSORB, 5 
    learnset MOVE_NATURE_POWER, 7 
    learnset MOVE_FAKE_OUT, 11 
    learnset MOVE_FURY_SWIPES, 15 
    learnset MOVE_WATER_SPORT, 19 
    learnset MOVE_BUBBLE_BEAM, 25 
    learnset MOVE_ZEN_HEADBUTT, 31 
    learnset MOVE_UPROAR, 37 
    learnset MOVE_HYDRO_PUMP, 45 
    terminatelearnset

levelup SPECIES_LUDICOLO
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_MEGA_DRAIN, 1 
    learnset MOVE_NATURE_POWER, 1 
    terminatelearnset

levelup SPECIES_SEEDOT
    learnset MOVE_BIDE, 1 
    learnset MOVE_HARDEN, 3 
    learnset MOVE_GROWTH, 7 
    learnset MOVE_NATURE_POWER, 13 
    learnset MOVE_SYNTHESIS, 21 
    learnset MOVE_SUNNY_DAY, 31 
    learnset MOVE_EXPLOSION, 43 
    terminatelearnset

levelup SPECIES_NUZLEAF
    learnset MOVE_RAZOR_LEAF, 1 
    learnset MOVE_POUND, 1 
    learnset MOVE_HARDEN, 3 
    learnset MOVE_GROWTH, 7 
    learnset MOVE_NATURE_POWER, 13 
    learnset MOVE_FAKE_OUT, 19 
    learnset MOVE_TORMENT, 25 
    learnset MOVE_FAINT_ATTACK, 31 
    learnset MOVE_RAZOR_WIND, 37 
    learnset MOVE_SWAGGER, 43 
    learnset MOVE_EXTRASENSORY, 49 
    terminatelearnset

levelup SPECIES_SHIFTRY
    learnset MOVE_FAINT_ATTACK, 1 
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
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_SUPERSONIC, 6 
    learnset MOVE_WING_ATTACK, 11 
    learnset MOVE_MIST, 16 
    learnset MOVE_WATER_PULSE, 19 
    learnset MOVE_QUICK_ATTACK, 24 
    learnset MOVE_ROOST, 29 
    learnset MOVE_PURSUIT, 34 
    learnset MOVE_AGILITY, 37 
    learnset MOVE_AERIAL_ACE, 42 
    learnset MOVE_AIR_SLASH, 47 
    terminatelearnset

levelup SPECIES_PELIPPER
    learnset MOVE_GROWL, 1 
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_WATER_SPORT, 1 
    learnset MOVE_WING_ATTACK, 1 
    learnset MOVE_SUPERSONIC, 6 
    learnset MOVE_WING_ATTACK, 11 
    learnset MOVE_MIST, 16 
    learnset MOVE_WATER_PULSE, 19 
    learnset MOVE_PAYBACK, 24 
    learnset MOVE_PROTECT, 25 
    learnset MOVE_ROOST, 31 
    learnset MOVE_STOCKPILE, 38 
    learnset MOVE_SWALLOW, 38 
    learnset MOVE_SPIT_UP, 38 
    learnset MOVE_FLING, 43 
    learnset MOVE_TAILWIND, 50 
    learnset MOVE_HYDRO_PUMP, 57 
    terminatelearnset

levelup SPECIES_RALTS
    learnset MOVE_GROWL, 1 
    learnset MOVE_CONFUSION, 6 
    learnset MOVE_DOUBLE_TEAM, 10 
    learnset MOVE_TELEPORT, 12 
    learnset MOVE_LUCKY_CHANT, 17 
    learnset MOVE_MAGICAL_LEAF, 21 
    learnset MOVE_CALM_MIND, 23 
    learnset MOVE_PSYCHIC, 28 
    learnset MOVE_IMPRISON, 32 
    learnset MOVE_FUTURE_SIGHT, 34 
    learnset MOVE_CHARM, 39 
    learnset MOVE_HYPNOSIS, 43 
    learnset MOVE_DREAM_EATER, 45 
    terminatelearnset

levelup SPECIES_KIRLIA
    learnset MOVE_GROWL, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_DOUBLE_TEAM, 1 
    learnset MOVE_TELEPORT, 1 
    learnset MOVE_CONFUSION, 6 
    learnset MOVE_DOUBLE_TEAM, 10 
    learnset MOVE_TELEPORT, 12 
    learnset MOVE_LUCKY_CHANT, 17 
    learnset MOVE_MAGICAL_LEAF, 22 
    learnset MOVE_CALM_MIND, 25 
    learnset MOVE_PSYCHIC, 31 
    learnset MOVE_IMPRISON, 36 
    learnset MOVE_FUTURE_SIGHT, 39 
    learnset MOVE_CHARM, 45 
    learnset MOVE_HYPNOSIS, 50 
    learnset MOVE_DREAM_EATER, 53 
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
    learnset MOVE_QUICK_ATTACK, 7 
    learnset MOVE_SWEET_SCENT, 13 
    learnset MOVE_WATER_SPORT, 19 
    learnset MOVE_BUBBLE_BEAM, 25 
    learnset MOVE_AGILITY, 31 
    learnset MOVE_MIST, 37 
    learnset MOVE_HAZE, 37 
    learnset MOVE_BATON_PASS, 43 
    terminatelearnset

levelup SPECIES_MASQUERAIN
    learnset MOVE_OMINOUS_WIND, 1 
    learnset MOVE_BUBBLE, 1 
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_SWEET_SCENT, 1 
    learnset MOVE_WATER_SPORT, 1 
    learnset MOVE_QUICK_ATTACK, 7 
    learnset MOVE_SWEET_SCENT, 13 
    learnset MOVE_WATER_SPORT, 19 
    learnset MOVE_GUST, 22 
    learnset MOVE_SCARY_FACE, 26 
    learnset MOVE_STUN_SPORE, 33 
    learnset MOVE_SILVER_WIND, 40 
    learnset MOVE_AIR_SLASH, 47 
    learnset MOVE_WHIRLWIND, 54 
    learnset MOVE_BUG_BUZZ, 61 
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
    learnset MOVE_YAWN, 1 
    learnset MOVE_ENCORE, 7 
    learnset MOVE_SLACK_OFF, 13 
    learnset MOVE_FAINT_ATTACK, 19 
    learnset MOVE_AMNESIA, 25 
    learnset MOVE_COVET, 31 
    learnset MOVE_COUNTER, 37 
    learnset MOVE_FLAIL, 43 
    terminatelearnset

levelup SPECIES_VIGOROTH
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FOCUS_ENERGY, 1 
    learnset MOVE_ENCORE, 1 
    learnset MOVE_UPROAR, 1 
    learnset MOVE_ENCORE, 7 
    learnset MOVE_UPROAR, 13 
    learnset MOVE_FURY_SWIPES, 19 
    learnset MOVE_ENDURE, 25 
    learnset MOVE_SLASH, 31 
    learnset MOVE_COUNTER, 37 
    learnset MOVE_FOCUS_PUNCH, 43 
    learnset MOVE_REVERSAL, 49 
    terminatelearnset

levelup SPECIES_SLAKING
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_YAWN, 1 
    learnset MOVE_ENCORE, 1 
    learnset MOVE_SLACK_OFF, 1 
    learnset MOVE_ENCORE, 7 
    learnset MOVE_SLACK_OFF, 13 
    learnset MOVE_FAINT_ATTACK, 19 
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
    learnset MOVE_HARDEN, 1 
    learnset MOVE_LEECH_LIFE, 5 
    learnset MOVE_SAND_ATTACK, 9 
    learnset MOVE_FURY_SWIPES, 14 
    learnset MOVE_MIND_READER, 19 
    learnset MOVE_FALSE_SWIPE, 25 
    learnset MOVE_MUD_SLAP, 31 
    learnset MOVE_METAL_CLAW, 38 
    learnset MOVE_DIG, 45 
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
    learnset MOVE_POUND, 1 
    learnset MOVE_UPROAR, 5 
    learnset MOVE_ASTONISH, 11 
    learnset MOVE_HOWL, 15 
    learnset MOVE_SUPERSONIC, 21 
    learnset MOVE_STOMP, 25 
    learnset MOVE_SCREECH, 31 
    learnset MOVE_ROAR, 35 
    learnset MOVE_REST, 41 
    learnset MOVE_SLEEP_TALK, 41 
    learnset MOVE_HYPER_VOICE, 45 
    terminatelearnset

levelup SPECIES_LOUDRED
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
    learnset MOVE_ROAR, 43 
    learnset MOVE_REST, 51 
    learnset MOVE_SLEEP_TALK, 51 
    learnset MOVE_HYPER_VOICE, 57 
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
    learnset MOVE_VITAL_THROW, 10 
    learnset MOVE_FAKE_OUT, 13 
    learnset MOVE_WHIRLWIND, 16 
    learnset MOVE_KNOCK_OFF, 19 
    learnset MOVE_SMELLING_SALT, 22 
    learnset MOVE_BELLY_DRUM, 25 
    learnset MOVE_FORCE_PALM, 28 
    learnset MOVE_SEISMIC_TOSS, 31 
    learnset MOVE_WAKE_UP_SLAP, 34 
    learnset MOVE_ENDURE, 37 
    learnset MOVE_CLOSE_COMBAT, 40 
    learnset MOVE_REVERSAL, 43 
    terminatelearnset

levelup SPECIES_HARIYAMA
    learnset MOVE_BRINE, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_FOCUS_ENERGY, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_ARM_THRUST, 1 
    learnset MOVE_SAND_ATTACK, 4 
    learnset MOVE_ARM_THRUST, 7 
    learnset MOVE_VITAL_THROW, 10 
    learnset MOVE_FAKE_OUT, 13 
    learnset MOVE_WHIRLWIND, 16 
    learnset MOVE_KNOCK_OFF, 19 
    learnset MOVE_SMELLING_SALT, 22 
    learnset MOVE_BELLY_DRUM, 27 
    learnset MOVE_FORCE_PALM, 32 
    learnset MOVE_SEISMIC_TOSS, 37 
    learnset MOVE_WAKE_UP_SLAP, 42 
    learnset MOVE_ENDURE, 47 
    learnset MOVE_CLOSE_COMBAT, 52 
    learnset MOVE_REVERSAL, 57 
    terminatelearnset

levelup SPECIES_AZURILL
    learnset MOVE_SPLASH, 1 
    learnset MOVE_CHARM, 2 
    learnset MOVE_TAIL_WHIP, 7 
    learnset MOVE_BUBBLE, 10 
    learnset MOVE_SLAM, 15 
    learnset MOVE_WATER_GUN, 18 
    terminatelearnset

levelup SPECIES_NOSEPASS
    learnset MOVE_TACKLE, 1 
    learnset MOVE_HARDEN, 7 
    learnset MOVE_ROCK_THROW, 13 
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

levelup SPECIES_SKITTY
    learnset MOVE_FAKE_OUT, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_FORESIGHT, 4 
    learnset MOVE_ATTRACT, 8 
    learnset MOVE_SING, 11 
    learnset MOVE_DOUBLE_SLAP, 15 
    learnset MOVE_COPYCAT, 18 
    learnset MOVE_ASSIST, 22 
    learnset MOVE_CHARM, 25 
    learnset MOVE_FAINT_ATTACK, 29 
    learnset MOVE_WAKE_UP_SLAP, 32 
    learnset MOVE_COVET, 36 
    learnset MOVE_HEAL_BELL, 39 
    learnset MOVE_DOUBLE_EDGE, 42 
    learnset MOVE_CAPTIVATE, 46 
    terminatelearnset

levelup SPECIES_DELCATTY
    learnset MOVE_FAKE_OUT, 1 
    learnset MOVE_ATTRACT, 1 
    learnset MOVE_SING, 1 
    learnset MOVE_DOUBLE_SLAP, 1 
    terminatelearnset

levelup SPECIES_SABLEYE
    learnset MOVE_LEER, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FORESIGHT, 4 
    learnset MOVE_NIGHT_SHADE, 8 
    learnset MOVE_ASTONISH, 11 
    learnset MOVE_FURY_SWIPES, 15 
    learnset MOVE_FAKE_OUT, 18 
    learnset MOVE_DETECT, 22 
    learnset MOVE_SHADOW_SNEAK, 25 
    learnset MOVE_KNOCK_OFF, 29 
    learnset MOVE_FAINT_ATTACK, 32 
    learnset MOVE_PUNISHMENT, 36 
    learnset MOVE_SHADOW_CLAW, 39 
    learnset MOVE_POWER_GEM, 43 
    learnset MOVE_CONFUSE_RAY, 46 
    learnset MOVE_ZEN_HEADBUTT, 50 
    learnset MOVE_SHADOW_BALL, 53 
    learnset MOVE_MEAN_LOOK, 57 
    terminatelearnset

levelup SPECIES_MAWILE
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_FAKE_TEARS, 6 
    learnset MOVE_BITE, 11 
    learnset MOVE_SWEET_SCENT, 16 
    learnset MOVE_VICE_GRIP, 21 
    learnset MOVE_FAINT_ATTACK, 26 
    learnset MOVE_BATON_PASS, 31 
    learnset MOVE_CRUNCH, 36 
    learnset MOVE_IRON_DEFENSE, 41 
    learnset MOVE_SUCKER_PUNCH, 46 
    learnset MOVE_STOCKPILE, 51 
    learnset MOVE_SWALLOW, 51 
    learnset MOVE_SPIT_UP, 51 
    learnset MOVE_IRON_HEAD, 56 
    terminatelearnset

levelup SPECIES_ARON
    learnset MOVE_TACKLE, 1 
    learnset MOVE_HARDEN, 4 
    learnset MOVE_MUD_SLAP, 8 
    learnset MOVE_HEADBUTT, 11 
    learnset MOVE_METAL_CLAW, 15 
    learnset MOVE_IRON_DEFENSE, 18 
    learnset MOVE_ROAR, 22 
    learnset MOVE_TAKE_DOWN, 25 
    learnset MOVE_IRON_HEAD, 29 
    learnset MOVE_PROTECT, 32 
    learnset MOVE_METAL_SOUND, 36 
    learnset MOVE_IRON_TAIL, 39 
    learnset MOVE_DOUBLE_EDGE, 43 
    learnset MOVE_METAL_BURST, 46 
    terminatelearnset

levelup SPECIES_LAIRON
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
    learnset MOVE_IRON_TAIL, 45 
    learnset MOVE_DOUBLE_EDGE, 51 
    learnset MOVE_METAL_BURST, 56 
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
    learnset MOVE_MEDITATE, 4 
    learnset MOVE_CONFUSION, 8 
    learnset MOVE_DETECT, 11 
    learnset MOVE_HIDDEN_POWER, 15 
    learnset MOVE_MIND_READER, 18 
    learnset MOVE_FEINT, 22 
    learnset MOVE_CALM_MIND, 25 
    learnset MOVE_FORCE_PALM, 29 
    learnset MOVE_HI_JUMP_KICK, 32 
    learnset MOVE_PSYCH_UP, 36 
    learnset MOVE_POWER_TRICK, 39 
    learnset MOVE_REVERSAL, 43 
    learnset MOVE_RECOVER, 46 
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
    learnset MOVE_HI_JUMP_KICK, 32 
    learnset MOVE_PSYCH_UP, 36 
    learnset MOVE_POWER_TRICK, 42 
    learnset MOVE_REVERSAL, 49 
    learnset MOVE_RECOVER, 55 
    terminatelearnset

levelup SPECIES_ELECTRIKE
    learnset MOVE_TACKLE, 1 
    learnset MOVE_THUNDER_WAVE, 4 
    learnset MOVE_LEER, 9 
    learnset MOVE_HOWL, 12 
    learnset MOVE_QUICK_ATTACK, 17 
    learnset MOVE_SPARK, 20 
    learnset MOVE_ODOR_SLEUTH, 25 
    learnset MOVE_BITE, 28 
    learnset MOVE_THUNDER_FANG, 33 
    learnset MOVE_ROAR, 36 
    learnset MOVE_DISCHARGE, 41 
    learnset MOVE_CHARGE, 44 
    learnset MOVE_THUNDER, 49 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_THUNDER_WAVE, 3 
    learnset MOVE_QUICK_ATTACK, 7 
    learnset MOVE_HELPING_HAND, 10 
    learnset MOVE_SPARK, 15 
    learnset MOVE_ENCORE, 17 
    learnset MOVE_FAKE_TEARS, 21 
    learnset MOVE_COPYCAT, 24 
    learnset MOVE_SWIFT, 29 
    learnset MOVE_FAKE_TEARS, 31 
    learnset MOVE_CHARGE, 35 
    learnset MOVE_THUNDER, 38 
    learnset MOVE_BATON_PASS, 42 
    learnset MOVE_AGILITY, 44 
    learnset MOVE_LAST_RESORT, 48 
    learnset MOVE_NASTY_PLOT, 51 
    terminatelearnset

levelup SPECIES_MINUN
    learnset MOVE_GROWL, 1 
    learnset MOVE_THUNDER_WAVE, 3 
    learnset MOVE_QUICK_ATTACK, 7 
    learnset MOVE_HELPING_HAND, 10 
    learnset MOVE_SPARK, 15 
    learnset MOVE_ENCORE, 17 
    learnset MOVE_CHARM, 21 
    learnset MOVE_COPYCAT, 24 
    learnset MOVE_SWIFT, 29 
    learnset MOVE_FAKE_TEARS, 31 
    learnset MOVE_CHARGE, 35 
    learnset MOVE_THUNDER, 38 
    learnset MOVE_BATON_PASS, 42 
    learnset MOVE_AGILITY, 44 
    learnset MOVE_TRUMP_CARD, 48 
    learnset MOVE_NASTY_PLOT, 51 
    terminatelearnset

levelup SPECIES_VOLBEAT
    learnset MOVE_FLASH, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_DOUBLE_TEAM, 5 
    learnset MOVE_CONFUSE_RAY, 9 
    learnset MOVE_MOONLIGHT, 13 
    learnset MOVE_QUICK_ATTACK, 17 
    learnset MOVE_TAIL_GLOW, 21 
    learnset MOVE_SIGNAL_BEAM, 25 
    learnset MOVE_PROTECT, 29 
    learnset MOVE_HELPING_HAND, 33 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_BUG_BUZZ, 41 
    learnset MOVE_DOUBLE_EDGE, 45 
    terminatelearnset

levelup SPECIES_ILLUMISE
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SWEET_SCENT, 5 
    learnset MOVE_CHARM, 9 
    learnset MOVE_MOONLIGHT, 13 
    learnset MOVE_QUICK_ATTACK, 17 
    learnset MOVE_WISH, 21 
    learnset MOVE_ENCORE, 25 
    learnset MOVE_FLATTER, 29 
    learnset MOVE_HELPING_HAND, 33 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_BUG_BUZZ, 41 
    learnset MOVE_COVET, 45 
    terminatelearnset

levelup SPECIES_ROSELIA
    learnset MOVE_ABSORB, 1 
    learnset MOVE_GROWTH, 4 
    learnset MOVE_POISON_STING, 7 
    learnset MOVE_STUN_SPORE, 10 
    learnset MOVE_MEGA_DRAIN, 13 
    learnset MOVE_LEECH_SEED, 16 
    learnset MOVE_MAGICAL_LEAF, 19 
    learnset MOVE_GRASS_WHISTLE, 22 
    learnset MOVE_GIGA_DRAIN, 25 
    learnset MOVE_TOXIC_SPIKES, 28 
    learnset MOVE_SWEET_SCENT, 31 
    learnset MOVE_INGRAIN, 34 
    learnset MOVE_TOXIC, 37 
    learnset MOVE_PETAL_DANCE, 40 
    learnset MOVE_AROMATHERAPY, 43 
    learnset MOVE_SYNTHESIS, 46 
    terminatelearnset

levelup SPECIES_GULPIN
    learnset MOVE_POUND, 1 
    learnset MOVE_YAWN, 6 
    learnset MOVE_POISON_GAS, 9 
    learnset MOVE_SLUDGE, 14 
    learnset MOVE_AMNESIA, 17 
    learnset MOVE_ENCORE, 23 
    learnset MOVE_TOXIC, 28 
    learnset MOVE_STOCKPILE, 34 
    learnset MOVE_SPIT_UP, 34 
    learnset MOVE_SWALLOW, 34 
    learnset MOVE_SLUDGE_BOMB, 39 
    learnset MOVE_GASTRO_ACID, 44 
    learnset MOVE_WRING_OUT, 49 
    learnset MOVE_GUNK_SHOT, 54 
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
    learnset MOVE_BITE, 1 
    learnset MOVE_RAGE, 6 
    learnset MOVE_FOCUS_ENERGY, 8 
    learnset MOVE_SCARY_FACE, 11 
    learnset MOVE_ICE_FANG, 16 
    learnset MOVE_SCREECH, 18 
    learnset MOVE_SWAGGER, 21 
    learnset MOVE_ASSURANCE, 26 
    learnset MOVE_CRUNCH, 28 
    learnset MOVE_AQUA_JET, 31 
    learnset MOVE_AGILITY, 36 
    learnset MOVE_TAKE_DOWN, 38 
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
    learnset MOVE_DIVE, 41 
    learnset MOVE_BOUNCE, 44 
    learnset MOVE_HYDRO_PUMP, 47 
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
    learnset MOVE_DIVE, 46 
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
    learnset MOVE_PSYWAVE, 7 
    learnset MOVE_ODOR_SLEUTH, 10 
    learnset MOVE_PSYBEAM, 14 
    learnset MOVE_PSYCH_UP, 15 
    learnset MOVE_CONFUSE_RAY, 18 
    learnset MOVE_MAGIC_COAT, 21 
    learnset MOVE_ZEN_HEADBUTT, 26 
    learnset MOVE_REST, 29 
    learnset MOVE_SNORE, 29 
    learnset MOVE_PAYBACK, 34 
    learnset MOVE_PSYCHIC, 41 
    learnset MOVE_POWER_GEM, 46 
    learnset MOVE_BOUNCE, 48 
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
    learnset MOVE_UPROAR, 5 
    learnset MOVE_COPYCAT, 10 
    learnset MOVE_FAINT_ATTACK, 14 
    learnset MOVE_PSYBEAM, 19 
    learnset MOVE_HYPNOSIS, 23 
    learnset MOVE_DIZZY_PUNCH, 28 
    learnset MOVE_SUCKER_PUNCH, 32 
    learnset MOVE_TEETER_DANCE, 37 
    learnset MOVE_PSYCH_UP, 41 
    learnset MOVE_DOUBLE_EDGE, 46 
    learnset MOVE_FLAIL, 50 
    learnset MOVE_THRASH, 55 
    terminatelearnset

levelup SPECIES_TRAPINCH
    learnset MOVE_BITE, 1 
    learnset MOVE_SAND_ATTACK, 9 
    learnset MOVE_FAINT_ATTACK, 17 
    learnset MOVE_SAND_TOMB, 25 
    learnset MOVE_CRUNCH, 33 
    learnset MOVE_DIG, 41 
    learnset MOVE_SANDSTORM, 49 
    learnset MOVE_HYPER_BEAM, 57 
    learnset MOVE_EARTH_POWER, 65 
    learnset MOVE_EARTHQUAKE, 73 
    learnset MOVE_FEINT, 81 
    learnset MOVE_FISSURE, 89 
    terminatelearnset

levelup SPECIES_VIBRAVA
    learnset MOVE_SONIC_BOOM, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_FAINT_ATTACK, 1 
    learnset MOVE_SAND_TOMB, 1 
    learnset MOVE_SAND_ATTACK, 9 
    learnset MOVE_FAINT_ATTACK, 17 
    learnset MOVE_SAND_TOMB, 25 
    learnset MOVE_SUPERSONIC, 33 
    learnset MOVE_DRAGON_BREATH, 35 
    learnset MOVE_SCREECH, 41 
    learnset MOVE_SANDSTORM, 49 
    learnset MOVE_HYPER_BEAM, 57 
    terminatelearnset

levelup SPECIES_FLYGON
    learnset MOVE_SONIC_BOOM, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_FAINT_ATTACK, 1 
    learnset MOVE_SAND_TOMB, 1 
    learnset MOVE_SAND_ATTACK, 9 
    learnset MOVE_FAINT_ATTACK, 17 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_ABSORB, 5 
    learnset MOVE_GROWTH, 9 
    learnset MOVE_LEECH_SEED, 13 
    learnset MOVE_SAND_ATTACK, 17 
    learnset MOVE_PIN_MISSILE, 21 
    learnset MOVE_INGRAIN, 25 
    learnset MOVE_FAINT_ATTACK, 29 
    learnset MOVE_SPIKES, 33 
    learnset MOVE_SUCKER_PUNCH, 37 
    learnset MOVE_PAYBACK, 41 
    learnset MOVE_NEEDLE_ARM, 45 
    learnset MOVE_COTTON_SPORE, 49 
    learnset MOVE_SANDSTORM, 53 
    learnset MOVE_DESTINY_BOND, 57 
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
    learnset MOVE_FAINT_ATTACK, 29 
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
    learnset MOVE_ASTONISH, 5 
    learnset MOVE_SING, 9 
    learnset MOVE_FURY_ATTACK, 13 
    learnset MOVE_SAFEGUARD, 18 
    learnset MOVE_MIST, 23 
    learnset MOVE_TAKE_DOWN, 28 
    learnset MOVE_NATURAL_GIFT, 32 
    learnset MOVE_MIRROR_MOVE, 36 
    learnset MOVE_REFRESH, 40 
    learnset MOVE_DRAGON_PULSE, 45 
    learnset MOVE_PERISH_SONG, 50 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_QUICK_ATTACK, 5 
    learnset MOVE_SWORDS_DANCE, 9 
    learnset MOVE_FURY_CUTTER, 14 
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
    learnset MOVE_WRAP, 1 
    learnset MOVE_LICK, 7 
    learnset MOVE_BITE, 10 
    learnset MOVE_POISON_TAIL, 16 
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
    learnset MOVE_MUD_SPORT, 6 
    learnset MOVE_WATER_SPORT, 6 
    learnset MOVE_WATER_GUN, 10 
    learnset MOVE_MUD_BOMB, 14 
    learnset MOVE_AMNESIA, 18 
    learnset MOVE_WATER_PULSE, 22 
    learnset MOVE_MAGNITUDE, 26 
    learnset MOVE_REST, 31 
    learnset MOVE_SNORE, 31 
    learnset MOVE_AQUA_TAIL, 35 
    learnset MOVE_EARTHQUAKE, 39 
    learnset MOVE_FUTURE_SIGHT, 43 
    learnset MOVE_FISSURE, 47 
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
    learnset MOVE_BUBBLE, 1 
    learnset MOVE_HARDEN, 7 
    learnset MOVE_VICE_GRIP, 10 
    learnset MOVE_LEER, 13 
    learnset MOVE_BUBBLE_BEAM, 20 
    learnset MOVE_PROTECT, 23 
    learnset MOVE_KNOCK_OFF, 26 
    learnset MOVE_TAUNT, 32 
    learnset MOVE_NIGHT_SLASH, 35 
    learnset MOVE_CRABHAMMER, 38 
    learnset MOVE_SWORDS_DANCE, 44 
    learnset MOVE_CRUNCH, 47 
    learnset MOVE_GUILLOTINE, 53 
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
    learnset MOVE_HARDEN, 3 
    learnset MOVE_RAPID_SPIN, 5 
    learnset MOVE_MUD_SLAP, 7 
    learnset MOVE_PSYBEAM, 11 
    learnset MOVE_ROCK_TOMB, 15 
    learnset MOVE_SELF_DESTRUCT, 19 
    learnset MOVE_ANCIENT_POWER, 25 
    learnset MOVE_POWER_TRICK, 31 
    learnset MOVE_SANDSTORM, 37 
    learnset MOVE_COSMIC_POWER, 45 
    learnset MOVE_EARTH_POWER, 53 
    learnset MOVE_HEAL_BLOCK, 61 
    learnset MOVE_EXPLOSION, 71 
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
    learnset MOVE_CONSTRICT, 1 
    learnset MOVE_ACID, 8 
    learnset MOVE_INGRAIN, 15 
    learnset MOVE_CONFUSE_RAY, 22 
    learnset MOVE_AMNESIA, 29 
    learnset MOVE_GASTRO_ACID, 36 
    learnset MOVE_ANCIENT_POWER, 43 
    learnset MOVE_ENERGY_BALL, 50 
    learnset MOVE_STOCKPILE, 57 
    learnset MOVE_SPIT_UP, 57 
    learnset MOVE_SWALLOW, 57 
    learnset MOVE_WRING_OUT, 64 
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
    learnset MOVE_HARDEN, 1 
    learnset MOVE_MUD_SPORT, 7 
    learnset MOVE_WATER_GUN, 13 
    learnset MOVE_METAL_CLAW, 19 
    learnset MOVE_PROTECT, 25 
    learnset MOVE_ANCIENT_POWER, 31 
    learnset MOVE_FURY_CUTTER, 37 
    learnset MOVE_SLASH, 43 
    learnset MOVE_ROCK_BLAST, 49 
    learnset MOVE_CRUSH_CLAW, 55 
    learnset MOVE_X_SCISSOR, 61 
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
    learnset MOVE_TACKLE, 15 
    learnset MOVE_FLAIL, 30 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_WATER_GUN, 10 
    learnset MOVE_EMBER, 10 
    learnset MOVE_POWDER_SNOW, 10 
    learnset MOVE_RAIN_DANCE, 20 
    learnset MOVE_SUNNY_DAY, 20 
    learnset MOVE_HAIL, 20 
    learnset MOVE_WEATHER_BALL, 30 
    terminatelearnset

levelup SPECIES_KECLEON
    learnset MOVE_THIEF, 1 
    learnset MOVE_TAIL_WHIP, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_LICK, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_BIND, 4 
    learnset MOVE_FAINT_ATTACK, 7 
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
    learnset MOVE_KNOCK_OFF, 1 
    learnset MOVE_SCREECH, 5 
    learnset MOVE_NIGHT_SHADE, 8 
    learnset MOVE_CURSE, 13 
    learnset MOVE_SPITE, 16 
    learnset MOVE_SHADOW_SNEAK, 20 
    learnset MOVE_WILL_O_WISP, 23 
    learnset MOVE_FAINT_ATTACK, 28 
    learnset MOVE_SHADOW_BALL, 31 
    learnset MOVE_SUCKER_PUNCH, 35 
    learnset MOVE_EMBARGO, 38 
    learnset MOVE_SNATCH, 43 
    learnset MOVE_GRUDGE, 46 
    learnset MOVE_TRICK, 50 
    terminatelearnset

levelup SPECIES_BANETTE
    learnset MOVE_KNOCK_OFF, 1 
    learnset MOVE_SCREECH, 1 
    learnset MOVE_NIGHT_SHADE, 1 
    learnset MOVE_CURSE, 1 
    learnset MOVE_SCREECH, 8 
    learnset MOVE_NIGHT_SHADE, 5 
    learnset MOVE_CURSE, 13 
    learnset MOVE_SPITE, 16 
    learnset MOVE_SHADOW_SNEAK, 20 
    learnset MOVE_WILL_O_WISP, 23 
    learnset MOVE_FAINT_ATTACK, 28 
    learnset MOVE_SHADOW_BALL, 31 
    learnset MOVE_SUCKER_PUNCH, 35 
    learnset MOVE_EMBARGO, 42 
    learnset MOVE_SNATCH, 51 
    learnset MOVE_GRUDGE, 58 
    learnset MOVE_TRICK, 66 
    terminatelearnset

levelup SPECIES_DUSKULL
    learnset MOVE_LEER, 1 
    learnset MOVE_NIGHT_SHADE, 1 
    learnset MOVE_DISABLE, 6 
    learnset MOVE_FORESIGHT, 9 
    learnset MOVE_ASTONISH, 14 
    learnset MOVE_CONFUSE_RAY, 17 
    learnset MOVE_SHADOW_SNEAK, 22 
    learnset MOVE_PURSUIT, 25 
    learnset MOVE_CURSE, 30 
    learnset MOVE_WILL_O_WISP, 33 
    learnset MOVE_MEAN_LOOK, 38 
    learnset MOVE_PAYBACK, 41 
    learnset MOVE_FUTURE_SIGHT, 46 
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
    learnset MOVE_GROWL, 6 
    learnset MOVE_ASTONISH, 9 
    learnset MOVE_CONFUSION, 14 
    learnset MOVE_UPROAR, 17 
    learnset MOVE_TAKE_DOWN, 22 
    learnset MOVE_YAWN, 25 
    learnset MOVE_PSYWAVE, 30 
    learnset MOVE_DOUBLE_EDGE, 33 
    learnset MOVE_HEAL_BELL, 38 
    learnset MOVE_SAFEGUARD, 41 
    learnset MOVE_EXTRASENSORY, 46 
    learnset MOVE_HEALING_WISH, 49 
    terminatelearnset

levelup SPECIES_ABSOL
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FEINT, 1 
    learnset MOVE_LEER, 4 
    learnset MOVE_TAUNT, 9 
    learnset MOVE_QUICK_ATTACK, 12 
    learnset MOVE_RAZOR_WIND, 17 
    learnset MOVE_PURSUIT, 20 
    learnset MOVE_SWORDS_DANCE, 25 
    learnset MOVE_BITE, 28 
    learnset MOVE_DOUBLE_TEAM, 33 
    learnset MOVE_SLASH, 36 
    learnset MOVE_FUTURE_SIGHT, 41 
    learnset MOVE_SUCKER_PUNCH, 44 
    learnset MOVE_DETECT, 49 
    learnset MOVE_NIGHT_SLASH, 52 
    learnset MOVE_ME_FIRST, 57 
    learnset MOVE_PSYCHO_CUT, 60 
    learnset MOVE_PERISH_SONG, 65 
    terminatelearnset

levelup SPECIES_WYNAUT
    learnset MOVE_SPLASH, 1 
    learnset MOVE_CHARM, 1 
    learnset MOVE_ENCORE, 1 
    learnset MOVE_COUNTER, 15 
    learnset MOVE_MIRROR_COAT, 15 
    learnset MOVE_SAFEGUARD, 15 
    learnset MOVE_DESTINY_BOND, 15 
    terminatelearnset

levelup SPECIES_SNORUNT
    learnset MOVE_POWDER_SNOW, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_DOUBLE_TEAM, 4 
    learnset MOVE_BITE, 10 
    learnset MOVE_ICY_WIND, 13 
    learnset MOVE_HEADBUTT, 19 
    learnset MOVE_PROTECT, 22 
    learnset MOVE_ICE_FANG, 28 
    learnset MOVE_CRUNCH, 31 
    learnset MOVE_ICE_SHARD, 37 
    learnset MOVE_HAIL, 40 
    learnset MOVE_BLIZZARD, 46 
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
    learnset MOVE_POWDER_SNOW, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_ENCORE, 7 
    learnset MOVE_ICE_BALL, 13 
    learnset MOVE_BODY_SLAM, 19 
    learnset MOVE_AURORA_BEAM, 25 
    learnset MOVE_HAIL, 31 
    learnset MOVE_REST, 37 
    learnset MOVE_SNORE, 37 
    learnset MOVE_BLIZZARD, 43 
    learnset MOVE_SHEER_COLD, 49 
    terminatelearnset

levelup SPECIES_SEALEO
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
    learnset MOVE_BLIZZARD, 47 
    learnset MOVE_SHEER_COLD, 55 
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
    learnset MOVE_CLAMP, 1 
    learnset MOVE_WATER_GUN, 1 
    learnset MOVE_WHIRLPOOL, 1 
    learnset MOVE_IRON_DEFENSE, 1 
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
    learnset MOVE_HARDEN, 1 
    learnset MOVE_WATER_GUN, 8 
    learnset MOVE_ROCK_TOMB, 15 
    learnset MOVE_YAWN, 22 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_CHARM, 4 
    learnset MOVE_WATER_GUN, 7 
    learnset MOVE_AGILITY, 9 
    learnset MOVE_TAKE_DOWN, 14 
    learnset MOVE_LUCKY_CHANT, 17 
    learnset MOVE_ATTRACT, 22 
    learnset MOVE_SWEET_KISS, 27 
    learnset MOVE_WATER_PULSE, 31 
    learnset MOVE_AQUA_RING, 37 
    learnset MOVE_CAPTIVATE, 40 
    learnset MOVE_FLAIL, 46 
    learnset MOVE_SAFEGUARD, 51 
    terminatelearnset

levelup SPECIES_BAGON
    learnset MOVE_RAGE, 1 
    learnset MOVE_BITE, 5 
    learnset MOVE_LEER, 10 
    learnset MOVE_HEADBUTT, 16 
    learnset MOVE_FOCUS_ENERGY, 20 
    learnset MOVE_EMBER, 25 
    learnset MOVE_DRAGON_BREATH, 31 
    learnset MOVE_ZEN_HEADBUTT, 35 
    learnset MOVE_SCARY_FACE, 40 
    learnset MOVE_CRUNCH, 46 
    learnset MOVE_DRAGON_CLAW, 50 
    learnset MOVE_DOUBLE_EDGE, 55 
    terminatelearnset

levelup SPECIES_SHELGON
    learnset MOVE_RAGE, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_BITE, 5 
    learnset MOVE_LEER, 10 
    learnset MOVE_HEADBUTT, 16 
    learnset MOVE_FOCUS_ENERGY, 20 
    learnset MOVE_EMBER, 25 
    learnset MOVE_PROTECT, 30 
    learnset MOVE_DRAGON_BREATH, 32 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_SCARY_FACE, 43 
    learnset MOVE_CRUNCH, 50 
    learnset MOVE_DRAGON_CLAW, 55 
    learnset MOVE_DOUBLE_EDGE, 61 
    terminatelearnset

levelup SPECIES_SALAMENCE
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_THUNDER_FANG, 1 
    learnset MOVE_RAGE, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_BITE, 5 
    learnset MOVE_LEER, 10 
    learnset MOVE_HEADBUTT, 16 
    learnset MOVE_FOCUS_ENERGY, 20 
    learnset MOVE_EMBER, 25 
    learnset MOVE_PROTECT, 30 
    learnset MOVE_DRAGON_BREATH, 32 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_SCARY_FACE, 43 
    learnset MOVE_FLY, 50 
    learnset MOVE_CRUNCH, 53 
    learnset MOVE_DRAGON_CLAW, 61 
    learnset MOVE_DOUBLE_EDGE, 70 
    terminatelearnset

levelup SPECIES_BELDUM
    learnset MOVE_TAKE_DOWN, 1 
    terminatelearnset

levelup SPECIES_METANG
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
    learnset MOVE_METEOR_MASH, 48 
    learnset MOVE_ZEN_HEADBUTT, 52 
    learnset MOVE_HYPER_BEAM, 56 
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
    learnset MOVE_EXPLOSION, 1 
    learnset MOVE_STOMP, 1 
    learnset MOVE_ROCK_THROW, 9 
    learnset MOVE_CURSE, 17 
    learnset MOVE_SUPERPOWER, 25 
    learnset MOVE_ANCIENT_POWER, 33 
    learnset MOVE_IRON_DEFENSE, 41 
    learnset MOVE_CHARGE_BEAM, 49 
    learnset MOVE_LOCK_ON, 57 
    learnset MOVE_ZAP_CANNON, 65 
    learnset MOVE_STONE_EDGE, 73 
    learnset MOVE_HAMMER_ARM, 81 
    learnset MOVE_HYPER_BEAM, 89 
    terminatelearnset

levelup SPECIES_REGICE
    learnset MOVE_EXPLOSION, 1 
    learnset MOVE_STOMP, 1 
    learnset MOVE_ICY_WIND, 9 
    learnset MOVE_CURSE, 17 
    learnset MOVE_SUPERPOWER, 25 
    learnset MOVE_ANCIENT_POWER, 33 
    learnset MOVE_AMNESIA, 41 
    learnset MOVE_CHARGE_BEAM, 49 
    learnset MOVE_LOCK_ON, 57 
    learnset MOVE_ZAP_CANNON, 65 
    learnset MOVE_ICE_BEAM, 73 
    learnset MOVE_HAMMER_ARM, 81 
    learnset MOVE_HYPER_BEAM, 89 
    terminatelearnset

levelup SPECIES_REGISTEEL
    learnset MOVE_EXPLOSION, 1 
    learnset MOVE_STOMP, 1 
    learnset MOVE_METAL_CLAW, 9 
    learnset MOVE_CURSE, 17 
    learnset MOVE_SUPERPOWER, 25 
    learnset MOVE_ANCIENT_POWER, 33 
    learnset MOVE_IRON_DEFENSE, 41 
    learnset MOVE_AMNESIA, 41 
    learnset MOVE_CHARGE_BEAM, 49 
    learnset MOVE_LOCK_ON, 57 
    learnset MOVE_ZAP_CANNON, 65 
    learnset MOVE_IRON_HEAD, 73 
    learnset MOVE_FLASH_CANNON, 73 
    learnset MOVE_HAMMER_ARM, 81 
    learnset MOVE_HYPER_BEAM, 89 
    terminatelearnset

levelup SPECIES_LATIAS
    learnset MOVE_PSYWAVE, 1 
    learnset MOVE_WISH, 5 
    learnset MOVE_HELPING_HAND, 10 
    learnset MOVE_SAFEGUARD, 15 
    learnset MOVE_DRAGON_BREATH, 20 
    learnset MOVE_WATER_SPORT, 25 
    learnset MOVE_REFRESH, 30 
    learnset MOVE_MIST_BALL, 35 
    learnset MOVE_ZEN_HEADBUTT, 40 
    learnset MOVE_RECOVER, 45 
    learnset MOVE_PSYCHO_SHIFT, 50 
    learnset MOVE_CHARM, 55 
    learnset MOVE_HEALING_WISH, 60 
    learnset MOVE_PSYCHIC, 65 
    learnset MOVE_DRAGON_PULSE, 70 
    terminatelearnset

levelup SPECIES_LATIOS
    learnset MOVE_PSYWAVE, 1 
    learnset MOVE_HEAL_BLOCK, 5 
    learnset MOVE_HELPING_HAND, 10 
    learnset MOVE_SAFEGUARD, 15 
    learnset MOVE_DRAGON_BREATH, 20 
    learnset MOVE_PROTECT, 25 
    learnset MOVE_REFRESH, 30 
    learnset MOVE_LUSTER_PURGE, 35 
    learnset MOVE_ZEN_HEADBUTT, 40 
    learnset MOVE_RECOVER, 45 
    learnset MOVE_PSYCHO_SHIFT, 50 
    learnset MOVE_DRAGON_DANCE, 55 
    learnset MOVE_MEMENTO, 60 
    learnset MOVE_PSYCHIC, 65 
    learnset MOVE_DRAGON_PULSE, 70 
    terminatelearnset

levelup SPECIES_KYOGRE
    learnset MOVE_WATER_PULSE, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_BODY_SLAM, 15 
    learnset MOVE_MUDDY_WATER, 20 
    learnset MOVE_AQUA_RING, 30 
    learnset MOVE_ICE_BEAM, 35 
    learnset MOVE_ANCIENT_POWER, 45 
    learnset MOVE_WATER_SPOUT, 50 
    learnset MOVE_CALM_MIND, 60 
    learnset MOVE_AQUA_TAIL, 65 
    learnset MOVE_SHEER_COLD, 75 
    learnset MOVE_DOUBLE_EDGE, 80 
    learnset MOVE_HYDRO_PUMP, 90 
    terminatelearnset

levelup SPECIES_GROUDON
    learnset MOVE_MUD_SHOT, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_LAVA_PLUME, 15 
    learnset MOVE_HAMMER_ARM, 20 
    learnset MOVE_REST, 30 
    learnset MOVE_EARTHQUAKE, 35 
    learnset MOVE_ANCIENT_POWER, 45 
    learnset MOVE_ERUPTION, 50 
    learnset MOVE_BULK_UP, 60 
    learnset MOVE_EARTH_POWER, 65 
    learnset MOVE_FISSURE, 75 
    learnset MOVE_SOLAR_BEAM, 80 
    learnset MOVE_FIRE_BLAST, 90 
    terminatelearnset

levelup SPECIES_RAYQUAZA
    learnset MOVE_TWISTER, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_CRUNCH, 15 
    learnset MOVE_HYPER_VOICE, 20 
    learnset MOVE_REST, 30 
    learnset MOVE_AIR_SLASH, 35 
    learnset MOVE_ANCIENT_POWER, 45 
    learnset MOVE_OUTRAGE, 50 
    learnset MOVE_DRAGON_DANCE, 60 
    learnset MOVE_FLY, 65 
    learnset MOVE_EXTREME_SPEED, 75 
    learnset MOVE_HYPER_BEAM, 80 
    learnset MOVE_DRAGON_PULSE, 90 
    terminatelearnset

levelup SPECIES_JIRACHI
    learnset MOVE_WISH, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_REST, 5 
    learnset MOVE_SWIFT, 10 
    learnset MOVE_HELPING_HAND, 15 
    learnset MOVE_PSYCHIC, 20 
    learnset MOVE_REFRESH, 25 
    learnset MOVE_REST, 30 
    learnset MOVE_ZEN_HEADBUTT, 35 
    learnset MOVE_DOUBLE_EDGE, 40 
    learnset MOVE_GRAVITY, 45 
    learnset MOVE_HEALING_WISH, 50 
    learnset MOVE_FUTURE_SIGHT, 55 
    learnset MOVE_COSMIC_POWER, 60 
    learnset MOVE_LAST_RESORT, 65 
    learnset MOVE_DOOM_DESIRE, 70 
    terminatelearnset

levelup SPECIES_DEOXYS
    learnset MOVE_LEER, 1 
    learnset MOVE_WRAP, 1 
    learnset MOVE_NIGHT_SHADE, 9 
    learnset MOVE_TELEPORT, 17 
    learnset MOVE_KNOCK_OFF, 25 
    learnset MOVE_PURSUIT, 33 
    learnset MOVE_PSYCHIC, 41 
    learnset MOVE_SNATCH, 49 
    learnset MOVE_PSYCHO_SHIFT, 57 
    learnset MOVE_ZEN_HEADBUTT, 65 
    learnset MOVE_COSMIC_POWER, 73 
    learnset MOVE_RECOVER, 81 
    learnset MOVE_PSYCHO_BOOST, 89 
    learnset MOVE_HYPER_BEAM, 97 
    terminatelearnset

levelup SPECIES_TURTWIG
    learnset MOVE_TACKLE, 1 
    learnset MOVE_WITHDRAW, 5 
    learnset MOVE_ABSORB, 9 
    learnset MOVE_RAZOR_LEAF, 13 
    learnset MOVE_CURSE, 17 
    learnset MOVE_BITE, 21 
    learnset MOVE_MEGA_DRAIN, 25 
    learnset MOVE_LEECH_SEED, 29 
    learnset MOVE_SYNTHESIS, 33 
    learnset MOVE_CRUNCH, 37 
    learnset MOVE_GIGA_DRAIN, 41 
    learnset MOVE_LEAF_STORM, 45 
    terminatelearnset

levelup SPECIES_GROTLE
    learnset MOVE_TACKLE, 1 
    learnset MOVE_WITHDRAW, 1 
    learnset MOVE_WITHDRAW, 5 
    learnset MOVE_ABSORB, 9 
    learnset MOVE_RAZOR_LEAF, 13 
    learnset MOVE_CURSE, 17 
    learnset MOVE_BITE, 22 
    learnset MOVE_MEGA_DRAIN, 27 
    learnset MOVE_LEECH_SEED, 32 
    learnset MOVE_SYNTHESIS, 37 
    learnset MOVE_CRUNCH, 42 
    learnset MOVE_GIGA_DRAIN, 47 
    learnset MOVE_LEAF_STORM, 52 
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
    learnset MOVE_LEER, 1 
    learnset MOVE_EMBER, 7 
    learnset MOVE_TAUNT, 9 
    learnset MOVE_FURY_SWIPES, 15 
    learnset MOVE_FLAME_WHEEL, 17 
    learnset MOVE_NASTY_PLOT, 23 
    learnset MOVE_TORMENT, 25 
    learnset MOVE_FACADE, 31 
    learnset MOVE_FIRE_SPIN, 33 
    learnset MOVE_SLACK_OFF, 39 
    learnset MOVE_FLAMETHROWER, 41 
    terminatelearnset

levelup SPECIES_MONFERNO
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_EMBER, 1 
    learnset MOVE_EMBER, 7 
    learnset MOVE_TAUNT, 9 
    learnset MOVE_MACH_PUNCH, 14 
    learnset MOVE_FURY_SWIPES, 16 
    learnset MOVE_FLAME_WHEEL, 19 
    learnset MOVE_FEINT, 26 
    learnset MOVE_TORMENT, 29 
    learnset MOVE_CLOSE_COMBAT, 36 
    learnset MOVE_FIRE_SPIN, 39 
    learnset MOVE_SLACK_OFF, 46 
    learnset MOVE_FLARE_BLITZ, 49 
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
    learnset MOVE_GROWL, 4 
    learnset MOVE_BUBBLE, 8 
    learnset MOVE_WATER_SPORT, 11 
    learnset MOVE_PECK, 15 
    learnset MOVE_BUBBLE_BEAM, 18 
    learnset MOVE_BIDE, 22 
    learnset MOVE_FURY_ATTACK, 25 
    learnset MOVE_BRINE, 29 
    learnset MOVE_WHIRLPOOL, 32 
    learnset MOVE_MIST, 36 
    learnset MOVE_DRILL_PECK, 39 
    learnset MOVE_HYDRO_PUMP, 43 
    terminatelearnset

levelup SPECIES_PRINPLUP
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_GROWL, 4 
    learnset MOVE_BUBBLE, 8 
    learnset MOVE_WATER_SPORT, 11 
    learnset MOVE_PECK, 15 
    learnset MOVE_METAL_CLAW, 16 
    learnset MOVE_BUBBLE_BEAM, 19 
    learnset MOVE_BIDE, 24 
    learnset MOVE_FURY_ATTACK, 28 
    learnset MOVE_BRINE, 33 
    learnset MOVE_WHIRLPOOL, 37 
    learnset MOVE_MIST, 42 
    learnset MOVE_DRILL_PECK, 46 
    learnset MOVE_HYDRO_PUMP, 51 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_QUICK_ATTACK, 5 
    learnset MOVE_WING_ATTACK, 9 
    learnset MOVE_DOUBLE_TEAM, 13 
    learnset MOVE_ENDEAVOR, 17 
    learnset MOVE_WHIRLWIND, 21 
    learnset MOVE_AERIAL_ACE, 25 
    learnset MOVE_TAKE_DOWN, 29 
    learnset MOVE_AGILITY, 33 
    learnset MOVE_BRAVE_BIRD, 37 
    terminatelearnset

levelup SPECIES_STARAVIA
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_QUICK_ATTACK, 5 
    learnset MOVE_WING_ATTACK, 9 
    learnset MOVE_DOUBLE_TEAM, 13 
    learnset MOVE_ENDEAVOR, 18 
    learnset MOVE_WHIRLWIND, 23 
    learnset MOVE_AERIAL_ACE, 28 
    learnset MOVE_TAKE_DOWN, 33 
    learnset MOVE_AGILITY, 38 
    learnset MOVE_BRAVE_BIRD, 43 
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
    learnset MOVE_GROWL, 5 
    learnset MOVE_DEFENSE_CURL, 9 
    learnset MOVE_ROLLOUT, 13 
    learnset MOVE_HEADBUTT, 17 
    learnset MOVE_HYPER_FANG, 21 
    learnset MOVE_YAWN, 25 
    learnset MOVE_AMNESIA, 29 
    learnset MOVE_TAKE_DOWN, 33 
    learnset MOVE_SUPER_FANG, 37 
    learnset MOVE_SUPERPOWER, 41 
    learnset MOVE_CURSE, 45 
    terminatelearnset

levelup SPECIES_BIBAREL
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_GROWL, 5 
    learnset MOVE_DEFENSE_CURL, 9 
    learnset MOVE_ROLLOUT, 13 
    learnset MOVE_WATER_GUN, 15 
    learnset MOVE_HEADBUTT, 18 
    learnset MOVE_HYPER_FANG, 23 
    learnset MOVE_YAWN, 28 
    learnset MOVE_AMNESIA, 33 
    learnset MOVE_TAKE_DOWN, 38 
    learnset MOVE_SUPER_FANG, 43 
    learnset MOVE_SUPERPOWER, 48 
    learnset MOVE_CURSE, 53 
    terminatelearnset

levelup SPECIES_KRICKETOT
    learnset MOVE_GROWL, 1 
    learnset MOVE_BIDE, 1 
    learnset MOVE_BUG_BITE, 16 
    terminatelearnset

levelup SPECIES_KRICKETUNE
    learnset MOVE_GROWL, 1 
    learnset MOVE_BIDE, 1 
    learnset MOVE_FURY_CUTTER, 10 
    learnset MOVE_LEECH_LIFE, 14 
    learnset MOVE_SING, 18 
    learnset MOVE_FOCUS_ENERGY, 22 
    learnset MOVE_SLASH, 26 
    learnset MOVE_X_SCISSOR, 30 
    learnset MOVE_SCREECH, 34 
    learnset MOVE_TAUNT, 38 
    learnset MOVE_NIGHT_SLASH, 42 
    learnset MOVE_BUG_BUZZ, 46 
    learnset MOVE_PERISH_SONG, 50 
    terminatelearnset

levelup SPECIES_SHINX
    learnset MOVE_TACKLE, 1 
    learnset MOVE_LEER, 5 
    learnset MOVE_CHARGE, 9 
    learnset MOVE_SPARK, 13 
    learnset MOVE_BITE, 17 
    learnset MOVE_ROAR, 21 
    learnset MOVE_SWAGGER, 25 
    learnset MOVE_THUNDER_FANG, 29 
    learnset MOVE_CRUNCH, 33 
    learnset MOVE_SCARY_FACE, 37 
    learnset MOVE_DISCHARGE, 41 
    terminatelearnset

levelup SPECIES_LUXIO
    learnset MOVE_TACKLE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_LEER, 5 
    learnset MOVE_CHARGE, 9 
    learnset MOVE_SPARK, 13 
    learnset MOVE_BITE, 18 
    learnset MOVE_ROAR, 23 
    learnset MOVE_SWAGGER, 28 
    learnset MOVE_THUNDER_FANG, 33 
    learnset MOVE_CRUNCH, 38 
    learnset MOVE_SCARY_FACE, 43 
    learnset MOVE_DISCHARGE, 48 
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
    learnset MOVE_ABSORB, 1 
    learnset MOVE_GROWTH, 4 
    learnset MOVE_WATER_SPORT, 7 
    learnset MOVE_STUN_SPORE, 10 
    learnset MOVE_MEGA_DRAIN, 13 
    learnset MOVE_WORRY_SEED, 16 
    terminatelearnset

levelup SPECIES_ROSERADE
    learnset MOVE_WEATHER_BALL, 1 
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_MEGA_DRAIN, 1 
    learnset MOVE_MAGICAL_LEAF, 1 
    learnset MOVE_SWEET_SCENT, 1 
    terminatelearnset

levelup SPECIES_CRANIDOS
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_FOCUS_ENERGY, 6 
    learnset MOVE_PURSUIT, 10 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_SCARY_FACE, 19 
    learnset MOVE_ASSURANCE, 24 
    learnset MOVE_ANCIENT_POWER, 28 
    learnset MOVE_ZEN_HEADBUTT, 33 
    learnset MOVE_SCREECH, 37 
    learnset MOVE_HEAD_SMASH, 43 
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
    learnset MOVE_PROTECT, 1 
    learnset MOVE_TAUNT, 6 
    learnset MOVE_METAL_SOUND, 10 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_IRON_DEFENSE, 19 
    learnset MOVE_SWAGGER, 24 
    learnset MOVE_ANCIENT_POWER, 28 
    learnset MOVE_ENDURE, 33 
    learnset MOVE_METAL_BURST, 37 
    learnset MOVE_IRON_HEAD, 43 
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
    learnset MOVE_PROTECT, 1 
    learnset MOVE_TACKLE, 10 
    learnset MOVE_BUG_BITE, 15 
    learnset MOVE_HIDDEN_POWER, 20 
    terminatelearnset

levelup SPECIES_WORMADAM
    learnset MOVE_TACKLE, 1 
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
    terminatelearnset

levelup SPECIES_MOTHIM
    learnset MOVE_TACKLE, 1 
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
    learnset MOVE_BUG_BUZZ, 47 
    terminatelearnset

levelup SPECIES_COMBEE
    learnset MOVE_SWEET_SCENT, 1 
    learnset MOVE_GUST, 1 
    learnset MOVE_BUG_BITE, 13 
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
    learnset MOVE_GROWL, 1 
    learnset MOVE_WATER_SPORT, 1 
    learnset MOVE_QUICK_ATTACK, 3 
    learnset MOVE_WATER_GUN, 6 
    learnset MOVE_PURSUIT, 10 
    learnset MOVE_SWIFT, 15 
    learnset MOVE_AQUA_JET, 21 
    learnset MOVE_AGILITY, 28 
    learnset MOVE_WHIRLPOOL, 36 
    learnset MOVE_RAZOR_WIND, 45 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWTH, 7 
    learnset MOVE_LEECH_SEED, 10 
    learnset MOVE_HELPING_HAND, 13 
    learnset MOVE_MAGICAL_LEAF, 19 
    learnset MOVE_SUNNY_DAY, 22 
    learnset MOVE_WORRY_SEED, 28 
    learnset MOVE_TAKE_DOWN, 31 
    learnset MOVE_SOLAR_BEAM, 37 
    learnset MOVE_LUCKY_CHANT, 40 
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
    learnset MOVE_CONSTRICT, 1 
    learnset MOVE_MINIMIZE, 1 
    learnset MOVE_ASTONISH, 6 
    learnset MOVE_GUST, 11 
    learnset MOVE_FOCUS_ENERGY, 14 
    learnset MOVE_PAYBACK, 17 
    learnset MOVE_STOCKPILE, 22 
    learnset MOVE_SWALLOW, 27 
    learnset MOVE_SPIT_UP, 27 
    learnset MOVE_OMINOUS_WIND, 30 
    learnset MOVE_BATON_PASS, 33 
    learnset MOVE_SHADOW_BALL, 38 
    learnset MOVE_EXPLOSION, 43 
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
    learnset MOVE_POUND, 1 
    learnset MOVE_DEFENSE_CURL, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_ENDURE, 6 
    learnset MOVE_FRUSTRATION, 13 
    learnset MOVE_QUICK_ATTACK, 16 
    learnset MOVE_JUMP_KICK, 23 
    learnset MOVE_BATON_PASS, 26 
    learnset MOVE_AGILITY, 33 
    learnset MOVE_DIZZY_PUNCH, 36 
    learnset MOVE_CHARM, 43 
    learnset MOVE_BOUNCE, 46 
    learnset MOVE_HEALING_WISH, 53 
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
    learnset MOVE_SCRATCH, 5 
    learnset MOVE_GROWL, 8 
    learnset MOVE_HYPNOSIS, 13 
    learnset MOVE_FAINT_ATTACK, 17 
    learnset MOVE_FURY_SWIPES, 20 
    learnset MOVE_CHARM, 25 
    learnset MOVE_ASSIST, 29 
    learnset MOVE_CAPTIVATE, 32 
    learnset MOVE_SLASH, 37 
    learnset MOVE_SUCKER_PUNCH, 41 
    learnset MOVE_ATTRACT, 45 
    terminatelearnset

levelup SPECIES_PURUGLY
    learnset MOVE_FAKE_OUT, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_SCRATCH, 5 
    learnset MOVE_GROWL, 8 
    learnset MOVE_HYPNOSIS, 13 
    learnset MOVE_FAINT_ATTACK, 17 
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
    learnset MOVE_GROWL, 6 
    learnset MOVE_ASTONISH, 9 
    learnset MOVE_CONFUSION, 14 
    learnset MOVE_UPROAR, 17 
    learnset MOVE_LAST_RESORT, 22 
    terminatelearnset

levelup SPECIES_STUNKY
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FOCUS_ENERGY, 1 
    learnset MOVE_POISON_GAS, 4 
    learnset MOVE_SCREECH, 7 
    learnset MOVE_FURY_SWIPES, 10 
    learnset MOVE_SMOKESCREEN, 14 
    learnset MOVE_FEINT, 18 
    learnset MOVE_SLASH, 22 
    learnset MOVE_TOXIC, 27 
    learnset MOVE_NIGHT_SLASH, 32 
    learnset MOVE_MEMENTO, 38 
    learnset MOVE_EXPLOSION, 44 
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
    learnset MOVE_TACKLE, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_HYPNOSIS, 7 
    learnset MOVE_IMPRISON, 12 
    learnset MOVE_CONFUSE_RAY, 14 
    learnset MOVE_EXTRASENSORY, 19 
    learnset MOVE_IRON_DEFENSE, 26 
    learnset MOVE_SAFEGUARD, 30 
    learnset MOVE_GYRO_BALL, 35 
    learnset MOVE_FUTURE_SIGHT, 37 
    learnset MOVE_FAINT_ATTACK, 41 
    learnset MOVE_PAYBACK, 49 
    learnset MOVE_HEAL_BLOCK, 52 
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
    learnset MOVE_FAINT_ATTACK, 50 
    learnset MOVE_PAYBACK, 61 
    learnset MOVE_HEAL_BLOCK, 67 
    terminatelearnset

levelup SPECIES_BONSLY
    learnset MOVE_FAKE_TEARS, 1 
    learnset MOVE_COPYCAT, 1 
    learnset MOVE_FLAIL, 6 
    learnset MOVE_LOW_KICK, 9 
    learnset MOVE_ROCK_THROW, 14 
    learnset MOVE_MIMIC, 17 
    learnset MOVE_BLOCK, 22 
    learnset MOVE_FAINT_ATTACK, 25 
    learnset MOVE_ROCK_TOMB, 30 
    learnset MOVE_ROCK_SLIDE, 33 
    learnset MOVE_SLAM, 38 
    learnset MOVE_SUCKER_PUNCH, 41 
    learnset MOVE_DOUBLE_EDGE, 46 
    terminatelearnset

levelup SPECIES_MIMEJR
    learnset MOVE_TICKLE, 1 
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

levelup SPECIES_HAPPINY
    learnset MOVE_POUND, 1 
    learnset MOVE_CHARM, 1 
    learnset MOVE_COPYCAT, 5 
    learnset MOVE_REFRESH, 9 
    learnset MOVE_SWEET_KISS, 12 
    terminatelearnset

levelup SPECIES_CHATOT
    learnset MOVE_PECK, 1 
    learnset MOVE_GROWL, 5 
    learnset MOVE_MIRROR_MOVE, 9 
    learnset MOVE_SING, 13 
    learnset MOVE_FURY_ATTACK, 17 
    learnset MOVE_CHATTER, 21 
    learnset MOVE_TAUNT, 25 
    learnset MOVE_MIMIC, 29 
    learnset MOVE_ROOST, 33 
    learnset MOVE_UPROAR, 37 
    learnset MOVE_FEATHER_DANCE, 41 
    learnset MOVE_HYPER_VOICE, 45 
    terminatelearnset

levelup SPECIES_SPIRITOMB
    learnset MOVE_CURSE, 1 
    learnset MOVE_PURSUIT, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_SPITE, 1 
    learnset MOVE_SHADOW_SNEAK, 1 
    learnset MOVE_FAINT_ATTACK, 7 
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
    learnset MOVE_SAND_ATTACK, 3 
    learnset MOVE_DRAGON_RAGE, 7 
    learnset MOVE_SANDSTORM, 13 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_SAND_TOMB, 19 
    learnset MOVE_SLASH, 25 
    learnset MOVE_DRAGON_CLAW, 27 
    learnset MOVE_DIG, 31 
    learnset MOVE_DRAGON_RUSH, 37 
    terminatelearnset

levelup SPECIES_GABITE
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_SAND_ATTACK, 3 
    learnset MOVE_DRAGON_RAGE, 7 
    learnset MOVE_SANDSTORM, 13 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_SAND_TOMB, 19 
    learnset MOVE_SLASH, 28 
    learnset MOVE_DRAGON_CLAW, 33 
    learnset MOVE_DIG, 40 
    learnset MOVE_DRAGON_RUSH, 49 
    terminatelearnset

levelup SPECIES_GARCHOMP
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_DRAGON_RAGE, 1 
    learnset MOVE_SANDSTORM, 1 
    learnset MOVE_SAND_ATTACK, 3 
    learnset MOVE_DRAGON_RAGE, 7 
    learnset MOVE_SANDSTORM, 13 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_SAND_TOMB, 19 
    learnset MOVE_SLASH, 28 
    learnset MOVE_DRAGON_CLAW, 33 
    learnset MOVE_DIG, 40 
    learnset MOVE_CRUNCH, 48 
    learnset MOVE_DRAGON_RUSH, 55 
    terminatelearnset

levelup SPECIES_MUNCHLAX
    learnset MOVE_METRONOME, 1 
    learnset MOVE_ODOR_SLEUTH, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_DEFENSE_CURL, 4 
    learnset MOVE_AMNESIA, 9 
    learnset MOVE_LICK, 12 
    learnset MOVE_RECYCLE, 17 
    learnset MOVE_SCREECH, 20 
    learnset MOVE_STOCKPILE, 25 
    learnset MOVE_SWALLOW, 28 
    learnset MOVE_BODY_SLAM, 33 
    learnset MOVE_FLING, 36 
    learnset MOVE_ROLLOUT, 41 
    learnset MOVE_NATURAL_GIFT, 44 
    learnset MOVE_LAST_RESORT, 49 
    terminatelearnset

levelup SPECIES_RIOLU
    learnset MOVE_QUICK_ATTACK, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_ENDURE, 1 
    learnset MOVE_COUNTER, 6 
    learnset MOVE_FORCE_PALM, 11 
    learnset MOVE_FEINT, 15 
    learnset MOVE_REVERSAL, 19 
    learnset MOVE_SCREECH, 24 
    learnset MOVE_COPYCAT, 29 
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
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_BITE, 7 
    learnset MOVE_YAWN, 13 
    learnset MOVE_TAKE_DOWN, 19 
    learnset MOVE_DIG, 19 
    learnset MOVE_SAND_TOMB, 25 
    learnset MOVE_CRUNCH, 31 
    learnset MOVE_EARTHQUAKE, 37 
    learnset MOVE_DOUBLE_EDGE, 44 
    learnset MOVE_FISSURE, 50 
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
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_KNOCK_OFF, 6 
    learnset MOVE_PIN_MISSILE, 12 
    learnset MOVE_ACUPRESSURE, 17 
    learnset MOVE_SCARY_FACE, 23 
    learnset MOVE_TOXIC_SPIKES, 28 
    learnset MOVE_BUG_BITE, 34 
    learnset MOVE_POISON_FANG, 39 
    learnset MOVE_CRUNCH, 45 
    learnset MOVE_CROSS_POISON, 50 
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
    learnset MOVE_POISON_STING, 8 
    learnset MOVE_TAUNT, 10 
    learnset MOVE_PURSUIT, 15 
    learnset MOVE_FAINT_ATTACK, 17 
    learnset MOVE_REVENGE, 22 
    learnset MOVE_SWAGGER, 24 
    learnset MOVE_MUD_BOMB, 29 
    learnset MOVE_SUCKER_PUNCH, 31 
    learnset MOVE_NASTY_PLOT, 36 
    learnset MOVE_POISON_JAB, 38 
    learnset MOVE_SLUDGE_BOMB, 43 
    learnset MOVE_FLATTER, 45 
    terminatelearnset

levelup SPECIES_TOXICROAK
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_MUD_SLAP, 1 
    learnset MOVE_POISON_STING, 1 
    learnset MOVE_MUD_SLAP, 3 
    learnset MOVE_POISON_STING, 8 
    learnset MOVE_TAUNT, 10 
    learnset MOVE_PURSUIT, 15 
    learnset MOVE_FAINT_ATTACK, 17 
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
    learnset MOVE_FAINT_ATTACK, 27 
    learnset MOVE_STOCKPILE, 31 
    learnset MOVE_SPIT_UP, 31 
    learnset MOVE_SWALLOW, 31 
    learnset MOVE_CRUNCH, 37 
    learnset MOVE_WRING_OUT, 41 
    learnset MOVE_POWER_WHIP, 47 
    terminatelearnset

levelup SPECIES_FINNEON
    learnset MOVE_POUND, 1 
    learnset MOVE_WATER_GUN, 6 
    learnset MOVE_ATTRACT, 10 
    learnset MOVE_RAIN_DANCE, 13 
    learnset MOVE_GUST, 17 
    learnset MOVE_WATER_PULSE, 22 
    learnset MOVE_CAPTIVATE, 26 
    learnset MOVE_SAFEGUARD, 29 
    learnset MOVE_AQUA_RING, 33 
    learnset MOVE_WHIRLPOOL, 38 
    learnset MOVE_U_TURN, 42 
    learnset MOVE_BOUNCE, 45 
    learnset MOVE_SILVER_WIND, 49 
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
    learnset MOVE_BUBBLE, 1 
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

levelup SPECIES_SNOVER
    learnset MOVE_POWDER_SNOW, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_RAZOR_LEAF, 5 
    learnset MOVE_ICY_WIND, 9 
    learnset MOVE_GRASS_WHISTLE, 13 
    learnset MOVE_SWAGGER, 17 
    learnset MOVE_MIST, 21 
    learnset MOVE_ICE_SHARD, 26 
    learnset MOVE_INGRAIN, 31 
    learnset MOVE_WOOD_HAMMER, 36 
    learnset MOVE_BLIZZARD, 41 
    learnset MOVE_SHEER_COLD, 46 
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
    learnset MOVE_FAINT_ATTACK, 14 
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
    learnset MOVE_FAINT_ATTACK, 16 
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
    learnset MOVE_FAINT_ATTACK, 23 
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
    learnset MOVE_POWDER_SNOW, 8 
    learnset MOVE_MUD_SLAP, 13 
    learnset MOVE_ENDURE, 16 
    learnset MOVE_MUD_BOMB, 20 
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
    learnset MOVE_ASTONISH, 10 
    learnset MOVE_ICY_WIND, 13 
    learnset MOVE_CONFUSE_RAY, 19 
    learnset MOVE_OMINOUS_WIND, 22 
    learnset MOVE_WAKE_UP_SLAP, 28 
    learnset MOVE_CAPTIVATE, 31 
    learnset MOVE_ICE_SHARD, 37 
    learnset MOVE_HAIL, 40 
    learnset MOVE_BLIZZARD, 51 
    learnset MOVE_DESTINY_BOND, 59 
    terminatelearnset

levelup SPECIES_ROTOM
    learnset MOVE_TRICK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_UPROAR, 8 
    learnset MOVE_DOUBLE_TEAM, 15 
    learnset MOVE_SHOCK_WAVE, 22 
    learnset MOVE_OMINOUS_WIND, 29 
    learnset MOVE_SUBSTITUTE, 36 
    learnset MOVE_CHARGE, 43 
    learnset MOVE_DISCHARGE, 50 
    terminatelearnset

levelup SPECIES_UXIE
    learnset MOVE_REST, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_IMPRISON, 6 
    learnset MOVE_ENDURE, 16 
    learnset MOVE_SWIFT, 21 
    learnset MOVE_YAWN, 31 
    learnset MOVE_FUTURE_SIGHT, 36 
    learnset MOVE_AMNESIA, 46 
    learnset MOVE_EXTRASENSORY, 51 
    learnset MOVE_FLAIL, 61 
    learnset MOVE_NATURAL_GIFT, 66 
    learnset MOVE_MEMENTO, 76 
    terminatelearnset

levelup SPECIES_MESPRIT
    learnset MOVE_REST, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_IMPRISON, 6 
    learnset MOVE_PROTECT, 16 
    learnset MOVE_SWIFT, 21 
    learnset MOVE_LUCKY_CHANT, 31 
    learnset MOVE_FUTURE_SIGHT, 36 
    learnset MOVE_CHARM, 46 
    learnset MOVE_EXTRASENSORY, 51 
    learnset MOVE_COPYCAT, 61 
    learnset MOVE_NATURAL_GIFT, 66 
    learnset MOVE_HEALING_WISH, 76 
    terminatelearnset

levelup SPECIES_AZELF
    learnset MOVE_REST, 1 
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_IMPRISON, 6 
    learnset MOVE_DETECT, 16 
    learnset MOVE_SWIFT, 21 
    learnset MOVE_UPROAR, 31 
    learnset MOVE_FUTURE_SIGHT, 36 
    learnset MOVE_NASTY_PLOT, 46 
    learnset MOVE_EXTRASENSORY, 51 
    learnset MOVE_LAST_RESORT, 61 
    learnset MOVE_NATURAL_GIFT, 66 
    learnset MOVE_EXPLOSION, 76 
    terminatelearnset

levelup SPECIES_DIALGA
    learnset MOVE_DRAGON_BREATH, 1 
    learnset MOVE_SCARY_FACE, 1 
    learnset MOVE_METAL_CLAW, 6 
    learnset MOVE_ANCIENT_POWER, 10 
    learnset MOVE_SLASH, 15 
    learnset MOVE_POWER_GEM, 19 
    learnset MOVE_METAL_BURST, 24 
    learnset MOVE_DRAGON_CLAW, 28 
    learnset MOVE_EARTH_POWER, 33 
    learnset MOVE_AURA_SPHERE, 37 
    learnset MOVE_FLASH_CANNON, 42 
    learnset MOVE_ROAR_OF_TIME, 46 
    terminatelearnset

levelup SPECIES_PALKIA
    learnset MOVE_DRAGON_BREATH, 1 
    learnset MOVE_SCARY_FACE, 1 
    learnset MOVE_WATER_PULSE, 6 
    learnset MOVE_ANCIENT_POWER, 10 
    learnset MOVE_SLASH, 15 
    learnset MOVE_POWER_GEM, 19 
    learnset MOVE_AQUA_TAIL, 24 
    learnset MOVE_DRAGON_CLAW, 28 
    learnset MOVE_EARTH_POWER, 33 
    learnset MOVE_AURA_SPHERE, 37 
    learnset MOVE_HYDRO_PUMP, 42 
    learnset MOVE_SPACIAL_REND, 46 
    terminatelearnset

levelup SPECIES_HEATRAN
    learnset MOVE_ANCIENT_POWER, 1 
    learnset MOVE_LEER, 9 
    learnset MOVE_FIRE_FANG, 17 
    learnset MOVE_METAL_SOUND, 25 
    learnset MOVE_CRUNCH, 33 
    learnset MOVE_SCARY_FACE, 41 
    learnset MOVE_LAVA_PLUME, 49 
    learnset MOVE_FIRE_SPIN, 57 
    learnset MOVE_IRON_HEAD, 65 
    learnset MOVE_EARTH_POWER, 73 
    learnset MOVE_HEAT_WAVE, 81 
    learnset MOVE_STONE_EDGE, 88 
    learnset MOVE_MAGMA_STORM, 96 
    terminatelearnset

levelup SPECIES_REGIGIGAS
    learnset MOVE_FIRE_PUNCH, 1 
    learnset MOVE_ICE_PUNCH, 1 
    learnset MOVE_THUNDER_PUNCH, 1 
    learnset MOVE_DIZZY_PUNCH, 1 
    learnset MOVE_KNOCK_OFF, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_FORESIGHT, 1 
    learnset MOVE_REVENGE, 25 
    learnset MOVE_ZEN_HEADBUTT, 50 
    learnset MOVE_CRUSH_GRIP, 75 
    learnset MOVE_GIGA_IMPACT, 100 
    terminatelearnset

levelup SPECIES_GIRATINA
    learnset MOVE_DRAGON_BREATH, 1 
    learnset MOVE_SCARY_FACE, 1 
    learnset MOVE_OMINOUS_WIND, 6 
    learnset MOVE_ANCIENT_POWER, 10 
    learnset MOVE_SLASH, 15 
    learnset MOVE_SHADOW_SNEAK, 19 
    learnset MOVE_DESTINY_BOND, 24 
    learnset MOVE_DRAGON_CLAW, 28 
    learnset MOVE_EARTH_POWER, 33 
    learnset MOVE_AURA_SPHERE, 37 
    learnset MOVE_SHADOW_CLAW, 42 
    learnset MOVE_SHADOW_FORCE, 46 
    terminatelearnset

levelup SPECIES_CRESSELIA
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_DOUBLE_TEAM, 1 
    learnset MOVE_SAFEGUARD, 11 
    learnset MOVE_MIST, 20 
    learnset MOVE_AURORA_BEAM, 29 
    learnset MOVE_FUTURE_SIGHT, 38 
    learnset MOVE_SLASH, 47 
    learnset MOVE_MOONLIGHT, 57 
    learnset MOVE_PSYCHO_CUT, 66 
    learnset MOVE_PSYCHO_SHIFT, 75 
    learnset MOVE_LUNAR_DANCE, 84 
    learnset MOVE_PSYCHIC, 93 
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
    learnset MOVE_FAINT_ATTACK, 29 
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
    learnset MOVE_NIGHT_SHADE, 9 
    learnset MOVE_TELEPORT, 17 
    learnset MOVE_TAUNT, 25 
    learnset MOVE_PURSUIT, 33 
    learnset MOVE_PSYCHIC, 41 
    learnset MOVE_SUPERPOWER, 49 
    learnset MOVE_PSYCHO_SHIFT, 57 
    learnset MOVE_ZEN_HEADBUTT, 65 
    learnset MOVE_COSMIC_POWER, 73 
    learnset MOVE_ZAP_CANNON, 81 
    learnset MOVE_PSYCHO_BOOST, 89 
    learnset MOVE_HYPER_BEAM, 97 
    terminatelearnset

levelup SPECIES_DEOXYS_DEFENSE
    learnset MOVE_LEER, 1 
    learnset MOVE_WRAP, 1 
    learnset MOVE_NIGHT_SHADE, 9 
    learnset MOVE_TELEPORT, 17 
    learnset MOVE_KNOCK_OFF, 25 
    learnset MOVE_SPIKES, 33 
    learnset MOVE_PSYCHIC, 41 
    learnset MOVE_SNATCH, 49 
    learnset MOVE_PSYCHO_SHIFT, 57 
    learnset MOVE_ZEN_HEADBUTT, 65 
    learnset MOVE_IRON_DEFENSE, 73 
    learnset MOVE_AMNESIA, 73 
    learnset MOVE_RECOVER, 81 
    learnset MOVE_PSYCHO_BOOST, 89 
    learnset MOVE_COUNTER, 97 
    learnset MOVE_MIRROR_COAT, 97 
    terminatelearnset

levelup SPECIES_DEOXYS_SPEED
    learnset MOVE_LEER, 1 
    learnset MOVE_WRAP, 1 
    learnset MOVE_NIGHT_SHADE, 9 
    learnset MOVE_DOUBLE_TEAM, 17 
    learnset MOVE_KNOCK_OFF, 25 
    learnset MOVE_PURSUIT, 33 
    learnset MOVE_PSYCHIC, 41 
    learnset MOVE_SWIFT, 49 
    learnset MOVE_PSYCHO_SHIFT, 57 
    learnset MOVE_ZEN_HEADBUTT, 65 
    learnset MOVE_AGILITY, 73 
    learnset MOVE_RECOVER, 81 
    learnset MOVE_PSYCHO_BOOST, 89 
    learnset MOVE_EXTREME_SPEED, 97 
    terminatelearnset

levelup SPECIES_WORMADAM_SANDY
    learnset MOVE_TACKLE, 1 
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
    terminatelearnset

levelup SPECIES_WORMADAM_TRASHY
    learnset MOVE_TACKLE, 1 
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
    terminatelearnset

levelup SPECIES_GIRATINA_ORIGIN
    learnset MOVE_DRAGON_BREATH, 1 
    learnset MOVE_SCARY_FACE, 1 
    learnset MOVE_OMINOUS_WIND, 6 
    learnset MOVE_ANCIENT_POWER, 10 
    learnset MOVE_SLASH, 15 
    learnset MOVE_SHADOW_SNEAK, 19 
    learnset MOVE_DESTINY_BOND, 24 
    learnset MOVE_DRAGON_CLAW, 28 
    learnset MOVE_EARTH_POWER, 33 
    learnset MOVE_AURA_SPHERE, 37 
    learnset MOVE_SHADOW_CLAW, 42 
    learnset MOVE_SHADOW_FORCE, 46 
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
    learnset MOVE_TRICK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_UPROAR, 8 
    learnset MOVE_DOUBLE_TEAM, 15 
    learnset MOVE_SHOCK_WAVE, 22 
    learnset MOVE_OMINOUS_WIND, 29 
    learnset MOVE_SUBSTITUTE, 36 
    learnset MOVE_CHARGE, 43 
    learnset MOVE_DISCHARGE, 50 
    terminatelearnset

levelup SPECIES_ROTOM_WASH
    learnset MOVE_TRICK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_UPROAR, 8 
    learnset MOVE_DOUBLE_TEAM, 15 
    learnset MOVE_SHOCK_WAVE, 22 
    learnset MOVE_OMINOUS_WIND, 29 
    learnset MOVE_SUBSTITUTE, 36 
    learnset MOVE_CHARGE, 43 
    learnset MOVE_DISCHARGE, 50 
    terminatelearnset

levelup SPECIES_ROTOM_FROST
    learnset MOVE_TRICK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_UPROAR, 8 
    learnset MOVE_DOUBLE_TEAM, 15 
    learnset MOVE_SHOCK_WAVE, 22 
    learnset MOVE_OMINOUS_WIND, 29 
    learnset MOVE_SUBSTITUTE, 36 
    learnset MOVE_CHARGE, 43 
    learnset MOVE_DISCHARGE, 50 
    terminatelearnset

levelup SPECIES_ROTOM_FAN
    learnset MOVE_TRICK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_UPROAR, 8 
    learnset MOVE_DOUBLE_TEAM, 15 
    learnset MOVE_SHOCK_WAVE, 22 
    learnset MOVE_OMINOUS_WIND, 29 
    learnset MOVE_SUBSTITUTE, 36 
    learnset MOVE_CHARGE, 43 
    learnset MOVE_DISCHARGE, 50 
    terminatelearnset

levelup SPECIES_ROTOM_MOW
    learnset MOVE_TRICK, 1 
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_CONFUSE_RAY, 1 
    learnset MOVE_UPROAR, 8 
    learnset MOVE_DOUBLE_TEAM, 15 
    learnset MOVE_SHOCK_WAVE, 22 
    learnset MOVE_OMINOUS_WIND, 29 
    learnset MOVE_SUBSTITUTE, 36 
    learnset MOVE_CHARGE, 43 
    learnset MOVE_DISCHARGE, 50 
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
    //learnset MOVE_SEARING_SHOT, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_CONFUSION, 1
    //learnset MOVE_INCINERATE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_ENDURE, 9
    learnset MOVE_HEADBUTT, 17
    //learnset MOVE_FLAME_CHARGE, 25
    learnset MOVE_REVERSAL, 33
    //learnset MOVE_FLAME_BURST, 41
    learnset MOVE_ZEN_HEADBUTT, 49
    //learnset MOVE_INFERNO, 57
    learnset MOVE_DOUBLE_EDGE, 65
    learnset MOVE_FLARE_BLITZ, 73
    //learnset MOVE_FINAL_GAMBIT, 81
    //learnset MOVE_STORED_POWER, 89
    learnset MOVE_OVERHEAT, 97
    terminatelearnset

levelup SPECIES_SNIVY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_WRAP, 10
    learnset MOVE_GROWTH, 13
    //learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_LEECH_SEED, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_SLAM, 25
    learnset MOVE_LEAF_BLADE, 28
    //learnset MOVE_COIL, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_WRING_OUT, 37
    learnset MOVE_GASTRO_ACID, 40
    learnset MOVE_LEAF_STORM, 43
    terminatelearnset

levelup SPECIES_SERVINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_WRAP, 10
    learnset MOVE_GROWTH, 13
    //learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MEGA_DRAIN, 24
    learnset MOVE_SLAM, 28
    learnset MOVE_LEAF_BLADE, 32
    //learnset MOVE_COIL, 36
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_WRING_OUT, 44
    learnset MOVE_GASTRO_ACID, 48
    learnset MOVE_LEAF_STORM, 52
    terminatelearnset

levelup SPECIES_SERPERIOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_WRAP, 10
    learnset MOVE_GROWTH, 13
    //learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_LEECH_SEED, 20
    learnset MOVE_MEGA_DRAIN, 24
    learnset MOVE_SLAM, 28
    learnset MOVE_LEAF_BLADE, 32
    //learnset MOVE_COIL, 38
    learnset MOVE_GIGA_DRAIN, 44
    learnset MOVE_WRING_OUT, 50
    learnset MOVE_GASTRO_ACID, 56
    learnset MOVE_LEAF_STORM, 62
    terminatelearnset

levelup SPECIES_TEPIG
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_ODOR_SLEUTH, 9
    learnset MOVE_DEFENSE_CURL, 13
    //learnset MOVE_FLAME_CHARGE, 15
    learnset MOVE_SMOG, 19
    learnset MOVE_ROLLOUT, 21
    learnset MOVE_TAKE_DOWN, 25
    //learnset MOVE_HEAT_CRASH, 27
    learnset MOVE_ASSURANCE, 31
    learnset MOVE_FLAMETHROWER, 33
    learnset MOVE_HEAD_SMASH, 37
    learnset MOVE_ROAR, 39
    learnset MOVE_FLARE_BLITZ, 43
    terminatelearnset

levelup SPECIES_PIGNITE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_ODOR_SLEUTH, 9
    learnset MOVE_DEFENSE_CURL, 13
    //learnset MOVE_FLAME_CHARGE, 15
    learnset MOVE_ARM_THRUST, 17
    learnset MOVE_SMOG, 20
    learnset MOVE_ROLLOUT, 23
    learnset MOVE_TAKE_DOWN, 28
    //learnset MOVE_HEAT_CRASH, 31
    learnset MOVE_ASSURANCE, 36
    learnset MOVE_FLAMETHROWER, 39
    learnset MOVE_HEAD_SMASH, 44
    learnset MOVE_ROAR, 47
    learnset MOVE_FLARE_BLITZ, 52
    terminatelearnset

levelup SPECIES_EMBOAR
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_ODOR_SLEUTH, 9
    learnset MOVE_DEFENSE_CURL, 13
    //learnset MOVE_FLAME_CHARGE, 15
    learnset MOVE_ARM_THRUST, 17
    learnset MOVE_SMOG, 20
    learnset MOVE_ROLLOUT, 23
    learnset MOVE_TAKE_DOWN, 28
    //learnset MOVE_HEAT_CRASH, 31
    learnset MOVE_ASSURANCE, 38
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_HEAD_SMASH, 50
    learnset MOVE_ROAR, 55
    learnset MOVE_FLARE_BLITZ, 62
    terminatelearnset

levelup SPECIES_OSHAWOTT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_WATER_SPORT, 11
    learnset MOVE_FOCUS_ENERGY, 13
    //learnset MOVE_RAZOR_SHELL, 17
    learnset MOVE_FURY_CUTTER, 19
    learnset MOVE_WATER_PULSE, 23
    learnset MOVE_REVENGE, 25
    learnset MOVE_AQUA_JET, 29
    learnset MOVE_ENCORE, 31
    learnset MOVE_AQUA_TAIL, 35
    //learnset MOVE_RETALIATE, 37
    learnset MOVE_SWORDS_DANCE, 41
    learnset MOVE_HYDRO_PUMP, 43
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
    //learnset MOVE_RAZOR_SHELL, 17
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_REVENGE, 28
    learnset MOVE_AQUA_JET, 33
    learnset MOVE_ENCORE, 36
    learnset MOVE_AQUA_TAIL, 41
    //learnset MOVE_RETALIATE, 44
    learnset MOVE_SWORDS_DANCE, 49
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset

levelup SPECIES_SAMUROTT
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_WATER_SPORT, 11
    learnset MOVE_FOCUS_ENERGY, 13
    //learnset MOVE_RAZOR_SHELL, 17
    learnset MOVE_FURY_CUTTER, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_REVENGE, 28
    learnset MOVE_AQUA_JET, 33
    learnset MOVE_SLASH, 36
    learnset MOVE_ENCORE, 38
    learnset MOVE_AQUA_TAIL, 45
    //learnset MOVE_RETALIATE, 50
    learnset MOVE_SWORDS_DANCE, 57
    learnset MOVE_HYDRO_PUMP, 62
    terminatelearnset

levelup SPECIES_PATRAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 3
    learnset MOVE_BITE, 6
    learnset MOVE_BIDE, 8
    learnset MOVE_DETECT, 11
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_CRUNCH, 16
    learnset MOVE_HYPNOSIS, 18
    learnset MOVE_SUPER_FANG, 21
    //learnset MOVE_AFTER_YOU, 23
    //learnset MOVE_WORK_UP, 26
    learnset MOVE_HYPER_FANG, 28
    learnset MOVE_MEAN_LOOK, 31
    learnset MOVE_BATON_PASS, 33
    learnset MOVE_SLAM, 36
    terminatelearnset

levelup SPECIES_WATCHOG
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 3
    learnset MOVE_BITE, 6
    learnset MOVE_BIDE, 8
    learnset MOVE_DETECT, 11
    learnset MOVE_SAND_ATTACK, 13
    learnset MOVE_CRUNCH, 16
    learnset MOVE_HYPNOSIS, 18
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_SUPER_FANG, 22
    //learnset MOVE_AFTER_YOU, 25
    learnset MOVE_PSYCH_UP, 29
    learnset MOVE_HYPER_FANG, 32
    learnset MOVE_MEAN_LOOK, 36
    learnset MOVE_BATON_PASS, 39
    learnset MOVE_SLAM, 43
    terminatelearnset

levelup SPECIES_LILLIPUP
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_TAKE_DOWN, 15
    //learnset MOVE_WORK_UP, 19
    learnset MOVE_CRUNCH, 22
    learnset MOVE_ROAR, 26
    //learnset MOVE_RETALIATE, 29
    learnset MOVE_REVERSAL, 33
    learnset MOVE_LAST_RESORT, 36
    learnset MOVE_GIGA_IMPACT, 40
    terminatelearnset

levelup SPECIES_HERDIER
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_TAKE_DOWN, 15
    //learnset MOVE_WORK_UP, 20
    learnset MOVE_CRUNCH, 24
    learnset MOVE_ROAR, 29
    //learnset MOVE_RETALIATE, 33
    learnset MOVE_REVERSAL, 38
    learnset MOVE_LAST_RESORT, 42
    learnset MOVE_GIGA_IMPACT, 47
    terminatelearnset

levelup SPECIES_STOUTLAND
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_TAKE_DOWN, 15
    //learnset MOVE_WORK_UP, 20
    learnset MOVE_CRUNCH, 24
    learnset MOVE_ROAR, 29
    //learnset MOVE_RETALIATE, 36
    learnset MOVE_REVERSAL, 42
    learnset MOVE_LAST_RESORT, 51
    learnset MOVE_GIGA_IMPACT, 59
    terminatelearnset

levelup SPECIES_PURRLOIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ASSIST, 6
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_PURSUIT, 15
    learnset MOVE_TORMENT, 19
    learnset MOVE_FAKE_OUT, 21
    //learnset MOVE_HONE_CLAWS, 24
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_CAPTIVATE, 33
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_SNATCH, 39
    learnset MOVE_NASTY_PLOT, 42
    learnset MOVE_SUCKER_PUNCH, 46
    terminatelearnset

levelup SPECIES_LIEPARD
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ASSIST, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_ASSIST, 6
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_PURSUIT, 15
    learnset MOVE_TORMENT, 19
    learnset MOVE_FAKE_OUT, 22
    //learnset MOVE_HONE_CLAWS, 26
    learnset MOVE_ASSURANCE, 31
    learnset MOVE_SLASH, 34
    learnset MOVE_TAUNT, 38
    learnset MOVE_NIGHT_SLASH, 43
    learnset MOVE_SNATCH, 47
    learnset MOVE_NASTY_PLOT, 50
    learnset MOVE_SUCKER_PUNCH, 55
    terminatelearnset

levelup SPECIES_PANSAGE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_LEECH_SEED, 16
    learnset MOVE_BITE, 19
    learnset MOVE_SEED_BOMB, 22
    learnset MOVE_TORMENT, 25
    learnset MOVE_FLING, 28
    //learnset MOVE_ACROBATICS, 31
    learnset MOVE_GRASS_KNOT, 34
    learnset MOVE_RECYCLE, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_CRUNCH, 43
    terminatelearnset

levelup SPECIES_SIMISAGE
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_SEED_BOMB, 1
    terminatelearnset

levelup SPECIES_PANSEAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    //learnset MOVE_INCINERATE, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_YAWN, 16
    learnset MOVE_BITE, 19
    //learnset MOVE_FLAME_BURST, 22
    learnset MOVE_AMNESIA, 25
    learnset MOVE_FLING, 28
    //learnset MOVE_ACROBATICS, 31
    learnset MOVE_FIRE_BLAST, 34
    learnset MOVE_RECYCLE, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_CRUNCH, 43
    terminatelearnset

levelup SPECIES_SIMISEAR
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FURY_SWIPES, 1
    //learnset MOVE_FLAME_BURST, 1
    terminatelearnset

levelup SPECIES_PANPOUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_WATER_SPORT, 16
    learnset MOVE_BITE, 19
    //learnset MOVE_SCALD, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_FLING, 28
    //learnset MOVE_ACROBATICS, 31
    learnset MOVE_BRINE, 34
    learnset MOVE_RECYCLE, 37
    learnset MOVE_NATURAL_GIFT, 40
    learnset MOVE_CRUNCH, 43
    terminatelearnset

levelup SPECIES_SIMIPOUR
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FURY_SWIPES, 1
    //learnset MOVE_SCALD, 1
    terminatelearnset

levelup SPECIES_MUNNA
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_LUCKY_CHANT, 5
    learnset MOVE_YAWN, 7
    learnset MOVE_PSYBEAM, 11
    learnset MOVE_IMPRISON, 13
    learnset MOVE_MOONLIGHT, 17
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    //learnset MOVE_SYNCHRONOISE, 25
    learnset MOVE_NIGHTMARE, 29
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_CALM_MIND, 35
    learnset MOVE_PSYCHIC, 37
    learnset MOVE_DREAM_EATER, 41
    //learnset MOVE_TELEKINESIS, 43
    //learnset MOVE_STORED_POWER, 47
    terminatelearnset

levelup SPECIES_MUSHARNA
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_LUCKY_CHANT, 1
    learnset MOVE_PSYBEAM, 1
    learnset MOVE_HYPNOSIS, 1
    terminatelearnset

levelup SPECIES_PIDOVE
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_LEER, 8
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_AIR_CUTTER, 15
    learnset MOVE_ROOST, 18
    learnset MOVE_DETECT, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_AIR_SLASH, 29
    learnset MOVE_RAZOR_WIND, 32
    learnset MOVE_FEATHER_DANCE, 36
    learnset MOVE_SWAGGER, 39
    learnset MOVE_FACADE, 43
    learnset MOVE_TAILWIND, 46
    learnset MOVE_SKY_ATTACK, 50
    terminatelearnset

levelup SPECIES_TRANQUILL
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
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_RAZOR_WIND, 36
    learnset MOVE_FEATHER_DANCE, 41
    learnset MOVE_SWAGGER, 45
    learnset MOVE_FACADE, 50
    learnset MOVE_TAILWIND, 54
    learnset MOVE_SKY_ATTACK, 59
    terminatelearnset

levelup SPECIES_UNFEZANT
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

levelup SPECIES_BLITZLE
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_CHARGE, 8
    learnset MOVE_SHOCK_WAVE, 11
    learnset MOVE_THUNDER_WAVE, 15
    //learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_PURSUIT, 22
    learnset MOVE_SPARK, 25
    learnset MOVE_STOMP, 29
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_AGILITY, 36
    //learnset MOVE_WILD_CHARGE, 39
    learnset MOVE_THRASH, 43
    terminatelearnset

levelup SPECIES_ZEBSTRIKA
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_CHARGE, 8
    learnset MOVE_SHOCK_WAVE, 11
    learnset MOVE_THUNDER_WAVE, 15
    //learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_PURSUIT, 22
    learnset MOVE_SPARK, 25
    learnset MOVE_STOMP, 31
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_AGILITY, 42
    //learnset MOVE_WILD_CHARGE, 47
    learnset MOVE_THRASH, 53
    terminatelearnset

levelup SPECIES_ROGGENROLA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_ROCK_BLAST, 14
    learnset MOVE_MUD_SLAP, 17
    learnset MOVE_IRON_DEFENSE, 20
    //learnset MOVE_SMACK_DOWN, 23
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_STEALTH_ROCK, 30
    learnset MOVE_SANDSTORM, 33
    learnset MOVE_STONE_EDGE, 36
    learnset MOVE_EXPLOSION, 40
    terminatelearnset

levelup SPECIES_BOLDORE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_ROCK_BLAST, 14
    learnset MOVE_MUD_SLAP, 17
    learnset MOVE_IRON_DEFENSE, 20
    //learnset MOVE_SMACK_DOWN, 23
    learnset MOVE_POWER_GEM, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_STEALTH_ROCK, 36
    learnset MOVE_SANDSTORM, 42
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_EXPLOSION, 55
    terminatelearnset

levelup SPECIES_GIGALITH
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_ROCK_BLAST, 14
    learnset MOVE_MUD_SLAP, 17
    learnset MOVE_IRON_DEFENSE, 20
    //learnset MOVE_SMACK_DOWN, 23
    learnset MOVE_POWER_GEM, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_STEALTH_ROCK, 36
    learnset MOVE_SANDSTORM, 42
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_EXPLOSION, 55
    terminatelearnset

levelup SPECIES_WOOBAT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ODOR_SLEUTH, 4
    learnset MOVE_GUST, 8
    learnset MOVE_ASSURANCE, 12
    //learnset MOVE_HEART_STAMP, 15
    learnset MOVE_IMPRISON, 19
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_ATTRACT, 25
    learnset MOVE_AMNESIA, 29
    learnset MOVE_CALM_MIND, 29
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_FUTURE_SIGHT, 36
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_ENDEAVOR, 47
    terminatelearnset

levelup SPECIES_SWOOBAT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ODOR_SLEUTH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_ODOR_SLEUTH, 4
    learnset MOVE_GUST, 8
    learnset MOVE_ASSURANCE, 12
    //learnset MOVE_HEART_STAMP, 15
    learnset MOVE_IMPRISON, 19
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_ATTRACT, 25
    learnset MOVE_AMNESIA, 29
    learnset MOVE_CALM_MIND, 29
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_FUTURE_SIGHT, 36
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_ENDEAVOR, 47
    terminatelearnset

levelup SPECIES_DRILBUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_METAL_CLAW, 15
    learnset MOVE_DIG, 19
    //learnset MOVE_HONE_CLAWS, 22
    learnset MOVE_SLASH, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_EARTHQUAKE, 33
    learnset MOVE_SWORDS_DANCE, 36
    learnset MOVE_SANDSTORM, 40
    //learnset MOVE_DRILL_RUN, 43
    learnset MOVE_FISSURE, 47
    terminatelearnset

levelup SPECIES_EXCADRILL
    learnset MOVE_SCRATCH, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_METAL_CLAW, 15
    learnset MOVE_DIG, 19
    //learnset MOVE_HONE_CLAWS, 22
    learnset MOVE_SLASH, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_HORN_DRILL, 31
    learnset MOVE_EARTHQUAKE, 36
    learnset MOVE_SWORDS_DANCE, 42
    learnset MOVE_SANDSTORM, 49
    //learnset MOVE_DRILL_RUN, 55
    learnset MOVE_FISSURE, 62
    terminatelearnset

levelup SPECIES_AUDINO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_REFRESH, 5
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_ATTRACT, 15
    learnset MOVE_SECRET_POWER, 20
    //learnset MOVE_ENTRAINMENT, 25
    learnset MOVE_TAKE_DOWN, 30
    //learnset MOVE_HEAL_PULSE, 35
    //learnset MOVE_AFTER_YOU, 40
    //learnset MOVE_SIMPLE_BEAM, 45
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_LAST_RESORT, 55
    terminatelearnset

levelup SPECIES_TIMBURR
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    //learnset MOVE_CHIP_AWAY, 24
    learnset MOVE_BULK_UP, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_DYNAMIC_PUNCH, 34
    learnset MOVE_SCARY_FACE, 37
    learnset MOVE_HAMMER_ARM, 40
    learnset MOVE_STONE_EDGE, 43
    learnset MOVE_FOCUS_PUNCH, 46
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset

levelup SPECIES_GURDURR
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    //learnset MOVE_CHIP_AWAY, 24
    learnset MOVE_BULK_UP, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_DYNAMIC_PUNCH, 37
    learnset MOVE_SCARY_FACE, 41
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_FOCUS_PUNCH, 53
    learnset MOVE_SUPERPOWER, 57
    terminatelearnset

levelup SPECIES_CONKELDURR
    learnset MOVE_POUND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_LOW_KICK, 12
    learnset MOVE_ROCK_THROW, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    //learnset MOVE_CHIP_AWAY, 24
    learnset MOVE_BULK_UP, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_DYNAMIC_PUNCH, 37
    learnset MOVE_SCARY_FACE, 41
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_FOCUS_PUNCH, 53
    learnset MOVE_SUPERPOWER, 57
    terminatelearnset

levelup SPECIES_TYMPOLE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SUPERSONIC, 5
    //learnset MOVE_ROUND, 9
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_AQUA_RING, 20
    learnset MOVE_UPROAR, 23
    learnset MOVE_MUDDY_WATER, 27
    learnset MOVE_RAIN_DANCE, 31
    learnset MOVE_FLAIL, 34
    //learnset MOVE_ECHOED_VOICE, 38
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_HYPER_VOICE, 45
    terminatelearnset

levelup SPECIES_PALPITOAD
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SUPERSONIC, 1
    //learnset MOVE_ROUND, 1
    learnset MOVE_SUPERSONIC, 5
    //learnset MOVE_ROUND, 9
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_AQUA_RING, 20
    learnset MOVE_UPROAR, 23
    learnset MOVE_MUDDY_WATER, 28
    learnset MOVE_RAIN_DANCE, 33
    learnset MOVE_FLAIL, 37
    //learnset MOVE_ECHOED_VOICE, 42
    learnset MOVE_HYDRO_PUMP, 47
    learnset MOVE_HYPER_VOICE, 51
    terminatelearnset

levelup SPECIES_SEISMITOAD
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SUPERSONIC, 1
    //learnset MOVE_ROUND, 1
    learnset MOVE_SUPERSONIC, 5
    //learnset MOVE_ROUND, 9
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_AQUA_RING, 20
    learnset MOVE_UPROAR, 23
    learnset MOVE_MUDDY_WATER, 28
    learnset MOVE_RAIN_DANCE, 33
    learnset MOVE_ACID, 36
    learnset MOVE_FLAIL, 39
    learnset MOVE_DRAIN_PUNCH, 44
    //learnset MOVE_ECHOED_VOICE, 49
    learnset MOVE_HYDRO_PUMP, 53
    learnset MOVE_HYPER_VOICE, 59
    terminatelearnset

levelup SPECIES_THROH
    learnset MOVE_BIND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_FOCUS_ENERGY, 9
    learnset MOVE_SEISMIC_TOSS, 13
    learnset MOVE_VITAL_THROW, 17
    learnset MOVE_REVENGE, 21
    //learnset MOVE_STORM_THROW, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_BULK_UP, 33
    //learnset MOVE_CIRCLE_THROW, 37
    learnset MOVE_ENDURE, 41
    //learnset MOVE_WIDE_GUARD, 45
    learnset MOVE_SUPERPOWER, 49
    learnset MOVE_REVERSAL, 53
    terminatelearnset

levelup SPECIES_SAWK
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_FOCUS_ENERGY, 9
    learnset MOVE_DOUBLE_KICK, 13
    //learnset MOVE_LOW_SWEEP, 17
    learnset MOVE_COUNTER, 21
    learnset MOVE_KARATE_CHOP, 25
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_BULK_UP, 33
    //learnset MOVE_RETALIATE, 37
    learnset MOVE_ENDURE, 41
    //learnset MOVE_QUICK_GUARD, 45
    learnset MOVE_CLOSE_COMBAT, 49
    learnset MOVE_REVERSAL, 53
    terminatelearnset

levelup SPECIES_SEWADDLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_RAZOR_LEAF, 15
    //learnset MOVE_STRUGGLE_BUG, 22
    learnset MOVE_ENDURE, 29
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_FLAIL, 43
    terminatelearnset

levelup SPECIES_SWADLOON
    learnset MOVE_GRASS_WHISTLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_PROTECT, 20
    terminatelearnset

levelup SPECIES_LEAVANNY
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_RAZOR_LEAF, 15
    //learnset MOVE_STRUGGLE_BUG, 22
    learnset MOVE_SLASH, 29
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_LEAF_BLADE, 36
    learnset MOVE_X_SCISSOR, 39
    //learnset MOVE_ENTRAINMENT, 43
    learnset MOVE_SWORDS_DANCE, 46
    learnset MOVE_LEAF_STORM, 50
    terminatelearnset

levelup SPECIES_VENIPEDE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_PROTECT, 15
    learnset MOVE_POISON_TAIL, 19
    learnset MOVE_BUG_BITE, 22
    //learnset MOVE_VENOSHOCK, 26
    learnset MOVE_AGILITY, 29
    //learnset MOVE_STEAMROLLER, 33
    learnset MOVE_TOXIC, 36
    learnset MOVE_ROCK_CLIMB, 40
    learnset MOVE_DOUBLE_EDGE, 43
    terminatelearnset

levelup SPECIES_WHIRLIPEDE
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_PROTECT, 15
    learnset MOVE_POISON_TAIL, 19
    learnset MOVE_IRON_DEFENSE, 22
    learnset MOVE_BUG_BITE, 23
    //learnset MOVE_VENOSHOCK, 28
    learnset MOVE_AGILITY, 32
    //learnset MOVE_STEAMROLLER, 37
    learnset MOVE_TOXIC, 41
    learnset MOVE_ROCK_CLIMB, 46
    learnset MOVE_DOUBLE_EDGE, 50
    terminatelearnset

levelup SPECIES_SCOLIPEDE
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_SCREECH, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_PROTECT, 15
    learnset MOVE_POISON_TAIL, 19
    learnset MOVE_BUG_BITE, 23
    //learnset MOVE_VENOSHOCK, 28
    learnset MOVE_BATON_PASS, 30
    learnset MOVE_AGILITY, 33
    //learnset MOVE_STEAMROLLER, 39
    learnset MOVE_TOXIC, 44
    learnset MOVE_ROCK_CLIMB, 50
    learnset MOVE_DOUBLE_EDGE, 55
    terminatelearnset

levelup SPECIES_COTTONEE
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 4
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_COTTON_SPORE, 17
    learnset MOVE_RAZOR_LEAF, 19
    learnset MOVE_POISON_POWDER, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_CHARM, 28
    learnset MOVE_HELPING_HAND, 31
    learnset MOVE_ENERGY_BALL, 35
    //learnset MOVE_COTTON_GUARD, 37
    learnset MOVE_SUNNY_DAY, 40
    learnset MOVE_ENDEAVOR, 44
    learnset MOVE_SOLAR_BEAM, 46
    terminatelearnset

levelup SPECIES_WHIMSICOTT
    learnset MOVE_GROWTH, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_COTTON_SPORE, 1
    learnset MOVE_GUST, 10
    learnset MOVE_TAILWIND, 28
    //learnset MOVE_HURRICANE, 46
    terminatelearnset

levelup SPECIES_PETILIL
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 4
    learnset MOVE_LEECH_SEED, 8
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_SYNTHESIS, 17
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_STUN_SPORE, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_HELPING_HAND, 31
    learnset MOVE_ENERGY_BALL, 35
    //learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_SUNNY_DAY, 40
    //learnset MOVE_AFTER_YOU, 44
    learnset MOVE_LEAF_STORM, 46
    terminatelearnset

levelup SPECIES_LILLIGANT
    learnset MOVE_GROWTH, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_SYNTHESIS, 1
    learnset MOVE_TEETER_DANCE, 10
    //learnset MOVE_QUIVER_DANCE, 28
    learnset MOVE_PETAL_DANCE, 46
    terminatelearnset

levelup SPECIES_BASCULIN
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_UPROAR, 4
    learnset MOVE_HEADBUTT, 7
    learnset MOVE_BITE, 10
    learnset MOVE_AQUA_JET, 13
    //learnset MOVE_CHIP_AWAY, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CRUNCH, 24
    learnset MOVE_AQUA_TAIL, 28
    //learnset MOVE_SOAK, 32
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_SCARY_FACE, 41
    learnset MOVE_FLAIL, 46
    //learnset MOVE_FINAL_GAMBIT, 51
    learnset MOVE_THRASH, 56
    terminatelearnset

levelup SPECIES_SANDILE
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_BITE, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_TORMENT, 10
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_MUD_SLAP, 19
    learnset MOVE_EMBARGO, 22
    learnset MOVE_SWAGGER, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DIG, 31
    learnset MOVE_SCARY_FACE, 34
    //learnset MOVE_FOUL_PLAY, 37
    learnset MOVE_SANDSTORM, 40
    learnset MOVE_EARTHQUAKE, 43
    learnset MOVE_THRASH, 46
    terminatelearnset

levelup SPECIES_KROKOROK
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BITE, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_TORMENT, 10
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_MUD_SLAP, 19
    learnset MOVE_EMBARGO, 22
    learnset MOVE_SWAGGER, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DIG, 32
    learnset MOVE_SCARY_FACE, 36
    //learnset MOVE_FOUL_PLAY, 40
    learnset MOVE_SANDSTORM, 44
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_THRASH, 52
    terminatelearnset

levelup SPECIES_KROOKODILE
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BITE, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_TORMENT, 10
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_MUD_SLAP, 19
    learnset MOVE_EMBARGO, 22
    learnset MOVE_SWAGGER, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DIG, 32
    learnset MOVE_SCARY_FACE, 36
    //learnset MOVE_FOUL_PLAY, 42
    learnset MOVE_SANDSTORM, 48
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_OUTRAGE, 60
    terminatelearnset

levelup SPECIES_DARUMAKA
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    //learnset MOVE_INCINERATE, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_FIRE_FANG, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_UPROAR, 17
    learnset MOVE_FACADE, 19
    learnset MOVE_FIRE_PUNCH, 22
    //learnset MOVE_WORK_UP, 25
    learnset MOVE_THRASH, 27
    learnset MOVE_BELLY_DRUM, 30
    learnset MOVE_FLARE_BLITZ, 33
    learnset MOVE_TAUNT, 35
    learnset MOVE_SUPERPOWER, 39
    learnset MOVE_OVERHEAT, 42
    terminatelearnset

levelup SPECIES_DARMANITAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 1
    //learnset MOVE_INCINERATE, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_ROLLOUT, 3
    //learnset MOVE_INCINERATE, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_FIRE_FANG, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SWAGGER, 17
    learnset MOVE_FACADE, 19
    learnset MOVE_FIRE_PUNCH, 22
    //learnset MOVE_WORK_UP, 25
    learnset MOVE_THRASH, 27
    learnset MOVE_BELLY_DRUM, 30
    learnset MOVE_FLARE_BLITZ, 33
    learnset MOVE_HAMMER_ARM, 35
    learnset MOVE_TAUNT, 39
    learnset MOVE_SUPERPOWER, 47
    learnset MOVE_OVERHEAT, 54
    terminatelearnset

levelup SPECIES_MARACTUS
    learnset MOVE_PECK, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_SWEET_SCENT, 3
    learnset MOVE_GROWTH, 6
    learnset MOVE_PIN_MISSILE, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_SYNTHESIS, 15
    learnset MOVE_COTTON_SPORE, 18
    learnset MOVE_NEEDLE_ARM, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_ACUPRESSURE, 29
    learnset MOVE_INGRAIN, 33
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_SUNNY_DAY, 45
    learnset MOVE_SOLAR_BEAM, 50
    //learnset MOVE_COTTON_GUARD, 55
    //learnset MOVE_AFTER_YOU, 57
    terminatelearnset

levelup SPECIES_DWEBBLE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_ROCK_BLAST, 5
    learnset MOVE_WITHDRAW, 7
    learnset MOVE_SAND_ATTACK, 11
    learnset MOVE_FAINT_ATTACK, 13
    //learnset MOVE_SMACK_DOWN, 17
    learnset MOVE_ROCK_POLISH, 19
    learnset MOVE_BUG_BITE, 23
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_SLASH, 31
    learnset MOVE_X_SCISSOR, 35
    //learnset MOVE_SHELL_SMASH, 37
    learnset MOVE_FLAIL, 41
    learnset MOVE_ROCK_WRECKER, 43
    terminatelearnset

levelup SPECIES_CRUSTLE
    //learnset MOVE_SHELL_SMASH, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ROCK_BLAST, 5
    learnset MOVE_WITHDRAW, 7
    learnset MOVE_SAND_ATTACK, 11
    learnset MOVE_FAINT_ATTACK, 13
    //learnset MOVE_SMACK_DOWN, 17
    learnset MOVE_ROCK_POLISH, 19
    learnset MOVE_BUG_BITE, 23
    learnset MOVE_STEALTH_ROCK, 24
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_SLASH, 31
    learnset MOVE_X_SCISSOR, 38
    //learnset MOVE_SHELL_SMASH, 43
    learnset MOVE_FLAIL, 50
    learnset MOVE_ROCK_WRECKER, 55
    terminatelearnset

levelup SPECIES_SCRAGGY
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_FAINT_ATTACK, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_SWAGGER, 16
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_PAYBACK, 23
    //learnset MOVE_CHIP_AWAY, 27
    learnset MOVE_HI_JUMP_KICK, 31
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_FACADE, 42
    learnset MOVE_ROCK_CLIMB, 45
    learnset MOVE_FOCUS_PUNCH, 49
    learnset MOVE_HEAD_SMASH, 53
    terminatelearnset

levelup SPECIES_SCRAFTY
    learnset MOVE_LEER, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_FAINT_ATTACK, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_FAINT_ATTACK, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_SWAGGER, 16
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_PAYBACK, 23
    //learnset MOVE_CHIP_AWAY, 27
    learnset MOVE_HI_JUMP_KICK, 31
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_FACADE, 45
    learnset MOVE_ROCK_CLIMB, 51
    learnset MOVE_FOCUS_PUNCH, 58
    learnset MOVE_HEAD_SMASH, 65
    terminatelearnset

levelup SPECIES_SIGILYPH
    learnset MOVE_GUST, 1
    learnset MOVE_MIRACLE_EYE, 1
    learnset MOVE_HYPNOSIS, 4
    learnset MOVE_PSYWAVE, 8
    learnset MOVE_TAILWIND, 11
    learnset MOVE_WHIRLWIND, 14
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_LIGHT_SCREEN, 24
    learnset MOVE_REFLECT, 28
    //learnset MOVE_SYNCHRONOISE, 31
    learnset MOVE_MIRROR_MOVE, 34
    learnset MOVE_GRAVITY, 38
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_COSMIC_POWER, 48
    learnset MOVE_SKY_ATTACK, 51
    terminatelearnset

levelup SPECIES_YAMASK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_HAZE, 9
    learnset MOVE_NIGHT_SHADE, 13
    //learnset MOVE_HEX, 17
    learnset MOVE_WILL_O_WISP, 21
    learnset MOVE_OMINOUS_WIND, 25
    learnset MOVE_CURSE, 29
    //learnset MOVE_POWER_SPLIT, 33
    //learnset MOVE_GUARD_SPLIT, 33
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_GRUDGE, 41
    learnset MOVE_MEAN_LOOK, 45
    learnset MOVE_DESTINY_BOND, 49
    terminatelearnset

levelup SPECIES_COFAGRIGUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_HAZE, 9
    learnset MOVE_NIGHT_SHADE, 13
    //learnset MOVE_HEX, 17
    learnset MOVE_WILL_O_WISP, 21
    learnset MOVE_OMINOUS_WIND, 25
    learnset MOVE_CURSE, 29
    //learnset MOVE_POWER_SPLIT, 33
    //learnset MOVE_GUARD_SPLIT, 33
    learnset MOVE_SCARY_FACE, 34
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_GRUDGE, 45
    learnset MOVE_MEAN_LOOK, 51
    learnset MOVE_DESTINY_BOND, 57
    terminatelearnset

levelup SPECIES_TIRTOUGA
    learnset MOVE_BIDE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_BITE, 8
    learnset MOVE_PROTECT, 11
    learnset MOVE_AQUA_JET, 15
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_CRUNCH, 21
    //learnset MOVE_WIDE_GUARD, 25
    learnset MOVE_BRINE, 28
    //learnset MOVE_SMACK_DOWN, 31
    learnset MOVE_CURSE, 35
    //learnset MOVE_SHELL_SMASH, 38
    learnset MOVE_AQUA_TAIL, 41
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_RAIN_DANCE, 48
    learnset MOVE_HYDRO_PUMP, 51
    terminatelearnset

levelup SPECIES_CARRACOSTA
    learnset MOVE_BIDE, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_BITE, 8
    learnset MOVE_PROTECT, 11
    learnset MOVE_AQUA_JET, 15
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_CRUNCH, 21
    //learnset MOVE_WIDE_GUARD, 25
    learnset MOVE_BRINE, 28
    //learnset MOVE_SMACK_DOWN, 31
    learnset MOVE_CURSE, 35
    //learnset MOVE_SHELL_SMASH, 40
    learnset MOVE_AQUA_TAIL, 45
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_RAIN_DANCE, 56
    learnset MOVE_HYDRO_PUMP, 61
    terminatelearnset

levelup SPECIES_ARCHEN
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_SCARY_FACE, 11
    learnset MOVE_PLUCK, 15
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_AGILITY, 21
    //learnset MOVE_QUICK_GUARD, 25
    //learnset MOVE_ACROBATICS, 28
    learnset MOVE_DRAGON_BREATH, 31
    learnset MOVE_CRUNCH, 35
    learnset MOVE_ENDEAVOR, 38
    learnset MOVE_U_TURN, 41
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_DRAGON_CLAW, 48
    learnset MOVE_THRASH, 51
    terminatelearnset

levelup SPECIES_ARCHEOPS
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_SCARY_FACE, 11
    learnset MOVE_PLUCK, 15
    learnset MOVE_ANCIENT_POWER, 18
    learnset MOVE_AGILITY, 21
    //learnset MOVE_QUICK_GUARD, 25
    //learnset MOVE_ACROBATICS, 28
    learnset MOVE_DRAGON_BREATH, 31
    learnset MOVE_CRUNCH, 35
    learnset MOVE_ENDEAVOR, 40
    learnset MOVE_U_TURN, 45
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_DRAGON_CLAW, 56
    learnset MOVE_THRASH, 61
    terminatelearnset

levelup SPECIES_TRUBBISH
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_RECYCLE, 3
    learnset MOVE_TOXIC_SPIKES, 7
    //learnset MOVE_ACID_SPRAY, 12
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_SLUDGE, 18
    learnset MOVE_STOCKPILE, 23
    learnset MOVE_SWALLOW, 23
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_SLUDGE_BOMB, 29
    //learnset MOVE_CLEAR_SMOG, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_AMNESIA, 40
    learnset MOVE_GUNK_SHOT, 45
    learnset MOVE_EXPLOSION, 47
    terminatelearnset

levelup SPECIES_GARBODOR
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_RECYCLE, 3
    learnset MOVE_TOXIC_SPIKES, 7
    //learnset MOVE_ACID_SPRAY, 12
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_SLUDGE, 18
    learnset MOVE_STOCKPILE, 23
    learnset MOVE_SWALLOW, 23
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_SLUDGE_BOMB, 29
    //learnset MOVE_CLEAR_SMOG, 34
    learnset MOVE_TOXIC, 39
    learnset MOVE_AMNESIA, 46
    learnset MOVE_GUNK_SHOT, 54
    learnset MOVE_EXPLOSION, 59
    terminatelearnset

levelup SPECIES_ZORUA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_FAKE_TEARS, 9
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_FAINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_TAUNT, 25
    //learnset MOVE_FOUL_PLAY, 29
    learnset MOVE_TORMENT, 33
    learnset MOVE_AGILITY, 37
    learnset MOVE_EMBARGO, 41
    learnset MOVE_PUNISHMENT, 45
    learnset MOVE_NASTY_PLOT, 49
    learnset MOVE_IMPRISON, 53
    //learnset MOVE_NIGHT_DAZE, 57
    terminatelearnset

levelup SPECIES_ZOROARK
    learnset MOVE_U_TURN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 1
    //learnset MOVE_HONE_CLAWS, 1
    learnset MOVE_PURSUIT, 5
    //learnset MOVE_HONE_CLAWS, 9
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_FAINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_TAUNT, 25
    //learnset MOVE_FOUL_PLAY, 29
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_TORMENT, 34
    learnset MOVE_AGILITY, 39
    learnset MOVE_EMBARGO, 44
    learnset MOVE_PUNISHMENT, 49
    learnset MOVE_NASTY_PLOT, 54
    learnset MOVE_IMPRISON, 59
    //learnset MOVE_NIGHT_DAZE, 64
    terminatelearnset

levelup SPECIES_MINCCINO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_HELPING_HAND, 7
    learnset MOVE_TICKLE, 9
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_ENCORE, 15
    learnset MOVE_SWIFT, 19
    learnset MOVE_SING, 21
    //learnset MOVE_TAIL_SLAP, 25
    learnset MOVE_CHARM, 27
    learnset MOVE_WAKE_UP_SLAP, 31
    //learnset MOVE_ECHOED_VOICE, 33
    learnset MOVE_SLAM, 37
    learnset MOVE_CAPTIVATE, 39
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_LAST_RESORT, 45
    //learnset MOVE_AFTER_YOU, 49
    terminatelearnset

levelup SPECIES_CINCCINO
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_SING, 1
    //learnset MOVE_TAIL_SLAP, 1
    terminatelearnset

levelup SPECIES_GOTHITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 3
    learnset MOVE_TICKLE, 7
    learnset MOVE_FAKE_TEARS, 10
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_EMBARGO, 19
    learnset MOVE_FAINT_ATTACK, 24
    //learnset MOVE_PSYSHOCK, 25
    learnset MOVE_FLATTER, 28
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_HEAL_BLOCK, 33
    learnset MOVE_PSYCHIC, 37
    //learnset MOVE_TELEKINESIS, 40
    learnset MOVE_CHARM, 46
    //learnset MOVE_MAGIC_ROOM, 48
    terminatelearnset

levelup SPECIES_GOTHORITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_CONFUSION, 3
    learnset MOVE_TICKLE, 7
    learnset MOVE_FAKE_TEARS, 10
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_EMBARGO, 19
    learnset MOVE_FAINT_ATTACK, 24
    //learnset MOVE_PSYSHOCK, 25
    learnset MOVE_FLATTER, 28
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_HEAL_BLOCK, 34
    learnset MOVE_PSYCHIC, 39
    //learnset MOVE_TELEKINESIS, 43
    learnset MOVE_CHARM, 50
    //learnset MOVE_MAGIC_ROOM, 53
    terminatelearnset

levelup SPECIES_GOTHITELLE
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TICKLE, 1
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_CONFUSION, 3
    learnset MOVE_TICKLE, 7
    learnset MOVE_FAKE_TEARS, 10
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_EMBARGO, 19
    learnset MOVE_FAINT_ATTACK, 24
    //learnset MOVE_PSYSHOCK, 25
    learnset MOVE_FLATTER, 28
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_HEAL_BLOCK, 34
    learnset MOVE_PSYCHIC, 39
    //learnset MOVE_TELEKINESIS, 45
    learnset MOVE_CHARM, 54
    //learnset MOVE_MAGIC_ROOM, 59
    terminatelearnset

levelup SPECIES_SOLOSIS
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_REFLECT, 3
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_SNATCH, 10
    learnset MOVE_HIDDEN_POWER, 14
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_CHARM, 19
    learnset MOVE_RECOVER, 24
    //learnset MOVE_PSYSHOCK, 25
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_PAIN_SPLIT, 33
    learnset MOVE_PSYCHIC, 37
    learnset MOVE_SKILL_SWAP, 40
    learnset MOVE_HEAL_BLOCK, 46
    //learnset MOVE_WONDER_ROOM, 48
    terminatelearnset

levelup SPECIES_DUOSION
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_SNATCH, 1
    learnset MOVE_REFLECT, 3
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_SNATCH, 10
    learnset MOVE_HIDDEN_POWER, 14
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_CHARM, 19
    learnset MOVE_RECOVER, 24
    //learnset MOVE_PSYSHOCK, 25
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_PAIN_SPLIT, 34
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_SKILL_SWAP, 43
    learnset MOVE_HEAL_BLOCK, 50
    //learnset MOVE_WONDER_ROOM, 53
    terminatelearnset

levelup SPECIES_REUNICLUS
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_SNATCH, 1
    learnset MOVE_REFLECT, 3
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_SNATCH, 10
    learnset MOVE_HIDDEN_POWER, 14
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_CHARM, 19
    learnset MOVE_RECOVER, 24
    //learnset MOVE_PSYSHOCK, 25
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_FUTURE_SIGHT, 31
    learnset MOVE_PAIN_SPLIT, 34
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_DIZZY_PUNCH, 41
    learnset MOVE_SKILL_SWAP, 45
    learnset MOVE_HEAL_BLOCK, 54
    //learnset MOVE_WONDER_ROOM, 59
    terminatelearnset

levelup SPECIES_DUCKLETT
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 3
    learnset MOVE_DEFOG, 6
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_AQUA_RING, 24
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_RAIN_DANCE, 34
    learnset MOVE_TAILWIND, 37
    learnset MOVE_BRAVE_BIRD, 41
    //learnset MOVE_HURRICANE, 46
    terminatelearnset

levelup SPECIES_SWANNA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_DEFOG, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_WATER_SPORT, 3
    learnset MOVE_DEFOG, 6
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_AQUA_RING, 24
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_RAIN_DANCE, 34
    learnset MOVE_TAILWIND, 40
    learnset MOVE_BRAVE_BIRD, 47
    //learnset MOVE_HURRICANE, 55
    terminatelearnset

levelup SPECIES_VANILLITE
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_UPROAR, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_MIST, 16
    learnset MOVE_AVALANCHE, 19
    learnset MOVE_TAUNT, 22
    learnset MOVE_MIRROR_SHOT, 26
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_HAIL, 40
    learnset MOVE_MIRROR_COAT, 44
    learnset MOVE_BLIZZARD, 49
    learnset MOVE_SHEER_COLD, 53
    terminatelearnset

levelup SPECIES_VANILLISH
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_UPROAR, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_UPROAR, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_MIST, 16
    learnset MOVE_AVALANCHE, 19
    learnset MOVE_TAUNT, 22
    learnset MOVE_MIRROR_SHOT, 26
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_HAIL, 42
    learnset MOVE_MIRROR_COAT, 47
    learnset MOVE_BLIZZARD, 53
    learnset MOVE_SHEER_COLD, 58
    terminatelearnset

levelup SPECIES_VANILLUXE
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_ICICLE_SPEAR, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_UPROAR, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_ASTONISH, 7
    learnset MOVE_UPROAR, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_MIST, 16
    learnset MOVE_AVALANCHE, 19
    learnset MOVE_TAUNT, 22
    learnset MOVE_MIRROR_SHOT, 26
    learnset MOVE_ACID_ARMOR, 31
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_HAIL, 42
    learnset MOVE_MIRROR_COAT, 50
    learnset MOVE_BLIZZARD, 59
    learnset MOVE_SHEER_COLD, 67
    terminatelearnset

levelup SPECIES_DEERLING
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FAINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_SOLAR_BEAM, 51
    terminatelearnset

levelup SPECIES_SAWSBUCK
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CAMOUFLAGE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_FAINT_ATTACK, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_AROMATHERAPY, 28
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_CHARM, 36
    //learnset MOVE_HORN_LEECH, 37
    learnset MOVE_NATURE_POWER, 44
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_SOLAR_BEAM, 60
    terminatelearnset

levelup SPECIES_EMOLGA
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_CHARGE, 10
    learnset MOVE_SPARK, 13
    learnset MOVE_PURSUIT, 16
    learnset MOVE_DOUBLE_TEAM, 19
    learnset MOVE_SHOCK_WAVE, 22
    //learnset MOVE_ELECTRO_BALL, 26
    //learnset MOVE_ACROBATICS, 30
    learnset MOVE_LIGHT_SCREEN, 34
    learnset MOVE_ENCORE, 38
    //learnset MOVE_VOLT_SWITCH, 42
    learnset MOVE_AGILITY, 46
    learnset MOVE_DISCHARGE, 50
    terminatelearnset

levelup SPECIES_KARRABLAST
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ENDURE, 8
    learnset MOVE_FURY_CUTTER, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_FALSE_SWIPE, 25
    learnset MOVE_BUG_BUZZ, 28
    learnset MOVE_SLASH, 32
    learnset MOVE_TAKE_DOWN, 37
    learnset MOVE_SCARY_FACE, 40
    learnset MOVE_X_SCISSOR, 44
    learnset MOVE_FLAIL, 49
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_DOUBLE_EDGE, 56
    terminatelearnset

levelup SPECIES_ESCAVALIER
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    //learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_LEER, 4
    //learnset MOVE_QUICK_GUARD, 8
    learnset MOVE_TWINEEDLE, 13
    learnset MOVE_FURY_ATTACK, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_FALSE_SWIPE, 25
    learnset MOVE_BUG_BUZZ, 28
    learnset MOVE_SLASH, 32
    learnset MOVE_IRON_HEAD, 37
    learnset MOVE_IRON_DEFENSE, 40
    learnset MOVE_X_SCISSOR, 44
    learnset MOVE_REVERSAL, 49
    learnset MOVE_SWORDS_DANCE, 52
    learnset MOVE_GIGA_IMPACT, 56
    terminatelearnset

levelup SPECIES_FOONGUS
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 6
    learnset MOVE_ASTONISH, 8
    learnset MOVE_BIDE, 12
    learnset MOVE_MEGA_DRAIN, 15
    learnset MOVE_INGRAIN, 18
    learnset MOVE_FAINT_ATTACK, 20
    learnset MOVE_SWEET_SCENT, 24
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_TOXIC, 32
    learnset MOVE_SYNTHESIS, 35
    //learnset MOVE_CLEAR_SMOG, 39
    learnset MOVE_SOLAR_BEAM, 43
    //learnset MOVE_RAGE_POWDER, 45
    learnset MOVE_SPORE, 50
    terminatelearnset

levelup SPECIES_AMOONGUSS
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_GROWTH, 6
    learnset MOVE_ASTONISH, 8
    learnset MOVE_BIDE, 12
    learnset MOVE_MEGA_DRAIN, 15
    learnset MOVE_INGRAIN, 18
    learnset MOVE_FAINT_ATTACK, 20
    learnset MOVE_SWEET_SCENT, 24
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_TOXIC, 32
    learnset MOVE_SYNTHESIS, 35
    //learnset MOVE_CLEAR_SMOG, 43
    learnset MOVE_SOLAR_BEAM, 49
    //learnset MOVE_RAGE_POWDER, 54
    learnset MOVE_SPORE, 62
    terminatelearnset

levelup SPECIES_FRILLISH
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

levelup SPECIES_JELLICENT
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

levelup SPECIES_ALOMOMOLA
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_AQUA_RING, 5
    learnset MOVE_AQUA_JET, 9
    learnset MOVE_DOUBLE_SLAP, 13
    //learnset MOVE_HEAL_PULSE, 17
    learnset MOVE_PROTECT, 21
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_WAKE_UP_SLAP, 29
    //learnset MOVE_SOAK, 33
    learnset MOVE_WISH, 37
    learnset MOVE_BRINE, 41
    learnset MOVE_SAFEGUARD, 45
    learnset MOVE_HELPING_HAND, 49
    //learnset MOVE_WIDE_GUARD, 53
    learnset MOVE_HEALING_WISH, 57
    learnset MOVE_HYDRO_PUMP, 61
    terminatelearnset

levelup SPECIES_JOLTIK
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_SPIDER_WEB, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 12
    //learnset MOVE_ELECTROWEB, 15
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_GASTRO_ACID, 23
    learnset MOVE_SLASH, 26
    //learnset MOVE_ELECTRO_BALL, 29
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_AGILITY, 37
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_DISCHARGE, 45
    learnset MOVE_BUG_BUZZ, 48
    terminatelearnset

levelup SPECIES_GALVANTULA
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_SPIDER_WEB, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 12
    //learnset MOVE_ELECTROWEB, 15
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_GASTRO_ACID, 23
    learnset MOVE_SLASH, 26
    //learnset MOVE_ELECTRO_BALL, 29
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_AGILITY, 40
    learnset MOVE_SUCKER_PUNCH, 46
    learnset MOVE_DISCHARGE, 54
    learnset MOVE_BUG_BUZZ, 60
    terminatelearnset

levelup SPECIES_FERROSEED
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_CURSE, 9
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_GYRO_BALL, 21
    learnset MOVE_IRON_DEFENSE, 26
    learnset MOVE_MIRROR_SHOT, 30
    learnset MOVE_INGRAIN, 35
    learnset MOVE_SELF_DESTRUCT, 38
    learnset MOVE_IRON_HEAD, 43
    learnset MOVE_PAYBACK, 47
    learnset MOVE_FLASH_CANNON, 52
    learnset MOVE_EXPLOSION, 55
    terminatelearnset

levelup SPECIES_FERROTHORN
    learnset MOVE_ROCK_CLIMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_CURSE, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_CURSE, 9
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_PIN_MISSILE, 18
    learnset MOVE_GYRO_BALL, 21
    learnset MOVE_IRON_DEFENSE, 26
    learnset MOVE_MIRROR_SHOT, 30
    learnset MOVE_INGRAIN, 35
    learnset MOVE_SELF_DESTRUCT, 38
    learnset MOVE_POWER_WHIP, 40
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_PAYBACK, 53
    learnset MOVE_FLASH_CANNON, 61
    learnset MOVE_EXPLOSION, 67
    terminatelearnset

levelup SPECIES_KLINK
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_CHARGE, 6
    learnset MOVE_THUNDER_SHOCK, 11
    //learnset MOVE_GEAR_GRIND, 16
    learnset MOVE_BIND, 21
    learnset MOVE_CHARGE_BEAM, 26
    //learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_SCREECH, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_METAL_SOUND, 45
    //learnset MOVE_SHIFT_GEAR, 48
    learnset MOVE_LOCK_ON, 51
    learnset MOVE_ZAP_CANNON, 54
    learnset MOVE_HYPER_BEAM, 57
    terminatelearnset

levelup SPECIES_KLANG
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    //learnset MOVE_GEAR_GRIND, 1
    learnset MOVE_CHARGE, 6
    learnset MOVE_THUNDER_SHOCK, 11
    //learnset MOVE_GEAR_GRIND, 16
    learnset MOVE_BIND, 21
    learnset MOVE_CHARGE_BEAM, 26
    //learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_SCREECH, 40
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_METAL_SOUND, 48
    //learnset MOVE_SHIFT_GEAR, 52
    learnset MOVE_LOCK_ON, 56
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_HYPER_BEAM, 64
    terminatelearnset

levelup SPECIES_KLINKLANG
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_CHARGE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    //learnset MOVE_GEAR_GRIND, 1
    learnset MOVE_CHARGE, 6
    learnset MOVE_THUNDER_SHOCK, 11
    //learnset MOVE_GEAR_GRIND, 16
    learnset MOVE_BIND, 21
    learnset MOVE_CHARGE_BEAM, 25
    //learnset MOVE_AUTOTOMIZE, 31
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_SCREECH, 40
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_METAL_SOUND, 48
    //learnset MOVE_SHIFT_GEAR, 54
    learnset MOVE_LOCK_ON, 60
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 72
    terminatelearnset

levelup SPECIES_TYNAMO
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_SPARK, 1
    learnset MOVE_CHARGE_BEAM, 1
    terminatelearnset

levelup SPECIES_EELEKTRIK
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_SPARK, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_BIND, 9
    learnset MOVE_ACID, 19
    learnset MOVE_DISCHARGE, 29
    learnset MOVE_CRUNCH, 39
    learnset MOVE_THUNDERBOLT, 44
    //learnset MOVE_ACID_SPRAY, 49
    //learnset MOVE_COIL, 54
    //learnset MOVE_WILD_CHARGE, 59
    learnset MOVE_GASTRO_ACID, 64
    learnset MOVE_ZAP_CANNON, 69
    learnset MOVE_THRASH, 74
    terminatelearnset

levelup SPECIES_EELEKTROSS
    learnset MOVE_CRUSH_CLAW, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_ACID, 1
    learnset MOVE_DISCHARGE, 1
    learnset MOVE_CRUNCH, 1
    terminatelearnset

levelup SPECIES_ELGYEM
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_HEAL_BLOCK, 8
    learnset MOVE_MIRACLE_EYE, 11
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_HIDDEN_POWER, 22
    learnset MOVE_IMPRISON, 25
    //learnset MOVE_SIMPLE_BEAM, 29
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_CALM_MIND, 43
    learnset MOVE_RECOVER, 46
    //learnset MOVE_GUARD_SPLIT, 50
    //learnset MOVE_POWER_SPLIT, 50
    //learnset MOVE_SYNCHRONOISE, 53
    //learnset MOVE_WONDER_ROOM, 56
    terminatelearnset

levelup SPECIES_BEHEEYEM
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HEAL_BLOCK, 1
    learnset MOVE_MIRACLE_EYE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_HEAL_BLOCK, 8
    learnset MOVE_MIRACLE_EYE, 11
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_HIDDEN_POWER, 22
    learnset MOVE_IMPRISON, 25
    //learnset MOVE_SIMPLE_BEAM, 29
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_PSYCH_UP, 36
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_CALM_MIND, 45
    learnset MOVE_RECOVER, 50
    //learnset MOVE_GUARD_SPLIT, 56
    //learnset MOVE_POWER_SPLIT, 58
    //learnset MOVE_SYNCHRONOISE, 63
    //learnset MOVE_WONDER_ROOM, 68
    terminatelearnset

levelup SPECIES_LITWICK
    learnset MOVE_EMBER, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MINIMIZE, 3
    learnset MOVE_SMOG, 5
    learnset MOVE_FIRE_SPIN, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_NIGHT_SHADE, 13
    learnset MOVE_WILL_O_WISP, 16
    //learnset MOVE_FLAME_BURST, 20
    learnset MOVE_IMPRISON, 24
    //learnset MOVE_HEX, 28
    learnset MOVE_MEMENTO, 33
    //learnset MOVE_INFERNO, 38
    learnset MOVE_CURSE, 43
    learnset MOVE_SHADOW_BALL, 49
    learnset MOVE_PAIN_SPLIT, 55
    learnset MOVE_OVERHEAT, 61
    terminatelearnset

levelup SPECIES_LAMPENT
    learnset MOVE_EMBER, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MINIMIZE, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_MINIMIZE, 3
    learnset MOVE_SMOG, 5
    learnset MOVE_FIRE_SPIN, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_NIGHT_SHADE, 13
    learnset MOVE_WILL_O_WISP, 16
    //learnset MOVE_FLAME_BURST, 20
    learnset MOVE_IMPRISON, 24
    //learnset MOVE_HEX, 28
    learnset MOVE_MEMENTO, 33
    //learnset MOVE_INFERNO, 38
    learnset MOVE_CURSE, 45
    learnset MOVE_SHADOW_BALL, 53
    learnset MOVE_PAIN_SPLIT, 61
    learnset MOVE_OVERHEAT, 69
    terminatelearnset

levelup SPECIES_CHANDELURE
    learnset MOVE_SMOG, 1
    learnset MOVE_CONFUSE_RAY, 1
    //learnset MOVE_FLAME_BURST, 1
    //learnset MOVE_HEX, 1
    terminatelearnset

levelup SPECIES_AXEW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ASSURANCE, 7
    learnset MOVE_DRAGON_RAGE, 10
    //learnset MOVE_DUAL_CHOP, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FALSE_SWIPE, 24
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_DRAGON_DANCE, 32
    learnset MOVE_TAUNT, 36
    learnset MOVE_DRAGON_PULSE, 41
    learnset MOVE_SWORDS_DANCE, 46
    learnset MOVE_GUILLOTINE, 51
    learnset MOVE_OUTRAGE, 56
    learnset MOVE_GIGA_IMPACT, 61
    terminatelearnset

levelup SPECIES_FRAXURE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ASSURANCE, 7
    learnset MOVE_DRAGON_RAGE, 10
    //learnset MOVE_DUAL_CHOP, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FALSE_SWIPE, 24
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_DRAGON_DANCE, 32
    learnset MOVE_TAUNT, 36
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_SWORDS_DANCE, 48
    learnset MOVE_GUILLOTINE, 54
    learnset MOVE_OUTRAGE, 60
    learnset MOVE_GIGA_IMPACT, 66
    terminatelearnset

levelup SPECIES_HAXORUS
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ASSURANCE, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_ASSURANCE, 7
    learnset MOVE_DRAGON_RAGE, 10
    //learnset MOVE_DUAL_CHOP, 13
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FALSE_SWIPE, 24
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_DRAGON_DANCE, 32
    learnset MOVE_TAUNT, 36
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_SWORDS_DANCE, 50
    learnset MOVE_GUILLOTINE, 58
    learnset MOVE_OUTRAGE, 66
    learnset MOVE_GIGA_IMPACT, 74
    terminatelearnset

levelup SPECIES_CUBCHOO
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BIDE, 9
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_FURY_SWIPES, 17
    learnset MOVE_BRINE, 21
    learnset MOVE_ENDURE, 25
    learnset MOVE_CHARM, 29
    learnset MOVE_SLASH, 33
    learnset MOVE_FLAIL, 36
    learnset MOVE_REST, 41
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_HAIL, 49
    learnset MOVE_THRASH, 53
    learnset MOVE_SHEER_COLD, 57
    terminatelearnset

levelup SPECIES_BEARTIC
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_BIDE, 9
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_FURY_SWIPES, 17
    learnset MOVE_BRINE, 21
    learnset MOVE_ENDURE, 25
    learnset MOVE_SWAGGER, 29
    learnset MOVE_SLASH, 33
    learnset MOVE_FLAIL, 36
    //learnset MOVE_ICICLE_CRASH, 37
    learnset MOVE_REST, 41
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_HAIL, 53
    learnset MOVE_THRASH, 59
    learnset MOVE_SHEER_COLD, 66
    terminatelearnset

levelup SPECIES_CRYOGONAL
    learnset MOVE_BIND, 1
    learnset MOVE_ICE_SHARD, 5
    learnset MOVE_SHARPEN, 9
    learnset MOVE_RAPID_SPIN, 13
    learnset MOVE_ICY_WIND, 17
    learnset MOVE_MIST, 21
    learnset MOVE_HAZE, 21
    learnset MOVE_AURORA_BEAM, 25
    learnset MOVE_ACID_ARMOR, 29
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_LIGHT_SCREEN, 37
    learnset MOVE_REFLECT, 37
    learnset MOVE_SLASH, 41
    learnset MOVE_CONFUSE_RAY, 45
    learnset MOVE_RECOVER, 49
    learnset MOVE_SOLAR_BEAM, 53
    learnset MOVE_NIGHT_SLASH, 57
    learnset MOVE_SHEER_COLD, 61
    terminatelearnset

levelup SPECIES_SHELMET
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_ACID, 4
    learnset MOVE_BIDE, 8
    learnset MOVE_CURSE, 13
    //learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_YAWN, 25
    learnset MOVE_PROTECT, 28
    learnset MOVE_ACID_ARMOR, 32
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_BUG_BUZZ, 44
    learnset MOVE_RECOVER, 49
    learnset MOVE_GUARD_SWAP, 52
    //learnset MOVE_FINAL_GAMBIT, 56
    terminatelearnset

levelup SPECIES_ACCELGOR
    learnset MOVE_LEECH_LIFE, 1
    //learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_DOUBLE_TEAM, 1
    learnset MOVE_QUICK_ATTACK, 1
    //learnset MOVE_ACID_SPRAY, 4
    learnset MOVE_DOUBLE_TEAM, 8
    learnset MOVE_QUICK_ATTACK, 13
    //learnset MOVE_STRUGGLE_BUG, 16
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_SWIFT, 25
    learnset MOVE_ME_FIRST, 28
    learnset MOVE_AGILITY, 32
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_U_TURN, 40
    learnset MOVE_BUG_BUZZ, 44
    learnset MOVE_RECOVER, 49
    learnset MOVE_POWER_SWAP, 52
    //learnset MOVE_FINAL_GAMBIT, 56
    terminatelearnset

levelup SPECIES_STUNFISK
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SPORT, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_THUNDER_SHOCK, 9
    learnset MOVE_MUD_SHOT, 13
    learnset MOVE_CAMOUFLAGE, 17
    learnset MOVE_MUD_BOMB, 21
    learnset MOVE_DISCHARGE, 25
    learnset MOVE_ENDURE, 30
    learnset MOVE_BOUNCE, 35
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_REVENGE, 50
    learnset MOVE_FLAIL, 55
    learnset MOVE_FISSURE, 61
    terminatelearnset

levelup SPECIES_MIENFOO
    learnset MOVE_POUND, 1
    learnset MOVE_MEDITATE, 5
    learnset MOVE_DETECT, 9
    learnset MOVE_FAKE_OUT, 13
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_SWIFT, 21
    learnset MOVE_CALM_MIND, 25
    learnset MOVE_FORCE_PALM, 29
    learnset MOVE_DRAIN_PUNCH, 33
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_U_TURN, 41
    //learnset MOVE_QUICK_GUARD, 45
    learnset MOVE_BOUNCE, 49
    learnset MOVE_HI_JUMP_KICK, 53
    learnset MOVE_REVERSAL, 57
    learnset MOVE_AURA_SPHERE, 61
    terminatelearnset

levelup SPECIES_MIENSHAO
    learnset MOVE_POUND, 1
    learnset MOVE_MEDITATE, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_MEDITATE, 5
    learnset MOVE_DETECT, 9
    learnset MOVE_FAKE_OUT, 13
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_SWIFT, 21
    learnset MOVE_CALM_MIND, 25
    learnset MOVE_FORCE_PALM, 29
    learnset MOVE_DRAIN_PUNCH, 33
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_U_TURN, 41
    //learnset MOVE_WIDE_GUARD, 45
    learnset MOVE_BOUNCE, 49
    learnset MOVE_HI_JUMP_KICK, 56
    learnset MOVE_REVERSAL, 63
    learnset MOVE_AURA_SPHERE, 70
    terminatelearnset

levelup SPECIES_DRUDDIGON
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    //learnset MOVE_HONE_CLAWS, 5
    learnset MOVE_BITE, 9
    learnset MOVE_SCARY_FACE, 13
    learnset MOVE_DRAGON_RAGE, 18
    learnset MOVE_SLASH, 21
    learnset MOVE_CRUNCH, 25
    learnset MOVE_DRAGON_CLAW, 27
    //learnset MOVE_CHIP_AWAY, 31
    learnset MOVE_REVENGE, 35
    learnset MOVE_NIGHT_SLASH, 40
    //learnset MOVE_DRAGON_TAIL, 45
    learnset MOVE_ROCK_CLIMB, 49
    learnset MOVE_SUPERPOWER, 55
    learnset MOVE_OUTRAGE, 62
    terminatelearnset

levelup SPECIES_GOLETT
    learnset MOVE_POUND, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_SHADOW_PUNCH, 13
    learnset MOVE_IRON_DEFENSE, 17
    learnset MOVE_MEGA_PUNCH, 21
    learnset MOVE_MAGNITUDE, 25
    learnset MOVE_DYNAMIC_PUNCH, 30
    learnset MOVE_NIGHT_SHADE, 35
    learnset MOVE_CURSE, 40
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_HAMMER_ARM, 50
    learnset MOVE_FOCUS_PUNCH, 55
    terminatelearnset

levelup SPECIES_GOLURK
    learnset MOVE_POUND, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_SHADOW_PUNCH, 13
    learnset MOVE_IRON_DEFENSE, 17
    learnset MOVE_MEGA_PUNCH, 21
    learnset MOVE_MAGNITUDE, 25
    learnset MOVE_DYNAMIC_PUNCH, 30
    learnset MOVE_NIGHT_SHADE, 35
    learnset MOVE_CURSE, 40
    //learnset MOVE_HEAVY_SLAM, 43
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_HAMMER_ARM, 60
    learnset MOVE_FOCUS_PUNCH, 70
    terminatelearnset

levelup SPECIES_PAWNIARD
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 6
    learnset MOVE_FURY_CUTTER, 9
    learnset MOVE_TORMENT, 14
    learnset MOVE_FAINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 22
    learnset MOVE_METAL_CLAW, 25
    learnset MOVE_SLASH, 30
    learnset MOVE_ASSURANCE, 33
    learnset MOVE_METAL_SOUND, 38
    learnset MOVE_EMBARGO, 41
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_NIGHT_SLASH, 49
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_SWORDS_DANCE, 57
    learnset MOVE_GUILLOTINE, 62
    terminatelearnset

levelup SPECIES_BISHARP
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_LEER, 6
    learnset MOVE_FURY_CUTTER, 9
    learnset MOVE_TORMENT, 14
    learnset MOVE_FAINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 22
    learnset MOVE_METAL_CLAW, 25
    learnset MOVE_SLASH, 30
    learnset MOVE_ASSURANCE, 33
    learnset MOVE_METAL_SOUND, 38
    learnset MOVE_EMBARGO, 41
    learnset MOVE_IRON_DEFENSE, 46
    learnset MOVE_NIGHT_SLASH, 49
    learnset MOVE_IRON_HEAD, 57
    learnset MOVE_SWORDS_DANCE, 63
    learnset MOVE_GUILLOTINE, 71
    terminatelearnset

levelup SPECIES_BOUFFALANT
    learnset MOVE_PURSUIT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 6
    learnset MOVE_FURY_ATTACK, 11
    learnset MOVE_HORN_ATTACK, 16
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_REVENGE, 26
    //learnset MOVE_HEAD_CHARGE, 31
    learnset MOVE_FOCUS_ENERGY, 36
    learnset MOVE_MEGAHORN, 41
    learnset MOVE_REVERSAL, 46
    learnset MOVE_THRASH, 51
    learnset MOVE_SWORDS_DANCE, 56
    learnset MOVE_GIGA_IMPACT, 61
    terminatelearnset

levelup SPECIES_RUFFLET
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_WING_ATTACK, 10
    //learnset MOVE_HONE_CLAWS, 14
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_SLASH, 28
    learnset MOVE_DEFOG, 32
    learnset MOVE_TAILWIND, 37
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_CRUSH_CLAW, 46
    //learnset MOVE_SKY_DROP, 50
    learnset MOVE_WHIRLWIND, 55
    learnset MOVE_BRAVE_BIRD, 59
    learnset MOVE_THRASH, 64
    terminatelearnset

levelup SPECIES_BRAVIARY
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_WING_ATTACK, 10
    //learnset MOVE_HONE_CLAWS, 14
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_SLASH, 28
    learnset MOVE_DEFOG, 32
    learnset MOVE_TAILWIND, 37
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_CRUSH_CLAW, 46
    //learnset MOVE_SKY_DROP, 50
    learnset MOVE_SUPERPOWER, 51
    learnset MOVE_WHIRLWIND, 57
    learnset MOVE_BRAVE_BIRD, 63
    learnset MOVE_THRASH, 70
    terminatelearnset

levelup SPECIES_VULLABY
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_PLUCK, 10
    learnset MOVE_NASTY_PLOT, 14
    learnset MOVE_FLATTER, 19
    learnset MOVE_FAINT_ATTACK, 23
    learnset MOVE_PUNISHMENT, 28
    learnset MOVE_DEFOG, 32
    learnset MOVE_TAILWIND, 37
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_DARK_PULSE, 46
    learnset MOVE_EMBARGO, 50
    learnset MOVE_WHIRLWIND, 55
    learnset MOVE_BRAVE_BIRD, 59
    learnset MOVE_MIRROR_MOVE, 64
    terminatelearnset

levelup SPECIES_MANDIBUZZ
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_PLUCK, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_PLUCK, 10
    learnset MOVE_NASTY_PLOT, 14
    learnset MOVE_FLATTER, 19
    learnset MOVE_FAINT_ATTACK, 23
    learnset MOVE_PUNISHMENT, 28
    learnset MOVE_DEFOG, 32
    learnset MOVE_TAILWIND, 37
    learnset MOVE_AIR_SLASH, 41
    learnset MOVE_DARK_PULSE, 46
    learnset MOVE_EMBARGO, 50
    learnset MOVE_BONE_RUSH, 51
    learnset MOVE_WHIRLWIND, 57
    learnset MOVE_BRAVE_BIRD, 63
    learnset MOVE_MIRROR_MOVE, 70
    terminatelearnset

levelup SPECIES_HEATMOR
    //learnset MOVE_INCINERATE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_ODOR_SLEUTH, 6
    learnset MOVE_BIND, 11
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_FURY_SWIPES, 21
    learnset MOVE_SNATCH, 26
    //learnset MOVE_FLAME_BURST, 31
    learnset MOVE_BUG_BITE, 36
    learnset MOVE_SLASH, 41
    learnset MOVE_AMNESIA, 46
    learnset MOVE_FLAMETHROWER, 51
    learnset MOVE_STOCKPILE, 56
    learnset MOVE_SPIT_UP, 56
    learnset MOVE_SWALLOW, 56
    //learnset MOVE_INFERNO, 61
    terminatelearnset

levelup SPECIES_DURANT
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_BITE, 11
    learnset MOVE_AGILITY, 16
    learnset MOVE_METAL_CLAW, 21
    learnset MOVE_BUG_BITE, 26
    learnset MOVE_CRUNCH, 31
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_DIG, 41
    //learnset MOVE_ENTRAINMENT, 46
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_IRON_DEFENSE, 56
    learnset MOVE_GUILLOTINE, 61
    learnset MOVE_METAL_SOUND, 66
    terminatelearnset

levelup SPECIES_DEINO
    learnset MOVE_TACKLE, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DRAGON_BREATH, 17
    learnset MOVE_ROAR, 20
    learnset MOVE_CRUNCH, 25
    learnset MOVE_SLAM, 28
    learnset MOVE_DRAGON_PULSE, 32
    //learnset MOVE_WORK_UP, 38
    learnset MOVE_DRAGON_RUSH, 42
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_SCARY_FACE, 52
    learnset MOVE_HYPER_VOICE, 58
    learnset MOVE_OUTRAGE, 62
    terminatelearnset

levelup SPECIES_ZWEILOUS
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DRAGON_BREATH, 17
    learnset MOVE_ROAR, 20
    learnset MOVE_CRUNCH, 25
    learnset MOVE_SLAM, 28
    learnset MOVE_DRAGON_PULSE, 32
    //learnset MOVE_WORK_UP, 38
    learnset MOVE_DRAGON_RUSH, 42
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_SCARY_FACE, 55
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_OUTRAGE, 71
    terminatelearnset

levelup SPECIES_HYDREIGON
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_BITE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DRAGON_BREATH, 17
    learnset MOVE_ROAR, 20
    learnset MOVE_CRUNCH, 25
    learnset MOVE_SLAM, 28
    learnset MOVE_DRAGON_PULSE, 32
    //learnset MOVE_WORK_UP, 38
    learnset MOVE_DRAGON_RUSH, 42
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_SCARY_FACE, 55
    learnset MOVE_HYPER_VOICE, 68
    learnset MOVE_OUTRAGE, 79
    terminatelearnset

levelup SPECIES_LARVESTA
    learnset MOVE_EMBER, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_LEECH_LIFE, 10
    learnset MOVE_TAKE_DOWN, 20
    //learnset MOVE_FLAME_CHARGE, 30
    learnset MOVE_BUG_BITE, 40
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_FLAME_WHEEL, 60
    learnset MOVE_BUG_BUZZ, 70
    learnset MOVE_AMNESIA, 80
    learnset MOVE_THRASH, 90
    learnset MOVE_FLARE_BLITZ, 100
    terminatelearnset

levelup SPECIES_VOLCARONA
    learnset MOVE_EMBER, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEECH_LIFE, 10
    learnset MOVE_GUST, 20
    learnset MOVE_FIRE_SPIN, 30
    learnset MOVE_WHIRLWIND, 40
    learnset MOVE_SILVER_WIND, 50
    //learnset MOVE_QUIVER_DANCE, 59
    learnset MOVE_HEAT_WAVE, 60
    learnset MOVE_BUG_BUZZ, 70
    //learnset MOVE_RAGE_POWDER, 80
    //learnset MOVE_HURRICANE, 90
    //learnset MOVE_FIERY_DANCE, 100
    terminatelearnset

levelup SPECIES_COBALION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_METAL_CLAW, 13
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_HELPING_HAND, 25
    //learnset MOVE_RETALIATE, 31
    learnset MOVE_IRON_HEAD, 37
    //learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_SWORDS_DANCE, 49
    //learnset MOVE_QUICK_GUARD, 55
    //learnset MOVE_WORK_UP, 61
    learnset MOVE_METAL_BURST, 67
    learnset MOVE_CLOSE_COMBAT, 73
    terminatelearnset

levelup SPECIES_TERRAKION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_KICK, 7
    //learnset MOVE_SMACK_DOWN, 13
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_HELPING_HAND, 25
    //learnset MOVE_RETALIATE, 31
    learnset MOVE_ROCK_SLIDE, 37
    //learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_SWORDS_DANCE, 49
    //learnset MOVE_QUICK_GUARD, 55
    //learnset MOVE_WORK_UP, 61
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_CLOSE_COMBAT, 73
    terminatelearnset

levelup SPECIES_VIRIZION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_HELPING_HAND, 25
    //learnset MOVE_RETALIATE, 31
    learnset MOVE_GIGA_DRAIN, 37
    //learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_SWORDS_DANCE, 49
    //learnset MOVE_QUICK_GUARD, 55
    //learnset MOVE_WORK_UP, 61
    learnset MOVE_LEAF_BLADE, 67
    learnset MOVE_CLOSE_COMBAT, 73
    terminatelearnset

levelup SPECIES_TORNADUS
    learnset MOVE_UPROAR, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_SWAGGER, 7
    learnset MOVE_BITE, 13
    learnset MOVE_REVENGE, 19
    learnset MOVE_AIR_CUTTER, 25
    learnset MOVE_EXTRASENSORY, 31
    learnset MOVE_AGILITY, 37
    learnset MOVE_AIR_SLASH, 43
    learnset MOVE_CRUNCH, 49
    learnset MOVE_TAILWIND, 55
    learnset MOVE_RAIN_DANCE, 61
    //learnset MOVE_HURRICANE, 67
    learnset MOVE_DARK_PULSE, 73
    learnset MOVE_HAMMER_ARM, 79
    learnset MOVE_THRASH, 85
    terminatelearnset

levelup SPECIES_THUNDURUS
    learnset MOVE_UPROAR, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SWAGGER, 7
    learnset MOVE_BITE, 13
    learnset MOVE_REVENGE, 19
    learnset MOVE_SHOCK_WAVE, 25
    learnset MOVE_HEAL_BLOCK, 31
    learnset MOVE_AGILITY, 37
    learnset MOVE_DISCHARGE, 43
    learnset MOVE_CRUNCH, 49
    learnset MOVE_CHARGE, 55
    learnset MOVE_NASTY_PLOT, 61
    learnset MOVE_THUNDER, 67
    learnset MOVE_DARK_PULSE, 73
    learnset MOVE_HAMMER_ARM, 79
    learnset MOVE_THRASH, 85
    terminatelearnset

levelup SPECIES_RESHIRAM
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_IMPRISON, 8
    learnset MOVE_ANCIENT_POWER, 15
    learnset MOVE_FLAMETHROWER, 22
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_SLASH, 36
    learnset MOVE_EXTRASENSORY, 43
    //learnset MOVE_FUSION_FLARE, 50
    learnset MOVE_DRAGON_PULSE, 54
    learnset MOVE_IMPRISON, 64
    learnset MOVE_CRUNCH, 71
    learnset MOVE_FIRE_BLAST, 78
    learnset MOVE_OUTRAGE, 85
    learnset MOVE_HYPER_VOICE, 92
    //learnset MOVE_BLUE_FLARE, 100
    terminatelearnset

levelup SPECIES_ZEKROM
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_IMPRISON, 8
    learnset MOVE_ANCIENT_POWER, 15
    learnset MOVE_THUNDERBOLT, 22
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_SLASH, 36
    learnset MOVE_ZEN_HEADBUTT, 43
    //learnset MOVE_FUSION_BOLT, 50
    learnset MOVE_DRAGON_CLAW, 54
    learnset MOVE_IMPRISON, 64
    learnset MOVE_CRUNCH, 71
    learnset MOVE_THUNDER, 78
    learnset MOVE_OUTRAGE, 85
    learnset MOVE_HYPER_VOICE, 92
    //learnset MOVE_BOLT_STRIKE, 100
    terminatelearnset

levelup SPECIES_LANDORUS
    learnset MOVE_BLOCK, 1
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_ROCK_TOMB, 1
    learnset MOVE_IMPRISON, 7
    learnset MOVE_PUNISHMENT, 13
    //learnset MOVE_BULLDOZE, 19
    learnset MOVE_ROCK_THROW, 25
    learnset MOVE_EXTRASENSORY, 31
    learnset MOVE_SWORDS_DANCE, 37
    learnset MOVE_EARTH_POWER, 43
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_SANDSTORM, 61
    learnset MOVE_FISSURE, 67
    learnset MOVE_STONE_EDGE, 73
    learnset MOVE_HAMMER_ARM, 79
    learnset MOVE_OUTRAGE, 85
    terminatelearnset

levelup SPECIES_KYUREM
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_DRAGON_RAGE, 1
    learnset MOVE_IMPRISON, 8
    learnset MOVE_ANCIENT_POWER, 15
    learnset MOVE_ICE_BEAM, 22
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_SLASH, 36
    learnset MOVE_SCARY_FACE, 43
    //learnset MOVE_GLACIATE, 50
    learnset MOVE_DRAGON_PULSE, 57
    learnset MOVE_IMPRISON, 64
    learnset MOVE_ENDEAVOR, 71
    learnset MOVE_BLIZZARD, 78
    learnset MOVE_OUTRAGE, 85
    learnset MOVE_HYPER_VOICE, 92
    terminatelearnset

levelup SPECIES_KELDEO
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_HELPING_HAND, 25
    //learnset MOVE_RETALIATE, 31
    learnset MOVE_AQUA_TAIL, 37
    //learnset MOVE_SACRED_SWORD, 43
    learnset MOVE_SWORDS_DANCE, 49
    //learnset MOVE_QUICK_GUARD, 55
    //learnset MOVE_WORK_UP, 61
    learnset MOVE_HYDRO_PUMP, 67
    learnset MOVE_CLOSE_COMBAT, 73
    terminatelearnset

levelup SPECIES_MELOETTA
    //learnset MOVE_ROUND, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CONFUSION, 11
    learnset MOVE_SING, 16
    learnset MOVE_TEETER_DANCE, 21
    //learnset MOVE_ACROBATICS, 26
    learnset MOVE_PSYBEAM, 31
    //learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_U_TURN, 43
    learnset MOVE_WAKE_UP_SLAP, 50
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_ROLE_PLAY, 71
    learnset MOVE_CLOSE_COMBAT, 78
    learnset MOVE_PERISH_SONG, 85
    terminatelearnset

levelup SPECIES_GENESECT
    //learnset MOVE_TECHNO_BLAST, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SCREECH, 1
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_LOCK_ON, 11
    //learnset MOVE_FLAME_CHARGE, 18
    learnset MOVE_MAGNET_BOMB, 22
    learnset MOVE_SLASH, 29
    learnset MOVE_METAL_SOUND, 33
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_BUG_BUZZ, 55
    //learnset MOVE_SIMPLE_BEAM, 62
    learnset MOVE_ZAP_CANNON, 66
    learnset MOVE_HYPER_BEAM, 73
    learnset MOVE_SELF_DESTRUCT, 77
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
	learnset MOVE_FAINT_ATTACK, 33
	learnset MOVE_SUBSTITUTE, 42
	learnset MOVE_EXTRASENSORY, 49
	learnset MOVE_DOUBLE_TEAM, 56
	learnset MOVE_HYDRO_PUMP, 68
	learnset MOVE_HAZE, 70
	learnset MOVE_NIGHT_SLASH, 77
	terminatelearnset

levelup SPECIES_BUNNELBY
	learnset MOVE_TACKLE, 1
	learnset MOVE_AGILITY, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_DOUBLE_SLAP, 10
	learnset MOVE_MUD_SLAP, 13
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_MUD_SHOT, 18
	learnset MOVE_DOUBLE_KICK, 20
	learnset MOVE_ODOR_SLEUTH, 25
	learnset MOVE_FLAIL, 29
	learnset MOVE_DIG, 33
	learnset MOVE_BOUNCE, 38
	learnset MOVE_SUPER_FANG, 42
	learnset MOVE_FACADE, 47
	learnset MOVE_EARTHQUAKE, 49
	terminatelearnset

levelup SPECIES_DIGGERSBY
	learnset MOVE_HAMMER_ARM, 1
	learnset MOVE_ROTOTILLER, 1
	learnset MOVE_BULLDOZE, 1
	learnset MOVE_SWORDS_DANCE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_AGILITY, 1
	learnset MOVE_LEER, 1
	learnset MOVE_QUICK_ATTACK, 7
	learnset MOVE_DOUBLE_SLAP, 13
	learnset MOVE_MUD_SLAP, 13
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_MUD_SHOT, 18
	learnset MOVE_DOUBLE_KICK, 21
	learnset MOVE_ODOR_SLEUTH, 27
	learnset MOVE_FLAIL, 32
	learnset MOVE_DIG, 37
	learnset MOVE_BOUNCE, 43
	learnset MOVE_SUPER_FANG, 48
	learnset MOVE_FACADE, 54
	learnset MOVE_EARTHQUAKE, 57
	learnset MOVE_HAMMER_ARM, 60
	terminatelearnset

levelup SPECIES_FLETCHLING
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_PECK, 10
	learnset MOVE_AGILITY, 13
	learnset MOVE_FLAIL, 16
	learnset MOVE_ROOST, 21
	learnset MOVE_RAZOR_WIND, 25
	learnset MOVE_NATURAL_GIFT, 29
	learnset MOVE_FLAME_CHARGE, 34
	learnset MOVE_ACROBATICS, 39
	learnset MOVE_ME_FIRST, 41
	learnset MOVE_TAILWIND, 45
	learnset MOVE_STEEL_WING, 48
	terminatelearnset

levelup SPECIES_FLETCHINDER
	learnset MOVE_EMBER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_PECK, 10
	learnset MOVE_AGILITY, 13
	learnset MOVE_FLAIL, 16
	learnset MOVE_ROOST, 25
	learnset MOVE_RAZOR_WIND, 27
	learnset MOVE_NATURAL_GIFT, 31
	learnset MOVE_FLAME_CHARGE, 38
	learnset MOVE_ACROBATICS, 42
	learnset MOVE_ME_FIRST, 46
	learnset MOVE_TAILWIND, 51
	learnset MOVE_STEEL_WING, 55
	terminatelearnset

levelup SPECIES_TALONFLAME
	learnset MOVE_EMBER, 1
	learnset MOVE_BRAVE_BIRD, 1
	learnset MOVE_FLARE_BLITZ, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_PECK, 1
	learnset MOVE_QUICK_ATTACK, 6
	learnset MOVE_PECK, 10
	learnset MOVE_AGILITY, 13
	learnset MOVE_FLAIL, 16
	learnset MOVE_ROOST, 25
	learnset MOVE_RAZOR_WIND, 27
	learnset MOVE_NATURAL_GIFT, 31
	learnset MOVE_FLAME_CHARGE, 39
	learnset MOVE_ACROBATICS, 44
	learnset MOVE_ME_FIRST, 49
	learnset MOVE_TAILWIND, 55
	learnset MOVE_STEEL_WING, 60
	learnset MOVE_BRAVE_BIRD, 64
	terminatelearnset

levelup SPECIES_SCATTERBUG
	learnset MOVE_TACKLE, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_STUN_SPORE, 6
	learnset MOVE_BUG_BITE, 15
	terminatelearnset

levelup SPECIES_SPEWPA
	learnset MOVE_PROTECT, 1
	learnset MOVE_HARDEN, 1
	terminatelearnset

levelup SPECIES_VIVILLON
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
	learnset MOVE_ARM_THRUST, 7
	learnset MOVE_WORK_UP, 10
	learnset MOVE_KARATE_CHOP, 12
	learnset MOVE_COMET_PUNCH, 15
	learnset MOVE_SLASH, 20
	learnset MOVE_CIRCLE_THROW, 25
	learnset MOVE_VITAL_THROW, 27
	learnset MOVE_BODY_SLAM, 33
	learnset MOVE_CRUNCH, 39
	learnset MOVE_ENTRAINMENT, 42
	learnset MOVE_PARTING_SHOT, 45
	learnset MOVE_SKY_UPPERCUT, 48
	terminatelearnset

levelup SPECIES_PANGORO
	learnset MOVE_BULLET_PUNCH, 1
	learnset MOVE_HAMMER_ARM, 1
	learnset MOVE_LOW_SWEEP, 1
	learnset MOVE_ENTRAINMENT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_ARM_THRUST, 1
	learnset MOVE_WORK_UP, 1
	learnset MOVE_ARM_THRUST, 7
	learnset MOVE_WORK_UP, 10
	learnset MOVE_KARATE_CHOP, 12
	learnset MOVE_COMET_PUNCH, 15
	learnset MOVE_SLASH, 20
	learnset MOVE_CIRCLE_THROW, 25
	learnset MOVE_VITAL_THROW, 27
	learnset MOVE_BODY_SLAM, 35
	learnset MOVE_CRUNCH, 42
	learnset MOVE_ENTRAINMENT, 45
	learnset MOVE_PARTING_SHOT, 48
	learnset MOVE_SKY_UPPERCUT, 52
	learnset MOVE_LOW_SWEEP, 57
	learnset MOVE_TAUNT, 65
	learnset MOVE_HAMMER_ARM, 70
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
	learnset MOVE_COVET, 5
	learnset MOVE_CONFUSION, 9
	learnset MOVE_LIGHT_SCREEN, 13
	learnset MOVE_PSYBEAM, 17
	learnset MOVE_FAKE_OUT, 19
	learnset MOVE_DISARMING_VOICE, 22
	learnset MOVE_PSYSHOCK, 25
	terminatelearnset

levelup SPECIES_MEOWSTIC
	learnset MOVE_QUICK_GUARD, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_COVET, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_COVET, 5
	learnset MOVE_CONFUSION, 9
	learnset MOVE_LIGHT_SCREEN, 13
	learnset MOVE_PSYBEAM, 17
	learnset MOVE_FAKE_OUT, 19
	learnset MOVE_DISARMING_VOICE, 22
	learnset MOVE_PSYSHOCK, 25
	learnset MOVE_CHARM, 28
	learnset MOVE_MIRACLE_EYE, 31
	learnset MOVE_REFLECT, 35
	learnset MOVE_PSYCHIC, 40
	learnset MOVE_ROLE_PLAY, 43
	learnset MOVE_IMPRISON, 45
	learnset MOVE_SUCKER_PUNCH, 48
	learnset MOVE_MISTY_TERRAIN, 50
	learnset MOVE_QUICK_GUARD, 53
	terminatelearnset

levelup SPECIES_HONEDGE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWORDS_DANCE, 1
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_METAL_SOUND, 8
	learnset MOVE_PURSUIT, 13
	learnset MOVE_AUTOTOMIZE, 18
	learnset MOVE_SHADOW_SNEAK, 20
	learnset MOVE_AERIAL_ACE, 22
	learnset MOVE_RETALIATE, 26
	learnset MOVE_SLASH, 29
	learnset MOVE_IRON_DEFENSE, 32
	learnset MOVE_NIGHT_SLASH, 35
	learnset MOVE_POWER_TRICK, 39
	learnset MOVE_IRON_HEAD, 42
	learnset MOVE_SACRED_SWORD, 47
	terminatelearnset

levelup SPECIES_DOUBLADE
	learnset MOVE_TACKLE, 1
	learnset MOVE_SWORDS_DANCE, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_FURY_CUTTER, 5
	learnset MOVE_METAL_SOUND, 8
	learnset MOVE_PURSUIT, 13
	learnset MOVE_AUTOTOMIZE, 18
	learnset MOVE_SHADOW_SNEAK, 20
	learnset MOVE_AERIAL_ACE, 22
	learnset MOVE_RETALIATE, 26
	learnset MOVE_SLASH, 29
	learnset MOVE_IRON_DEFENSE, 32
	learnset MOVE_NIGHT_SLASH, 36
	learnset MOVE_POWER_TRICK, 41
	learnset MOVE_IRON_HEAD, 45
	learnset MOVE_SACRED_SWORD, 51
	terminatelearnset

levelup SPECIES_AEGISLASH
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

levelup SPECIES_SPRITZEE
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_FAIRY_WIND, 1
	learnset MOVE_SWEET_KISS, 6
	learnset MOVE_ODOR_SLEUTH, 8
	learnset MOVE_ECHOED_VOICE, 13
	learnset MOVE_CALM_MIND, 17
	learnset MOVE_DRAINING_KISS, 21
	learnset MOVE_AROMATHERAPY, 25
	learnset MOVE_ATTRACT, 29
	learnset MOVE_MOONBLAST, 31
	learnset MOVE_CHARM, 35
	learnset MOVE_FLAIL, 38
	learnset MOVE_MISTY_TERRAIN, 42
	learnset MOVE_SKILL_SWAP, 44
	learnset MOVE_PSYCHIC, 48
	learnset MOVE_DISARMING_VOICE, 50
	terminatelearnset

levelup SPECIES_AROMATISSE
	learnset MOVE_AROMATIC_MIST, 1
	learnset MOVE_HEAL_PULSE, 1
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_FAIRY_WIND, 1
	learnset MOVE_SWEET_KISS, 1
	learnset MOVE_ODOR_SLEUTH, 1
	learnset MOVE_SWEET_KISS, 6
	learnset MOVE_ODOR_SLEUTH, 8
	learnset MOVE_ECHOED_VOICE, 13
	learnset MOVE_CALM_MIND, 17
	learnset MOVE_DRAINING_KISS, 21
	learnset MOVE_AROMATHERAPY, 25
	learnset MOVE_ATTRACT, 29
	learnset MOVE_MOONBLAST, 31
	learnset MOVE_CHARM, 35
	learnset MOVE_FLAIL, 38
	learnset MOVE_MISTY_TERRAIN, 42
	learnset MOVE_SKILL_SWAP, 44
	learnset MOVE_PSYCHIC, 48
	learnset MOVE_DISARMING_VOICE, 53
	learnset MOVE_REFLECT, 57
	learnset MOVE_PSYCH_UP, 64
	terminatelearnset

levelup SPECIES_SWIRLIX
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FAIRY_WIND, 5
	learnset MOVE_PLAY_NICE, 8
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_ROUND, 13
	learnset MOVE_COTTON_SPORE, 17
	learnset MOVE_ENDEAVOR, 21
	learnset MOVE_AROMATHERAPY, 26
	learnset MOVE_DRAINING_KISS, 31
	learnset MOVE_ENERGY_BALL, 36
	learnset MOVE_COTTON_GUARD, 41
	learnset MOVE_WISH, 45
	learnset MOVE_PLAY_ROUGH, 49
	learnset MOVE_LIGHT_SCREEN, 58
	learnset MOVE_SAFEGUARD, 67
	terminatelearnset

levelup SPECIES_SLURPUFF
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FAIRY_WIND, 1
	learnset MOVE_PLAY_NICE, 1
	learnset MOVE_FAIRY_WIND, 5
	learnset MOVE_PLAY_NICE, 8
	learnset MOVE_FAKE_TEARS, 10
	learnset MOVE_ROUND, 13
	learnset MOVE_COTTON_SPORE, 17
	learnset MOVE_ENDEAVOR, 21
	learnset MOVE_AROMATHERAPY, 26
	learnset MOVE_DRAINING_KISS, 31
	learnset MOVE_ENERGY_BALL, 36
	learnset MOVE_COTTON_GUARD, 41
	learnset MOVE_WISH, 45
	learnset MOVE_PLAY_ROUGH, 49
	learnset MOVE_LIGHT_SCREEN, 58
	learnset MOVE_SAFEGUARD, 67
	terminatelearnset

levelup SPECIES_INKAY
	learnset MOVE_TACKLE, 1
	learnset MOVE_PECK, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_REFLECT, 4
	learnset MOVE_FOUL_PLAY, 8
	learnset MOVE_SWAGGER, 12
	learnset MOVE_PSYWAVE, 13
	learnset MOVE_TOPSY_TURVY, 15
	learnset MOVE_HYPNOSIS, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_SWITCHEROO, 23
	learnset MOVE_PAYBACK, 27
	learnset MOVE_LIGHT_SCREEN, 31
	learnset MOVE_PLUCK, 35
	learnset MOVE_PSYCHO_CUT, 39
	learnset MOVE_SLASH, 43
	learnset MOVE_NIGHT_SLASH, 46
	learnset MOVE_SUPERPOWER, 48
	terminatelearnset

levelup SPECIES_MALAMAR
	learnset MOVE_REVERSAL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_PECK, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_REFLECT, 1
	learnset MOVE_REFLECT, 4
	learnset MOVE_FOUL_PLAY, 8
	learnset MOVE_SWAGGER, 12
	learnset MOVE_PSYWAVE, 13
	learnset MOVE_TOPSY_TURVY, 15
	learnset MOVE_HYPNOSIS, 18
	learnset MOVE_PSYBEAM, 21
	learnset MOVE_SWITCHEROO, 23
	learnset MOVE_PAYBACK, 27
	learnset MOVE_LIGHT_SCREEN, 31
	learnset MOVE_PLUCK, 35
	learnset MOVE_PSYCHO_CUT, 39
	learnset MOVE_SLASH, 43
	learnset MOVE_NIGHT_SLASH, 46
	learnset MOVE_SUPERPOWER, 48
	terminatelearnset

levelup SPECIES_BINACLE
	learnset MOVE_SHELL_SMASH, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_WITHDRAW, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_SLASH, 13
	learnset MOVE_MUD_SLAP, 18
	learnset MOVE_CLAMP, 20
	learnset MOVE_ROCK_POLISH, 24
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_HONE_CLAWS, 32
	learnset MOVE_FURY_CUTTER, 37
	learnset MOVE_NIGHT_SLASH, 41
	learnset MOVE_RAZOR_SHELL, 45
	learnset MOVE_CROSS_CHOP, 49
	terminatelearnset

levelup SPECIES_BARBARACLE
	learnset MOVE_SKULL_BASH, 1
	learnset MOVE_STONE_EDGE, 1
	learnset MOVE_SHELL_SMASH, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WATER_GUN, 4
	learnset MOVE_WITHDRAW, 7
	learnset MOVE_FURY_SWIPES, 10
	learnset MOVE_SLASH, 13
	learnset MOVE_MUD_SLAP, 18
	learnset MOVE_CLAMP, 20
	learnset MOVE_ROCK_POLISH, 24
	learnset MOVE_ANCIENT_POWER, 28
	learnset MOVE_HONE_CLAWS, 32
	learnset MOVE_FURY_CUTTER, 37
	learnset MOVE_NIGHT_SLASH, 44
	learnset MOVE_RAZOR_SHELL, 48
	learnset MOVE_CROSS_CHOP, 55
	learnset MOVE_STONE_EDGE, 60
	learnset MOVE_SKULL_BASH, 65
	terminatelearnset

levelup SPECIES_SKRELP
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_FAINT_ATTACK, 5
	learnset MOVE_TAIL_WHIP, 9
	learnset MOVE_BUBBLE, 12
	learnset MOVE_ACID, 15
	learnset MOVE_CAMOUFLAGE, 19
	learnset MOVE_POISON_TAIL, 23
	learnset MOVE_WATER_PULSE, 25
	learnset MOVE_DOUBLE_TEAM, 28
	learnset MOVE_TOXIC, 32
	learnset MOVE_AQUA_TAIL, 35
	learnset MOVE_SLUDGE_BOMB, 38
	learnset MOVE_HYDRO_PUMP, 42
	learnset MOVE_DRAGON_PULSE, 49
	terminatelearnset

levelup SPECIES_DRAGALGE
	learnset MOVE_TWISTER, 1
	learnset MOVE_DRAGON_TAIL, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMOKESCREEN, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_FAINT_ATTACK, 1
	learnset MOVE_FAINT_ATTACK, 5
	learnset MOVE_TAIL_WHIP, 9
	learnset MOVE_BUBBLE, 12
	learnset MOVE_ACID, 15
	learnset MOVE_CAMOUFLAGE, 19
	learnset MOVE_POISON_TAIL, 23
	learnset MOVE_WATER_PULSE, 25
	learnset MOVE_DOUBLE_TEAM, 28
	learnset MOVE_TOXIC, 32
	learnset MOVE_AQUA_TAIL, 35
	learnset MOVE_SLUDGE_BOMB, 38
	learnset MOVE_HYDRO_PUMP, 42
	learnset MOVE_DRAGON_PULSE, 53
	learnset MOVE_DRAGON_TAIL, 59
	terminatelearnset

levelup SPECIES_CLAUNCHER
	learnset MOVE_SPLASH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WATER_SPORT, 7
	learnset MOVE_VICE_GRIP, 9
	learnset MOVE_BUBBLE, 12
	learnset MOVE_FLAIL, 16
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_SWORDS_DANCE, 25
	learnset MOVE_CRABHAMMER, 30
	learnset MOVE_WATER_PULSE, 34
	learnset MOVE_SMACK_DOWN, 39
	learnset MOVE_AQUA_JET, 43
	learnset MOVE_MUDDY_WATER, 48
	terminatelearnset

levelup SPECIES_CLAWITZER
	learnset MOVE_AURA_SPHERE, 1
	learnset MOVE_DARK_PULSE, 1
	learnset MOVE_DRAGON_PULSE, 1
	learnset MOVE_HEAL_PULSE, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_VICE_GRIP, 1
	learnset MOVE_WATER_SPORT, 7
	learnset MOVE_VICE_GRIP, 9
	learnset MOVE_BUBBLE, 12
	learnset MOVE_FLAIL, 16
	learnset MOVE_BUBBLE_BEAM, 20
	learnset MOVE_SWORDS_DANCE, 25
	learnset MOVE_CRABHAMMER, 30
	learnset MOVE_WATER_PULSE, 34
	learnset MOVE_SMACK_DOWN, 42
	learnset MOVE_AQUA_JET, 49
	learnset MOVE_MUDDY_WATER, 57
	terminatelearnset

levelup SPECIES_HELIOPTILE
	learnset MOVE_POUND, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_THUNDER_SHOCK, 6
	learnset MOVE_CHARGE, 11
	learnset MOVE_MUD_SLAP, 13
	learnset MOVE_QUICK_ATTACK, 17
	learnset MOVE_RAZOR_WIND, 22
	learnset MOVE_PARABOLIC_CHARGE, 25
	learnset MOVE_THUNDER_WAVE, 31
	learnset MOVE_BULLDOZE, 35
	learnset MOVE_VOLT_SWITCH, 40
	learnset MOVE_ELECTRIFY, 45
	learnset MOVE_THUNDERBOLT, 49
	terminatelearnset

levelup SPECIES_HELIOLISK
	learnset MOVE_EERIE_IMPULSE, 1
	learnset MOVE_ELECTRIFY, 1
	learnset MOVE_RAZOR_WIND, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_THUNDER, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_PARABOLIC_CHARGE, 1
	terminatelearnset

levelup SPECIES_TYRUNT
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 6
	learnset MOVE_STOMP, 10
	learnset MOVE_BIDE, 12
	learnset MOVE_STEALTH_ROCK, 15
	learnset MOVE_BITE, 17
	learnset MOVE_CHARM, 20
	learnset MOVE_ANCIENT_POWER, 26
	learnset MOVE_DRAGON_TAIL, 30
	learnset MOVE_CRUNCH, 34
	learnset MOVE_DRAGON_CLAW, 37
	learnset MOVE_THRASH, 40
	learnset MOVE_EARTHQUAKE, 44
	learnset MOVE_HORN_DRILL, 49
	terminatelearnset

levelup SPECIES_TYRANTRUM
	learnset MOVE_ROCK_SLIDE, 1
	learnset MOVE_HEAD_SMASH, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROAR, 1
	learnset MOVE_STOMP, 1
	learnset MOVE_ROAR, 6
	learnset MOVE_STOMP, 10
	learnset MOVE_BIDE, 12
	learnset MOVE_STEALTH_ROCK, 15
	learnset MOVE_BITE, 17
	learnset MOVE_CHARM, 20
	learnset MOVE_ANCIENT_POWER, 26
	learnset MOVE_DRAGON_TAIL, 30
	learnset MOVE_CRUNCH, 34
	learnset MOVE_DRAGON_CLAW, 37
	learnset MOVE_THRASH, 42
	learnset MOVE_EARTHQUAKE, 47
	learnset MOVE_HORN_DRILL, 53
	learnset MOVE_HEAD_SMASH, 58
	learnset MOVE_GIGA_IMPACT, 68
	terminatelearnset

levelup SPECIES_AMAURA
	learnset MOVE_GROWL, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_MIST, 18
	learnset MOVE_AURORA_BEAM, 20
	learnset MOVE_ANCIENT_POWER, 26
	learnset MOVE_ROUND, 30
	learnset MOVE_AVALANCHE, 34
	learnset MOVE_HAIL, 38
	learnset MOVE_NATURE_POWER, 41
	learnset MOVE_ENCORE, 44
	learnset MOVE_LIGHT_SCREEN, 47
	learnset MOVE_ICE_BEAM, 50
	learnset MOVE_HYPER_BEAM, 57
	learnset MOVE_BLIZZARD, 65
	terminatelearnset

levelup SPECIES_AURORUS
	learnset MOVE_FREEZE_DRY, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_THUNDER_WAVE, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_THUNDER_WAVE, 5
	learnset MOVE_ROCK_THROW, 10
	learnset MOVE_ICY_WIND, 13
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_MIST, 18
	learnset MOVE_AURORA_BEAM, 20
	learnset MOVE_ANCIENT_POWER, 26
	learnset MOVE_ROUND, 30
	learnset MOVE_AVALANCHE, 34
	learnset MOVE_HAIL, 38
	learnset MOVE_NATURE_POWER, 43
	learnset MOVE_ENCORE, 46
	learnset MOVE_LIGHT_SCREEN, 50
	learnset MOVE_ICE_BEAM, 56
	learnset MOVE_HYPER_BEAM, 63
	learnset MOVE_BLIZZARD, 74
	terminatelearnset

levelup SPECIES_SYLVEON
	learnset MOVE_FAIRY_WIND, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_SAND_ATTACK, 5
	learnset MOVE_BABY_DOLL_EYES, 9
	learnset MOVE_QUICK_ATTACK, 13
	learnset MOVE_SWIFT, 17
	learnset MOVE_DRAINING_KISS, 20
	learnset MOVE_SKILL_SWAP, 25
	learnset MOVE_MISTY_TERRAIN, 29
	learnset MOVE_LIGHT_SCREEN, 33
	learnset MOVE_MOONBLAST, 37
	learnset MOVE_LAST_RESORT, 41
	learnset MOVE_PSYCH_UP, 45
	terminatelearnset

levelup SPECIES_HAWLUCHA
	learnset MOVE_DETECT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_HONE_CLAWS, 1
	learnset MOVE_KARATE_CHOP, 4
	learnset MOVE_WING_ATTACK, 8
	learnset MOVE_ROOST, 12
	learnset MOVE_AERIAL_ACE, 16
	learnset MOVE_ENCORE, 20
	learnset MOVE_FLING, 24
	learnset MOVE_FLYING_PRESS, 28
	learnset MOVE_BOUNCE, 32
	learnset MOVE_ENDEAVOR, 36
	learnset MOVE_FEATHER_DANCE, 40
	learnset MOVE_HI_JUMP_KICK, 44
	learnset MOVE_SKY_ATTACK, 48
	learnset MOVE_SKY_DROP, 55
	learnset MOVE_SWORDS_DANCE, 60
	terminatelearnset

levelup SPECIES_DEDENNE
	learnset MOVE_TACKLE, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_THUNDER_SHOCK, 7
	learnset MOVE_CHARGE, 11
	learnset MOVE_CHARM, 14
	learnset MOVE_PARABOLIC_CHARGE, 17
	learnset MOVE_NUZZLE, 20
	learnset MOVE_THUNDER_WAVE, 23
	learnset MOVE_VOLT_SWITCH, 26
	learnset MOVE_REST, 30
	learnset MOVE_SNORE, 31
	learnset MOVE_CHARGE_BEAM, 34
	learnset MOVE_ENTRAINMENT, 39
	learnset MOVE_PLAY_ROUGH, 42
	learnset MOVE_THUNDER, 45
	learnset MOVE_DISCHARGE, 50
	terminatelearnset

levelup SPECIES_CARBINK
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ROCK_THROW, 5
	learnset MOVE_SHARPEN, 8
	learnset MOVE_SMACK_DOWN, 12
	learnset MOVE_REFLECT, 18
	learnset MOVE_STEALTH_ROCK, 21
	learnset MOVE_GUARD_SPLIT, 27
	learnset MOVE_ANCIENT_POWER, 31
	learnset MOVE_FLAIL, 35
	learnset MOVE_SKILL_SWAP, 40
	learnset MOVE_POWER_GEM, 46
	learnset MOVE_STONE_EDGE, 49
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_LIGHT_SCREEN, 60
	learnset MOVE_SAFEGUARD, 70
	terminatelearnset

levelup SPECIES_GOOMY
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_PROTECT, 9
	learnset MOVE_BIDE, 13
	learnset MOVE_DRAGON_BREATH, 18
	learnset MOVE_RAIN_DANCE, 25
	learnset MOVE_FLAIL, 28
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_MUDDY_WATER, 38
	learnset MOVE_DRAGON_PULSE, 42
	terminatelearnset

levelup SPECIES_SLIGGOO
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_PROTECT, 9
	learnset MOVE_BIDE, 13
	learnset MOVE_DRAGON_BREATH, 18
	learnset MOVE_RAIN_DANCE, 25
	learnset MOVE_FLAIL, 28
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_MUDDY_WATER, 38
	learnset MOVE_DRAGON_PULSE, 47
	terminatelearnset

levelup SPECIES_GOODRA
	learnset MOVE_AQUA_TAIL, 1
	learnset MOVE_OUTRAGE, 1
	learnset MOVE_FEINT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_PROTECT, 9
	learnset MOVE_BIDE, 13
	learnset MOVE_DRAGON_BREATH, 18
	learnset MOVE_RAIN_DANCE, 25
	learnset MOVE_FLAIL, 28
	learnset MOVE_BODY_SLAM, 32
	learnset MOVE_MUDDY_WATER, 38
	learnset MOVE_DRAGON_PULSE, 47
	learnset MOVE_POWER_WHIP, 50
	learnset MOVE_OUTRAGE, 55
	terminatelearnset

levelup SPECIES_KLEFKI
	learnset MOVE_FAIRY_LOCK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_FAIRY_WIND, 5
	learnset MOVE_ASTONISH, 8
	learnset MOVE_METAL_SOUND, 12
	learnset MOVE_SPIKES, 15
	learnset MOVE_DRAINING_KISS, 18
	learnset MOVE_CRAFTY_SHIELD, 23
	learnset MOVE_FOUL_PLAY, 27
	learnset MOVE_TORMENT, 32
	learnset MOVE_MIRROR_SHOT, 34
	learnset MOVE_IMPRISON, 36
	learnset MOVE_RECYCLE, 40
	learnset MOVE_PLAY_ROUGH, 43
	learnset MOVE_MAGIC_ROOM, 44
	learnset MOVE_HEAL_BLOCK, 50
	terminatelearnset

levelup SPECIES_PHANTUMP
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_GROWTH, 8
	learnset MOVE_INGRAIN, 13
	learnset MOVE_FAINT_ATTACK, 19
	learnset MOVE_LEECH_SEED, 23
	learnset MOVE_CURSE, 28
	learnset MOVE_WILL_O_WISP, 31
	learnset MOVE_FORESTS_CURSE, 35
	learnset MOVE_DESTINY_BOND, 39
	learnset MOVE_PHANTOM_FORCE, 45
	learnset MOVE_WOOD_HAMMER, 49
	learnset MOVE_HORN_LEECH, 54
	terminatelearnset

levelup SPECIES_TREVENANT
	learnset MOVE_SHADOW_CLAW, 1
	learnset MOVE_HORN_LEECH, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_CONFUSE_RAY, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_GROWTH, 8
	learnset MOVE_INGRAIN, 13
	learnset MOVE_FAINT_ATTACK, 19
	learnset MOVE_LEECH_SEED, 23
	learnset MOVE_CURSE, 28
	learnset MOVE_WILL_O_WISP, 31
	learnset MOVE_FORESTS_CURSE, 35
	learnset MOVE_DESTINY_BOND, 39
	learnset MOVE_PHANTOM_FORCE, 45
	learnset MOVE_WOOD_HAMMER, 49
	learnset MOVE_HORN_LEECH, 54
	terminatelearnset

levelup SPECIES_PUMPKABOO
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

levelup SPECIES_GOURGEIST
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

levelup SPECIES_BERGMITE
	learnset MOVE_TACKLE, 1
	learnset MOVE_BITE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_ICY_WIND, 10
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_SHARPEN, 20
	learnset MOVE_CURSE, 22
	learnset MOVE_ICE_FANG, 26
	learnset MOVE_ICE_BALL, 30
	learnset MOVE_RAPID_SPIN, 35
	learnset MOVE_AVALANCHE, 39
	learnset MOVE_BLIZZARD, 43
	learnset MOVE_RECOVER, 47
	learnset MOVE_DOUBLE_EDGE, 49
	terminatelearnset

levelup SPECIES_AVALUGG
	learnset MOVE_BODY_SLAM, 1
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_CRUNCH, 1
	learnset MOVE_SKULL_BASH, 1
	learnset MOVE_IRON_DEFENSE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_BITE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_ICY_WIND, 10
	learnset MOVE_TAKE_DOWN, 15
	learnset MOVE_SHARPEN, 20
	learnset MOVE_CURSE, 22
	learnset MOVE_ICE_FANG, 26
	learnset MOVE_ICE_BALL, 30
	learnset MOVE_RAPID_SPIN, 35
	learnset MOVE_AVALANCHE, 42
	learnset MOVE_BLIZZARD, 46
	learnset MOVE_RECOVER, 51
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_SKULL_BASH, 60
	learnset MOVE_CRUNCH, 65
	terminatelearnset

levelup SPECIES_NOIBAT
	learnset MOVE_SCREECH, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_GUST, 11
	learnset MOVE_BITE, 13
	learnset MOVE_WING_ATTACK, 16
	learnset MOVE_AGILITY, 18
	learnset MOVE_AIR_CUTTER, 23
	learnset MOVE_ROOST, 27
	learnset MOVE_RAZOR_WIND, 31
	learnset MOVE_TAILWIND, 35
	learnset MOVE_WHIRLWIND, 40
	learnset MOVE_SUPER_FANG, 43
	learnset MOVE_AIR_SLASH, 48
	learnset MOVE_HURRICANE, 58
	terminatelearnset

levelup SPECIES_NOIVERN
	learnset MOVE_BOOMBURST, 1
	learnset MOVE_DRAGON_PULSE, 1
	learnset MOVE_HURRICANE, 1
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_SCREECH, 1
	learnset MOVE_SUPERSONIC, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_ABSORB, 5
	learnset MOVE_GUST, 11
	learnset MOVE_BITE, 13
	learnset MOVE_WING_ATTACK, 16
	learnset MOVE_AGILITY, 18
	learnset MOVE_AIR_CUTTER, 23
	learnset MOVE_ROOST, 27
	learnset MOVE_RAZOR_WIND, 31
	learnset MOVE_TAILWIND, 35
	learnset MOVE_WHIRLWIND, 40
	learnset MOVE_SUPER_FANG, 43
	learnset MOVE_AIR_SLASH, 53
	learnset MOVE_HURRICANE, 62
	learnset MOVE_DRAGON_PULSE, 70
	learnset MOVE_BOOMBURST, 75
	terminatelearnset

levelup SPECIES_XERNEAS
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

levelup SPECIES_YVELTAL
	learnset MOVE_HURRICANE, 1
	learnset MOVE_RAZOR_WIND, 1
	learnset MOVE_TAUNT, 1
	learnset MOVE_ROOST, 1
	learnset MOVE_DOUBLE_TEAM, 5
	learnset MOVE_AIR_SLASH, 10
	learnset MOVE_SNARL, 18
	learnset MOVE_OBLIVION_WING, 26
	learnset MOVE_DISABLE, 35
	learnset MOVE_DARK_PULSE, 44
	learnset MOVE_FOUL_PLAY, 51
	learnset MOVE_PHANTOM_FORCE, 55
	learnset MOVE_PSYCHIC, 59
	learnset MOVE_DRAGON_RUSH, 63
	learnset MOVE_FOCUS_BLAST, 72
	learnset MOVE_SUCKER_PUNCH, 80
	learnset MOVE_HYPER_BEAM, 88
	learnset MOVE_SKY_ATTACK, 93
	terminatelearnset

levelup SPECIES_ZYGARDE
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

levelup SPECIES_DIANCIE
	learnset MOVE_TACKLE, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_ROCK_THROW, 1
	learnset MOVE_SHARPEN, 5
	learnset MOVE_SMACK_DOWN, 8
	learnset MOVE_REFLECT, 12
	learnset MOVE_STEALTH_ROCK, 18
	learnset MOVE_GUARD_SPLIT, 21
	learnset MOVE_ANCIENT_POWER, 27
	learnset MOVE_FLAIL, 31
	learnset MOVE_SKILL_SWAP, 35
	learnset MOVE_POWER_GEM, 40
	learnset MOVE_TRICK_ROOM, 46
	learnset MOVE_STONE_EDGE, 49
	learnset MOVE_MOONBLAST, 50
	learnset MOVE_DIAMOND_STORM, 50
	learnset MOVE_LIGHT_SCREEN, 60
	learnset MOVE_SAFEGUARD, 70
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
	learnset MOVE_STEAM_ERUPTION, 1
	learnset MOVE_FLARE_BLITZ, 1
	learnset MOVE_TAKE_DOWN, 1
	learnset MOVE_MIST, 8
	learnset MOVE_HAZE, 11
	learnset MOVE_FLAME_CHARGE, 15
	learnset MOVE_WATER_PULSE, 21
	learnset MOVE_STOMP, 28
	learnset MOVE_SCALD, 32
	learnset MOVE_WEATHER_BALL, 40
	learnset MOVE_BODY_SLAM, 46
	learnset MOVE_HYDRO_PUMP, 50
	learnset MOVE_FLARE_BLITZ, 58
	learnset MOVE_OVERHEAT, 65
	learnset MOVE_EXPLOSION, 76
	learnset MOVE_STEAM_ERUPTION, 85
	terminatelearnset

levelup SPECIES_ROWLET
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEAFAGE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_PECK, 8
	learnset MOVE_ASTONISH, 11
	learnset MOVE_RAZOR_LEAF, 14
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_FORESIGHT, 18
	learnset MOVE_PLUCK, 22
	learnset MOVE_SYNTHESIS, 25
	learnset MOVE_FURY_ATTACK, 29
	learnset MOVE_SUCKER_PUNCH, 32
	learnset MOVE_LEAF_BLADE, 36
	learnset MOVE_FEATHER_DANCE, 39
	learnset MOVE_BRAVE_BIRD, 43
	learnset MOVE_NASTY_PLOT, 46
	terminatelearnset

levelup SPECIES_DARTRIX
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEAFAGE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_PECK, 8
	learnset MOVE_ASTONISH, 11
	learnset MOVE_RAZOR_LEAF, 14
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_FORESIGHT, 19
	learnset MOVE_PLUCK, 24
	learnset MOVE_SYNTHESIS, 28
	learnset MOVE_FURY_ATTACK, 33
	learnset MOVE_SUCKER_PUNCH, 37
	learnset MOVE_LEAF_BLADE, 42
	learnset MOVE_FEATHER_DANCE, 46
	learnset MOVE_BRAVE_BIRD, 51
	learnset MOVE_NASTY_PLOT, 55
	terminatelearnset

levelup SPECIES_DECIDUEYE
	learnset MOVE_SPIRIT_SHACKLE, 1
	learnset MOVE_PHANTOM_FORCE, 1
	learnset MOVE_LEAF_STORM, 1
	learnset MOVE_U_TURN, 1
	learnset MOVE_SHADOW_SNEAK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEAFAGE, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_PECK, 8
	learnset MOVE_ASTONISH, 11
	learnset MOVE_RAZOR_LEAF, 14
	learnset MOVE_OMINOUS_WIND, 16
	learnset MOVE_FORESIGHT, 19
	learnset MOVE_PLUCK, 24
	learnset MOVE_SYNTHESIS, 28
	learnset MOVE_FURY_ATTACK, 33
	learnset MOVE_SUCKER_PUNCH, 38
	learnset MOVE_LEAF_BLADE, 44
	learnset MOVE_FEATHER_DANCE, 49
	learnset MOVE_BRAVE_BIRD, 55
	learnset MOVE_NASTY_PLOT, 60
	terminatelearnset

levelup SPECIES_LITTEN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_LICK, 8
	learnset MOVE_LEER, 11
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_ROAR, 18
	learnset MOVE_BITE, 22
	learnset MOVE_SWAGGER, 25
	learnset MOVE_FURY_SWIPES, 29
	learnset MOVE_THRASH, 32
	learnset MOVE_FLAMETHROWER, 36
	learnset MOVE_SCARY_FACE, 39
	learnset MOVE_FLARE_BLITZ, 43
	learnset MOVE_OUTRAGE, 46
	terminatelearnset

levelup SPECIES_TORRACAT
	learnset MOVE_SCRATCH, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_LICK, 8
	learnset MOVE_LEER, 11
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_ROAR, 19
	learnset MOVE_BITE, 24
	learnset MOVE_SWAGGER, 28
	learnset MOVE_FURY_SWIPES, 33
	learnset MOVE_THRASH, 37
	learnset MOVE_FLAMETHROWER, 42
	learnset MOVE_SCARY_FACE, 46
	learnset MOVE_FLARE_BLITZ, 51
	learnset MOVE_OUTRAGE, 55
	terminatelearnset

levelup SPECIES_INCINEROAR
	learnset MOVE_DARKEST_LARIAT, 1
	learnset MOVE_BULK_UP, 1
	learnset MOVE_THROAT_CHOP, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_LICK, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_LICK, 8
	learnset MOVE_LEER, 11
	learnset MOVE_FIRE_FANG, 14
	learnset MOVE_DOUBLE_KICK, 16
	learnset MOVE_ROAR, 19
	learnset MOVE_BITE, 24
	learnset MOVE_SWAGGER, 28
	learnset MOVE_FURY_SWIPES, 33
	learnset MOVE_THRASH, 38
	learnset MOVE_FLAMETHROWER, 44
	learnset MOVE_SCARY_FACE, 49
	learnset MOVE_FLARE_BLITZ, 55
	learnset MOVE_OUTRAGE, 60
	learnset MOVE_CROSS_CHOP, 66
	terminatelearnset

levelup SPECIES_POPPLIO
	learnset MOVE_POUND, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_DISARMING_VOICE, 8
	learnset MOVE_BABY_DOLL_EYES, 11
	learnset MOVE_AQUA_JET, 14
	learnset MOVE_ICY_WIND, 16
	learnset MOVE_ENCORE, 18
	learnset MOVE_BUBBLE_BEAM, 22
	learnset MOVE_SING, 25
	learnset MOVE_DOUBLE_SLAP, 29
	learnset MOVE_HYPER_VOICE, 32
	learnset MOVE_MOONBLAST, 36
	learnset MOVE_CAPTIVATE, 39
	learnset MOVE_HYDRO_PUMP, 43
	learnset MOVE_MISTY_TERRAIN, 46
	terminatelearnset

levelup SPECIES_BRIONNE
	learnset MOVE_POUND, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_DISARMING_VOICE, 8
	learnset MOVE_BABY_DOLL_EYES, 11
	learnset MOVE_AQUA_JET, 14
	learnset MOVE_ICY_WIND, 16
	learnset MOVE_ENCORE, 19
	learnset MOVE_BUBBLE_BEAM, 24
	learnset MOVE_SING, 28
	learnset MOVE_DOUBLE_SLAP, 33
	learnset MOVE_HYPER_VOICE, 37
	learnset MOVE_MOONBLAST, 42
	learnset MOVE_CAPTIVATE, 46
	learnset MOVE_HYDRO_PUMP, 51
	learnset MOVE_MISTY_TERRAIN, 55
	terminatelearnset

levelup SPECIES_PRIMARINA
	learnset MOVE_SPARKLING_ARIA, 1
	learnset MOVE_POUND, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_DISARMING_VOICE, 1
	learnset MOVE_GROWL, 4
	learnset MOVE_DISARMING_VOICE, 9
	learnset MOVE_BABY_DOLL_EYES, 11
	learnset MOVE_AQUA_JET, 14
	learnset MOVE_ICY_WIND, 16
	learnset MOVE_ENCORE, 19
	learnset MOVE_BUBBLE_BEAM, 24
	learnset MOVE_SING, 28
	learnset MOVE_DOUBLE_SLAP, 33
	learnset MOVE_HYPER_VOICE, 38
	learnset MOVE_MOONBLAST, 44
	learnset MOVE_CAPTIVATE, 49
	learnset MOVE_HYDRO_PUMP, 55
	learnset MOVE_MISTY_TERRAIN, 60
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
	learnset MOVE_STRING_SHOT, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_BITE, 10
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_SPARK, 16
	learnset MOVE_ACROBATICS, 19
	learnset MOVE_CRUNCH, 22
	learnset MOVE_X_SCISSOR, 25
	learnset MOVE_DIG, 28
	terminatelearnset

levelup SPECIES_CHARJABUG
	learnset MOVE_CHARGE, 1
	learnset MOVE_VICE_GRIP, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_BITE, 1
	learnset MOVE_STRING_SHOT, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_BITE, 10
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_SPARK, 16
	learnset MOVE_ACROBATICS, 19
	learnset MOVE_CRUNCH, 25
	learnset MOVE_X_SCISSOR, 31
	learnset MOVE_DIG, 37
	learnset MOVE_DISCHARGE, 43
	learnset MOVE_IRON_DEFENSE, 49
	terminatelearnset

levelup SPECIES_VIKAVOLT
	learnset MOVE_THUNDERBOLT, 1
	learnset MOVE_AIR_SLASH, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_VICE_GRIP, 1
	learnset MOVE_STRING_SHOT, 1
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_BITE, 1
	learnset MOVE_STRING_SHOT, 4
	learnset MOVE_MUD_SLAP, 7
	learnset MOVE_BITE, 10
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_SPARK, 16
	learnset MOVE_ACROBATICS, 19
	learnset MOVE_GUILLOTINE, 25
	learnset MOVE_BUG_BUZZ, 31
	learnset MOVE_DIG, 37
	learnset MOVE_ZAP_CANNON, 41
	learnset MOVE_AGILITY, 49
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
	learnset MOVE_FAIRY_WIND, 4
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_STRUGGLE_BUG, 10
	learnset MOVE_SILVER_WIND, 13
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_SWEET_SCENT, 21
	learnset MOVE_BUG_BUZZ, 26
	learnset MOVE_DAZZLING_GLEAM, 31
	learnset MOVE_AROMATHERAPY, 36
	learnset MOVE_QUIVER_DANCE, 41
	terminatelearnset

levelup SPECIES_RIBOMBEE
	learnset MOVE_POLLEN_PUFF, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_FAIRY_WIND, 1
	learnset MOVE_STUN_SPORE, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_FAIRY_WIND, 4
	learnset MOVE_STUN_SPORE, 7
	learnset MOVE_STRUGGLE_BUG, 10
	learnset MOVE_SILVER_WIND, 13
	learnset MOVE_DRAINING_KISS, 16
	learnset MOVE_SWEET_SCENT, 21
	learnset MOVE_BUG_BUZZ, 28
	learnset MOVE_DAZZLING_GLEAM, 35
	learnset MOVE_AROMATHERAPY, 42
	learnset MOVE_QUIVER_DANCE, 49
	terminatelearnset

levelup SPECIES_ROCKRUFF
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

levelup SPECIES_LYCANROC
	learnset MOVE_ACCELEROCK, 1
	learnset MOVE_QUICK_GUARD, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 1
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

levelup SPECIES_WISHIWASHI
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_HELPING_HAND, 6
	learnset MOVE_FAINT_ATTACK, 9
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

levelup SPECIES_MAREANIE
	learnset MOVE_POISON_STING, 1
	learnset MOVE_PECK, 5
	learnset MOVE_BITE, 9
	learnset MOVE_TOXIC_SPIKES, 13
	learnset MOVE_WIDE_GUARD, 17
	learnset MOVE_TOXIC, 21
	learnset MOVE_VENOSHOCK, 25
	learnset MOVE_SPIKE_CANNON, 29
	learnset MOVE_RECOVER, 33
	learnset MOVE_POISON_JAB, 37
	learnset MOVE_VENOM_DRENCH, 41
	learnset MOVE_PIN_MISSILE, 45
	learnset MOVE_LIQUIDATION, 49
	terminatelearnset

levelup SPECIES_TOXAPEX
	learnset MOVE_BANEFUL_BUNKER, 1
	learnset MOVE_POISON_STING, 1
	learnset MOVE_PECK, 1
	learnset MOVE_BITE, 1
	learnset MOVE_TOXIC_SPIKES, 1
	learnset MOVE_PECK, 5
	learnset MOVE_BITE, 9
	learnset MOVE_TOXIC_SPIKES, 13
	learnset MOVE_WIDE_GUARD, 17
	learnset MOVE_TOXIC, 21
	learnset MOVE_VENOSHOCK, 25
	learnset MOVE_SPIKE_CANNON, 29
	learnset MOVE_RECOVER, 33
	learnset MOVE_POISON_JAB, 37
	learnset MOVE_VENOM_DRENCH, 44
	learnset MOVE_PIN_MISSILE, 51
	learnset MOVE_LIQUIDATION, 58
	terminatelearnset

levelup SPECIES_MUDBRAY
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_MUD_SPORT, 3
	learnset MOVE_ROTOTILLER, 8
	learnset MOVE_BULLDOZE, 10
	learnset MOVE_DOUBLE_KICK, 15
	learnset MOVE_STOMP, 17
	learnset MOVE_BIDE, 22
	learnset MOVE_HIGH_HORSEPOWER, 24
	learnset MOVE_IRON_DEFENSE, 29
	learnset MOVE_HEAVY_SLAM, 31
	learnset MOVE_COUNTER, 36
	learnset MOVE_EARTHQUAKE, 38
	learnset MOVE_MEGA_KICK, 43
	learnset MOVE_SUPERPOWER, 45
	terminatelearnset

levelup SPECIES_MUDSDALE
	learnset MOVE_MUD_SLAP, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_ROTOTILLER, 1
	learnset MOVE_BULLDOZE, 1
	learnset MOVE_MUD_SPORT, 3
	learnset MOVE_ROTOTILLER, 8
	learnset MOVE_BULLDOZE, 10
	learnset MOVE_DOUBLE_KICK, 15
	learnset MOVE_STOMP, 17
	learnset MOVE_BIDE, 22
	learnset MOVE_HIGH_HORSEPOWER, 24
	learnset MOVE_IRON_DEFENSE, 29
	learnset MOVE_HEAVY_SLAM, 34
	learnset MOVE_COUNTER, 42
	learnset MOVE_EARTHQUAKE, 47
	learnset MOVE_MEGA_KICK, 55
	learnset MOVE_SUPERPOWER, 60
	terminatelearnset

levelup SPECIES_DEWPIDER
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_INFESTATION, 5
	learnset MOVE_SPIDER_WEB, 8
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_BUBBLE_BEAM, 16
	learnset MOVE_BITE, 21
	learnset MOVE_AQUA_RING, 24
	learnset MOVE_LEECH_LIFE, 29
	learnset MOVE_CRUNCH, 32
	learnset MOVE_LUNGE, 37
	learnset MOVE_MIRROR_COAT, 40
	learnset MOVE_LIQUIDATION, 45
	learnset MOVE_ENTRAINMENT, 48
	terminatelearnset

levelup SPECIES_ARAQUANID
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_SOAK, 1
	learnset MOVE_BUBBLE, 1
	learnset MOVE_INFESTATION, 1
	learnset MOVE_SPIDER_WEB, 1
	learnset MOVE_BUG_BITE, 1
	learnset MOVE_INFESTATION, 5
	learnset MOVE_SPIDER_WEB, 8
	learnset MOVE_BUG_BITE, 13
	learnset MOVE_BUBBLE_BEAM, 16
	learnset MOVE_BITE, 21
	learnset MOVE_AQUA_RING, 26
	learnset MOVE_LEECH_LIFE, 33
	learnset MOVE_CRUNCH, 38
	learnset MOVE_LUNGE, 45
	learnset MOVE_MIRROR_COAT, 50
	learnset MOVE_LIQUIDATION, 57
	learnset MOVE_ENTRAINMENT, 62
	terminatelearnset

levelup SPECIES_FOMANTIS
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_LEAFAGE, 5
	learnset MOVE_RAZOR_LEAF, 10
	learnset MOVE_GROWTH, 14
	learnset MOVE_INGRAIN, 19
	learnset MOVE_LEAF_BLADE, 23
	learnset MOVE_SYNTHESIS, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_SWEET_SCENT, 37
	learnset MOVE_SOLAR_BEAM, 41
	learnset MOVE_SUNNY_DAY, 46
	terminatelearnset

levelup SPECIES_LURANTIS
	learnset MOVE_PETAL_BLIZZARD, 1
	learnset MOVE_X_SCISSOR, 1
	learnset MOVE_NIGHT_SLASH, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_LEAFAGE, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_LEAFAGE, 5
	learnset MOVE_RAZOR_LEAF, 10
	learnset MOVE_GROWTH, 14
	learnset MOVE_INGRAIN, 19
	learnset MOVE_LEAF_BLADE, 23
	learnset MOVE_SYNTHESIS, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_SWEET_SCENT, 40
	learnset MOVE_SOLAR_BLADE, 47
	learnset MOVE_SUNNY_DAY, 55
	terminatelearnset

levelup SPECIES_MORELULL
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_FLASH, 8
	learnset MOVE_MOONLIGHT, 11
	learnset MOVE_MEGA_DRAIN, 15
	learnset MOVE_SLEEP_POWDER, 18
	learnset MOVE_INGRAIN, 22
	learnset MOVE_CONFUSE_RAY, 25
	learnset MOVE_GIGA_DRAIN, 29
	learnset MOVE_STRENGTH_SAP, 32
	learnset MOVE_SPORE, 36
	learnset MOVE_MOONBLAST, 39
	learnset MOVE_DREAM_EATER, 43
	learnset MOVE_SPOTLIGHT, 46
	terminatelearnset

levelup SPECIES_SHIINOTIC
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_FLASH, 1
	learnset MOVE_ASTONISH, 4
	learnset MOVE_FLASH, 8
	learnset MOVE_MOONLIGHT, 11
	learnset MOVE_MEGA_DRAIN, 15
	learnset MOVE_SLEEP_POWDER, 18
	learnset MOVE_INGRAIN, 22
	learnset MOVE_CONFUSE_RAY, 26
	learnset MOVE_GIGA_DRAIN, 31
	learnset MOVE_STRENGTH_SAP, 35
	learnset MOVE_SPORE, 40
	learnset MOVE_MOONBLAST, 44
	learnset MOVE_DREAM_EATER, 49
	learnset MOVE_SPOTLIGHT, 53
	terminatelearnset

levelup SPECIES_SALANDIT
	learnset MOVE_SCRATCH, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SWEET_SCENT, 8
	learnset MOVE_DRAGON_RAGE, 13
	learnset MOVE_SMOG, 16
	learnset MOVE_DOUBLE_SLAP, 21
	learnset MOVE_FLAME_BURST, 24
	learnset MOVE_TOXIC, 29
	learnset MOVE_NASTY_PLOT, 32
	learnset MOVE_VENOSHOCK, 37
	learnset MOVE_FLAMETHROWER, 40
	learnset MOVE_VENOM_DRENCH, 45
	learnset MOVE_DRAGON_PULSE, 48
	terminatelearnset

levelup SPECIES_SALAZZLE
	learnset MOVE_CAPTIVATE, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_ENCORE, 1
	learnset MOVE_TORMENT, 1
	learnset MOVE_SWAGGER, 1
	learnset MOVE_POUND, 1
	learnset MOVE_POISON_GAS, 1
	learnset MOVE_EMBER, 1
	learnset MOVE_SWEET_SCENT, 1
	learnset MOVE_EMBER, 5
	learnset MOVE_SWEET_SCENT, 8
	learnset MOVE_DRAGON_RAGE, 13
	learnset MOVE_SMOG, 16
	learnset MOVE_DOUBLE_SLAP, 21
	learnset MOVE_FLAME_BURST, 24
	learnset MOVE_TOXIC, 29
	learnset MOVE_NASTY_PLOT, 32
	learnset MOVE_VENOSHOCK, 39
	learnset MOVE_FLAMETHROWER, 44
	learnset MOVE_VENOM_DRENCH, 51
	learnset MOVE_DRAGON_PULSE, 56
	terminatelearnset

levelup SPECIES_STUFFUL
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_BIDE, 5
	learnset MOVE_BABY_DOLL_EYES, 10
	learnset MOVE_BRUTAL_SWING, 14
	learnset MOVE_FLAIL, 19
	learnset MOVE_PAYBACK, 23
	learnset MOVE_TAKE_DOWN, 28
	learnset MOVE_HAMMER_ARM, 32
	learnset MOVE_THRASH, 37
	learnset MOVE_PAIN_SPLIT, 41
	learnset MOVE_DOUBLE_EDGE, 46
	learnset MOVE_SUPERPOWER, 50
	terminatelearnset

levelup SPECIES_BEWEAR
	learnset MOVE_BIND, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_BIDE, 5
	learnset MOVE_BABY_DOLL_EYES, 10
	learnset MOVE_BRUTAL_SWING, 14
	learnset MOVE_FLAIL, 19
	learnset MOVE_PAYBACK, 23
	learnset MOVE_TAKE_DOWN, 30
	learnset MOVE_HAMMER_ARM, 36
	learnset MOVE_THRASH, 43
	learnset MOVE_PAIN_SPLIT, 49
	learnset MOVE_DOUBLE_EDGE, 56
	learnset MOVE_SUPERPOWER, 62
	terminatelearnset

levelup SPECIES_BOUNSWEET
	learnset MOVE_SPLASH, 1
	learnset MOVE_PLAY_NICE, 5
	learnset MOVE_RAPID_SPIN, 9
	learnset MOVE_RAZOR_LEAF, 13
	learnset MOVE_SWEET_SCENT, 17
	learnset MOVE_MAGICAL_LEAF, 21
	learnset MOVE_TEETER_DANCE, 25
	learnset MOVE_FLAIL, 29
	learnset MOVE_AROMATIC_MIST, 33
	terminatelearnset

levelup SPECIES_STEENEE
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_PLAY_NICE, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_PLAY_NICE, 5
	learnset MOVE_RAPID_SPIN, 9
	learnset MOVE_RAZOR_LEAF, 13
	learnset MOVE_SWEET_SCENT, 17
	learnset MOVE_MAGICAL_LEAF, 21
	learnset MOVE_TEETER_DANCE, 25
	learnset MOVE_STOMP, 29
	learnset MOVE_AROMATIC_MIST, 33
	learnset MOVE_CAPTIVATE, 37
	learnset MOVE_AROMATHERAPY, 41
	learnset MOVE_LEAF_STORM, 45
	terminatelearnset

levelup SPECIES_TSAREENA
	learnset MOVE_TROP_KICK, 1
	learnset MOVE_PUNISHMENT, 1
	learnset MOVE_DOUBLE_SLAP, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_SWAGGER, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_RAZOR_LEAF, 1
	learnset MOVE_SWAGGER, 5
	learnset MOVE_RAPID_SPIN, 9
	learnset MOVE_RAZOR_LEAF, 13
	learnset MOVE_SWEET_SCENT, 17
	learnset MOVE_MAGICAL_LEAF, 21
	learnset MOVE_TEETER_DANCE, 25
	learnset MOVE_STOMP, 29
	learnset MOVE_AROMATIC_MIST, 33
	learnset MOVE_CAPTIVATE, 37
	learnset MOVE_AROMATHERAPY, 41
	learnset MOVE_LEAF_STORM, 45
	learnset MOVE_HI_JUMP_KICK, 49
	learnset MOVE_POWER_WHIP, 53
	terminatelearnset

levelup SPECIES_COMFEY
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_VINE_WHIP, 1
	learnset MOVE_FLOWER_SHIELD, 1
	learnset MOVE_LEECH_SEED, 4
	learnset MOVE_DRAINING_KISS, 7
	learnset MOVE_MAGICAL_LEAF, 10
	learnset MOVE_GROWTH, 13
	learnset MOVE_WRAP, 16
	learnset MOVE_SWEET_KISS, 19
	learnset MOVE_NATURAL_GIFT, 22
	learnset MOVE_PETAL_BLIZZARD, 25
	learnset MOVE_SYNTHESIS, 28
	learnset MOVE_SWEET_SCENT, 31
	learnset MOVE_GRASS_KNOT, 34
	learnset MOVE_FLORAL_HEALING, 37
	learnset MOVE_PETAL_DANCE, 40
	learnset MOVE_AROMATHERAPY, 43
	learnset MOVE_GRASSY_TERRAIN, 46
	learnset MOVE_PLAY_ROUGH, 49
	terminatelearnset

levelup SPECIES_ORANGURU
	learnset MOVE_CONFUSION, 1
	learnset MOVE_AFTER_YOU, 4
	learnset MOVE_TAUNT, 8
	learnset MOVE_QUASH, 11
	learnset MOVE_STORED_POWER, 15
	learnset MOVE_PSYCH_UP, 18
	learnset MOVE_FAINT_ATTACK, 22
	learnset MOVE_NASTY_PLOT, 25
	learnset MOVE_ZEN_HEADBUTT, 29
	learnset MOVE_INSTRUCT, 32
	learnset MOVE_FOUL_PLAY, 36
	learnset MOVE_CALM_MIND, 39
	learnset MOVE_PSYCHIC, 43
	learnset MOVE_FUTURE_SIGHT, 46
	learnset MOVE_TRICK_ROOM, 50
	terminatelearnset

levelup SPECIES_PASSIMIAN
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 4
	learnset MOVE_ROCK_SMASH, 8
	learnset MOVE_FOCUS_ENERGY, 11
	learnset MOVE_BEAT_UP, 15
	learnset MOVE_SCARY_FACE, 18
	learnset MOVE_TAKE_DOWN, 22
	learnset MOVE_BESTOW, 25
	learnset MOVE_THRASH, 29
	learnset MOVE_BULK_UP, 32
	learnset MOVE_DOUBLE_EDGE, 36
	learnset MOVE_FLING, 39
	learnset MOVE_CLOSE_COMBAT, 43
	learnset MOVE_REVERSAL, 46
	learnset MOVE_GIGA_IMPACT, 50
	terminatelearnset

levelup SPECIES_WIMPOD
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_SAND_ATTACK, 1
	terminatelearnset

levelup SPECIES_GOLISOPOD
	learnset MOVE_FIRST_IMPRESSION, 1
	learnset MOVE_STRUGGLE_BUG, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_ROCK_SMASH, 1
	learnset MOVE_FURY_CUTTER, 4
	learnset MOVE_ROCK_SMASH, 7
	learnset MOVE_BUG_BITE, 10
	learnset MOVE_SPITE, 13
	learnset MOVE_SWORDS_DANCE, 16
	learnset MOVE_SLASH, 21
	learnset MOVE_RAZOR_SHELL, 26
	learnset MOVE_SUCKER_PUNCH, 31
	learnset MOVE_IRON_DEFENSE, 36
	learnset MOVE_PIN_MISSILE, 41
	learnset MOVE_LIQUIDATION, 48
	terminatelearnset

levelup SPECIES_SANDYGAST
	learnset MOVE_HARDEN, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_SAND_ATTACK, 9
	learnset MOVE_SAND_TOMB, 14
	learnset MOVE_MEGA_DRAIN, 18
	learnset MOVE_BULLDOZE, 23
	learnset MOVE_HYPNOSIS, 27
	learnset MOVE_IRON_DEFENSE, 32
	learnset MOVE_GIGA_DRAIN, 36
	learnset MOVE_SHADOW_BALL, 41
	learnset MOVE_EARTH_POWER, 45
	learnset MOVE_SHORE_UP, 50
	learnset MOVE_SANDSTORM, 54
	terminatelearnset

levelup SPECIES_PALOSSAND
	learnset MOVE_HARDEN, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_ASTONISH, 5
	learnset MOVE_SAND_ATTACK, 9
	learnset MOVE_SAND_TOMB, 14
	learnset MOVE_MEGA_DRAIN, 18
	learnset MOVE_BULLDOZE, 23
	learnset MOVE_HYPNOSIS, 27
	learnset MOVE_IRON_DEFENSE, 32
	learnset MOVE_GIGA_DRAIN, 36
	learnset MOVE_SHADOW_BALL, 41
	learnset MOVE_EARTH_POWER, 47
	learnset MOVE_SHORE_UP, 54
	learnset MOVE_SANDSTORM, 60
	terminatelearnset

levelup SPECIES_PYUKUMUKU
	learnset MOVE_BATON_PASS, 1
	learnset MOVE_WATER_SPORT, 1
	learnset MOVE_MUD_SPORT, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_HELPING_HAND, 5
	learnset MOVE_TAUNT, 9
	learnset MOVE_SAFEGUARD, 13
	learnset MOVE_COUNTER, 17
	learnset MOVE_PURIFY, 21
	learnset MOVE_CURSE, 25
	learnset MOVE_GASTRO_ACID, 29
	learnset MOVE_PAIN_SPLIT, 33
	learnset MOVE_RECOVER, 37
	learnset MOVE_SOAK, 41
	learnset MOVE_TOXIC, 45
	learnset MOVE_MEMENTO, 49
	terminatelearnset

levelup SPECIES_TYPE_NULL
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAGE, 5
	learnset MOVE_PURSUIT, 10
	learnset MOVE_IMPRISON, 15
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_CRUSH_CLAW, 25
	learnset MOVE_SCARY_FACE, 30
	learnset MOVE_X_SCISSOR, 35
	learnset MOVE_TAKE_DOWN, 40
	learnset MOVE_METAL_SOUND, 45
	learnset MOVE_IRON_HEAD, 50
	learnset MOVE_DOUBLE_HIT, 55
	learnset MOVE_AIR_SLASH, 60
	learnset MOVE_PUNISHMENT, 65
	learnset MOVE_RAZOR_WIND, 70
	learnset MOVE_TRI_ATTACK, 75
	learnset MOVE_DOUBLE_EDGE, 80
	learnset MOVE_HEAL_BLOCK, 85
	terminatelearnset

levelup SPECIES_SILVALLY
	learnset MOVE_MULTI_ATTACK, 1
	learnset MOVE_HEAL_BLOCK, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_IRON_HEAD, 1
	learnset MOVE_POISON_FANG, 1
	learnset MOVE_FIRE_FANG, 1
	learnset MOVE_ICE_FANG, 1
	learnset MOVE_THUNDER_FANG, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_RAGE, 5
	learnset MOVE_PURSUIT, 10
	learnset MOVE_BITE, 15
	learnset MOVE_AERIAL_ACE, 20
	learnset MOVE_CRUSH_CLAW, 25
	learnset MOVE_SCARY_FACE, 30
	learnset MOVE_X_SCISSOR, 35
	learnset MOVE_TAKE_DOWN, 40
	learnset MOVE_METAL_SOUND, 45
	learnset MOVE_CRUNCH, 50
	learnset MOVE_DOUBLE_HIT, 55
	learnset MOVE_AIR_SLASH, 60
	learnset MOVE_PUNISHMENT, 65
	learnset MOVE_RAZOR_WIND, 70
	learnset MOVE_TRI_ATTACK, 75
	learnset MOVE_DOUBLE_EDGE, 80
	learnset MOVE_PARTING_SHOT, 85
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
	learnset MOVE_EMBER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMOG, 5
	learnset MOVE_PROTECT, 9
	learnset MOVE_INCINERATE, 13
	learnset MOVE_FLAIL, 17
	learnset MOVE_ENDURE, 21
	learnset MOVE_IRON_DEFENSE, 25
	learnset MOVE_FLAMETHROWER, 29
	learnset MOVE_BODY_SLAM, 33
	learnset MOVE_SHELL_SMASH, 37
	learnset MOVE_DRAGON_PULSE, 41
	learnset MOVE_SHELL_TRAP, 45
	learnset MOVE_OVERHEAT, 49
	learnset MOVE_EXPLOSION, 53
	terminatelearnset

levelup SPECIES_TOGEDEMARU
	learnset MOVE_TACKLE, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_DEFENSE_CURL, 5
	learnset MOVE_ROLLOUT, 9
	learnset MOVE_CHARGE, 13
	learnset MOVE_SPARK, 17
	learnset MOVE_NUZZLE, 21
	learnset MOVE_MAGNET_RISE, 25
	learnset MOVE_DISCHARGE, 29
	learnset MOVE_ZING_ZAP, 33
	learnset MOVE_ELECTRIC_TERRAIN, 37
	learnset MOVE_WILD_CHARGE, 41
	learnset MOVE_PIN_MISSILE, 45
	learnset MOVE_SPIKY_SHIELD, 49
	learnset MOVE_FELL_STINGER, 53
	terminatelearnset

levelup SPECIES_MIMIKYU
	learnset MOVE_WOOD_HAMMER, 1
	learnset MOVE_SPLASH, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_COPYCAT, 1
	learnset MOVE_DOUBLE_TEAM, 5
	learnset MOVE_BABY_DOLL_EYES, 10
	learnset MOVE_SHADOW_SNEAK, 14
	learnset MOVE_MIMIC, 19
	learnset MOVE_FAINT_ATTACK, 23
	learnset MOVE_CHARM, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_SHADOW_CLAW, 37
	learnset MOVE_HONE_CLAWS, 41
	learnset MOVE_PLAY_ROUGH, 46
	learnset MOVE_PAIN_SPLIT, 50
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
	learnset MOVE_GLARE, 13
	learnset MOVE_LIGHT_SCREEN, 17
	learnset MOVE_DRAGON_RAGE, 21
	learnset MOVE_NATURAL_GIFT, 25
	learnset MOVE_DRAGON_BREATH, 29
	learnset MOVE_SAFEGUARD, 33
	learnset MOVE_EXTRASENSORY, 37
	learnset MOVE_DRAGON_PULSE, 41
	learnset MOVE_FLY, 45
	learnset MOVE_HYPER_VOICE, 49
	learnset MOVE_OUTRAGE, 53
	terminatelearnset

levelup SPECIES_DHELMISE
	learnset MOVE_SWITCHEROO, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_GROWTH, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MEGA_DRAIN, 5
	learnset MOVE_WRAP, 9
	learnset MOVE_GYRO_BALL, 14
	learnset MOVE_METAL_SOUND, 18
	learnset MOVE_GIGA_DRAIN, 23
	learnset MOVE_WHIRLPOOL, 27
	learnset MOVE_ANCHOR_SHOT, 32
	learnset MOVE_SHADOW_BALL, 36
	learnset MOVE_ENERGY_BALL, 41
	learnset MOVE_SLAM, 45
	learnset MOVE_HEAVY_SLAM, 50
	learnset MOVE_PHANTOM_FORCE, 54
	learnset MOVE_POWER_WHIP, 59
	terminatelearnset

levelup SPECIES_JANGMO_O
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 5
	learnset MOVE_BIDE, 9
	learnset MOVE_PROTECT, 13
	learnset MOVE_DRAGON_TAIL, 17
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_HEADBUTT, 25
	learnset MOVE_WORK_UP, 29
	learnset MOVE_SCREECH, 33
	learnset MOVE_IRON_DEFENSE, 37
	learnset MOVE_DRAGON_CLAW, 41
	learnset MOVE_NOBLE_ROAR, 45
	learnset MOVE_DRAGON_DANCE, 49
	learnset MOVE_OUTRAGE, 53
	terminatelearnset

levelup SPECIES_HAKAMO_O
	learnset MOVE_SKY_UPPERCUT, 1
	learnset MOVE_AUTOTOMIZE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_LEER, 5
	learnset MOVE_BIDE, 9
	learnset MOVE_PROTECT, 13
	learnset MOVE_DRAGON_TAIL, 17
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_HEADBUTT, 25
	learnset MOVE_WORK_UP, 29
	learnset MOVE_SCREECH, 33
	learnset MOVE_IRON_DEFENSE, 38
	learnset MOVE_DRAGON_CLAW, 43
	learnset MOVE_NOBLE_ROAR, 48
	learnset MOVE_DRAGON_DANCE, 53
	learnset MOVE_OUTRAGE, 58
	learnset MOVE_CLOSE_COMBAT, 63
	terminatelearnset

levelup SPECIES_KOMMO_O
	learnset MOVE_CLANGING_SCALES, 1
	learnset MOVE_SKY_UPPERCUT, 1
	learnset MOVE_BELLY_DRUM, 1
	learnset MOVE_AUTOTOMIZE, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_BIDE, 1
	learnset MOVE_PROTECT, 1
	learnset MOVE_LEER, 5
	learnset MOVE_BIDE, 9
	learnset MOVE_PROTECT, 13
	learnset MOVE_DRAGON_TAIL, 17
	learnset MOVE_SCARY_FACE, 21
	learnset MOVE_HEADBUTT, 25
	learnset MOVE_WORK_UP, 29
	learnset MOVE_SCREECH, 33
	learnset MOVE_IRON_DEFENSE, 38
	learnset MOVE_DRAGON_CLAW, 43
	learnset MOVE_NOBLE_ROAR, 51
	learnset MOVE_DRAGON_DANCE, 59
	learnset MOVE_OUTRAGE, 67
	learnset MOVE_CLOSE_COMBAT, 75
	terminatelearnset

levelup SPECIES_TAPU_KOKO
	learnset MOVE_ELECTRIC_TERRAIN, 1
	learnset MOVE_BRAVE_BIRD, 1
	learnset MOVE_POWER_SWAP, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_FALSE_SWIPE, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_SPARK, 8
	learnset MOVE_SHOCK_WAVE, 14
	learnset MOVE_SCREECH, 20
	learnset MOVE_CHARGE, 26
	learnset MOVE_WILD_CHARGE, 32
	learnset MOVE_MIRROR_MOVE, 38
	learnset MOVE_NATURES_MADNESS, 43
	learnset MOVE_DISCHARGE, 48
	learnset MOVE_AGILITY, 53
	learnset MOVE_ELECTRO_BALL, 58
	terminatelearnset

levelup SPECIES_TAPU_LELE
	learnset MOVE_PSYCHIC_TERRAIN, 1
	learnset MOVE_AROMATIC_MIST, 1
	learnset MOVE_AROMATHERAPY, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_DRAINING_KISS, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_PSYWAVE, 8
	learnset MOVE_PSYBEAM, 14
	learnset MOVE_SWEET_SCENT, 20
	learnset MOVE_SKILL_SWAP, 26
	learnset MOVE_PSYSHOCK, 32
	learnset MOVE_TICKLE, 38
	learnset MOVE_NATURES_MADNESS, 43
	learnset MOVE_EXTRASENSORY, 48
	learnset MOVE_FLATTER, 53
	learnset MOVE_MOONBLAST, 58
	terminatelearnset

levelup SPECIES_TAPU_BULU
	learnset MOVE_GRASSY_TERRAIN, 1
	learnset MOVE_WOOD_HAMMER, 1
	learnset MOVE_SUPERPOWER, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_DISABLE, 1
	learnset MOVE_WHIRLWIND, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_LEAFAGE, 1
	learnset MOVE_HORN_ATTACK, 8
	learnset MOVE_GIGA_DRAIN, 14
	learnset MOVE_SCARY_FACE, 20
	learnset MOVE_LEECH_SEED, 26
	learnset MOVE_HORN_LEECH, 32
	learnset MOVE_ROTOTILLER, 38
	learnset MOVE_NATURES_MADNESS, 43
	learnset MOVE_ZEN_HEADBUTT, 48
	learnset MOVE_MEGAHORN, 53
	learnset MOVE_SKULL_BASH, 58
	terminatelearnset

levelup SPECIES_TAPU_FINI
	learnset MOVE_MISTY_TERRAIN, 1
	learnset MOVE_MOONBLAST, 1
	learnset MOVE_HEAL_PULSE, 1
	learnset MOVE_MEAN_LOOK, 1
	learnset MOVE_HAZE, 1
	learnset MOVE_MIST, 1
	learnset MOVE_WITHDRAW, 1
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_WATER_PULSE, 8
	learnset MOVE_WHIRLPOOL, 14
	learnset MOVE_SOAK, 20
	learnset MOVE_REFRESH, 26
	learnset MOVE_BRINE, 32
	learnset MOVE_DEFOG, 38
	learnset MOVE_NATURES_MADNESS, 43
	learnset MOVE_MUDDY_WATER, 48
	learnset MOVE_AQUA_RING, 53
	learnset MOVE_HYDRO_PUMP, 58
	terminatelearnset

levelup SPECIES_COSMOG
	learnset MOVE_SPLASH, 1
	learnset MOVE_TELEPORT, 23
	terminatelearnset

levelup SPECIES_COSMOEM
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_TELEPORT, 1
	terminatelearnset

levelup SPECIES_SOLGALEO
	learnset MOVE_SUNSTEEL_STRIKE, 1
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_WAKE_UP_SLAP, 1
	learnset MOVE_TELEPORT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_IRON_HEAD, 7
	learnset MOVE_METAL_SOUND, 13
	learnset MOVE_ZEN_HEADBUTT, 19
	learnset MOVE_FLASH_CANNON, 23
	learnset MOVE_MORNING_SUN, 31
	learnset MOVE_CRUNCH, 37
	learnset MOVE_METAL_BURST, 43
	learnset MOVE_SOLAR_BEAM, 47
	learnset MOVE_NOBLE_ROAR, 59
	learnset MOVE_FLARE_BLITZ, 61
	learnset MOVE_WIDE_GUARD, 67
	learnset MOVE_GIGA_IMPACT, 73
	terminatelearnset

levelup SPECIES_LUNALA
	learnset MOVE_MOONGEIST_BEAM, 1
	learnset MOVE_COSMIC_POWER, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_TELEPORT, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_NIGHT_SHADE, 7
	learnset MOVE_CONFUSE_RAY, 13
	learnset MOVE_AIR_SLASH, 19
	learnset MOVE_SHADOW_BALL, 23
	learnset MOVE_MOONLIGHT, 31
	learnset MOVE_NIGHT_DAZE, 37
	learnset MOVE_MAGIC_COAT, 43
	learnset MOVE_MOONBLAST, 47
	learnset MOVE_DREAM_EATER, 59
	learnset MOVE_PHANTOM_FORCE, 61
	learnset MOVE_WIDE_GUARD, 67
	learnset MOVE_HYPER_BEAM, 73
	terminatelearnset

levelup SPECIES_NIHILEGO
	learnset MOVE_POWER_SPLIT, 1
	learnset MOVE_GUARD_SPLIT, 1
	learnset MOVE_TICKLE, 1
	learnset MOVE_ACID, 1
	learnset MOVE_CONSTRICT, 1
	learnset MOVE_POUND, 1
	learnset MOVE_CLEAR_SMOG, 7
	learnset MOVE_PSYWAVE, 13
	learnset MOVE_HEADBUTT, 19
	learnset MOVE_VENOSHOCK, 23
	learnset MOVE_TOXIC_SPIKES, 29
	learnset MOVE_SAFEGUARD, 31
	learnset MOVE_POWER_GEM, 37
	learnset MOVE_MIRROR_COAT, 43
	learnset MOVE_ACID_SPRAY, 47
	learnset MOVE_VENOM_DRENCH, 53
	learnset MOVE_STEALTH_ROCK, 59
	learnset MOVE_WONDER_ROOM, 67
	learnset MOVE_HEAD_SMASH, 73
	terminatelearnset

levelup SPECIES_BUZZWOLE
	learnset MOVE_FELL_STINGER, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_REVERSAL, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_POWER_UP_PUNCH, 1
	learnset MOVE_FOCUS_ENERGY, 1
	learnset MOVE_COMET_PUNCH, 7
	learnset MOVE_BULK_UP, 13
	learnset MOVE_VITAL_THROW, 19
	learnset MOVE_ENDURE, 23
	learnset MOVE_LEECH_LIFE, 29
	learnset MOVE_TAUNT, 31
	learnset MOVE_MEGA_PUNCH, 37
	learnset MOVE_COUNTER, 43
	learnset MOVE_HAMMER_ARM, 47
	learnset MOVE_LUNGE, 53
	learnset MOVE_DYNAMIC_PUNCH, 59
	learnset MOVE_SUPERPOWER, 67
	learnset MOVE_FOCUS_PUNCH, 73
	terminatelearnset

levelup SPECIES_PHEROMOSA
	learnset MOVE_QUIVER_DANCE, 1
	learnset MOVE_QUICK_GUARD, 1
	learnset MOVE_LOW_KICK, 1
	learnset MOVE_RAPID_SPIN, 1
	learnset MOVE_LEER, 1
	learnset MOVE_DOUBLE_KICK, 1
	learnset MOVE_SWIFT, 7
	learnset MOVE_STOMP, 13
	learnset MOVE_FEINT, 19
	learnset MOVE_SILVER_WIND, 23
	learnset MOVE_BOUNCE, 29
	learnset MOVE_JUMP_KICK, 31
	learnset MOVE_AGILITY, 37
	learnset MOVE_TRIPLE_KICK, 43
	learnset MOVE_LUNGE, 47
	learnset MOVE_BUG_BUZZ, 53
	learnset MOVE_ME_FIRST, 59
	learnset MOVE_HI_JUMP_KICK, 67
	learnset MOVE_SPEED_SWAP, 73
	terminatelearnset

levelup SPECIES_XURKITREE
	learnset MOVE_TAIL_GLOW, 1
	learnset MOVE_SPARK, 1
	learnset MOVE_CHARGE, 1
	learnset MOVE_WRAP, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_THUNDER_WAVE, 7
	learnset MOVE_SHOCK_WAVE, 13
	learnset MOVE_INGRAIN, 19
	learnset MOVE_THUNDER_PUNCH, 23
	learnset MOVE_EERIE_IMPULSE, 29
	learnset MOVE_SIGNAL_BEAM, 31
	learnset MOVE_THUNDERBOLT, 37
	learnset MOVE_HYPNOSIS, 43
	learnset MOVE_DISCHARGE, 47
	learnset MOVE_ELECTRIC_TERRAIN, 53
	learnset MOVE_POWER_WHIP, 59
	learnset MOVE_ION_DELUGE, 67
	learnset MOVE_ZAP_CANNON, 73
	terminatelearnset

levelup SPECIES_CELESTEELA
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_AIR_SLASH, 1
	learnset MOVE_INGRAIN, 1
	learnset MOVE_ABSORB, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_SMACK_DOWN, 7
	learnset MOVE_MEGA_DRAIN, 13
	learnset MOVE_LEECH_SEED, 19
	learnset MOVE_METAL_SOUND, 23
	learnset MOVE_IRON_HEAD, 29
	learnset MOVE_GIGA_DRAIN, 31
	learnset MOVE_FLASH_CANNON, 37
	learnset MOVE_AUTOTOMIZE, 43
	learnset MOVE_SEED_BOMB, 47
	learnset MOVE_SKULL_BASH, 53
	learnset MOVE_IRON_DEFENSE, 59
	learnset MOVE_HEAVY_SLAM, 67
	learnset MOVE_DOUBLE_EDGE, 73
	terminatelearnset

levelup SPECIES_KARTANA
	learnset MOVE_SACRED_SWORD, 1
	learnset MOVE_DEFOG, 1
	learnset MOVE_VACUUM_WAVE, 1
	learnset MOVE_AIR_CUTTER, 1
	learnset MOVE_FURY_CUTTER, 1
	learnset MOVE_CUT, 1
	learnset MOVE_FALSE_SWIPE, 7
	learnset MOVE_RAZOR_LEAF, 13
	learnset MOVE_SYNTHESIS, 19
	learnset MOVE_AERIAL_ACE, 23
	learnset MOVE_LASER_FOCUS, 29
	learnset MOVE_NIGHT_SLASH, 31
	learnset MOVE_SWORDS_DANCE, 37
	learnset MOVE_LEAF_BLADE, 43
	learnset MOVE_X_SCISSOR, 47
	learnset MOVE_DETECT, 53
	learnset MOVE_AIR_SLASH, 59
	learnset MOVE_PSYCHO_CUT, 67
	learnset MOVE_GUILLOTINE, 73
	terminatelearnset

levelup SPECIES_GUZZLORD
	learnset MOVE_BELCH, 1
	learnset MOVE_WIDE_GUARD, 1
	learnset MOVE_SWALLOW, 1
	learnset MOVE_STOCKPILE, 1
	learnset MOVE_DRAGON_RAGE, 1
	learnset MOVE_BITE, 1
	learnset MOVE_STOMP, 7
	learnset MOVE_BRUTAL_SWING, 13
	learnset MOVE_STEAMROLLER, 19
	learnset MOVE_DRAGON_TAIL, 23
	learnset MOVE_IRON_TAIL, 29
	learnset MOVE_STOMPING_TANTRUM, 31
	learnset MOVE_CRUNCH, 37
	learnset MOVE_HAMMER_ARM, 43
	learnset MOVE_THRASH, 47
	learnset MOVE_GASTRO_ACID, 53
	learnset MOVE_HEAVY_SLAM, 59
	learnset MOVE_WRING_OUT, 67
	learnset MOVE_DRAGON_RUSH, 73
	terminatelearnset

levelup SPECIES_NECROZMA
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_MORNING_SUN, 1
	learnset MOVE_CHARGE_BEAM, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SLASH, 7
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_GRAVITY, 31
	learnset MOVE_PSYCHO_CUT, 37
	learnset MOVE_POWER_GEM, 43
	learnset MOVE_AUTOTOMIZE, 47
	learnset MOVE_PHOTON_GEYSER, 50
	learnset MOVE_STEALTH_ROCK, 53
	learnset MOVE_IRON_DEFENSE, 59
	learnset MOVE_WRING_OUT, 67
	learnset MOVE_PRISMATIC_LASER, 73
	terminatelearnset

levelup SPECIES_MAGEARNA
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

levelup SPECIES_MARSHADOW
	learnset MOVE_LASER_FOCUS, 1
	learnset MOVE_ASSURANCE, 1
	learnset MOVE_FIRE_PUNCH, 1
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_ICE_PUNCH, 1
	learnset MOVE_DRAIN_PUNCH, 1
	learnset MOVE_COUNTER, 1
	learnset MOVE_PURSUIT, 1
	learnset MOVE_SHADOW_SNEAK, 1
	learnset MOVE_FORCE_PALM, 5
	learnset MOVE_FEINT, 11
	learnset MOVE_ROLLING_KICK, 15
	learnset MOVE_COPYCAT, 20
	learnset MOVE_SHADOW_PUNCH, 26
	learnset MOVE_ROLE_PLAY, 30
	learnset MOVE_JUMP_KICK, 35
	learnset MOVE_PSYCH_UP, 41
	learnset MOVE_SPECTRAL_THIEF, 45
	learnset MOVE_CLOSE_COMBAT, 50
	learnset MOVE_SUCKER_PUNCH, 56
	learnset MOVE_ENDEAVOR, 60
	terminatelearnset

levelup SPECIES_POIPOLE
	learnset MOVE_DRAGON_PULSE, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_ACID, 1
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_VENOSHOCK, 13
	learnset MOVE_CHARM, 19
	learnset MOVE_VENOM_DRENCH, 23
	learnset MOVE_NASTY_PLOT, 31
	learnset MOVE_POISON_JAB, 37
	learnset MOVE_TOXIC, 41
	learnset MOVE_FELL_STINGER, 47
	terminatelearnset

levelup SPECIES_NAGANADEL
	learnset MOVE_AIR_CUTTER, 1
	learnset MOVE_DRAGON_PULSE, 1
	learnset MOVE_PECK, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_HELPING_HAND, 1
	learnset MOVE_ACID, 1
	learnset MOVE_FURY_ATTACK, 7
	learnset MOVE_VENOSHOCK, 13
	learnset MOVE_CHARM, 19
	learnset MOVE_VENOM_DRENCH, 23
	learnset MOVE_NASTY_PLOT, 31
	learnset MOVE_POISON_JAB, 37
	learnset MOVE_TOXIC, 41
	learnset MOVE_FELL_STINGER, 47
	learnset MOVE_AIR_SLASH, 53
	learnset MOVE_DRAGON_PULSE, 61
	terminatelearnset

levelup SPECIES_STAKATAKA
	learnset MOVE_PROTECT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_ROCK_SLIDE, 5
	learnset MOVE_STEALTH_ROCK, 11
	learnset MOVE_BIDE, 17
	learnset MOVE_TAKE_DOWN, 19
	learnset MOVE_ROCK_THROW, 23
	learnset MOVE_AUTOTOMIZE, 31
	learnset MOVE_IRON_DEFENSE, 37
	learnset MOVE_IRON_HEAD, 43
	learnset MOVE_ROCK_BLAST, 47
	learnset MOVE_WIDE_GUARD, 53
	learnset MOVE_DOUBLE_EDGE, 61
	terminatelearnset

levelup SPECIES_BLACEPHALON
	learnset MOVE_EMBER, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_MAGIC_COAT, 7
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_FLAME_BURST, 17
	learnset MOVE_NIGHT_SHADE, 23
	learnset MOVE_LIGHT_SCREEN, 29
	learnset MOVE_CALM_MIND, 31
	learnset MOVE_FIRE_BLAST, 37
	learnset MOVE_SHADOW_BALL, 41
	learnset MOVE_TRICK, 47
	learnset MOVE_MIND_BLOWN, 59
	terminatelearnset

levelup SPECIES_ZERAORA
	learnset MOVE_SCRATCH, 1
	learnset MOVE_SPARK, 1
	learnset MOVE_HONE_CLAWS, 5
	learnset MOVE_QUICK_ATTACK, 8
	learnset MOVE_FURY_SWIPES, 12
	learnset MOVE_VOLT_SWITCH, 15
	learnset MOVE_SNARL, 19
	learnset MOVE_FAKE_OUT, 22
	learnset MOVE_CHARGE, 26
	learnset MOVE_THUNDER_PUNCH, 29
	learnset MOVE_SLASH, 33
	learnset MOVE_WILD_CHARGE, 36
	learnset MOVE_QUICK_GUARD, 40
	learnset MOVE_PLASMA_FISTS, 43
	learnset MOVE_CLOSE_COMBAT, 47
	learnset MOVE_DISCHARGE, 50
	terminatelearnset

levelup SPECIES_MELTAN
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TAIL_WHIP, 9
	learnset MOVE_THUNDER_WAVE, 18
	learnset MOVE_THUNDER_SHOCK, 27
	learnset MOVE_ACID_ARMOR, 36
	learnset MOVE_FLASH_CANNON, 45
	terminatelearnset

levelup SPECIES_MELMETAL
	learnset MOVE_THUNDER_PUNCH, 1
	learnset MOVE_HEADBUTT, 1
	learnset MOVE_HARDEN, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_THUNDER_WAVE, 1
	learnset MOVE_TAIL_WHIP, 9
	learnset MOVE_THUNDER_WAVE, 18
	learnset MOVE_THUNDER_SHOCK, 27
	learnset MOVE_ACID_ARMOR, 36
	learnset MOVE_FLASH_CANNON, 45
	learnset MOVE_MEGA_PUNCH, 54
	learnset MOVE_PROTECT, 64
	learnset MOVE_DOUBLE_IRON_BASH, 72
	learnset MOVE_SUPERPOWER, 81
	learnset MOVE_HYPER_BEAM, 90
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
    learnset MOVE_ME_FIRST, 1
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
    learnset MOVE_JUMP_KICK, 43
    learnset MOVE_IMPRISON, 49
    learnset MOVE_CAPTIVATE, 50
    learnset MOVE_ME_FIRST, 55
    terminatelearnset

levelup SPECIES_KLEAVOR
    learnset MOVE_BULLET_PUNCH, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_AIR_SLASH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_METAL_CLAW, 12
    learnset MOVE_DOUBLE_TEAM, 16
    learnset MOVE_DOUBLE_HIT, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_FOCUS_ENERGY, 28
    learnset MOVE_IRON_DEFENSE, 32
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_LASER_FOCUS, 44
    learnset MOVE_SWORDS_DANCE, 48
    terminatelearnset

levelup SPECIES_URSALUNA
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_FURY_SWIPES, 8
    learnset MOVE_FAINT_ATTACK, 15
    learnset MOVE_SWEET_SCENT, 22
    learnset MOVE_PLAY_NICE, 25
    learnset MOVE_SLASH, 29
    learnset MOVE_SCARY_FACE, 38
    learnset MOVE_REST, 47
    learnset MOVE_SNORE, 49
    learnset MOVE_THRASH, 58
    learnset MOVE_HAMMER_ARM, 67
    terminatelearnset

levelup SPECIES_BASCULEGION
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
    learnset MOVE_SAND_TOMB, 01
    learnset MOVE_ROCK_THROW, 01
    learnset MOVE_LEER, 05
    learnset MOVE_BLOCK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_SWORDS_DANCE, 25
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
    terminatelearnset

levelup SPECIES_MEGA_VENUSAUR
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

levelup SPECIES_MEGA_CHARIZARD_X
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

levelup SPECIES_MEGA_CHARIZARD_Y
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

levelup SPECIES_MEGA_BLASTOISE
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

levelup SPECIES_MEGA_ALAKAZAM
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

levelup SPECIES_MEGA_SLOWBRO
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

levelup SPECIES_MEGA_GENGAR
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

levelup SPECIES_MEGA_KANGASKHAN
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

levelup SPECIES_MEGA_PINSIR
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

levelup SPECIES_MEGA_GYARADOS
    learnset MOVE_THRASH, 1 
    learnset MOVE_BITE, 20 
    learnset MOVE_DRAGON_RAGE, 23 
    learnset MOVE_LEER, 26 
    learnset MOVE_TWISTER, 29 
    learnset MOVE_ICE_FANG, 32 
    learnset MOVE_AQUA_TAIL, 35 
    learnset MOVE_RAIN_DANCE, 38 
    learnset MOVE_HYDRO_PUMP, 41 
    learnset MOVE_DRAGON_DANCE, 44 
    learnset MOVE_HYPER_BEAM, 47 
    terminatelearnset

levelup SPECIES_MEGA_AERODACTYL
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

levelup SPECIES_MEGA_MEWTWO_X
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_DISABLE, 1 
    learnset MOVE_BARRIER, 8 
    learnset MOVE_SWIFT, 15 
    learnset MOVE_FUTURE_SIGHT, 22 
    learnset MOVE_PSYCH_UP, 29 
    learnset MOVE_MIRACLE_EYE, 36 
    learnset MOVE_MIST, 43 
    learnset MOVE_PSYCHO_CUT, 50 
    learnset MOVE_AMNESIA, 57 
    learnset MOVE_POWER_SWAP, 64 
    learnset MOVE_GUARD_SWAP, 64 
    learnset MOVE_PSYCHIC, 71 
    learnset MOVE_ME_FIRST, 79 
    learnset MOVE_RECOVER, 86 
    learnset MOVE_SAFEGUARD, 93 
    learnset MOVE_AURA_SPHERE, 100 
    terminatelearnset

levelup SPECIES_MEGA_MEWTWO_Y
    learnset MOVE_CONFUSION, 1 
    learnset MOVE_DISABLE, 1 
    learnset MOVE_BARRIER, 8 
    learnset MOVE_SWIFT, 15 
    learnset MOVE_FUTURE_SIGHT, 22 
    learnset MOVE_PSYCH_UP, 29 
    learnset MOVE_MIRACLE_EYE, 36 
    learnset MOVE_MIST, 43 
    learnset MOVE_PSYCHO_CUT, 50 
    learnset MOVE_AMNESIA, 57 
    learnset MOVE_POWER_SWAP, 64 
    learnset MOVE_GUARD_SWAP, 64 
    learnset MOVE_PSYCHIC, 71 
    learnset MOVE_ME_FIRST, 79 
    learnset MOVE_RECOVER, 86 
    learnset MOVE_SAFEGUARD, 93 
    learnset MOVE_AURA_SPHERE, 100 
    terminatelearnset

levelup SPECIES_MEGA_AMPHAROS
    learnset MOVE_FIRE_PUNCH, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_GROWL, 1 
    learnset MOVE_THUNDER_SHOCK, 1 
    learnset MOVE_THUNDER_WAVE, 1 
    learnset MOVE_GROWL, 5 
    learnset MOVE_THUNDER_SHOCK, 10 
    learnset MOVE_THUNDER_WAVE, 14 
    learnset MOVE_COTTON_SPORE, 20 
    learnset MOVE_CHARGE, 25 
    learnset MOVE_THUNDER_PUNCH, 30 
    learnset MOVE_DISCHARGE, 34 
    learnset MOVE_SIGNAL_BEAM, 42 
    learnset MOVE_LIGHT_SCREEN, 51 
    learnset MOVE_POWER_GEM, 59 
    learnset MOVE_THUNDER, 68 
    terminatelearnset

levelup SPECIES_MEGA_STEELIX
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

levelup SPECIES_MEGA_SCIZOR
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

levelup SPECIES_MEGA_HERACROSS
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

levelup SPECIES_MEGA_HOUNDOOM
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
    learnset MOVE_FAINT_ATTACK, 38 
    learnset MOVE_EMBARGO, 44 
    learnset MOVE_FLAMETHROWER, 48 
    learnset MOVE_CRUNCH, 54 
    learnset MOVE_NASTY_PLOT, 60 
    terminatelearnset

levelup SPECIES_MEGA_TYRANITAR
    learnset MOVE_THUNDER_FANG, 1 
    learnset MOVE_ICE_FANG, 1 
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_SANDSTORM, 1 
    learnset MOVE_SCREECH, 1 
    learnset MOVE_SANDSTORM, 5 
    learnset MOVE_SCREECH, 10 
    learnset MOVE_ROCK_SLIDE, 14 
    learnset MOVE_SCARY_FACE, 19 
    learnset MOVE_THRASH, 23 
    learnset MOVE_DARK_PULSE, 28 
    learnset MOVE_PAYBACK, 34 
    learnset MOVE_CRUNCH, 41 
    learnset MOVE_EARTHQUAKE, 47 
    learnset MOVE_STONE_EDGE, 54 
    learnset MOVE_HYPER_BEAM, 70 
    terminatelearnset

levelup SPECIES_MEGA_SCEPTILE
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

levelup SPECIES_MEGA_BLAZIKEN
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

levelup SPECIES_MEGA_SWAMPERT
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

levelup SPECIES_MEGA_GARDEVOIR
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

levelup SPECIES_MEGA_SABLEYE
    learnset MOVE_LEER, 1 
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FORESIGHT, 4 
    learnset MOVE_NIGHT_SHADE, 8 
    learnset MOVE_ASTONISH, 11 
    learnset MOVE_FURY_SWIPES, 15 
    learnset MOVE_FAKE_OUT, 18 
    learnset MOVE_DETECT, 22 
    learnset MOVE_SHADOW_SNEAK, 25 
    learnset MOVE_KNOCK_OFF, 29 
    learnset MOVE_FAINT_ATTACK, 32 
    learnset MOVE_PUNISHMENT, 36 
    learnset MOVE_SHADOW_CLAW, 39 
    learnset MOVE_POWER_GEM, 43 
    learnset MOVE_CONFUSE_RAY, 46 
    learnset MOVE_ZEN_HEADBUTT, 50 
    learnset MOVE_SHADOW_BALL, 53 
    learnset MOVE_MEAN_LOOK, 57 
    terminatelearnset

levelup SPECIES_MEGA_MAWILE
    learnset MOVE_ASTONISH, 1 
    learnset MOVE_FAKE_TEARS, 6 
    learnset MOVE_BITE, 11 
    learnset MOVE_SWEET_SCENT, 16 
    learnset MOVE_VICE_GRIP, 21 
    learnset MOVE_FAINT_ATTACK, 26 
    learnset MOVE_BATON_PASS, 31 
    learnset MOVE_CRUNCH, 36 
    learnset MOVE_IRON_DEFENSE, 41 
    learnset MOVE_SUCKER_PUNCH, 46 
    learnset MOVE_STOCKPILE, 51 
    learnset MOVE_SWALLOW, 51 
    learnset MOVE_SPIT_UP, 51 
    learnset MOVE_IRON_HEAD, 56 
    terminatelearnset

levelup SPECIES_MEGA_AGGRON
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
    learnset MOVE_HI_JUMP_KICK, 32 
    learnset MOVE_PSYCH_UP, 36 
    learnset MOVE_POWER_TRICK, 42 
    learnset MOVE_REVERSAL, 49 
    learnset MOVE_RECOVER, 55 
    terminatelearnset

levelup SPECIES_MEGA_MANECTRIC
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

levelup SPECIES_MEGA_SHARPEDO
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

levelup SPECIES_MEGA_CAMERUPT
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

levelup SPECIES_MEGA_ALTARIA
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

levelup SPECIES_MEGA_BANETTE
    learnset MOVE_KNOCK_OFF, 1 
    learnset MOVE_SCREECH, 1 
    learnset MOVE_NIGHT_SHADE, 1 
    learnset MOVE_CURSE, 1 
    learnset MOVE_SCREECH, 8 
    learnset MOVE_NIGHT_SHADE, 5 
    learnset MOVE_CURSE, 13 
    learnset MOVE_SPITE, 16 
    learnset MOVE_SHADOW_SNEAK, 20 
    learnset MOVE_WILL_O_WISP, 23 
    learnset MOVE_FAINT_ATTACK, 28 
    learnset MOVE_SHADOW_BALL, 31 
    learnset MOVE_SUCKER_PUNCH, 35 
    learnset MOVE_EMBARGO, 42 
    learnset MOVE_SNATCH, 51 
    learnset MOVE_GRUDGE, 58 
    learnset MOVE_TRICK, 66 
    terminatelearnset

levelup SPECIES_MEGA_ABSOL
    learnset MOVE_SCRATCH, 1 
    learnset MOVE_FEINT, 1 
    learnset MOVE_LEER, 4 
    learnset MOVE_TAUNT, 9 
    learnset MOVE_QUICK_ATTACK, 12 
    learnset MOVE_RAZOR_WIND, 17 
    learnset MOVE_PURSUIT, 20 
    learnset MOVE_SWORDS_DANCE, 25 
    learnset MOVE_BITE, 28 
    learnset MOVE_DOUBLE_TEAM, 33 
    learnset MOVE_SLASH, 36 
    learnset MOVE_FUTURE_SIGHT, 41 
    learnset MOVE_SUCKER_PUNCH, 44 
    learnset MOVE_DETECT, 49 
    learnset MOVE_NIGHT_SLASH, 52 
    learnset MOVE_ME_FIRST, 57 
    learnset MOVE_PSYCHO_CUT, 60 
    learnset MOVE_PERISH_SONG, 65 
    terminatelearnset

levelup SPECIES_MEGA_GLALIE
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

levelup SPECIES_MEGA_SALAMENCE
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_THUNDER_FANG, 1 
    learnset MOVE_RAGE, 1 
    learnset MOVE_BITE, 1 
    learnset MOVE_LEER, 1 
    learnset MOVE_HEADBUTT, 1 
    learnset MOVE_BITE, 5 
    learnset MOVE_LEER, 10 
    learnset MOVE_HEADBUTT, 16 
    learnset MOVE_FOCUS_ENERGY, 20 
    learnset MOVE_EMBER, 25 
    learnset MOVE_PROTECT, 30 
    learnset MOVE_DRAGON_BREATH, 32 
    learnset MOVE_ZEN_HEADBUTT, 37 
    learnset MOVE_SCARY_FACE, 43 
    learnset MOVE_FLY, 50 
    learnset MOVE_CRUNCH, 53 
    learnset MOVE_DRAGON_CLAW, 61 
    learnset MOVE_DOUBLE_EDGE, 70 
    terminatelearnset

levelup SPECIES_MEGA_METAGROSS
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

levelup SPECIES_MEGA_LATIAS
    learnset MOVE_PSYWAVE, 1 
    learnset MOVE_WISH, 5 
    learnset MOVE_HELPING_HAND, 10 
    learnset MOVE_SAFEGUARD, 15 
    learnset MOVE_DRAGON_BREATH, 20 
    learnset MOVE_WATER_SPORT, 25 
    learnset MOVE_REFRESH, 30 
    learnset MOVE_MIST_BALL, 35 
    learnset MOVE_ZEN_HEADBUTT, 40 
    learnset MOVE_RECOVER, 45 
    learnset MOVE_PSYCHO_SHIFT, 50 
    learnset MOVE_CHARM, 55 
    learnset MOVE_HEALING_WISH, 60 
    learnset MOVE_PSYCHIC, 65 
    learnset MOVE_DRAGON_PULSE, 70 
    terminatelearnset

levelup SPECIES_MEGA_LATIOS
    learnset MOVE_PSYWAVE, 1 
    learnset MOVE_HEAL_BLOCK, 5 
    learnset MOVE_HELPING_HAND, 10 
    learnset MOVE_SAFEGUARD, 15 
    learnset MOVE_DRAGON_BREATH, 20 
    learnset MOVE_PROTECT, 25 
    learnset MOVE_REFRESH, 30 
    learnset MOVE_LUSTER_PURGE, 35 
    learnset MOVE_ZEN_HEADBUTT, 40 
    learnset MOVE_RECOVER, 45 
    learnset MOVE_PSYCHO_SHIFT, 50 
    learnset MOVE_DRAGON_DANCE, 55 
    learnset MOVE_MEMENTO, 60 
    learnset MOVE_PSYCHIC, 65 
    learnset MOVE_DRAGON_PULSE, 70 
    terminatelearnset

levelup SPECIES_MEGA_RAYQUAZA
    learnset MOVE_TWISTER, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_CRUNCH, 15 
    learnset MOVE_HYPER_VOICE, 20 
    learnset MOVE_REST, 30 
    learnset MOVE_AIR_SLASH, 35 
    learnset MOVE_ANCIENT_POWER, 45 
    learnset MOVE_OUTRAGE, 50 
    learnset MOVE_DRAGON_DANCE, 60 
    learnset MOVE_FLY, 65 
    learnset MOVE_EXTREME_SPEED, 75 
    learnset MOVE_HYPER_BEAM, 80 
    learnset MOVE_DRAGON_PULSE, 90 
    terminatelearnset

levelup SPECIES_MEGA_LOPUNNY
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

levelup SPECIES_MEGA_GARCHOMP
    learnset MOVE_FIRE_FANG, 1 
    learnset MOVE_TACKLE, 1 
    learnset MOVE_SAND_ATTACK, 1 
    learnset MOVE_DRAGON_RAGE, 1 
    learnset MOVE_SANDSTORM, 1 
    learnset MOVE_SAND_ATTACK, 3 
    learnset MOVE_DRAGON_RAGE, 7 
    learnset MOVE_SANDSTORM, 13 
    learnset MOVE_TAKE_DOWN, 15 
    learnset MOVE_SAND_TOMB, 19 
    learnset MOVE_SLASH, 28 
    learnset MOVE_DRAGON_CLAW, 33 
    learnset MOVE_DIG, 40 
    learnset MOVE_CRUNCH, 48 
    learnset MOVE_DRAGON_RUSH, 55 
    terminatelearnset

levelup SPECIES_MEGA_LUCARIO
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

levelup SPECIES_MEGA_ABOMASNOW
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

levelup SPECIES_MEGA_GALLADE
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

levelup SPECIES_MEGA_AUDINO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_REFRESH, 5
    learnset MOVE_DOUBLE_SLAP, 10
    learnset MOVE_ATTRACT, 15
    learnset MOVE_SECRET_POWER, 20
    //learnset MOVE_ENTRAINMENT, 25
    learnset MOVE_TAKE_DOWN, 30
    //learnset MOVE_HEAL_PULSE, 35
    //learnset MOVE_AFTER_YOU, 40
    //learnset MOVE_SIMPLE_BEAM, 45
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_LAST_RESORT, 55
    terminatelearnset

levelup SPECIES_MEGA_DIANCIE
    learnset MOVE_LAST_RESORT, 1
    terminatelearnset
    
levelup SPECIES_KYOGRE_PRIMAL
    learnset MOVE_WATER_PULSE, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_BODY_SLAM, 15 
    learnset MOVE_MUDDY_WATER, 20 
    learnset MOVE_AQUA_RING, 30 
    learnset MOVE_ICE_BEAM, 35 
    learnset MOVE_ANCIENT_POWER, 45 
    learnset MOVE_WATER_SPOUT, 50 
    learnset MOVE_CALM_MIND, 60 
    learnset MOVE_AQUA_TAIL, 65 
    learnset MOVE_SHEER_COLD, 75 
    learnset MOVE_DOUBLE_EDGE, 80 
    learnset MOVE_HYDRO_PUMP, 90 
    terminatelearnset

levelup SPECIES_GROUDON_PRIMAL
    learnset MOVE_MUD_SHOT, 1 
    learnset MOVE_SCARY_FACE, 5 
    learnset MOVE_LAVA_PLUME, 15 
    learnset MOVE_HAMMER_ARM, 20 
    learnset MOVE_REST, 30 
    learnset MOVE_EARTHQUAKE, 35 
    learnset MOVE_ANCIENT_POWER, 45 
    learnset MOVE_ERUPTION, 50 
    learnset MOVE_BULK_UP, 60 
    learnset MOVE_EARTH_POWER, 65 
    learnset MOVE_FISSURE, 75 
    learnset MOVE_SOLAR_BEAM, 80 
    learnset MOVE_FIRE_BLAST, 90 
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
	learnset MOVE_PSYCHIC, 1
	learnset MOVE_SPEED_SWAP, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_QUICK_ATTACK, 1
	learnset MOVE_THUNDERBOLT, 1
	terminatelearnset

levelup SPECIES_SANDSHREW_ALOLAN
	learnset MOVE_SCRATCH, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_BIDE, 3
	learnset MOVE_POWDER_SNOW, 5
	learnset MOVE_ICE_BALL, 7
	learnset MOVE_RAPID_SPIN, 9
	learnset MOVE_FURY_CUTTER, 11
	learnset MOVE_METAL_CLAW, 14
	learnset MOVE_SWIFT, 17
	learnset MOVE_FURY_SWIPES, 20
	learnset MOVE_IRON_DEFENSE, 23
	learnset MOVE_SLASH, 26
	learnset MOVE_IRON_HEAD, 30
	learnset MOVE_GYRO_BALL, 34
	learnset MOVE_SWORDS_DANCE, 38
	learnset MOVE_HAIL, 42
	learnset MOVE_BLIZZARD, 46
	terminatelearnset

levelup SPECIES_SANDSLASH_ALOLAN
	learnset MOVE_ICICLE_SPEAR, 1
	learnset MOVE_METAL_BURST, 1
	learnset MOVE_ICICLE_CRASH, 1
	learnset MOVE_SLASH, 1
	learnset MOVE_DEFENSE_CURL, 1
	learnset MOVE_ICE_BALL, 1
	learnset MOVE_METAL_CLAW, 1
	terminatelearnset

levelup SPECIES_VULPIX_ALOLAN
	learnset MOVE_POWDER_SNOW, 1
	learnset MOVE_TAIL_WHIP, 4
	learnset MOVE_ROAR, 7
	learnset MOVE_BABY_DOLL_EYES, 9
	learnset MOVE_ICE_SHARD, 10
	learnset MOVE_CONFUSE_RAY, 12
	learnset MOVE_ICY_WIND, 15
	learnset MOVE_PAYBACK, 18
	learnset MOVE_MIST, 20
	learnset MOVE_FAINT_ATTACK, 23
	learnset MOVE_HEX, 26
	learnset MOVE_AURORA_BEAM, 28
	learnset MOVE_EXTRASENSORY, 31
	learnset MOVE_SAFEGUARD, 34
	learnset MOVE_ICE_BEAM, 36
	learnset MOVE_IMPRISON, 39
	learnset MOVE_BLIZZARD, 42
	learnset MOVE_GRUDGE, 44
	learnset MOVE_CAPTIVATE, 47
	learnset MOVE_SHEER_COLD, 50
	terminatelearnset

levelup SPECIES_NINETALES_ALOLAN
	learnset MOVE_DAZZLING_GLEAM, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_ICE_BEAM, 1
	learnset MOVE_ICE_SHARD, 1
	learnset MOVE_CONFUSE_RAY, 1
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
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_BITE, 6
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_FURY_SWIPES, 14
	learnset MOVE_SCREECH, 17
	learnset MOVE_FAINT_ATTACK, 22
	learnset MOVE_TAUNT, 25
	learnset MOVE_PAY_DAY, 30
	learnset MOVE_SLASH, 33
	learnset MOVE_NASTY_PLOT, 38
	learnset MOVE_ASSURANCE, 41
	learnset MOVE_CAPTIVATE, 46
	learnset MOVE_NIGHT_SLASH, 49
	learnset MOVE_FEINT, 50
	learnset MOVE_DARK_PULSE, 55
	terminatelearnset

levelup SPECIES_PERSIAN_ALOLAN
	learnset MOVE_SWIFT, 1
	learnset MOVE_QUASH, 1
	learnset MOVE_PLAY_ROUGH, 1
	learnset MOVE_SWITCHEROO, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_BITE, 1
	learnset MOVE_FAKE_OUT, 1
	learnset MOVE_BITE, 6
	learnset MOVE_FAKE_OUT, 9
	learnset MOVE_FURY_SWIPES, 14
	learnset MOVE_SCREECH, 17
	learnset MOVE_FAINT_ATTACK, 22
	learnset MOVE_TAUNT, 25
	learnset MOVE_POWER_GEM, 32
	learnset MOVE_SLASH, 37
	learnset MOVE_NASTY_PLOT, 44
	learnset MOVE_ASSURANCE, 49
	learnset MOVE_CAPTIVATE, 56
	learnset MOVE_NIGHT_SLASH, 61
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
	learnset MOVE_DRAGON_HAMMER, 1
	learnset MOVE_SEED_BOMB, 1
	learnset MOVE_BARRAGE, 1
	learnset MOVE_HYPNOSIS, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_PSYSHOCK, 17
	learnset MOVE_EGG_BOMB, 27
	learnset MOVE_WOOD_HAMMER, 37
	learnset MOVE_LEAF_STORM, 47
	terminatelearnset

levelup SPECIES_MAROWAK_ALOLAN
	learnset MOVE_GROWL, 1
	learnset MOVE_TAIL_WHIP, 1
	learnset MOVE_BONE_CLUB, 1
	learnset MOVE_FLAME_WHEEL, 1
	learnset MOVE_TAIL_WHIP, 3
	learnset MOVE_BONE_CLUB, 7
	learnset MOVE_FLAME_WHEEL, 11
	learnset MOVE_LEER, 13
	learnset MOVE_HEX, 17
	learnset MOVE_BONEMERANG, 21
	learnset MOVE_WILL_O_WISP, 23
	learnset MOVE_SHADOW_BONE, 27
	learnset MOVE_THRASH, 33
	learnset MOVE_FLING, 37
	learnset MOVE_STOMPING_TANTRUM, 43
	learnset MOVE_ENDEAVOR, 49
	learnset MOVE_FLARE_BLITZ, 53
	learnset MOVE_RETALIATE, 59
	learnset MOVE_BONE_RUSH, 65
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
	learnset MOVE_FAINT_ATTACK, 16
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
	learnset MOVE_FAINT_ATTACK, 16
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
	learnset MOVE_FAINT_ATTACK, 16
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
	learnset MOVE_FAINT_ATTACK, 16
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
	learnset MOVE_FAINT_ATTACK, 16
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
	learnset MOVE_FAINT_ATTACK, 16
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
	learnset MOVE_THRASH, 1
	learnset MOVE_HAMMER_ARM, 1
	learnset MOVE_HURRICANE, 1
	learnset MOVE_UPROAR, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_GUST, 1
	learnset MOVE_SWAGGER, 1
	learnset MOVE_BITE, 7
	learnset MOVE_REVENGE, 13
	learnset MOVE_AIR_CUTTER, 19
	learnset MOVE_EXTRASENSORY, 25
	learnset MOVE_AGILITY, 31
	learnset MOVE_AIR_SLASH, 37
	learnset MOVE_CRUNCH, 43
	learnset MOVE_TAILWIND, 49
	learnset MOVE_RAIN_DANCE, 55
	learnset MOVE_HURRICANE, 61
	learnset MOVE_DARK_PULSE, 67
	learnset MOVE_HAMMER_ARM, 73
	learnset MOVE_THRASH, 79
	terminatelearnset

levelup SPECIES_THUNDURUS_THERIAN
	learnset MOVE_THRASH, 1
	learnset MOVE_HAMMER_ARM, 1
	learnset MOVE_NASTY_PLOT, 1
	learnset MOVE_UPROAR, 1
	learnset MOVE_ASTONISH, 1
	learnset MOVE_THUNDER_SHOCK, 1
	learnset MOVE_SWAGGER, 1
	learnset MOVE_BITE, 7
	learnset MOVE_REVENGE, 13
	learnset MOVE_SHOCK_WAVE, 19
	learnset MOVE_HEAL_BLOCK, 25
	learnset MOVE_AGILITY, 31
	learnset MOVE_DISCHARGE, 37
	learnset MOVE_CRUNCH, 43
	learnset MOVE_CHARGE, 49
	learnset MOVE_NASTY_PLOT, 55
	learnset MOVE_THUNDER, 61
	learnset MOVE_DARK_PULSE, 67
	learnset MOVE_HAMMER_ARM, 73
	learnset MOVE_THRASH, 79
	terminatelearnset

levelup SPECIES_LANDORUS_THERIAN
	learnset MOVE_OUTRAGE, 1
	learnset MOVE_HAMMER_ARM, 1
	learnset MOVE_FISSURE, 1
	learnset MOVE_BLOCK, 1
	learnset MOVE_MUD_SHOT, 1
	learnset MOVE_ROCK_TOMB, 1
	learnset MOVE_IMPRISON, 1
	learnset MOVE_PUNISHMENT, 7
	learnset MOVE_BULLDOZE, 13
	learnset MOVE_ROCK_THROW, 19
	learnset MOVE_EXTRASENSORY, 25
	learnset MOVE_SWORDS_DANCE, 31
	learnset MOVE_EARTH_POWER, 37
	learnset MOVE_ROCK_SLIDE, 43
	learnset MOVE_EARTHQUAKE, 49
	learnset MOVE_SANDSTORM, 55
	learnset MOVE_FISSURE, 61
	learnset MOVE_STONE_EDGE, 67
	learnset MOVE_HAMMER_ARM, 73
	learnset MOVE_OUTRAGE, 79
	terminatelearnset

levelup SPECIES_KYUREM_WHITE
	learnset MOVE_ICY_WIND, 1
	learnset MOVE_DRAGON_RAGE, 1
	learnset MOVE_IMPRISON, 8
	learnset MOVE_ANCIENT_POWER, 15
	learnset MOVE_ICE_BEAM, 22
	learnset MOVE_DRAGON_BREATH, 29
	learnset MOVE_SLASH, 36
	learnset MOVE_FUSION_FLARE, 43
	learnset MOVE_ICE_BURN, 50
	learnset MOVE_DRAGON_PULSE, 57
	learnset MOVE_NOBLE_ROAR, 64
	learnset MOVE_ENDEAVOR, 71
	learnset MOVE_BLIZZARD, 78
	learnset MOVE_OUTRAGE, 85
	learnset MOVE_HYPER_VOICE, 92
	terminatelearnset

levelup SPECIES_KYUREM_BLACK
	learnset MOVE_ICY_WIND, 1
	learnset MOVE_DRAGON_RAGE, 1
	learnset MOVE_IMPRISON, 8
	learnset MOVE_ANCIENT_POWER, 15
	learnset MOVE_ICE_BEAM, 22
	learnset MOVE_DRAGON_BREATH, 29
	learnset MOVE_SLASH, 36
	learnset MOVE_FUSION_BOLT, 43
	learnset MOVE_FREEZE_SHOCK, 50
	learnset MOVE_DRAGON_PULSE, 57
	learnset MOVE_NOBLE_ROAR, 64
	learnset MOVE_ENDEAVOR, 71
	learnset MOVE_BLIZZARD, 78
	learnset MOVE_OUTRAGE, 85
	learnset MOVE_HYPER_VOICE, 92
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
	learnset MOVE_FAINT_ATTACK, 33
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
	learnset MOVE_FAINT_ATTACK, 33
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

levelup SPECIES_HOOPA_UNBOUND
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
	learnset MOVE_KNOCK_OFF, 46
	learnset MOVE_WONDER_ROOM, 50
	learnset MOVE_TRICK_ROOM, 50
	learnset MOVE_DARK_PULSE, 55
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
	learnset MOVE_REVERSAL, 1
	learnset MOVE_TAUNT, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 1
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

levelup SPECIES_LYCANROC_DUSK
	learnset MOVE_ACCELEROCK, 1
	learnset MOVE_COUNTER, 1
	learnset MOVE_TACKLE, 1
	learnset MOVE_LEER, 1
	learnset MOVE_SAND_ATTACK, 1
	learnset MOVE_BITE, 1
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

levelup SPECIES_WISHIWASHI_SCHOOL
	learnset MOVE_WATER_GUN, 1
	learnset MOVE_GROWL, 1
	learnset MOVE_HELPING_HAND, 6
	learnset MOVE_FAINT_ATTACK, 9
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
	learnset MOVE_FAINT_ATTACK, 23
	learnset MOVE_CHARM, 28
	learnset MOVE_SLASH, 32
	learnset MOVE_SHADOW_CLAW, 37
	learnset MOVE_HONE_CLAWS, 41
	learnset MOVE_PLAY_ROUGH, 46
	learnset MOVE_PAIN_SPLIT, 50
	terminatelearnset

levelup SPECIES_NECROZMA_DUSK_MANE
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_MORNING_SUN, 1
	learnset MOVE_CHARGE_BEAM, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SLASH, 7
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_GRAVITY, 31
	learnset MOVE_PSYCHO_CUT, 37
	learnset MOVE_POWER_GEM, 43
	learnset MOVE_AUTOTOMIZE, 47
	learnset MOVE_PHOTON_GEYSER, 50
	learnset MOVE_STEALTH_ROCK, 53
	learnset MOVE_IRON_DEFENSE, 59
	learnset MOVE_WRING_OUT, 67
	learnset MOVE_PRISMATIC_LASER, 73
	terminatelearnset

levelup SPECIES_NECROZMA_DAWN_WINGS
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_MORNING_SUN, 1
	learnset MOVE_CHARGE_BEAM, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SLASH, 7
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_GRAVITY, 31
	learnset MOVE_PSYCHO_CUT, 37
	learnset MOVE_POWER_GEM, 43
	learnset MOVE_AUTOTOMIZE, 47
	learnset MOVE_PHOTON_GEYSER, 50
	learnset MOVE_STEALTH_ROCK, 53
	learnset MOVE_IRON_DEFENSE, 59
	learnset MOVE_WRING_OUT, 67
	learnset MOVE_PRISMATIC_LASER, 73
	terminatelearnset

levelup SPECIES_NECROZMA_ULTRA_DUSK_MANE
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_MORNING_SUN, 1
	learnset MOVE_CHARGE_BEAM, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SLASH, 7
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_GRAVITY, 31
	learnset MOVE_PSYCHO_CUT, 37
	learnset MOVE_POWER_GEM, 43
	learnset MOVE_AUTOTOMIZE, 47
	learnset MOVE_PHOTON_GEYSER, 50
	learnset MOVE_STEALTH_ROCK, 53
	learnset MOVE_IRON_DEFENSE, 59
	learnset MOVE_WRING_OUT, 67
	learnset MOVE_PRISMATIC_LASER, 73
	terminatelearnset

levelup SPECIES_NECROZMA_ULTRA_DAWN_WINGS
	learnset MOVE_MOONLIGHT, 1
	learnset MOVE_MORNING_SUN, 1
	learnset MOVE_CHARGE_BEAM, 1
	learnset MOVE_MIRROR_SHOT, 1
	learnset MOVE_METAL_CLAW, 1
	learnset MOVE_CONFUSION, 1
	learnset MOVE_SLASH, 7
	learnset MOVE_STORED_POWER, 13
	learnset MOVE_ROCK_BLAST, 19
	learnset MOVE_NIGHT_SLASH, 23
	learnset MOVE_GRAVITY, 31
	learnset MOVE_PSYCHO_CUT, 37
	learnset MOVE_POWER_GEM, 43
	learnset MOVE_AUTOTOMIZE, 47
	learnset MOVE_PHOTON_GEYSER, 50
	learnset MOVE_STEALTH_ROCK, 53
	learnset MOVE_IRON_DEFENSE, 59
	learnset MOVE_WRING_OUT, 67
	learnset MOVE_PRISMATIC_LASER, 73
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
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BLOCK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_SWORDS_DANCE, 25
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
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_BURN_UP, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_AGILITY, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_ROAR, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HOWL, 1
    learnset MOVE_BITE, 1
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
    learnset MOVE_PETAL_DANCE, 1
    learnset MOVE_PETAL_BLIZZARD, 1
    learnset MOVE_QUIVER_DANCE, 1
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_AROMATHERAPY, 1
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
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEAF_BLADE, 1
    learnset MOVE_CLOSE_COMBAT, 1
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
	learnset MOVE_STORED_POWER, 1
	learnset MOVE_ME_FIRST, 1
	learnset MOVE_MAGICAL_LEAF, 1
	learnset MOVE_SCRATCH, 1
	learnset MOVE_LEER, 1
	learnset MOVE_COVET, 5
	learnset MOVE_CONFUSION, 9
	learnset MOVE_LIGHT_SCREEN, 13
	learnset MOVE_PSYBEAM, 17
	learnset MOVE_FAKE_OUT, 19
	learnset MOVE_DISARMING_VOICE, 22
	learnset MOVE_PSYSHOCK, 25
	learnset MOVE_CHARGE_BEAM, 28
	learnset MOVE_SHADOW_BALL, 31
	learnset MOVE_EXTRASENSORY, 35
	learnset MOVE_PSYCHIC, 40
	learnset MOVE_ROLE_PLAY, 43
	learnset MOVE_SIGNAL_BEAM, 45
	learnset MOVE_SUCKER_PUNCH, 48
	learnset MOVE_FUTURE_SIGHT, 50
	learnset MOVE_STORED_POWER, 53
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
