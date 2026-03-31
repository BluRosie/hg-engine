#include "../include/types.h"
#include "../include/pokemon.h"
#include "../include/battle.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

typedef struct EvolutionTable {
    struct Evolution entries[MAX_EVOS_PER_POKE];
    u16 terminator;
} EvolutionTable;

u32 __size = sizeof(EvolutionTable);

const EvolutionTable __data[MAX_SPECIES_INCLUDING_FORMS + 1] =
{
    [SPECIES_NONE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BULBASAUR] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_IVYSAUR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IVYSAUR] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_VENUSAUR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VENUSAUR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHARMANDER] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_CHARMELEON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHARMELEON] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_CHARIZARD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHARIZARD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SQUIRTLE] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_WARTORTLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WARTORTLE] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_BLASTOISE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BLASTOISE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CATERPIE] = {
        .entries = {
            { EVO_LEVEL, 7, SPECIES_METAPOD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_METAPOD] = {
        .entries = {
            { EVO_LEVEL, 10, SPECIES_BUTTERFREE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BUTTERFREE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WEEDLE] = {
        .entries = {
            { EVO_LEVEL, 7, SPECIES_KAKUNA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KAKUNA] = {
        .entries = {
            { EVO_LEVEL, 10, SPECIES_BEEDRILL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BEEDRILL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIDGEY] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_PIDGEOTTO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIDGEOTTO] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_PIDGEOT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIDGEOT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RATTATA] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_RATICATE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RATICATE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPEAROW] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_FEAROW },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FEAROW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EKANS] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_ARBOK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARBOK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU] = {
        .entries = {
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_RAICHU },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAICHU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDSHREW] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_SANDSLASH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDSLASH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIDORAN_F] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_NIDORINA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIDORINA] = {
        .entries = {
            { EVO_STONE, ITEM_MOON_STONE, SPECIES_NIDOQUEEN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIDOQUEEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIDORAN_M] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_NIDORINO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIDORINO] = {
        .entries = {
            { EVO_STONE, ITEM_MOON_STONE, SPECIES_NIDOKING },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIDOKING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLEFAIRY] = {
        .entries = {
            { EVO_STONE, ITEM_MOON_STONE, SPECIES_CLEFABLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLEFABLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VULPIX] = {
        .entries = {
            { EVO_STONE, ITEM_FIRE_STONE, SPECIES_NINETALES },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NINETALES] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JIGGLYPUFF] = {
        .entries = {
            { EVO_STONE, ITEM_MOON_STONE, SPECIES_WIGGLYTUFF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WIGGLYTUFF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZUBAT] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_GOLBAT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLBAT] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_CROBAT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ODDISH] = {
        .entries = {
            { EVO_LEVEL, 21, SPECIES_GLOOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLOOM] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, SPECIES_VILEPLUME },
            { EVO_STONE, ITEM_SUN_STONE, SPECIES_BELLOSSOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VILEPLUME] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PARAS] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_PARASECT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PARASECT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VENONAT] = {
        .entries = {
            { EVO_LEVEL, 31, SPECIES_VENOMOTH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VENOMOTH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIGLETT] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_DUGTRIO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUGTRIO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEOWTH] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_PERSIAN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PERSIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PSYDUCK] = {
        .entries = {
            { EVO_LEVEL, 33, SPECIES_GOLDUCK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLDUCK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MANKEY] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_PRIMEAPE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PRIMEAPE] = {
        .entries = {
            { EVO_NONE, 20, SPECIES_ANNIHILAPE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROWLITHE] = {
        .entries = {
            { EVO_STONE, ITEM_FIRE_STONE, SPECIES_ARCANINE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCANINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLIWAG] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_POLIWHIRL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLIWHIRL] = {
        .entries = {
            { EVO_STONE, ITEM_WATER_STONE, SPECIES_POLIWRATH },
            { EVO_TRADE_ITEM, ITEM_KINGS_ROCK, SPECIES_POLITOED },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLIWRATH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ABRA] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_KADABRA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KADABRA] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_ALAKAZAM },
            { EVO_STONE, ITEM_LINKING_CORD, SPECIES_ALAKAZAM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALAKAZAM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MACHOP] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_MACHOKE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MACHOKE] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_MACHAMP },
            { EVO_STONE, ITEM_LINKING_CORD, SPECIES_MACHAMP },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MACHAMP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BELLSPROUT] = {
        .entries = {
            { EVO_LEVEL, 21, SPECIES_WEEPINBELL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WEEPINBELL] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, SPECIES_VICTREEBEL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VICTREEBEL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TENTACOOL] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_TENTACRUEL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TENTACRUEL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GEODUDE] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_GRAVELER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRAVELER] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GOLEM },
            { EVO_STONE, ITEM_LINKING_CORD, SPECIES_GOLEM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLEM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PONYTA] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_RAPIDASH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAPIDASH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLOWPOKE] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_SLOWBRO },
            { EVO_TRADE_ITEM, ITEM_KINGS_ROCK, SPECIES_SLOWKING },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLOWBRO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGNEMITE] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_MAGNETON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGNETON] = {
        .entries = {
            { EVO_CORONET, 0, SPECIES_MAGNEZONE },
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_MAGNEZONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FARFETCHD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DODUO] = {
        .entries = {
            { EVO_LEVEL, 31, SPECIES_DODRIO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DODRIO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEEL] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_DEWGONG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEWGONG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRIMER] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_MUK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHELLDER] = {
        .entries = {
            { EVO_STONE, ITEM_WATER_STONE, SPECIES_CLOYSTER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLOYSTER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GASTLY] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_HAUNTER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HAUNTER] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GENGAR },
            { EVO_STONE, ITEM_LINKING_CORD, SPECIES_GENGAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GENGAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ONIX] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_METAL_COAT, SPECIES_STEELIX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DROWZEE] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_HYPNO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HYPNO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KRABBY] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_KINGLER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KINGLER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VOLTORB] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_ELECTRODE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELECTRODE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EXEGGCUTE] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, SPECIES_EXEGGUTOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EXEGGUTOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CUBONE] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_MAROWAK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAROWAK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HITMONLEE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HITMONCHAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LICKITUNG] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_ROLLOUT, SPECIES_LICKILICKY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KOFFING] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_WEEZING },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WEEZING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RHYHORN] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_RHYDON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RHYDON] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_PROTECTOR, SPECIES_RHYPERIOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHANSEY] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_BLISSEY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TANGELA] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_ANCIENT_POWER, SPECIES_TANGROWTH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KANGASKHAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HORSEA] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_SEADRA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEADRA] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_DRAGON_SCALE, SPECIES_KINGDRA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLDEEN] = {
        .entries = {
            { EVO_LEVEL, 33, SPECIES_SEAKING },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEAKING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STARYU] = {
        .entries = {
            { EVO_STONE, ITEM_WATER_STONE, SPECIES_STARMIE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STARMIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MR_MIME] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCYTHER] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_METAL_COAT, SPECIES_SCIZOR },
            { EVO_STONE, ITEM_BLACK_AUGURITE, SPECIES_KLEAVOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JYNX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELECTABUZZ] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_ELECTIRIZER, SPECIES_ELECTIVIRE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGMAR] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_MAGMARIZER, SPECIES_MAGMORTAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PINSIR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAUROS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGIKARP] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_GYARADOS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GYARADOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LAPRAS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DITTO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EEVEE] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, SPECIES_LEAFEON },
            { EVO_STONE, ITEM_ICE_STONE, SPECIES_GLACEON },
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_JOLTEON },
            { EVO_STONE, ITEM_WATER_STONE, SPECIES_VAPOREON },
            { EVO_STONE, ITEM_FIRE_STONE, SPECIES_FLAREON },
            { EVO_FRIENDSHIP_DAY, 0, SPECIES_ESPEON },
            { EVO_FRIENDSHIP_NIGHT, 0, SPECIES_UMBREON },
            { EVO_HAS_MOVE_TYPE, TYPE_FAIRY, SPECIES_SYLVEON },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VAPOREON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JOLTEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLAREON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PORYGON] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_UP_GRADE, SPECIES_PORYGON2 },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OMANYTE] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_OMASTAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OMASTAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KABUTO] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_KABUTOPS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KABUTOPS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AERODACTYL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNORLAX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARTICUNO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZAPDOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MOLTRES] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRATINI] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_DRAGONAIR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAGONAIR] = {
        .entries = {
            { EVO_LEVEL, 55, SPECIES_DRAGONITE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAGONITE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEWTWO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHIKORITA] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_BAYLEEF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BAYLEEF] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_MEGANIUM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGANIUM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CYNDAQUIL] = {
        .entries = {
            { EVO_LEVEL, 14, SPECIES_QUILAVA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QUILAVA] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_TYPHLOSION },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYPHLOSION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOTODILE] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_CROCONAW },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CROCONAW] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_FERALIGATR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FERALIGATR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SENTRET] = {
        .entries = {
            { EVO_LEVEL, 15, SPECIES_FURRET },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURRET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOOTHOOT] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_NOCTOWL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NOCTOWL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LEDYBA] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_LEDIAN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LEDIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPINARAK] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_ARIADOS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARIADOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CROBAT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHINCHOU] = {
        .entries = {
            { EVO_LEVEL, 27, SPECIES_LANTURN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LANTURN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PICHU] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_PIKACHU },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLEFFA] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_CLEFAIRY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IGGLYBUFF] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_JIGGLYPUFF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOGEPI] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_TOGETIC },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOGETIC] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_TOGEKISS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NATU] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_XATU },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_XATU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAREEP] = {
        .entries = {
            { EVO_LEVEL, 15, SPECIES_FLAAFFY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLAAFFY] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_AMPHAROS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AMPHAROS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BELLOSSOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MARILL] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_AZUMARILL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AZUMARILL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SUDOWOODO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLITOED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOPPIP] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_SKIPLOOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKIPLOOM] = {
        .entries = {
            { EVO_LEVEL, 27, SPECIES_JUMPLUFF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JUMPLUFF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AIPOM] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_DOUBLE_HIT, SPECIES_AMBIPOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SUNKERN] = {
        .entries = {
            { EVO_STONE, ITEM_SUN_STONE, SPECIES_SUNFLORA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SUNFLORA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YANMA] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_ANCIENT_POWER, SPECIES_YANMEGA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WOOPER] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_QUAGSIRE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QUAGSIRE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ESPEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_UMBREON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MURKROW] = {
        .entries = {
            { EVO_STONE, ITEM_DUSK_STONE, SPECIES_HONCHKROW },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLOWKING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MISDREAVUS] = {
        .entries = {
            { EVO_STONE, ITEM_DUSK_STONE, SPECIES_MISMAGIUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_UNOWN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WOBBUFFET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIRAFARIG] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_TWIN_BEAM, SPECIES_FARIGIRAF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PINECO] = {
        .entries = {
            { EVO_LEVEL, 31, SPECIES_FORRETRESS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FORRETRESS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUNSPARCE] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_HYPER_DRILL, SPECIES_DUDUNSPARCE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLIGAR] = {
        .entries = {
            { EVO_ITEM_NIGHT, ITEM_RAZOR_FANG, SPECIES_GLISCOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STEELIX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNUBBULL] = {
        .entries = {
            { EVO_LEVEL, 23, SPECIES_GRANBULL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRANBULL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QWILFISH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCIZOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHUCKLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HERACROSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNEASEL] = {
        .entries = {
            { EVO_ITEM_NIGHT, ITEM_RAZOR_CLAW, SPECIES_WEAVILE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TEDDIURSA] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_URSARING },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_URSARING] = {
        .entries = {
            { EVO_ITEM_NIGHT, ITEM_PEAT_BLOCK, SPECIES_URSALUNA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLUGMA] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_MAGCARGO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGCARGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWINUB] = {
        .entries = {
            { EVO_LEVEL, 33, SPECIES_PILOSWINE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PILOSWINE] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_ANCIENT_POWER, SPECIES_MAMOSWINE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CORSOLA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REMORAID] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_OCTILLERY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OCTILLERY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DELIBIRD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MANTINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKARMORY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOUNDOUR] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_HOUNDOOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOUNDOOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KINGDRA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PHANPY] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_DONPHAN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DONPHAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PORYGON2] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_DUBIOUS_DISC, SPECIES_PORYGON_Z },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STANTLER] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_PSYSHIELD_BASH, SPECIES_WYRDEER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SMEARGLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYROGUE] = {
        .entries = {
            { EVO_LEVEL_ATK_LT_DEF, 20, SPECIES_HITMONCHAN },
            { EVO_LEVEL_ATK_GT_DEF, 20, SPECIES_HITMONLEE },
            { EVO_LEVEL_ATK_EQ_DEF, 20, SPECIES_HITMONTOP },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HITMONTOP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SMOOCHUM] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_JYNX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELEKID] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_ELECTABUZZ },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGBY] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_MAGMAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MILTANK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BLISSEY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAIKOU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ENTEI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SUICUNE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LARVITAR] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_PUPITAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PUPITAR] = {
        .entries = {
            { EVO_LEVEL, 55, SPECIES_TYRANITAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYRANITAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUGIA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HO_OH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CELEBI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TREECKO] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_GROVYLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROVYLE] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SCEPTILE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCEPTILE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TORCHIC] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_COMBUSKEN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COMBUSKEN] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_BLAZIKEN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BLAZIKEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUDKIP] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_MARSHTOMP },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MARSHTOMP] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SWAMPERT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWAMPERT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POOCHYENA] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_MIGHTYENA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIGHTYENA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZIGZAGOON] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_LINOONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LINOONE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WURMPLE] = {
        .entries = {
            { EVO_LEVEL_PID_LO, 7, SPECIES_SILCOON },
            { EVO_LEVEL_PID_HI, 7, SPECIES_CASCOON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SILCOON] = {
        .entries = {
            { EVO_LEVEL, 10, SPECIES_BEAUTIFLY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BEAUTIFLY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CASCOON] = {
        .entries = {
            { EVO_LEVEL, 10, SPECIES_DUSTOX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUSTOX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LOTAD] = {
        .entries = {
            { EVO_LEVEL, 14, SPECIES_LOMBRE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LOMBRE] = {
        .entries = {
            { EVO_STONE, ITEM_WATER_STONE, SPECIES_LUDICOLO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUDICOLO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEEDOT] = {
        .entries = {
            { EVO_LEVEL, 14, SPECIES_NUZLEAF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NUZLEAF] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, SPECIES_SHIFTRY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHIFTRY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAILLOW] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_SWELLOW },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWELLOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WINGULL] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_PELIPPER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PELIPPER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RALTS] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_KIRLIA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KIRLIA] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_GARDEVOIR },
            { EVO_STONE_MALE, 109, SPECIES_GALLADE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GARDEVOIR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SURSKIT] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_MASQUERAIN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MASQUERAIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHROOMISH] = {
        .entries = {
            { EVO_LEVEL, 23, SPECIES_BRELOOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRELOOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLAKOTH] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_VIGOROTH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIGOROTH] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SLAKING },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLAKING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NINCADA] = {
        .entries = {
            { EVO_LEVEL_NINJASK, 20, SPECIES_NINJASK },
            { EVO_LEVEL_SHEDINJA, 20, SPECIES_SHEDINJA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NINJASK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHEDINJA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WHISMUR] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_LOUDRED },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LOUDRED] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_EXPLOUD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EXPLOUD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAKUHITA] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_HARIYAMA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HARIYAMA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AZURILL] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_MARILL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NOSEPASS] = {
        .entries = {
            { EVO_CORONET, 0, SPECIES_PROBOPASS },
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_PROBOPASS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKITTY] = {
        .entries = {
            { EVO_STONE, ITEM_MOON_STONE, SPECIES_DELCATTY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DELCATTY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SABLEYE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAWILE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARON] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_LAIRON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LAIRON] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_AGGRON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AGGRON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEDITITE] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_MEDICHAM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEDICHAM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELECTRIKE] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_MANECTRIC },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MANECTRIC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PLUSLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINUN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VOLBEAT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ILLUMISE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROSELIA] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_ROSERADE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GULPIN] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_SWALOT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWALOT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CARVANHA] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_SHARPEDO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHARPEDO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WAILMER] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_WAILORD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WAILORD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NUMEL] = {
        .entries = {
            { EVO_LEVEL, 33, SPECIES_CAMERUPT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CAMERUPT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TORKOAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPOINK] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_GRUMPIG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRUMPIG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPINDA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TRAPINCH] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_VIBRAVA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIBRAVA] = {
        .entries = {
            { EVO_LEVEL, 45, SPECIES_FLYGON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLYGON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CACNEA] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_CACTURNE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CACTURNE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWABLU] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_ALTARIA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALTARIA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZANGOOSE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEVIPER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUNATONE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SOLROCK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BARBOACH] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_WHISCASH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WHISCASH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CORPHISH] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_CRAWDAUNT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRAWDAUNT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BALTOY] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_CLAYDOL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLAYDOL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LILEEP] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_CRADILY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRADILY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ANORITH] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_ARMALDO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARMALDO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FEEBAS] = {
        .entries = {
            { EVO_BEAUTY, 170, SPECIES_MILOTIC },
            { EVO_TRADE_ITEM, ITEM_PRISM_SCALE, SPECIES_MILOTIC },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MILOTIC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CASTFORM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KECLEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHUPPET] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_BANETTE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BANETTE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUSKULL] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_DUSCLOPS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUSCLOPS] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_REAPER_CLOTH, SPECIES_DUSKNOIR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TROPIUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHIMECHO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ABSOL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WYNAUT] = {
        .entries = {
            { EVO_LEVEL, 15, SPECIES_WOBBUFFET },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNORUNT] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_GLALIE },
            { EVO_STONE_FEMALE, 109, SPECIES_FROSLASS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLALIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPHEAL] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_SEALEO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEALEO] = {
        .entries = {
            { EVO_LEVEL, 44, SPECIES_WALREIN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WALREIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLAMPERL] = {
        .entries = {
            { EVO_TRADE_ITEM, ITEM_DEEP_SEA_TOOTH, SPECIES_HUNTAIL },
            { EVO_TRADE_ITEM, ITEM_DEEP_SEA_SCALE, SPECIES_GOREBYSS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HUNTAIL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOREBYSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RELICANTH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUVDISC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BAGON] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_SHELGON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHELGON] = {
        .entries = {
            { EVO_LEVEL, 50, SPECIES_SALAMENCE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SALAMENCE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BELDUM] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_METANG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_METANG] = {
        .entries = {
            { EVO_LEVEL, 45, SPECIES_METAGROSS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_METAGROSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REGIROCK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REGICE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REGISTEEL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LATIAS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LATIOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KYOGRE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROUDON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAYQUAZA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JIRACHI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEOXYS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TURTWIG] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_GROTLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROTLE] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_TORTERRA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TORTERRA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHIMCHAR] = {
        .entries = {
            { EVO_LEVEL, 14, SPECIES_MONFERNO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MONFERNO] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_INFERNAPE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_INFERNAPE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIPLUP] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_PRINPLUP },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PRINPLUP] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_EMPOLEON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EMPOLEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STARLY] = {
        .entries = {
            { EVO_LEVEL, 14, SPECIES_STARAVIA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STARAVIA] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_STARAPTOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STARAPTOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BIDOOF] = {
        .entries = {
            { EVO_LEVEL, 15, SPECIES_BIBAREL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BIBAREL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KRICKETOT] = {
        .entries = {
            { EVO_LEVEL, 10, SPECIES_KRICKETUNE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KRICKETUNE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHINX] = {
        .entries = {
            { EVO_LEVEL, 15, SPECIES_LUXIO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUXIO] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_LUXRAY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUXRAY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BUDEW] = {
        .entries = {
            { EVO_FRIENDSHIP_DAY, 0, SPECIES_ROSELIA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROSERADE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRANIDOS] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_RAMPARDOS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAMPARDOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHIELDON] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_BASTIODON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BASTIODON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BURMY] = {
        .entries = {
            { EVO_LEVEL_FEMALE, 20, SPECIES_WORMADAM },
            { EVO_LEVEL_MALE, 20, SPECIES_MOTHIM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WORMADAM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MOTHIM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COMBEE] = {
        .entries = {
            { EVO_LEVEL_FEMALE, 21, SPECIES_VESPIQUEN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VESPIQUEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PACHIRISU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BUIZEL] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_FLOATZEL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOATZEL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHERUBI] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_CHERRIM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHERRIM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHELLOS] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_GASTRODON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GASTRODON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AMBIPOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRIFLOON] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_DRIFBLIM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRIFBLIM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BUNEARY] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_LOPUNNY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LOPUNNY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MISMAGIUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HONCHKROW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLAMEOW] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_PURUGLY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PURUGLY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHINGLING] = {
        .entries = {
            { EVO_FRIENDSHIP_NIGHT, 0, SPECIES_CHIMECHO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STUNKY] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_SKUNTANK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKUNTANK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRONZOR] = {
        .entries = {
            { EVO_LEVEL, 33, SPECIES_BRONZONG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRONZONG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BONSLY] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_MIMIC, SPECIES_SUDOWOODO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIME_JR] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_MIMIC, SPECIES_MR_MIME },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HAPPINY] = {
        .entries = {
            { EVO_ITEM_DAY, ITEM_OVAL_STONE, SPECIES_CHANSEY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHATOT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPIRITOMB] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIBLE] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_GABITE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GABITE] = {
        .entries = {
            { EVO_LEVEL, 48, SPECIES_GARCHOMP },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GARCHOMP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUNCHLAX] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_SNORLAX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RIOLU] = {
        .entries = {
            { EVO_FRIENDSHIP_DAY, 0, SPECIES_LUCARIO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUCARIO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HIPPOPOTAS] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_HIPPOWDON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HIPPOWDON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKORUPI] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_DRAPION },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAPION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CROAGUNK] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_TOXICROAK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOXICROAK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CARNIVINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FINNEON] = {
        .entries = {
            { EVO_LEVEL, 31, SPECIES_LUMINEON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUMINEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MANTYKE] = {
        .entries = {
            { EVO_OTHER_PARTY_MON, SPECIES_REMORAID, SPECIES_MANTINE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNOVER] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_ABOMASNOW },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ABOMASNOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WEAVILE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGNEZONE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LICKILICKY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RHYPERIOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TANGROWTH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELECTIVIRE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGMORTAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOGEKISS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YANMEGA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LEAFEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLACEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLISCOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAMOSWINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PORYGON_Z] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GALLADE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PROBOPASS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUSKNOIR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FROSLASS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROTOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_UXIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MESPRIT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AZELF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIALGA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PALKIA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HEATRAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REGIGIGAS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIRATINA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRESSELIA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PHIONE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MANAPHY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARKRAI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHAYMIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCEUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EGG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BAD_EGG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEOXYS_ATTACK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEOXYS_DEFENSE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEOXYS_SPEED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WORMADAM_SANDY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WORMADAM_TRASHY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIRATINA_ORIGIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHAYMIN_SKY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROTOM_HEAT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROTOM_WASH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROTOM_FROST] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROTOM_FAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROTOM_MOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_508] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_509] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_510] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_511] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_512] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_513] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_514] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_515] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_516] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_517] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_518] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_519] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_520] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_521] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_522] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_523] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_524] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_525] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_526] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_527] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_528] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_529] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_530] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_531] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_532] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_533] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_534] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_535] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_536] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_537] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_538] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_539] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_540] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_541] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_542] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_543] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VICTINI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNIVY] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_SERVINE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SERVINE] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SERPERIOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SERPERIOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TEPIG] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_PIGNITE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIGNITE] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_EMBOAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EMBOAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OSHAWOTT] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_DEWOTT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEWOTT] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SAMUROTT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAMUROTT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PATRAT] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_WATCHOG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WATCHOG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LILLIPUP] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_HERDIER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HERDIER] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_STOUTLAND },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STOUTLAND] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PURRLOIN] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_LIEPARD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LIEPARD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PANSAGE] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, SPECIES_SIMISAGE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SIMISAGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PANSEAR] = {
        .entries = {
            { EVO_STONE, ITEM_FIRE_STONE, SPECIES_SIMISEAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SIMISEAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PANPOUR] = {
        .entries = {
            { EVO_STONE, ITEM_WATER_STONE, SPECIES_SIMIPOUR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SIMIPOUR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUNNA] = {
        .entries = {
            { EVO_STONE, ITEM_MOON_STONE, SPECIES_MUSHARNA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUSHARNA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIDOVE] = {
        .entries = {
            { EVO_LEVEL, 21, SPECIES_TRANQUILL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TRANQUILL] = {
        .entries = {
            { EVO_LEVEL_MALE, 32, SPECIES_UNFEZANT },
            { EVO_LEVEL_FEMALE, 32, MON_WITH_FORM(SPECIES_UNFEZANT, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_UNFEZANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BLITZLE] = {
        .entries = {
            { EVO_LEVEL, 27, SPECIES_ZEBSTRIKA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZEBSTRIKA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROGGENROLA] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_BOLDORE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BOLDORE] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GIGALITH },
            { EVO_STONE, ITEM_LINKING_CORD, SPECIES_GIGALITH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIGALITH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WOOBAT] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_SWOOBAT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWOOBAT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRILBUR] = {
        .entries = {
            { EVO_LEVEL, 31, SPECIES_EXCADRILL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EXCADRILL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AUDINO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TIMBURR] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_GURDURR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GURDURR] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_CONKELDURR },
            { EVO_STONE, ITEM_LINKING_CORD, SPECIES_CONKELDURR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CONKELDURR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYMPOLE] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_PALPITOAD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PALPITOAD] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SEISMITOAD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEISMITOAD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_THROH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAWK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SEWADDLE] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_SWADLOON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWADLOON] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_LEAVANNY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LEAVANNY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VENIPEDE] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_WHIRLIPEDE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WHIRLIPEDE] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_SCOLIPEDE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCOLIPEDE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COTTONEE] = {
        .entries = {
            { EVO_STONE, ITEM_SUN_STONE, SPECIES_WHIMSICOTT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WHIMSICOTT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PETILIL] = {
        .entries = {
            { EVO_STONE, ITEM_SUN_STONE, SPECIES_LILLIGANT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LILLIGANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BASCULIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDILE] = {
        .entries = {
            { EVO_LEVEL, 29, SPECIES_KROKOROK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KROKOROK] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_KROOKODILE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KROOKODILE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARUMAKA] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_DARMANITAN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARMANITAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MARACTUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DWEBBLE] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_CRUSTLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRUSTLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCRAGGY] = {
        .entries = {
            { EVO_LEVEL, 39, SPECIES_SCRAFTY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCRAFTY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SIGILYPH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YAMASK] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_COFAGRIGUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COFAGRIGUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TIRTOUGA] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_CARRACOSTA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CARRACOSTA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCHEN] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_ARCHEOPS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCHEOPS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TRUBBISH] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_GARBODOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GARBODOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZORUA] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_ZOROARK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZOROARK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINCCINO] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_CINCCINO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CINCCINO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOTHITA] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_GOTHORITA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOTHORITA] = {
        .entries = {
            { EVO_LEVEL, 41, SPECIES_GOTHITELLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOTHITELLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SOLOSIS] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_DUOSION },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUOSION] = {
        .entries = {
            { EVO_LEVEL, 41, SPECIES_REUNICLUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REUNICLUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUCKLETT] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_SWANNA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWANNA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VANILLITE] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_VANILLISH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VANILLISH] = {
        .entries = {
            { EVO_LEVEL, 47, SPECIES_VANILLUXE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VANILLUXE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEERLING] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_SAWSBUCK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAWSBUCK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EMOLGA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KARRABLAST] = {
        .entries = {
            { EVO_TRADE_SPECIFIC_MON, SPECIES_SHELMET, SPECIES_ESCAVALIER },
            { EVO_OTHER_PARTY_MON, SPECIES_SHELMET, SPECIES_ESCAVALIER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ESCAVALIER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FOONGUS] = {
        .entries = {
            { EVO_LEVEL, 39, SPECIES_AMOONGUSS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AMOONGUSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FRILLISH] = {
        .entries = {
            { EVO_LEVEL_MALE, 40, SPECIES_JELLICENT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JELLICENT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALOMOMOLA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JOLTIK] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_GALVANTULA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GALVANTULA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FERROSEED] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_FERROTHORN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FERROTHORN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLINK] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_KLANG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLANG] = {
        .entries = {
            { EVO_LEVEL, 49, SPECIES_KLINKLANG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLINKLANG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYNAMO] = {
        .entries = {
            { EVO_LEVEL, 39, SPECIES_EELEKTRIK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EELEKTRIK] = {
        .entries = {
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_EELEKTROSS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EELEKTROSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELGYEM] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_BEHEEYEM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BEHEEYEM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LITWICK] = {
        .entries = {
            { EVO_LEVEL, 41, SPECIES_LAMPENT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LAMPENT] = {
        .entries = {
            { EVO_STONE, ITEM_DUSK_STONE, SPECIES_CHANDELURE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHANDELURE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AXEW] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_FRAXURE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FRAXURE] = {
        .entries = {
            { EVO_LEVEL, 48, SPECIES_HAXORUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HAXORUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CUBCHOO] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_BEARTIC },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BEARTIC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRYOGONAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHELMET] = {
        .entries = {
            { EVO_TRADE_SPECIFIC_MON, SPECIES_KARRABLAST, SPECIES_ACCELGOR },
            { EVO_OTHER_PARTY_MON, SPECIES_KARRABLAST, SPECIES_ACCELGOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ACCELGOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STUNFISK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIENFOO] = {
        .entries = {
            { EVO_LEVEL, 50, SPECIES_MIENSHAO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIENSHAO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRUDDIGON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLETT] = {
        .entries = {
            { EVO_LEVEL, 43, SPECIES_GOLURK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLURK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PAWNIARD] = {
        .entries = {
            { EVO_LEVEL, 52, SPECIES_BISHARP },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BISHARP] = {
        .entries = {
            { EVO_ITEM_NIGHT, ITEM_DUSK_STONE, SPECIES_KINGAMBIT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BOUFFALANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RUFFLET] = {
        .entries = {
            { EVO_LEVEL, 54, SPECIES_BRAVIARY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRAVIARY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VULLABY] = {
        .entries = {
            { EVO_LEVEL, 54, SPECIES_MANDIBUZZ },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MANDIBUZZ] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HEATMOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DURANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEINO] = {
        .entries = {
            { EVO_LEVEL, 50, SPECIES_ZWEILOUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZWEILOUS] = {
        .entries = {
            { EVO_LEVEL, 64, SPECIES_HYDREIGON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HYDREIGON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LARVESTA] = {
        .entries = {
            { EVO_LEVEL, 59, SPECIES_VOLCARONA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VOLCARONA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COBALION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TERRAKION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIRIZION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TORNADUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_THUNDURUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RESHIRAM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZEKROM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LANDORUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KYUREM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KELDEO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MELOETTA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GENESECT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHESPIN] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_QUILLADIN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QUILLADIN] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_CHESNAUGHT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHESNAUGHT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FENNEKIN] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_BRAIXEN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRAIXEN] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_DELPHOX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DELPHOX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FROAKIE] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_FROGADIER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FROGADIER] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_GRENINJA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRENINJA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BUNNELBY] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_DIGGERSBY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIGGERSBY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLETCHLING] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_FLETCHINDER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLETCHINDER] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_TALONFLAME },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TALONFLAME] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCATTERBUG] = {
        .entries = {
            { EVO_LEVEL, 9, SPECIES_SPEWPA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPEWPA] = {
        .entries = {
            { EVO_LEVEL, 12, SPECIES_VIVILLON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LITLEO] = {
        .entries = {
            { EVO_LEVEL_MALE, 35, SPECIES_PYROAR },
            { EVO_LEVEL_FEMALE, 35, MON_WITH_FORM(SPECIES_PYROAR, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PYROAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLABEBE] = {
        .entries = {
            { EVO_LEVEL, 19, SPECIES_FLOETTE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOETTE] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_FLORGES },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLORGES] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKIDDO] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_GOGOAT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOGOAT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PANCHAM] = {
        .entries = {
            { EVO_LEVEL_DARK_TYPE_MON_IN_PARTY, SPECIES_NIDORAN_M, SPECIES_PANGORO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PANGORO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ESPURR] = {
        .entries = {
            { EVO_LEVEL_MALE, 25, SPECIES_MEOWSTIC },
            { EVO_LEVEL_FEMALE, 25, MON_WITH_FORM(SPECIES_MEOWSTIC, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEOWSTIC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HONEDGE] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_DOUBLADE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DOUBLADE] = {
        .entries = {
            { EVO_STONE, ITEM_DUSK_STONE, SPECIES_AEGISLASH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AEGISLASH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPRITZEE] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_AROMATISSE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AROMATISSE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SWIRLIX] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_SLURPUFF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLURPUFF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_INKAY] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_MALAMAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MALAMAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BINACLE] = {
        .entries = {
            { EVO_LEVEL, 39, SPECIES_BARBARACLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BARBARACLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKRELP] = {
        .entries = {
            { EVO_LEVEL, 48, SPECIES_DRAGALGE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAGALGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLAUNCHER] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_CLAWITZER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLAWITZER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HELIOPTILE] = {
        .entries = {
            { EVO_STONE, ITEM_SUN_STONE, SPECIES_HELIOLISK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HELIOLISK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYRUNT] = {
        .entries = {
            { EVO_LEVEL_DAY, 39, SPECIES_TYRANTRUM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYRANTRUM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AMAURA] = {
        .entries = {
            { EVO_LEVEL, 39, SPECIES_AURORUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AURORUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SYLVEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HAWLUCHA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEDENNE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CARBINK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOOMY] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_SLIGGOO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLIGGOO] = {
        .entries = {
            { EVO_LEVEL_RAIN, 50, SPECIES_GOODRA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOODRA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLEFKI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PHANTUMP] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_TREVENANT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TREVENANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PUMPKABOO] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GOURGEIST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOURGEIST] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BERGMITE] = {
        .entries = {
            { EVO_LEVEL, 37, SPECIES_AVALUGG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AVALUGG] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NOIBAT] = {
        .entries = {
            { EVO_LEVEL, 48, SPECIES_NOIVERN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NOIVERN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_XERNEAS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YVELTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZYGARDE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIANCIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOOPA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VOLCANION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROWLET] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_DARTRIX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARTRIX] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_DECIDUEYE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DECIDUEYE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LITTEN] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_TORRACAT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TORRACAT] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_INCINEROAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_INCINEROAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POPPLIO] = {
        .entries = {
            { EVO_LEVEL, 17, SPECIES_BRIONNE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRIONNE] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_PRIMARINA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PRIMARINA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKIPEK] = {
        .entries = {
            { EVO_LEVEL, 14, SPECIES_TRUMBEAK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TRUMBEAK] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_TOUCANNON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOUCANNON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YUNGOOS] = {
        .entries = {
            { EVO_LEVEL_DAY, 20, SPECIES_GUMSHOOS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GUMSHOOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRUBBIN] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_CHARJABUG },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHARJABUG] = {
        .entries = {
            { EVO_CORONET, 0, SPECIES_VIKAVOLT },
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_VIKAVOLT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIKAVOLT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRABRAWLER] = {
        .entries = {
            { EVO_STONE, ITEM_ICE_STONE, SPECIES_CRABOMINABLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRABOMINABLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORICORIO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CUTIEFLY] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_RIBOMBEE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RIBOMBEE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROCKRUFF] = {
        .entries = {
            { EVO_LEVEL_DAY, 25, MON_WITH_FORM(SPECIES_LYCANROC, 3) },
            { EVO_LEVEL_NIGHT, 25, MON_WITH_FORM(SPECIES_LYCANROC, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LYCANROC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WISHIWASHI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAREANIE] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_TOXAPEX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOXAPEX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUDBRAY] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_MUDSDALE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUDSDALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEWPIDER] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_ARAQUANID },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARAQUANID] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FOMANTIS] = {
        .entries = {
            { EVO_LEVEL_DAY, 34, SPECIES_LURANTIS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LURANTIS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MORELULL] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_SHIINOTIC },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHIINOTIC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SALANDIT] = {
        .entries = {
            { EVO_LEVEL_FEMALE, 33, SPECIES_SALAZZLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SALAZZLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STUFFUL] = {
        .entries = {
            { EVO_LEVEL, 27, SPECIES_BEWEAR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BEWEAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BOUNSWEET] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_STEENEE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STEENEE] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_STOMP, SPECIES_TSAREENA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TSAREENA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COMFEY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORANGURU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PASSIMIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WIMPOD] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_GOLISOPOD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLISOPOD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDYGAST] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_PALOSSAND },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PALOSSAND] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PYUKUMUKU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYPE_NULL] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, SPECIES_SILVALLY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SILVALLY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KOMALA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TURTONATOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOGEDEMARU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIMIKYU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRUXISH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAMPA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DHELMISE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JANGMO_O] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_HAKAMO_O },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HAKAMO_O] = {
        .entries = {
            { EVO_LEVEL, 45, SPECIES_KOMMO_O },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KOMMO_O] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAPU_KOKO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAPU_LELE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAPU_BULU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAPU_FINI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COSMOG] = {
        .entries = {
            { EVO_LEVEL, 43, SPECIES_COSMOEM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COSMOEM] = {
        .entries = {
            { EVO_LEVEL_DAY, 53, SPECIES_SOLGALEO },
            { EVO_LEVEL_NIGHT, 53, SPECIES_LUNALA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SOLGALEO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LUNALA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NIHILEGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BUZZWOLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PHEROMOSA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_XURKITREE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CELESTEELA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KARTANA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GUZZLORD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NECROZMA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGEARNA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MARSHADOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POIPOLE] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_DRAGON_PULSE, SPECIES_NAGANADEL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NAGANADEL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STAKATAKA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BLACEPHALON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZERAORA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MELTAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MELMETAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROOKEY] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_THWACKEY },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_THWACKEY] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_RILLABOOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RILLABOOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCORBUNNY] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_RABOOT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RABOOT] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_CINDERACE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CINDERACE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SOBBLE] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_DRIZZILE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRIZZILE] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_INTELEON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_INTELEON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKWOVET] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_GREEDENT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GREEDENT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROOKIDEE] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_CORVISQUIRE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CORVISQUIRE] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_CORVIKNIGHT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CORVIKNIGHT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BLIPBUG] = {
        .entries = {
            { EVO_LEVEL, 10, SPECIES_DOTTLER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DOTTLER] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_ORBEETLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORBEETLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NICKIT] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_THIEVUL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_THIEVUL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOSSIFLEUR] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_ELDEGOSS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELDEGOSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WOOLOO] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_DUBWOOL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUBWOOL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHEWTLE] = {
        .entries = {
            { EVO_LEVEL, 22, SPECIES_DREDNAW },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DREDNAW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YAMPER] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_BOLTUND },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BOLTUND] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROLYCOLY] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_CARKOL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CARKOL] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_COALOSSAL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COALOSSAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_APPLIN] = {
        .entries = {
            { EVO_STONE, ITEM_TART_APPLE, SPECIES_FLAPPLE },
            { EVO_STONE, ITEM_SWEET_APPLE, SPECIES_APPLETUN },
            { EVO_STONE, ITEM_SYRUPY_APPLE, SPECIES_DIPPLIN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLAPPLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_APPLETUN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SILICOBRA] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SANDACONDA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDACONDA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRAMORANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARROKUDA] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_BARRASKEWDA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BARRASKEWDA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOXEL] = {
        .entries = {
            { EVO_LEVEL_NATURE_AMPED, 30, SPECIES_TOXTRICITY },
            { EVO_LEVEL_NATURE_LOW_KEY, 30, MON_WITH_FORM(SPECIES_TOXTRICITY, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOXTRICITY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SIZZLIPEDE] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_CENTISKORCH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CENTISKORCH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLOBBOPUS] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_TAUNT, SPECIES_GRAPPLOCT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRAPPLOCT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SINISTEA] = {
        .entries = {
            { EVO_STONE, ITEM_CRACKED_POT, SPECIES_POLTEAGEIST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLTEAGEIST] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HATENNA] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_HATTREM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HATTREM] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_HATTERENE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HATTERENE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IMPIDIMP] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_MORGREM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MORGREM] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_GRIMMSNARL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRIMMSNARL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OBSTAGOON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PERRSERKER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CURSOLA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SIRFETCHD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MR_RIME] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RUNERIGUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MILCERY] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_ALCREMIE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FALINKS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PINCURCHIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNOM] = {
        .entries = {
            { EVO_FRIENDSHIP_NIGHT, 0, SPECIES_FROSMOTH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FROSMOTH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STONJOURNER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EISCUE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_INDEEDEE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MORPEKO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CUFANT] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_COPPERAJAH },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_COPPERAJAH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRACOZOLT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCTOZOLT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRACOVISH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCTOVISH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DURALUDON] = {
        .entries = {
            { EVO_STONE, ITEM_METAL_ALLOY, SPECIES_ARCHALUDON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DREEPY] = {
        .entries = {
            { EVO_LEVEL, 50, SPECIES_DRAKLOAK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAKLOAK] = {
        .entries = {
            { EVO_LEVEL, 60, SPECIES_DRAGAPULT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DRAGAPULT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZACIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZAMAZENTA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ETERNATUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KUBFU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_URSHIFU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZARUDE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REGIELEKI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REGIDRAGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLASTRIER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPECTRIER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CALYREX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WYRDEER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLEAVOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_URSALUNA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BASCULEGION] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNEASLER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OVERQWIL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ENAMORUS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPRIGATITO] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_FLORAGATO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLORAGATO] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_MEOWSCARADA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEOWSCARADA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FUECOCO] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_CROCALOR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CROCALOR] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_SKELEDIRGE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SKELEDIRGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QUAXLY] = {
        .entries = {
            { EVO_LEVEL, 16, SPECIES_QUAXWELL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QUAXWELL] = {
        .entries = {
            { EVO_LEVEL, 36, SPECIES_QUAQUAVAL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QUAQUAVAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LECHONK] = {
        .entries = {
            { EVO_LEVEL_MALE, 18, SPECIES_OINKOLOGNE },
            { EVO_LEVEL_FEMALE, 18, MON_WITH_FORM(SPECIES_OINKOLOGNE, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OINKOLOGNE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAROUNTULA] = {
        .entries = {
            { EVO_LEVEL, 15, SPECIES_SPIDOPS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SPIDOPS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NYMBLE] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_LOKIX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LOKIX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PAWMI] = {
        .entries = {
            { EVO_LEVEL, 18, SPECIES_PAWMO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PAWMO] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_PAWMOT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PAWMOT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TANDEMAUS] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_MAUSHOLD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAUSHOLD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FIDOUGH] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_DACHSBUN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DACHSBUN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SMOLIV] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_DOLLIV },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DOLLIV] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_ARBOLIVA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARBOLIVA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SQUAWKABILLY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NACLI] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_NACLSTACK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NACLSTACK] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_GARGANACL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GARGANACL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHARCADET] = {
        .entries = {
            { EVO_STONE, ITEM_AUSPICIOUS_ARMOR, SPECIES_ARMAROUGE },
            { EVO_STONE, ITEM_MALICIOUS_ARMOR, SPECIES_CERULEDGE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARMAROUGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CERULEDGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TADBULB] = {
        .entries = {
            { EVO_STONE, ITEM_THUNDER_STONE, SPECIES_BELLIBOLT },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BELLIBOLT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WATTREL] = {
        .entries = {
            { EVO_LEVEL, 25, SPECIES_KILOWATTREL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KILOWATTREL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MASCHIFF] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_MABOSSTIFF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MABOSSTIFF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHROODLE] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_GRAFAIAI },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRAFAIAI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRAMBLIN] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_BRAMBLEGHAST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRAMBLEGHAST] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOEDSCOOL] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_TOEDSCRUEL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOEDSCRUEL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLAWF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CAPSAKID] = {
        .entries = {
            { EVO_STONE, ITEM_FIRE_STONE, SPECIES_SCOVILLAIN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCOVILLAIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RELLOR] = {
        .entries = {
            { EVO_LEVEL, 32, SPECIES_RABSCA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RABSCA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLITTLE] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_ESPATHRA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ESPATHRA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TINKATINK] = {
        .entries = {
            { EVO_LEVEL, 24, SPECIES_TINKATUFF },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TINKATUFF] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_TINKATON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TINKATON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WIGLETT] = {
        .entries = {
            { EVO_LEVEL, 26, SPECIES_WUGTRIO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WUGTRIO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BOMBIRDIER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FINIZEN] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_PALAFIN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PALAFIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VAROOM] = {
        .entries = {
            { EVO_LEVEL, 40, SPECIES_REVAVROOM },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REVAVROOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CYCLIZAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORTHWORM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLIMMET] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_GLIMMORA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GLIMMORA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GREAVARD] = {
        .entries = {
            { EVO_LEVEL_NIGHT, 30, SPECIES_HOUNDSTONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOUNDSTONE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLAMIGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CETODDLE] = {
        .entries = {
            { EVO_STONE, ITEM_ICE_STONE, SPECIES_CETITAN },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CETITAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VELUZA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DONDOZO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TATSUGIRI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ANNIHILAPE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CLODSIRE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FARIGIRAF] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUDUNSPARCE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KINGAMBIT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GREAT_TUSK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SCREAM_TAIL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRUTE_BONNET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLUTTER_MANE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLITHER_WING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDY_SHOCKS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_TREADS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_BUNDLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_HANDS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_JUGULIS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_MOTH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_THORNS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FRIGIBAX] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_ARCTIBAX },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCTIBAX] = {
        .entries = {
            { EVO_LEVEL, 54, SPECIES_BAXCALIBUR },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BAXCALIBUR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIMMIGHOUL] = {
        .entries = {
            { EVO_ITEM_DAY, ITEM_AMULET_COIN, SPECIES_GHOLDENGO },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GHOLDENGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WO_CHIEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHIEN_PAO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TING_LU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHI_YU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROARING_MOON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_VALIANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KORAIDON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIRAIDON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WALKING_WAKE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_LEAVES] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIPPLIN] = {
        .entries = {
            { EVO_HAS_MOVE, MOVE_DRAGON_CHEER, SPECIES_HYDRAPPLE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLTCHAGEIST] = {
        .entries = {
            { EVO_STONE, ITEM_CRACKED_POT, SPECIES_SINISTCHA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SINISTCHA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OKIDOGI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUNKIDORI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FEZANDIPITI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCHALUDON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HYDRAPPLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOUGING_FIRE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAGING_BOLT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_BOULDER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_IRON_CROWN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TERAPAGOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PECHARUNT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_VENUSAUR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_CHARIZARD_X] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_CHARIZARD_Y] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_BLASTOISE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_BEEDRILL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_PIDGEOT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_ALAKAZAM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SLOWBRO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_GENGAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_KANGASKHAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_PINSIR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_GYARADOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_AERODACTYL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_MEWTWO_X] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_MEWTWO_Y] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_AMPHAROS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_STEELIX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SCIZOR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_HERACROSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_HOUNDOOM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_TYRANITAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SCEPTILE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_BLAZIKEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SWAMPERT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_GARDEVOIR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SABLEYE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_MAWILE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_AGGRON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_MEDICHAM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_MANECTRIC] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SHARPEDO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_CAMERUPT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_ALTARIA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_BANETTE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_ABSOL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_GLALIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_SALAMENCE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_METAGROSS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_LATIAS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_LATIOS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_RAYQUAZA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_LOPUNNY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_GARCHOMP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_LUCARIO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_ABOMASNOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_GALLADE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_AUDINO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEGA_DIANCIE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KYOGRE_PRIMAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROUDON_PRIMAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RATTATA_ALOLAN] = {
        .entries = {
            { EVO_LEVEL_NIGHT, 20, MON_WITH_FORM(SPECIES_RATICATE, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RATICATE_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAICHU_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDSHREW_ALOLAN] = {
        .entries = {
            { EVO_STONE, ITEM_ICE_STONE, MON_WITH_FORM(SPECIES_SANDSLASH, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SANDSLASH_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VULPIX_ALOLAN] = {
        .entries = {
            { EVO_STONE, ITEM_ICE_STONE, MON_WITH_FORM(SPECIES_NINETALES, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NINETALES_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIGLETT_ALOLAN] = {
        .entries = {
            { EVO_LEVEL, 26, MON_WITH_FORM(SPECIES_DUGTRIO, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUGTRIO_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEOWTH_ALOLAN] = {
        .entries = {
            { EVO_FRIENDSHIP, 0, MON_WITH_FORM(SPECIES_PERSIAN, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PERSIAN_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GEODUDE_ALOLAN] = {
        .entries = {
            { EVO_LEVEL, 25, MON_WITH_FORM(SPECIES_GRAVELER, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRAVELER_ALOLAN] = {
        .entries = {
            { EVO_TRADE, 0, MON_WITH_FORM(SPECIES_GOLEM, 1) },
            { EVO_STONE, ITEM_LINKING_CORD, MON_WITH_FORM(SPECIES_GOLEM, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOLEM_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRIMER_ALOLAN] = {
        .entries = {
            { EVO_LEVEL, 38, MON_WITH_FORM(SPECIES_MUK, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MUK_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EXEGGUTOR_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAROWAK_ALOLAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RATICATE_ALOLAN_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAROWAK_ALOLAN_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GUMSHOOS_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIKAVOLT_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RIBOMBEE_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARAQUANID_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LURANTIS_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SALAZZLE_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOGEDEMARU_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIMIKYU_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIMIKYU_BUSTED_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KOMMO_O_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEOWTH_GALARIAN] = {
        .entries = {
            { EVO_LEVEL, 28, SPECIES_PERRSERKER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PONYTA_GALARIAN] = {
        .entries = {
            { EVO_LEVEL, 40, MON_WITH_FORM(SPECIES_RAPIDASH, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_RAPIDASH_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLOWPOKE_GALARIAN] = {
        .entries = {
            { EVO_STONE, ITEM_GALARICA_CUFF, MON_WITH_FORM(SPECIES_SLOWBRO, 2) },
            { EVO_STONE, ITEM_GALARICA_WREATH, MON_WITH_FORM(SPECIES_SLOWKING, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLOWBRO_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FARFETCHD_GALARIAN] = {
        .entries = {
            { EVO_AMOUNT_OF_CRITICAL_HITS, 3, SPECIES_SIRFETCHD },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WEEZING_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MR_MIME_GALARIAN] = {
        .entries = {
            { EVO_LEVEL, 42, SPECIES_MR_RIME },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARTICUNO_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZAPDOS_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MOLTRES_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLOWKING_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CORSOLA_GALARIAN] = {
        .entries = {
            { EVO_LEVEL, 38, SPECIES_CURSOLA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZIGZAGOON_GALARIAN] = {
        .entries = {
            { EVO_LEVEL, 20, MON_WITH_FORM(SPECIES_LINOONE, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LINOONE_GALARIAN] = {
        .entries = {
            { EVO_LEVEL, 35, SPECIES_OBSTAGOON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARUMAKA_GALARIAN] = {
        .entries = {
            { EVO_STONE, ITEM_ICE_STONE, MON_WITH_FORM(SPECIES_DARMANITAN, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARMANITAN_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_YAMASK_GALARIAN] = {
        .entries = {
            { EVO_HURT_IN_BATTLE_AMOUNT, 49, SPECIES_RUNERIGUS },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_STUNFISK_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_COSPLAY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_ROCK_STAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_BELLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_POP_STAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_PH_D] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_LIBRE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_ORIGINAL_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_HOENN_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_SINNOH_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_UNOVA_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_KALOS_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_ALOLA_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_PARTNER_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_WORLD_CAP] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CASTFORM_SUNNY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CASTFORM_RAINY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CASTFORM_SNOWY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CHERRIM_SUNSHINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SHELLOS_EAST_SEA] = {
        .entries = {
            { EVO_LEVEL, 30, SPECIES_GASTRODON },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GASTRODON_EAST_SEA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DIALGA_ORIGIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PALKIA_ORIGIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BASCULIN_BLUE_STRIPED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BASCULIN_WHITE_STRIPED] = {
        .entries = {
            { EVO_LEVEL_MALE, 0, SPECIES_BASCULEGION },
            { EVO_LEVEL_FEMALE, 0, MON_WITH_FORM(SPECIES_BASCULEGION, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARMANITAN_ZEN_MODE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DARMANITAN_ZEN_MODE_GALARIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEERLING_SUMMER] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_SAWSBUCK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEERLING_AUTUMN] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_SAWSBUCK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DEERLING_WINTER] = {
        .entries = {
            { EVO_LEVEL, 34, SPECIES_SAWSBUCK },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAWSBUCK_SUMMER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAWSBUCK_AUTUMN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAWSBUCK_WINTER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TORNADUS_THERIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_THUNDURUS_THERIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LANDORUS_THERIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KYUREM_WHITE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KYUREM_BLACK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KELDEO_RESOLUTE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MELOETTA_PIROUETTE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GENESECT_DOUSE_DRIVE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GENESECT_SHOCK_DRIVE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GENESECT_BURN_DRIVE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GENESECT_CHILL_DRIVE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRENINJA_BATTLE_BOND] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GRENINJA_ASH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_POLAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_TUNDRA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_CONTINENTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_GARDEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_ELEGANT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_MEADOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_MODERN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_MARINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_ARCHIPELAGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_HIGH_PLAINS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_SANDSTORM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_RIVER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_MONSOON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_SAVANNA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_SUN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_OCEAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_JUNGLE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_FANCY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VIVILLON_POKE_BALL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLABEBE_YELLOW_FLOWER] = {
        .entries = {
            { EVO_LEVEL, 19, SPECIES_FLOETTE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLABEBE_ORANGE_FLOWER] = {
        .entries = {
            { EVO_LEVEL, 19, SPECIES_FLOETTE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLABEBE_BLUE_FLOWER] = {
        .entries = {
            { EVO_LEVEL, 19, SPECIES_FLOETTE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLABEBE_WHITE_FLOWER] = {
        .entries = {
            { EVO_LEVEL, 19, SPECIES_FLOETTE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOETTE_YELLOW_FLOWER] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_FLORGES },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOETTE_ORANGE_FLOWER] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_FLORGES },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOETTE_BLUE_FLOWER] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_FLORGES },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOETTE_WHITE_FLOWER] = {
        .entries = {
            { EVO_STONE, ITEM_SHINY_STONE, SPECIES_FLORGES },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLOETTE_ETERNAL_FLOWER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLORGES_YELLOW_FLOWER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLORGES_ORANGE_FLOWER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLORGES_BLUE_FLOWER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FLORGES_WHITE_FLOWER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_HEART] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_STAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_DIAMOND] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_DEBUTANTE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_MATRON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_DANDY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_LA_REINE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_KABUKI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FURFROU_PHARAOH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AEGISLASH_BLADE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PUMPKABOO_SMALL] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GOURGEIST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PUMPKABOO_LARGE] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GOURGEIST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PUMPKABOO_SUPER] = {
        .entries = {
            { EVO_TRADE, 0, SPECIES_GOURGEIST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOURGEIST_SMALL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOURGEIST_LARGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOURGEIST_SUPER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_XERNEAS_ACTIVE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZYGARDE_10] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZYGARDE_10_POWER_CONSTRUCT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZYGARDE_50_POWER_CONSTRUCT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZYGARDE_10_COMPLETE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZYGARDE_50_COMPLETE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_HOOPA_UNBOUND] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORICORIO_POM_POM] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORICORIO_PAU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ORICORIO_SENSU] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ROCKRUFF_OWN_TEMPO] = {
        .entries = {
            { EVO_LEVEL_DUSK, 25, MON_WITH_FORM(SPECIES_LYCANROC, 2) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LYCANROC_MIDNIGHT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LYCANROC_DUSK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WISHIWASHI_SCHOOL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_METEOR_ORANGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_METEOR_YELLOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_METEOR_GREEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_METEOR_BLUE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_METEOR_INDIGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_METEOR_VIOLET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_RED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_ORANGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_YELLOW] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_GREEN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_BLUE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_INDIGO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MINIOR_CORE_VIOLET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIMIKYU_BUSTED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NECROZMA_DUSK_MANE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NECROZMA_DAWN_WINGS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NECROZMA_ULTRA_DUSK_MANE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_NECROZMA_ULTRA_DAWN_WINGS] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAGEARNA_ORIGINAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PIKACHU_PARTNER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EEVEE_PARTNER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRAMORANT_GULPING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CRAMORANT_GORGING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TOXTRICITY_LOW_KEY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SINISTEA_ANTIQUE] = {
        .entries = {
            { EVO_STONE, ITEM_CHIPPED_POT, SPECIES_POLTEAGEIST },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLTEAGEIST_ANTIQUE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_BERRY_SWEET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_LOVE_SWEET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_STAR_SWEET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_CLOVER_SWEET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_FLOWER_SWEET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_RIBBON_SWEET] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_FILLER_1] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ALCREMIE_FILLER_2] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_EISCUE_NOICE_FACE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MORPEKO_HANGRY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZACIAN_CROWNED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZAMAZENTA_CROWNED] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ETERNATUS_ETERNAMAX] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_URSHIFU_RAPID_STRIKE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZARUDE_DADA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CALYREX_ICE_RIDER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_CALYREX_SHADOW_RIDER] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ENAMORUS_THERIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GROWLITHE_HISUIAN] = {
        .entries = {
            { EVO_STONE, ITEM_FIRE_STONE, MON_WITH_FORM(SPECIES_ARCANINE, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCANINE_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_VOLTORB_HISUIAN] = {
        .entries = {
            { EVO_STONE, ITEM_LEAF_STONE, MON_WITH_FORM(SPECIES_ELECTRODE, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELECTRODE_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TYPHLOSION_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_QWILFISH_HISUIAN] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_OVERQWIL },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SNEASEL_HISUIAN] = {
        .entries = {
            { EVO_ITEM_DAY, ITEM_RAZOR_CLAW, SPECIES_SNEASLER },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SAMUROTT_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LILLIGANT_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZORUA_HISUIAN] = {
        .entries = {
            { EVO_LEVEL, 30, MON_WITH_FORM(SPECIES_ZOROARK, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ZOROARK_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BRAVIARY_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SLIGGOO_HISUIAN] = {
        .entries = {
            { EVO_LEVEL_RAIN, 50, MON_WITH_FORM(SPECIES_GOODRA, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GOODRA_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AVALUGG_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DECIDUEYE_HISUIAN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KLEAVOR_LORD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_LILLIGANT_LADY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ARCANINE_LORD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_ELECTRODE_LORD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_AVALUGG_LORD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_UNFEZANT_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_FRILLISH_FEMALE] = {
        .entries = {
            { EVO_LEVEL_FEMALE, 40, MON_WITH_FORM(SPECIES_JELLICENT, 1) },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_JELLICENT_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PYROAR_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MEOWSTIC_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_INDEEDEE_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_BASCULEGION_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MAUSHOLD_FAMILY_OF_THREE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SQUAWKABILLY_BLUE_PLUMAGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SQUAWKABILLY_WHITE_PLUMAGE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_PALAFIN_HERO] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TATSUGIRI_DROOPY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TATSUGIRI_STRETCHY] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_DUDUNSPARCE_THREE_SEGMENT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_GIMMIGHOUL_ROAMING] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_WOOPER_PALDEAN] = {
        .entries = {
            { EVO_LEVEL, 20, SPECIES_CLODSIRE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAUROS_COMBAT] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAUROS_BLAZE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TAUROS_AQUA] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OINKOLOGNE_FEMALE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REVAVROOM_SEGIN] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REVAVROOM_SCHEDAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REVAVROOM_NAVI] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REVAVROOM_RUCHBAH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_REVAVROOM_CAPH] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KORAIDON_LIMITED_BUILD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KORAIDON_SPRINTING_BUILD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KORAIDON_SWIMMING_BUILD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_KORAIDON_GLIDING_BUILD] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIRAIDON_LOW_POWER_MODE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIRAIDON_DRIVE_MODE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIRAIDON_AQUATIC_MODE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_MIRAIDON_GLIDE_MODE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_POLTCHAGEIST_MASTERPIECE] = {
        .entries = {
            { EVO_STONE, ITEM_CHIPPED_POT, SPECIES_SINISTCHA },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_SINISTCHA_MASTERPIECE] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_WELLSPRING_MASK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_HEARTHFLAME_MASK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_CORNERSTONE_MASK] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_TEAL_MASK_TERASTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_WELLSPRING_MASK_TERASTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_HEARTHFLAME_MASK_TERASTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_OGERPON_CORNERSTONE_MASK_TERASTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_URSALUNA_BLOODMOON] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TERAPAGOS_TERASTAL] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

    [SPECIES_TERAPAGOS_STELLAR] = {
        .entries = {
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
            { EVO_NONE, 0, SPECIES_NONE },
        },
        .terminator = 0,
    },

};
