#include "../include/move_data.h"

const MoveSourceEntry sMoveSource[NUM_OF_MOVES + 1] = {
    [MOVE_NONE] = {
        .names = {
            .name = "-",
            .capsName = "-",
            .fullName = "-",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 0,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "\\n\\n\\n\\n",
    },

    [MOVE_POUND] = {
        .names = {
            .name = "Écras’Face",
            .capsName = "ÉCRAS’FACE",
            .fullName = "Écras’Face",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Ecrase l’ennemi\\navec les pattes\\navant, la queue, etc.",
    },

    [MOVE_KARATE_CHOP] = {
        .names = {
            .name = "Poing Karaté",
            .capsName = "POING KARATÉ",
            .fullName = "Poing Karaté",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’ennemi est tranché\\nviolemment. Taux de\\ncritiques élevé.",
    },

    [MOVE_DOUBLE_SLAP] = {
        .names = {
            .name = "Torgnoles",
            .capsName = "TORGNOLES",
            .fullName = "Torgnoles",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Gifle rapidement\\nl’ennemi de 2 à 5 fois\\nd’affilée.",
    },

    [MOVE_COMET_PUNCH] = {
        .names = {
            .name = "Poing Comète",
            .capsName = "POING COMÈTE",
            .fullName = "Poing Comète",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 18,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une tornade de coups\\nde poing qui frappe de\\n2 à 5 fois d’affilée.",
    },

    [MOVE_MEGA_PUNCH] = {
        .names = {
            .name = "Ultimapoing",
            .capsName = "ULTIMAPOING",
            .fullName = "Ultimapoing",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’ennemi reçoit un\\ncoup de poing d’une\\npuissance incroyable.",
    },

    [MOVE_PAY_DAY] = {
        .names = {
            .name = "Jackpot",
            .capsName = "JACKPOT",
            .fullName = "Jackpot",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_PRIZE_MONEY,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Des pièces sont\\nlancées sur l’ennemi.\\nPermet d’obtenir de\\nl’argent à la fin du\\ncombat.",
    },

    [MOVE_FIRE_PUNCH] = {
        .names = {
            .name = "Poing Feu",
            .capsName = "POING FEU",
            .fullName = "Poing Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un coup de poing\\nenflammé vient\\nfrapper l’ennemi. Peut\\nle brûler.",
    },

    [MOVE_ICE_PUNCH] = {
        .names = {
            .name = "Poing Glace",
            .capsName = "POING GLACE",
            .fullName = "Poing Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_FREEZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un coup de poing glacé\\nvient frapper\\nl’ennemi. Peut le\\ngeler.",
    },

    [MOVE_THUNDER_PUNCH] = {
        .names = {
            .name = "Poing Éclair",
            .capsName = "POING ÉCLAIR",
            .fullName = "Poing Éclair",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de poing\\nélectrique vient\\nfrapper l’ennemi. Peut\\nle paralyser.",
    },

    [MOVE_SCRATCH] = {
        .names = {
            .name = "Griffe",
            .capsName = "GRIFFE",
            .fullName = "Griffe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Lacère l’ennemi avec\\ndes griffes acérées\\npour lui infliger des\\ndégâts.",
    },

    [MOVE_VICE_GRIP] = {
        .names = {
            .name = "Force Poigne",
            .capsName = "FORCE POIGNE",
            .fullName = "Force Poigne",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 55,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "De gigantesques\\nbarres se saisissent\\nde l’ennemi pour\\nl’écraser.",
    },

    [MOVE_GUILLOTINE] = {
        .names = {
            .name = "Guillotine",
            .capsName = "GUILLOTINE",
            .fullName = "Guillotine",
        },
        .data = {
            .effect = MOVE_EFFECT_ONE_HIT_KO,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 30,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_COOL,
        },
        .description = "De méchantes pinces\\nlacèrent l’ennemi, le\\nmettant K.O. sur le\\ncoup s’il est touché.",
    },

    [MOVE_RAZOR_WIND] = {
        .names = {
            .name = "Coupe-Vent",
            .capsName = "COUPE-VENT",
            .fullName = "Coupe-Vent",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en 2 tours.\\nDes lames de vent\\nfrappent l’ennemi au\\n2⁴ tour. Taux de\\ncritiques élevé.",
    },

    [MOVE_SWORDS_DANCE] = {
        .names = {
            .name = "Danse Lames",
            .capsName = "DANSE LAMES",
            .fullName = "Danse Lames",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Danse frénétique qui\\nexalte l’esprit\\ncombatif. Augmente\\nconsidérablement\\nl’Attaque du lanceur.",
    },

    [MOVE_CUT] = {
        .names = {
            .name = "Coupe",
            .capsName = "COUPE",
            .fullName = "Coupe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_GRASS,
            .accuracy = 95,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Coupe l’ennemi avec\\ndes lames ou des\\ngriffes. Hors combat,\\npermet de couper des\\narbres fins.",
    },

    [MOVE_GUST] = {
        .names = {
            .name = "Tornade",
            .capsName = "TORNADE",
            .fullName = "Tornade",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_DAMAGE_FLY_OR_BOUNCE,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur bat des\\nailes pour générer\\nune bourrasque qui\\nblesse l’ennemi.",
    },

    [MOVE_WING_ATTACK] = {
        .names = {
            .name = "Cru-Ailes",
            .capsName = "CRU-AILES",
            .fullName = "Cru-Ailes",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "L’ennemi est frappé\\npar de larges ailes\\ndéployées pour\\ninfliger des dégâts.",
    },

    [MOVE_WHIRLWIND] = {
        .names = {
            .name = "Cyclone",
            .capsName = "CYCLONE",
            .fullName = "Cyclone",
        },
        .data = {
            .effect = MOVE_EFFECT_FORCE_SWITCH,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -6,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Ejecte le Pokémon\\nennemi et le remplace\\npar un autre. Dans la\\nnature, met fin au\\ncombat.",
    },

    [MOVE_FLY] = {
        .names = {
            .name = "Vol",
            .capsName = "VOL",
            .fullName = "Vol",
        },
        .data = {
            .effect = MOVE_EFFECT_FLY,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FLYING,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur s’envole\\nau 1¹ tour et frappe\\nau 2⁴. Permet aussi\\nd’être porté dans une\\nville connue.",
    },

    [MOVE_BIND] = {
        .names = {
            .name = "Étreinte",
            .capsName = "ÉTREINTE",
            .fullName = "Étreinte",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Ligote l’ennemi avec\\nles tentacules ou le\\ncorps pour l’écraser\\ndurant 2 à 5 tours.",
    },

    [MOVE_SLAM] = {
        .names = {
            .name = "Souplesse",
            .capsName = "SOUPLESSE",
            .fullName = "Souplesse",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 75,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Fouette l’ennemi\\navec la queue, une\\nliane, etc. pour\\ninfliger des dégâts.",
    },

    [MOVE_VINE_WHIP] = {
        .names = {
            .name = "Fouet Lianes",
            .capsName = "FOUET LIANES",
            .fullName = "Fouet Lianes",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 45,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Fouette l’ennemi avec\\nde fines lianes pour\\ninfliger des dégâts.",
    },

    [MOVE_STOMP] = {
        .names = {
            .name = "Écrasement",
            .capsName = "ÉCRASEMENT",
            .fullName = "Écrasement",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Écrase l’ennemi avec\\nun énorme pied. Peut\\naussi l’apeurer.",
    },

    [MOVE_DOUBLE_KICK] = {
        .names = {
            .name = "Double Pied",
            .capsName = "DOUBLE PIED",
            .fullName = "Double Pied",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Deux coups de pied\\nqui frappent l’ennemi\\ndeux fois d’affilée.",
    },

    [MOVE_MEGA_KICK] = {
        .names = {
            .name = "Ultimawashi",
            .capsName = "ULTIMAWASHI",
            .fullName = "Ultimawashi",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 75,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de pied\\nsuperpuissant et\\nintense qui frappe\\nl’ennemi.",
    },

    [MOVE_JUMP_KICK] = {
        .names = {
            .name = "Pied Sauté",
            .capsName = "PIED SAUTÉ",
            .fullName = "Pied Sauté",
        },
        .data = {
            .effect = MOVE_EFFECT_CRASH_ON_MISS,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur s’envole\\npour décocher un\\ncoup de pied sauté.\\nS’il échoue, le\\nlanceur se blesse.",
    },

    [MOVE_ROLLING_KICK] = {
        .names = {
            .name = "Mawashi Geri",
            .capsName = "MAWASHI GERI",
            .fullName = "Mawashi Geri",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIGHTING,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur effectue\\nun coup de pied\\ntournoyant et\\nextrêmement rapide.",
    },

    [MOVE_SAND_ATTACK] = {
        .names = {
            .name = "Jet de Sable",
            .capsName = "JET DE SABLE",
            .fullName = "Jet de Sable",
        },
        .data = {
            .effect = MOVE_EFFECT_ACC_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Lance du sable au\\nvisage de l’ennemi\\npour baisser sa\\nprécision.",
    },

    [MOVE_HEADBUTT] = {
        .names = {
            .name = "Coup d’Boule",
            .capsName = "COUP D’BOULE",
            .fullName = "Coup d’Boule",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur donne un\\ncoup de tête. Peut\\napeurer l’ennemi.\\nPeut faire tomber des\\nPokémon des arbres.",
    },

    [MOVE_HORN_ATTACK] = {
        .names = {
            .name = "Koud’Korne",
            .capsName = "KOUD’KORNE",
            .fullName = "Koud’Korne",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe l’ennemi d’un\\ncoup de corne pointue\\npour infliger des\\ndégâts.",
    },

    [MOVE_FURY_ATTACK] = {
        .names = {
            .name = "Furie",
            .capsName = "FURIE",
            .fullName = "Furie",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe l’ennemi 2 à 5\\nfois d’affilée avec un\\nbec ou une corne.",
    },

    [MOVE_HORN_DRILL] = {
        .names = {
            .name = "Empal’Korne",
            .capsName = "EMPAL’KORNE",
            .fullName = "Empal’Korne",
        },
        .data = {
            .effect = MOVE_EFFECT_ONE_HIT_KO,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 30,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de corne en\\nvrille qui empale\\nl’ennemi, le mettant\\nK.O. sur le coup s’il\\nest touché.",
    },

    [MOVE_TACKLE] = {
        .names = {
            .name = "Charge",
            .capsName = "CHARGE",
            .fullName = "Charge",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur charge\\nl’ennemi et le percute\\nde tout son corps.",
    },

    [MOVE_BODY_SLAM] = {
        .names = {
            .name = "Plaquage",
            .capsName = "PLAQUAGE",
            .fullName = "Plaquage",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur se laisse\\ntomber sur l’ennemi\\nde tout son poids.\\nPeut le paralyser.",
    },

    [MOVE_WRAP] = {
        .names = {
            .name = "Ligotage",
            .capsName = "LIGOTAGE",
            .fullName = "Ligotage",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur ligote\\nl’ennemi avec des\\nlianes ou son corps\\npour l’écraser durant\\n2 à 5 tours.",
    },

    [MOVE_TAKE_DOWN] = {
        .names = {
            .name = "Bélier",
            .capsName = "BÉLIER",
            .fullName = "Bélier",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_QUARTER,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une charge violente\\nqui blesse aussi\\nlégèrement le\\nlanceur.",
    },

    [MOVE_THRASH] = {
        .names = {
            .name = "Mania",
            .capsName = "MANIA",
            .fullName = "Mania",
        },
        .data = {
            .effect = MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_RANDOM_OPPONENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une attaque furieuse\\nqui dure de 2 à 3\\ntours. Le lanceur\\ndevient confus.",
    },

    [MOVE_DOUBLE_EDGE] = {
        .names = {
            .name = "Damoclès",
            .capsName = "DAMOCLÈS",
            .fullName = "Damoclès",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_THIRD,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une dangereuse\\ncharge. Inflige aussi\\ndes dégâts assez\\nimportants au\\nlanceur.",
    },

    [MOVE_TAIL_WHIP] = {
        .names = {
            .name = "Mimi-Queue",
            .capsName = "MIMI-QUEUE",
            .fullName = "Mimi-Queue",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur remue son\\nadorable queue pour\\ntromper la vigilance\\nde l’ennemi et baisser\\nsa Défense.",
    },

    [MOVE_POISON_STING] = {
        .names = {
            .name = "Dard-Venin",
            .capsName = "DARD-VENIN",
            .fullName = "Dard-Venin",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Un dard toxique qui\\ntransperce l’ennemi.\\nPeut aussi\\nl’empoisonner.",
    },

    [MOVE_TWINEEDLE] = {
        .names = {
            .name = "Double Dard",
            .capsName = "DOUBLE DARD",
            .fullName = "Double Dard",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Un double coup de\\ndards qui transperce\\nl’ennemi. Peut aussi\\nl’empoisonner.",
    },

    [MOVE_PIN_MISSILE] = {
        .names = {
            .name = "Dard-Nuée",
            .capsName = "DARD-NUÉE",
            .fullName = "Dard-Nuée",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_BUG,
            .accuracy = 95,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Envoie une rafale de\\ndards. Peut toucher\\nde 2 à 5 fois.",
    },

    [MOVE_LEER] = {
        .names = {
            .name = "Groz’Yeux",
            .capsName = "GROZ’YEUX",
            .fullName = "Groz’Yeux",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur fait les\\ngros yeux à l’ennemi\\npour l’intimider et\\nbaisser sa Défense.",
    },

    [MOVE_BITE] = {
        .names = {
            .name = "Morsure",
            .capsName = "MORSURE",
            .fullName = "Morsure",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’ennemi est mordu\\npar de tranchantes\\ncanines. Peut\\nl’apeurer.",
    },

    [MOVE_GROWL] = {
        .names = {
            .name = "Rugissement",
            .capsName = "RUGISSEMENT",
            .fullName = "Rugissement",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur pousse un\\ncri tout mimi pour\\ntromper la vigilance\\nde l’ennemi et baisser\\nson Attaque.",
    },

    [MOVE_ROAR] = {
        .names = {
            .name = "Hurlement",
            .capsName = "HURLEMENT",
            .fullName = "Hurlement",
        },
        .data = {
            .effect = MOVE_EFFECT_FORCE_SWITCH,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -6,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_COOL,
        },
        .description = "Effraie le Pokémon\\nennemi et le remplace\\npar un autre. Dans la\\nnature, met fin au\\ncombat.",
    },

    [MOVE_SING] = {
        .names = {
            .name = "Berceuse",
            .capsName = "BERCEUSE",
            .fullName = "Berceuse",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 55,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Une berceuse plonge\\nl’ennemi dans un\\nprofond sommeil.",
    },

    [MOVE_SUPERSONIC] = {
        .names = {
            .name = "Ultrason",
            .capsName = "ULTRASON",
            .fullName = "Ultrason",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_CONFUSE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 55,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur produit\\nd’étranges ondes\\nsonores qui\\nrendent confus.",
    },

    [MOVE_SONIC_BOOM] = {
        .names = {
            .name = "Sonic Boom",
            .capsName = "SONIC BOOM",
            .fullName = "Sonic Boom",
        },
        .data = {
            .effect = MOVE_EFFECT_10_DAMAGE_FLAT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Une onde de choc\\ndestructrice qui\\ninflige toujours 20 PV\\nde dégâts.",
    },

    [MOVE_DISABLE] = {
        .names = {
            .name = "Entrave",
            .capsName = "ENTRAVE",
            .fullName = "Entrave",
        },
        .data = {
            .effect = MOVE_EFFECT_DISABLE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Empêche l’ennemi\\nd’employer à nouveau\\nsa dernière attaque.\\nDure plusieurs tours.",
    },

    [MOVE_ACID] = {
        .names = {
            .name = "Acide",
            .capsName = "ACIDE",
            .fullName = "Acide",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur attaque\\nl’ennemi avec un jet\\nd’acide corrosif. Peut\\naussi baisser la Déf.\\nSpé. de l’ennemi.",
    },

    [MOVE_EMBER] = {
        .names = {
            .name = "Flammèche",
            .capsName = "FLAMMÈCHE",
            .fullName = "Flammèche",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "L’ennemi est attaqué\\npar de faibles\\nflammes. Peut aussi le\\nbrûler.",
    },

    [MOVE_FLAMETHROWER] = {
        .names = {
            .name = "Lance-Flammes",
            .capsName = "LANCE-FLAMMES",
            .fullName = "Lance-Flammes",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "L’ennemi reçoit un\\ntorrent de flammes.\\nPeut aussi le brûler.",
    },

    [MOVE_MIST] = {
        .names = {
            .name = "Brume",
            .capsName = "BRUME",
            .fullName = "Brume",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_STAT_REDUCTION,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une brume blanche\\nenveloppe l’équipe du\\nlanceur et empêche la\\nréduction des stats\\npour 5 tours.",
    },

    [MOVE_WATER_GUN] = {
        .names = {
            .name = "Pistolet à O",
            .capsName = "PISTOLET À O",
            .fullName = "Pistolet à O",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_CUTE,
        },
        .description = "De l’eau est projetée\\nsur l’ennemi en arc de\\ncercle.",
    },

    [MOVE_HYDRO_PUMP] = {
        .names = {
            .name = "Hydrocanon",
            .capsName = "HYDROCANON",
            .fullName = "Hydrocanon",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_WATER,
            .accuracy = 80,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un puissant jet d’eau\\nest dirigé sur\\nl’ennemi.",
    },

    [MOVE_SURF] = {
        .names = {
            .name = "Surf",
            .capsName = "SURF",
            .fullName = "Surf",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_DAMAGE_DIVE,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une énorme vague\\ns’abat sur le champ\\nde bataille. Permet\\naussi de voyager sur\\nl’eau.",
    },

    [MOVE_ICE_BEAM] = {
        .names = {
            .name = "Laser Glace",
            .capsName = "LASER GLACE",
            .fullName = "Laser Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_FREEZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un rayon de glace\\nfrappe l’ennemi. Peut\\naussi le geler.",
    },

    [MOVE_BLIZZARD] = {
        .names = {
            .name = "Blizzard",
            .capsName = "BLIZZARD",
            .fullName = "Blizzard",
        },
        .data = {
            .effect = MOVE_EFFECT_BLIZZARD,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_ICE,
            .accuracy = 70,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une violente tempête\\nde neige est\\ndéclenchée sur\\nl’ennemi. Peut aussi\\nle geler.",
    },

    [MOVE_PSYBEAM] = {
        .names = {
            .name = "Rafale Psy",
            .capsName = "RAFALE PSY",
            .fullName = "Rafale Psy",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un étrange rayon\\nfrappe l’ennemi. Peut\\naussi le rendre\\nconfus.",
    },

    [MOVE_BUBBLE_BEAM] = {
        .names = {
            .name = "Bulles d’O",
            .capsName = "BULLES D’O",
            .fullName = "Bulles d’O",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Des bulles sont\\nenvoyées avec\\npuissance sur\\nl’ennemi. Peut aussi\\nbaisser sa Vitesse.",
    },

    [MOVE_AURORA_BEAM] = {
        .names = {
            .name = "Onde Boréale",
            .capsName = "ONDE BORÉALE",
            .fullName = "Onde Boréale",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Envoie un rayon\\narc-en-ciel sur\\nl’ennemi. Peut aussi\\nbaisser son Attaque.",
    },

    [MOVE_HYPER_BEAM] = {
        .names = {
            .name = "Ultralaser",
            .capsName = "ULTRALASER",
            .fullName = "Ultralaser",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette un puissant\\nrayon sur l’ennemi. Le\\nlanceur doit se\\nreposer au tour\\nsuivant.",
    },

    [MOVE_PECK] = {
        .names = {
            .name = "Picpic",
            .capsName = "PICPIC",
            .fullName = "Picpic",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 35,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe l’ennemi d’un\\nbec pointu ou d’une\\ncorne pour infliger\\ndes dégâts.",
    },

    [MOVE_DRILL_PECK] = {
        .names = {
            .name = "Bec Vrille",
            .capsName = "BEC VRILLE",
            .fullName = "Bec Vrille",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque utilisant\\nle bec comme une\\nperceuse.",
    },

    [MOVE_SUBMISSION] = {
        .names = {
            .name = "Sacrifice",
            .capsName = "SACRIFICE",
            .fullName = "Sacrifice",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_QUARTER,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_FIGHTING,
            .accuracy = 80,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur agrippe\\nl’ennemi et l’écrase\\nau sol. Blesse aussi\\nlégèrement le\\nlanceur.",
    },

    [MOVE_LOW_KICK] = {
        .names = {
            .name = "Balayage",
            .capsName = "BALAYAGE",
            .fullName = "Balayage",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Un puissant coup de\\npied bas qui fauche\\nl’ennemi. Il est plus\\nefficace contre les\\nennemis lourds.",
    },

    [MOVE_COUNTER] = {
        .names = {
            .name = "Riposte",
            .capsName = "RIPOSTE",
            .fullName = "Riposte",
        },
        .data = {
            .effect = MOVE_EFFECT_COUNTER,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = -5,
            .flags = FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une riposte qui\\ncontre toute attaque\\nphysique en infligeant\\nle double de dégâts.",
    },

    [MOVE_SEISMIC_TOSS] = {
        .names = {
            .name = "Frappe Atlas",
            .capsName = "FRAPPE ATLAS",
            .fullName = "Frappe Atlas",
        },
        .data = {
            .effect = MOVE_EFFECT_LEVEL_DAMAGE_FLAT,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’ennemi est projeté\\ngrâce au pouvoir de\\nla gravité. Inflige des\\ndégâts équivalents au\\nniveau du lanceur.",
    },

    [MOVE_STRENGTH] = {
        .names = {
            .name = "Force",
            .capsName = "FORCE",
            .fullName = "Force",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur cogne\\nl’ennemi de toute sa\\nforce. Permet aussi\\nde déplacer des\\nrochers.",
    },

    [MOVE_ABSORB] = {
        .names = {
            .name = "Vole-Vie",
            .capsName = "VOLE-VIE",
            .fullName = "Vole-Vie",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 20,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque\\nqui convertit la\\nmoitié des dégâts\\ninfligés en PV.",
    },

    [MOVE_MEGA_DRAIN] = {
        .names = {
            .name = "Méga-Sangsue",
            .capsName = "MÉGA-SANGSUE",
            .fullName = "Méga-Sangsue",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque\\nqui convertit la\\nmoitié des dégâts\\ninfligés en PV.",
    },

    [MOVE_LEECH_SEED] = {
        .names = {
            .name = "Vampigraine",
            .capsName = "VAMPIGRAINE",
            .fullName = "Vampigraine",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_LEECH_SEED,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_SMART,
        },
        .description = "Une graine est semée\\nsur l’ennemi. A chaque\\ntour, elle lui dérobe\\ndes PV que le lanceur\\nrécupère.",
    },

    [MOVE_GROWTH] = {
        .names = {
            .name = "Croissance",
            .capsName = "CROISSANCE",
            .fullName = "Croissance",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = ((CHAMPIONS_TYPE_CHANGES) ? (TYPE_GRASS) : (TYPE_NORMAL)),
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le corps du lanceur\\nse développe.\\nAugmente l’Atq. Spé.",
    },

    [MOVE_RAZOR_LEAF] = {
        .names = {
            .name = "Tranch’Herbe",
            .capsName = "TRANCH’HERBE",
            .fullName = "Tranch’Herbe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 55,
            .type = TYPE_GRASS,
            .accuracy = 95,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Des feuilles aiguisées\\ncomme des rasoirs\\nentaillent l’ennemi.\\nTaux de critiques\\nélevé.",
    },

    [MOVE_SOLAR_BEAM] = {
        .names = {
            .name = "Lance-Soleil",
            .capsName = "LANCE-SOLEIL",
            .fullName = "Lance-Soleil",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Absorbe la lumière\\nau premier tour et\\nenvoie un rayon\\npuissant au tour\\nsuivant.",
    },

    [MOVE_POISON_POWDER] = {
        .names = {
            .name = "Poudre Toxik",
            .capsName = "POUDRE TOXIK",
            .fullName = "Poudre Toxik",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_POISON,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 75,
            .pp = 35,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Une poudre toxique\\nest lâchée sur\\nl’ennemi. Peut\\nl’empoisonner.",
    },

    [MOVE_STUN_SPORE] = {
        .names = {
            .name = "Para-Spore",
            .capsName = "PARA-SPORE",
            .fullName = "Para-Spore",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_PARALYZE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 75,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur répand\\nsur l’ennemi une\\npoudre qui peut le\\nparalyser.",
    },

    [MOVE_SLEEP_POWDER] = {
        .names = {
            .name = "Poudre Dodo",
            .capsName = "POUDRE DODO",
            .fullName = "Poudre Dodo",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 75,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur répand une\\npoudre soporifique\\nsur l’ennemi. Peut\\nl’endormir.",
    },

    [MOVE_PETAL_DANCE] = {
        .names = {
            .name = "Danse Fleurs",
            .capsName = "DANSE FLEURS",
            .fullName = "Danse Fleurs",
        },
        .data = {
            .effect = MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_RANDOM_OPPONENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur attaque en\\nprojetant des pétales\\npendant 2 à 3 tours\\navant de céder à\\nla confusion.",
    },

    [MOVE_STRING_SHOT] = {
        .names = {
            .name = "Sécrétion",
            .capsName = "SÉCRÉTION",
            .fullName = "Sécrétion",
        },
        .data = {
            .effect = MOVE_EFFECT_SPEED_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 95,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur crache de\\nla soie pour ligoter\\nl’ennemi. Peut baisser\\nla Vitesse de l’ennemi.",
    },

    [MOVE_DRAGON_RAGE] = {
        .names = {
            .name = "Draco-Rage",
            .capsName = "DRACO-RAGE",
            .fullName = "Draco-Rage",
        },
        .data = {
            .effect = MOVE_EFFECT_40_DAMAGE_FLAT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Une onde de choc\\ndestructrice qui\\ninflige toujours 40 PV\\nde dégâts.",
    },

    [MOVE_FIRE_SPIN] = {
        .names = {
            .name = "Danse Flammes",
            .capsName = "DANSE FLAMMES",
            .fullName = "Danse Flammes",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_SPECIAL,
            .power = 35,
            .type = TYPE_FIRE,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un tourbillon de\\nflammes emprisonne\\nl’ennemi pendant 2 à 5\\ntours.",
    },

    [MOVE_THUNDER_SHOCK] = {
        .names = {
            .name = "Éclair",
            .capsName = "ÉCLAIR",
            .fullName = "Éclair",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Une décharge\\nélectrique tombe sur\\nl’ennemi. Peut aussi le\\nparalyser.",
    },

    [MOVE_THUNDERBOLT] = {
        .names = {
            .name = "Tonnerre",
            .capsName = "TONNERRE",
            .fullName = "Tonnerre",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Une grosse décharge\\nélectrique tombe sur\\nl’ennemi. Peut aussi le\\nparalyser.",
    },

    [MOVE_THUNDER_WAVE] = {
        .names = {
            .name = "Cage Éclair",
            .capsName = "CAGE ÉCLAIR",
            .fullName = "Cage Éclair",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_PARALYZE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 90,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_COOL,
        },
        .description = "Un faible choc\\nélectrique frappe\\nl’ennemi. Si l’attaque\\ntouche, l’ennemi est\\nparalysé.",
    },

    [MOVE_THUNDER] = {
        .names = {
            .name = "Fatal-Foudre",
            .capsName = "FATAL-FOUDRE",
            .fullName = "Fatal-Foudre",
        },
        .data = {
            .effect = MOVE_EFFECT_THUNDER,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_ELECTRIC,
            .accuracy = 70,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "La foudre tombe sur\\nl’ennemi pour lui\\ninfliger des dégâts.\\nPeut aussi le\\nparalyser.",
    },

    [MOVE_ROCK_THROW] = {
        .names = {
            .name = "Jet-Pierres",
            .capsName = "JET-PIERRES",
            .fullName = "Jet-Pierres",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur lâche une\\npierre sur l’ennemi.",
    },

    [MOVE_EARTHQUAKE] = {
        .names = {
            .name = "Séisme",
            .capsName = "SÉISME",
            .fullName = "Séisme",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_DAMAGE_DIG,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur provoque\\nun tremblement de\\nterre touchant tous\\nles autres Pokémon\\nau combat.",
    },

    [MOVE_FISSURE] = {
        .names = {
            .name = "Abîme",
            .capsName = "ABÎME",
            .fullName = "Abîme",
        },
        .data = {
            .effect = MOVE_EFFECT_ONE_HIT_KO,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_GROUND,
            .accuracy = 30,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur fait tomber\\nl’ennemi dans une\\ncrevasse. Si cette\\nattaque réussit, elle\\nmet K.O. sur le coup.",
    },

    [MOVE_DIG] = {
        .names = {
            .name = "Tunnel",
            .capsName = "TUNNEL",
            .fullName = "Tunnel",
        },
        .data = {
            .effect = MOVE_EFFECT_DIG,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur creuse au\\n1¹ tour et frappe au\\n2⁴. Permet aussi de\\ns’échapper d’un\\ndonjon.",
    },

    [MOVE_TOXIC] = {
        .names = {
            .name = "Toxik",
            .capsName = "TOXIK",
            .fullName = "Toxik",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_BADLY_POISON,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Empoisonne gravement\\nl’ennemi. Les dégâts\\ndus au poison\\naugmentent à chaque\\ntour.",
    },

    [MOVE_CONFUSION] = {
        .names = {
            .name = "Choc Mental",
            .capsName = "CHOC MENTAL",
            .fullName = "Choc Mental",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Une faible vague\\ntélékinésique frappe\\nl’ennemi. Peut aussi\\nle plonger dans la\\nconfusion.",
    },

    [MOVE_PSYCHIC] = {
        .names = {
            .name = "Psyko",
            .capsName = "PSYKO",
            .fullName = "Psyko",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une puissante force\\ntélékinésique frappe\\nl’ennemi. Peut aussi\\nfaire baisser sa Déf.\\nSpé.",
    },

    [MOVE_HYPNOSIS] = {
        .names = {
            .name = "Hypnose",
            .capsName = "HYPNOSE",
            .fullName = "Hypnose",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 60,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur hypnotise\\nl’ennemi pour le\\nplonger dans un\\nprofond sommeil.",
    },

    [MOVE_MEDITATE] = {
        .names = {
            .name = "Yoga",
            .capsName = "YOGA",
            .fullName = "Yoga",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur médite\\npour éveiller son\\npouvoir latent et\\naugmenter son\\nAttaque.",
    },

    [MOVE_AGILITY] = {
        .names = {
            .name = "Hâte",
            .capsName = "HÂTE",
            .fullName = "Hâte",
        },
        .data = {
            .effect = MOVE_EFFECT_SPEED_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur se relaxe\\net allège son corps\\npour augmenter\\nconsidérablement sa\\nVitesse.",
    },

    [MOVE_QUICK_ATTACK] = {
        .names = {
            .name = "Vive-attaque",
            .capsName = "VIVE-ATTAQUE",
            .fullName = "Vive-attaque",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur fonce sur\\nl’ennemi si rapidement\\nqu’on parvient à peine\\nà le discerner. Frappe\\nen premier.",
    },

    [MOVE_RAGE] = {
        .names = {
            .name = "Frénésie",
            .capsName = "FRÉNÉSIE",
            .fullName = "Frénésie",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ATK_WHEN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 20,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "Une fois activée,\\ncette capacité gagne\\nen efficacité à mesure\\nque le lanceur subit\\ndes dégâts.",
    },

    [MOVE_TELEPORT] = {
        .names = {
            .name = "Téléport",
            .capsName = "TÉLÉPORT",
            .fullName = "Téléport",
        },
        .data = {
            .effect = MOVE_EFFECT_FLEE_FROM_WILD_BATTLE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = -6,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Permet de fuir un\\nPokémon sauvage.\\nPermet aussi de\\nrevenir au dernier\\nCentre Pokémon.",
    },

    [MOVE_NIGHT_SHADE] = {
        .names = {
            .name = "Ombre Nocturne",
            .capsName = "OMBRE NOCTURNE",
            .fullName = "Ombre Nocturne",
        },
        .data = {
            .effect = MOVE_EFFECT_LEVEL_DAMAGE_FLAT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur invoque\\nun mirage. Inflige des\\ndégâts équivalents\\nau niveau du lanceur.",
    },

    [MOVE_MIMIC] = {
        .names = {
            .name = "Copie",
            .capsName = "COPIE",
            .fullName = "Copie",
        },
        .data = {
            .effect = MOVE_EFFECT_COPY_MOVE_FOR_BATTLE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur imite la\\ndernière capacité\\nutilisée par l’ennemi,\\npeut l’utiliser pour\\nle reste du combat.",
    },

    [MOVE_SCREECH] = {
        .names = {
            .name = "Grincement",
            .capsName = "GRINCEMENT",
            .fullName = "Grincement",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_SMART,
        },
        .description = "Cri strident qui baisse\\nbeaucoup la Défense\\nennemie.",
    },

    [MOVE_DOUBLE_TEAM] = {
        .names = {
            .name = "Reflet",
            .capsName = "REFLET",
            .fullName = "Reflet",
        },
        .data = {
            .effect = MOVE_EFFECT_EVA_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur se déplace\\nsi vite qu’il crée des\\ncopies illusoires de\\nlui, augmentant\\nson esquive.",
    },

    [MOVE_RECOVER] = {
        .names = {
            .name = "Soin",
            .capsName = "SOIN",
            .fullName = "Soin",
        },
        .data = {
            .effect = MOVE_EFFECT_RESTORE_HALF_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_SMART,
        },
        .description = "Un soin qui permet au\\nlanceur de récupérer\\njusqu’à la moitié de\\nses PV max.",
    },

    [MOVE_HARDEN] = {
        .names = {
            .name = "Armure",
            .capsName = "ARMURE",
            .fullName = "Armure",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur contracte\\ntous ses muscles pour\\naugmenter sa\\nDéfense.",
    },

    [MOVE_MINIMIZE] = {
        .names = {
            .name = "Lilliput",
            .capsName = "LILLIPUT",
            .fullName = "Lilliput",
        },
        .data = {
            .effect = MOVE_EFFECT_EVA_UP_2_MINIMIZE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur comprime\\nson corps pour se\\nfaire tout petit et\\naugmenter son\\nesquive.",
    },

    [MOVE_SMOKESCREEN] = {
        .names = {
            .name = "Brouillard",
            .capsName = "BROUILLARD",
            .fullName = "Brouillard",
        },
        .data = {
            .effect = MOVE_EFFECT_ACC_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur disperse\\nun nuage d’encre ou\\nde fumée. Réduit la\\nprécision de l’ennemi.",
    },

    [MOVE_CONFUSE_RAY] = {
        .names = {
            .name = "Onde Folie",
            .capsName = "ONDE FOLIE",
            .fullName = "Onde Folie",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_CONFUSE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_SMART,
        },
        .description = "Un rayon sinistre\\nqui plonge l’ennemi\\ndans un état de\\nconfusion.",
    },

    [MOVE_WITHDRAW] = {
        .names = {
            .name = "Repli",
            .capsName = "REPLI",
            .fullName = "Repli",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur se\\nrecroqueville dans sa\\ncarapace, ce qui\\naugmente sa Défense.",
    },

    [MOVE_DEFENSE_CURL] = {
        .names = {
            .name = "Boul’Armure",
            .capsName = "BOUL’ARMURE",
            .fullName = "Boul’Armure",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur s’enroule\\npour cacher ses\\npoints faibles, ce qui\\naugmente sa Défense.",
    },

    [MOVE_BARRIER] = {
        .names = {
            .name = "Bouclier",
            .capsName = "BOUCLIER",
            .fullName = "Bouclier",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur érige un\\nmur solide qui\\naugmente fortement\\nsa Défense.",
    },

    [MOVE_LIGHT_SCREEN] = {
        .names = {
            .name = "Mur Lumière",
            .capsName = "MUR LUMIÈRE",
            .fullName = "Mur Lumière",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_LIGHT_SCREEN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un fabuleux mur de\\nlumière qui réduit les\\ndégâts causés par les\\nattaques spéciales\\ndurant 5 tours.",
    },

    [MOVE_HAZE] = {
        .names = {
            .name = "Buée Noire",
            .capsName = "BUÉE NOIRE",
            .fullName = "Buée Noire",
        },
        .data = {
            .effect = MOVE_EFFECT_RESET_STAT_CHANGES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un brouillard qui\\nannule les \\nchangements\\nde stats de tous les\\nPokémon au combat.",
    },

    [MOVE_REFLECT] = {
        .names = {
            .name = "Protection",
            .capsName = "PROTECTION",
            .fullName = "Protection",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_REFLECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_SMART,
        },
        .description = "Un fabuleux mur de\\nlumière qui réduit les\\ndégâts causés par les\\nattaques physiques\\ndurant 5 tours.",
    },

    [MOVE_FOCUS_ENERGY] = {
        .names = {
            .name = "Puissance",
            .capsName = "PUISSANCE",
            .fullName = "Puissance",
        },
        .data = {
            .effect = MOVE_EFFECT_CRIT_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur prend une\\nprofonde respiration\\net se concentre pour\\naugmenter son taux\\nde critiques.",
    },

    [MOVE_BIDE] = {
        .names = {
            .name = "Patience",
            .capsName = "PATIENCE",
            .fullName = "Patience",
        },
        .data = {
            .effect = MOVE_EFFECT_BIDE,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur encaisse\\nles coups durant 2\\ntours et réplique en\\ninfligeant le double\\ndes dégâts subis.",
    },

    [MOVE_METRONOME] = {
        .names = {
            .name = "Métronome",
            .capsName = "MÉTRONOME",
            .fullName = "Métronome",
        },
        .data = {
            .effect = MOVE_EFFECT_CALL_RANDOM_MOVE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Agite un doigt et\\nstimule le cerveau\\npour utiliser presque\\nn’importe quelle\\ncapacité au hasard.",
    },

    [MOVE_MIRROR_MOVE] = {
        .names = {
            .name = "Mimique",
            .capsName = "MIMIQUE",
            .fullName = "Mimique",
        },
        .data = {
            .effect = MOVE_EFFECT_COPY_MOVE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur contre\\nl’attaque de l’ennemi\\navec la même\\nattaque.",
    },

    [MOVE_SELF_DESTRUCT] = {
        .names = {
            .name = "Destruction",
            .capsName = "DESTRUCTION",
            .fullName = "Destruction",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_DEFENSE,
            .split = SPLIT_PHYSICAL,
            .power = 200,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur explose\\nen blessant tous les\\nautres Pokémon au\\ncombat. Le lanceur\\ntombe K.O.",
    },

    [MOVE_EGG_BOMB] = {
        .names = {
            .name = "Bombe Œuf",
            .capsName = "BOMBE ŒUF",
            .fullName = "Bombe Œuf",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_NORMAL,
            .accuracy = 75,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "De toutes ses forces,\\nle lanceur jette un\\ngros œuf sur l’ennemi\\npour lui infliger des\\ndégâts.",
    },

    [MOVE_LICK] = {
        .names = {
            .name = "Léchouille",
            .capsName = "LÉCHOUILLE",
            .fullName = "Léchouille",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Un grand coup de\\nlangue qui inflige des\\ndégâts à l’ennemi.\\nPeut aussi le\\nparalyser.",
    },

    [MOVE_SMOG] = {
        .names = {
            .name = "Purédpois",
            .capsName = "PURÉDPOIS",
            .fullName = "Purédpois",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_SPECIAL,
            .power = 30,
            .type = TYPE_POISON,
            .accuracy = 70,
            .pp = 20,
            .effectChance = 40,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque à\\nl’aide d’une éruption\\nde gaz répugnants.\\nPeut aussi\\nempoisonner l’ennemi.",
    },

    [MOVE_SLUDGE] = {
        .names = {
            .name = "Détritus",
            .capsName = "DÉTRITUS",
            .fullName = "Détritus",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Des détritus toxiques\\nsont projetés sur\\nl’ennemi. Peut aussi\\nl’empoisonner.",
    },

    [MOVE_BONE_CLUB] = {
        .names = {
            .name = "Massd’Os",
            .capsName = "MASSD’OS",
            .fullName = "Massd’Os",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_GROUND,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur frappe\\nl’ennemi à grands\\ncoups d’os. Peut\\naussi apeurer\\nl’ennemi.",
    },

    [MOVE_FIRE_BLAST] = {
        .names = {
            .name = "Déflagration",
            .capsName = "DÉFLAGRATION",
            .fullName = "Déflagration",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_FIRE,
            .accuracy = 85,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un déluge de flammes\\nardentes submerge\\nl’ennemi. Peut aussi le\\nbrûler.",
    },

    [MOVE_WATERFALL] = {
        .names = {
            .name = "Cascade",
            .capsName = "CASCADE",
            .fullName = "Cascade",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur charge\\nl’ennemi à une vitesse\\nremarquable. Permet\\naussi de franchir une\\ncascade.",
    },

    [MOVE_CLAMP] = {
        .names = {
            .name = "Claquoir",
            .capsName = "CLAQUOIR",
            .fullName = "Claquoir",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 35,
            .type = TYPE_WATER,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur piège\\nl’ennemi dans sa dure\\ncoquille et l’écrase\\npendant 2 à 5 tours.",
    },

    [MOVE_SWIFT] = {
        .names = {
            .name = "Météores",
            .capsName = "MÉTÉORES",
            .fullName = "Météores",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur envoie des\\nrayons d’étoiles.\\nTouche toujours\\nl’ennemi.",
    },

    [MOVE_SKULL_BASH] = {
        .names = {
            .name = "Coud’Krâne",
            .capsName = "COUD’KRÂNE",
            .fullName = "Coud’Krâne",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_DEF_UP,
            .split = SPLIT_PHYSICAL,
            .power = 130,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur baisse la\\ntête pour augmenter\\nsa Défense au 1¹\\ntour et percuter\\nl’ennemi au 2⁴.",
    },

    [MOVE_SPIKE_CANNON] = {
        .names = {
            .name = "Picanon",
            .capsName = "PICANNON",
            .fullName = "Picanon",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 20,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Une rafale de pointes\\naiguisées s’abat sur\\nl’ennemi. Inflige de 2\\nà 5 coups.",
    },

    [MOVE_CONSTRICT] = {
        .names = {
            .name = "Constriction",
            .capsName = "CONSTRICTION",
            .fullName = "Constriction",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 35,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_TOUGH,
        },
        .description = "De longs tentacules\\nou lianes attaquent\\nl’ennemi. Peut aussi\\nbaisser sa Vitesse.",
    },

    [MOVE_AMNESIA] = {
        .names = {
            .name = "Amnésie",
            .capsName = "AMNÉSIE",
            .fullName = "Amnésie",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_DEF_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur fait le vide\\ndans son esprit pour\\noublier ses soucis.\\nAugmente fortement\\nsa Déf. Spé.",
    },

    [MOVE_KINESIS] = {
        .names = {
            .name = "Télékinésie",
            .capsName = "TÉLÉKINÉSIE",
            .fullName = "Télékinésie",
        },
        .data = {
            .effect = MOVE_EFFECT_ACC_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 80,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur distrait\\nl’ennemi en pliant\\nune cuillère. Peut\\nbaisser la précision\\nde l’ennemi.",
    },

    [MOVE_SOFT_BOILED] = {
        .names = {
            .name = "E-Coque",
            .capsName = "E-COQUE",
            .fullName = "E-Coque",
        },
        .data = {
            .effect = MOVE_EFFECT_RESTORE_HALF_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur récupère\\njusqu’à la moitié de\\nses PV max. En\\ndehors des combats,\\nrestaure des PV.",
    },

    [MOVE_HIGH_JUMP_KICK] = {
        .names = {
            .name = "Pied Voltige",
            .capsName = "PIED VOLTIGE",
            .fullName = "Pied Voltige",
        },
        .data = {
            .effect = MOVE_EFFECT_CRASH_ON_MISS,
            .split = SPLIT_PHYSICAL,
            .power = 130,
            .type = TYPE_FIGHTING,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur s’élance\\npour effectuer un\\ncoup de genou sauté.\\nS’il échoue, le\\nlanceur se blesse.",
    },

    [MOVE_GLARE] = {
        .names = {
            .name = "Regard Médusant",
            .capsName = "REGARD MÉDUSANT",
            .fullName = "Regard Médusant",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_PARALYZE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur intimide\\nl’ennemi grâce à son\\nregard terrifiant\\npour le paralyser.",
    },

    [MOVE_DREAM_EATER] = {
        .names = {
            .name = "Dévorêve",
            .capsName = "DÉVORÊVE",
            .fullName = "Dévorêve",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_DAMAGE_SLEEP,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Attaque réservée aux\\nennemis endormis. Le\\nlanceur récupère en\\nPV la moitié des\\ndégâts infligés.",
    },

    [MOVE_POISON_GAS] = {
        .names = {
            .name = "Gaz Toxik",
            .capsName = "GAZ TOXIK",
            .fullName = "Gaz Toxik",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_POISON,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 90,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Un nuage de gaz\\ntoxique est projeté\\nau visage de l’ennemi.\\nPeut l’empoisonner.",
    },

    [MOVE_BARRAGE] = {
        .names = {
            .name = "Pilonnage",
            .capsName = "PILONNAGE",
            .fullName = "Pilonnage",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Projette de 2 à 5\\ngrosses boules sur\\nl’ennemi.",
    },

    [MOVE_LEECH_LIFE] = {
        .names = {
            .name = "Vampirisme",
            .capsName = "VAMPIRISME",
            .fullName = "Vampirisme",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque qui aspire\\nle sang de l’ennemi.\\nLa moitié des dégâts\\nsont convertis en\\nPV pour le lanceur.",
    },

    [MOVE_LOVELY_KISS] = {
        .names = {
            .name = "Grobisou",
            .capsName = "GROBISOU",
            .fullName = "Grobisou",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 75,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur fait un\\nbisou à l’ennemi en\\nprenant une mine\\neffrayante. Peut\\nendormir l’ennemi.",
    },

    [MOVE_SKY_ATTACK] = {
        .names = {
            .name = "Piqué",
            .capsName = "PIQUÉ",
            .fullName = "Piqué",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH,
            .split = SPLIT_PHYSICAL,
            .power = 140,
            .type = TYPE_FLYING,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque en 2\\ntours au taux de\\ncritiques élevé. Peut\\naussi apeurer\\nl’ennemi.",
    },

    [MOVE_TRANSFORM] = {
        .names = {
            .name = "Morphing",
            .capsName = "MORPHING",
            .fullName = "Morphing",
        },
        .data = {
            .effect = MOVE_EFFECT_TRANSFORM,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur devient\\nune copie de l’ennemi\\net obtient la même\\npalette de capacités.",
    },

    [MOVE_BUBBLE] = {
        .names = {
            .name = "Écume",
            .capsName = "ÉCUME",
            .fullName = "Écume",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Des bulles frappent\\nl’ennemi. Peut réduire\\nsa Vitesse.",
    },

    [MOVE_DIZZY_PUNCH] = {
        .names = {
            .name = "Uppercut",
            .capsName = "UPPERCUT",
            .fullName = "Uppercut",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Un enchaînement de\\ncoups de poing\\ncadencés. Peut\\naussi rendre confus.",
    },

    [MOVE_SPORE] = {
        .names = {
            .name = "Spore",
            .capsName = "SPORE",
            .fullName = "Spore",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur répand un\\nnuage de spores qui\\nendort.",
    },

    [MOVE_FLASH] = {
        .names = {
            .name = "Flash",
            .capsName = "FLASH",
            .fullName = "Flash",
        },
        .data = {
            .effect = MOVE_EFFECT_ACC_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Explosion lumineuse\\nqui fait baisser la\\nprécision de l’ennemi.\\nPermet aussi d’éclai-\\nrer les grottes.",
    },

    [MOVE_PSYWAVE] = {
        .names = {
            .name = "Vague Psy",
            .capsName = "VAGUE PSY",
            .fullName = "Vague Psy",
        },
        .data = {
            .effect = MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Une étrange onde\\nd’énergie chaude\\nfrappe l’ennemi.\\nCette attaque est\\nd’intensité variable.",
    },

    [MOVE_SPLASH] = {
        .names = {
            .name = "Trempette",
            .capsName = "TREMPETTE",
            .fullName = "Trempette",
        },
        .data = {
            .effect = MOVE_EFFECT_DO_NOTHING,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur barbote\\net éclabousse les\\nenvirons. Cette\\ncapacité n’a aucun\\neffet.",
    },

    [MOVE_ACID_ARMOR] = {
        .names = {
            .name = "Acidarmure",
            .capsName = "ACIDARMURE",
            .fullName = "Acidarmure",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur modifie sa\\nstructure moléculaire\\npour se liquéfier et\\naugmenter fortement\\nsa Défense.",
    },

    [MOVE_CRABHAMMER] = {
        .names = {
            .name = "Pince-Masse",
            .capsName = "PINCE-MASSE",
            .fullName = "Pince-Masse",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_WATER,
            .accuracy = ((CHAMPIONS_ACC_CHANGES) ? (95) : (90)),
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une grande pince\\nmartèle l’ennemi.\\nCette capacité a un\\ntaux de critiques\\nélevé.",
    },

    [MOVE_EXPLOSION] = {
        .names = {
            .name = "Explosion",
            .capsName = "EXPLOSION",
            .fullName = "Explosion",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_DEFENSE,
            .split = SPLIT_PHYSICAL,
            .power = 250,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur explose et\\ninflige des dégâts à\\ntous les autres\\nPokémon au combat.\\nMet K.O. le lanceur.",
    },

    [MOVE_FURY_SWIPES] = {
        .names = {
            .name = "Combo-Griffe",
            .capsName = "COMBO-GRIFFE",
            .fullName = "Combo-Griffe",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 18,
            .type = TYPE_NORMAL,
            .accuracy = 80,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’ennemi est lacéré\\npar des faux ou des\\ngriffes de 2 à 5\\nfois.",
    },

    [MOVE_BONEMERANG] = {
        .names = {
            .name = "Osmerang",
            .capsName = "OSMERANG",
            .fullName = "Osmerang",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_GROUND,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur projette\\nson os comme un\\nboomerang. Cette\\nattaque frappe à\\nl’aller et au retour.",
    },

    [MOVE_REST] = {
        .names = {
            .name = "Repos",
            .capsName = "REPOS",
            .fullName = "Repos",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur dort\\npendant 2 tours. Il\\nregagne tous ses PV\\net n’a plus de\\nproblèmes de statut.",
    },

    [MOVE_ROCK_SLIDE] = {
        .names = {
            .name = "Éboulement",
            .capsName = "ÉBOULEMENT",
            .fullName = "Éboulement",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Envoie de gros\\nrochers sur l’ennemi\\npour infliger des\\ndégâts. Peut aussi\\nl’apeurer.",
    },

    [MOVE_HYPER_FANG] = {
        .names = {
            .name = "Croc de Mort",
            .capsName = "CROC DE MORT",
            .fullName = "Croc de Mort",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur mord\\nl’ennemi à l’aide de\\nses incisives\\naiguisées. Peut aussi\\napeurer l’ennemi.",
    },

    [MOVE_SHARPEN] = {
        .names = {
            .name = "Affûtage",
            .capsName = "AFFÛTAGE",
            .fullName = "Affûtage",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur réduit son\\nnombre de polygones\\npour accentuer ses\\nangles et augmenter\\nson Attaque.",
    },

    [MOVE_CONVERSION] = {
        .names = {
            .name = "Conversion",
            .capsName = "CONVERSION",
            .fullName = "Conversion",
        },
        .data = {
            .effect = MOVE_EFFECT_CONVERSION,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur change\\nde type pour prendre\\ncelui de l’une de\\nses capacités.",
    },

    [MOVE_TRI_ATTACK] = {
        .names = {
            .name = "Triplattaque",
            .capsName = "TRIPLATTAQUE",
            .fullName = "Triplattaque",
        },
        .data = {
            .effect = MOVE_EFFECT_RANDOM_PRIMARY_STATUS_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur envoie\\ntrois boules d’énergie\\nsimultanément. Peut\\naussi paralyser, brû-\\nler ou geler l’ennemi.",
    },

    [MOVE_SUPER_FANG] = {
        .names = {
            .name = "Croc Fatal",
            .capsName = "CROC FATAL",
            .fullName = "Croc Fatal",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_HP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une vilaine morsure\\nd’incisives qui réduit\\nde moitié les PV de\\nl’ennemi.",
    },

    [MOVE_SLASH] = {
        .names = {
            .name = "Tranche",
            .capsName = "TRANCHE",
            .fullName = "Tranche",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (80) : (70)),
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de griffe ou\\nautre tranche\\nl’ennemi. Taux de\\ncritiques élevé.",
    },

    [MOVE_SUBSTITUTE] = {
        .names = {
            .name = "Clonage",
            .capsName = "CLONAGE",
            .fullName = "Clonage",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_SUBSTITUTE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur fait une\\ncopie de lui-même en\\nsacrifiant quelques\\nPV. La copie sert de\\nleurre.",
    },

    [MOVE_STRUGGLE] = {
        .names = {
            .name = "Lutte",
            .capsName = "LUTTE",
            .fullName = "Lutte",
        },
        .data = {
            .effect = MOVE_EFFECT_STRUGGLE,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque \\ndésespérée, lancée\\nquand le lanceur n’a\\nplus de PP. Le blesse\\naussi légèrement.",
    },

    [MOVE_SKETCH] = {
        .names = {
            .name = "Gribouille",
            .capsName = "GRIBOUILLE",
            .fullName = "Gribouille",
        },
        .data = {
            .effect = MOVE_EFFECT_LEARN_MOVE_PERMANENT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur apprend\\nle dernier coup\\nutilisé par l’ennemi.\\nGribouille disparaît\\naprès utilisation.",
    },

    [MOVE_TRIPLE_KICK] = {
        .names = {
            .name = "Triple Pied",
            .capsName = "TRIPLE PIED",
            .fullName = "Triple Pied",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_THREE_TIMES_INCREMENT_BASE_POWER_10,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_FIGHTING,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Une salve de 1 à 3\\ncoups de pied dont\\nla puissance augmente\\nà chaque coup porté.",
    },

    [MOVE_THIEF] = {
        .names = {
            .name = "Larcin",
            .capsName = "LARCIN",
            .fullName = "Larcin",
        },
        .data = {
            .effect = MOVE_EFFECT_STEAL_HELD_ITEM,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque\\nl’ennemi et vole son\\nobjet. Le lanceur ne\\npeut rien voler s’il\\ntient déjà un objet.",
    },

    [MOVE_SPIDER_WEB] = {
        .names = {
            .name = "Toile",
            .capsName = "TOILE",
            .fullName = "Toile",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur enserre\\nl’ennemi à l’aide d’une\\nfine soie gluante pour\\nl’empêcher de fuir le\\ncombat.",
    },

    [MOVE_MIND_READER] = {
        .names = {
            .name = "Lire-Esprit",
            .capsName = "LIRE-ESPRIT",
            .fullName = "Lire-Esprit",
        },
        .data = {
            .effect = MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur analyse les\\nmouvements de\\nl’ennemi pour être\\nplus sûr de toucher\\nau coup suivant.",
    },

    [MOVE_NIGHTMARE] = {
        .names = {
            .name = "Cauchemar",
            .capsName = "CAUCHEMAR",
            .fullName = "Cauchemar",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_NIGHTMARE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Un cauchemar qui\\ninflige des dégâts à\\nchaque tour à un\\nennemi endormi.",
    },

    [MOVE_FLAME_WHEEL] = {
        .names = {
            .name = "Roue de Feu",
            .capsName = "ROUE DE FEU",
            .fullName = "Roue de Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_THAW_AND_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur s’entoure\\nde feu et charge\\nl’ennemi. Peut aussi\\nbrûler l’ennemi.",
    },

    [MOVE_SNORE] = {
        .names = {
            .name = "Ronflement",
            .capsName = "RONFLEMENT",
            .fullName = "Ronflement",
        },
        .data = {
            .effect = MOVE_EFFECT_DAMAGE_WHILE_ASLEEP,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_CUTE,
        },
        .description = "Une attaque qui ne\\nfonctionne que si le\\nlanceur est endormi.\\nLe boucan peut aussi\\napeurer l’ennemi.",
    },

    [MOVE_CURSE] = {
        .names = {
            .name = "Malédiction",
            .capsName = "MALÉDICTION",
            .fullName = "Malédiction",
        },
        .data = {
            .effect = MOVE_EFFECT_CURSE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une capacité qui\\nfonctionne\\ndifféremment pour\\nles Pokémon Spectre.",
    },

    [MOVE_FLAIL] = {
        .names = {
            .name = "Gigotage",
            .capsName = "GIGOTAGE",
            .fullName = "Gigotage",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur fait\\ntournoyer son fléau.\\nPlus ses PV sont bas,\\nplus l’attaque est\\npuissante.",
    },

    [MOVE_CONVERSION_2] = {
        .names = {
            .name = "Conversion 2",
            .capsName = "CONVERSION 2",
            .fullName = "Conversion 2",
        },
        .data = {
            .effect = MOVE_EFFECT_CONVERSION2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur change\\nde type pour être\\nrésistant au type de\\nla dernière attaque\\nqui l’a touché.",
    },

    [MOVE_AEROBLAST] = {
        .names = {
            .name = "Aéroblast",
            .capsName = "AÉROBLAST",
            .fullName = "Aéroblast",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_SPECIAL,
            .power = 200,
            .type = TYPE_FLYING,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur projette\\nune tornade sur\\nl’ennemi pour infliger\\ndes dégâts. Taux de\\ncritiques élevé.",
    },

    [MOVE_COTTON_SPORE] = {
        .names = {
            .name = "Spore Coton",
            .capsName = "SPORE COTON",
            .fullName = "Spore Coton",
        },
        .data = {
            .effect = MOVE_EFFECT_SPEED_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur libère des\\nspores cotonneuses\\nqui collent à l’ennemi\\net baissent fortement\\nsa Vitesse.",
    },

    [MOVE_REVERSAL] = {
        .names = {
            .name = "Contre",
            .capsName = "CONTRE",
            .fullName = "Contre",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur ne retient\\nplus ses coups. Plus\\nses PV sont bas et\\nplus l’attaque est\\npuissante.",
    },

    [MOVE_SPITE] = {
        .names = {
            .name = "Dépit",
            .capsName = "DÉPIT",
            .fullName = "Dépit",
        },
        .data = {
            .effect = MOVE_EFFECT_DECREASE_LAST_MOVE_PP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur exprime\\nson ressentiment\\nen retirant 4 PP de\\nla dernière attaque\\nde l’ennemi.",
    },

    [MOVE_POWDER_SNOW] = {
        .names = {
            .name = "Poudreuse",
            .capsName = "POUDREUSE",
            .fullName = "Poudreuse",
        },
        .data = {
            .effect = MOVE_EFFECT_FREEZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur projette\\nde la neige poudreuse.\\nPeut aussi geler\\nl’ennemi.",
    },

    [MOVE_PROTECT] = {
        .names = {
            .name = "Abri",
            .capsName = "ABRI",
            .fullName = "Abri",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur esquive les\\nattaques. Plus la\\ncapacité est utilisée\\nd’affilée, plus elle\\nrisque d’échouer.",
    },

    [MOVE_MACH_PUNCH] = {
        .names = {
            .name = "Mach Punch",
            .capsName = "MACH PUNCH",
            .fullName = "Mach Punch",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Coup de poing\\nfulgurant. Frappe en\\npremier.",
    },

    [MOVE_SCARY_FACE] = {
        .names = {
            .name = "Grimace",
            .capsName = "GRIMACE",
            .fullName = "Grimace",
        },
        .data = {
            .effect = MOVE_EFFECT_SPEED_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une grimace qui\\neffraie l’ennemi et\\nréduit fortement\\nsa Vitesse.",
    },

    [MOVE_FEINT_ATTACK] = {
        .names = {
            .name = "Feinte",
            .capsName = "FEINTE",
            .fullName = "Feinte",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur s’approche\\nl’air de rien avant de\\nfrapper par surprise.\\nN’échoue jamais.",
    },

    [MOVE_SWEET_KISS] = {
        .names = {
            .name = "Doux Baiser",
            .capsName = "DOUX BAISER",
            .fullName = "Doux Baiser",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_CONFUSE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 75,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur envoie\\nun bisou si mignon\\net désarmant qu’il\\nplonge l’ennemi dans\\nla confusion.",
    },

    [MOVE_BELLY_DRUM] = {
        .names = {
            .name = "Cognobidon",
            .capsName = "COGNOBIDON",
            .fullName = "Cognobidon",
        },
        .data = {
            .effect = MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Améliore l’Attaque\\nau maximum en\\nsacrifiant la moitié\\ndes PV max.",
    },

    [MOVE_SLUDGE_BOMB] = {
        .names = {
            .name = "Bombe Beurk",
            .capsName = "BOMBE BEURK",
            .fullName = "Bombe Beurk",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Envoie des détritus\\nsur l’ennemi. Peut\\naussi l’empoisonner.",
    },

    [MOVE_MUD_SLAP] = {
        .names = {
            .name = "Coud’Boue",
            .capsName = "COUD’BOUE",
            .fullName = "Coud’Boue",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = 20,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur envoie de\\nla boue au visage de\\nl’ennemi pour infliger\\ndes dégâts et baisser\\nsa précision.",
    },

    [MOVE_OCTAZOOKA] = {
        .names = {
            .name = "Octazooka",
            .capsName = "OCTAZOOKA",
            .fullName = "Octazooka",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_WATER,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque en\\nprojetant de l’encre \\nau visage de l’ennemi.\\nPeut aussi baisser la\\nprécision de l’ennemi.",
    },

    [MOVE_SPIKES] = {
        .names = {
            .name = "Picots",
            .capsName = "PICOTS",
            .fullName = "Picots",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_SPIKES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_OPPONENT_SIDE,
            .priority = 0,
            .flags = FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur disperse\\ndes piquants sur le\\nsol pour blesser les\\nPokémon qui entrent\\nau combat.",
    },

    [MOVE_ZAP_CANNON] = {
        .names = {
            .name = "Élecanon",
            .capsName = "ÉLECANON",
            .fullName = "Élecanon",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_ELECTRIC,
            .accuracy = 50,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Un boulet de canon\\nélectrifié qui inflige\\ndes dégâts et peut\\nparalyser l’ennemi.",
    },

    [MOVE_FORESIGHT] = {
        .names = {
            .name = "Clairvoyance",
            .capsName = "CLAIRVOYANCE",
            .fullName = "Clairvoyance",
        },
        .data = {
            .effect = MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Permet de toucher un\\nPokémon Spectre avec\\nn’importe quelle capa-\\ncité et de toucher un\\nennemi insaisissable.",
    },

    [MOVE_DESTINY_BOND] = {
        .names = {
            .name = "Lien du Destin",
            .capsName = "LIEN DU DESTIN",
            .fullName = "Lien du Destin",
        },
        .data = {
            .effect = MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Quand cette capacité\\nest activée, elle met\\nK.O. un ennemi qui\\nporte un coup fatal\\nau lanceur.",
    },

    [MOVE_PERISH_SONG] = {
        .names = {
            .name = "Requiem",
            .capsName = "REQUIEM",
            .fullName = "Requiem",
        },
        .data = {
            .effect = MOVE_EFFECT_ALL_FAINT_3_TURNS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un Pokémon qui\\nentend ce requiem est\\nK.O. dans 3 tours à\\nmoins qu’il ne quitte\\nle combat.",
    },

    [MOVE_ICY_WIND] = {
        .names = {
            .name = "Vent Glace",
            .capsName = "VENT GLACE",
            .fullName = "Vent Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 55,
            .type = TYPE_ICE,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une bourrasque de\\nvent froid blesse\\nl’ennemi. Réduit aussi\\nsa Vitesse.",
    },

    [MOVE_DETECT] = {
        .names = {
            .name = "Détection",
            .capsName = "DÉTECTION",
            .fullName = "Détection",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Permet d’esquiver\\ntoutes les attaques.\\nPlus on l’utilise\\nd’affilée, plus elle a\\nde chances d’échouer.",
    },

    [MOVE_BONE_RUSH] = {
        .names = {
            .name = "Charge Os",
            .capsName = "CHARGE OS",
            .fullName = "Charge Os",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (30) : (25)),
            .type = TYPE_GROUND,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur frappe\\nl’ennemi 2 à 5 fois\\navec un os.",
    },

    [MOVE_LOCK_ON] = {
        .names = {
            .name = "Verrouillage",
            .capsName = "VERROUILLAGE",
            .fullName = "Verrouillage",
        },
        .data = {
            .effect = MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Verrouille l’ennemi\\npour ne pas le rater\\nau tour suivant.",
    },

    [MOVE_OUTRAGE] = {
        .names = {
            .name = "Colère",
            .capsName = "COLÈRE",
            .fullName = "Colère",
        },
        .data = {
            .effect = MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_RANDOM_OPPONENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur laisse\\néclater sa rage et\\nattaque pendant 2 à\\n3 tours avant de\\ncéder à la confusion.",
    },

    [MOVE_SANDSTORM] = {
        .names = {
            .name = "TempêteDeSable",
            .capsName = "TEMPÊTEDESABLE",
            .fullName = "Tempête de Sable",
        },
        .data = {
            .effect = MOVE_EFFECT_WEATHER_SANDSTORM,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une tempête de sable\\nde 5 tours qui blesse\\ntous les Pokémon sauf\\nles types Roche, Sol\\net Acier.",
    },

    [MOVE_GIGA_DRAIN] = {
        .names = {
            .name = "Giga-Sangsue",
            .capsName = "GIGA-SANGSUE",
            .fullName = "Giga-Sangsue",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque qui\\nconvertit la moitié\\ndes dégâts infligés\\nen PV.",
    },

    [MOVE_ENDURE] = {
        .names = {
            .name = "Ténacité",
            .capsName = "TÉNACITÉ",
            .fullName = "Ténacité",
        },
        .data = {
            .effect = MOVE_EFFECT_SURVIVE_WITH_1_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur résiste\\naux attaques avec\\n1 PV. Peut échouer\\nsi utilisé plusieurs\\nfois de suite.",
    },

    [MOVE_CHARM] = {
        .names = {
            .name = "Charme",
            .capsName = "CHARME",
            .fullName = "Charme",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur fait les\\nyeux doux pour berner\\nl’ennemi et réduire\\nconsidérablement\\nson Attaque.",
    },

    [MOVE_ROLLOUT] = {
        .names = {
            .name = "Roulade",
            .capsName = "ROULADE",
            .fullName = "Roulade",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Un rocher roule sur\\nl’ennemi pendant 5\\ntours. L’attaque \\ngagne en puissance\\nà chaque coup.",
    },

    [MOVE_FALSE_SWIPE] = {
        .names = {
            .name = "Faux-Chage",
            .capsName = "FAUX-CHAGE",
            .fullName = "Faux-Chage",
        },
        .data = {
            .effect = MOVE_EFFECT_LEAVE_WITH_1_HP,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur retient\\nses coups pour que\\nl’ennemi garde au\\nmoins 1 PV et ne\\ntombe pas K.O.",
    },

    [MOVE_SWAGGER] = {
        .names = {
            .name = "Vantardise",
            .capsName = "VANTARDISE",
            .fullName = "Vantardise",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Fait enrager l’ennemi\\net le plonge dans la\\nconfusion, mais\\naugmente fortement\\nson Attaque.",
    },

    [MOVE_MILK_DRINK] = {
        .names = {
            .name = "Lait à Boire",
            .capsName = "LAIT À BOIRE",
            .fullName = "Lait à Boire",
        },
        .data = {
            .effect = MOVE_EFFECT_RESTORE_HALF_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_USER_SIDE,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Restaure jusqu’à la\\nmoitié des PV max du\\nlanceur. En dehors\\ndes combats,\\nrestaure des PV.",
    },

    [MOVE_SPARK] = {
        .names = {
            .name = "Étincelle",
            .capsName = "ÉTINCELLE",
            .fullName = "Étincelle",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Lance une charge\\nélectrique sur\\nl’ennemi. Peut aussi\\nle paralyser.",
    },

    [MOVE_FURY_CUTTER] = {
        .names = {
            .name = "Taillade",
            .capsName = "TAILLADE",
            .fullName = "Taillade",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_EACH_TURN,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_BUG,
            .accuracy = 95,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de faux ou de\\ngriffe dont la force\\naugmente quand il\\ntouche plusieurs fois\\nd’affilée.",
    },

    [MOVE_STEEL_WING] = {
        .names = {
            .name = "Ailes d’Acier",
            .capsName = "AILES D’ACIER",
            .fullName = "Ailes d’Acier",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_DEF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_STEEL,
            .accuracy = 90,
            .pp = 25,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe\\nl’ennemi avec des\\nailes d’acier. Peut\\naussi augmenter la\\nDéfense du lanceur.",
    },

    [MOVE_MEAN_LOOK] = {
        .names = {
            .name = "Regard Noir",
            .capsName = "REGARD NOIR",
            .fullName = "Regard Noir",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur pétrifie\\nl’ennemi en lui lançant\\nun regard noir. Il\\ndevient incapable de\\ns’enfuir.",
    },

    [MOVE_ATTRACT] = {
        .names = {
            .name = "Attraction",
            .capsName = "ATTRACTION",
            .fullName = "Attraction",
        },
        .data = {
            .effect = MOVE_EFFECT_INFATUATE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Si l’ennemi est du\\nsexe opposé, il tombe\\namoureux et rechigne\\nalors à attaquer.",
    },

    [MOVE_SLEEP_TALK] = {
        .names = {
            .name = "Blabla Dodo",
            .capsName = "BLABLA DODO",
            .fullName = "Blabla Dodo",
        },
        .data = {
            .effect = MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur utilise un\\nde ses coup au hasard\\nen dormant.",
    },

    [MOVE_HEAL_BELL] = {
        .names = {
            .name = "Glas de Soin",
            .capsName = "GLAS DE SOIN",
            .fullName = "Glas de Soin",
        },
        .data = {
            .effect = MOVE_EFFECT_CURE_PARTY_STATUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Carillon apaisant qui\\nsoigne les problèmes\\nde statut de tous les\\nPokémon de l’équipe.",
    },

    [MOVE_RETURN] = {
        .names = {
            .name = "Retour",
            .capsName = "RETOUR",
            .fullName = "Retour",
        },
        .data = {
            .effect = MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Une attaque furieuse\\ndont la puissance\\naugmente quand le\\nPokémon apprécie\\nson Dresseur.",
    },

    [MOVE_PRESENT] = {
        .names = {
            .name = "Cadeau",
            .capsName = "CADEAU",
            .fullName = "Cadeau",
        },
        .data = {
            .effect = MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur attaque en\\noffrant un cadeau\\npiégé à l’ennemi. Peut\\nà l’inverse restaurer\\ncertains de ses PV.",
    },

    [MOVE_FRUSTRATION] = {
        .names = {
            .name = "Frustration",
            .capsName = "FRUSTRATION",
            .fullName = "Frustration",
        },
        .data = {
            .effect = MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Moins le Pokémon aime\\nson Dresseur, plus\\ncette attaque est\\npuissante.",
    },

    [MOVE_SAFEGUARD] = {
        .names = {
            .name = "Rune Protect",
            .capsName = "RUNE PROTECT",
            .fullName = "Rune Protect",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_STATUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Champ protecteur\\nempêchant tous les\\nproblèmes de statut\\npendant 5 tours.",
    },

    [MOVE_PAIN_SPLIT] = {
        .names = {
            .name = "Balance",
            .capsName = "BALANCE",
            .fullName = "Balance",
        },
        .data = {
            .effect = MOVE_EFFECT_AVERAGE_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur ajoute\\nses PV à ceux d’un\\nautre Pokémon\\net les répartit\\néquitablement.",
    },

    [MOVE_SACRED_FIRE] = {
        .names = {
            .name = "Feu Sacré",
            .capsName = "FEU SACRÉ",
            .fullName = "Feu Sacré",
        },
        .data = {
            .effect = MOVE_EFFECT_THAW_AND_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 200,
            .type = TYPE_FIRE,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un feu mystique\\nd’une intensité\\nredoutable attaque\\nl’ennemi. Peut aussi\\nle brûler.",
    },

    [MOVE_MAGNITUDE] = {
        .names = {
            .name = "Ampleur",
            .capsName = "AMPLEUR",
            .fullName = "Ampleur",
        },
        .data = {
            .effect = MOVE_EFFECT_RANDOM_POWER_10_CASES,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Un tremblement\\nde terre d’intensité\\nvariable qui affecte\\ntous les autres\\nPokémon au combat.",
    },

    [MOVE_DYNAMIC_PUNCH] = {
        .names = {
            .name = "Dynamo-Poing",
            .capsName = "DYNAMO-POING",
            .fullName = "Dynamo-Poing",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 50,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur rassemble\\nses forces et envoie\\nun coup de poing à\\nl’ennemi. S’il est\\ntouché, il est confus.",
    },

    [MOVE_MEGAHORN] = {
        .names = {
            .name = "Mégacorne",
            .capsName = "MÉGACORNE",
            .fullName = "Mégacorne",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_BUG,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise ses\\ngigantesques cornes\\npour charger\\nl’ennemi.",
    },

    [MOVE_DRAGON_BREATH] = {
        .names = {
            .name = "Draco-Souffle",
            .capsName = "DRACO-SOUFFLE",
            .fullName = "Draco-Souffle",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur souffle\\nfort sur l’ennemi pour\\ninfliger des dégâts.\\nPeut aussi le\\nparalyser.",
    },

    [MOVE_BATON_PASS] = {
        .names = {
            .name = "Relais",
            .capsName = "RELAIS",
            .fullName = "Relais",
        },
        .data = {
            .effect = MOVE_EFFECT_PASS_STATS_AND_STATUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur échange\\nsa place et tout\\nchangement de stat\\navec un Pokémon de\\nl’équipe.",
    },

    [MOVE_ENCORE] = {
        .names = {
            .name = "Encore",
            .capsName = "ENCORE",
            .fullName = "Encore",
        },
        .data = {
            .effect = MOVE_EFFECT_ENCORE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Oblige l’ennemi à\\nrépéter sa dernière\\ncapacité durant 3 à 7\\ntours.",
    },

    [MOVE_PURSUIT] = {
        .names = {
            .name = "Poursuite",
            .capsName = "POURSUITE",
            .fullName = "Poursuite",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_BEFORE_SWITCH,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque qui inflige\\ndeux fois plus de\\ndégâts à un ennemi qui\\nquitte le combat.",
    },

    [MOVE_RAPID_SPIN] = {
        .names = {
            .name = "Tour Rapide",
            .capsName = "TOUR RAPIDE",
            .fullName = "Tour Rapide",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_HAZARDS_AND_BINDING,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque\\ntournoyante pouvant\\naussi annuler par ex.\\nEtreinte, Ligotage,\\nVampigraine ou Picots.",
    },

    [MOVE_SWEET_SCENT] = {
        .names = {
            .name = "Doux Parfum",
            .capsName = "DOUX PARFUM",
            .fullName = "Doux Parfum",
        },
        .data = {
            .effect = MOVE_EFFECT_EVA_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Un doux parfum qui\\nréduit l’esquive de\\nl’ennemi. Attire aussi\\nles Pokémon sauvages.",
    },

    [MOVE_IRON_TAIL] = {
        .names = {
            .name = "Queue de Fer",
            .capsName = "QUEUE DE FER",
            .fullName = "Queue de Fer",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_STEEL,
            .accuracy = 75,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque l’ennemi avec\\nune queue de fer.\\nPeut aussi baisser la\\nDéfense de l’ennemi.",
    },

    [MOVE_METAL_CLAW] = {
        .names = {
            .name = "Griffe Acier",
            .capsName = "GRIFFE ACIER",
            .fullName = "Griffe Acier",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_STEEL,
            .accuracy = 95,
            .pp = 35,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec des\\ngriffes d’acier. Peut\\naussi augmenter\\nl’Attaque du lanceur.",
    },

    [MOVE_VITAL_THROW] = {
        .names = {
            .name = "Corps Perdu",
            .capsName = "CORPS PERDU",
            .fullName = "Corps Perdu",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur laisse\\nl’ennemi porter le\\n1¹ coup. En échange,\\ncette capacité\\nn’échoue jamais.",
    },

    [MOVE_MORNING_SUN] = {
        .names = {
            .name = "Aurore",
            .capsName = "AURORE",
            .fullName = "Aurore",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un soin qui restaure\\ndes PV au lanceur.\\nSon efficacité varie\\nen fonction de la\\nmétéo.",
    },

    [MOVE_SYNTHESIS] = {
        .names = {
            .name = "Synthèse",
            .capsName = "SYNTHÈSE",
            .fullName = "Synthèse",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_SMART,
        },
        .description = "Un soin qui restaure\\ndes PV au lanceur.\\nSon efficacité varie\\nen fonction de la\\nmétéo.",
    },

    [MOVE_MOONLIGHT] = {
        .names = {
            .name = "Rayon Lune",
            .capsName = "RAYON LUNE",
            .fullName = "Rayon Lune",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un soin qui restaure\\ndes PV au lanceur.\\nSon efficacité varie\\nen fonction de la\\nmétéo.",
    },

    [MOVE_HIDDEN_POWER] = {
        .names = {
            .name = "Puis. Cachée",
            .capsName = "PUIS. CACHÉE",
            .fullName = "Puissance Cachée",
        },
        .data = {
            .effect = MOVE_EFFECT_RANDOM_TYPE_BASED_ON_IVS,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Attaque dont la\\npuissance et le type\\ndépendent du Pokémon\\nqui l’utilise.",
    },

    [MOVE_CROSS_CHOP] = {
        .names = {
            .name = "Coup Croix",
            .capsName = "COUP CROIX",
            .fullName = "Coup Croix",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 80,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur délivre un\\ncoup double en\\ncroisant les\\navant-bras. Taux de\\ncritiques élevé.",
    },

    [MOVE_TWISTER] = {
        .names = {
            .name = "Ouragan",
            .capsName = "OURAGAN",
            .fullName = "Ouragan",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_DOUBLE_DAMAGE_FLY_OR_BOUNCE,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Déclenche un terrible\\nouragan sur l’ennemi.\\nPeut aussi l’apeurer.",
    },

    [MOVE_RAIN_DANCE] = {
        .names = {
            .name = "Danse Pluie",
            .capsName = "DANSE PLUIE",
            .fullName = "Danse Pluie",
        },
        .data = {
            .effect = MOVE_EFFECT_WEATHER_RAIN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Invoque de fortes\\npluies qui durent 5\\ntours et améliorent\\nles capacités de type\\nEau.",
    },

    [MOVE_SUNNY_DAY] = {
        .names = {
            .name = "Zénith",
            .capsName = "ZÉNITH",
            .fullName = "Zénith",
        },
        .data = {
            .effect = MOVE_EFFECT_WEATHER_SUN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIRE,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Fait briller le soleil\\npendant 5 tours et\\naméliore les capacités\\nde type Feu.",
    },

    [MOVE_CRUNCH] = {
        .names = {
            .name = "Mâchouille",
            .capsName = "MÂCHOUILLE",
            .fullName = "Mâchouille",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur mord\\nl’ennemi de ses crocs\\npointus. Peut aussi\\nbaisser la Défense de\\nl’ennemi.",
    },

    [MOVE_MIRROR_COAT] = {
        .names = {
            .name = "Voile Miroir",
            .capsName = "VOILE MIROIR",
            .fullName = "Voile Miroir",
        },
        .data = {
            .effect = MOVE_EFFECT_MIRROR_COAT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = -5,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une riposte qui contre\\nn’importe quelle\\nattaque spéciale en\\ninfligeant le double\\ndes dégâts subis.",
    },

    [MOVE_PSYCH_UP] = {
        .names = {
            .name = "Boost",
            .capsName = "BOOST",
            .fullName = "Boost",
        },
        .data = {
            .effect = MOVE_EFFECT_COPY_STAT_CHANGES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_SMART,
        },
        .description = "Une autohypnose qui\\npermet au lanceur de\\ncopier les\\nchangements de\\nstats de l’ennemi.",
    },

    [MOVE_EXTREME_SPEED] = {
        .names = {
            .name = "Vitesse Extrême",
            .capsName = "VITESSE EXTRÊME",
            .fullName = "Vitesse Extrême",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 2,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur charge\\nà une vitesse\\nrenversante.\\nCette attaque a\\nl’initiative.",
    },

    [MOVE_ANCIENT_POWER] = {
        .names = {
            .name = "Pouvoir Antique",
            .capsName = "POUVOIR ANTIQUE",
            .fullName = "Pouvoir Antique",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ALL_STATS_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une attaque\\npréhistorique qui peut\\naugmenter toutes\\nles stats du lanceur\\nd’un seul coup.",
    },

    [MOVE_SHADOW_BALL] = {
        .names = {
            .name = "Ball’Ombre",
            .capsName = "BALL’OMBRE",
            .fullName = "Ball’Ombre",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Projette une grande\\nombre sur l’ennemi.\\nPeut aussi faire\\nbaisser sa Déf. Spé.",
    },

    [MOVE_FUTURE_SIGHT] = {
        .names = {
            .name = "Prescience",
            .capsName = "PRESCIENCE",
            .fullName = "Prescience",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_IN_3_TURNS,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "De l’énergie psychique\\nvient frapper l’ennemi\\n2 tours après\\nl’utilisation de cette\\ncapacité.",
    },

    [MOVE_ROCK_SMASH] = {
        .names = {
            .name = "Éclate-Roc",
            .capsName = "ÉCLATE-ROC",
            .fullName = "Éclate-Roc",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur porte un\\ncoup dévastateur à\\nl’ennemi. Permet aussi\\nde briser des rochers\\nfissurés.",
    },

    [MOVE_WHIRLPOOL] = {
        .names = {
            .name = "Siphon",
            .capsName = "SIPHON",
            .fullName = "Siphon",
        },
        .data = {
            .effect = MOVE_EFFECT_WHIRLPOOL,
            .split = SPLIT_SPECIAL,
            .power = 35,
            .type = TYPE_WATER,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Piège l’ennemi dans\\nune trombe d’eau\\npendant 2 à 5 tours.\\nPermet de franchir\\nles tourbillons.",
    },

    [MOVE_BEAT_UP] = {
        .names = {
            .name = "Baston",
            .capsName = "BASTON",
            .fullName = "Baston",
        },
        .data = {
            .effect = MOVE_EFFECT_BEAT_UP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur appelle les\\nPokémon de l’équipe\\nà attaquer. Plus ils\\nsont nombreux, plus\\nil y a de dégâts.",
    },

    [MOVE_FAKE_OUT] = {
        .names = {
            .name = "Bluff",
            .capsName = "BLUFF",
            .fullName = "Bluff",
        },
        .data = {
            .effect = MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 3,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Permet de frapper en\\npremier et apeure\\nl’ennemi. Elle ne\\nfonctionne qu’au\\npremier tour.",
    },

    [MOVE_UPROAR] = {
        .names = {
            .name = "Brouhaha",
            .capsName = "BROUHAHA",
            .fullName = "Brouhaha",
        },
        .data = {
            .effect = MOVE_EFFECT_UPROAR,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_RANDOM_OPPONENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur attaque\\nen rugissant durant\\n2 à 5 tours. Pendant\\nce temps, personne\\nne peut s’endormir.",
    },

    [MOVE_STOCKPILE] = {
        .names = {
            .name = "Stockage",
            .capsName = "STOCKAGE",
            .fullName = "Stockage",
        },
        .data = {
            .effect = MOVE_EFFECT_STOCKPILE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur accumule\\nde la puissance et\\naugmente sa Défense\\net sa Déf. Spé. Peut\\nêtre utilisé 3 fois.",
    },

    [MOVE_SPIT_UP] = {
        .names = {
            .name = "Relâche",
            .capsName = "RELÂCHE",
            .fullName = "Relâche",
        },
        .data = {
            .effect = MOVE_EFFECT_SPIT_UP,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Libère dans une\\nattaque la puissance\\nprécédemment\\naccumulée avec\\nStockage.",
    },

    [MOVE_SWALLOW] = {
        .names = {
            .name = "Avale",
            .capsName = "AVALE",
            .fullName = "Avale",
        },
        .data = {
            .effect = MOVE_EFFECT_SWALLOW,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur absorbe la\\npuissance accumulée\\navec Stockage pour\\nrestaurer ses PV.",
    },

    [MOVE_HEAT_WAVE] = {
        .names = {
            .name = "Canicule",
            .capsName = "CANICULE",
            .fullName = "Canicule",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 95,
            .type = TYPE_FIRE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur provoque\\nune vague de\\nchaleur. Peut aussi\\nbrûler l’ennemi.",
    },

    [MOVE_HAIL] = {
        .names = {
            .name = "Grêle",
            .capsName = "GRÊLE",
            .fullName = "Grêle",
        },
        .data = {
            .effect = MOVE_EFFECT_WEATHER_HAIL,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Invoque une tempête\\nde grêle qui dure 5\\ntours. Ne blesse pas\\nles Pokémon de type\\nGlace.",
    },

    [MOVE_TORMENT] = {
        .names = {
            .name = "Tourmente",
            .capsName = "TOURMENTE",
            .fullName = "Tourmente",
        },
        .data = {
            .effect = MOVE_EFFECT_TORMENT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur irrite\\nl’ennemi pour\\nl’empêcher d’utiliser\\nla même capacité\\n2 fois de suite.",
    },

    [MOVE_FLATTER] = {
        .names = {
            .name = "Flatterie",
            .capsName = "FLATTERIE",
            .fullName = "Flatterie",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Rend l’ennemi\\nconfus, mais\\naugmente son\\nAtq. Spé.",
    },

    [MOVE_WILL_O_WISP] = {
        .names = {
            .name = "Feu Follet",
            .capsName = "FEU FOLLET",
            .fullName = "Feu Follet",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_BURN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIRE,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Lance une sinistre\\nflamme violette à\\nl’ennemi pour lui\\ninfliger une brûlure.",
    },

    [MOVE_MEMENTO] = {
        .names = {
            .name = "Souvenir",
            .capsName = "SOUVENIR",
            .fullName = "Souvenir",
        },
        .data = {
            .effect = MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur est mis\\nK.O., mais l’Attaque\\net l’Atq. Spé. de\\nl’ennemi baissent\\nbeaucoup.",
    },

    [MOVE_FACADE] = {
        .names = {
            .name = "Façade",
            .capsName = "FAÇADE",
            .fullName = "Façade",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_WHEN_STATUSED,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Une attaque dont la\\npuissance double\\nlorsque le lanceur\\nest empoisonné,\\nparalysé ou brûlé.",
    },

    [MOVE_FOCUS_PUNCH] = {
        .names = {
            .name = "Mitra-Poing",
            .capsName = "MITRA-POING",
            .fullName = "Mitra-Poing",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 150,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -3,
            .flags = FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur se\\nconcentre avant\\nd’attaquer. Echoue\\ns’il est touché avant\\nd’avoir frappé.",
    },

    [MOVE_SMELLING_SALTS] = {
        .names = {
            .name = "Stimulant",
            .capsName = "STIMULANT",
            .fullName = "Stimulant",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_SMART,
        },
        .description = "Cette attaque est\\ndoublement efficace\\nsur les ennemis\\nparalysés, mais elle\\nsoigne leur paralysie.",
    },

    [MOVE_FOLLOW_ME] = {
        .names = {
            .name = "Par Ici",
            .capsName = "PAR ICI",
            .fullName = "Par Ici",
        },
        .data = {
            .effect = MOVE_EFFECT_MAKE_GLOBAL_TARGET,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 2,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Attire l’attention.\\nLes ennemis\\nn’attaquent que le\\nlanceur.",
    },

    [MOVE_NATURE_POWER] = {
        .names = {
            .name = "Force Nature",
            .capsName = "FORCE NATURE",
            .fullName = "Force Nature",
        },
        .data = {
            .effect = MOVE_EFFECT_NATURE_POWER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une attaque qui tire\\nsa force de la nature.\\nSon type varie selon\\nle terrain.",
    },

    [MOVE_CHARGE] = {
        .names = {
            .name = "Chargeur",
            .capsName = "CHARGEUR",
            .fullName = "Chargeur",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_DEF_UP_DOUBLE_ELECTRIC_POWER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur concentre\\nsa puissance pour\\nsa prochaine attaque\\nElectrik. Augmente sa\\nDéf. Spé.",
    },

    [MOVE_TAUNT] = {
        .names = {
            .name = "Provoc",
            .capsName = "PROVOC",
            .fullName = "Provoc",
        },
        .data = {
            .effect = MOVE_EFFECT_TAUNT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_SMART,
        },
        .description = "Provoque l’ennemi.\\nL’oblige à n’utiliser\\nque des attaques\\npendant 2 à 4 tours.",
    },

    [MOVE_HELPING_HAND] = {
        .names = {
            .name = "Coup d’Main",
            .capsName = "COUP D’MAIN",
            .fullName = "Coup d’Main",
        },
        .data = {
            .effect = MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 5,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une capacité qui\\naugmente la puissance\\nd’attaque de l’allié\\ndurant un Combat Duo.",
    },

    [MOVE_TRICK] = {
        .names = {
            .name = "Tour de Magie",
            .capsName = "TOUR DE MAGIE",
            .fullName = "Tour de Magie",
        },
        .data = {
            .effect = MOVE_EFFECT_SWITCH_HELD_ITEMS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur prend\\nl’ennemi au dépourvu\\net l’oblige à échanger\\nson objet contre\\nle sien.",
    },

    [MOVE_ROLE_PLAY] = {
        .names = {
            .name = "Imitation",
            .capsName = "IMITATION",
            .fullName = "Imitation",
        },
        .data = {
            .effect = MOVE_EFFECT_COPY_ABILITY,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Imite l’ennemi et\\ncopie sa capacité\\nspéciale.",
    },

    [MOVE_WISH] = {
        .names = {
            .name = "Vœu",
            .capsName = "VŒU",
            .fullName = "Vœu",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_IN_3_TURNS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Un vœu qui permet\\nde récupérer jusqu’à\\nla moitié de ses PV\\nmax au tour suivant.",
    },

    [MOVE_ASSIST] = {
        .names = {
            .name = "Assistance",
            .capsName = "ASSISTANCE",
            .fullName = "Assistance",
        },
        .data = {
            .effect = MOVE_EFFECT_USE_RANDOM_ALLY_MOVE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur se dépêche\\nd’utiliser une\\ncapacité au hasard\\nparmi celles des\\nPokémon de l’équipe.",
    },

    [MOVE_INGRAIN] = {
        .names = {
            .name = "Racines",
            .capsName = "RACINES",
            .fullName = "Racines",
        },
        .data = {
            .effect = MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur plante ses\\nracines et récupère\\ndes PV à chaque tour.\\nUne fois enraciné, il\\nne peut plus fuir.",
    },

    [MOVE_SUPERPOWER] = {
        .names = {
            .name = "Surpuissance",
            .capsName = "SURPUISSANCE",
            .fullName = "Surpuissance",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une attaque puissante\\nmais qui baisse\\nl’Attaque et la\\nDéfense du lanceur.",
    },

    [MOVE_MAGIC_COAT] = {
        .names = {
            .name = "Reflet Magik",
            .capsName = "REFLET MAGIK",
            .fullName = "Reflet Magik",
        },
        .data = {
            .effect = MOVE_EFFECT_MAGIC_COAT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une barrière qui \\nrenvoie les capacités\\ncomme Vampigraine et\\ncelles affectant le\\nstatut et les stats.",
    },

    [MOVE_RECYCLE] = {
        .names = {
            .name = "Recyclage",
            .capsName = "RECYCLAGE",
            .fullName = "Recyclage",
        },
        .data = {
            .effect = MOVE_EFFECT_RECYCLE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Recycle un objet à\\nusage unique déjà\\nutilisé lors du combat\\npour pouvoir l’utiliser\\nà nouveau.",
    },

    [MOVE_REVENGE] = {
        .names = {
            .name = "Vendetta",
            .capsName = "VENDETTA",
            .fullName = "Vendetta",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -4,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une attaque deux fois\\nplus puissante\\nsi le lanceur a été\\nblessé par l’ennemi\\ndurant ce tour.",
    },

    [MOVE_BRICK_BREAK] = {
        .names = {
            .name = "Casse-Brique",
            .capsName = "CASSE-BRIQUE",
            .fullName = "Casse-Brique",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_SCREENS,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque avec la\\nmain ou autre. Peut\\nbriser les barrières\\ncomme Mur Lumière\\net Protection.",
    },

    [MOVE_YAWN] = {
        .names = {
            .name = "Bâillement",
            .capsName = "BÂILLEMENT",
            .fullName = "Bâillement",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Fait bâiller\\nl’ennemi qui\\ns’endort au tour\\nsuivant.",
    },

    [MOVE_KNOCK_OFF] = {
        .names = {
            .name = "Sabotage",
            .capsName = "SABOTAGE",
            .fullName = "Sabotage",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_HELD_ITEM,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur fait\\ntomber l’objet tenu\\npar l’ennemi pour\\nle rendre inutilisable\\ndurant le combat.",
    },

    [MOVE_ENDEAVOR] = {
        .names = {
            .name = "Effort",
            .capsName = "EFFORT",
            .fullName = "Effort",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_HP_EQUAL_TO_USER,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une attaque qui\\nréduit les PV de\\nl’ennemi au niveau\\ndes PV du lanceur.",
    },

    [MOVE_ERUPTION] = {
        .names = {
            .name = "Éruption",
            .capsName = "ÉRUPTION",
            .fullName = "Éruption",
        },
        .data = {
            .effect = MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur laisse\\nexploser sa colère.\\nPlus ses PV sont bas\\net moins l’attaque est\\npuissante.",
    },

    [MOVE_SKILL_SWAP] = {
        .names = {
            .name = "Échange",
            .capsName = "ÉCHANGE",
            .fullName = "Échange",
        },
        .data = {
            .effect = MOVE_EFFECT_SWITCH_ABILITIES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur utilise ses\\npouvoirs psychiques\\npour échanger sa\\ncapacité spéciale\\navec l’ennemi.",
    },

    [MOVE_IMPRISON] = {
        .names = {
            .name = "Possessif",
            .capsName = "POSSESSIF",
            .fullName = "Possessif",
        },
        .data = {
            .effect = MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Si l’ennemi et le\\nlanceur ont des\\ncapacités en commun,\\nl’ennemi ne pourra\\npas les utiliser.",
    },

    [MOVE_REFRESH] = {
        .names = {
            .name = "Régénération",
            .capsName = "RÉGÉNÉRATION",
            .fullName = "Régénération",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_STATUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur se\\nrepose pour guérir\\nd’un empoisonnement,\\nd’une brûlure ou\\nd’une paralysie.",
    },

    [MOVE_GRUDGE] = {
        .names = {
            .name = "Rancune",
            .capsName = "RANCUNE",
            .fullName = "Rancune",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_ALL_PP_ON_DEFEAT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Si le lanceur est mis\\nK.O., sa rancune\\népuise les PP de la\\ncapacité utilisée pour\\nle mettre K.O.",
    },

    [MOVE_SNATCH] = {
        .names = {
            .name = "Saisie",
            .capsName = "SAISIE",
            .fullName = "Saisie",
        },
        .data = {
            .effect = MOVE_EFFECT_STEAL_STATUS_MOVE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur vole\\nl’effet des capacités\\nde soin ou de\\nchangement de stats\\nutilisées par l’ennemi.",
    },

    [MOVE_SECRET_POWER] = {
        .names = {
            .name = "Force Cachée",
            .capsName = "FORCE CACHÉE",
            .fullName = "Force Cachée",
        },
        .data = {
            .effect = MOVE_EFFECT_SECRET_POWER,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Les effets de cette\\nattaque varient en\\nfonction de\\nl’environnement.",
    },

    [MOVE_DIVE] = {
        .names = {
            .name = "Plongée",
            .capsName = "PLONGÉE",
            .fullName = "Plongée",
        },
        .data = {
            .effect = MOVE_EFFECT_DIVE,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une attaque en 2\\ntours. Le lanceur\\nplonge sous l’eau au\\n1¹ tour et frappe\\nau 2⁴.",
    },

    [MOVE_ARM_THRUST] = {
        .names = {
            .name = "Cogne",
            .capsName = "COGNE",
            .fullName = "Cogne",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 15,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Un déluge de coups\\nadressés avec la\\npaume qui frappe de\\n2 à 5 fois d’affilée.",
    },

    [MOVE_CAMOUFLAGE] = {
        .names = {
            .name = "Camouflage",
            .capsName = "CAMOUFLAGE",
            .fullName = "Camouflage",
        },
        .data = {
            .effect = MOVE_EFFECT_CAMOUFLAGE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_SMART,
        },
        .description = "Modifie le type du\\nlanceur en fonction\\ndu terrain, comme\\nune berge, une\\ngrotte, l’herbe, etc.",
    },

    [MOVE_TAIL_GLOW] = {
        .names = {
            .name = "Lumi-Queue",
            .capsName = "LUMI-QUEUE",
            .fullName = "Lumi-Queue",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_UP_3,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur regarde\\nun flash lumineux\\nfixement. Augmente\\nconsidérablement son\\nAtq. Spé.",
    },

    [MOVE_LUSTER_PURGE] = {
        .names = {
            .name = "Lumi-Éclat",
            .capsName = "LUMI-ÉCLAT",
            .fullName = "Lumi-Éclat",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 95,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur libère un\\néclair lumineux. Peut\\naussi baisser la Déf.\\nSpé. de l’ennemi.",
    },

    [MOVE_MIST_BALL] = {
        .names = {
            .name = "Ball’Brume",
            .capsName = "BALL’BRUME",
            .fullName = "Ball’Brume",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 95,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une bulle de brume\\ninflige des dégâts à\\nl’ennemi. Peut aussi\\nréduire son Atq. Spé.",
    },

    [MOVE_FEATHER_DANCE] = {
        .names = {
            .name = "Danse Plumes",
            .capsName = "DANSE PLUMES",
            .fullName = "Danse Plumes",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une montagne de\\nplumes ensevelit\\nl’ennemi et réduit\\nconsidérablement\\nson Attaque.",
    },

    [MOVE_TEETER_DANCE] = {
        .names = {
            .name = "Danse Folle",
            .capsName = "DANSE FOLLE",
            .fullName = "Danse Folle",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_ALL_ADJACENT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Danse qui rend confus\\ntous les autres\\nPokémon au combat.",
    },

    [MOVE_BLAZE_KICK] = {
        .names = {
            .name = "Pied Brûleur",
            .capsName = "PIED BRÛLEUR",
            .fullName = "Pied Brûleur",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_FIRE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur envoie un\\ncoup de pied à taux de\\ncritiques élevé. Peut\\naussi brûler la cible.",
    },

    [MOVE_MUD_SPORT] = {
        .names = {
            .name = "Lance-Boue",
            .capsName = "LANCE-BOUE",
            .fullName = "Lance-Boue",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur se couvre\\nde boue pour affaiblir\\nles capacités Electrik\\nquand il combat.",
    },

    [MOVE_ICE_BALL] = {
        .names = {
            .name = "Ball’Glace",
            .capsName = "BALL’GLACE",
            .fullName = "Ball’Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Envoie une balle de\\nglace pendant 5\\ntours. L’attaque\\ngagne en puissance\\nà chaque coup.",
    },

    [MOVE_NEEDLE_ARM] = {
        .names = {
            .name = "Poing Dard",
            .capsName = "POING DARD",
            .fullName = "Poing Dard",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur attaque en\\nfouettant l’ennemi de\\nses bras épineux.\\nPeut aussi l’apeurer.",
    },

    [MOVE_SLACK_OFF] = {
        .names = {
            .name = "Paresse",
            .capsName = "PARESSE",
            .fullName = "Paresse",
        },
        .data = {
            .effect = MOVE_EFFECT_RESTORE_HALF_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur se tourne\\nles pouces et\\nrécupère jusqu’à la\\nmoitié de ses PV max.",
    },

    [MOVE_HYPER_VOICE] = {
        .names = {
            .name = "Mégaphone",
            .capsName = "MÉGAPHONE",
            .fullName = "Mégaphone",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur pousse un\\ncri dont l’écho\\nterrifiant a le\\npouvoir d’infliger des\\ndégâts.",
    },

    [MOVE_POISON_FANG] = {
        .names = {
            .name = "Crochet Venin",
            .capsName = "CROCHET VENIN",
            .fullName = "Crochet Venin",
        },
        .data = {
            .effect = MOVE_EFFECT_BADLY_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur mord\\nl’ennemi de ses crocs\\ntoxiques. Peut aussi\\nl’empoisonner\\ngravement.",
    },

    [MOVE_CRUSH_CLAW] = {
        .names = {
            .name = "Éclate Griffe",
            .capsName = "ÉCLATE GRIFFE",
            .fullName = "Éclate Griffe",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_NORMAL,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Lacère l’ennemi avec\\ndes griffes solides et\\naiguisées. Peut aussi\\nbaisser sa Défense.",
    },

    [MOVE_BLAST_BURN] = {
        .names = {
            .name = "Rafale Feu",
            .capsName = "RAFALE FEU",
            .fullName = "Rafale Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_FIRE,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une explosion ardente\\nsouffle l’adversaire.\\nLe lanceur doit\\nse reposer au\\ntour suivant.",
    },

    [MOVE_HYDRO_CANNON] = {
        .names = {
            .name = "Hydroblast",
            .capsName = "HYDROBLAST",
            .fullName = "Hydroblast",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_WATER,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une trombe d’eau\\nheurte l’ennemi.\\nLe lanceur doit se\\nreposer au tour\\nsuivant.",
    },

    [MOVE_METEOR_MASH] = {
        .names = {
            .name = "Poing Météore",
            .capsName = "POING MÉTÉORE",
            .fullName = "Poing Météore",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_STEEL,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de poing lancé\\nà la vitesse d’un\\nmétéore. Peut aussi\\naugmenter l’Attaque\\ndu lanceur.",
    },

    [MOVE_ASTONISH] = {
        .names = {
            .name = "Étonnement",
            .capsName = "ÉTONNEMENT",
            .fullName = "Étonnement",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur attaque\\nl’ennemi en poussant\\nun cri terrifiant.\\nPeut aussi l’apeurer.",
    },

    [MOVE_WEATHER_BALL] = {
        .names = {
            .name = "Ball’Météo",
            .capsName = "BALL’MÉTÉO",
            .fullName = "Ball’Météo",
        },
        .data = {
            .effect = MOVE_EFFECT_CHANGE_TYPE_WITH_WEATHER,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque dont la\\npuissance et le type\\nvarient en fonction\\ndu temps qu’il fait.",
    },

    [MOVE_AROMATHERAPY] = {
        .names = {
            .name = "Aromathérapie",
            .capsName = "AROMATHÉRAPIE",
            .fullName = "Aromathérapie",
        },
        .data = {
            .effect = MOVE_EFFECT_CURE_PARTY_STATUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur libère un\\nparfum apaisant qui\\nguérit tous les\\nproblèmes de\\nstatut de l’équipe.",
    },

    [MOVE_FAKE_TEARS] = {
        .names = {
            .name = "Croco Larme",
            .capsName = "CROCO LARME",
            .fullName = "Croco Larme",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_DEF_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur fait \\nsemblant de pleurer\\npour troubler l’ennemi\\net baisser fortement\\nsa Déf. Spé.",
    },

    [MOVE_AIR_CUTTER] = {
        .names = {
            .name = "Tranch’Air",
            .capsName = "TRANCH’AIR",
            .fullName = "Tranch’Air",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_FLYING,
            .accuracy = 95,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur appelle\\ndes vents tranchants\\nqui lacèrent l’ennemi.\\nTaux de critiques\\nélevé.",
    },

    [MOVE_OVERHEAT] = {
        .names = {
            .name = "Surchauffe",
            .capsName = "SURCHAUFFE",
            .fullName = "Surchauffe",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SP_ATK_DOWN_2,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_FIRE,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Attaque l’ennemi à\\npleine puissance. Le\\ncontrecoup baisse\\nénormément l’Atq.\\nSpé. du lanceur.",
    },

    [MOVE_ODOR_SLEUTH] = {
        .names = {
            .name = "Flair",
            .capsName = "FLAIR",
            .fullName = "Flair",
        },
        .data = {
            .effect = MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Permet de toucher un\\nPokémon Spectre avec\\nn’importe quelle capa-\\ncité et de toucher un\\nennemi insaisissable.",
    },

    [MOVE_ROCK_TOMB] = {
        .names = {
            .name = "Tomberoche",
            .capsName = "TOMBEROCHE",
            .fullName = "Tomberoche",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_ROCK,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Des rochers frappent\\nl’ennemi. Réduit aussi\\nsa Vitesse en\\nl’empêchant de\\nse déplacer.",
    },

    [MOVE_SILVER_WIND] = {
        .names = {
            .name = "Vent Argenté",
            .capsName = "VENT ARGENTÉ",
            .fullName = "Vent Argenté",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ALL_STATS_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Vent qui projette des\\nécailles poudreuses\\nsur l’ennemi. Peut\\naussi monter toutes\\nles stats du lanceur.",
    },

    [MOVE_METAL_SOUND] = {
        .names = {
            .name = "Strido-Son",
            .capsName = "STRIDO-SON",
            .fullName = "Strido-Son",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_DEF_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 85,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_LOWER_VOLTAGES,
            .contestType = CONTEST_SMART,
        },
        .description = "Un cri horrible tel un\\ncrissement métallique\\nqui réduit fortement\\nla Déf. Spé. de\\nl’ennemi.",
    },

    [MOVE_GRASS_WHISTLE] = {
        .names = {
            .name = "Siffl’Herbe",
            .capsName = "SIFFL’HERBE",
            .fullName = "Siffl’Herbe",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 55,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur joue une\\ndouce mélodie qui\\nplonge l’ennemi dans\\nun profond sommeil.",
    },

    [MOVE_TICKLE] = {
        .names = {
            .name = "Chatouille",
            .capsName = "CHATOUILLE",
            .fullName = "Chatouille",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DEF_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur chatouille\\nl’ennemi, ce qui baisse\\nson Attaque et sa\\nDéfense.",
    },

    [MOVE_COSMIC_POWER] = {
        .names = {
            .name = "Force Cosmique",
            .capsName = "FORCE COSMIQUE",
            .fullName = "Force Cosmique",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_SP_DEF_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur absorbe un\\npouvoir mystique\\nspatial qui augmente\\nsa Défense et\\nsa Déf. Spé.",
    },

    [MOVE_WATER_SPOUT] = {
        .names = {
            .name = "Giclédo",
            .capsName = "GICLÉDO",
            .fullName = "Giclédo",
        },
        .data = {
            .effect = MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur attaque\\navec un jet d’eau.\\nMoins il a de PV et\\nmoins l’attaque est\\npuissante.",
    },

    [MOVE_SIGNAL_BEAM] = {
        .names = {
            .name = "Rayon Signal",
            .capsName = "RAYON SIGNAL",
            .fullName = "Rayon Signal",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur projette\\nun rayon de lumière\\nsinistre. Peut aussi\\nrendre l’ennemi\\nconfus.",
    },

    [MOVE_SHADOW_PUNCH] = {
        .names = {
            .name = "Poing Ombre",
            .capsName = "POING OMBRE",
            .fullName = "Poing Ombre",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur surgit des\\nombres et donne un\\ncoup de poing.\\nN’échoue jamais.",
    },

    [MOVE_EXTRASENSORY] = {
        .names = {
            .name = "Extrasenseur",
            .capsName = "EXTRASENSEUR",
            .fullName = "Extrasenseur",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec un pouvoir\\nétrange et invisible.\\nPeut aussi apeurer\\nl’ennemi.",
    },

    [MOVE_SKY_UPPERCUT] = {
        .names = {
            .name = "Stratopercut",
            .capsName = "STRATOPERCUT",
            .fullName = "Stratopercut",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_FLY,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_FIGHTING,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec un uppercut.\\nIl envoie son poing\\nvers le ciel de\\ntoutes ses forces.",
    },

    [MOVE_SAND_TOMB] = {
        .names = {
            .name = "Tourbi-Sable",
            .capsName = "TOURBI-SABLE",
            .fullName = "Tourbi-Sable",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 35,
            .type = TYPE_GROUND,
            .accuracy = 85,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur emprisonne\\nl’ennemi dans une\\ntempête de sable\\nterrifiante qui dure\\nde 2 à 5 tours.",
    },

    [MOVE_SHEER_COLD] = {
        .names = {
            .name = "Glaciation",
            .capsName = "GLACIATION",
            .fullName = "Glaciation",
        },
        .data = {
            .effect = MOVE_EFFECT_ONE_HIT_KO,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_ICE,
            .accuracy = 30,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_ALL_SAME_JUDGE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une vague de froid\\nglacial frappe\\nl’ennemi. S’il est\\ntouché, il est mis\\nK.O. sur le coup.",
    },

    [MOVE_MUDDY_WATER] = {
        .names = {
            .name = "Ocroupi",
            .capsName = "OCROUPI",
            .fullName = "Ocroupi",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_WATER,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque en\\nprojetant de l’eau\\nboueuse. Peut aussi\\nréduire la précision\\nde l’ennemi.",
    },

    [MOVE_BULLET_SEED] = {
        .names = {
            .name = "Balle Graine",
            .capsName = "BALLE GRAINE",
            .fullName = "Balle Graine",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur mitraille\\nl’ennemi avec une\\nrafale de graines.\\nDe 2 à 5 rafales sont\\nlancées à la suite.",
    },

    [MOVE_AERIAL_ACE] = {
        .names = {
            .name = "Aéropique",
            .capsName = "AÉROPIQUE",
            .fullName = "Aéropique",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur prend\\nl’ennemi de vitesse\\net le lacère. N’échoue\\njamais.",
    },

    [MOVE_ICICLE_SPEAR] = {
        .names = {
            .name = "Stalagtite",
            .capsName = "STALAGTITE",
            .fullName = "Stalagtite",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur jette des\\npics de glace sur\\nl’ennemi, de 2 à 5\\nfois de suite.",
    },

    [MOVE_IRON_DEFENSE] = {
        .names = {
            .name = "Mur de Fer",
            .capsName = "MUR DE FER",
            .fullName = "Mur de Fer",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’épiderme du lanceur\\ndevient dur comme du\\nfer, ce qui augmente\\nconsidérablement\\nsa Défense.",
    },

    [MOVE_BLOCK] = {
        .names = {
            .name = "Barrage",
            .capsName = "BARRAGE",
            .fullName = "Barrage",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur bloque la\\nroute de l’ennemi\\npour empêcher sa\\nfuite.",
    },

    [MOVE_HOWL] = {
        .names = {
            .name = "Grondement",
            .capsName = "GRONDEMENT",
            .fullName = "Grondement",
        },
        .data = {
            .effect = MOVE_EFFECT_HOWL,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur hurle pour\\nse rassurer, ce qui\\naugmente son\\nAttaque.",
    },

    [MOVE_DRAGON_CLAW] = {
        .names = {
            .name = "Draco-Griffe",
            .capsName = "DRACO-GRIFFE",
            .fullName = "Draco-Griffe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur lacère\\nl’ennemi de ses\\ngrandes griffes\\naiguisées.",
    },

    [MOVE_FRENZY_PLANT] = {
        .names = {
            .name = "Végé-Attaque",
            .capsName = "VÉGÉ-ATTAQUE",
            .fullName = "Végé-Attaque",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_GRASS,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Un violent coup de\\nracines s’abat sur\\nl’ennemi. Immobilise\\nle lanceur au tour\\nsuivant.",
    },

    [MOVE_BULK_UP] = {
        .names = {
            .name = "Gonflette",
            .capsName = "GONFLETTE",
            .fullName = "Gonflette",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DEF_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur tend ses\\nmuscles pour se\\ngonfler, ce qui booste\\nson Attaque et sa\\nDéfense.",
    },

    [MOVE_BOUNCE] = {
        .names = {
            .name = "Rebond",
            .capsName = "REBOND",
            .fullName = "Rebond",
        },
        .data = {
            .effect = MOVE_EFFECT_BOUNCE,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_FLYING,
            .accuracy = 85,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur bondit\\ntrès haut et plonge\\nsur l’ennemi au 2⁴\\ntour. Peut aussi\\nparalyser l’ennemi.",
    },

    [MOVE_MUD_SHOT] = {
        .names = {
            .name = "Tir de Boue",
            .capsName = "TIR DE BOUE",
            .fullName = "Tir de Boue",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 55,
            .type = TYPE_GROUND,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque\\nen projetant de la\\nboue sur l’ennemi.\\nRéduit aussi la\\nVitesse de la cible.",
    },

    [MOVE_POISON_TAIL] = {
        .names = {
            .name = "Queue-Poison",
            .capsName = "QUEUE-POISON",
            .fullName = "Queue-Poison",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Attaque à taux de\\ncritiques élevé.\\nPeut aussi\\nempoisonner l’ennemi.",
    },

    [MOVE_COVET] = {
        .names = {
            .name = "Implore",
            .capsName = "IMPLORE",
            .fullName = "Implore",
        },
        .data = {
            .effect = MOVE_EFFECT_STEAL_HELD_ITEM,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur s’approche\\nde l’ennemi avec un\\nair angélique afin\\nde dérober l’objet\\nqu’il tient.",
    },

    [MOVE_VOLT_TACKLE] = {
        .names = {
            .name = "Électacle",
            .capsName = "ÉLECTACLE",
            .fullName = "Électacle",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur électrifie\\nson corps avant de\\ncharger. Le choc\\nblesse aussi beaucoup\\nle lanceur.",
    },

    [MOVE_MAGICAL_LEAF] = {
        .names = {
            .name = "Feuille Magik",
            .capsName = "FEUILLE MAGIK",
            .fullName = "Feuille Magik",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur disperse\\nd’étranges feuilles\\nqui poursuivent\\nl’ennemi. N’échoue\\njamais.",
    },

    [MOVE_WATER_SPORT] = {
        .names = {
            .name = "Tourniquet",
            .capsName = "TOURNIQUET",
            .fullName = "Tourniquet",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_FIRE_DAMAGE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur s’asperge\\nd’eau. Affaiblit les\\ncapacités Feu quand\\nle lanceur est au\\ncombat.",
    },

    [MOVE_CALM_MIND] = {
        .names = {
            .name = "Plénitude",
            .capsName = "PLÉNITUDE",
            .fullName = "Plénitude",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_SP_DEF_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur se\\nconcentre et fait le\\nvide dans son esprit\\npour monter son Atq.\\nSpé. et sa Déf. Spé.",
    },

    [MOVE_LEAF_BLADE] = {
        .names = {
            .name = "Lame Feuille",
            .capsName = "LAME FEUILLE",
            .fullName = "Lame Feuille",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Une feuille coupante\\nentaille l’ennemi. Taux\\nde critiques élevé.",
    },

    [MOVE_DRAGON_DANCE] = {
        .names = {
            .name = "Danse Draco",
            .capsName = "DANSE DRACO",
            .fullName = "Danse Draco",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_SPEED_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "Une danse mystique\\ndont le rythme\\neffréné augmente\\nl’Attaque et la\\nVitesse du lanceur.",
    },

    [MOVE_ROCK_BLAST] = {
        .names = {
            .name = "Boule Roc",
            .capsName = "BOULE ROC",
            .fullName = "Boule Roc",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur projette\\nun rocher sur\\nl’ennemi 2 à 5 fois\\nd’affilée.",
    },

    [MOVE_SHOCK_WAVE] = {
        .names = {
            .name = "Onde de Choc",
            .capsName = "ONDE DE CHOC",
            .fullName = "Onde de Choc",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur envoie un\\nchoc électrique rapide\\nà l’ennemi. Impossible\\nà esquiver.",
    },

    [MOVE_WATER_PULSE] = {
        .names = {
            .name = "Vibraqua",
            .capsName = "VIBRAQUA",
            .fullName = "Vibraqua",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur envoie\\nde puissants jets\\nd’eau sur l’ennemi.\\nPeut rendre l’ennemi\\nconfus.",
    },

    [MOVE_DOOM_DESIRE] = {
        .names = {
            .name = "Vœu Destructeur",
            .capsName = "VŒU DESTRUCTEUR",
            .fullName = "Vœu Destructeur",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_IN_3_TURNS,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur génère\\nune sphère lumineuse\\nqu’il projette sur\\nl’ennemi 2 tours\\nplus tard.",
    },

    [MOVE_PSYCHO_BOOST] = {
        .names = {
            .name = "Psycho-Boost",
            .capsName = "PSYCHO-BOOST",
            .fullName = "Psycho-Boost",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SP_ATK_DOWN_2,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_PSYCHIC,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur attaque\\nà pleine puissance.\\nLe contrecoup réduit\\nconsidérablement\\nson Atq. Spé.",
    },

    [MOVE_ROOST] = {
        .names = {
            .name = "Atterrissage",
            .capsName = "ATTERRISSAGE",
            .fullName = "Atterrissage",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur atterrit\\net se repose.\\nRestaure jusqu’à la\\nmoitié de ses PV\\nmaximum.",
    },

    [MOVE_GRAVITY] = {
        .names = {
            .name = "Gravité",
            .capsName = "GRAVITÉ",
            .fullName = "Gravité",
        },
        .data = {
            .effect = MOVE_EFFECT_GRAVITY,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "La gravité augmente\\npendant 5 tours, ce\\nqui empêche les\\ncapacités volantes\\net annule Lévitation.",
    },

    [MOVE_MIRACLE_EYE] = {
        .names = {
            .name = "Œil Miracle",
            .capsName = "ŒIL MIRACLE",
            .fullName = "Œil Miracle",
        },
        .data = {
            .effect = MOVE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Permet de toucher un\\nPokémon Ténèbres\\navec toute capacité\\net de toucher un\\nennemi insaisissable.",
    },

    [MOVE_WAKE_UP_SLAP] = {
        .names = {
            .name = "Réveil Forcé",
            .capsName = "RÉVEIL FORCÉ",
            .fullName = "Réveil Forcé",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_HEAL_SLEEP,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_SMART,
        },
        .description = "Cette attaque inflige\\nd’importants dégâts\\nà un ennemi endormi.\\nMais elle le réveille\\négalement.",
    },

    [MOVE_HAMMER_ARM] = {
        .names = {
            .name = "Marto-Poing",
            .capsName = "MARTO-POING",
            .fullName = "Marto-Poing",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SPEED_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_NEXT_TURN,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur lâche un\\npuissant coup de poing\\nsur l’ennemi. Mais\\nréduit la Vitesse du\\nlanceur.",
    },

    [MOVE_GYRO_BALL] = {
        .names = {
            .name = "Gyroballe",
            .capsName = "GYROBALLE",
            .fullName = "Gyroballe",
        },
        .data = {
            .effect = MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur effectue\\nune rotation et\\nfrappe l’ennemi. Plus\\nle lanceur est lent,\\nplus il fait de dégâts.",
    },

    [MOVE_HEALING_WISH] = {
        .names = {
            .name = "Vœu Soin",
            .capsName = "VŒU SOIN",
            .fullName = "Vœu Soin",
        },
        .data = {
            .effect = MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur tombe\\nK.O. pour soigner les\\nPV et le statut du\\nPokémon qui passe\\naprès lui.",
    },

    [MOVE_BRINE] = {
        .names = {
            .name = "Saumure",
            .capsName = "SAUMURE",
            .fullName = "Saumure",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Cette attaque est\\ndeux fois plus\\npuissante lorsque\\nl’ennemi a moins de\\nla moitié de ses PV.",
    },

    [MOVE_NATURAL_GIFT] = {
        .names = {
            .name = "Don Naturel",
            .capsName = "DON NATUREL",
            .fullName = "Don Naturel",
        },
        .data = {
            .effect = MOVE_EFFECT_NATURAL_GIFT,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Avant d’attaquer, le\\nlanceur rassemble ses\\nforces grâce à sa\\nBaie. Elle détermine le\\ntype et la puissance.",
    },

    [MOVE_FEINT] = {
        .names = {
            .name = "Ruse",
            .capsName = "RUSE",
            .fullName = "Ruse",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_PROTECT,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 2,
            .flags = FLAG_MIRROR_MOVE,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une attaque capable\\nde toucher un ennemi\\nqui utilise Détection\\nou Abri. Annule aussi\\nleur effet.",
    },

    [MOVE_PLUCK] = {
        .names = {
            .name = "Picore",
            .capsName = "PICORE",
            .fullName = "Picore",
        },
        .data = {
            .effect = MOVE_EFFECT_EAT_BERRY,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur picore\\nl’ennemi. S’il tient\\nune Baie, le lanceur\\ns’en empare et\\nprofite de ses effets.",
    },

    [MOVE_TAILWIND] = {
        .names = {
            .name = "Vent Arrière",
            .capsName = "VENT ARRIÈRE",
            .fullName = "Vent Arrière",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_SPEED_3_TURNS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Génère une rafale de\\nvent qui augmente la\\nVitesse des Pokémon\\nde l’équipe pendant 3\\ntours.",
    },

    [MOVE_ACUPRESSURE] = {
        .names = {
            .name = "Acupression",
            .capsName = "ACUPRESSION",
            .fullName = "Acupression",
        },
        .data = {
            .effect = MOVE_EFFECT_RANDOM_STAT_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_USER_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur effectue\\ndes pressions pour\\naugmenter\\nfortement l’une\\nde ses stats.",
    },

    [MOVE_METAL_BURST] = {
        .names = {
            .name = "Fulmifer",
            .capsName = "FULMIFER",
            .fullName = "Fulmifer",
        },
        .data = {
            .effect = MOVE_EFFECT_METAL_BURST,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur attaque\\nle dernier ennemi\\nà l’avoir blessé en\\nfrappant plus fort.",
    },

    [MOVE_U_TURN] = {
        .names = {
            .name = "Demi-Tour",
            .capsName = "DEMI-TOUR",
            .fullName = "Demi-Tour",
        },
        .data = {
            .effect = MOVE_EFFECT_SWITCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Après avoir attaqué,\\nle lanceur change de\\nplace avec un\\nPokémon de l’équipe\\nqui attend son tour.",
    },

    [MOVE_CLOSE_COMBAT] = {
        .names = {
            .name = "Close Combat",
            .capsName = "CLOSE COMBAT",
            .fullName = "Close Combat",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur combat au\\ncorps à corps sans se\\nprotéger. Baisse\\naussi sa Défense et\\nsa Déf. Spé.",
    },

    [MOVE_PAYBACK] = {
        .names = {
            .name = "Représailles",
            .capsName = "REPRÉSAILLES",
            .fullName = "Représailles",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_IF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_UNIQUE_JUDGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur charge son\\nénergie, puis attaque.\\nLa puissance est\\ndoublée si cela suit\\nune capacité ennemie.",
    },

    [MOVE_ASSURANCE] = {
        .names = {
            .name = "Assurance",
            .capsName = "ASSURANCE",
            .fullName = "Assurance",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Cette attaque est\\ndeux fois plus\\nefficace si l’ennemi\\na déjà été blessé\\ndurant ce tour.",
    },

    [MOVE_EMBARGO] = {
        .names = {
            .name = "Embargo",
            .capsName = "EMBARGO",
            .fullName = "Embargo",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ITEM_USE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Empêche l’ennemi\\nd’utiliser un objet\\ntenu et son Dresseur\\nd’utiliser un objet\\nsur lui.",
    },

    [MOVE_FLING] = {
        .names = {
            .name = "Dégommage",
            .capsName = "DÉGOMMAGE",
            .fullName = "Dégommage",
        },
        .data = {
            .effect = MOVE_EFFECT_FLING,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur envoie\\nl’objet qu’il tient sur\\nl’ennemi. La puissance\\net les effets\\ndépendent de l’objet.",
    },

    [MOVE_PSYCHO_SHIFT] = {
        .names = {
            .name = "Échange Psy",
            .capsName = "ÉCHANGE PSY",
            .fullName = "Échange Psy",
        },
        .data = {
            .effect = MOVE_EFFECT_TRANSFER_STATUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur transfère\\nses problèmes de\\nstatut à l’ennemi\\ngrâce à son pouvoir\\nde suggestion.",
    },

    [MOVE_TRUMP_CARD] = {
        .names = {
            .name = "Atout",
            .capsName = "ATOUT",
            .fullName = "Atout",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGHER_POWER_WHEN_LOW_PP,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Moins ce coup\\npossède de PP,\\nplus il est puissant.",
    },

    [MOVE_HEAL_BLOCK] = {
        .names = {
            .name = "Anti-Soin",
            .capsName = "ANTI-SOIN",
            .fullName = "Anti-Soin",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_HEALING,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur empêche\\nl’ennemi d’utiliser des\\ncapacités de\\nrécupération de PV\\npendant 5 tours.",
    },

    [MOVE_WRING_OUT] = {
        .names = {
            .name = "Essorage",
            .capsName = "ESSORAGE",
            .fullName = "Essorage",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur essore\\nl’ennemi. Plus\\nl’ennemi a de PV,\\nplus cette attaque\\nest puissante.",
    },

    [MOVE_POWER_TRICK] = {
        .names = {
            .name = "Astuce Force",
            .capsName = "ASTUCE FORCE",
            .fullName = "Astuce Force",
        },
        .data = {
            .effect = MOVE_EFFECT_SWAP_ATK_DEF,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise ses\\npouvoirs psychiques\\npour échanger sa\\nstat Défense et sa\\nstat Attaque.",
    },

    [MOVE_GASTRO_ACID] = {
        .names = {
            .name = "Suc Digestif",
            .capsName = "SUC DIGESTIF",
            .fullName = "Suc Digestif",
        },
        .data = {
            .effect = MOVE_EFFECT_SUPRESS_ABILITY,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur répand ses\\nsucs digestifs sur\\nl’ennemi. Le fluide\\nneutralise la capacité\\nspéciale de l’ennemi.",
    },

    [MOVE_LUCKY_CHANT] = {
        .names = {
            .name = "Air Veinard",
            .capsName = "AIR VEINARD",
            .fullName = "Air Veinard",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_CRITS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur envoie une\\nincantation vers le\\nciel pour empêcher\\nl’ennemi d’effectuer\\ndes coups critiques.",
    },

    [MOVE_ME_FIRST] = {
        .names = {
            .name = "Moi d’Abord",
            .capsName = "MOI D’ABORD",
            .fullName = "Moi d’Abord",
        },
        .data = {
            .effect = MOVE_EFFECT_USE_MOVE_FIRST,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FRONT,
            .priority = 0,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur vole la\\ncapacité prévue\\npar l’ennemi et\\nl’utilise avec une\\npuissance accrue.",
    },

    [MOVE_COPYCAT] = {
        .names = {
            .name = "Photocopie",
            .capsName = "PHOTOCOPIE",
            .fullName = "Photocopie",
        },
        .data = {
            .effect = MOVE_EFFECT_USE_LAST_USED_MOVE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur imite la\\ndernière capacité\\nemployée. Echoue\\nsi aucune capacité\\nn’a été utilisée.",
    },

    [MOVE_POWER_SWAP] = {
        .names = {
            .name = "Permuforce",
            .capsName = "PERMUFORCE",
            .fullName = "Permuforce",
        },
        .data = {
            .effect = MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Pouvoir qui échange\\nles modifications de\\nl’Atq. Spé. et de\\nl’Attaque du lanceur\\navec l’ennemi.",
    },

    [MOVE_GUARD_SWAP] = {
        .names = {
            .name = "Permugarde",
            .capsName = "PERMUGARDE",
            .fullName = "Permugarde",
        },
        .data = {
            .effect = MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Pouvoir qui échange\\nles modifications de\\nla Déf. Spé. et de la\\nDéfense avec\\nl’ennemi.",
    },

    [MOVE_PUNISHMENT] = {
        .names = {
            .name = "Punition",
            .capsName = "PUNITION",
            .fullName = "Punition",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Plus l’ennemi a utilisé\\ndes augmentations de\\nstats et plus cette\\ncapacité est\\npuissante.",
    },

    [MOVE_LAST_RESORT] = {
        .names = {
            .name = "Dernier Recours",
            .capsName = "DERNIER RECOURS",
            .fullName = "Dernier Recours",
        },
        .data = {
            .effect = MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES,
            .split = SPLIT_PHYSICAL,
            .power = 140,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LATE_BOOST,
            .contestType = CONTEST_CUTE,
        },
        .description = "Cette capacité ne\\npeut être utilisée\\nqu’après que le\\nlanceur a utilisé\\ntoutes les autres.",
    },

    [MOVE_WORRY_SEED] = {
        .names = {
            .name = "Soucigraine",
            .capsName = "SOUCIGRAINE",
            .fullName = "Soucigraine",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Plante une graine sur\\nl’ennemi qui le rend\\nsoucieux et remplace\\nsa capacité spéciale\\npar Insomnia.",
    },

    [MOVE_SUCKER_PUNCH] = {
        .names = {
            .name = "Coup Bas",
            .capsName = "COUP BAS",
            .fullName = "Coup Bas",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Permet au lanceur\\nde frapper en\\npremier. Echoue si\\nl’ennemi ne prépare\\npas une attaque.",
    },

    [MOVE_TOXIC_SPIKES] = {
        .names = {
            .name = "Pics Toxik",
            .capsName = "PICS TOXIK",
            .fullName = "Pics Toxik",
        },
        .data = {
            .effect = MOVE_EFFECT_TOXIC_SPIKES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_OPPONENT_SIDE,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_SMART,
        },
        .description = "Lance des pics autour\\nde l’ennemi. Ils\\nempoisonnent les\\nennemis qui entrent\\nau combat.",
    },

    [MOVE_HEART_SWAP] = {
        .names = {
            .name = "Permucœur",
            .capsName = "PERMUCŒUR",
            .fullName = "Permucœur",
        },
        .data = {
            .effect = MOVE_EFFECT_SWAP_STAT_CHANGES,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise un\\npouvoir psychique\\npour échanger ses\\nchangements de\\nstats avec l’ennemi.",
    },

    [MOVE_AQUA_RING] = {
        .names = {
            .name = "Anneau Hydro",
            .capsName = "ANNEAU HYDRO",
            .fullName = "Anneau Hydro",
        },
        .data = {
            .effect = MOVE_EFFECT_RESTORE_HP_EVERY_TURN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un voile liquide\\nenveloppe le lanceur.\\nIl récupère des PV\\nà chaque tour.",
    },

    [MOVE_MAGNET_RISE] = {
        .names = {
            .name = "Vol Magnétik",
            .capsName = "VOL MAGNÉTIK",
            .fullName = "Vol Magnétik",
        },
        .data = {
            .effect = MOVE_EFFECT_GIVE_GROUND_IMMUNITY,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur lévite en\\nutilisant l’électricité\\npour générer un\\nchamp magnétique\\ndurant 5 tours.",
    },

    [MOVE_FLARE_BLITZ] = {
        .names = {
            .name = "Boutefeu",
            .capsName = "BOUTEFEU",
            .fullName = "Boutefeu",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur s’embrase\\navant de charger\\nl’ennemi. Le choc\\nblesse gravement\\nle lanceur aussi.",
    },

    [MOVE_FORCE_PALM] = {
        .names = {
            .name = "Forte-Paume",
            .capsName = "FORTE-PAUME",
            .fullName = "Forte-Paume",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Une onde de choc\\nfrappe l’ennemi.\\nPeut aussi paralyser\\nla cible.",
    },

    [MOVE_AURA_SPHERE] = {
        .names = {
            .name = "Aurasphère",
            .capsName = "AURASPHÈRE",
            .fullName = "Aurasphère",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur dégage une\\naura et projette de\\nl’énergie. N’échoue\\njamais.",
    },

    [MOVE_ROCK_POLISH] = {
        .names = {
            .name = "Poliroche",
            .capsName = "POLIROCHE",
            .fullName = "Poliroche",
        },
        .data = {
            .effect = MOVE_EFFECT_SPEED_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur polit son\\ncorps pour diminuer sa\\nrésistance au vent.\\nAugmente fortement\\nla Vitesse.",
    },

    [MOVE_POISON_JAB] = {
        .names = {
            .name = "Direct Toxik",
            .capsName = "DIRECT TOXIK",
            .fullName = "Direct Toxik",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Attaque l’ennemi avec\\nun tentacule ou un\\nbras plein de poison.\\nPeut aussi\\nl’empoisonner.",
    },

    [MOVE_DARK_PULSE] = {
        .names = {
            .name = "Vibrobscur",
            .capsName = "VIBROBSCUR",
            .fullName = "Vibrobscur",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur dégage une\\nhorrible aura chargée\\nd’idées noires. Peut\\naussi apeurer\\nl’ennemi.",
    },

    [MOVE_NIGHT_SLASH] = {
        .names = {
            .name = "Tranche-Nuit",
            .capsName = "TRANCHE-NUIT",
            .fullName = "Tranche-Nuit",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (20) : (15)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur lacère\\nl’ennemi à la\\npremière occasion.\\nTaux de critiques\\nélevé.",
    },

    [MOVE_AQUA_TAIL] = {
        .names = {
            .name = "Hydro-Queue",
            .capsName = "HYDRO-QUEUE",
            .fullName = "Hydro-Queue",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_WATER,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur attaque\\nen balançant sa\\nqueue comme une\\nlame de fond en\\npleine tempête.",
    },

    [MOVE_SEED_BOMB] = {
        .names = {
            .name = "Canon Graine",
            .capsName = "CANON GRAINE",
            .fullName = "Canon Graine",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur fait\\npleuvoir un déluge\\nde graines solides\\nsur l’ennemi.",
    },

    [MOVE_AIR_SLASH] = {
        .names = {
            .name = "Lame d’Air",
            .capsName = "LAME D’AIR",
            .fullName = "Lame d’Air",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_FLYING,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec une lame d’air\\nqui fend tout. Peut\\naussi apeurer\\nl’ennemi.",
    },

    [MOVE_X_SCISSOR] = {
        .names = {
            .name = "Plaie Croix",
            .capsName = "PLAIE CROIX",
            .fullName = "Plaie Croix",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur taillade\\nl’ennemi en utilisant\\nses faux ou ses\\ngriffes comme une\\npaire de ciseaux.",
    },

    [MOVE_BUG_BUZZ] = {
        .names = {
            .name = "Bourdon",
            .capsName = "BOURDON",
            .fullName = "Bourdon",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur fait vibrer\\nses ailes pour lancer\\nune vague sonique.\\nPeut aussi baisser la\\nDéf. Spé. de l’ennemi.",
    },

    [MOVE_DRAGON_PULSE] = {
        .names = {
            .name = "Draco-Choc",
            .capsName = "DRACO-CHOC",
            .fullName = "Draco-Choc",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 85,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur ouvre la\\nbouche pour envoyer\\nune onde de choc\\nqui frappe l’ennemi.",
    },

    [MOVE_DRAGON_RUSH] = {
        .names = {
            .name = "Draco-Charge",
            .capsName = "DRACO-CHARGE",
            .fullName = "Draco-Charge",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_DRAGON,
            .accuracy = 75,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe\\nl’ennemi d’un air\\nmenaçant. Peut aussi\\napeurer l’ennemi.",
    },

    [MOVE_POWER_GEM] = {
        .names = {
            .name = "Rayon Gemme",
            .capsName = "RAYON GEMME",
            .fullName = "Rayon Gemme",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur attaque\\navec un rayon de\\nlumière qui scintille\\ncomme s’il était\\ncomposé de gemmes.",
    },

    [MOVE_DRAIN_PUNCH] = {
        .names = {
            .name = "Vampi-Poing",
            .capsName = "VAMPI-POING",
            .fullName = "Vampi-Poing",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_CHAIN_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un coup de poing qui\\ndraine l’énergie.\\nConvertit la moitié\\ndes dégâts infligés en\\nPV pour le lanceur.",
    },

    [MOVE_VACUUM_WAVE] = {
        .names = {
            .name = "Onde Vide",
            .capsName = "ONDE VIDE",
            .fullName = "Onde Vide",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur agite son\\npoing pour projeter\\nune onde de vide.\\nFrappe toujours en\\npremier.",
    },

    [MOVE_FOCUS_BLAST] = {
        .names = {
            .name = "Exploforce",
            .capsName = "EXPLOFORCE",
            .fullName = "Exploforce",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_FIGHTING,
            .accuracy = 70,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur rassemble\\nses forces et laisse\\néclater son pouvoir.\\nPeut aussi baisser la\\nDéf. Spé. de l’ennemi.",
    },

    [MOVE_ENERGY_BALL] = {
        .names = {
            .name = "Éco-Sphère",
            .capsName = "ÉCO-SPHÈRE",
            .fullName = "Éco-Sphère",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Utilise les pouvoirs\\nde la nature pour\\nattaquer l’ennemi.\\nPeut aussi baisser la\\nDéf. Spé. de l’ennemi.",
    },

    [MOVE_BRAVE_BIRD] = {
        .names = {
            .name = "Rapace",
            .capsName = "RAPACE",
            .fullName = "Rapace",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_THIRD,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur replie ses\\nailes et charge en\\nrase-mottes. Le\\nlanceur subit de\\ngraves dégâts aussi.",
    },

    [MOVE_EARTH_POWER] = {
        .names = {
            .name = "Telluriforce",
            .capsName = "TELLURIFORCE",
            .fullName = "Telluriforce",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Des éruptions\\nvolcaniques ont\\nlieu sous l’ennemi.\\nPeut aussi baisser la\\nDéf. Spé. de l’ennemi.",
    },

    [MOVE_SWITCHEROO] = {
        .names = {
            .name = "Passe-Passe",
            .capsName = "PASSE-PASSE",
            .fullName = "Passe-Passe",
        },
        .data = {
            .effect = MOVE_EFFECT_SWITCH_HELD_ITEMS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur échange\\nson objet avec celui\\nde l’ennemi à une\\nvitesse que l’œil a\\ndu mal à suivre.",
    },

    [MOVE_GIGA_IMPACT] = {
        .names = {
            .name = "Giga Impact",
            .capsName = "GIGA IMPACT",
            .fullName = "Giga Impact",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_PHYSICAL,
            .power = 150,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur charge\\nl’ennemi de toute sa\\npuissance. Il doit\\nensuite se reposer\\nau tour suivant.",
    },

    [MOVE_NASTY_PLOT] = {
        .names = {
            .name = "Machination",
            .capsName = "MACHINATION",
            .fullName = "Machination",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_CUTE,
        },
        .description = "Stimule l’esprit par\\nde mauvaises pensées.\\nAugmente fortement\\nl’Atq. Spé. du\\nlanceur.",
    },

    [MOVE_BULLET_PUNCH] = {
        .names = {
            .name = "Pisto-Poing",
            .capsName = "PISTO-POING",
            .fullName = "Pisto-Poing",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur envoie des\\ncoups de poing aussi\\nrapides que des balles\\nde revolver. Frappe\\ntoujours en premier.",
    },

    [MOVE_AVALANCHE] = {
        .names = {
            .name = "Avalanche",
            .capsName = "AVALANCHE",
            .fullName = "Avalanche",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -4,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque deux fois\\nplus puissante si le\\nlanceur a été blessé\\npar l’ennemi durant le\\ntour.",
    },

    [MOVE_ICE_SHARD] = {
        .names = {
            .name = "Éclats Glace",
            .capsName = "ÉCLATS GLACE",
            .fullName = "Éclats Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur crée des\\néclats de glace qu’il\\nenvoie sur l’ennemi.\\nFrappe toujours en\\npremier.",
    },

    [MOVE_SHADOW_CLAW] = {
        .names = {
            .name = "Griffe Ombre",
            .capsName = "GRIFFE OMBRE",
            .fullName = "Griffe Ombre",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Attaque avec une\\ngriffe puissante faite\\nd’ombres. Taux de\\ncritiques élevé.",
    },

    [MOVE_THUNDER_FANG] = {
        .names = {
            .name = "Crocs Éclair",
            .capsName = "CROCS ÉCLAIR",
            .fullName = "Crocs Éclair",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_ELECTRIC,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur utilise\\nune morsure\\nélectrifiée. Peut\\naussi paralyser ou\\napeurer l’ennemi.",
    },

    [MOVE_ICE_FANG] = {
        .names = {
            .name = "Crocs Givre",
            .capsName = "CROCS GIVRE",
            .fullName = "Crocs Givre",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_FREEZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_ICE,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise\\nune morsure\\nglaciale. Peut aussi\\ngeler ou apeurer\\nl’ennemi.",
    },

    [MOVE_FIRE_FANG] = {
        .names = {
            .name = "Crocs Feu",
            .capsName = "CROCS FEU",
            .fullName = "Crocs Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_FIRE,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur utilise\\nune morsure\\nenflammée. Peut aussi\\nbrûler ou apeurer\\nl’ennemi.",
    },

    [MOVE_SHADOW_SNEAK] = {
        .names = {
            .name = "Ombre Portée",
            .capsName = "OMBRE PORTÉE",
            .fullName = "Ombre Portée",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur étend son\\nombre pour frapper\\npar-derrière. Frappe\\ntoujours en premier.",
    },

    [MOVE_MUD_BOMB] = {
        .names = {
            .name = "Boue-Bombe",
            .capsName = "BOUE-BOMBE",
            .fullName = "Boue-Bombe",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_GROUND,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur attaque à\\nl’aide d’une boule de\\nboue solidifiée. Peut\\naussi baisser la\\nprécision de l’ennemi.",
    },

    [MOVE_PSYCHO_CUT] = {
        .names = {
            .name = "Coupe Psycho",
            .capsName = "COUPE PSYCHO",
            .fullName = "Coupe Psycho",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur entaille\\nl’ennemi grâce à des\\nlames faites de pou-\\nvoir psychique. Taux\\nde critiques élevé.",
    },

    [MOVE_ZEN_HEADBUTT] = {
        .names = {
            .name = "Psykoud’Boul",
            .capsName = "PSYKOUD’BOUL",
            .fullName = "Psykoud’Boul",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur concentre\\nsa volonté et donne\\nun coup de tête. Peut\\naussi apeurer\\nl’ennemi.",
    },

    [MOVE_MIRROR_SHOT] = {
        .names = {
            .name = "Miroi-Tir",
            .capsName = "MIROI-TIR",
            .fullName = "Miroi-Tir",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_STEEL,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le corps poli du\\nlanceur libère un\\néclair d’énergie. Peut\\naussi baisser la\\nprécision de l’ennemi.",
    },

    [MOVE_FLASH_CANNON] = {
        .names = {
            .name = "Luminocanon",
            .capsName = "LUMINOCANON",
            .fullName = "Luminocanon",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur concentre\\nson énergie lumineuse\\net la fait exploser.\\nPeut aussi baisser la\\nDéf. Spé. de l’ennemi.",
    },

    [MOVE_ROCK_CLIMB] = {
        .names = {
            .name = "Escalade",
            .capsName = "ESCALADE",
            .fullName = "Escalade",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 20,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Charge pouvant\\nrendre l’ennemi\\nconfus. Permet aussi\\nd’escalader des\\nparois rocheuses.",
    },

    [MOVE_DEFOG] = {
        .names = {
            .name = "Anti-Brume",
            .capsName = "ANTI-BRUME",
            .fullName = "Anti-Brume",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Diminue l’esquive de\\nl’adversaire. Annule\\naussi par exemple\\nPicots ou Mur Lumière.\\n",
    },

    [MOVE_TRICK_ROOM] = {
        .names = {
            .name = "Distorsion",
            .capsName = "DISTORSION",
            .fullName = "Distorsion",
        },
        .data = {
            .effect = MOVE_EFFECT_TRICK_ROOM,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = -7,
            .flags = FLAG_MIRROR_MOVE,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur crée une\\nzone étrange où les\\nPokémon les plus\\nlents frappent en 1¹\\npendant 5 tours.",
    },

    [MOVE_DRACO_METEOR] = {
        .names = {
            .name = "Draco-Météore",
            .capsName = "DRACO-MÉTÉORE",
            .fullName = "Draco-Météore",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SP_ATK_DOWN_2,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_DRAGON,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur invoque\\ndes comètes. Le\\ncontrecoup réduit\\nfortement son\\nAtq. Spé.",
    },

    [MOVE_DISCHARGE] = {
        .names = {
            .name = "Coup d’Jus",
            .capsName = "COUP D’JUS",
            .fullName = "Coup d’Jus",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Un flamboiement\\nd’électricité frappe\\ntous les autres\\nPokémon au combat.\\nPeut aussi paralyser.",
    },

    [MOVE_LAVA_PLUME] = {
        .names = {
            .name = "Ébullilave",
            .capsName = "ÉBULLILAVE",
            .fullName = "Ébullilave",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Des boules de feu\\ns’abattent sur tous\\nles autres Pokémon au\\ncombat. Peut aussi\\nbrûler.",
    },

    [MOVE_LEAF_STORM] = {
        .names = {
            .name = "Tempête Verte",
            .capsName = "TEMPÊTE VERTE",
            .fullName = "Tempête Verte",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SP_ATK_DOWN_2,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_GRASS,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "Invoque une tempête\\nde feuilles acérées.\\nLe contrecoup réduit\\nfortement l’Atq.\\nSpé. du lanceur.",
    },

    [MOVE_POWER_WHIP] = {
        .names = {
            .name = "Mégafouet",
            .capsName = "MÉGAFOUET",
            .fullName = "Mégafouet",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_GRASS,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur fait\\nvirevolter violemment\\nses lianes ou ses\\ntentacules pour\\nfouetter l’ennemi.",
    },

    [MOVE_ROCK_WRECKER] = {
        .names = {
            .name = "Roc-Boulet",
            .capsName = "ROC-BOULET",
            .fullName = "Roc-Boulet",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_PHYSICAL,
            .power = 150,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque en\\nprojetant un gros\\nrocher sur l’ennemi.\\nIl doit se reposer au\\ntour suivant.",
    },

    [MOVE_CROSS_POISON] = {
        .names = {
            .name = "Poison Croix",
            .capsName = "POISON CROIX",
            .fullName = "Poison Croix",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup tranchant qui\\npeut empoisonner\\nl’ennemi. Taux de\\ncritiques élevé.",
    },

    [MOVE_GUNK_SHOT] = {
        .names = {
            .name = "Détricanon",
            .capsName = "DÉTRICANON",
            .fullName = "Détricanon",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_POISON,
            .accuracy = 80,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur envoie des\\ndétritus sur l’ennemi.\\nPeut aussi\\nl’empoisonner.",
    },

    [MOVE_IRON_HEAD] = {
        .names = {
            .name = "Tête de Fer",
            .capsName = "TÊTE DE FER",
            .fullName = "Tête de Fer",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = ((CHAMPIONS_EFFECT_CHANCE_CHANGES) ? (20) : (30)),
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur heurte\\nl’ennemi avec sa tête\\ndure comme de l’acier.\\nPeut aussi apeurer\\nl’ennemi.",
    },

    [MOVE_MAGNET_BOMB] = {
        .names = {
            .name = "Bombe Aimant",
            .capsName = "BOMBE AIMANT",
            .fullName = "Bombe Aimant",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur projette\\ndes bombes d’acier\\nqui collent à l’ennemi.\\nN’échoue jamais.",
    },

    [MOVE_STONE_EDGE] = {
        .names = {
            .name = "Lame de Roc",
            .capsName = "LAME DE ROC",
            .fullName = "Lame de Roc",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_ROCK,
            .accuracy = 80,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Fait surgir des\\npierres aiguisées sous\\nl’ennemi. Taux de\\ncritiques élevé.",
    },

    [MOVE_CAPTIVATE] = {
        .names = {
            .name = "Séduction",
            .capsName = "SÉDUCTION",
            .fullName = "Séduction",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Si l’ennemi est de\\nsexe opposé au\\nlanceur, il est séduit\\net sa stat Atq. Spé.\\nbaisse fortement.",
    },

    [MOVE_STEALTH_ROCK] = {
        .names = {
            .name = "Piège de Roc",
            .capsName = "PIÈGE DE ROC",
            .fullName = "Piège de Roc",
        },
        .data = {
            .effect = MOVE_EFFECT_STEALTH_ROCK,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_OPPONENT_SIDE,
            .priority = 0,
            .flags = FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_DOWN,
            .contestType = CONTEST_COOL,
        },
        .description = "Lance des pierres\\nflottantes autour de\\nl’ennemi, qui blessent\\ntout ennemi entrant\\nau combat.",
    },

    [MOVE_GRASS_KNOT] = {
        .names = {
            .name = "Nœud Herbe",
            .capsName = "NŒUD HERBE",
            .fullName = "Nœud Herbe",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "L’ennemi est piégé\\ndans de l’herbe qui le\\nfait trébucher. Plus\\nil est lourd, plus il y\\na de dégâts.",
    },

    [MOVE_CHATTER] = {
        .names = {
            .name = "Babil",
            .capsName = "BABIL",
            .fullName = "Babil",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_PITY_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur envoie une\\nonde musicale en\\nrécitant des mots.\\nPeut aussi rendre\\nl’ennemi confus.",
    },

    [MOVE_JUDGMENT] = {
        .names = {
            .name = "Jugement",
            .capsName = "JUGEMENT",
            .fullName = "Jugement",
        },
        .data = {
            .effect = MOVE_EFFECT_JUDGMENT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_RANDOMIZE_NEXT_TURN,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur libère une\\nmyriade de rayons de\\nlumière. Le type\\nvarie selon la Plaque\\nque tient le lanceur.",
    },

    [MOVE_BUG_BITE] = {
        .names = {
            .name = "Piqûre",
            .capsName = "PIQÛRE",
            .fullName = "Piqûre",
        },
        .data = {
            .effect = MOVE_EFFECT_EAT_BERRY,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_STEAL_VOLTAGE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur pique\\nl’ennemi. S’il tient\\nune Baie, le lanceur\\nla dévore et obtient\\nson effet.",
    },

    [MOVE_CHARGE_BEAM] = {
        .names = {
            .name = "Rayon Chargé",
            .capsName = "RAYON CHARGÉ",
            .fullName = "Rayon Chargé",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_ELECTRIC,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 70,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur tire un\\nrayon chargé\\nd’électricité. Peut\\naussi augmenter son\\nAtq. Spé.",
    },

    [MOVE_WOOD_HAMMER] = {
        .names = {
            .name = "Martobois",
            .capsName = "MARTOBOIS",
            .fullName = "Martobois",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_THIRD,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur heurte\\nl’ennemi de son corps\\nrobuste. Inflige de\\nsérieux dégâts au\\nlanceur aussi.",
    },

    [MOVE_AQUA_JET] = {
        .names = {
            .name = "Aqua-Jet",
            .capsName = "AQUA-JET",
            .fullName = "Aqua-Jet",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_NEXT_TURN,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur se\\npropulse sur l’eau à\\nune vitesse telle qu’il\\ndevient invisible.\\nFrappe en premier.",
    },

    [MOVE_ATTACK_ORDER] = {
        .names = {
            .name = "Appel Attak",
            .capsName = "APPEL ATTAK",
            .fullName = "Appel Attak",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur appelle ses\\nsous-fifres pour\\nfrapper l’ennemi. \\nTaux de critiques\\nélevé.",
    },

    [MOVE_DEFEND_ORDER] = {
        .names = {
            .name = "Appel Défense",
            .capsName = "APPEL DÉFENSE",
            .fullName = "Appel Défense",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_SP_DEF_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur appelle\\nses sous-fifres pour\\nformer un bouclier qui\\naugmente sa Défense\\net sa Déf. Spé.",
    },

    [MOVE_HEAL_ORDER] = {
        .names = {
            .name = "Appel Soins",
            .capsName = "APPEL SOINS",
            .fullName = "Appel Soins",
        },
        .data = {
            .effect = MOVE_EFFECT_RESTORE_HALF_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur appelle ses\\nsous-fifres pour le\\nsoigner. Il récupère\\njusqu’à la moitié \\nde ses PV max.",
    },

    [MOVE_HEAD_SMASH] = {
        .names = {
            .name = "Fracass’Tête",
            .capsName = "FRACASS’TÊTE",
            .fullName = "Fracass’Tête",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_HALF,
            .split = SPLIT_PHYSICAL,
            .power = 150,
            .type = TYPE_ROCK,
            .accuracy = 80,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur assène\\nun coup de tête\\ndésespéré. Blesse\\naussi gravement le\\nlanceur.",
    },

    [MOVE_DOUBLE_HIT] = {
        .names = {
            .name = "Coup Double",
            .capsName = "COUP DOUBLE",
            .fullName = "Coup Double",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = 35,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_SMART,
        },
        .description = "Un coup de queue qui\\nfrappe l’ennemi deux\\nfois d’affilée.",
    },

    [MOVE_ROAR_OF_TIME] = {
        .names = {
            .name = "Hurle-Temps",
            .capsName = "HURLE-TEMPS",
            .fullName = "Hurle-Temps",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_DRAGON,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe\\nsi fort qu’il affecte\\nle cours du temps.\\nIl se repose au\\ntour suivant.",
    },

    [MOVE_SPACIAL_REND] = {
        .names = {
            .name = "Spatio-Rift",
            .capsName = "SPATIO-RIFT",
            .fullName = "Spatio-Rift",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_DRAGON,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_VOLTAGE_HEARTS,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur déchire\\nl’ennemi et l’espace\\nautour de lui. Taux\\nde critiques élevé.",
    },

    [MOVE_LUNAR_DANCE] = {
        .names = {
            .name = "Danse Lune",
            .capsName = "DANSE LUNE",
            .fullName = "Danse Lune",
        },
        .data = {
            .effect = MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur tombe\\nK.O. pour soigner le\\nstatut et les PV du\\nPokémon qui passe\\naprès lui.",
    },

    [MOVE_CRUSH_GRIP] = {
        .names = {
            .name = "Presse",
            .capsName = "PRESSE",
            .fullName = "Presse",
        },
        .data = {
            .effect = MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_ON_FINALE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une force puissante\\nécrase l’ennemi. Plus\\nil lui reste de PV et\\nplus l’attaque est\\npuissante.",
    },

    [MOVE_MAGMA_STORM] = {
        .names = {
            .name = "Vortex Magma",
            .capsName = "VORTEX MAGMA",
            .fullName = "Vortex Magma",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FIRE,
            .accuracy = 75,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_TOUGH,
        },
        .description = "L’ennemi est pris\\ndans un tourbillon\\nde feu qui dure de\\n2 à 5 tours.",
    },

    [MOVE_DARK_VOID] = {
        .names = {
            .name = "Trou Noir",
            .capsName = "TROU NOIR",
            .fullName = "Trou Noir",
        },
        .data = {
            .effect = MOVE_EFFECT_STATUS_SLEEP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 50,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_KEEP_VOLTAGE_UP,
            .contestType = CONTEST_SMART,
        },
        .description = "L’ennemi est plongé\\ndans les ténèbres. Il\\ntombe dans un\\nprofond sommeil.",
    },

    [MOVE_SEED_FLARE] = {
        .names = {
            .name = "Fulmigraine",
            .capsName = "FULMIGRAINE",
            .fullName = "Fulmigraine",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_2_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_GRASS,
            .accuracy = 85,
            .pp = 5,
            .effectChance = 40,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_COOL,
        },
        .description = "Le corps du lanceur\\német une onde de\\nchoc. Peut aussi\\nbaisser la Déf. Spé.\\nde la cible.",
    },

    [MOVE_OMINOUS_WIND] = {
        .names = {
            .name = "Vent Mauvais",
            .capsName = "VENT MAUVAIS",
            .fullName = "Vent Mauvais",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ALL_STATS_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur crée une\\nviolente bourrasque.\\nPeut aussi augmenter\\ntoutes ses stats.",
    },

    [MOVE_SHADOW_FORCE] = {
        .names = {
            .name = "Revenant",
            .capsName = "REVENANT",
            .fullName = "Revenant",
        },
        .data = {
            .effect = MOVE_EFFECT_SHADOW_FORCE,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_CONTACT,
        },
        .contest = {
            .appeal = APPEAL_AFTER_MAX_VOLTAGE_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur disparaît\\net frappe l’ennemi au\\nsecond tour.\\nFonctionne même si\\nl’ennemi utilise Abri.",
    },

    [MOVE_468] = {
        .names = {
            .name = "MOVE_468",
            .capsName = "MOVE_468",
            .fullName = "MOVE_468",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "--",
    },

    [MOVE_469] = {
        .names = {
            .name = "MOVE_469",
            .capsName = "MOVE_469",
            .fullName = "MOVE_469",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_FIRST_HEARTS,
            .contestType = CONTEST_CUTE,
        },
        .description = "--",
    },

    [MOVE_470] = {
        .names = {
            .name = "MOVE_470",
            .capsName = "MOVE_470",
            .fullName = "MOVE_470",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LAST_HEARTS,
            .contestType = CONTEST_SMART,
        },
        .description = "--",
    },

    [MOVE_HONE_CLAWS] = {
        .names = {
            .name = "Aiguisage",
            .capsName = "AIGUISAGE",
            .fullName = "Aiguisage",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_ACC_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur s’aiguise\\nles griffes.\\nAugmente l’Attaque\\net la Précision.",
    },

    [MOVE_WIDE_GUARD] = {
        .names = {
            .name = "Garde Large",
            .capsName = "GARDE LARGE",
            .fullName = "Garde Large",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT_USER_SIDE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 3,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Bloque les attaques\\nvisant tous les alliés\\npendant un tour.",
    },

    [MOVE_GUARD_SPLIT] = {
        .names = {
            .name = "Partage Garde",
            .capsName = "PARTAGE GARDE",
            .fullName = "Partage Garde",
        },
        .data = {
            .effect = MOVE_EFFECT_GUARD_SPLIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Additionne la Déf.\\net la Déf. Spé. du\\nlanceur et de sa cible\\net les redistribue\\nentre les deux.",
    },

    [MOVE_POWER_SPLIT] = {
        .names = {
            .name = "Partage Force",
            .capsName = "PARTAGE FORCE",
            .fullName = "Partage Force",
        },
        .data = {
            .effect = MOVE_EFFECT_POWER_SPLIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Additionne l’Att.\\nSpé. et l’Att. du\\nlanceur et de sa cible\\net les redistribue\\nentre les deux.",
    },

    [MOVE_WONDER_ROOM] = {
        .names = {
            .name = "Zone Étrange",
            .capsName = "ZONE ÉTRANGE",
            .fullName = "Zone Étrange",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur crée une\\nzone mystérieuse où\\nla Déf. et la Déf.\\nSpé. sont inversées\\npendant cinq tours.",
    },

    [MOVE_PSYSHOCK] = {
        .names = {
            .name = "Choc Psy",
            .capsName = "CHOC PSY",
            .fullName = "Choc Psy",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Des ondes mystérieuses\\nsont projetées sur la\\ncible et lui inflige\\ndes dégâts physiques.",
    },

    [MOVE_VENOSHOCK] = {
        .names = {
            .name = "Choc Venin",
            .capsName = "CHOC VENIN",
            .fullName = "Choc Venin",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_ON_POISONED,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur asperge la\\ncible d’un poison\\nspécial. La puissance\\nest doublée si la\\ncible est empoisonnée.",
    },

    [MOVE_AUTOTOMIZE] = {
        .names = {
            .name = "Allègement",
            .capsName = "ALLÈGEMENT",
            .fullName = "Allègement",
        },
        .data = {
            .effect = MOVE_EFFECT_AUTOTOMIZE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur diminue\\nson poids et\\naugmente beaucoup\\nsa Vitesse.",
    },

    [MOVE_RAGE_POWDER] = {
        .names = {
            .name = "Poudre Fureur",
            .capsName = "POUDRE FUREUR",
            .fullName = "Poudre Fureur",
        },
        .data = {
            .effect = MOVE_EFFECT_MAKE_GLOBAL_TARGET,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 2,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur s’asperge\\nd’une poudre irritante\\npour attirer toutes\\nles attaques ennemies\\nsur lui.",
    },

    [MOVE_TELEKINESIS] = {
        .names = {
            .name = "Lévikinésie",
            .capsName = "LÉVIKINÉSIE",
            .fullName = "Lévikinésie",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Un pouvoir qui fait\\nflotter l’ennemi dans\\nles airs. Pendant 3\\ntours, il devient plus\\nfacile à atteindre.",
    },

    [MOVE_MAGIC_ROOM] = {
        .names = {
            .name = "Zone Magique",
            .capsName = "ZONE MAGIQUE",
            .fullName = "Zone Magique",
        },
        .data = {
            .effect = MOVE_EFFECT_MAGIC_ROOM,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur crée une\\nzone mystérieuse où\\nles objets tenus n’ont\\nplus aucun effet\\npendant cinq tours.",
    },

    [MOVE_SMACK_DOWN] = {
        .names = {
            .name = "Anti-Air",
            .capsName = "ANTI-AIR",
            .fullName = "Anti-Air",
        },
        .data = {
            .effect = MOVE_EFFECT_SMACK_DOWN,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur jette un\\nprojectile sur la\\ncible. Si cette der-\\nnière vole, elle\\ntombe au sol.",
    },

    [MOVE_STORM_THROW] = {
        .names = {
            .name = "Yama Arashi",
            .capsName = "YAMA ARASHI",
            .fullName = "Yama Arashi",
        },
        .data = {
            .effect = MOVE_EFFECT_ALWAYS_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur porte un\\ncoup très puissant à\\nla cible. L’attaque\\nest toujours critique.",
    },

    [MOVE_FLAME_BURST] = {
        .names = {
            .name = "Rebondifeu",
            .capsName = "REBONDIFEU",
            .fullName = "Rebondifeu",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "L’attaque projette\\ndes flammes qui\\ntouchent tout ennemi\\nsitué à côté.",
    },

    [MOVE_SLUDGE_WAVE] = {
        .names = {
            .name = "Cradovague",
            .capsName = "CRADOVAGUE",
            .fullName = "Cradovague",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_SPECIAL,
            .power = 95,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une vague de détritus\\nattaque tous les\\nPokémon autour du\\nlanceur. Peut aussi\\nempoisonner.",
    },

    [MOVE_QUIVER_DANCE] = {
        .names = {
            .name = "Papillodanse",
            .capsName = "PAPILLODANSE",
            .fullName = "Papillodanse",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Une danse mystique\\ndont le rythme parfait\\naugmente l’Atk. Spé.,\\nla Déf. Spé. et la\\nVitesse du lanceur.",
    },

    [MOVE_HEAVY_SLAM] = {
        .names = {
            .name = "Tacle Lourd",
            .capsName = "TACLE LOURD",
            .fullName = "Tacle Lourd",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAVY_SLAM,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Plus le lanceur est\\nlourd par rapport à\\nla cible, plus la\\npuissance de cette\\ncapacité augmente.",
    },

    [MOVE_SYNCHRONOISE] = {
        .names = {
            .name = "Synchropeine",
            .capsName = "SYNCHROPEINE",
            .fullName = "Synchropeine",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Des ondes mystérieuses\\nblessent tous les\\nPokémon alentour qui\\nsont du même type\\nque le lanceur.",
    },

    [MOVE_ELECTRO_BALL] = {
        .names = {
            .name = "Boule Élek",
            .capsName = "BOULE ÉLEK",
            .fullName = "Boule Élek",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Plus la Vitesse du\\nlanceur est élevée par\\nrapport à celle de la\\ncible, plus la puiss.\\nde la capacité aug.",
    },

    [MOVE_SOAK] = {
        .names = {
            .name = "Détrempage",
            .capsName = "DÉTREMPAGE",
            .fullName = "Détrempage",
        },
        .data = {
            .effect = MOVE_EFFECT_CHANGE_TO_WATER_TYPE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur projette\\nbeaucoup d’eau sur\\nsa cible, qui devient\\nde type Eau.",
    },

    [MOVE_FLAME_CHARGE] = {
        .names = {
            .name = "Nitrocharge",
            .capsName = "NITROCHARGE",
            .fullName = "Nitrocharge",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur s’entoure\\nde flammes pour at-\\ntaquer la cible. Il\\nse concentre et sa\\nVitesse augmente.",
    },

    [MOVE_COIL] = {
        .names = {
            .name = "Enroulement",
            .capsName = "ENROULEMENT",
            .fullName = "Enroulement",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DEF_ACC_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur s’enroule\\nsur lui-même et se\\nconcentre. Son Att.,\\nsa Déf. et sa\\nPrécis. augmentent.",
    },

    [MOVE_LOW_SWEEP] = {
        .names = {
            .name = "Balayette",
            .capsName = "BALAYETTE",
            .fullName = "Balayette",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Un coup rapide qui\\naffecte la mobilité\\nde la cible et\\ndiminue sa Vitesse.",
    },

    [MOVE_ACID_SPRAY] = {
        .names = {
            .name = "Bombe Acide",
            .capsName = "BOMBE ACIDE",
            .fullName = "Bombe Acide",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_2_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur projette\\nun liquide acide qui\\nfait fondre la cible.\\nDiminue beaucoup la\\nDéf. Spé. de celle-ci.",
    },

    [MOVE_FOUL_PLAY] = {
        .names = {
            .name = "Tricherie",
            .capsName = "TRICHERIE",
            .fullName = "Tricherie",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 95,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Utilise la force de\\nla cible. Plus l’Att.\\nde celle-ci est\\nélevée, plus le lanc-\\neur inflige de dégâts.",
    },

    [MOVE_SIMPLE_BEAM] = {
        .names = {
            .name = "Rayon Simple",
            .capsName = "RAYON SIMPLE",
            .fullName = "Rayon Simple",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_ABILITY_TO_SIMPLE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur envoie des\\nondes mystér. à la\\ncible, dont le talent\\nest remplacé par le\\ntalent Simple.",
    },

    [MOVE_ENTRAINMENT] = {
        .names = {
            .name = "Ten-Danse",
            .capsName = "TEN-DANSE",
            .fullName = "Ten-Danse",
        },
        .data = {
            .effect = MOVE_EFFECT_ENTRAINMENT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur danse sur\\nun rythme étrange.\\nIl force sa cible\\nà l’imiter pour\\nadopter son talent.",
    },

    [MOVE_AFTER_YOU] = {
        .names = {
            .name = "Après Vous",
            .capsName = "APRÈS VOUS",
            .fullName = "Après Vous",
        },
        .data = {
            .effect = MOVE_EFFECT_AFTER_YOU,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "S’il agit le premier,\\nle lanceur permet à sa\\ncible d’utiliser une\\ncapacité après lui.",
    },

    [MOVE_ROUND] = {
        .names = {
            .name = "Chant Canon",
            .capsName = "CHANT CANON",
            .fullName = "Chant Canon",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Si plusieurs Pokémon\\ndéclenchent cette\\natt. à la suite, la\\npuissance augmente.",
    },

    [MOVE_ECHOED_VOICE] = {
        .names = {
            .name = "Écho",
            .capsName = "ÉCHO",
            .fullName = "Écho",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Si le lanceur ou\\nd’autres Pkms utilis-\\nent cette capacité\\nà chaque tour, la\\npuissance augmente.",
    },

    [MOVE_CHIP_AWAY] = {
        .names = {
            .name = "Attrition",
            .capsName = "ATTRITION",
            .fullName = "Attrition",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Inflige des dégâts\\nen ignorant la Déf.\\net l’Esquive de la\\ncible.",
    },

    [MOVE_CLEAR_SMOG] = {
        .names = {
            .name = "Bain de Smog",
            .capsName = "BAIN DE SMOG",
            .fullName = "Bain de Smog",
        },
        .data = {
            .effect = MOVE_EFFECT_CLEAR_SMOG,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur projette\\nde la boue bizarre sur\\nla cible. Les change-\\nments de stats de la\\ncible sont annulés.",
    },

    [MOVE_STORED_POWER] = {
        .names = {
            .name = "Force Ajoutée",
            .capsName = "FORCE AJOUTÉE",
            .fullName = "Force Ajoutée",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 20,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Plus les stats du lan-\\nceur sont augmentées,\\nplus la puissance de\\ncette capacité augmente.",
    },

    [MOVE_QUICK_GUARD] = {
        .names = {
            .name = "Prévention",
            .capsName = "PRÉVENTION",
            .fullName = "Prévention",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT_USER_SIDE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 3,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Protège le lanceur\\net ses alliés des\\nattaques prioritaires.",
    },

    [MOVE_ALLY_SWITCH] = {
        .names = {
            .name = "Interversion",
            .capsName = "INTERVERSION",
            .fullName = "Interversion",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 2,
            .flags = FLAG_KEEP_HP_BAR | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Il échange sa place\\navec celle d’un allié.\\nPeut échouer si\\nutilisée plusieurs\\nfois de suite.",
    },

    [MOVE_SCALD] = {
        .names = {
            .name = "Ébullition",
            .capsName = "ÉBULLITION",
            .fullName = "Ébullition",
        },
        .data = {
            .effect = MOVE_EFFECT_THAW_AND_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur projette un\\njet d’eau bouillante\\nsur la cible, ce qui\\npeut aussi la brûler.",
    },

    [MOVE_SHELL_SMASH] = {
        .names = {
            .name = "Exuviation",
            .capsName = "EXUVIATION",
            .fullName = "Exuviation",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Brise sa carapace,\\nbaisse sa Déf. et sa\\nDéf. Spé. et augmente\\nbeaucoup son Att., son\\nAtt. Spé. et sa Vit.",
    },

    [MOVE_HEAL_PULSE] = {
        .names = {
            .name = "Vibra Soin",
            .capsName = "VIBRA SOIN",
            .fullName = "Vibra Soin",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_TARGET,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur projette\\nune aura de bien-être\\nqui fait récupérer la\\nmoitié de ses PV max\\nà la cible.",
    },

    [MOVE_HEX] = {
        .names = {
            .name = "Châtiment",
            .capsName = "CHÂTIMENT",
            .fullName = "Châtiment",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Une attaque acharnée\\nqui cause davantage de\\ndégâts à la cible si\\nelle a une altération\\nde statut.",
    },

    [MOVE_SKY_DROP] = {
        .names = {
            .name = "Chute Libre",
            .capsName = "CHUTE LIBRE",
            .fullName = "Chute Libre",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur emmène\\nl’ennemi dans les airs\\nau 1er tour et le\\nlâche dans le vide\\nau 2ème.",
    },

    [MOVE_SHIFT_GEAR] = {
        .names = {
            .name = "Change-Vitesse",
            .capsName = "CHANGE-VITESSE",
            .fullName = "Change-Vitesse",
        },
        .data = {
            .effect = MOVE_EFFECT_SPEED_UP_2_ATK_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur fait tour-\\nner ses engrenages.\\nCela augmente son Att.\\net augmente beaucoup\\nsa Vitesse.",
    },

    [MOVE_CIRCLE_THROW] = {
        .names = {
            .name = "Projection",
            .capsName = "PROJECTION",
            .fullName = "Projection",
        },
        .data = {
            .effect = MOVE_EFFECT_FORCE_SWITCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIGHTING,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -6,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque la\\ncible en la projetant\\nviolemment en arrière.\\nPeut aussi baisser\\nla Déf. de la cible.",
    },

    [MOVE_INCINERATE] = {
        .names = {
            .name = "Calcination",
            .capsName = "CALCINATION",
            .fullName = "Calcination",
        },
        .data = {
            .effect = MOVE_EFFECT_INCINERATE,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Des flammes calcinent\\nla cible. Si elle\\ntient un objet, il est\\nbrûlé et devient\\ninutilisable.",
    },

    [MOVE_QUASH] = {
        .names = {
            .name = "À la Queue",
            .capsName = "À LE QUEUE",
            .fullName = "À la Queue",
        },
        .data = {
            .effect = MOVE_EFFECT_QUASH,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Retient la cible de\\nforce, l’obligeant à\\nagir en dernier.",
    },

    [MOVE_ACROBATICS] = {
        .names = {
            .name = "Acrobatie",
            .capsName = "ACROBATIE",
            .fullName = "Acrobatie",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_WITHOUT_ITEM,
            .split = SPLIT_PHYSICAL,
            .power = 55,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe la\\ncible avec agilité.\\nS’il n’a pas d’objets\\nl’attaque inflige\\nplus de dégâts.",
    },

    [MOVE_REFLECT_TYPE] = {
        .names = {
            .name = "Copie-Type",
            .capsName = "COPIE-TYPE",
            .fullName = "Copie-Type",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur adopte\\nle même type que\\nla cible.",
    },

    [MOVE_RETALIATE] = {
        .names = {
            .name = "Vengeance",
            .capsName = "VENGEANCE",
            .fullName = "Vengeance",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Si un Pokémon de\\nl’équipe a été mis\\nK.O. au tour d’avant,\\nla puissance augmente.",
    },

    [MOVE_FINAL_GAMBIT] = {
        .names = {
            .name = "Tout ou Rien",
            .capsName = "TOUT OU RIEN",
            .fullName = "Tout ou Rien",
        },
        .data = {
            .effect = MOVE_EFFECT_FINAL_GAMBIT,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Une attaque très\\nrisquée. Le lanceur\\nperd tous ses PV\\net inflige autant de\\ndégâts à la cible.",
    },

    [MOVE_BESTOW] = {
        .names = {
            .name = "Passe-Cadeau",
            .capsName = "PASSE-CADEAU",
            .fullName = "Passe-Cadeau",
        },
        .data = {
            .effect = MOVE_EFFECT_GIVE_HELD_ITEM,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Si la cible ne tient\\npas d’objet, le\\nlanceur lui donne\\nl’objet qu’il porte.",
    },

    [MOVE_INFERNO] = {
        .names = {
            .name = "Feu d’Enfer",
            .capsName = "FEU d’ENFER",
            .fullName = "Feu d’Enfer",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FIRE,
            .accuracy = 50,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "La cible est entourée\\nd’un torrent de \\nflammes ardentes qui\\nla brûlent.",
    },

    [MOVE_WATER_PLEDGE] = {
        .names = {
            .name = "Aire d’Eau",
            .capsName = "AIRE D’EAU",
            .fullName = "Aire d’Eau",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Si cette capacité est\\nutilisée en même temps\\nqu’Aire de Feu, la\\npuissance augmente.",
    },

    [MOVE_FIRE_PLEDGE] = {
        .names = {
            .name = "Aire de Feu",
            .capsName = "AIRE DE FEU",
            .fullName = "Aire de Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Si cette capacité est\\nutilisée en même temps\\nqu’Aire d’Herbe, la\\npuissance augmente.",
    },

    [MOVE_GRASS_PLEDGE] = {
        .names = {
            .name = "Aire d’Herbe",
            .capsName = "AIRE D’HERBE",
            .fullName = "Aire d’Herbe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Si cette capacité est\\nutilisée en même temps\\nqu’Aire d’Eau, la\\npuissance augmente.",
    },

    [MOVE_VOLT_SWITCH] = {
        .names = {
            .name = "Change-Éclair",
            .capsName = "CHANGE-ÉCLAIR",
            .fullName = "Change-Éclair",
        },
        .data = {
            .effect = MOVE_EFFECT_SWITCH_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque,\\npuis revient à toute\\nvitesse à côté de son\\nDresseur ou de sa\\nDresseuse.",
    },

    [MOVE_STRUGGLE_BUG] = {
        .names = {
            .name = "Survinsecte",
            .capsName = "SURVINSECTE",
            .fullName = "Survinsecte",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur frappe en\\nse débattant de toutes\\nses forces, et baisse\\nl’Attaque Spéciale\\nde la cible.",
    },

    [MOVE_BULLDOZE] = {
        .names = {
            .name = "Piétisol",
            .capsName = "PIÉTISOL",
            .fullName = "Piétisol",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur piétine le\\nsol et attaque la\\ncible. Baisse la vit.\\nde déplacement pendant\\nun court instant.",
    },

    [MOVE_FROST_BREATH] = {
        .names = {
            .name = "Souffle Glacé",
            .capsName = "SOUFFLE GLACÉ",
            .fullName = "Souffle Glacé",
        },
        .data = {
            .effect = MOVE_EFFECT_ALWAYS_CRITICAL,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur crache un\\nsouffle froid qui\\nblesse la cible.\\nL’attaque est\\ntoujours critique.",
    },

    [MOVE_DRAGON_TAIL] = {
        .names = {
            .name = "Draco-Queue",
            .capsName = "DRACO-QUEUE",
            .fullName = "Draco-Queue",
        },
        .data = {
            .effect = MOVE_EFFECT_FORCE_SWITCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DRAGON,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -6,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Blesse la cible et\\nl’envoie au loin.\\nContre un Pkm sauvage\\nseul, met fin\\nau combat.",
    },

    [MOVE_WORK_UP] = {
        .names = {
            .name = "Rengorgement",
            .capsName = "RENGORGEMENT",
            .fullName = "Rengorgement",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_SP_ATK_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur se rengorge\\net augmente son Att.\\net son Att. Spé.\\npendant un court\\ninstant.",
    },

    [MOVE_ELECTROWEB] = {
        .names = {
            .name = "Toile Élek",
            .capsName = "TOILE ÉLEK",
            .fullName = "Toile Élek",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 55,
            .type = TYPE_ELECTRIC,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Attaque la cible en\\nl’attrapant dans un\\nfilet électrique.\\nBaisse aussi la\\nvitesse.",
    },

    [MOVE_WILD_CHARGE] = {
        .names = {
            .name = "Éclair Fou",
            .capsName = "ÉCLAIR FOU",
            .fullName = "Éclair Fou",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_THIRD,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur s’enveloppe\\nd’électricité et\\ncharge la cible, ce\\nqui le blesse\\négalement.",
    },

    [MOVE_DRILL_RUN] = {
        .names = {
            .name = "Tunnelier",
            .capsName = "TUNNELIER",
            .fullName = "Tunnelier",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_GROUND,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur tourne sur\\nlui-même comme une\\nperceuse et se jette\\nsur la cible. Taux de\\ncritiques élevé.",
    },

    [MOVE_DUAL_CHOP] = {
        .names = {
            .name = "Double Baffe",
            .capsName = "DOUBLE BAFFE",
            .fullName = "Double Baffe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_DRAGON,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur attaque la\\ncible deux fois\\nd’affilée avec les\\nparties les plus\\nrobustes de son corps.",
    },

    [MOVE_HEART_STAMP] = {
        .names = {
            .name = "Crève-Coeur",
            .capsName = "CRÈVE-CŒUR",
            .fullName = "Crève-Coeur",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "30% de chance\\nd’apeurer la cible.",
    },

    [MOVE_HORN_LEECH] = {
        .names = {
            .name = "Encornebois",
            .capsName = "ENCORNEBOIS",
            .fullName = "Encornebois",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Un coup de cornes qui\\ndraine l’énergie de la\\ncible et convertit une\\npartie des dégâts\\ninfligés en PV",
    },

    [MOVE_SACRED_SWORD] = {
        .names = {
            .name = "Lame Sainte",
            .capsName = "LAME SAINTE",
            .fullName = "Lame Sainte",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur donne un\\nviolent coup d’épée\\nqui inflige des dégâts\\nen ignorant ses chang-\\nements de stats.",
    },

    [MOVE_RAZOR_SHELL] = {
        .names = {
            .name = "Coqui-Lame",
            .capsName = "COQUI-LAME",
            .fullName = "Coqui-Lame",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_WATER,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coquillage aiguisé\\nlacère la cible et\\npeut aussi baisser\\nsa Défense.",
    },

    [MOVE_HEAT_CRASH] = {
        .names = {
            .name = "Tacle Feu",
            .capsName = "TACLE FEU",
            .fullName = "Tacle Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAVY_SLAM,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Plus le lanceur est\\nlourd par rapport à la\\ncible, plus la\\npuissance de cette\\ncapacité augmente.",
    },

    [MOVE_LEAF_TORNADO] = {
        .names = {
            .name = "Phytomixeur",
            .capsName = "PHYTOMIXEUR",
            .fullName = "Phytomixeur",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_GRASS,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "50% de chance de\\nbaisser la Précision\\nde la cible\\nd’un niveau.",
    },

    [MOVE_STEAMROLLER] = {
        .names = {
            .name = "Bulldoboule",
            .capsName = "BULLDOBOULE",
            .fullName = "Bulldoboule",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "30% de chance\\nd’apeurer la cible.",
    },

    [MOVE_COTTON_GUARD] = {
        .names = {
            .name = "Cotogarde",
            .capsName = "COTOGARDE",
            .fullName = "Cotogarde",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP_3,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur se protège\\nen s’emmitouflant dans\\ndu coton. Augmente sa\\nDéfense pendant un\\nlong moment.",
    },

    [MOVE_NIGHT_DAZE] = {
        .names = {
            .name = "Explonuit",
            .capsName = "EXPLONUIT",
            .fullName = "Explonuit",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ACCURACY_HIT,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (85)),
            .type = TYPE_DARK,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 40,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec une onde de choc\\nténébreuse qui peut\\naussi baisser la Préc.\\nde la cible.",
    },

    [MOVE_PSYSTRIKE] = {
        .names = {
            .name = "Frappe Psy",
            .capsName = "FRAPPE PSY",
            .fullName = "Frappe Psy",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Des ondes mystérieuses\\nsont projetées sur la\\ncible et lui infligent\\ndes dégâts physiques.",
    },

    [MOVE_TAIL_SLAP] = {
        .names = {
            .name = "Plumo-Queue",
            .capsName = "PLUMO-QUEUE",
            .fullName = "Plumo-Queue",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_NORMAL,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur frappe la\\ncible de deux à cinq\\nfois d’affilée avec\\nsa queue robuste.",
    },

    [MOVE_HURRICANE] = {
        .names = {
            .name = "Vent Violent",
            .capsName = "VENT VIOLENT",
            .fullName = "Vent Violent",
        },
        .data = {
            .effect = MOVE_EFFECT_HURRICANE,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_FLYING,
            .accuracy = 70,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur déclenche\\nune violente tempête\\nqui s’abat sur la\\ncible. Peut aussi la\\nrendre confuse.",
    },

    [MOVE_HEAD_CHARGE] = {
        .names = {
            .name = "Peignée",
            .capsName = "PEIGNÉE",
            .fullName = "Peignée",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_THIRD,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Les dégâts de recul\\nsont équivalents à 1/4\\ndes dégâts infligés\\nà la cible.",
    },

    [MOVE_GEAR_GRIND] = {
        .names = {
            .name = "Lancécrou",
            .capsName = "LANCÉCROU",
            .fullName = "Lancécrou",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (60) : (50)),
            .type = TYPE_STEEL,
            .accuracy = ((CHAMPIONS_POWER_CHANGES) ? (90) : (85)),
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le lanceur jette\\ndeux écrous d’acier\\nqui frappent la cible\\ndeux fois d’affilée.",
    },

    [MOVE_SEARING_SHOT] = {
        .names = {
            .name = "Incendie",
            .capsName = "INCENDIE",
            .fullName = "Incendie",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "30% de chance de\\nbrûler la cible.",
    },

    [MOVE_TECHNO_BLAST] = {
        .names = {
            .name = "Techno-Buster",
            .capsName = "TECHNO-BUSTER",
            .fullName = "Techno-Buster",
        },
        .data = {
            .effect = MOVE_EFFECT_TECHNO_BLAST,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe la cible en\\nprojetant un rayon de\\nlumière. Le type de la\\ncapacité varie selon\\nle module tenu.",
    },

    [MOVE_RELIC_SONG] = {
        .names = {
            .name = "Chant Antique",
            .capsName = "CHANT ANTIQUE",
            .fullName = "Chant Antique",
        },
        .data = {
            .effect = MOVE_EFFECT_SLEEP_HIT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Attaque la cible en\\nlui chantant une\\nchanson d’un autre\\ntemps qui peut aussi\\nl’endormir.",
    },

    [MOVE_SECRET_SWORD] = {
        .names = {
            .name = "Lame Ointe",
            .capsName = "LAME OINTE",
            .fullName = "Lame Ointe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 85,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur lacère la\\ncible avec une longue\\ncorne dont le pouvoir\\nmystérieux inflige des\\ndégâts physiques.",
    },

    [MOVE_GLACIATE] = {
        .names = {
            .name = "Ère Glaciaire",
            .capsName = "ÈRE GLACIAIRE",
            .fullName = "Ère Glaciaire",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_ICE,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Un souffle de vent qui\\ncongèle tout sur son\\npassage s’abat sur la\\ncible et réduit aussi\\nsa Vitesse.",
    },

    [MOVE_BOLT_STRIKE] = {
        .names = {
            .name = "Charge Foudre",
            .capsName = "CHARGE FOUDRE",
            .fullName = "Charge Foudre",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_ELECTRIC,
            .accuracy = 85,
            .pp = 5,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "S’enveloppe d’une\\ncharge électrique\\nsurpuissante et se\\njette sur la cible,\\nqui peut la paralyser.",
    },

    [MOVE_BLUE_FLARE] = {
        .names = {
            .name = "Flamme Bleue",
            .capsName = "FLAMME BLEUE",
            .fullName = "Flamme Bleue",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_FIRE,
            .accuracy = 85,
            .pp = 5,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "De magnifiques et\\nredoutables flammes\\nbleues s’abattent sur\\nla cible, et peuvent\\naussi la brûler.",
    },

    [MOVE_FIERY_DANCE] = {
        .names = {
            .name = "Danse du Feu",
            .capsName = "DANSE DU FEU",
            .fullName = "Danse du Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur s’enveloppe\\nde flammes et attaque\\nla cible. Peut aussi\\naugmenter l’Att.\\nSpéc. du lanceur.",
    },

    [MOVE_FREEZE_SHOCK] = {
        .names = {
            .name = "Éclair Gelé",
            .capsName = "ÉCLAIR GELÉ",
            .fullName = "Éclair Gelé",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur projette un\\nbloc de glace\\nélectrifié sur la\\ncible au second tour.\\nPeut la paralyser.",
    },

    [MOVE_ICE_BURN] = {
        .names = {
            .name = "Feu Glacé",
            .capsName = "FEU GLACÉ",
            .fullName = "Feu Glacé",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Au second tour,\\nprojette un souffle de\\nvent glacial dévasta-\\nteur sur la cible.\\nPeut aussi la brûler.",
    },

    [MOVE_SNARL] = {
        .names = {
            .name = "Aboiement",
            .capsName = "ABOIEMENT",
            .fullName = "Aboiement",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 55,
            .type = TYPE_DARK,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur hurle sur\\nla cible. Baisse\\nl’Att. Spé. de la\\ncible pendant un\\ncourt instant.",
    },

    [MOVE_ICICLE_CRASH] = {
        .names = {
            .name = "Chute Glace",
            .capsName = "CHUTTE GLACE",
            .fullName = "Chute Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur envoie de\\ngros blocs de glace\\nsur la cible pour lui\\ninfliger des dégâts.\\nPeut aussi l’apeurer.",
    },

    [MOVE_V_CREATE] = {
        .names = {
            .name = "Coup Victoire",
            .capsName = "COUP VICTOIRE",
            .fullName = "Coup Victoire",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_SP_DEF_SPEED_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 180,
            .type = TYPE_FIRE,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait jaillir des\\nflammes ardentes de\\nson front. Baisse la\\nDéf., la Déf. Spé. et\\nla Vit. du lanceur.",
    },

    [MOVE_FUSION_FLARE] = {
        .names = {
            .name = "Flamme Croix",
            .capsName = "FLAMME CROIX",
            .fullName = "Flamme Croix",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Projette une boule de\\nfeu gigantesque. La\\npuissance augmente\\nsous l’influence\\nd’Éclair Croix.",
    },

    [MOVE_FUSION_BOLT] = {
        .names = {
            .name = "Éclair Croix",
            .capsName = "ÉCLAIR CROIX",
            .fullName = "Éclair Croix",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette un orbe élec-\\ntrique gigantesque. La\\npuissance augmente\\nsous l’influence de\\nFlamme Croix.",
    },

    [MOVE_FLYING_PRESS] = {
        .names = {
            .name = "Flying Press",
            .capsName = "FLYING PRESS",
            .fullName = "Flying Press",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Plonge en piqué sur la\\ncible depuis le ciel.",
    },

    [MOVE_MAT_BLOCK] = {
        .names = {
            .name = "Tatamigaeshi",
            .capsName = "TATAMIGAESHI",
            .fullName = "Tatamigaeshi",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT_USER_SIDE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Protège l’équipe\\ncontre toutes les cap-\\nacités offensives. Ne\\nfonctionne que le\\npremier tour.",
    },

    [MOVE_BELCH] = {
        .names = {
            .name = "Éructation",
            .capsName = "ÉRUCTATION",
            .fullName = "Éructation",
        },
        .data = {
            .effect = MOVE_EFFECT_BELCH,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_POISON,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Éructe sur la cible,\\ninfligeant des dégâts.\\nNe fonctionne que si\\nle lanceur consomme\\nune Baie tenue.",
    },

    [MOVE_ROTOTILLER] = {
        .names = {
            .name = "Fertilisation",
            .capsName = "FERTILISATION",
            .fullName = "Fertilisation",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT | RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Laboure le sol et le\\nrend plus fertile.\\nAugmente l’Att. et\\nl’Att. Spé. des Poké-\\nmon de type Plante.",
    },

    [MOVE_STICKY_WEB] = {
        .names = {
            .name = "Toile Gluante",
            .capsName = "TOILE GLUANTE",
            .fullName = "Toile Gluante",
        },
        .data = {
            .effect = MOVE_EFFECT_STICKY_WEB,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_OPPONENT_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Le lanceur déploie\\nune toile visqueuse\\nqui ralentit la Vit.\\nde tout adversaire\\nentrant au combat.",
    },

    [MOVE_FELL_STINGER] = {
        .names = {
            .name = "Dard Mortel",
            .capsName = "DARD MORTEL",
            .fullName = "Dard Mortel",
        },
        .data = {
            .effect = MOVE_EFFECT_FELL_STINGER,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur augmente\\nénormément son Att. si\\nune cible est mise\\nK.O. par cette\\ncapacité.",
    },

    [MOVE_PHANTOM_FORCE] = {
        .names = {
            .name = "Hantise",
            .capsName = "HANTISE",
            .fullName = "Hantise",
        },
        .data = {
            .effect = MOVE_EFFECT_SHADOW_FORCE,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Disparaît dans les té-\\nnèbres. Après un court\\ninstant, il attaque en\\nignorant les capacités\\ncomme Abri ou Détect.",
    },

    [MOVE_TRICK_OR_TREAT] = {
        .names = {
            .name = "Halloween",
            .capsName = "HALLOWEEN",
            .fullName = "Halloween",
        },
        .data = {
            .effect = MOVE_EFFECT_ADD_TYPE_GHOST,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Insuffle à la cible\\nl’esprit d’Halloween,\\net lui ajoute le\\ntype Spectre.",
    },

    [MOVE_NOBLE_ROAR] = {
        .names = {
            .name = "Râle Mâle",
            .capsName = "RÂLE MÂLE",
            .fullName = "Râle Mâle",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_SP_ATK_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Pousse un rugissement\\nqui intimide la cible\\net diminue l’Att. et\\nl’Att. Spé. de\\ncelle-ci.",
    },

    [MOVE_ION_DELUGE] = {
        .names = {
            .name = "DélugePlasmique",
            .capsName = "DÉLUGEPLASMIQUE",
            .fullName = "DélugePlasmique",
        },
        .data = {
            .effect = MOVE_EFFECT_ION_DELUGE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 25,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Change les attaques\\nde type Normal en\\ntype Electrik pour\\nle tour.",
    },

    [MOVE_PARABOLIC_CHARGE] = {
        .names = {
            .name = "Parabocharge",
            .capsName = "PARABOCHARGE",
            .fullName = "Parabocharge",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 65,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Attaque qui libère une\\ndécharge électrique\\nsur la cible et conv-\\nertit une partie des\\ndégâts infligés en PV.",
    },

    [MOVE_FORESTS_CURSE] = {
        .names = {
            .name = "MaléficeSylvain",
            .capsName = "MALÉFICESYLVAIN",
            .fullName = "MaléficeSylvain",
        },
        .data = {
            .effect = MOVE_EFFECT_ADD_TYPE_GRASS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "L’esprit de la forêt\\ncharme la cible et\\nlui ajoute le\\ntype Plante.",
    },

    [MOVE_PETAL_BLIZZARD] = {
        .names = {
            .name = "Tempête Florale",
            .capsName = "TEMPÊTE FLORALE",
            .fullName = "Tempête Florale",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Déclenche une violente\\ntempête de fleurs qui\\ninflige des dégâts à\\ntous les Pokémons\\nalentour.",
    },

    [MOVE_FREEZE_DRY] = {
        .names = {
            .name = "Lyophilisation",
            .capsName = "LYOPHILISATION",
            .fullName = "Lyophilisation",
        },
        .data = {
            .effect = MOVE_EFFECT_FREEZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Refroidit violemment\\nla cible et peut aussi\\nla geler. Super\\nefficace sur les\\nPokémons de type Eau.",
    },

    [MOVE_DISARMING_VOICE] = {
        .names = {
            .name = "Voix Enjôleuse",
            .capsName = "VOIX ENJÔLEUSE",
            .fullName = "Voix Enjôleuse",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Laisse s’échapper une\\nvoix enchanteresse qui\\ninflige des dégâts\\npsychiques à la cible.\\nN’échoue jamais.",
    },

    [MOVE_PARTING_SHOT] = {
        .names = {
            .name = "Dernier Mot",
            .capsName = "DERNIER MOT",
            .fullName = "Dernier Mot",
        },
        .data = {
            .effect = MOVE_EFFECT_PARTING_SHOT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Change de place avec\\nun autre Pokémon.\\nRéduit l’Att. et\\nl’Att. Spé. de\\nla cible.",
    },

    [MOVE_TOPSY_TURVY] = {
        .names = {
            .name = "Renversement",
            .capsName = "RENVERSEMENT",
            .fullName = "Renversement",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Inverse tous les\\nchangements de stats\\nde la cible.",
    },

    [MOVE_DRAINING_KISS] = {
        .names = {
            .name = "Vampibaiser",
            .capsName = "VAMPIBAISER",
            .fullName = "Vampibaiser",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur aspire la\\nforce vitale de la\\ncible par un baiser et\\nrécupère des PV.",
    },

    [MOVE_CRAFTY_SHIELD] = {
        .names = {
            .name = "Vigilance",
            .capsName = "VIGILANCE",
            .fullName = "Vigilance",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT_USER_SIDE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 3,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Protège l’équipe\\ncontre les capacités\\nde statut jusqu’à la\\nfin du tour.",
    },

    [MOVE_FLOWER_SHIELD] = {
        .names = {
            .name = "Garde Florale",
            .capsName = "GARDE FLORALE",
            .fullName = "Garde Florale",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT | RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Augmente la Défense\\nde tous les Pokémons\\nPlante sur le terrain\\nd’un niveau.",
    },

    [MOVE_GRASSY_TERRAIN] = {
        .names = {
            .name = "Champ Herbu",
            .capsName = "CHAMP HERBU",
            .fullName = "Champ Herbu",
        },
        .data = {
            .effect = MOVE_EFFECT_APPLY_TERRAINS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Pendant cinq tours,\\nles Pokémon au sol\\nrécupèrent quelques PV\\net la puissance des\\natt. Plante augmente.",
    },

    [MOVE_MISTY_TERRAIN] = {
        .names = {
            .name = "Champ Brumeux",
            .capsName = "CHAMP BRUMEUX",
            .fullName = "Champ Brumeux",
        },
        .data = {
            .effect = MOVE_EFFECT_APPLY_TERRAINS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Pendant cinq tours,\\nles Pokémon au sol ne\\npeuvent subir d’alté-\\nration de statut.",
    },

    [MOVE_ELECTRIFY] = {
        .names = {
            .name = "Électrisation",
            .capsName = "ÉLECTRISATION",
            .fullName = "Électrisation",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Transforme le type de\\ntoutes les capacités\\nde la cible en type\\nÉlectrik jusqu’à la\\nfin du tour.",
    },

    [MOVE_PLAY_ROUGH] = {
        .names = {
            .name = "Câlinerie",
            .capsName = "CÂLINERIE",
            .fullName = "Câlinerie",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FAIRY,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Attaque la cible en\\nlui faisant des\\ncâlineries. Peut aussi\\nbaisser l’Attaque\\nde la cible.",
    },

    [MOVE_FAIRY_WIND] = {
        .names = {
            .name = "Vent Féérique",
            .capsName = "VENT FÉÉRIQUE",
            .fullName = "Vent Féérique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur déchaîne\\nun vent magique qui\\ncingle la cible.",
    },

    [MOVE_MOONBLAST] = {
        .names = {
            .name = "Pouvoir Lunaire",
            .capsName = "POUVOIR LUNAIRE",
            .fullName = "Pouvoir Lunaire",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 95,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 15,
            .effectChance = ((CHAMPIONS_EFFECT_CHANCE_CHANGES) ? (10) : (30)),
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Attaque la cible grâce\\nau pouvoir de la lune.\\nPeut aussi baisser\\nl’Attaque Spéciale\\nde la cible.",
    },

    [MOVE_BOOMBURST] = {
        .names = {
            .name = "Bang Sonique",
            .capsName = "BANG SONIQUE",
            .fullName = "Bang Sonique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Attaque tout ce qui se\\ntrouve alentour grâce\\nà une onde sonore ass-\\nourdissante.",
    },

    [MOVE_FAIRY_LOCK] = {
        .names = {
            .name = "Verrou Enchanté",
            .capsName = "VERROU ENCHANTÉ",
            .fullName = "Verrou Enchanté",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Des chaînes entourent\\nla zone, empêchant\\ntous les Pokémon de\\nquitter le terrain\\nau tour suivant.",
    },

    [MOVE_KINGS_SHIELD] = {
        .names = {
            .name = "Bouclier Royal",
            .capsName = "BOUCLIER ROYAL",
            .fullName = "Bouclier Royal",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Bloque les dégâts et\\ndiminue l’Attaque de\\ntout assaillant qui\\nentre en contact avec\\nle lanceur.",
    },

    [MOVE_PLAY_NICE] = {
        .names = {
            .name = "Camaraderie",
            .capsName = "CAMARADERIE",
            .fullName = "Camaraderie",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "La cible se lie\\nd’amitié avec le\\nlanceur et perd sa\\ncombativité, ce qui\\ndiminue son Attaque.",
    },

    [MOVE_CONFIDE] = {
        .names = {
            .name = "Confidence",
            .capsName = "CONFIDENCE",
            .fullName = "Confidence",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Dévoile des secrets à\\nla cible, qui perd\\nsa concentration et\\nvoit son Att. Spé.\\ndiminuer.",
    },

    [MOVE_DIAMOND_STORM] = {
        .names = {
            .name = "Orage Adamantin",
            .capsName = "ORAGE ADAMANTIN",
            .fullName = "Orage Adamantin",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_DEF_2_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_ROCK,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Provoque une tempête\\nde diamants infligeant\\ndes dégâts. Peut aussi\\naugmenter la Défense\\ndu lanceur.",
    },

    [MOVE_STEAM_ERUPTION] = {
        .names = {
            .name = "Jet de Vapeur",
            .capsName = "JET DE VAPEUR",
            .fullName = "Jet de Vapeur",
        },
        .data = {
            .effect = MOVE_EFFECT_THAW_AND_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_WATER,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Projette de la vapeur\\nextrêmement chaude sur\\nla cible. Peut aussi\\nla brûler.",
    },

    [MOVE_HYPERSPACE_HOLE] = {
        .names = {
            .name = "Trou Dimension",
            .capsName = "TROU DIMENSION",
            .fullName = "Trou Dimensionnel",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_PROTECT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Ouvre une faille di-\\nmensionnelle pour\\napparaître devant la\\ncible. Ignore les att.\\ncomme Abri ou Détect.",
    },

    [MOVE_WATER_SHURIKEN] = {
        .names = {
            .name = "Sheauriken",
            .capsName = "SHEAURIKEN",
            .fullName = "Sheauriken",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_SPECIAL,
            .power = 15,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque la\\ncible avec des\\nshuriken de mucus\\ncinq fois d’affilée.",
    },

    [MOVE_MYSTICAL_FIRE] = {
        .names = {
            .name = "Feu Ensorcelé",
            .capsName = "FEU ENSORCELÉ",
            .fullName = "Feu Ensorcelé",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur attaque en\\nsoufflant des flammes\\nbrûlantes et diminue\\nl’Atk. Spé. de la\\ncible.",
    },

    [MOVE_SPIKY_SHIELD] = {
        .names = {
            .name = "Pico-Défense",
            .capsName = "PICO-DÉFENSE",
            .fullName = "Pico-Défense",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Bloque les dégâts et\\ndiminue les PV de tout\\nassaillant qui entre\\nen contact.",
    },

    [MOVE_AROMATIC_MIST] = {
        .names = {
            .name = "Brume Capiteuse",
            .capsName = "BRUME CAPITEUSE",
            .fullName = "Brume Capiteuse",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Grâce à un parfum\\nmystérieux, augmente\\nla Défense Spéciale\\nd’un allié.",
    },

    [MOVE_EERIE_IMPULSE] = {
        .names = {
            .name = "Ondes Étranges",
            .capsName = "ONDES ÉTRANGES",
            .fullName = "Ondes Étranges",
        },
        .data = {
            .effect = MOVE_EFFECT_SP_ATK_DOWN_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Le corps du lanceur\\nproduit des ondes\\nanormales qui dimi-\\nnuent beaucoup l’Att.\\nSpé. de la cible.",
    },

    [MOVE_VENOM_DRENCH] = {
        .names = {
            .name = "Piège de Venin",
            .capsName = "PIÈGE DE VENIN",
            .fullName = "Piège de Venin",
        },
        .data = {
            .effect = MOVE_EFFECT_VENOM_DRENCH,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Baisse l’Attaque,\\nl’Attaque Spéciale et\\nla Vitesse des cibles\\nempoisonnées d’un\\nnniveau.",
    },

    [MOVE_POWDER] = {
        .names = {
            .name = "Nuée de Poudre",
            .capsName = "NUÉE DE POUDRE",
            .fullName = "Nuée de Poudre",
        },
        .data = {
            .effect = MOVE_EFFECT_POWDER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Si l’ennemi utilise\\nune capacité de type\\nFeu lors du même tour,\\nun nuage explose et\\ninflige des dégâts.",
    },

    [MOVE_GEOMANCY] = {
        .names = {
            .name = "Géo-Contrôle",
            .capsName = "GÉO-CONTRÔLE",
            .fullName = "Géo-Contrôle",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_ATK_SP_ATK_SPEED_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Absorbe de l’énergie\\nau premier tour puis\\naugmente beaucoup son\\nAtt. Spé., sa Déf.\\nSpé. et sa Vitesse.",
    },

    [MOVE_MAGNETIC_FLUX] = {
        .names = {
            .name = "Magné-Contrôle",
            .capsName = "MAGNÉ-CONTRÔLE",
            .fullName = "Magné-Contrôle",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Augmente la Déf. et la\\nDéf. Spé. des Pokémons\\nalliés dotés du talent\\nPlus ou du talent\\nMoins.",
    },

    [MOVE_HAPPY_HOUR] = {
        .names = {
            .name = "Étrennes",
            .capsName = "ÉTRENNES",
            .fullName = "Étrennes",
        },
        .data = {
            .effect = MOVE_EFFECT_DO_NOTHING,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Utilisée pendant un\\ncombat, multiplie par\\ndeux l’argent gagné\\nà la fin.",
    },

    [MOVE_ELECTRIC_TERRAIN] = {
        .names = {
            .name = "ChampÉlectrifié",
            .capsName = "CHAMPÉLECTRIFIÉ",
            .fullName = "Champ Électrifié",
        },
        .data = {
            .effect = MOVE_EFFECT_APPLY_TERRAINS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_SMART,
        },
        .description = "Pendant 5 tours, les\\nPokémon au sol ne peu-\\nvent pas s’endormir.\\nAugement la puis. des\\nattaques Électrik.",
    },

    [MOVE_DAZZLING_GLEAM] = {
        .names = {
            .name = "Éclat Magique",
            .capsName = "ÉCLAT MAGIQUE",
            .fullName = "Éclat Magique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur libère une\\npuissante décharge\\nlumineuse qui inflige\\ndes dégâts à l’ennemi.",
    },

    [MOVE_CELEBRATE] = {
        .names = {
            .name = "Célébration",
            .capsName = "CÉLÉBRATION",
            .fullName = "Célébration",
        },
        .data = {
            .effect = MOVE_EFFECT_DO_NOTHING,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le Pokémon vous\\nsouhaite plein de\\nbonnes choses pour cet\\névènement spécial!",
    },

    [MOVE_HOLD_HANDS] = {
        .names = {
            .name = "Mains Jointes",
            .capsName = "MAINS JOINTES",
            .fullName = "Mains Jointes",
        },
        .data = {
            .effect = MOVE_EFFECT_DO_NOTHING,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Le lanceur et un allié\\nse prennent la main,\\nce qui les rend\\nheureux.",
    },

    [MOVE_BABY_DOLL_EYES] = {
        .names = {
            .name = "Regard Touchant",
            .capsName = "REGARD TOUCHANT",
            .fullName = "Regard Touchant",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Fixe la cible d’un air\\ntrès attendrissant qui\\nla touche et diminue\\nson Attaque. Agit en\\npriorité.",
    },

    [MOVE_NUZZLE] = {
        .names = {
            .name = "FrotteFrimousse",
            .capsName = "FROTTEFRIMOUSSE",
            .fullName = "Frotte-Frimousse",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 20,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Attaque la cible en\\nfrottant ses bajoues\\nchargées d’électricité\\nce qui la paralyse.",
    },

    [MOVE_HOLD_BACK] = {
        .names = {
            .name = "Retenue",
            .capsName = "RETENUE",
            .fullName = "Retenue",
        },
        .data = {
            .effect = MOVE_EFFECT_LEAVE_WITH_1_HP,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec retenue, et\\nlaisse au moins 1 PV\\nà la cible.",
    },

    [MOVE_INFESTATION] = {
        .names = {
            .name = "Harcèlement",
            .capsName = "HARCÈLEMENT",
            .fullName = "Harcèlement",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_SPECIAL,
            .power = 20,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Harcèle la cible, lui\\ninflige des dégâts et\\nl’empêche de quitter\\nle terrain pendant\\n5 tours.",
    },

    [MOVE_POWER_UP_PUNCH] = {
        .names = {
            .name = "Poing Boost",
            .capsName = "POING BOOST",
            .fullName = "Poing Boost",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "À force de frapper,\\nles poings deviennent\\nplus durs. Augmente\\nl’Att. du lanceur.",
    },

    [MOVE_OBLIVION_WING] = {
        .names = {
            .name = "Mort’Ailes",
            .capsName = "MORT’AILES",
            .fullName = "Mort’Ailes",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Libère une vague\\nd’énergie destructrice\\net aspire les PV de la\\ncible pour se soigner.",
    },

    [MOVE_THOUSAND_ARROWS] = {
        .names = {
            .name = "Myria-Flèches",
            .capsName = "MYRIA-FLÈCHES",
            .fullName = "Myria-Flèches",
        },
        .data = {
            .effect = MOVE_EFFECT_SMACK_DOWN,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Touche même les\\nPokémon dans les airs.\\nDans ce cas, la cible\\nretombe au sol.",
    },

    [MOVE_THOUSAND_WAVES] = {
        .names = {
            .name = "Myria-Vagues",
            .capsName = "MYRIA-VAGUES",
            .fullName = "Myria-Vagues",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Attaque avec des\\nvagues glissant au\\nsol. Les cibles prises\\ndedans ne peuvent pas\\nquitter le terrain.",
    },

    [MOVE_LANDS_WRATH] = {
        .names = {
            .name = "ForceChtonienne",
            .capsName = "FORCECHTONIENNE",
            .fullName = "Force Chtonienne",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Puise de l’énergie\\ndans le sol et la con-\\ncentre sur la cible pour\\ninfliger des dégâts.",
    },

    [MOVE_LIGHT_OF_RUIN] = {
        .names = {
            .name = "LumièreDuNéant",
            .capsName = "LUMIÈREDUNÉANT",
            .fullName = "Lumière du Néant",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_HALF,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_FAIRY,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Utilise la puissance\\nde la fleur Éternelle\\npour lancer un formi-\\ndable rayon d’énergie.\\nBlesse le lanceur.",
    },

    [MOVE_ORIGIN_PULSE] = {
        .names = {
            .name = "Onde Originelle",
            .capsName = "ONDE ORIGINELLE",
            .fullName = "Onde Originelle",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_WATER,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Le lanceur attaque en\\nprojetant d’innombra-\\nbles rayons de lumière\\nd’un bleu étincelant.",
    },

    [MOVE_PRECIPICE_BLADES] = {
        .names = {
            .name = "Lame Pangéenne",
            .capsName = "LAME PANGÉENNE",
            .fullName = "Lame Pangéenne",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_GROUND,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque en\\ntransformant la\\npuissance de la terre\\nen lames acérées.",
    },

    [MOVE_DRAGON_ASCENT] = {
        .names = {
            .name = "Draco-Ascension",
            .capsName = "DRACO-ASCENSION",
            .fullName = "Draco-Ascension",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "S’abat à toute vit-\\nesse sur la cible\\ndepuis les cieux.\\nBaisse la Déf. et la\\nDéf. Spé. du lanceur.",
    },

    [MOVE_HYPERSPACE_FURY] = {
        .names = {
            .name = "Furie Dimension",
            .capsName = "FURIE DIMENSION",
            .fullName = "Furie Dimension",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_DOWN_HIT_REMOVE_PROTECT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "Attaque en ignorant\\nles capacités telles\\nqu’Abri ou Détection.\\nBaisse la Déf.\\ndu lanceur.",
    },

    [MOVE_BREAKNECK_BLITZ_PHYSICAL] = {
        .names = {
            .name = "ChargeBulldozer",
            .capsName = "CHARGEBULLDOZER",
            .fullName = "Turbo-Charge Bulldozer",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible à\\npleine vitesse grâce à\\nsa Capa-Z. La puis.\\nvarie selon celle de\\nla capacité originale.",
    },

    [MOVE_BREAKNECK_BLITZ_SPECIAL] = {
        .names = {
            .name = "ChargeBulldozer",
            .capsName = "CHARGEBULLDOZER",
            .fullName = "Turbo-Charge Bulldozer",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible à\\npleine vitesse grâce à\\nsa Capa-Z. La puis.\\nvarie selon celle de\\nla capacité originale.",
    },

    [MOVE_ALL_OUT_PUMMELING_PHYSICAL] = {
        .names = {
            .name = "Hyper-Furie",
            .capsName = "HYPER-FURIE",
            .fullName = "Combo Hyper-Furie",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette une sphère\\nd’énergie créée par sa\\nCapa-Z. La puissance\\nvarie selon celle de\\nla capacité originale.",
    },

    [MOVE_ALL_OUT_PUMMELING_SPECIAL] = {
        .names = {
            .name = "Hyper-Furie",
            .capsName = "HYPER-FURIE",
            .fullName = "Combo Hyper-Furie",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette une sphère\\nd’énergie créée par sa\\nCapa-Z. La puissance\\nvarie selon celle de\\nla capacité originale.",
    },

    [MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL] = {
        .names = {
            .name = "PiquéSupersonik",
            .capsName = "PIQUÉSUPERSONIK",
            .fullName = "Piqué Supersonique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fonce sur la cible à\\npleine vitesse grâce à\\nsa Capa-Z. La puis.\\nvarie selon celle de\\nla capacité originale.",
    },

    [MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL] = {
        .names = {
            .name = "PiquéSupersonik",
            .capsName = "PIQUÉSUPERSONIK",
            .fullName = "Piqué Supersonique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fonce sur la cible à\\npleine vitesse grâce à\\nsa Capa-Z. La puis.\\nvarie selon celle de\\nla capacité originale.",
    },

    [MOVE_ACID_DOWNPOUR_PHYSICAL] = {
        .names = {
            .name = "Déluge Toxique",
            .capsName = "DÉLUGE TOXIQUE",
            .fullName = "Déluge Causti-Toxique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crée un marais toxique\\ngrâce à sa Capa-Z. La\\npuissance varie selon\\ncelle de la capacité\\noriginale.",
    },

    [MOVE_ACID_DOWNPOUR_SPECIAL] = {
        .names = {
            .name = "Déluge Toxique",
            .capsName = "DÉLUGE TOXIQUE",
            .fullName = "Déluge Causti-Toxique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crée un marais toxique\\ngrâce à sa Capa-Z. La\\npuissance varie selon\\ncelle de la capacité\\noriginale.",
    },

    [MOVE_TECTONIC_RAGE_PHYSICAL] = {
        .names = {
            .name = "Éruption Sismik",
            .capsName = "ÉRUPTION SISMIK",
            .fullName = "Éruption Géo-Sismique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible\\ndepuis le sous-sol en\\nutilisant sa Capa-Z.\\nLa puis. varie selon\\ncelle de la capa. ori.",
    },

    [MOVE_TECTONIC_RAGE_SPECIAL] = {
        .names = {
            .name = "Éruption Sismik",
            .capsName = "ÉRUPTION SISMIK",
            .fullName = "Éruption Géo-Sismique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible\\ndepuis le sous-sol en\\nutilisant sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_CONTINENTAL_CRUSH_PHYSICAL] = {
        .names = {
            .name = "Apo. Gigalithik",
            .capsName = "APO. GIGALITHIK",
            .fullName = "Apocalypse Gigalithique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait tomber une énorme\\nmontagne sur la cible\\nen utilisant sa Capa-Z\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_CONTINENTAL_CRUSH_SPECIAL] = {
        .names = {
            .name = "Apo. Gigalithik",
            .capsName = "APO. GIGALITHIK",
            .fullName = "Apocalypse Gigalithique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait tomber une énorme\\nmontagne sur la cible\\nen utilisant sa Capa-Z\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_SAVAGE_SPIN_OUT_PHYSICAL] = {
        .names = {
            .name = "Cocon Fatal",
            .capsName = "COCON FATAL",
            .fullName = "Cocon Fatal",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette des filaments\\nsur la cible grâce à\\nsa Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_SAVAGE_SPIN_OUT_SPECIAL] = {
        .names = {
            .name = "Cocon Fatal",
            .capsName = "COCON FATAL",
            .fullName = "Cocon Fatal",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette des filaments\\nsur la cible grâce à\\nsa Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL] = {
        .names = {
            .name = "Ombre Éternelle",
            .capsName = "OMBRE ÉTERNELLE",
            .fullName = "Appel des Ombres Éternelles",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Les rancunes enfouies\\nsont réveillées par la\\nCapa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL] = {
        .names = {
            .name = "Ombre Éternelle",
            .capsName = "OMBRE ÉTERNELLE",
            .fullName = "Appel des Ombres Éternelles",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Les rancunes enfouies\\nsont réveillées par la\\nCapa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_CORKSCREW_CRASH_PHYSICAL] = {
        .names = {
            .name = "Vrille Maximum",
            .capsName = "VRILLE MAXIMUM",
            .fullName = "Vrille Maximum",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Tourne très vite et\\npercute la cible avec\\nla Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_CORKSCREW_CRASH_SPECIAL] = {
        .names = {
            .name = "Vrille Maximum",
            .capsName = "VRILLE MAXIMUM",
            .fullName = "Vrille Maximum",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Tourne très vite et\\npercute la cible avec\\nla Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_INFERNO_OVERDRIVE_PHYSICAL] = {
        .names = {
            .name = "Pyro-Explosion",
            .capsName = "PYRO-EXPLOSION",
            .fullName = "Pyro-Explosion Cataclysmique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_FIRE,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crache un jet de fla-\\nmmes intenses grâce\\nà sa Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_INFERNO_OVERDRIVE_SPECIAL] = {
        .names = {
            .name = "Pyro-Explosion",
            .capsName = "PYRO-EXPLOSION",
            .fullName = "Pyro-Explosion Cataclysmique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_FIRE,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crache un jet de fla-\\nmmes intenses grâce\\nà sa Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_HYDRO_VORTEX_PHYSICAL] = {
        .names = {
            .name = "Tourb. Abyssal",
            .capsName = "TOURB. ABYSSAL",
            .fullName = "Super Tourbillon Abyssal",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crée un énorme courant\\ntourbillonnaire grâce\\nà sa Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_HYDRO_VORTEX_SPECIAL] = {
        .names = {
            .name = "Tourb. Abyssal",
            .capsName = "TOURB. ABYSSAL",
            .fullName = "Super Tourbillon Abyssal",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crée un énorme courant\\ntourbillonnaire grâce\\nà sa Capa-Z. La puis.\\nvarie selon celle\\nde la cap. orig.",
    },

    [MOVE_BLOOM_DOOM_PHYSICAL] = {
        .names = {
            .name = "Pétalexplosion",
            .capsName = "PÉTALEXPLOSION",
            .fullName = "Pétalexplosion Éblouissante",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en puisant son\\nénergie dans les plan-\\ntes grâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_BLOOM_DOOM_SPECIAL] = {
        .names = {
            .name = "Pétalexplosion",
            .capsName = "PÉTALEXPLOSION",
            .fullName = "Pétalexplosion Éblouissante",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en puisant son\\nénergie dans les plan-\\ntes grâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_GIGAVOLT_HAVOC_PHYSICAL] = {
        .names = {
            .name = "Fulguro-Lance",
            .capsName = "FULGURO-LANCE",
            .fullName = "Fulguro-Lance Gigavolt",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Génère un puissant\\ncourant électrique\\ngrâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_GIGAVOLT_HAVOC_SPECIAL] = {
        .names = {
            .name = "Fulguro-Lance",
            .capsName = "FULGURO-LANCE",
            .fullName = "Fulguro-Lance Gigavolt",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Génère un puissant\\ncourant électrique\\ngrâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_SHATTERED_PSYCHE_PHYSICAL] = {
        .names = {
            .name = "Pulvérisation",
            .capsName = "PULVÉRISATION",
            .fullName = "Psycho-Pulvérisation EX",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Nuit à l’esprit de la\\ncible en utilisant\\nsa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_SHATTERED_PSYCHE_SPECIAL] = {
        .names = {
            .name = "Pulvérisation",
            .capsName = "PULVÉRISATION",
            .fullName = "Psycho-Pulvérisation EX",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Nuit à l’esprit de la\\ncible en utilisant\\nsa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_SUBZERO_SLAMMER_PHYSICAL] = {
        .names = {
            .name = "Cryo-Laser",
            .capsName = "CRYO-LASER",
            .fullName = "Laser Cryogénique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fige la cible grâce\\nà sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_SUBZERO_SLAMMER_SPECIAL] = {
        .names = {
            .name = "Cryo-Laser",
            .capsName = "CRYO-LASER",
            .fullName = "Laser Cryogénique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fige la cible grâce\\nà sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_DEVASTATING_DRAKE_PHYSICAL] = {
        .names = {
            .name = "ChaosDraconique",
            .capsName = "CHAOSDRACONIQUE",
            .fullName = "Chaos Draconique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Matérialise et\\nprojette son aura\\ngrâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_DEVASTATING_DRAKE_SPECIAL] = {
        .names = {
            .name = "ChaosDraconique",
            .capsName = "CHAOSDRACONIQUE",
            .fullName = "Chaos Draconique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Matérialise et\\nprojette son aura\\ngrâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL] = {
        .names = {
            .name = "TrouNoirD’Ombre",
            .capsName = "TROUNOIRD’OMBRE",
            .fullName = "Trou Noir des Ombres",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Aspire la cible dans\\nune énergie sombre\\ngrâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_BLACK_HOLE_ECLIPSE_SPECIAL] = {
        .names = {
            .name = "TrouNoirD’Ombre",
            .capsName = "TROUNOIRD’OMBRE",
            .fullName = "Trou Noir des Ombres",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Aspire la cible dans\\nune énergie sombre\\ngrâce à sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_TWINKLE_TACKLE_PHYSICAL] = {
        .names = {
            .name = "Imp. Choupinova",
            .capsName = "IMP. CHOUPINOVA",
            .fullName = "Impact Choupinova",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Joue totalement avec\\nla cible grâce\\nà sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_TWINKLE_TACKLE_SPECIAL] = {
        .names = {
            .name = "Imp. Choupinova",
            .capsName = "IMP. CHOUPINOVA",
            .fullName = "Impact Choupinova",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Joue totalement avec\\nla cible grâce\\nà sa Capa-Z.\\nLa puis. varie selon\\ncelle de la cap. orig.",
    },

    [MOVE_CATASTROPIKA] = {
        .names = {
            .name = "Pikachute",
            .capsName = "PIKACHUTE",
            .fullName = "Pikachute Foudroyante",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 210,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Pikachu s’entoure d’un\\nmaximum d’électricité\\ngrâce à sa Capa-Z et\\nbondit sur sa cible.",
    },

    [MOVE_SHORE_UP] = {
        .names = {
            .name = "Amass’Sable",
            .capsName = "AMASS’SABLE",
            .fullName = "Amass’Sable",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur récupère\\nla moitié de ses PV\\nmax. Durant une tem-\\npête de sable, il en\\nrécupère encore plus.",
    },

    [MOVE_FIRST_IMPRESSION] = {
        .names = {
            .name = "Escarmouche",
            .capsName = "ESCARMOUCHE",
            .fullName = "Escarmouche",
        },
        .data = {
            .effect = MOVE_EFFECT_FIRST_TURN_ONLY,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (100) : (90)),
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 2,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Une capacité très\\npuissante, mais qui\\nne fonctionne que\\nlorsque le lanceur\\nentre au combat.",
    },

    [MOVE_BANEFUL_BUNKER] = {
        .names = {
            .name = "Blockhaus",
            .capsName = "BLOCKHAUS",
            .fullName = "Blockhaus",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se protège contre les\\nattaques. Si un\\nassaillant utilise une\\nattaque directe,\\nil l’empoisonne.",
    },

    [MOVE_SPIRIT_SHACKLE] = {
        .names = {
            .name = "Tisse Ombre",
            .capsName = "TISSE OMBRE",
            .fullName = "Tisse Ombre",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (80)),
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Une attaque qui coud\\nla cible à son ombre,\\nce qui l’empêche de\\ns’enfuir.",
    },

    [MOVE_DARKEST_LARIAT] = {
        .names = {
            .name = "Dark Lariat",
            .capsName = "DARK LARIAT",
            .fullName = "Dark Lariat",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur inflige des\\ndégâts et ignore les\\nchangements de stats\\nde la cible.",
    },

    [MOVE_SPARKLING_ARIA] = {
        .names = {
            .name = "Aria de l’Écume",
            .capsName = "ARIA DE L’ÉCUME",
            .fullName = "Aria de l’Écume",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur émet des\\nbulles en chantant.\\nSoigne les brûlures\\ndes Pokémon tou-\\nchés par ces bulles.",
    },

    [MOVE_ICE_HAMMER] = {
        .names = {
            .name = "Marteau Glace",
            .capsName = "MARTEAU GLACE",
            .fullName = "Marteau de Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SPEED_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur donne un\\npuissant coup de\\npoing à la cible, ce\\nqui réduit la Vitesse\\ndu lanceur.",
    },

    [MOVE_FLORAL_HEALING] = {
        .names = {
            .name = "Soin Floral",
            .capsName = "SOIN FLORAL",
            .fullName = "Soin Floral",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Rend la moitié de ses\\nPV max à la cible.\\nPlus efficace sur un\\nchamp herbu.",
    },

    [MOVE_HIGH_HORSEPOWER] = {
        .names = {
            .name = "CavalerieLourde",
            .capsName = "CAVALERIELOURDE",
            .fullName = "Cavalerie Lourde",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 95,
            .type = TYPE_GROUND,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\nviolemment en\\nutilisant tout\\nson poids.",
    },

    [MOVE_STRENGTH_SAP] = {
        .names = {
            .name = "Vole-Force",
            .capsName = "VOLE-FORCE",
            .fullName = "Vole-Force",
        },
        .data = {
            .effect = MOVE_EFFECT_STRENGTH_SAP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Rend au lanceur une\\nquantité de PV équi-\\nvalente à la stat\\nd’Attaque de la cible,\\npuis baisse celle-ci.",
    },

    [MOVE_SOLAR_BLADE] = {
        .names = {
            .name = "Lame Solaire",
            .capsName = "LAME SOLAIRE",
            .fullName = "Lame Solaire",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS,
            .split = SPLIT_PHYSICAL,
            .power = 125,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Absorbe la lumière\\nau premier tour et\\nenvoie une lame\\npuissante au tour\\nsuivant.",
    },

    [MOVE_LEAFAGE] = {
        .names = {
            .name = "Feuillage",
            .capsName = "FEUILLAGE",
            .fullName = "Feuillage",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\nla cible avec\\ndes feuilles.",
    },

    [MOVE_SPOTLIGHT] = {
        .names = {
            .name = "Projecteur",
            .capsName = "PROJECTEUR",
            .fullName = "Projecteur",
        },
        .data = {
            .effect = MOVE_EFFECT_MAKE_GLOBAL_TARGET,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 3,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Met un Pokémon\\nsous le feu des\\nprojecteurs et force\\ntout le monde à\\nle viser.",
    },

    [MOVE_TOXIC_THREAD] = {
        .names = {
            .name = "Fil Toxique",
            .capsName = "FIL TOXIQUE",
            .fullName = "Fil Toxique",
        },
        .data = {
            .effect = MOVE_EFFECT_TOXIC_THREAD,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Tisse un fil imprégné\\nde venin. Empoisonne\\nla cible et baisse sa\\nVitesse.",
    },

    [MOVE_LASER_FOCUS] = {
        .names = {
            .name = "Affilage",
            .capsName = "AFFILAGE",
            .fullName = "Affilage",
        },
        .data = {
            .effect = MOVE_EFFECT_LASER_FOCUS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 30,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur se con-\\ncentre pour être sûr\\nde porter un coup\\ncritique au tour\\nsuivant.",
    },

    [MOVE_GEAR_UP] = {
        .names = {
            .name = "Engrenage",
            .capsName = "ENGRENAGE",
            .fullName = "Engrenage",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Change de réglage pour\\naugmenter l’Att. et\\nl’Att. Spé. des alliés\\nayant les talents Plus\\nou Minus.",
    },

    [MOVE_THROAT_CHOP] = {
        .names = {
            .name = "Exécu-Son",
            .capsName = "EXÉCU-SON",
            .fullName = "Exécu-Son",
        },
        .data = {
            .effect = MOVE_EFFECT_THROAT_CHOP,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Inflige une douleur\\ntellement violente à\\nla cible qu’elle ne\\npeut plus émettre de\\nson pendant 2 tours.",
    },

    [MOVE_POLLEN_PUFF] = {
        .names = {
            .name = "Boule Pollen",
            .capsName = "BOULE POLLEN",
            .fullName = "Boule Pollen",
        },
        .data = {
            .effect = MOVE_EFFECT_POLLEN_PUFF,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec un nuage\\nde pollen explosif.\\nSur un ennemi, fait\\ndes dégâts. L’allié\\nrécupère des PV.",
    },

    [MOVE_ANCHOR_SHOT] = {
        .names = {
            .name = "Ancrage",
            .capsName = "ANCRAGE",
            .fullName = "Ancrage",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (80)),
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur jette son\\nancre sur la cible\\nqui l’empêche de\\nquitter le terrain.",
    },

    [MOVE_PSYCHIC_TERRAIN] = {
        .names = {
            .name = "Champ Psychique",
            .capsName = "CHAMP PSYCHIQUE",
            .fullName = "Champ Psychique",
        },
        .data = {
            .effect = MOVE_EFFECT_APPLY_TERRAINS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Pendant cinq tours,\\nles Pokémon au sol ne\\npeuvent plus subir\\nd’attaques\\nprioritaires.",
    },

    [MOVE_LUNGE] = {
        .names = {
            .name = "Furie-Bond",
            .capsName = "FURIE-BOND",
            .fullName = "Furie-Bond",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur se jette\\nsur la cible de toutes\\nses forces pour lui\\ninfliger des dégâts\\net baisser son Att.",
    },

    [MOVE_FIRE_LASH] = {
        .names = {
            .name = "Fouet de Feu",
            .capsName = "FOUET DE FEU",
            .fullName = "Fouet de Feu",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (80)),
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe la cible avec\\nun fouet incandescent\\net baisse sa Défense.",
    },

    [MOVE_POWER_TRIP] = {
        .names = {
            .name = "Arrogance",
            .capsName = "ARROGANCE",
            .fullName = "Arrogance",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 20,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Plus les stats du lan-\\nceur ont été augmen-\\ntées, plus la puis-\\nsance de cette\\ncapacité augmente.",
    },

    [MOVE_BURN_UP] = {
        .names = {
            .name = "Flamme Ultime",
            .capsName = "FLAMME ULTIME",
            .fullName = "Flamme Ultime",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_USER_FIRE_TYPE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le Pokémon se consume\\net inflige des dégâts.\\nLe lanceur perd le\\ntype Feu.",
    },

    [MOVE_SPEED_SWAP] = {
        .names = {
            .name = "Permuvitesse",
            .capsName = "PERMUVITESSE",
            .fullName = "Permuvitesse",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Intervertit la Vitesse\\ndu lanceur et celle\\nde la cible.",
    },

    [MOVE_SMART_STRIKE] = {
        .names = {
            .name = "Estocorne",
            .capsName = "ESTOCORNE",
            .fullName = "Estocorne",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur transperce\\nla cible avec sa corne\\neffilée.\\nN’échoue jamais.",
    },

    [MOVE_PURIFY] = {
        .names = {
            .name = "Purification",
            .capsName = "PURIFICATION",
            .fullName = "Purification",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (20)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur soigne les\\naltérations de statut\\nde la cible, ce qui\\nlui permet de regagner\\ndes PV.",
    },

    [MOVE_REVELATION_DANCE] = {
        .names = {
            .name = "Danse Éveil",
            .capsName = "DANSE ÉVEIL",
            .fullName = "Danse Éveil",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (100) : (90)),
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque en\\ndansant avec enthou-\\nsiasme. Le type de la\\ncapacité est le même\\nque celui du lanceur.",
    },

    [MOVE_CORE_ENFORCER] = {
        .names = {
            .name = "SanctionSuprême",
            .capsName = "SANCTIONSUPRÊME",
            .fullName = "Sanction Suprême",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "La cible subit des\\ndégâts et, si elle a\\ndéjà agi pendant\\nce tour, elle perd\\naussi son talent.",
    },

    [MOVE_TROP_KICK] = {
        .names = {
            .name = "Botte Sucrette",
            .capsName = "BOTTE SUCRETTE",
            .fullName = "Botte Sucrette",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (85) : (70)),
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Un coup de pied chaud\\ncomme les tropiques\\nqui inflige des dégâts\\nà la cible et baisse\\nson Attaque.",
    },

    [MOVE_INSTRUCT] = {
        .names = {
            .name = "Sommation",
            .capsName = "SOMMATION",
            .fullName = "Sommation",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Force la cible à\\nlancer immédiatement\\nla dernière capacité\\nqu’elle a utilisée.",
    },

    [MOVE_BEAK_BLAST] = {
        .names = {
            .name = "Bec-Canon",
            .capsName = "BEC-CANON",
            .fullName = "Bec-Canon",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (120) : (100)),
            .type = TYPE_FLYING,
            .accuracy = 100,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (15)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = -3,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait chauffer son bec\\navant d’attaquer. S’il\\nsubit une attaque\\ndirecte, l’attaquant\\nsera brûlé.",
    },

    [MOVE_CLANGING_SCALES] = {
        .names = {
            .name = "Vibrécaille",
            .capsName = "VIBRÉCAILLE",
            .fullName = "Vibrécaille",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_DOWN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 110,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur déclenche\\nun vacarme en frottant\\nses écailles. Baisse\\nla Défense du lanceur.",
    },

    [MOVE_DRAGON_HAMMER] = {
        .names = {
            .name = "Draco-Marteau",
            .capsName = "DRACO-MARTEAU",
            .fullName = "Draco-Marteau",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (100) : (90)),
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise son\\ncorps comme un véri-\\ntable marteau pour\\nécraser la cible.",
    },

    [MOVE_BRUTAL_SWING] = {
        .names = {
            .name = "Centrifugifle",
            .capsName = "CENTRIFUGIFLE",
            .fullName = "Centrifugifle",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur pivote\\npour prendre de\\nl’élan et infliger\\ndes dégâts.",
    },

    [MOVE_AURORA_VEIL] = {
        .names = {
            .name = "Voile Aurore",
            .capsName = "VOILE AURORE",
            .fullName = "Voile Aurore",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_AURORA_VEIL,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Crée un voile rédui-\\nsant les dégâts phy-\\nsiques et spéciaux.\\nNe peut être utilisée\\nque lorsqu’il neige.",
    },

    [MOVE_SINISTER_ARROW_RAID] = {
        .names = {
            .name = "Plumes Spectr.",
            .capsName = "PLUMES SPECTR.",
            .fullName = "Fureur des Plumes Spectrales",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 180,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Archéduc connais-\\nsant Tisse Ombre et\\ntenant l’Archézélite.",
    },

    [MOVE_MALICIOUS_MOONSAULT] = {
        .names = {
            .name = "Dark Body Press",
            .capsName = "DARK BODY PRESS",
            .fullName = "Dark Body Press",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 180,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Félinferno connai-\\nssant Dark Lariat et\\ntenant la\\nFélinozélite.",
    },

    [MOVE_OCEANIC_OPERETTA] = {
        .names = {
            .name = "Symph. Ondines",
            .capsName = "SYMPH. ONDINES",
            .fullName = "Symphonie des Ondines",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 195,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Oratoria connais-\\nsant Aria de l’Écume\\net tenant\\nl’Oratozélite.",
    },

    [MOVE_GUARDIAN_OF_ALOLA] = {
        .names = {
            .name = "Gardien d’Alola",
            .capsName = "GARDIEN D’ALOLA",
            .fullName = "Colère du Gardien d’Alola",
        },
        .data = {
            .effect = MOVE_EFFECT_QUARTER_HP,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capa-Z utilisable en\\nconnaissant Ire de la\\nNature et tenant la\\nTokozélite. Inflige\\n75% des PV restants.",
    },

    [MOVE_SOUL_STEALING_7_STAR_STRIKE] = {
        .names = {
            .name = "Fauche-Âme",
            .capsName = "FAUCHE-ÂME",
            .fullName = "Fauche-Âme des Sept Étoiles",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 195,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Marshadow connais-\\nsant Clepto-Mânes et\\ntenant la\\nMarshadozélite.",
    },

    [MOVE_STOKED_SPARKSURFER] = {
        .names = {
            .name = "Électro-Surf",
            .capsName = "ÉLECTRO-SURF",
            .fullName = "Électro-Surf Survolté",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 175,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capa-Z utilisable par\\nRaichu d’Alola connai-\\nssant Tonnerre et\\ntenant l’Aloraizélite.\\nParalyse la cible.",
    },

    [MOVE_PULVERIZING_PANCAKE] = {
        .names = {
            .name = "Gare au Ronflex",
            .capsName = "GARE AU RONFLEX",
            .fullName = "Gare au Ronflex",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 210,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Ronflex connais-\\nsant Giga Impact et\\ntenant la\\nRonflézélite.",
    },

    [MOVE_EXTREME_EVOBOOST] = {
        .names = {
            .name = "Neuf pour Un",
            .capsName = "NEUF POUR UN",
            .fullName = "Neuf pour Un",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capa-Z utilisable par\\nÉvoli connaissant Der-\\nnier Recours et tenant\\nl’Évolizélite. Augmen-\\nte ttes les stats.",
    },

    [MOVE_GENESIS_SUPERNOVA] = {
        .names = {
            .name = "Supernova",
            .capsName = "SUPERNOVA",
            .fullName = "Supernova Originelle",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 185,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capa-Z utilisable par\\nMew connaissant Psyko\\net tenant la\\nMewzélite. Pose un\\nChamp Psychique.",
    },

    [MOVE_SHELL_TRAP] = {
        .names = {
            .name = "Carapiège",
            .capsName = "CARAPIÈGE",
            .fullName = "Carapiège",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (10) : (5)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = -3,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Si un Pokémon attaque\\nle lanceur avec une\\ncapacité physique,\\ninflige des dégâts\\nà l’assaillant.",
    },

    [MOVE_FLEUR_CANNON] = {
        .names = {
            .name = "Canon Floral",
            .capsName = "CANON FLORAL",
            .fullName = "Canon Floral",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SP_ATK_DOWN_2,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_FAIRY,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Envoie un rayon laser\\ndévastateur. Baisse\\nbeaucoup l’Attaque\\nSpéciale du lanceur.",
    },

    [MOVE_PSYCHIC_FANGS] = {
        .names = {
            .name = "Psycho-Croc",
            .capsName = "PSYCHO-CROC",
            .fullName = "Psycho-Croc",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_SCREENS,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur mord la\\ncible avec ses pou-\\nvoirs psychiques.\\nBrise aussi les\\nbarrières.",
    },

    [MOVE_STOMPING_TANTRUM] = {
        .names = {
            .name = "Trépignement",
            .capsName = "TRÉPIGNEMENT",
            .fullName = "Trépignement",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Si le lanceur a\\nutilisé une capacité\\nqui a échoué au tour\\nprécédent, la puis-\\nsance est doublée.",
    },

    [MOVE_SHADOW_BONE] = {
        .names = {
            .name = "Os Ombre",
            .capsName = "OS OMBRE",
            .fullName = "Os Ombre",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe avec\\nun os possédé par\\nl’âme d’un défunt.\\nPeut aussi baisser la\\nDéfense de la cible.",
    },

    [MOVE_ACCELEROCK] = {
        .names = {
            .name = "Vif Roc",
            .capsName = "VIF ROC",
            .fullName = "Vif Roc",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur charge la\\ncible à toute vitesse.\\nFrappe en priorité.",
    },

    [MOVE_LIQUIDATION] = {
        .names = {
            .name = "Aqua-Brèche",
            .capsName = "AQUA-BRÈCHE",
            .fullName = "Aqua-Brèche",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise la\\nforce de l’eau pour\\nattaquer. Peut aussi\\nbaisser la Défense\\nde la cible.",
    },

    [MOVE_PRISMATIC_LASER] = {
        .names = {
            .name = "Laser Prisme",
            .capsName = "LASER PRISME",
            .fullName = "Laser Prisme",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 160,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur utilise la\\npuissance d’un prisme\\npour envoyer un laser.\\nIl doit se reposer\\nau tour suivant.",
    },

    [MOVE_SPECTRAL_THIEF] = {
        .names = {
            .name = "Clepto-Mânes",
            .capsName = "CLEPTO-MÂNES",
            .fullName = "Clepto-Mânes",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur plonge\\ndans l’ombre de la\\ncible, vole ses aug-\\nmentations de stats\\net l’attaque.",
    },

    [MOVE_SUNSTEEL_STRIKE] = {
        .names = {
            .name = "Choc Météore",
            .capsName = "CHOC MÉTÉORE",
            .fullName = "Choc Météore",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur fonce sur\\nla cible avec la puis-\\nsance d’une météorite.\\nIgnore le talent de\\nla cible.",
    },

    [MOVE_MOONGEIST_BEAM] = {
        .names = {
            .name = "Rayon Spectral",
            .capsName = "RAYON SPECTRAL",
            .fullName = "Rayon Spectral",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec un rayon de\\nlumière mystérieux.\\nIgnore le talent de\\nla cible.",
    },

    [MOVE_TEARFUL_LOOK] = {
        .names = {
            .name = "Larme à l’Œil",
            .capsName = "LARME À L’ŒIL",
            .fullName = "Larme à l’Œil",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_SP_ATK_DOWN,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_CUTE,
        },
        .description = "Regarde la cible avec\\ndes yeux remplis de\\nlarmes. Elle voit son\\nAtt. et son Att. Spé.\\nbaisser.",
    },

    [MOVE_ZING_ZAP] = {
        .names = {
            .name = "Électrikipik",
            .capsName = "ÉLECTRIKIPIK",
            .fullName = "Électrikipik",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur fonce sur\\nla cible et lui envoie\\nun puissant choc\\nélectrique, ce qui\\npeut aussi l’effrayer.",
    },

    [MOVE_NATURES_MADNESS] = {
        .names = {
            .name = "IreDeLaNature",
            .capsName = "IREDELANATURE",
            .fullName = "Ire de la Nature",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_HP,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur déchaîne\\ntoute la colère de la\\nnature pour baisser\\nles PV de la cible\\nde moitié.",
    },

    [MOVE_MULTI_ATTACK] = {
        .names = {
            .name = "Coup Varia-Type",
            .capsName = "COUP VARIA-TYPE",
            .fullName = "Coup Varia-Type",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_ATTACK,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le type de la capacité\\ndépend de la ROM\\ninstallée.",
    },

    [MOVE_10_000_000_VOLT_THUNDERBOLT] = {
        .names = {
            .name = "Giga-Tonnerre",
            .capsName = "GIGA-TONNERRE",
            .fullName = "Giga-Tonnerre",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 195,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capa-Z utilisable par\\nPikachu Casquette con-\\nnaissant Tonnerre et\\ntenant la Pikachazéli-\\nte. Taux de CC +2.",
    },

    [MOVE_MIND_BLOWN] = {
        .names = {
            .name = "Caboche-Kaboum",
            .capsName = "CABOCHE-KABOUM",
            .fullName = "Caboche-Kaboum",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur fait explo-\\nser sa tête pour\\nattaquer toutes les\\ncibles. Il subit aussi\\ndes dégâts.",
    },

    [MOVE_PLASMA_FISTS] = {
        .names = {
            .name = "Plasma Punch",
            .capsName = "PLASMA PUNCH",
            .fullName = "Plasma Punch",
        },
        .data = {
            .effect = MOVE_EFFECT_ION_DELUGE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Attaque en projetant\\nde l’électricité avec\\nses poings. Convertit\\nles attaques de type\\nNormal en Électrik.",
    },

    [MOVE_PHOTON_GEYSER] = {
        .names = {
            .name = "Photo-Geyser",
            .capsName = "PHOTO GEYSER",
            .fullName = "Photo-Geyser",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait jaillir un pilier\\nde lumière. Compare\\nl’Att et l’Att Spé, et\\nutilise celle qui inf-\\nligera plus de dégâts.",
    },

    [MOVE_LIGHT_THAT_BURNS_THE_SKY] = {
        .names = {
            .name = "Apocal. Luminis",
            .capsName = "APOCAL. LUMINIS",
            .fullName = "Apocalypsis Luminis",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 200,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Necrozma inflige des\\ndégâts en utilisant\\nson Att. ou son Att.\\nSpé. (la plus élevé).\\nIgnore le talent.",
    },

    [MOVE_SEARING_SUNRAZE_SMASH] = {
        .names = {
            .name = "Hélio-Choc",
            .capsName = "HÉLIO-CHOC",
            .fullName = "Hélio-Choc Dévastateur",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 200,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z de\\nSolgaleo. Cette\\ncapacité ignore le\\ntalent de la cible.",
    },

    [MOVE_MENACING_MOONRAZE_MAELSTROM] = {
        .names = {
            .name = "RayonsSélénites",
            .capsName = "RAYONSSÉLÉNITES",
            .fullName = "Rayons Séléno-Explosifs",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 200,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z de\\nLunala. Cette\\ncapacité ignore le\\ntalent de la cible.",
    },

    [MOVE_LETS_SNUGGLE_FOREVER] = {
        .names = {
            .name = "PatatiPatattrap",
            .capsName = "PATATIPATATTRAP",
            .fullName = "Patati-Patattrape",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 190,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Mimiqui connais-\\nsant Câlinerie et\\ntenant la\\nMimiquizélite.",
    },

    [MOVE_SPLINTERED_STORMSHARDS] = {
        .names = {
            .name = "Roches-Lames",
            .capsName = "ROCHES-LAMES",
            .fullName = "Hurlement des Roches-Lames",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 190,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Lougaroc connais-\\nsant Lame de Roc et\\ntenant la Lougazélite.",
    },

    [MOVE_CLANGOROUS_SOULBLAZE] = {
        .names = {
            .name = "Dracacophonie",
            .capsName = "DRACOPHONIE",
            .fullName = "Dracacophonie Flamboyante",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ALL_STATS_HIT,
            .split = SPLIT_SPECIAL,
            .power = 185,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capacité Z utilisable\\npar Ékaïser connais-\\nsant Vibrécaille et\\ntenant l’Ékaïzélite.",
    },

    [MOVE_ZIPPY_ZAP] = {
        .names = {
            .name = "Pika-Sprint",
            .capsName = "PIKA-SPRINT",
            .fullName = "Pika-Sprint",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_EVA_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 2,
            .flags = FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec des dé-\\ncharges électriques à\\ngrande vitesse. Augm-\\nente l’esquive et tou-\\njours utilisée en 1er.",
    },

    [MOVE_SPLISHY_SPLASH] = {
        .names = {
            .name = "Pika-Splash",
            .capsName = "PIKA-SPLASH",
            .fullName = "Pika-Splash",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Génère une puissante\\nvague d’électricité.\\nPeut également\\nparalyser le Pokémon\\nadverse.",
    },

    [MOVE_FLOATY_FALL] = {
        .names = {
            .name = "Pika-Piqué",
            .capsName = "PIKA-PIQUÉ",
            .fullName = "Pika-Piqué",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FLYING,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Plane dans les airs,\\npuis plonge en piqué\\npour attaquer. Cela\\npeut également apeurer\\nla cible.",
    },

    [MOVE_PIKA_PAPOW] = {
        .names = {
            .name = "Pika-Fracas",
            .capsName = "PIKA-FRACAS",
            .fullName = "Pika-Fracas",
        },
        .data = {
            .effect = MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP,
            .split = SPLIT_SPECIAL,
            .power = 0,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Plus Pikachu est\\nheureux, plus l’atta-\\nque est puissante. Ne\\nrate jamais sa cible.",
    },

    [MOVE_BOUNCY_BUBBLE] = {
        .names = {
            .name = "Évo-Thalasso",
            .capsName = "ÉVO-THALASSO",
            .fullName = "Évo-Thalasso",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_FULL_DAMAGE_DEALT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en tirant des\\nbulles d’eau, qui res-\\ntaurent ses PV de la\\nmoitié des dégâts\\ninfligés.",
    },

    [MOVE_BUZZY_BUZZ] = {
        .names = {
            .name = "Évo-Dynamo",
            .capsName = "ÉVO-DYNAMO",
            .fullName = "Évo-Dynamo",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette une décharge\\nélectrique sur la\\ncible, la paralysant.",
    },

    [MOVE_SIZZLY_SLIDE] = {
        .names = {
            .name = "Évo-Flambo",
            .capsName = "ÉVO-FLAMBO",
            .fullName = "Évo-Flambo",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "S’enveloppe de flammes\\net charge sa cible,\\nla brûlant.",
    },

    [MOVE_GLITZY_GLOW] = {
        .names = {
            .name = "Évo-Psycho",
            .capsName = "ÉVO-PSYCHO",
            .fullName = "Évo-Psycho",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_LIGHT_SCREEN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Bombarde la cible\\nd’une force télékiné-\\nsique, supprimant les\\ndégâts des coups\\nspéciaux.",
    },

    [MOVE_BADDY_BAD] = {
        .names = {
            .name = "Évo-Ténébro",
            .capsName = "ÉVO-TÉNÉBRO",
            .fullName = "Évo-Ténébro",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_REFLECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Adopte un comportement\\nhostile et attaque la\\ncible, annulant ainsi\\nles dégâts des\\nattaques physiques.",
    },

    [MOVE_SAPPY_SEED] = {
        .names = {
            .name = "Évo-Écolo",
            .capsName = "ÉVO-ÉCOLO",
            .fullName = "Évo-Écolo",
        },
        .data = {
            .effect = MOVE_EFFECT_LEECH_SEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_GRASS,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Disperse des graines\\npour attaquer la\\ncible. Les graines\\ndrainent les PV de la\\ncible à chaque tour.",
    },

    [MOVE_FREEZY_FROST] = {
        .names = {
            .name = "Évo-Congélo",
            .capsName = "ÉVO-CONGÉLO",
            .fullName = "Évo-Congélo",
        },
        .data = {
            .effect = MOVE_EFFECT_RESET_STAT_CHANGES_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec un cris-\\ntal de brume glacée.\\nAnnule toute modifica-\\ntion de statistiques\\ndes Pokémon.",
    },

    [MOVE_SPARKLY_SWIRL] = {
        .names = {
            .name = "Évo-Fabulo",
            .capsName = "ÉVO-FABULO",
            .fullName = "Évo-Fabulo",
        },
        .data = {
            .effect = MOVE_EFFECT_CURE_PARTY_STATUS_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_FAIRY,
            .accuracy = 85,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec un parfum\\nirrésistible. Cela\\nsoigne toutes les al-\\ntérations d’état de\\nson équipe.",
    },

    [MOVE_VEEVEE_VOLLEY] = {
        .names = {
            .name = "Évo-Chardasso",
            .capsName = "ÉVO-CHARDASSO",
            .fullName = "Évo-Chardasso",
        },
        .data = {
            .effect = MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Plus Évoli est heur-\\neux, plus la puissance\\nde cette capacité est\\ngrande. Ne rate jamais\\nsa cible.",
    },

    [MOVE_DOUBLE_IRON_BASH] = {
        .names = {
            .name = "Écrous d’Poing",
            .capsName = "ÉCROUS D’POING",
            .fullName = "Écrous d’Poing",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE_AND_FLINCH,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe la\\ncible avec ses bras\\ndeux fois d’affilée,\\nce qui peut aussi\\napeurer celle-ci.",
    },

    [MOVE_MAX_GUARD] = {
        .names = {
            .name = "Gardomax",
            .capsName = "GARDOMAX",
            .fullName = "Gardomax",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Protège contre toutes\\nles attaques. Son taux\\nd’échec augmente si\\nelle est utilisée de\\nmanière répétée.",
    },

    [MOVE_DYNAMAX_CANNON] = {
        .names = {
            .name = "Canon Dynamax",
            .capsName = "CANON DYNAMAX",
            .fullName = "Canon Dynamax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque en\\nlibérant l’énergie\\nconcentrée\\ndans son noyau.",
    },

    [MOVE_SNIPE_SHOT] = {
        .names = {
            .name = "TirDePrécision",
            .capsName = "TIRDEPRÉCISION",
            .fullName = "Tir de Précision",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (85) : (80)),
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur parvient\\ntoujours à viser la\\ncible voulue, en igno-\\nrant l’effet des tal-\\nents et des capacités.",
    },

    [MOVE_JAW_LOCK] = {
        .names = {
            .name = "Croque Fort",
            .capsName = "CROQUE FORT",
            .fullName = "Croque Fort",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_ESCAPE_BOTH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur et sa cible\\nne peuvent plus être\\néchangés jusqu’à ce\\nque l’un d’entre eux\\ntombe K.O.",
    },

    [MOVE_STUFF_CHEEKS] = {
        .names = {
            .name = "Garde-à-Joues",
            .capsName = "GARDE-À-JOUES",
            .fullName = "Garde-à-Joues",
        },
        .data = {
            .effect = MOVE_EFFECT_STUFF_CHEEKS,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur mange la\\nBaie qu’il tient, ce\\nqui augmente beaucoup\\nsa Défense.",
    },

    [MOVE_NO_RETREAT] = {
        .names = {
            .name = "Ultime Bastion",
            .capsName = "ULTIME BASTION",
            .fullName = "Ultime Bastion",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Montre sa détermina-\\ntion, toutes ses stats\\naugmentent, mais il ne\\npeut plus quitter le\\nterrain.",
    },

    [MOVE_TAR_SHOT] = {
        .names = {
            .name = "Goudronnage",
            .capsName = "GOUDRONNAGE",
            .fullName = "Goudronnage",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_SMART,
        },
        .description = "Recouvre sa cible de\\ngoudron liquide pour\\nbaisser sa Vitesse et\\nla rendre vulnérable\\nau feu.",
    },

    [MOVE_MAGIC_POWDER] = {
        .names = {
            .name = "Poudre Magique",
            .capsName = "POUDRE MAGIQUE",
            .fullName = "Poudre Magique",
        },
        .data = {
            .effect = MOVE_EFFECT_CHANGE_TO_PSYCHIC_TYPE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "Recouvre sa cible\\nd’une poudre magique\\nqui change son type\\nen Psy.",
    },

    [MOVE_DRAGON_DARTS] = {
        .names = {
            .name = "Draco-Flèches",
            .capsName = "DRACO-FLÈCHES",
            .fullName = "Draco-Flèches",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en propulsant\\n2 Fantyrm. S’il y a 2\\ncibles, chacune\\nd’entre elles est fra-\\nppée par un Fantyrm.",
    },

    [MOVE_TEATIME] = {
        .names = {
            .name = "Thérémonie",
            .capsName = "THÉRÉMONIE",
            .fullName = "Thérémonie",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT | RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Invite à prendre le\\ngoûter autour d’une\\ntasse de thé. Ceux qui\\ntiennent une Baie\\nla mangent.",
    },

    [MOVE_OCTOLOCK] = {
        .names = {
            .name = "Octoprise",
            .capsName = "OCTOPRISE",
            .fullName = "Octoprise",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Empêche la cible de\\ns’échapper. La Déf. et\\nla Déf. Spé. de\\ncelle-ci baissent à\\nchaque tour.",
    },

    [MOVE_BOLT_BEAK] = {
        .names = {
            .name = "Prise de Bec",
            .capsName = "PRISE DE BEC",
            .fullName = "Prise de Bec",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_IF_FASTER,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (80) : (85)),
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "La puissance est\\ndoublée si le lanceur\\nagit avant sa cible.",
    },

    [MOVE_FISHIOUS_REND] = {
        .names = {
            .name = "Branchicrok",
            .capsName = "BRANCHICROK",
            .fullName = "Branchicrok",
        },
        .data = {
            .effect = MOVE_EFFECT_DOUBLE_POWER_IF_FASTER,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (80) : (85)),
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque Croc. La\\npuissance est doublée\\nsi le lanceur agit\\navant sa cible.",
    },

    [MOVE_COURT_CHANGE] = {
        .names = {
            .name = "Change-Côté",
            .capsName = "CHANGE-CÔTÉ",
            .fullName = "Change-Côté",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Une force mystérieuse\\nintervertit les effets\\naffectant chaque côté\\ndu terrain.",
    },

    [MOVE_MAX_FLARE] = {
        .names = {
            .name = "Pyromax",
            .capsName = "PYROMAX",
            .fullName = "Pyromax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIRE,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Feu\\nqu’un Pokémon Dynamax\\npeut utiliser. Fait\\nbriller le soleil\\npendant 5 tours.",
    },

    [MOVE_MAX_FLUTTERBY] = {
        .names = {
            .name = "Insectomax",
            .capsName = "INSECTOMAX",
            .fullName = "Insectomax",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Insec-\\nte qu’un Pokémon Dyna-\\nmax peut utiliser.\\nBaisse l’Att. Spé. de\\nla cible.",
    },

    [MOVE_MAX_LIGHTNING] = {
        .names = {
            .name = "Fulguromax",
            .capsName = "FULGUROMAX",
            .fullName = "Fulguromax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_ELECTRIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Élec-\\ntrique qu’un Pokémon\\nDynamax peut utiliser.\\nCrée un Champ Électri-\\nfié qui dure 5 tours.",
    },

    [MOVE_MAX_STRIKE] = {
        .names = {
            .name = "Normalomax",
            .capsName = "NORMALOMAX",
            .fullName = "Normalomax",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Normal\\nqu’un Pokémon Dynamax\\npeut utiliser. Baisse\\nla Vitesse de\\nla cible.",
    },

    [MOVE_MAX_KNUCKLE] = {
        .names = {
            .name = "Pugilomax",
            .capsName = "PUGILOMAX",
            .fullName = "Pugilomax",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Combat\\nqu’un Pokémon Dynamax\\npeut utiliser.\\nAugmente l’Attaque\\ndes alliés.",
    },

    [MOVE_MAX_PHANTASM] = {
        .names = {
            .name = "Spectromax",
            .capsName = "SPECTROMAX",
            .fullName = "Spectromax",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_GHOST,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Spect-\\nre qu’un Pokémon Dyna-\\nmax peut utiliser.\\nBaisse la Défense de\\nla cible.",
    },

    [MOVE_MAX_HAILSTORM] = {
        .names = {
            .name = "Cryomax",
            .capsName = "CRYOMAX",
            .fullName = "Cryomax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Glace\\nqu’un Pokémon Dynamax\\npeut utiliser. Invoque\\nune tempête de grêle\\nqui dure cinq tours.",
    },

    [MOVE_MAX_OOZE] = {
        .names = {
            .name = "Toxinomax",
            .capsName = "TOXINOMAX",
            .fullName = "Toxinomax",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SP_ATK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_POISON,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Poison\\nqu’un Pokémon Dynamax\\npeut utiliser. Augmen-\\nte l’Attaque Spéciale\\ndes alliés.",
    },

    [MOVE_MAX_GEYSER] = {
        .names = {
            .name = "Hydromax",
            .capsName = "HYDROMAX",
            .fullName = "Hydromax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Eau\\nqu’un Pokémon Dynamax\\npeut utiliser. Invoque\\nde fortes pluies qui\\ndurent cinq tours.",
    },

    [MOVE_MAX_AIRSTREAM] = {
        .names = {
            .name = "Aéromax",
            .capsName = "AÉROMAX",
            .fullName = "Aéromax",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_FLYING,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Vol\\nqu’un Pokémon Dynamax\\npeut utiliser. Augmen-\\nte la Vitesse\\ndes alliés.",
    },

    [MOVE_MAX_STARFALL] = {
        .names = {
            .name = "Enchantomax",
            .capsName = "ENCHANTOMAX",
            .fullName = "Enchantomax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Fée\\nqu’un Pokémon Dynamax\\npeut utiliser. Crée un\\nChamp Brumeux qui dure\\ncinq tours.",
    },

    [MOVE_MAX_WYRMWIND] = {
        .names = {
            .name = "Dracomax",
            .capsName = "DRACOMAX",
            .fullName = "Dracomax",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Dragon\\nqu’un Pokémon Dynamax\\npeut utiliser. Baisse\\nl’Attaque de la cible.",
    },

    [MOVE_MAX_MINDSTORM] = {
        .names = {
            .name = "Psychomax",
            .capsName = "PSYCHOMAX",
            .fullName = "Psychomax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Psy\\nqu’un Pokémon Dynamax\\npeut utiliser. Crée un\\nChamp Psychique qui\\ndure cinq tours.",
    },

    [MOVE_MAX_ROCKFALL] = {
        .names = {
            .name = "Lithomax",
            .capsName = "LITHOMAX",
            .fullName = "Lithomax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_ROCK,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Roche\\nqu’un Pokémon Dynamax\\npeut utiliser. Invoque\\nune tempête de sable\\nqui dure cinq tours.",
    },

    [MOVE_MAX_QUAKE] = {
        .names = {
            .name = "Sismomax",
            .capsName = "SISMOMAX",
            .fullName = "Sismomax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_GROUND,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Sol\\nqu’un Pokémon Dynamax\\npeut utiliser. Augmen-\\nte la Défense Spéciale\\ndes alliés.",
    },

    [MOVE_MAX_DARKNESS] = {
        .names = {
            .name = "Sinistromax",
            .capsName = "SINISTROMAX",
            .fullName = "Sinistromax",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Ténè-\\nbre qu’un Pokémon Dy-\\nnamax peut utiliser.\\nBaisse la Déf. Spéc.\\nde la cible.",
    },

    [MOVE_MAX_OVERGROWTH] = {
        .names = {
            .name = "Phytomax",
            .capsName = "PHYTOMAX",
            .fullName = "Phytomax",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Plante\\nqu’un Pokémon Dynamax\\npeut utiliser. Crée un\\nChamp Herbu qui dure\\ncinq tours.",
    },

    [MOVE_MAX_STEELSPIKE] = {
        .names = {
            .name = "Métallomax",
            .capsName = "MÉTALLOMAX",
            .fullName = "Métallomax",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_DEF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 10,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque de type Acier\\nqu’un Pokémon Dynamax\\npeut utiliser.\\nAugmente la Défense\\ndes alliés.",
    },

    [MOVE_CLANGOROUS_SOUL] = {
        .names = {
            .name = "Dracacophonie",
            .capsName = "DRACOPHONIE",
            .fullName = "Dracacophonie",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur sacrifie\\nune partie de ses PV\\npour augmenter toutes\\nses stats.",
    },

    [MOVE_BODY_PRESS] = {
        .names = {
            .name = "Big Splash",
            .capsName = "BIG SPLASH",
            .fullName = "Big Splash",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Utilise son corps pour\\nattaquer. Plus la Déf.\\ndu lanceur est élevée,\\nplus les dégâts sont\\nimportants.",
    },

    [MOVE_DECORATE] = {
        .names = {
            .name = "Nappage",
            .capsName = "NAPPAGE",
            .fullName = "Nappage",
        },
        .data = {
            .effect = MOVE_EFFECT_DECORATE,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FAIRY,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Augmente beaucoup\\nl’Att. et l’Att. Spé.\\nde la cible en la\\nnappant de glaçage.",
    },

    [MOVE_DRUM_BEATING] = {
        .names = {
            .name = "Tambour Battant",
            .capsName = "TAMBOUR BATTANT",
            .fullName = "Tambour Battant",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Bat son tambour pour\\nen diriger les racines\\nsur la cible, l’atta-\\nquer, et baisser\\nsa Vitesse.",
    },

    [MOVE_SNAP_TRAP] = {
        .names = {
            .name = "Troquenard",
            .capsName = "TROQUENARD",
            .fullName = "Troquenard",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 35,
            .type = ((CHAMPIONS_TYPE_CHANGES) ? (TYPE_STEEL) : (TYPE_GRASS)),
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Piège la cible pour\\nlui infliger des\\ndégâts pendant 4 à 5\\ntours. L’empêche aussi\\nde fuir.",
    },

    [MOVE_PYRO_BALL] = {
        .names = {
            .name = "Ballon Brûlant",
            .capsName = "BALLON BRÛLANT",
            .fullName = "Ballon Brûlant",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FIRE,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec un ballon\\nfait à partir d’un\\ncaillou enflammé. Peut\\naussi brûler la cible.",
    },

    [MOVE_BEHEMOTH_BLADE] = {
        .names = {
            .name = "Gladius Maximus",
            .capsName = "GLADIUS MAXIMUS",
            .fullName = "Gladius Maximus",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur se trans-\\nforme en épée extrê-\\nmement grande et\\npourfend vigoureuse-\\nment sa cible.",
    },

    [MOVE_BEHEMOTH_BASH] = {
        .names = {
            .name = "Aegis Maxima",
            .capsName = "AEGIS MAXIMA",
            .fullName = "Aegis Maxima",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur se trans-\\nforme en bouclier\\nextrêmement solide et\\ncharge vigoureusement\\nsa cible.",
    },

    [MOVE_AURA_WHEEL] = {
        .names = {
            .name = "Roue Libre",
            .capsName = "ROUE LIBRE",
            .fullName = "Roue Libre",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 110,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Morpeko libère l’éner-\\ngie dans ses joues, ce\\nqui augmente son Att.\\net sa Vit. Le type\\ndépend de sa forme.",
    },

    [MOVE_BREAKING_SWIPE] = {
        .names = {
            .name = "Abattage",
            .capsName = "ABATTAGE",
            .fullName = "Abattage",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Balaie violemment la\\ncible avec son immense\\nqueue. Baisse l’Atta-\\nque de la cible.",
    },

    [MOVE_BRANCH_POKE] = {
        .names = {
            .name = "Tapotige",
            .capsName = "TAPOTIGE",
            .fullName = "Tapotige",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque sa cible en la\\npiquant avec une\\nbranche pointue.",
    },

    [MOVE_OVERDRIVE] = {
        .names = {
            .name = "Overdrive",
            .capsName = "OVERDRIVE",
            .fullName = "Overdrive",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Gratte ses cordes de\\nguitare pour créer de\\nviolentes vibrations\\nsonores qui blessent\\nla cible.",
    },

    [MOVE_APPLE_ACID] = {
        .names = {
            .name = "Acide Malique",
            .capsName = "ACIDE MALIQUE",
            .fullName = "Acide Malique",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_HIT,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (80)),
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette un liquide\\ncorrosif créé à partir\\nd’une pomme acide sur\\nla cible, ce qui lui\\nbaisse la Déf. Spé.",
    },

    [MOVE_GRAV_APPLE] = {
        .names = {
            .name = "Force G",
            .capsName = "FORCE G",
            .fullName = "Force G",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (80)),
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait tomber une pomme\\nde très haut sur la\\ncible, ce qui baisse\\nla Défense de\\ncelle-ci.",
    },

    [MOVE_SPIRIT_BREAK] = {
        .names = {
            .name = "Choc Émotionnel",
            .capsName = "CHOC ÉMOTIONNEL",
            .fullName = "Choc Émotionnel",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque la cible avec\\nune telle force\\nqu’elle voit son\\nAttaque Spéciale\\nbaisser.",
    },

    [MOVE_STRANGE_STEAM] = {
        .names = {
            .name = "Vapeur Féérique",
            .capsName = "VAPEUR FÉÉRIQUE",
            .fullName = "Vapeur Féérique",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_FAIRY,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Émet de la vapeur pour\\nattaquer sa cible.\\nPeut aussi la rendre\\nconfuse.",
    },

    [MOVE_LIFE_DEW] = {
        .names = {
            .name = "Fontaine de Vie",
            .capsName = "FONTAINE DE VIE",
            .fullName = "Fontaine de Vie",
        },
        .data = {
            .effect = MOVE_EFFECT_LIFE_DEW,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_WATER,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette une eau mys-\\ntérieuse sur le terr-\\nain pour restaurer ses\\nPV et ceux de ses\\nalliés au combat.",
    },

    [MOVE_OBSTRUCT] = {
        .names = {
            .name = "Blocage",
            .capsName = "BLOCAGE",
            .fullName = "Blocage",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Protège le lanceur de\\ntoutes les capacités\\noffensives. Baisse la\\nDéf. de l’adversaire\\nsi capa. de contact.",
    },

    [MOVE_FALSE_SURRENDER] = {
        .names = {
            .name = "Fourbette",
            .capsName = "FOURBETTE",
            .fullName = "Fourbette",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait semblant de se\\nprosterner et utilise\\nses cheveux pour tran-\\nspercer sa cible.\\nN’échoue jamais.",
    },

    [MOVE_METEOR_ASSAULT] = {
        .names = {
            .name = "Joute Astrale",
            .capsName = "JOUTE ASTRALE",
            .fullName = "Joute Astrale",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (170) : (150)),
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec son poir-\\neau. Cette action le\\nfait vaciller et\\nl’empêche d’agir au\\ntour suivant.",
    },

    [MOVE_ETERNABEAM] = {
        .names = {
            .name = "Laser Infinimax",
            .capsName = "LASER INFINIMAX",
            .fullName = "Laser Infinimax",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_SPECIAL,
            .power = 160,
            .type = TYPE_DRAGON,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque la plus puis-\\nsante d’Éthernatos\\nsous sa forme origin-\\nelle. Il devra se re-\\nposer au tour suivant.",
    },

    [MOVE_STEEL_BEAM] = {
        .names = {
            .name = "Métalaser",
            .capsName = "MÉTALASER",
            .fullName = "Métalaser",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 140,
            .type = TYPE_STEEL,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Concentre du métal de\\nson corps en un rayon\\nqu’il projette violem-\\nment. Le lanceur subit\\naussi des dégâts.",
    },

    [MOVE_EXPANDING_FORCE] = {
        .names = {
            .name = "Vaste Pouvoir",
            .capsName = "VASTE POUVOIR",
            .fullName = "Vaste Pouvoir",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec ses pou-\\nvoirs psychiques. Si\\nun champ psychique est\\nactif, la puissance\\naugmente.",
    },

    [MOVE_STEEL_ROLLER] = {
        .names = {
            .name = "Métalliroue",
            .capsName = "MÉTALLIROUE",
            .fullName = "Métalliroue",
        },
        .data = {
            .effect = MOVE_EFFECT_END_TERRAIN,
            .split = SPLIT_PHYSICAL,
            .power = 130,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque qui inflige\\ndes dégâts et fait di-\\nsparaître le champ\\nactif, mais qui échoue\\ns’il n’y en a pas",
    },

    [MOVE_SCALE_SHOT] = {
        .names = {
            .name = "Rafale Écailles",
            .capsName = "RAFALE ÉCAILLES",
            .fullName = "Rafale Écailles",
        },
        .data = {
            .effect = MOVE_EFFECT_MULTI_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_DRAGON,
            .accuracy = 90,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette des écailles\\n5 fois d’affilée. Aug-\\nmente sa vitesse, mais\\nbaisse sa Défense.",
    },

    [MOVE_METEOR_BEAM] = {
        .names = {
            .name = "Laser Météore",
            .capsName = "LASER MÉTÉORE",
            .fullName = "Laser Météore",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Concentre l’énergie\\ncosmique pour augmen-\\nter son Att. Spé. au\\n1er tour, et frappe\\nau 2ème tour.",
    },

    [MOVE_SHELL_SIDE_ARM] = {
        .names = {
            .name = "Kokiyarme",
            .capsName = "KOKIYARME",
            .fullName = "Kokiyarme",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque physique ou\\nspéciale, en fonction\\nde ce qui inflige le\\nplus de dégâts. Peut\\naussi empoisonner.",
    },

    [MOVE_MISTY_EXPLOSION] = {
        .names = {
            .name = "Explo-Brume",
            .capsName = "EXPLO-BRUME",
            .fullName = "Explo-Brume",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_DEFENSE,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe tous les Poké-\\nmon autour de lui en\\nexplosant, ce qui le\\nmet K.O. Plus puissant\\nsi champ brumeux.",
    },

    [MOVE_GRASSY_GLIDE] = {
        .names = {
            .name = "Gliss’Herbe",
            .capsName = "GLISS’HERBE",
            .fullName = "Gliss’Herbe",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 55,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en glissant\\nsur le terrain. Frappe\\ntoujours en 1er si un\\nchamp herbu est\\nactif.",
    },

    [MOVE_RISING_VOLTAGE] = {
        .names = {
            .name = "Monte-Tension",
            .capsName = "MONTE-TENSION",
            .fullName = "Monte-Tension",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Des éclairs surgissent\\ndu sol et frappent la\\ncible. La puissance\\nest doublée si champ\\nélectrifié.",
    },

    [MOVE_TERRAIN_PULSE] = {
        .names = {
            .name = "Champlification",
            .capsName = "CHAMPLIFICATION",
            .fullName = "Champlification",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque qui utilise la\\nforce des champs pour\\nprojeter une aura. Son\\ntype et sa puissance\\nvarient selon le champ",
    },

    [MOVE_SKITTER_SMACK] = {
        .names = {
            .name = "Ravage Rampant",
            .capsName = "RAVAGE RAMPANT",
            .fullName = "Ravage Rampant",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_ATK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_BUG,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Rampe derrière la\\ncible pour l’attaquer,\\nce qui baisse l’Att.\\nSpé. de celle-ci.",
    },

    [MOVE_BURNING_JEALOUSY] = {
        .names = {
            .name = "Feu Envieux",
            .capsName = "FEU ENVIEUX",
            .fullName = "Feu Envieux",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec toute sa\\njalousie. Brûle tout\\nPokémon dont les stats\\nont augmenté pendant\\nce tour.",
    },

    [MOVE_LASH_OUT] = {
        .names = {
            .name = "Cent Rancunes",
            .capsName = "CENT RANCUNES",
            .fullName = "Cent Rancunes",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe avec toute sa\\nrancune. Si les stats\\ndu lanceur ont diminué\\npendant ce tour, la\\npuissance est doublée.",
    },

    [MOVE_POLTERGEIST] = {
        .names = {
            .name = "Esprit Frappeur",
            .capsName = "ESPRIT FRAPPEUR",
            .fullName = "Esprit Frappeur",
        },
        .data = {
            .effect = MOVE_EFFECT_POLTERGEIST,
            .split = SPLIT_PHYSICAL,
            .power = 110,
            .type = TYPE_GHOST,
            .accuracy = 90,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Manipule l’objet tenu\\npar la cible pour\\nl’attaquer. Échoue si\\ncelle-ci ne tient\\nrien.",
    },

    [MOVE_CORROSIVE_GAS] = {
        .names = {
            .name = "Gaz Corrosif",
            .capsName = "GAZ CORROSIF",
            .fullName = "Gaz Corrosif",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 40,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALL_ADJACENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Un gaz corrosif qui\\nenveloppe tous les\\nPokémon alentour et\\nqui dissout les objets\\nqu’ils tiennent.",
    },

    [MOVE_COACHING] = {
        .names = {
            .name = "Coaching",
            .capsName = "COACHING",
            .fullName = "Coaching",
        },
        .data = {
            .effect = MOVE_EFFECT_COACHING,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Coache ses alliés,\\naugmentant ainsi leur\\nAttaque et leur\\nDéfense.",
    },

    [MOVE_FLIP_TURN] = {
        .names = {
            .name = "Eau Revoir",
            .capsName = "EAU REVOIR",
            .fullName = "Eau Revoir",
        },
        .data = {
            .effect = MOVE_EFFECT_SWITCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque, puis revient\\nà toute vitesse à côté\\nde son Dresseur ou\\nde sa Dresseuse.",
    },

    [MOVE_TRIPLE_AXEL] = {
        .names = {
            .name = "Triple Axel",
            .capsName = "TRIPLE AXEL",
            .fullName = "Triple Axel",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_THREE_TIMES_INCREMENT_BASE_POWER_20,
            .split = SPLIT_PHYSICAL,
            .power = 20,
            .type = TYPE_ICE,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Donne trois coups de\\npied d’affilée dont la\\nportée augmente à\\nchaque saut.",
    },

    [MOVE_DUAL_WINGBEAT] = {
        .names = {
            .name = "Double Volée",
            .capsName = "DOUBLE VOLÉE",
            .fullName = "Double Volée",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_FLYING,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur frappe la\\ncible avec ses ailes\\ndeux fois d’affilée.",
    },

    [MOVE_SCORCHING_SANDS] = {
        .names = {
            .name = "Sable Ardent",
            .capsName = "SABLE ARDENT",
            .fullName = "Sable Ardent",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur projette du\\nsable chauffé à blanc\\nsur la cible, ce qui\\npeut aussi la brûler.",
    },

    [MOVE_JUNGLE_HEALING] = {
        .names = {
            .name = "SelveSalvatrice",
            .capsName = "SELVESALVATRICE",
            .fullName = "Selve Salvatrice",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER_SIDE,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait appel au pouvoir\\nde la jungle pour res-\\ntaurer les PV et alté-\\nrations d’état de ses\\nalliés et de lui-même.",
    },

    [MOVE_WICKED_BLOW] = {
        .names = {
            .name = "Poing Obscur",
            .capsName = "POING OBSCUR",
            .fullName = "Poing Obscur",
        },
        .data = {
            .effect = MOVE_EFFECT_ALWAYS_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Assène un coup puis-\\nsant. Inflige toujours\\nun coup critique.",
    },

    [MOVE_SURGING_STRIKES] = {
        .names = {
            .name = "TorrentDeCoups",
            .capsName = "TORRENTDECOUPS",
            .fullName = "Torrent de Coups",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_THREE_TIMES_ALWAYS_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 25,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Assène 3 coups flui-\\ndes. Inflige toujours\\nun coup critique.",
    },

    [MOVE_THUNDER_CAGE] = {
        .names = {
            .name = "Voltageôle",
            .capsName = "VOLTAGEÔLE",
            .fullName = "Voltageôle",
        },
        .data = {
            .effect = MOVE_EFFECT_BIND_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_ELECTRIC,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Frappe la cible, et la\\npiège dans une prison\\nélectrique qui dure de\\nquatre à cinq tours.",
    },

    [MOVE_DRAGON_ENERGY] = {
        .names = {
            .name = "Draco-Énergie",
            .capsName = "DRACO-ÉNERGIE",
            .fullName = "Draco-Énergie",
        },
        .data = {
            .effect = MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Utilise son énergie\\nvitale pour attaquer\\nla cible. Moins il a\\nde PV, moins l’attaque\\nest puissante.",
    },

    [MOVE_FREEZING_GLARE] = {
        .names = {
            .name = "Regard Glaçant",
            .capsName = "REGARD GLAÇANT",
            .fullName = "Regard Glaçant",
        },
        .data = {
            .effect = MOVE_EFFECT_FREEZE_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Les yeux du lanceur\\ntirent des rayons psy-\\nchiques qui attaquent\\nla cible et peuvent\\naussi la geler.",
    },

    [MOVE_FIERY_WRATH] = {
        .names = {
            .name = "Fureur Ardente",
            .capsName = "FUREUR ARDENTE",
            .fullName = "Fureur Ardente",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_SPECIAL,
            .power = 90,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Canalise sa colère et\\nla transforme en éma-\\nnation brûlante. Peut\\naussi apeurer\\ncelle-ci.",
    },

    [MOVE_THUNDEROUS_KICK] = {
        .names = {
            .name = "Coup Fulgurant",
            .capsName = "COUP FULGURANT",
            .fullName = "Coup Fulgurant",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_DEFENSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Assène un coup de pied\\nà la cible à la vit-\\nesse de l’éclair.\\nBaisse aussi la\\nDéfense de la cible.",
    },

    [MOVE_GLACIAL_LANCE] = {
        .names = {
            .name = "Lance de Glace",
            .capsName = "LANCE DE GLACE",
            .fullName = "Lance de Glace",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque la\\ncible avec une lance\\nde glace entourée d’un\\nblizzard.",
    },

    [MOVE_ASTRAL_BARRAGE] = {
        .names = {
            .name = "Éclat Spectral",
            .capsName = "ÉCLAT SPECTRAL",
            .fullName = "Éclat Spectral",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (110) : (120)),
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque la\\ncible avec une\\nmultitude de petits\\nspectres.",
    },

    [MOVE_EERIE_SPELL] = {
        .names = {
            .name = "Sort Sinistre",
            .capsName = "SORT SINISTRE",
            .fullName = "Sort Sinistre",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec de puis-\\nsants pouvoirs psychi-\\nques et retire 3 PP de\\nla dernière capacité\\nutilisée par la cible.",
    },

    [MOVE_DIRE_CLAW] = {
        .names = {
            .name = "GriffesFunestes",
            .capsName = "GRIFFESFUNESTES",
            .fullName = "Griffes Funestes",
        },
        .data = {
            .effect = MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 15,
            .effectChance = ((CHAMPIONS_EFFECT_CHANCE_CHANGES) ? (30) : (50)),
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec des grif-\\nfes destructrices. La\\ncible peut aussi être\\nempoisonnée, paraly-\\nsée, ou endormie.",
    },

    [MOVE_PSYSHIELD_BASH] = {
        .names = {
            .name = "Sprint Bouclier",
            .capsName = "SPRINT BOUCLIER",
            .fullName = "Sprint Bouclier",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_DEF_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (90) : (70)),
            .type = TYPE_PSYCHIC,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "S’enveloppe d’énergie\\npsychique et frappe sa\\ncible de plein fouet.\\nAugmente la Défense\\ndu lanceur.",
    },

    [MOVE_POWER_SHIFT] = {
        .names = {
            .name = "Échange Force",
            .capsName = "ÉCHANGE FORCE",
            .fullName = "Échange Force",
        },
        .data = {
            .effect = MOVE_EFFECT_SWAP_ATK_DEF,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur échange\\nson Attaque avec\\nsa Défense.",
    },

    [MOVE_STONE_AXE] = {
        .names = {
            .name = "Hache de Pierre",
            .capsName = "HACHE DE PIERRE",
            .fullName = "Hache de Pierre",
        },
        .data = {
            .effect = MOVE_EFFECT_STEALTH_ROCK_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_ROCK,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec sa hache\\nde pierre. Des débris\\nde pierre se répandent\\nalors et se mettent à\\nflotter autour.",
    },

    [MOVE_SPRINGTIDE_STORM] = {
        .names = {
            .name = "TyphonPassionné",
            .capsName = "TYPHONPASSIONNÉ",
            .fullName = "Typhon Passionné",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FAIRY,
            .accuracy = 80,
            .pp = 5,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Déclenche un violent\\ntyphon de haine et\\nd’amour qui s’abat sur\\nla cible. Peut baisser\\nl’Attaque de celle-ci.",
    },

    [MOVE_MYSTICAL_POWER] = {
        .names = {
            .name = "Force Mystique",
            .capsName = "FORCE MYSTIQUE",
            .fullName = "Force Mystique",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_PSYCHIC,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en libérant un\\npouvoir mystique. Cela\\naugmente également son\\nAttaque Spéciale.",
    },

    [MOVE_RAGING_FURY] = {
        .names = {
            .name = "Grand Courroux",
            .capsName = "GRAND COURROUX",
            .fullName = "Grand Courroux",
        },
        .data = {
            .effect = MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_RANDOM_OPPONENT,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se déchaîne et attaque\\nen projetant de vio-\\nlentes flammes pendant\\n2 ou 3 tours. Il de-\\nvient ensuite confus.",
    },

    [MOVE_WAVE_CRASH] = {
        .names = {
            .name = "Aquatacle",
            .capsName = "AQUATACLE",
            .fullName = "Aquatacle",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_THIRD,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se recouvre entière-\\nment d’eau avant de\\ncharger sa cible. Cela\\nblesse aussi gravement\\nle lanceur.",
    },

    [MOVE_CHLOROBLAST] = {
        .names = {
            .name = "Herblast",
            .capsName = "HERBLAST",
            .fullName = "Herblast",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOIL_HALF_MAX_HP,
            .split = SPLIT_SPECIAL,
            .power = 150,
            .type = TYPE_GRASS,
            .accuracy = 95,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Tire un concentré de\\nsa propre chlorophylle\\nsur la cible, ce qui\\nle blesse également.",
    },

    [MOVE_MOUNTAIN_GALE] = {
        .names = {
            .name = "Bise Glaciaire",
            .capsName = "BISE GLACIAIRE",
            .fullName = "Bise Glaciaire",
        },
        .data = {
            .effect = MOVE_EFFECT_FLINCH_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (120) : (100)),
            .type = TYPE_ICE,
            .accuracy = 85,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Envoie un bloc de\\nglace de la taille\\nd’un iceberg sur la\\ncible, ce qui peut\\naussi l’apeurer.",
    },

    [MOVE_VICTORY_DANCE] = {
        .names = {
            .name = "Danse Victoire",
            .capsName = "DANSE VICTOIRE",
            .fullName = "Danse Victoire",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_DEF_SPEED_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIGHTING,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Danse vigoureusement\\npour invoquer la vic-\\ntoire, ce qui augmente\\nson Attaque, sa Déf-\\nense et sa Vitesse.",
    },

    [MOVE_HEADLONG_RUSH] = {
        .names = {
            .name = "Assaut Frontal",
            .capsName = "ASSAUT FRONTAL",
            .fullName = "Assaut Frontal",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_GROUND,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Charge la cible de\\ntoutes ses forces, ce\\nqui baisse la Défense\\net la Défense Spéciale\\ndu lanceur.",
    },

    [MOVE_BARB_BARRAGE] = {
        .names = {
            .name = "Multitoxik",
            .capsName = "MULTITOXIK",
            .fullName = "Multitoxik",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT_DOUBLE_POWER_ON_POISONED,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "D’innombrables pointes\\ntoxiques frappent la\\ncible. Peut l’empoi-\\nsonner. Puis. est dou-\\nblée si déjà empoiso.",
    },

    [MOVE_ESPER_WING] = {
        .names = {
            .name = "Ailes Psycho",
            .capsName = "AILES PSYCHO",
            .fullName = "Ailes Psycho",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Entaille avec ses\\nailes renforcées par\\nune émanation psychi-\\nque. Taux de critiques\\nélevé. Aug. Vitesse.",
    },

    [MOVE_BITTER_MALICE] = {
        .names = {
            .name = "Cœur de Rancœur",
            .capsName = "CŒUR DE RANCŒUR",
            .fullName = "Cœur de Rancœur",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Une rancœur glaciale\\nfrappe la cible et\\nbaisse son Attaque.",
    },

    [MOVE_SHELTER] = {
        .names = {
            .name = "Mur Fumigène",
            .capsName = "MUR FUMIGÈNE",
            .fullName = "Mur Fumigène",
        },
        .data = {
            .effect = MOVE_EFFECT_DEF_UP_2,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Rend la peau du\\nlanceur dure comme un\\nmur de fer, ce qui\\naugmente beaucoup sa\\nDéfense.",
    },

    [MOVE_TRIPLE_ARROWS] = {
        .names = {
            .name = "Triple Flèche",
            .capsName = "TRIPLE FLÈCHE",
            .fullName = "Triple Flèche",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Donne un coup de pied\\net tire trois flèches\\nsimultanément. Peut\\nbaisser la Déf. ou\\nl’apeurer. Crit. élevé",
    },

    [MOVE_INFERNAL_PARADE] = {
        .names = {
            .name = "Cortège Funèbre",
            .capsName = "CORTÈGE FUNÈBRE",
            .fullName = "Cortège Funèbre",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT_DOUBLE_POWER_ON_STATUS,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (65) : (60)),
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Une multitude de bou-\\nles de feu frappent la\\ncible. Peut la brûler.\\nPuissance doublée si\\naltération de statut.",
    },

    [MOVE_CEASELESS_EDGE] = {
        .names = {
            .name = "Vagues à Lames",
            .capsName = "VAGUES À LAMES",
            .fullName = "Vagues à Lames",
        },
        .data = {
            .effect = MOVE_EFFECT_SET_SPIKES_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_DARK,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Entaille la cible avec\\ndes lames de\\ncoquillages.",
    },

    [MOVE_BLEAKWIND_STORM] = {
        .names = {
            .name = "Typhon Hivernal",
            .capsName = "TYPHON HIVERNAL",
            .fullName = "Typhon Hivernal",
        },
        .data = {
            .effect = MOVE_EFFECT_BLEAKWIND_STORM,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_FLYING,
            .accuracy = 80,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Déclenche un typhon\\nfroid et brutal qui\\nfait trembler le cœur\\net le corps de la cib-\\nle, peut baisser Vit.",
    },

    [MOVE_WILDBOLT_STORM] = {
        .names = {
            .name = "TyphonFulgurant",
            .capsName = "TYPHONFULGURANT",
            .fullName = "Typhon Fulgurant",
        },
        .data = {
            .effect = MOVE_EFFECT_WILDBOLT_STORM,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_ELECTRIC,
            .accuracy = 80,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Déclenche un violent\\ntyphon orageux dont\\nles rafales et la fou-\\ndre frappent la cible,\\npeut la paralyser.",
    },

    [MOVE_SANDSEAR_STORM] = {
        .names = {
            .name = "TyphonPyrosable",
            .capsName = "TYPHONPYROSABLE",
            .fullName = "Typhon Pyrosable",
        },
        .data = {
            .effect = MOVE_EFFECT_SANDSEAR_STORM,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_GROUND,
            .accuracy = 80,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Déclenche un violent\\ntyphon mêlé à du sable\\nardent qui s’abat sur\\nla cible, ce qui peut\\nla brûler.",
    },

    [MOVE_LUNAR_BLESSING] = {
        .names = {
            .name = "Prière Lunaire",
            .capsName = "PRIÈRE LUNAIRE",
            .fullName = "Prière Lunaire",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Adresse une prière à\\nla lune pour restaurer\\nles PV et soigner ses\\naltérations de statut\\net de ses alliés.",
    },

    [MOVE_TAKE_HEART] = {
        .names = {
            .name = "Extravaillance",
            .capsName = "EXTRAVAILLANCE",
            .fullName = "Extravaillance",
        },
        .data = {
            .effect = MOVE_EFFECT_TAKE_HEART,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_PSYCHIC,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait preuve de bravou-\\nre pour soigner ses\\naltérations de statut\\net augmenter son Att.\\nSpé. et sa Déf. Spé.",
    },

    [MOVE_TERA_BLAST] = {
        .names = {
            .name = "Téra Explosion",
            .capsName = "TÉRA EXPLOSION",
            .fullName = "Téra Explosion",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Si téracristallisé,\\nlibère l’énergie de\\nson type Téracristal.\\nUtilise l’Att. ou\\nl’Att. Spé.",
    },

    [MOVE_SILK_TRAP] = {
        .names = {
            .name = "Piège de Fil",
            .capsName = "PIÈGE DE FIL",
            .fullName = "Piège de Fil",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_BUG,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Déploie un piège de\\nfil pour se protéger.\\nSi contact, la Vitesse\\nde l’ennemi baisse.",
    },

    [MOVE_AXE_KICK] = {
        .names = {
            .name = "Talon-Marteau",
            .capsName = "TALON-MARTEAU",
            .fullName = "Talon-Marteau",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT_CRASH_ON_MISS,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_FIGHTING,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Donne un coup de talon\\ndescendant à la cible.\\nPeut la rendre confu-\\nse. S’il échoue, le\\nlanceur se blesse.",
    },

    [MOVE_LAST_RESPECTS] = {
        .names = {
            .name = "HommagePosthume",
            .capsName = "HOMMAGEPOSTHUME",
            .fullName = "Hommage Posthume",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque pour venger\\nses alliés. Plus le\\nnombre de d’alliés mis\\nK.O. est élevé, plus\\nla puissance augmente.",
    },

    [MOVE_LUMINA_CRASH] = {
        .names = {
            .name = "Lumino-Impact",
            .capsName = "LUMINO-IMPACT",
            .fullName = "Lumino-Impact",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SP_DEF_2_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en émettant\\nune étrange lumière\\nqui ébranle l’esprit.\\nBaisse beaucoup la\\nDéf. Spé. de la cible.",
    },

    [MOVE_ORDER_UP] = {
        .names = {
            .name = "Plat du Jour",
            .capsName = "PLAT DU JOUR",
            .fullName = "Plat du Jour",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur attaque\\navec adresse et\\nélégance.",
    },

    [MOVE_JET_PUNCH] = {
        .names = {
            .name = "Poing Sonique",
            .capsName = "POING SONIQUE",
            .fullName = "Poing Sonique",
        },
        .data = {
            .effect = MOVE_EFFECT_PRIORITY_1,
            .split = SPLIT_PHYSICAL,
            .power = 60,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Enveloppe son poing\\nd’un torrent furieux\\net attaque si rapide-\\nment qu’on peine à le\\ndiscerner.",
    },

    [MOVE_SPICY_EXTRACT] = {
        .names = {
            .name = "Habanerage",
            .capsName = "HABANERAGE",
            .fullName = "Habanerage",
        },
        .data = {
            .effect = MOVE_EFFECT_SPICY_EXTRACT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Relâche un concentré\\nextrêmement pimenté\\nsur la cible. L’Att.\\nde la cible augmente,\\nmais sa Déf. baisse.",
    },

    [MOVE_SPIN_OUT] = {
        .names = {
            .name = "Dérapage",
            .capsName = "DÉRAPAGE",
            .fullName = "Dérapage",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_SPEED_DOWN_2_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (10) : (5)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Met tout son poids sur\\nses pattes et effectue\\nde violentes rota-\\ntions. Baisse beaucoup\\nla Vitesse du lanceur.",
    },

    [MOVE_POPULATION_BOMB] = {
        .names = {
            .name = "Prolifération",
            .capsName = "PROLIFÉRATION",
            .fullName = "Prolifération",
        },
        .data = {
            .effect = MOVE_EFFECT_UP_TO_10_HITS,
            .split = SPLIT_PHYSICAL,
            .power = 20,
            .type = TYPE_NORMAL,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur et ses con-\\ngénères prolifèrent en\\nmasse et attaquent en-\\nsemble d’une à dix\\nfois d’affilée.",
    },

    [MOVE_ICE_SPINNER] = {
        .names = {
            .name = "Cryo-Pirouette",
            .capsName = "CRYO-PIROUETTE",
            .fullName = "Cryo-Pirouette",
        },
        .data = {
            .effect = MOVE_EFFECT_END_TERRAIN,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_ICE,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Enveloppe ses jambes\\nd’une fine couche de\\nglace et heurte la\\ncible. Détruit le\\nchamp actif du terrain",
    },

    [MOVE_GLAIVE_RUSH] = {
        .names = {
            .name = "Charge Glaive",
            .capsName = "CHARGE GLAIVE",
            .fullName = "Charge Glaive",
        },
        .data = {
            .effect = MOVE_EFFECT_GLAIVE_RUSH,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se jette dans une\\ncharge inconsciente.\\nAu 2nd tour, l’attaque\\ninflige le double de\\ndégâts. Échoue jamais.",
    },

    [MOVE_REVIVAL_BLESSING] = {
        .names = {
            .name = "Second Souffle",
            .capsName = "SECOND SOUFFLE",
            .fullName = "Second Souffle",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 1,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Adresse une prière\\nafin de ranimer un\\nPokémon de l’équipe\\nK.O. en lui rendant la\\nmoitié de ses PV.",
    },

    [MOVE_SALT_CURE] = {
        .names = {
            .name = "Salaison",
            .capsName = "SALAISON",
            .fullName = "Salaison",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 40,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Couvre de sel, ce qui\\ninflige des dégâts\\ncontinus. Sur le type\\nAcier ou Eau, ces\\ndégâts sont plus imp.",
    },

    [MOVE_TRIPLE_DIVE] = {
        .names = {
            .name = "Triple Plongeon",
            .capsName = "TRIPLE PLONGEON",
            .fullName = "Triple Plongeon",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_THREE_TIMES,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (35) : (30)),
            .type = TYPE_WATER,
            .accuracy = 95,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Effectue des plongeons\\nparfaitement cadencés\\npour éclabousser et\\ninfliger des dégâts\\ntrois fois d’affilée.",
    },

    [MOVE_MORTAL_SPIN] = {
        .names = {
            .name = "Toupie Éclat",
            .capsName = "TOUPIE ÉCLAT",
            .fullName = "Toupie Éclat",
        },
        .data = {
            .effect = MOVE_EFFECT_MORTAL_SPIN,
            .split = SPLIT_PHYSICAL,
            .power = 30,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en tournant\\nsur lui-même, ce qui\\nempoisonne la cible.\\nAugmente la vitesse\\ndu lanceur.",
    },

    [MOVE_DOODLE] = {
        .names = {
            .name = "Décalquage",
            .capsName = "DÉCALQUAGE",
            .fullName = "Décalquage",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Capture l’essence de\\nla cible et la décal-\\nque. Le talent du lan-\\nceur et des alliés de-\\nvient celui de la cib.",
    },

    [MOVE_FILLET_AWAY] = {
        .names = {
            .name = "Décharnement",
            .capsName = "DÉCHARNEMENT",
            .fullName = "Décharnement",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Sacrifie des PV pour\\nbeaucoup augmenter son\\nAtt., son Att. Spé.\\net sa Vitesse.",
    },

    [MOVE_KOWTOW_CLEAVE] = {
        .names = {
            .name = "Génusection",
            .capsName = "GÉNUSECTION",
            .fullName = "Génusection",
        },
        .data = {
            .effect = MOVE_EFFECT_BYPASS_ACCURACY,
            .split = SPLIT_PHYSICAL,
            .power = 85,
            .type = TYPE_DARK,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se prosterne devant la\\ncible et profite de\\ncette distraction pour\\nl’attaquer avec une\\nlame. N’échoue jamais.",
    },

    [MOVE_FLOWER_TRICK] = {
        .names = {
            .name = "Magie Florale",
            .capsName = "MAGIE FLORALE",
            .fullName = "Magie Florale",
        },
        .data = {
            .effect = MOVE_EFFECT_ALWAYS_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_GRASS,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en jetant un\\nbouquet de fleurs\\npiégé. N’échoue jamais\\net inflige toujours\\nun coup critique.",
    },

    [MOVE_TORCH_SONG] = {
        .names = {
            .name = "ChantFlamboyant",
            .capsName = "CHANTFLAMBOYANT",
            .fullName = "Chant Flamboyant",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SP_ATK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Carbonise en projetant\\nde vives flammes créé-\\nes par un chant. Cette\\ncapacité augmente\\nl’Attaque Spéciale.",
    },

    [MOVE_AQUA_STEP] = {
        .names = {
            .name = "Danse Aquatique",
            .capsName = "DANSE AQUATIQUE",
            .fullName = "Danse Aquatique",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se joue de la cible et\\nlui inflige des dégâts\\navec ses pas de danse\\ngracieux et légers.\\nAugmente la Vitesse.",
    },

    [MOVE_RAGING_BULL] = {
        .names = {
            .name = "Taurogne",
            .capsName = "TAUROGNE",
            .fullName = "Taurogne",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_SCREENS,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Charge comme un tau-\\nreau enragé. Le type\\ndépend du lanceur.\\nBrise les barrières\\ncomme Mur Lumière.",
    },

    [MOVE_MAKE_IT_RAIN] = {
        .names = {
            .name = "Ruée d’Or",
            .capsName = "RUÉE D’OR",
            .fullName = "Ruée d’Or",
        },
        .data = {
            .effect = MOVE_EFFECT_MAKE_IT_RAIN,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_STEEL,
            .accuracy = ((CHAMPIONS_ACC_CHANGES) ? (95) : (100)),
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en projetant\\ndes pièces. Baisse son\\nAtt. Spé. Permet d’ob-\\ntenir de l’argent si\\nl’attaque réussie.",
    },

    [MOVE_PSYBLADE] = {
        .names = {
            .name = "Lame Psychique",
            .capsName = "LAME PSYCHIQUE",
            .fullName = "Lame Psychique",
        },
        .data = {
            .effect = MOVE_EFFECT_PSYBLADE,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Lacère à l’aide d’une\\nlame intangible. Dans\\nun champ électrifié,\\nla puissance augmente\\nde 50 %.",
    },

    [MOVE_HYDRO_STEAM] = {
        .names = {
            .name = "Hydrovapeur",
            .capsName = "HYDROVAPEUR",
            .fullName = "Hydrovapeur",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Asperge avec un puiss-\\nant jet d’eau bouill-\\nante. Quand le soleil\\nbrille, la puissance\\naugmente de 50 %.",
    },

    [MOVE_RUINATION] = {
        .names = {
            .name = "Cataclysme",
            .capsName = "CATACLYSME",
            .fullName = "Cataclysme",
        },
        .data = {
            .effect = MOVE_EFFECT_HALVE_HP,
            .split = SPLIT_SPECIAL,
            .power = 1,
            .type = TYPE_DARK,
            .accuracy = 90,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Le lanceur déclenche\\nun cataclysme qui\\nbaisse les PV de la\\ncible de moitié.",
    },

    [MOVE_COLLISION_COURSE] = {
        .names = {
            .name = "Nitro Crash",
            .capsName = "NITRO CRASH",
            .fullName = "Nitro Crash",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Change de forme et\\ns’écrase dans une ex-\\nplosion antique. Si\\nsuper efficace, la\\npuissance augmente.",
    },

    [MOVE_ELECTRO_DRIFT] = {
        .names = {
            .name = "Turbo Volt",
            .capsName = "TURBO VOLT",
            .fullName = "Turbo Volt",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Change de forme et\\nfonce en perforant\\nd’électricité futu-\\nriste. Si super effi-\\ncace, la puiss. aug.",
    },

    [MOVE_SHED_TAIL] = {
        .names = {
            .name = "Queulonage",
            .capsName = "QUEULONAGE",
            .fullName = "Queulonage",
        },
        .data = {
            .effect = MOVE_EFFECT_SHED_TAIL,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Crée un clone en sa-\\ncrifiant des PV, puis\\nrevient près de son\\nDresseur ou de sa Dre-\\nsseuse. Aug. sa Vit.",
    },

    [MOVE_CHILLY_RECEPTION] = {
        .names = {
            .name = "Neigeux de Mots",
            .capsName = "NEIGEUX DE MOTS",
            .fullName = "Neigeux de Mots",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait un si mauvais jeu\\nde mots qu’il jette un\\nfroid et échange sa\\nplace. La neige tombe\\npendant 5 tours.",
    },

    [MOVE_TIDY_UP] = {
        .names = {
            .name = "Grand Nettoyage",
            .capsName = "GRAND NETTOYAGE",
            .fullName = "Grand Nettoyage",
        },
        .data = {
            .effect = MOVE_EFFECT_TIDY_UP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_NORMAL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait le ménage sur le\\nterrain, ce qui annule\\ncertains effets comme\\nPicots. Augmente\\nl’Att. et la Vit.",
    },

    [MOVE_SNOWSCAPE] = {
        .names = {
            .name = "Chute de Neige",
            .capsName = "CHUTE DE NEIGE",
            .fullName = "Chute de Neige",
        },
        .data = {
            .effect = MOVE_EFFECT_WEATHER_SNOW,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_ICE,
            .accuracy = 0,
            .pp = ((CHAMPIONS_PP_CHANGES) ? (5) : (10)),
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_FIELD,
            .priority = 0,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Invoque une tempête de\\nneige qui dure 5 tours\\nce qui augmente la\\nDéf. des Pokémon de\\ntype Glace.",
    },

    [MOVE_POUNCE] = {
        .names = {
            .name = "Bond",
            .capsName = "BOND",
            .fullName = "Bond",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_BUG,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en bondissant\\nsur la cible, ce qui\\nbaisse la Vitesse de\\ncelle-ci.",
    },

    [MOVE_TRAILBLAZE] = {
        .names = {
            .name = "Désherbaffe",
            .capsName = "DÉSHERBAFFE",
            .fullName = "Désherbaffe",
        },
        .data = {
            .effect = MOVE_EFFECT_RAISE_SPEED_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec agilité,\\ncomme s’il surgissait\\ndes hautes herbes. La\\nvitesse augmente.",
    },

    [MOVE_CHILLING_WATER] = {
        .names = {
            .name = "Douche Froide",
            .capsName = "DOUCHE FROIDE",
            .fullName = "Douche Froide",
        },
        .data = {
            .effect = MOVE_EFFECT_LOWER_ATTACK_HIT,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en arrosant\\nd’une eau si froide\\nque l’esprit combatif\\nse détériore et l’Att-\\naque de la cible.",
    },

    [MOVE_HYPER_DRILL] = {
        .names = {
            .name = "Hyperceuse",
            .capsName = "HYPERCEUSE",
            .fullName = "Hyperceuse",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (120) : (100)),
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fait tourner à toute\\nvitesse la partie\\npointue du corps pour\\ntranspercer. Ignore\\nAbri ou Détection.",
    },

    [MOVE_TWIN_BEAM] = {
        .names = {
            .name = "Double Laser",
            .capsName = "DOUBLE LASER",
            .fullName = "Double Laser",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_SPECIAL,
            .power = 40,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette d’étranges\\nrayons lumineux avec\\nses yeux et inflige\\ndes dégâts deux\\nfois d’affilée.",
    },

    [MOVE_RAGE_FIST] = {
        .names = {
            .name = "Poing de Colère",
            .capsName = "POING DE COLÈRE",
            .fullName = "Poing de Colère",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_GHOST,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Transforme sa colère\\nen énergie. Plus il a\\nsubi d’attaques, plus\\nla puissance augmente.",
    },

    [MOVE_ARMOR_CANNON] = {
        .names = {
            .name = "Canon Blindé",
            .capsName = "CANON BLINDÉ",
            .fullName = "Canon Blindé",
        },
        .data = {
            .effect = MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Tire un boulet de ca-\\nnon ardent provenant\\nde sa propre armure.\\nBaisse la Déf. et la\\nDéf. Spé. du lanceur.",
    },

    [MOVE_BITTER_BLADE] = {
        .names = {
            .name = "Lame en Peine",
            .capsName = "LAME EN PEINE",
            .fullName = "Lame en Peine",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT,
            .split = SPLIT_PHYSICAL,
            .power = 90,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Concentre son amertume\\ndu monde des vivants\\ndans la pointe de ses\\népées. Convertit une\\npartie des dég. en PV.",
    },

    [MOVE_DOUBLE_SHOCK] = {
        .names = {
            .name = "Double Décharge",
            .capsName = "DOUBLE DÉCHARGE",
            .fullName = "Double Décharge",
        },
        .data = {
            .effect = MOVE_EFFECT_REMOVE_USER_ELECTRIC_TYPE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 120,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Libère toute l’élec-\\ntricité contenue dans\\nson corps pour infli-\\nger des dégâts élevés.\\nPerd le type Électrik.",
    },

    [MOVE_GIGATON_HAMMER] = {
        .names = {
            .name = "Marteau Mastoc",
            .capsName = "MARTEAU MASTOC",
            .fullName = "Marteau Mastoc",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 160,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Met tout son corps à\\ncontribution pour att-\\naquer avec un immense\\nmarteau. Indisponible\\naprès utilisation.",
    },

    [MOVE_COMEUPPANCE] = {
        .names = {
            .name = "Vindicte",
            .capsName = "VINDICTE",
            .fullName = "Vindicte",
        },
        .data = {
            .effect = MOVE_EFFECT_METAL_BURST,
            .split = SPLIT_PHYSICAL,
            .power = 1,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET_SPECIAL,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Contre-attaque avec un\\ncoup infligeant des\\ndégâts supérieurs à\\nceux de la dernière\\ncapa. qui l’a blessé.",
    },

    [MOVE_AQUA_CUTTER] = {
        .names = {
            .name = "Tranch’Aqua",
            .capsName = "TRANCH’AQUA",
            .fullName = "Tranch’Aqua",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_PHYSICAL,
            .power = 70,
            .type = TYPE_WATER,
            .accuracy = 100,
            .pp = 20,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Projette de l’eau\\npressurisée qui entai-\\nlle la cible comme une\\nlame. Taux de crit-\\niques élevé.",
    },

    [MOVE_BLAZING_TORQUE] = {
        .names = {
            .name = "Crash Brûlant",
            .capsName = "CRASH BRÛLANT",
            .fullName = "Crash Brûlant",
        },
        .data = {
            .effect = MOVE_EFFECT_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible avec\\nune énergie fulgur-\\nante. Peut brûler\\nla cible.",
    },

    [MOVE_WICKED_TORQUE] = {
        .names = {
            .name = "Crash Obscur",
            .capsName = "CRASH OBSCUR",
            .fullName = "Crash Obscur",
        },
        .data = {
            .effect = MOVE_EFFECT_SLEEP_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 80,
            .type = TYPE_DARK,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 10,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fonce sur la cible\\navec une intention\\nmalveillante. Peut\\nendormir la cible.",
    },

    [MOVE_NOXIOUS_TORQUE] = {
        .names = {
            .name = "Crash Toxique",
            .capsName = "CRASH TOXIQUE",
            .fullName = "Crash Toxique",
        },
        .data = {
            .effect = MOVE_EFFECT_POISON_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible avec\\nune extrémité empoi-\\nsonnée. Peut empoi-\\nsonner la cible.",
    },

    [MOVE_COMBAT_TORQUE] = {
        .names = {
            .name = "Crash Musclé",
            .capsName = "CRASH MUSCLÉ",
            .fullName = "Crash Musclé",
        },
        .data = {
            .effect = MOVE_EFFECT_PARALYZE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible avec\\nune force considé-\\rable. Peut paralyser\\nla cible.",
    },

    [MOVE_MAGICAL_TORQUE] = {
        .names = {
            .name = "Crash Magique",
            .capsName = "CRASH MAGIQUE",
            .fullName = "Crash Magique",
        },
        .data = {
            .effect = MOVE_EFFECT_CONFUSE_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 30,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Percute la cible avec\\nune force surhumaine.\\nPeut rendre la\\ncible confuse.",
    },

    [MOVE_BLOOD_MOON] = {
        .names = {
            .name = "Lune Rouge",
            .capsName = "LUNE ROUGE",
            .fullName = "Lune Rouge",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = ((CHAMPIONS_POWER_CHANGES) ? (140) : (130)),
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Concentre toute son\\nénergie dans la lune\\nrouge sang sur son\\nfront et la projette.\\nIndispo. au tour suiv.",
    },

    [MOVE_MATCHA_GOTCHA] = {
        .names = {
            .name = "Mortier Matcha",
            .capsName = "MORTIER MATCHA",
            .fullName = "Mortier Matcha",
        },
        .data = {
            .effect = MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT_BURN_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_GRASS,
            .accuracy = 90,
            .pp = 15,
            .effectChance = 20,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Remue son thé et bom-\\nbarde la cible. La\\nmoitié des dégâts sont\\nconvertis en PV. Peut\\naussi brûler.",
    },

    [MOVE_SYRUP_BOMB] = {
        .names = {
            .name = "Bombe au Sirop",
            .capsName = "BOMBE DE SIROP",
            .fullName = "Bombe au Sirop",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 60,
            .type = TYPE_GRASS,
            .accuracy = ((CHAMPIONS_ACC_CHANGES) ? (90) : (85)),
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Jette une bombe qui\\nrecouvre la cible de\\nsirop gluant et fait\\nprogres. baisser la\\nVit. pendant 3 tours.",
    },

    [MOVE_IVY_CUDGEL] = {
        .names = {
            .name = "Massue Liane",
            .capsName = "MASSUE LIANE",
            .fullName = "Massue Liane",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Fappe à l’aide d’une\\nmassue entourée d’une\\nliane. Le type varie\\nselon le masque. Taux\\nde critiques élevé.",
    },

    [MOVE_ELECTRO_SHOT] = {
        .names = {
            .name = "Fulgurayon",
            .capsName = "FULGURAYON",
            .fullName = "Fulgurayon",
        },
        .data = {
            .effect = MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS,
            .split = SPLIT_SPECIAL,
            .power = 130,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Absorbe de l’électri-\\ncité au 1er tour, qui\\naug. son Att. Spé., et\\nenvoie une puissante\\ndécharge au second.",
    },

    [MOVE_TERA_STARSTORM] = {
        .names = {
            .name = "PluieTérastrale",
            .capsName = "PLUIETÉRASTRALE",
            .fullName = "Pluie Térastrale",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 120,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ADJACENT_OPPONENTS,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Bombarde grâce au pou-\\nvoir des cristaux. Si\\nTerapagos est sous sa\\nForme Stellaire, tou-\\nche tous les ennemis.",
    },

    [MOVE_FICKLE_BEAM] = {
        .names = {
            .name = "Laser Hasard",
            .capsName = "LASER HASARD",
            .fullName = "Laser Hasard",
        },
        .data = {
            .effect = MOVE_EFFECT_FICKLE_BEAM,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_DRAGON,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 100,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque en tirant un\\nrayon lumineux. Par-\\nfois toutes les têtes\\nagissent ensemble, ce\\nqui double la puiss.",
    },

    [MOVE_BURNING_BULWARK] = {
        .names = {
            .name = "Rempart Brûlant",
            .capsName = "REMPART BRÛLANT",
            .fullName = "Rempart Brûlant",
        },
        .data = {
            .effect = MOVE_EFFECT_PROTECT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_FIRE,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_USER,
            .priority = 4,
            .flags = 0x00,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se protège contre les\\nattaques grâce à son\\npelage incandescent.\\nSi une attaque le tou-\\nche, il le brûle.",
    },

    [MOVE_THUNDERCLAP] = {
        .names = {
            .name = "Vif Éclair",
            .capsName = "VIF ÉCLAIR",
            .fullName = "Vif Éclair",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
            .split = SPLIT_SPECIAL,
            .power = 70,
            .type = TYPE_ELECTRIC,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 1,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque la cible en\\npriorité avec une dé-\\ncharge électrique.\\nÉchoue si la cible ne\\nprépare pas d’attaque.",
    },

    [MOVE_MIGHTY_CLEAVE] = {
        .names = {
            .name = "Lame Puissante",
            .capsName = "LAME PUISSANTE",
            .fullName = "Lame Puissante",
        },
        .data = {
            .effect = MOVE_EFFECT_IGNORE_PROTECT,
            .split = SPLIT_PHYSICAL,
            .power = 95,
            .type = TYPE_ROCK,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Pourfend la cible avec\\nla lumière accumulée\\nsur sa tête. Cette\\nattaque passe outre\\nles protections.",
    },

    [MOVE_TACHYON_CUTTER] = {
        .names = {
            .name = "LameTachyonique",
            .capsName = "LAMETACHYONIQUE",
            .fullName = "Lame Tachyonique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT_TWICE,
            .split = SPLIT_SPECIAL,
            .power = 50,
            .type = TYPE_STEEL,
            .accuracy = 0,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Concentre des particu-\\nles élémentaires pour\\ncréer une lame qui in-\\nflige des dégâts deux\\nfois. N’échoue jamais.",
    },

    [MOVE_HARD_PRESS] = {
        .names = {
            .name = "PressionExtrême",
            .capsName = "PRESSIONEXTRÊME",
            .fullName = "Pression Extrême",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 0,
            .type = TYPE_STEEL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Écrase la cible avec\\nses bras ou ses pin-\\nces. Plus il reste de\\nPV à la cible, plus la\\npuissance augmente.",
    },

    [MOVE_DRAGON_CHEER] = {
        .names = {
            .name = "Cri Draconique",
            .capsName = "CRI DRACONIQUE",
            .fullName = "Cri Draconique",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_DRAGON,
            .accuracy = 0,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_ALLY,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_MAGIC_COAT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Galvanise ses alliés\\navec un cri draconique\\nqui augmente le taux\\nde critiques. Effet\\nplus puiss. si Dragon.",
    },

    [MOVE_ALLURING_VOICE] = {
        .names = {
            .name = "Voix Envoûtante",
            .capsName = "VOIX ENVOÛTANTE",
            .fullName = "Voix Envoûtante",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 80,
            .type = TYPE_FAIRY,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec sa voix\\nangélique. Rend la ci-\\nble confuse si ses\\nstats ont augmenté\\npendant ce tour.",
    },

    [MOVE_TEMPER_FLARE] = {
        .names = {
            .name = "Indignition",
            .capsName = "INDIGNATION",
            .fullName = "Indignition",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 75,
            .type = TYPE_FIRE,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Utilise la force de\\nson dépit pour atta-\\nquer. La puissance est\\ndoublée si son attaque\\nprécédente a échoué.",
    },

    [MOVE_SUPERCELL_SLAM] = {
        .names = {
            .name = "Volt Assaut",
            .capsName = "VOLT ASSAUT",
            .fullName = "Volt Assaut",
        },
        .data = {
            .effect = MOVE_EFFECT_CRASH_ON_MISS,
            .split = SPLIT_PHYSICAL,
            .power = 100,
            .type = TYPE_ELECTRIC,
            .accuracy = 95,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Se charge en électri-\\ncité et fond sur la\\ncible. S’il échoue, le\\nlanceur se blesse.",
    },

    [MOVE_PSYCHIC_NOISE] = {
        .names = {
            .name = "Dissonance Psy",
            .capsName = "DISSONANCE PSY",
            .fullName = "Dissonance Psy",
        },
        .data = {
            .effect = MOVE_EFFECT_PREVENT_HEALING_HIT,
            .split = SPLIT_SPECIAL,
            .power = 75,
            .type = TYPE_PSYCHIC,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Attaque avec des ondes\\nsonores dissonantes.\\nCela empêche la cible\\nde récupérer des PV\\npendant deux tours.",
    },

    [MOVE_UPPER_HAND] = {
        .names = {
            .name = "Prio-Parade",
            .capsName = "PRIO-PARADE",
            .fullName = "Prio-Parade",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 65,
            .type = TYPE_FIGHTING,
            .accuracy = 100,
            .pp = 15,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 3,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT | FLAG_CONTACT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Réagit au moindre mou-\\nvement & donne un coup\\nde paume qui apeure la\\ncible. Échoue si pas\\nd’attaque prioritaire.",
    },

    [MOVE_MALIGNANT_CHAIN] = {
        .names = {
            .name = "Chaîne Malsaine",
            .capsName = "CHAÎNE MALSAINE",
            .fullName = "Chaîne Malsaine",
        },
        .data = {
            .effect = MOVE_EFFECT_BADLY_POISON_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_POISON,
            .accuracy = 100,
            .pp = 5,
            .effectChance = 50,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_COOL,
        },
        .description = "Ligote avec une chaîne\\nfaite de poison et in-\\njecte un venin corro-\\nsif, ce qui peut gra-\\nvement l’empoisonner.",
    },

    [NUM_OF_MOVES] = {
        .names = {
            .name = "",
            .capsName = "",
            .fullName = "",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_SPECIAL,
            .power = 100,
            .type = TYPE_NORMAL,
            .accuracy = 100,
            .pp = 10,
            .effectChance = 0,
        },
        .battle = {
            .target = RANGE_SINGLE_TARGET,
            .priority = 0,
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = APPEAL_LOW_VOLTAGE_BOOST,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "",
    },
};
