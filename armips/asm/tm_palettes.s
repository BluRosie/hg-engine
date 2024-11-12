.nds
.thumb

// Thankyou Drayano!
// Edits the palettes of modified TMs
// No palettes for fairy as yet, using psychic as placeholder in interim
// Between any two TMs we can skip 8 * (TM gap - 1) extra bytes (this is only relevant if in future more TMs are able to be added and bytes need to be skipped; or if you want to delete a TM for some reason. Otherwise no additional TM gap required)

.open "base/arm9.bin", 0x02000000

PALETTE_FIGHTING equ 398
PALETTE_DRAGON equ 399
PALETTE_WATER equ 400
PALETTE_PSYCHIC equ 401
PALETTE_NORMAL equ 402
PALETTE_POISON equ 403
PALETTE_ICE equ 404
PALETTE_GRASS equ 405
PALETTE_FIRE equ 406
PALETTE_DARK equ 407
PALETTE_STEEL equ 408
PALETTE_ELECTRIC equ 409
PALETTE_GROUND equ 410
PALETTE_GHOST equ 411
PALETTE_ROCK equ 412
PALETTE_FLYING equ 413
PALETTE_BUG equ 610
PALETTE_FAIRY equ 401

// Start of TM Palette Table
.org 0x02100BD6

// TM001 FOCUS_PUNCH
.skip 2
.halfword PALETTE_FIGHTING
.skip 4

// TM002 DRAGON_CLAW
.skip 2
.halfword PALETTE_DRAGON
.skip 4

// TM003 WATER_PULSE
.skip 2
.halfword PALETTE_WATER
.skip 4

// TM004 CALM_MIND
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM005 ROAR
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM006 TOXIC
.skip 2
.halfword PALETTE_POISON
.skip 4

// TM007 HAIL
.skip 2
.halfword PALETTE_ICE
.skip 4

// TM008 BULK_UP
.skip 2
.halfword PALETTE_FIGHTING
.skip 4

// TM009 BULLET_SEED
.skip 2
.halfword PALETTE_GRASS
.skip 4

// TM010 HIDDEN_POWER
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM011 SUNNY_DAY
.skip 2
.halfword PALETTE_FIRE
.skip 4

// TM012 TAUNT
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM013 ICE_BEAM
.skip 2
.halfword PALETTE_ICE
.skip 4

// TM014 BLIZZARD
.skip 2
.halfword PALETTE_ICE
.skip 4

// TM015 HYPER_BEAM
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM016 LIGHT_SCREEN
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM017 PROTECT
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM018 RAIN_DANCE
.skip 2
.halfword PALETTE_WATER
.skip 4

// TM019 GIGA_DRAIN
.skip 2
.halfword PALETTE_GRASS
.skip 4

// TM020 SAFEGUARD
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM021 FRUSTRATION
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM022 SOLARBEAM
.skip 2
.halfword PALETTE_GRASS
.skip 4

// TM023 IRON_TAIL
.skip 2
.halfword PALETTE_STEEL
.skip 4

// TM024 THUNDERBOLT
.skip 2
.halfword PALETTE_ELECTRIC
.skip 4

// TM025 THUNDER
.skip 2
.halfword PALETTE_ELECTRIC
.skip 4

// TM026 EARTHQUAKE
.skip 2
.halfword PALETTE_GROUND
.skip 4

// TM027 RETURN
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM028 DIG
.skip 2
.halfword PALETTE_GROUND
.skip 4

// TM029 PSYCHIC
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM030 SHADOW_BALL
.skip 2
.halfword PALETTE_GHOST
.skip 4

// TM031 BRICK_BREAK
.skip 2
.halfword PALETTE_FIGHTING
.skip 4

// TM032 DOUBLE_TEAM
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM033 REFLECT
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM034 SHOCK_WAVE
.skip 2
.halfword PALETTE_ELECTRIC
.skip 4

// TM035 FLAMETHROWER
.skip 2
.halfword PALETTE_FIRE
.skip 4

// TM036 SLUDGE_BOMB
.skip 2
.halfword PALETTE_POISON
.skip 4

// TM037 SANDSTORM
.skip 2
.halfword PALETTE_ROCK
.skip 4

// TM038 FIRE_BLAST
.skip 2
.halfword PALETTE_FIRE
.skip 4

// TM039 ROCK_TOMB
.skip 2
.halfword PALETTE_ROCK
.skip 4

