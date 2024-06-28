#include "../include/types.h"
#include "../include/constants/trainerclass.h"

struct TrainerMoney
{
    u16 class;
    u16 multiplier;
};

struct TrainerMoney PrizeMoney [] = // 0x34C04 in Overlay 12; 2 bytes for trainer class ID, 2 bytes for modifier; 516 bytes in total in vanilla
{
   {.class = CLASS_PKMN_TRAINER_0,   .multiplier = 0}, // Entry 0, Ethan (don't use! will crash)
   {.class = CLASS_PKMN_TRAINER_1,   .multiplier = 0}, // Entry 1, Lyra (don't use! will crash)
   {.class = CLASS_YOUNGSTER,        .multiplier = 4}, // Entry 2
   {.class = CLASS_LASS,             .multiplier = 4}, // Entry 3
   {.class = CLASS_CAMPER,           .multiplier = 4}, // Entry 4
   {.class = CLASS_PICNICKER,        .multiplier = 4}, // Entry 5
   {.class = CLASS_BUG_CATCHER,      .multiplier = 4}, // Entry 6
   {.class = CLASS_AROMA_LADY,       .multiplier = 8}, // Entry 7
   {.class = CLASS_TWINS,            .multiplier = 4}, // Entry 8
   {.class = CLASS_HIKER,            .multiplier = 8}, // Entry 9
   {.class = CLASS_BATTLE_GIRL,      .multiplier = 4}, // Entry 10
   {.class = CLASS_FISHERMAN,        .multiplier = 8}, // Entry 11
   {.class = CLASS_CYCLIST_M,        .multiplier = 8}, // Entry 12
   {.class = CLASS_CYCLIST_F,        .multiplier = 8}, // Entry 13
   {.class = CLASS_BLACK_BELT,       .multiplier = 6}, // Entry 14
   {.class = CLASS_ARTIST,           .multiplier = 12}, // Entry 15
   {.class = CLASS_PKMN_BREEDER_M,   .multiplier = 12}, // Entry 16
   {.class = CLASS_PKMN_BREEDER_F,   .multiplier = 12}, // Entry 17
   {.class = CLASS_COWGIRL,          .multiplier = 4}, // Entry 18
   {.class = CLASS_JOGGER,           .multiplier = 8}, // Entry 19
   {.class = CLASS_POKEFAN_M,        .multiplier = 16}, // Entry 20
   {.class = CLASS_POKEFAN_F,        .multiplier = 16}, // Entry 21
   {.class = CLASS_POKE_KID,         .multiplier = 2}, // Entry 22
   {.class = CLASS_RIVAL,            .multiplier = 16}, // Entry 23
   {.class = CLASS_ACE_TRAINER_M,    .multiplier = 15}, // Entry 24
   {.class = CLASS_ACE_TRAINER_F,    .multiplier = 15}, // Entry 25
   {.class = CLASS_WAITRESS,         .multiplier = 8}, // Entry 26
   {.class = CLASS_VETERAN,          .multiplier = 20}, // Entry 27
   {.class = CLASS_NINJA_BOY,        .multiplier = 2}, // Entry 28
   {.class = CLASS_DRAGON_TAMER,     .multiplier = 8}, // Entry 29
   {.class = CLASS_BIRD_KEEPER,      .multiplier = 8}, // Entry 30 Sinnoh Bird Keeper
   {.class = CLASS_JUGGLER,          .multiplier = 8}, // Entry 31
   {.class = CLASS_RICH_BOY,         .multiplier = 40}, // Entry 32
   {.class = CLASS_LADY,             .multiplier = 40}, // Entry 33
   {.class = CLASS_GENTLEMAN,        .multiplier = 50}, // Entry 34
   {.class = CLASS_SOCIALITE,        .multiplier = 50}, // Entry 35
   {.class = CLASS_BEAUTY,           .multiplier = 14}, // Entry 36
   {.class = CLASS_COLLECTOR,        .multiplier = 16}, // Entry 37
   {.class = CLASS_POLICEMAN,        .multiplier = 10}, // Entry 38
   {.class = CLASS_PKMN_RANGER_M,    .multiplier = 15}, // Entry 39
   {.class = CLASS_PKMN_RANGER_F,    .multiplier = 15}, // Entry 40
   {.class = CLASS_SCIENTIST,        .multiplier = 12}, // Entry 41
   {.class = CLASS_SWIMMER_M,        .multiplier = 4}, // Entry 42
   {.class = CLASS_SWIMMER_F,        .multiplier = 4}, // Entry 43
   {.class = CLASS_TUBER_M,          .multiplier = 1}, // Entry 44
   {.class = CLASS_TUBER_F,          .multiplier = 1}, // Entry 45
   {.class = CLASS_SAILOR,           .multiplier = 8}, // Entry 46
   {.class = CLASS_KIMONO_GIRL_1,    .multiplier = 30}, // Entry 47
   {.class = CLASS_RUIN_MANIAC,      .multiplier = 12}, // Entry 48
   {.class = CLASS_PSYCHIC_M,        .multiplier = 8}, // Entry 49
   {.class = CLASS_PSYCHIC_F,        .multiplier = 8}, // Entry 50
   {.class = CLASS_PI,               .multiplier = 30}, // Entry 51
   {.class = CLASS_GUITARIST,        .multiplier = 6}, // Entry 52
   {.class = CLASS_ACE_TRAINER_M_1,  .multiplier = 15}, // Entry 53
   {.class = CLASS_ACE_TRAINER_F_1,  .multiplier = 15}, // Entry 54
   {.class = CLASS_TEAM_ROCKET,      .multiplier = 10}, // Entry 55
   {.class = CLASS_SKIER,            .multiplier = 8}, // Entry 56
   {.class = CLASS_ROUGHNECK,        .multiplier = 6}, // Entry 57
   {.class = CLASS_CLOWN,            .multiplier = 6}, // Entry 58
   {.class = CLASS_WORKER,           .multiplier = 10}, // Entry 59
   {.class = CLASS_SCHOOL_KID_M,     .multiplier = 5}, // Entry 60
   {.class = CLASS_SCHOOL_KID_F,     .multiplier = 5}, // Entry 61
   {.class = CLASS_TEAM_ROCKET_1,    .multiplier = 10}, // Entry 62
   {.class = CLASS_BURGLAR,          .multiplier = 4}, // Entry 63
   {.class = CLASS_FIREBREATHER,     .multiplier = 8}, // Entry 64
   {.class = CLASS_BIKER,            .multiplier = 4}, // Entry 65
   {.class = CLASS_LEADER_M,         .multiplier = 30}, // Entry 66 Falkner
   {.class = CLASS_LEADER_F,         .multiplier = 30}, // Entry 67 Bugsy
   {.class = CLASS_POKE_MANIAC,      .multiplier = 16}, // Entry 68
   {.class = CLASS_BIRD_KEEPER_1,    .multiplier = 8}, // Entry 69 Johto Bird Keeper
   {.class = CLASS_LEADER,           .multiplier = 30}, // Entry 70 Whitney
   {.class = CLASS_RANCHER,          .multiplier = 10}, // Entry 71
   {.class = CLASS_LEADER_0,         .multiplier = 30}, // Entry 72 Morty
   {.class = CLASS_LEADER_1,         .multiplier = 30}, // Entry 73 Pryce
   {.class = CLASS_LEADER_2,         .multiplier = 30}, // Entry 74 Jasmine
   {.class = CLASS_LEADER_3,         .multiplier = 30}, // Entry 75 Chuck
   {.class = CLASS_LEADER_4,         .multiplier = 30}, // Entry 76 Clair
   {.class = CLASS_TEACHER,          .multiplier = 12}, // Entry 77
   {.class = CLASS_SUPER_NERD,       .multiplier = 12}, // Entry 78
   {.class = CLASS_SAGE,             .multiplier = 12}, // Entry 79
   {.class = CLASS_PARASOL_LADY,     .multiplier = 8}, // Entry 80
   {.class = CLASS_WAITER,           .multiplier = 8}, // Entry 81
   {.class = CLASS_MEDIUM,           .multiplier = 12}, // Entry 82
   {.class = CLASS_CAMERAMAN,        .multiplier = 8}, // Entry 83
   {.class = CLASS_REPORTER,         .multiplier = 10}, // Entry 84
   {.class = CLASS_IDOL,             .multiplier = 12}, // Entry 85
   {.class = CLASS_CHAMPION,         .multiplier = 50}, // Entry 86 Lance (vanilla)
   {.class = CLASS_ELITE_FOUR_0,     .multiplier = 40}, // Entry 87 Will
   {.class = CLASS_ELITE_FOUR_1,     .multiplier = 40}, // Entry 88 Karen
   {.class = CLASS_ELITE_FOUR_2,     .multiplier = 40}, // Entry 89 Koga
   {.class = CLASS_PKMN_TRAINER_2,   .multiplier = 30}, // Entry 90 Aroma Lady 2
   {.class = CLASS_PKMN_TRAINER_3,   .multiplier = 30}, // Entry 91 Rich Boy 2
   {.class = CLASS_PKMN_TRAINER_4,   .multiplier = 30}, // Entry 92 Picnicker 2
   {.class = CLASS_PKMN_TRAINER_5,   .multiplier = 30}, // Entry 93 Camper 2
   {.class = CLASS_PKMN_TRAINER_6,   .multiplier = 30}, // Entry 94 Poke Kid 2
   {.class = CLASS_PKMN_TRAINER_7,   .multiplier = 25}, // Entry 95 DP Lucas
   {.class = CLASS_PKMN_TRAINER_8,   .multiplier = 25}, // Entry 96 DP Dawn
   {.class = CLASS_TOWER_TYCOON,     .multiplier = 0}, // Entry 97 Palmer
   {.class = CLASS_LEADER_5,         .multiplier = 30}, // Entry 98 Brock
   {.class = CLASS_HALL_MATRON,      .multiplier = 0}, // Entry 99 Argenta
   {.class = CLASS_FACTORY_HEAD,     .multiplier = 0}, // Entry 100 Norton
   {.class = CLASS_ARCADE_STAR,      .multiplier = 0}, // Entry 101 Dahlia
   {.class = CLASS_CASTLE_VALET,     .multiplier = 0}, // Entry 102 Caitlin and Darach
   {.class = CLASS_LEADER_6,         .multiplier = 30}, // Entry 103 Misty
   {.class = CLASS_LEADER_7,         .multiplier = 30}, // Entry 104 Lt. Surge
   {.class = CLASS_LEADER_8,         .multiplier = 30}, // Entry 105 Erika
   {.class = CLASS_LEADER_9,         .multiplier = 30}, // Entry 106 Janine
   {.class = CLASS_LEADER_10,        .multiplier = 30}, // Entry 107 Sabrina
   {.class = CLASS_LEADER_11,        .multiplier = 30}, // Entry 108 Blaine
   {.class = CLASS_PKMN_TRAINER_9,   .multiplier = 50}, // Entry 109 Red
   {.class = CLASS_LEADER_12,        .multiplier = 40}, // Entry 110 Blue
   {.class = CLASS_ELDER,            .multiplier = 30}, // Entry 111 Li
   {.class = CLASS_ELITE_FOUR_3,     .multiplier = 40}, // Entry 112 Bruno
   {.class = CLASS_SCIENTIST,        .multiplier = 8}, // Entry 113
   {.class = CLASS_EXECUTIVE,        .multiplier = 35}, // Entry 114 Ariana
   {.class = CLASS_BOARDER,          .multiplier = 10}, // Entry 115
   {.class = CLASS_EXECUTIVE_0,      .multiplier = 40}, // Entry 116 Archer
   {.class = CLASS_EXECUTIVE_1,      .multiplier = 30}, // Entry 117 Proton
   {.class = CLASS_EXECUTIVE_2,      .multiplier = 30}, // Entry 118 Petrel
   {.class = CLASS_PASSERBY,         .multiplier = 25}, // Entry 119
   {.class = CLASS_MYSTERY_MAN,      .multiplier = 35}, // Entry 120 Eusine
   {.class = CLASS_DOUBLE_TEAM,      .multiplier = 20}, // Entry 121
   {.class = CLASS_YOUNG_COUPLE,     .multiplier = 20}, // Entry 122
   {.class = CLASS_PKMN_TRAINER_10,  .multiplier = 0}, // Entry 123 Lance backsprite
   {.class = CLASS_ROCKET_BOSS,      .multiplier = 45}, // Entry 124 Giovanni
   {.class = CLASS_PKMN_TRAINER_11,  .multiplier = 0}, // Entry 125 DP Lucas 2
   {.class = CLASS_PKMN_TRAINER_12,  .multiplier = 0}, // Entry 126 DP Dawn 2
   {.class = CLASS_PKMN_TRAINER_13,  .multiplier = 0}, // Entry 127 Pt Lucas
   {.class = CLASS_PKMN_TRAINER_14,  .multiplier = 0}, // Entry 128 Pt Dawn
};















