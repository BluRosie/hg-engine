#include "../include/types.h"
#include "../include/constants/species.h"


struct MonBattleMusic
{
    u16 species:10;
    u16 combo:6;
};


struct MonBattleMusic PokemonBattleMusic[] =
{
    {.species = SPECIES_RAIKOU,   .combo = 22}, // Entry 1
    {.species = SPECIES_ENTEI,    .combo = 23}, // Entry 2
    {.species = SPECIES_SUICUNE,  .combo = 24}, // Entry 3
    {.species = SPECIES_LUGIA,    .combo = 26}, // Entry 4
    {.species = SPECIES_HO_OH,    .combo = 25}, // Entry 5
    {.species = SPECIES_GROUDON,  .combo = 27}, // Entry 6
    {.species = SPECIES_KYOGRE,   .combo = 27}, // Entry 7
    {.species = SPECIES_RAYQUAZA, .combo = 27}, // Entry 8
    {.species = SPECIES_MEWTWO,   .combo = 28}, // Entry 9
    {.species = SPECIES_LATIOS,   .combo = 28}, // Entry 10
    {.species = SPECIES_LATIAS,   .combo = 28}, // Entry 11 (***END VANILLA ENTRIES***)
    {.species = 0x0, .combo = 0x0}, // Entry 12 Articuno
    {.species = 0x0, .combo = 0x0}, // Entry 13 Zapdos
    {.species = 0x0, .combo = 0x0}, // Entry 14 Moltres
    {.species = 0x0, .combo = 0x0}, // Entry 15 Mew
    {.species = 0x0, .combo = 0x0}, // Entry 16 Celebi
    {.species = 0x0, .combo = 0x0}, // Entry 17 Registeel
    {.species = 0x0, .combo = 0x0}, // Entry 18 Regice
    {.species = 0x0, .combo = 0x0}, // Entry 19 Regirock
    {.species = 0x0, .combo = 0x0}, // Entry 20 Deoxys
    {.species = 0x0, .combo = 0x0}, // Entry 21 Jirachi
    {.species = 0x0, .combo = 0x0}, // Entry 22 Uxie
    {.species = 0x0, .combo = 0x0}, // Entry 23 Mesprit
    {.species = 0x0, .combo = 0x0}, // Entry 24 Azelf
    {.species = 0x0, .combo = 0x0}, // Entry 25 Dialga
    {.species = 0x0, .combo = 0x0}, // Entry 26 Palkia
    {.species = 0x0, .combo = 0x0}, // Entry 27 Heatran
    {.species = 0x0, .combo = 0x0}, // Entry 28 Regigigas
    {.species = 0x0, .combo = 0x0}, // Entry 29 Cresselia
    {.species = 0x0, .combo = 0x0}, // Entry 30 Giratina
    {.species = 0x0, .combo = 0x0}, // Entry 31 Darkai
    {.species = 0x0, .combo = 0x0}, // Entry 32 Shaymin
    {.species = 0x0, .combo = 0x0}, // Entry 33 Phione
    {.species = 0x0, .combo = 0x0}, // Entry 34 Manaphy
    {.species = 0x0, .combo = 0x0}, // Entry 35 Arceus
    {.species = 0x0, .combo = 0x0}, // Entry 36 Rotom
    {.species = 0x0, .combo = 0x0}, // Entry 37 Spiritomb
    {.species = 0x0, .combo = 0x0}, // Entry 38
    {.species = 0x0, .combo = 0x0}, // Entry 39
    {.species = 0x0, .combo = 0x0}, // Entry 40
};