// TM040 AERIAL_ACE
.skip 2
.halfword PALETTE_FLYING
.skip 4

// TM041 TORMENT
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM042 FACADE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM043 SECRET_POWER
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM044 REST
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM045 ATTRACT
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM046 THIEF
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM047 STEEL_WING
.skip 2
.halfword PALETTE_STEEL
.skip 4

// TM048 SKILL_SWAP
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM049 SNATCH
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM050 OVERHEAT
.skip 2
.halfword PALETTE_FIRE
.skip 4

// TM051 ROOST
.skip 2
.halfword PALETTE_FLYING
.skip 4

// TM052 FOCUS_BLAST
.skip 2
.halfword PALETTE_FIGHTING
.skip 4

// TM053 ENERGY_BALL
.skip 2
.halfword PALETTE_GRASS
.skip 4

// TM054 FALSE_SWIPE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM055 BRINE
.skip 2
.halfword PALETTE_WATER
.skip 4

// TM056 FLING
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM057 CHARGE_BEAM
.skip 2
.halfword PALETTE_ELECTRIC
.skip 4

// TM058 ENDURE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM059 DRAGON_PULSE
.skip 2
.halfword PALETTE_DRAGON
.skip 4

// TM060 DRAIN_PUNCH
.skip 2
.halfword PALETTE_FIGHTING
.skip 4

// TM061 WILL_O_WISP
.skip 2
.halfword PALETTE_FIRE
.skip 4

// TM062 SILVER_WIND
.skip 2
.halfword PALETTE_BUG
.skip 4

// TM063 EMBARGO
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM064 EXPLOSION
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM065 SHADOW_CLAW
.skip 2
.halfword PALETTE_GHOST
.skip 4

// TM066 PAYBACK
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM067 RECYCLE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM068 GIGA_IMPACT
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM069 ROCK_POLISH
.skip 2
.halfword PALETTE_ROCK
.skip 4

// TM070 FLASH
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM071 STONE_EDGE
.skip 2
.halfword PALETTE_ROCK
.skip 4

// TM072 AVALANCHE
.skip 2
.halfword PALETTE_ICE
.skip 4

// TM073 THUNDER_WAVE
.skip 2
.halfword PALETTE_ELECTRIC
.skip 4

// TM074 GYRO_BALL
.skip 2
.halfword PALETTE_STEEL
.skip 4

// TM075 SWORDS_DANCE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM076 STEALTH_ROCK
.skip 2
.halfword PALETTE_ROCK
.skip 4

// TM077 PSYCH_UP
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM078 CAPTIVATE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM079 DARK_PULSE
.skip 2
.halfword PALETTE_DARK
.skip 4

// TM080 ROCK_SLIDE
.skip 2
.halfword PALETTE_ROCK
.skip 4

// TM081 X_SCISSOR
.skip 2
.halfword PALETTE_BUG
.skip 4

// TM082 SLEEP_TALK
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM083 NATURAL_GIST
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM084 POISON_JAB
.skip 2
.halfword PALETTE_POISON
.skip 4

// TM085 DREAM_EATER
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// TM086 GRASS_KNOT
.skip 2
.halfword PALETTE_GRASS
.skip 4

// TM087 SWAGGER
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM088 PLUCK
.skip 2
.halfword PALETTE_FLYING
.skip 4

// TM089 U_TURN
.skip 2
.halfword PALETTE_BUG
.skip 4

// TM090 SUBSTITUTE
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// TM091 FLASH_CANNON
.skip 2
.halfword PALETTE_STEEL
.skip 4

// TM092 TRICK_ROOM
.skip 2
.halfword PALETTE_PSYCHIC
.skip 4

// HM001 CUT
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// HM002 FLY
.skip 2
.halfword PALETTE_FLYING
.skip 4

// HM003 SURF
.skip 2
.halfword PALETTE_WATER
.skip 4

// HM004 STRENGTH
.skip 2
.halfword PALETTE_NORMAL
.skip 4

// HM005 WHIRLPOOL
.skip 2
.halfword PALETTE_WATER
.skip 4

// HM006 ROCK_SMASH
.skip 2
.halfword PALETTE_FIGHTING
.skip 4

// HM007 WATERFALL
.skip 2
.halfword PALETTE_WATER
.skip 4

// HM008 ROCK_CLIMB
.skip 2
.halfword PALETTE_NORMAL
.skip 4

.close
