.nds
.thumb

// Credits to Drayano60

// Items obtainable in some Poké Marts

.open "base/arm9.bin", 0x02000000

/* Values for badge restrictions as it isnt 1:1 */
ZERO_BADGES equ 1
ONE_BADGE equ 2
THREE_BADGES equ 3
FIVE_BADGES equ 4
SEVEN_BADGES equ 5
EIGHT_BADGES equ 6

END_OF_LIST equ 0xFFFF

/* General Poké Mart Table */
.org 0x020FBF22

.halfword ITEM_POKE_BALL
.halfword ZERO_BADGES

.halfword ITEM_GREAT_BALL
.halfword ONE_BADGE

.halfword ITEM_ULTRA_BALL
.halfword THREE_BADGES

.halfword ITEM_POTION
.halfword ZERO_BADGES

.halfword ITEM_SUPER_POTION
.halfword ONE_BADGE

.halfword ITEM_HYPER_POTION
.halfword THREE_BADGES

.halfword ITEM_MAX_POTION
.halfword SEVEN_BADGES

.halfword ITEM_FULL_RESTORE
.halfword EIGHT_BADGES

.halfword ITEM_REVIVE
.halfword THREE_BADGES

.halfword ITEM_ANTIDOTE
.halfword ZERO_BADGES

.halfword ITEM_PARALYZE_HEAL
.halfword ZERO_BADGES

.halfword ITEM_AWAKENING
.halfword ONE_BADGE

.halfword ITEM_BURN_HEAL
.halfword ONE_BADGE

.halfword ITEM_ICE_HEAL
.halfword ONE_BADGE

.halfword ITEM_FULL_HEAL
.halfword FIVE_BADGES

.halfword ITEM_ESCAPE_ROPE
.halfword ONE_BADGE

.halfword ITEM_REPEL
.halfword ONE_BADGE

.halfword ITEM_SUPER_REPEL
.halfword THREE_BADGES

.halfword ITEM_MAX_REPEL
.halfword FIVE_BADGES

.org 0x020FBA54
.halfword ITEM_AIR_MAIL
.halfword ITEM_HEAL_BALL
.halfword END_OF_LIST

.org 0x020FBA78
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword END_OF_LIST

.org 0x020FBAB0
.halfword ITEM_BLOOM_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword END_OF_LIST

.org 0x020FBBEA
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARALYZE_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword END_OF_LIST

.org 0x020FBC1A
.halfword ITEM_POKE_BALL
.halfword ITEM_GREAT_BALL
.halfword ITEM_ULTRA_BALL
.halfword ITEM_ESCAPE_ROPE
.halfword ITEM_POKE_DOLL
.halfword ITEM_REPEL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_MAX_REPEL
.halfword ITEM_GRASS_MAIL
.halfword ITEM_FLAME_MAIL
.halfword ITEM_BUBBLE_MAIL
.halfword ITEM_SPACE_MAIL
.halfword END_OF_LIST

.org 0x020FBBB4
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP_DEF
.halfword END_OF_LIST

.org 0x020FBAFA
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword ITEM_CARBOS
.halfword ITEM_HP_UP
.halfword END_OF_LIST

.org 0x020FBC34
.halfword ITEM_TM70
.halfword ITEM_TM17
.halfword ITEM_TM54
.halfword ITEM_TM83
.halfword ITEM_TM16
.halfword ITEM_TM33
.halfword ITEM_TM22
.halfword ITEM_TM52
.halfword ITEM_TM38
.halfword ITEM_TM25
.halfword ITEM_TM14
.halfword ITEM_TM15
.halfword END_OF_LIST

.org 0x020FBACA
.halfword ITEM_HEAL_POWDER
.halfword ITEM_ENERGY_POWDER
.halfword ITEM_ENERGY_ROOT
.halfword ITEM_REVIVAL_HERB
.halfword END_OF_LIST

.org 0x020FBA60
.halfword ITEM_AIR_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword END_OF_LIST

.org 0x020FBA88
.halfword ITEM_HEART_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword END_OF_LIST

.org 0x020FBAD4
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_FULL_HEAL
.halfword ITEM_REVIVE
.halfword END_OF_LIST

.org 0x020FBA80
.halfword ITEM_AIR_MAIL
.halfword ITEM_NET_BALL
.halfword ITEM_DUSK_BALL
.halfword END_OF_LIST

.org 0x020FBB84
.halfword ITEM_ULTRA_BALL
.halfword ITEM_MAX_REPEL
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_FULL_RESTORE
.halfword ITEM_REVIVE
.halfword ITEM_FULL_HEAL
.halfword END_OF_LIST

.org 0x020FBAC0
.halfword ITEM_AIR_MAIL
.halfword ITEM_NEST_BALL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword END_OF_LIST

.org 0x020FBA70
.halfword ITEM_AIR_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword END_OF_LIST

.org 0x020FBA98
.halfword ITEM_SNOW_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword END_OF_LIST

.org 0x020FBA5A
.halfword ITEM_AIR_MAIL
.halfword ITEM_QUICK_BALL
.halfword END_OF_LIST

.org 0x020FBC02
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARALYZE_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword END_OF_LIST

.org 0x020FBC4E
.halfword ITEM_POKE_BALL
.halfword ITEM_GREAT_BALL
.halfword ITEM_ULTRA_BALL
.halfword ITEM_ESCAPE_ROPE
.halfword ITEM_POKE_DOLL
.halfword ITEM_REPEL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_MAX_REPEL
.halfword ITEM_GRASS_MAIL
.halfword ITEM_FLAME_MAIL
.halfword ITEM_BUBBLE_MAIL
.halfword ITEM_SPACE_MAIL
.halfword END_OF_LIST

.org 0x020FBC68
.halfword ITEM_TM21
.halfword ITEM_TM27
.halfword ITEM_TM87
.halfword ITEM_TM78
.halfword ITEM_TM12
.halfword ITEM_TM41
.halfword ITEM_TM20
.halfword ITEM_TM28
.halfword ITEM_TM76
.halfword ITEM_TM55
.halfword ITEM_TM72
.halfword ITEM_TM79
.halfword END_OF_LIST

.org 0x020FBA68
.halfword ITEM_AIR_MAIL
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_BLOOM_MAIL
.halfword END_OF_LIST

.org 0x020FBBC6
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP_DEF
.halfword END_OF_LIST

.org 0x020FBB08
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword ITEM_CARBOS
.halfword ITEM_HP_UP
.halfword END_OF_LIST

.org 0x020FBA90
.halfword ITEM_STEEL_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword END_OF_LIST

.org 0x020FBAA0
.halfword ITEM_STEEL_MAIL
.halfword ITEM_NEST_BALL
.halfword ITEM_QUICK_BALL
.halfword END_OF_LIST

.org 0x020FBAA8
.halfword ITEM_STEEL_MAIL
.halfword ITEM_NET_BALL
.halfword ITEM_HEAL_BALL
.halfword END_OF_LIST

.org 0x020FBB16
.halfword ITEM_POKE_DOLL
.halfword ITEM_FRESH_WATER
.halfword ITEM_SODA_POP
.halfword ITEM_LEMONADE
.halfword ITEM_REPEL
.halfword ITEM_HEART_MAIL
.halfword END_OF_LIST

.org 0x020FBAB8
.halfword ITEM_TINY_MUSHROOM
.halfword ITEM_POKE_BALL
.halfword ITEM_POTION
.halfword END_OF_LIST

.org 0x020FBBD8
.halfword ITEM_GREAT_BALL
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARALYZE_HEAL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_REVIVE
.halfword ITEM_AIR_MAIL
.halfword END_OF_LIST

.org 0x0210FA04
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82
.skip 2
.halfword 0xBC82

/* Pokeathlon Dome */

.org 0x020FBC82
.halfword ITEM_FIRE_STONE
.halfword 1
.halfword ITEM_WATER_STONE
.halfword 1
.halfword ITEM_THUNDER_STONE
.halfword 1
.halfword ITEM_LEAF_STONE
.halfword 1
.halfword ITEM_MOON_STONE
.halfword 1
.halfword ITEM_SUN_STONE
.halfword 1
.halfword ITEM_SHINY_STONE
.halfword 1
.halfword ITEM_DUSK_STONE
.halfword 1
.halfword ITEM_DAWN_STONE
.halfword 1
.halfword ITEM_METAL_COAT
.halfword 1
.halfword ITEM_KINGS_ROCK
.halfword 1
.halfword ITEM_DRAGON_SCALE
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0
.halfword END_OF_LIST
.halfword 0

.close
