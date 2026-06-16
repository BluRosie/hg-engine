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
            .name = "Pound",
            .capsName = "POUND",
            .fullName = "Pound",
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
        .description = "The foe is physically\\npounded with a long\\ntail or a foreleg,\\netc.\\n",
    },

    [MOVE_KARATE_CHOP] = {
        .names = {
            .name = "Karate Chop",
            .capsName = "KARATE CHOP",
            .fullName = "Karate Chop",
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
        .description = "The foe is attacked\\nwith a sharp chop.\\nIt has a high\\ncritical-hit ratio.\\n",
    },

    [MOVE_DOUBLE_SLAP] = {
        .names = {
            .name = "Double Slap",
            .capsName = "DOUBLE SLAP",
            .fullName = "Double Slap",
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
        .description = "The foe is slapped\\nrepeatedly, back\\nand forth, two to\\nfive times in a row.\\n",
    },

    [MOVE_COMET_PUNCH] = {
        .names = {
            .name = "Comet Punch",
            .capsName = "COMET PUNCH",
            .fullName = "Comet Punch",
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
        .description = "The foe is hit with\\na flurry of punches\\nthat strike two to\\nfive times in a row.\\n",
    },

    [MOVE_MEGA_PUNCH] = {
        .names = {
            .name = "Mega Punch",
            .capsName = "MEGA PUNCH",
            .fullName = "Mega Punch",
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
        .description = "The foe is slugged\\nby a punch thrown\\nwith muscle-packed\\npower.\\n",
    },

    [MOVE_PAY_DAY] = {
        .names = {
            .name = "Pay Day",
            .capsName = "PAY DAY",
            .fullName = "Pay Day",
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
        .description = "Numerous coins are\\nhurled at the foe to\\ninflict damage.\\nMoney is earned\\nafter battle.",
    },

    [MOVE_FIRE_PUNCH] = {
        .names = {
            .name = "Fire Punch",
            .capsName = "FIRE PUNCH",
            .fullName = "Fire Punch",
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
        .description = "The foe is punched\\nwith a fiery fist.\\nIt may leave the\\ntarget with a burn.\\n",
    },

    [MOVE_ICE_PUNCH] = {
        .names = {
            .name = "Ice Punch",
            .capsName = "ICE PUNCH",
            .fullName = "Ice Punch",
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
        .description = "The foe is punched\\nwith an icy fist.\\nIt may leave the\\ntarget frozen.\\n",
    },

    [MOVE_THUNDER_PUNCH] = {
        .names = {
            .name = "Thunder Punch",
            .capsName = "THUNDER PUNCH",
            .fullName = "Thunder Punch",
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
        .description = "The foe is punched\\nwith an electrified\\nfist. It may leave\\nthe target with\\nparalysis.",
    },

    [MOVE_SCRATCH] = {
        .names = {
            .name = "Scratch",
            .capsName = "SCRATCH",
            .fullName = "Scratch",
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
        .description = "Hard, pointed, and\\nsharp claws rake the\\nfoe to inflict damage.\\n\\n",
    },

    [MOVE_VICE_GRIP] = {
        .names = {
            .name = "Vise Grip",
            .capsName = "VISE GRIP",
            .fullName = "Vise Grip",
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
        .description = "Huge, impressive\\npincers grip and\\nsqueeze the foe.\\n\\n",
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
        .description = "A vicious, tearing\\nattack with pincers.\\nThe foe will faint\\ninstantly if this\\nattack hits.",
    },

    [MOVE_RAZOR_WIND] = {
        .names = {
            .name = "Razor Wind",
            .capsName = "RAZOR WIND",
            .fullName = "Razor Wind",
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
        .description = "A two-turn attack.\\nBlades of wind hit the\\nfoe on the second\\nturn. It has a high\\ncritical-hit ratio.",
    },

    [MOVE_SWORDS_DANCE] = {
        .names = {
            .name = "Swords Dance",
            .capsName = "SWORDS DANCE",
            .fullName = "Swords Dance",
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
        .description = "A frenetic dance to\\nuplift the fighting\\nspirit. It sharply\\nraises the user’s\\nAttack stat.",
    },

    [MOVE_CUT] = {
        .names = {
            .name = "Cut",
            .capsName = "CUT",
            .fullName = "Cut",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 50,
            .type = TYPE_NORMAL,
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
        .description = "The foe is cut with a\\nscythe or a claw.\\nIt can also be used\\nto cut down thin\\ntrees.",
    },

    [MOVE_GUST] = {
        .names = {
            .name = "Gust",
            .capsName = "GUST",
            .fullName = "Gust",
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
        .description = "A gust of wind is\\nwhipped up by wings\\nand launched at the\\nfoe to inflict damage.\\n",
    },

    [MOVE_WING_ATTACK] = {
        .names = {
            .name = "Wing Attack",
            .capsName = "WING ATTACK",
            .fullName = "Wing Attack",
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
        .description = "The foe is struck\\nwith large, imposing\\nwings spread wide\\nto inflict damage.\\n",
    },

    [MOVE_WHIRLWIND] = {
        .names = {
            .name = "Whirlwind",
            .capsName = "WHIRLWIND",
            .fullName = "Whirlwind",
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
        .description = "The foe is blown away,\\nto be replaced by\\nanother Pokémon\\nin its party. In the\\nwild, the battle ends.",
    },

    [MOVE_FLY] = {
        .names = {
            .name = "Fly",
            .capsName = "FLY",
            .fullName = "Fly",
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
        .description = "The user soars, then\\nstrikes on the second\\nturn. It can also be\\nused for flying to\\nany familiar town.",
    },

    [MOVE_BIND] = {
        .names = {
            .name = "Bind",
            .capsName = "BIND",
            .fullName = "Bind",
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
        .description = "A long body or\\ntentacles are used\\nto bind and squeeze\\nthe foe for two to\\nfive turns.",
    },

    [MOVE_SLAM] = {
        .names = {
            .name = "Slam",
            .capsName = "SLAM",
            .fullName = "Slam",
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
        .description = "The foe is slammed\\nwith a long tail,\\nvines, etc., to inflict\\ndamage.\\n",
    },

    [MOVE_VINE_WHIP] = {
        .names = {
            .name = "Vine Whip",
            .capsName = "VINE WHIP",
            .fullName = "Vine Whip",
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
        .description = "The foe is struck\\nwith slender, whiplike\\nvines to inflict\\ndamage.\\n",
    },

    [MOVE_STOMP] = {
        .names = {
            .name = "Stomp",
            .capsName = "STOMP",
            .fullName = "Stomp",
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
        .description = "The foe is stomped\\nwith a big foot.\\nIt may also make the\\ntarget flinch.\\n",
    },

    [MOVE_DOUBLE_KICK] = {
        .names = {
            .name = "Double Kick",
            .capsName = "DOUBLE KICK",
            .fullName = "Double Kick",
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
        .description = "The foe is quickly\\nkicked twice in\\nsuccession using both\\nfeet.\\n",
    },

    [MOVE_MEGA_KICK] = {
        .names = {
            .name = "Mega Kick",
            .capsName = "MEGA KICK",
            .fullName = "Mega Kick",
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
        .description = "The foe is attacked\\nby a kick launched\\nwith muscle-packed\\npower.\\n",
    },

    [MOVE_JUMP_KICK] = {
        .names = {
            .name = "Jump Kick",
            .capsName = "JUMP KICK",
            .fullName = "Jump Kick",
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
        .description = "The user jumps up\\nhigh, then strikes\\nwith a kick. If the\\nkick misses, the\\nuser hurts itself.",
    },

    [MOVE_ROLLING_KICK] = {
        .names = {
            .name = "Rolling Kick",
            .capsName = "ROLLING KICK",
            .fullName = "Rolling Kick",
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
        .description = "The user lashes \\nout with a quick,\\nspinning kick. It\\nmay also make the\\ntarget flinch.",
    },

    [MOVE_SAND_ATTACK] = {
        .names = {
            .name = "Sand Attack",
            .capsName = "SAND ATTACK",
            .fullName = "Sand Attack",
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
        .description = "Sand is hurled in the\\nfoe’s face, reducing\\nits accuracy.\\n\\n",
    },

    [MOVE_HEADBUTT] = {
        .names = {
            .name = "Headbutt",
            .capsName = "HEADBUTT",
            .fullName = "Headbutt",
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
        .description = "The user attacks with\\nits head. It may make\\nthe foe flinch. To find\\nPokémon, hit trees.",
    },

    [MOVE_HORN_ATTACK] = {
        .names = {
            .name = "Horn Attack",
            .capsName = "HORN ATTACK",
            .fullName = "Horn Attack",
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
        .description = "The foe is jabbed\\nwith a sharply\\npointed horn to\\ninflict damage.\\n",
    },

    [MOVE_FURY_ATTACK] = {
        .names = {
            .name = "Fury Attack",
            .capsName = "FURY ATTACK",
            .fullName = "Fury Attack",
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
        .description = "The foe is jabbed\\nrepeatedly with a\\nhorn or beak two to\\nfive times in a row.\\n",
    },

    [MOVE_HORN_DRILL] = {
        .names = {
            .name = "Horn Drill",
            .capsName = "HORN DRILL",
            .fullName = "Horn Drill",
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
        .description = "The foe is stabbed\\nwith a horn rotating\\nlike a drill.\\nThe foe instantly\\nfaints if it hits.",
    },

    [MOVE_TACKLE] = {
        .names = {
            .name = "Tackle",
            .capsName = "TACKLE",
            .fullName = "Tackle",
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
        .description = "A physical attack\\nin which the user\\ncharges and slams\\ninto the foe with\\nits whole body.",
    },

    [MOVE_BODY_SLAM] = {
        .names = {
            .name = "Body Slam",
            .capsName = "BODY SLAM",
            .fullName = "Body Slam",
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
        .description = "The user drops onto\\nthe foe with its full\\nbody weight.\\nIt may leave the foe\\nparalyzed.",
    },

    [MOVE_WRAP] = {
        .names = {
            .name = "Wrap",
            .capsName = "WRAP",
            .fullName = "Wrap",
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
        .description = "A long body or vines\\nare used to wrap and\\nsqueeze the foe for\\ntwo to five turns.\\n",
    },

    [MOVE_TAKE_DOWN] = {
        .names = {
            .name = "Take Down",
            .capsName = "TAKE DOWN",
            .fullName = "Take Down",
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
        .description = "A reckless, full-body\\ncharge attack for\\nslamming into the foe.\\nIt also damages the\\nuser a little.",
    },

    [MOVE_THRASH] = {
        .names = {
            .name = "Thrash",
            .capsName = "THRASH",
            .fullName = "Thrash",
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
        .description = "The user rampages\\nand attacks for two\\nto three turns.\\nIt then becomes\\nconfused, however.",
    },

    [MOVE_DOUBLE_EDGE] = {
        .names = {
            .name = "Double-Edge",
            .capsName = "DOUBLE-EDGE",
            .fullName = "Double-Edge",
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
        .description = "A reckless, life-\\nrisking tackle.\\nIt also damages the\\nuser by a fairly large\\namount, however.",
    },

    [MOVE_TAIL_WHIP] = {
        .names = {
            .name = "Tail Whip",
            .capsName = "TAIL WHIP",
            .fullName = "Tail Whip",
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
        .description = "The user wags its tail\\ncutely, making the\\nfoe less wary.\\nThe target’s Defense\\nstat is lowered.",
    },

    [MOVE_POISON_STING] = {
        .names = {
            .name = "Poison Sting",
            .capsName = "POISON STING",
            .fullName = "Poison Sting",
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
        .description = "The foe is stabbed\\nwith a poisonous\\nbarb of some sort.\\nIt may also poison\\nthe target.",
    },

    [MOVE_TWINEEDLE] = {
        .names = {
            .name = "Twineedle",
            .capsName = "TWINEEDLE",
            .fullName = "Twineedle",
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
        .description = "The foe is stabbed\\ntwice by a pair of\\nstingers.\\nIt may also poison\\nthe target.",
    },

    [MOVE_PIN_MISSILE] = {
        .names = {
            .name = "Pin Missile",
            .capsName = "PIN MISSILE",
            .fullName = "Pin Missile",
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
        .description = "Sharp pins are shot\\nat the foe in rapid\\nsuccession.\\nThey hit two to five\\ntimes in a row.",
    },

    [MOVE_LEER] = {
        .names = {
            .name = "Leer",
            .capsName = "LEER",
            .fullName = "Leer",
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
        .description = "The foe is given an\\nintimidating leer with\\nsharp eyes.\\nThe target’s Defense\\nstat is reduced.",
    },

    [MOVE_BITE] = {
        .names = {
            .name = "Bite",
            .capsName = "BITE",
            .fullName = "Bite",
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
        .description = "The foe is bitten with\\nviciously sharp fangs.\\nIt may make the\\ntarget flinch.\\n",
    },

    [MOVE_GROWL] = {
        .names = {
            .name = "Growl",
            .capsName = "GROWL",
            .fullName = "Growl",
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
        .description = "The user growls in an\\nendearing way, making\\nthe foe less wary.\\nThe target’s Attack\\nstat is lowered.",
    },

    [MOVE_ROAR] = {
        .names = {
            .name = "Roar",
            .capsName = "ROAR",
            .fullName = "Roar",
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
        .description = "The foe is scared off,\\nto be replaced by\\nanother Pokémon in\\nits party. In the\\nwild, the battle ends.",
    },

    [MOVE_SING] = {
        .names = {
            .name = "Sing",
            .capsName = "SING",
            .fullName = "Sing",
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
        .description = "A soothing lullaby is\\nsung in a calming\\nvoice that puts the\\nfoe into a deep\\nslumber.",
    },

    [MOVE_SUPERSONIC] = {
        .names = {
            .name = "Supersonic",
            .capsName = "SUPERSONIC",
            .fullName = "Supersonic",
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
        .description = "The user generates\\nodd sound waves from\\nits body.\\nIt may confuse the\\ntarget.",
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
        .description = "The foe is hit with a\\ndestructive shock\\nwave that always\\ninflicts 20 HP damage.\\n",
    },

    [MOVE_DISABLE] = {
        .names = {
            .name = "Disable",
            .capsName = "DISABLE",
            .fullName = "Disable",
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
        .description = "For several turns,\\nthis move prevents\\nthe foe from using\\nthe move it last\\nused.",
    },

    [MOVE_ACID] = {
        .names = {
            .name = "Acid",
            .capsName = "ACID",
            .fullName = "Acid",
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
        .description = "The foe is attacked\\nwith a spray of harsh\\nacid. It may also\\nlower the target’s\\nSp. Def stat.",
    },

    [MOVE_EMBER] = {
        .names = {
            .name = "Ember",
            .capsName = "EMBER",
            .fullName = "Ember",
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
        .description = "The foe is attacked\\nwith small flames.\\nThe target may also\\nbe left with a burn.\\n",
    },

    [MOVE_FLAMETHROWER] = {
        .names = {
            .name = "Flamethrower",
            .capsName = "FLAMETHROWER",
            .fullName = "Flamethrower",
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
        .description = "The foe is scorched\\nwith an intense blast\\nof fire. The target\\nmay also be left with\\na burn.",
    },

    [MOVE_MIST] = {
        .names = {
            .name = "Mist",
            .capsName = "MIST",
            .fullName = "Mist",
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
        .description = "The user cloaks its\\nbody with a white mist\\nthat prevents any of\\nits stats from being\\ncut for five turns.",
    },

    [MOVE_WATER_GUN] = {
        .names = {
            .name = "Water Gun",
            .capsName = "WATER GUN",
            .fullName = "Water Gun",
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
        .description = "The foe is blasted\\nwith a forceful shot\\nof water.\\n\\n",
    },

    [MOVE_HYDRO_PUMP] = {
        .names = {
            .name = "Hydro Pump",
            .capsName = "HYDRO PUMP",
            .fullName = "Hydro Pump",
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
        .description = "The foe is blasted by\\na huge volume of\\nwater launched under\\ngreat pressure.\\n",
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
        .description = "It swamps the entire\\nbattlefield with a\\ngiant wave.\\nIt can also be used\\nfor crossing water.",
    },

    [MOVE_ICE_BEAM] = {
        .names = {
            .name = "Ice Beam",
            .capsName = "ICE BEAM",
            .fullName = "Ice Beam",
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
        .description = "The foe is struck\\nwith an icy-cold\\nbeam of energy.\\nIt may also freeze\\nthe target solid.",
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
        .description = "A howling blizzard is\\nsummoned to strike\\nthe foe.\\nIt may also freeze\\nthe target solid.",
    },

    [MOVE_PSYBEAM] = {
        .names = {
            .name = "Psybeam",
            .capsName = "PSYBEAM",
            .fullName = "Psybeam",
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
        .description = "The foe is attacked\\nwith a peculiar ray.\\nIt may also leave the\\ntarget confused.\\n",
    },

    [MOVE_BUBBLE_BEAM] = {
        .names = {
            .name = "Bubble Beam",
            .capsName = "BUBBLE BEAM",
            .fullName = "Bubble Beam",
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
        .description = "A spray of bubbles is\\nforcefully ejected\\nat the foe.\\nIt may also lower the\\ntarget’s Speed stat.",
    },

    [MOVE_AURORA_BEAM] = {
        .names = {
            .name = "Aurora Beam",
            .capsName = "AURORA BEAM",
            .fullName = "Aurora Beam",
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
        .description = "The foe is hit with a\\nrainbow-colored beam.\\nIt may also lower the\\ntarget’s Attack\\nstat.",
    },

    [MOVE_HYPER_BEAM] = {
        .names = {
            .name = "Hyper Beam",
            .capsName = "HYPER BEAM",
            .fullName = "Hyper Beam",
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
        .description = "The foe is attacked\\nwith a powerful beam.\\nThe user must rest\\non the next turn to\\nregain its energy.",
    },

    [MOVE_PECK] = {
        .names = {
            .name = "Peck",
            .capsName = "PECK",
            .fullName = "Peck",
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
        .description = "The foe is jabbed\\nwith a sharply\\npointed beak or\\nhorn.\\n",
    },

    [MOVE_DRILL_PECK] = {
        .names = {
            .name = "Drill Peck",
            .capsName = "DRILL PECK",
            .fullName = "Drill Peck",
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
        .description = "A corkscrewing\\nattack with the\\nsharp beak acting\\nas a drill.\\n",
    },

    [MOVE_SUBMISSION] = {
        .names = {
            .name = "Submission",
            .capsName = "SUBMISSION",
            .fullName = "Submission",
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
        .description = "The user grabs the\\nfoe and recklessly\\ndives for the ground.\\nIt also hurts the\\nuser slightly.",
    },

    [MOVE_LOW_KICK] = {
        .names = {
            .name = "Low Kick",
            .capsName = "LOW KICK",
            .fullName = "Low Kick",
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
        .description = "A powerful low kick\\nthat makes the foe\\nfall over. It inflicts\\ngreater damage on\\nheavier foes.",
    },

    [MOVE_COUNTER] = {
        .names = {
            .name = "Counter",
            .capsName = "COUNTER",
            .fullName = "Counter",
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
        .description = "A retaliation move\\nthat counters any\\nphysical attack,\\ninflicting double the\\ndamage taken.",
    },

    [MOVE_SEISMIC_TOSS] = {
        .names = {
            .name = "Seismic Toss",
            .capsName = "SEISMIC TOSS",
            .fullName = "Seismic Toss",
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
        .description = "The foe is thrown\\nusing the power of\\ngravity. It inflicts\\ndamage equal to\\nthe user’s level.",
    },

    [MOVE_STRENGTH] = {
        .names = {
            .name = "Strength",
            .capsName = "STRENGTH",
            .fullName = "Strength",
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
        .description = "The foe is slugged\\nwith a punch thrown\\nat maximum power.\\nIt can also be used\\nto move boulders.",
    },

    [MOVE_ABSORB] = {
        .names = {
            .name = "Absorb",
            .capsName = "ABSORB",
            .fullName = "Absorb",
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
        .description = "A nutrient-draining\\nattack. The user’s\\nHP is restored by\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_MEGA_DRAIN] = {
        .names = {
            .name = "Mega Drain",
            .capsName = "MEGA DRAIN",
            .fullName = "Mega Drain",
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
        .description = "A nutrient-draining\\nattack. The user’s\\nHP is restored by\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_LEECH_SEED] = {
        .names = {
            .name = "Leech Seed",
            .capsName = "LEECH SEED",
            .fullName = "Leech Seed",
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
        .description = "A seed is planted on\\nthe foe. It steals\\nsome HP from the foe\\nto heal the user on\\nevery turn.",
    },

    [MOVE_GROWTH] = {
        .names = {
            .name = "Growth",
            .capsName = "GROWTH",
            .fullName = "Growth",
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
        .description = "The user’s body is\\nforced to grow all at\\nonce. It raises the\\nSp. Atk stat.\\n",
    },

    [MOVE_RAZOR_LEAF] = {
        .names = {
            .name = "Razor Leaf",
            .capsName = "RAZOR LEAF",
            .fullName = "Razor Leaf",
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
        .description = "Sharp-edged leaves\\nare launched to slash\\nat the foe. It has a\\nhigh critical-hit\\nratio.",
    },

    [MOVE_SOLAR_BEAM] = {
        .names = {
            .name = "Solar Beam",
            .capsName = "SOLAR BEAM",
            .fullName = "Solar Beam",
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
        .description = "A two-turn attack.\\nThe user gathers\\nlight, then blasts a\\nbundled beam on the\\nsecond turn.",
    },

    [MOVE_POISON_POWDER] = {
        .names = {
            .name = "Poison Powder",
            .capsName = "POISON POWDER",
            .fullName = "Poison Powder",
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
        .description = "A cloud of poisonous\\ndust is scattered on\\nthe foe.\\nIt may poison the\\ntarget.",
    },

    [MOVE_STUN_SPORE] = {
        .names = {
            .name = "Stun Spore",
            .capsName = "STUN SPORE",
            .fullName = "Stun Spore",
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
        .description = "The user scatters a\\ncloud of paralyzing\\npowder.\\nIt may paralyze the\\ntarget.",
    },

    [MOVE_SLEEP_POWDER] = {
        .names = {
            .name = "Sleep Powder",
            .capsName = "SLEEP POWDER",
            .fullName = "Sleep Powder",
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
        .description = "The user scatters a\\nbig cloud of sleep-\\ninducing dust around\\nthe foe.\\n",
    },

    [MOVE_PETAL_DANCE] = {
        .names = {
            .name = "Petal Dance",
            .capsName = "PETAL DANCE",
            .fullName = "Petal Dance",
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
        .description = "The user attacks by\\nscattering petals for\\ntwo to three turns.\\nThe user then\\nbecomes confused.",
    },

    [MOVE_STRING_SHOT] = {
        .names = {
            .name = "String Shot",
            .capsName = "STRING SHOT",
            .fullName = "String Shot",
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
        .description = "The foe is bound with\\nsilk blown from the\\nuser’s mouth.\\nIt reduces the\\ntarget’s Speed stat.",
    },

    [MOVE_DRAGON_RAGE] = {
        .names = {
            .name = "Dragon Rage",
            .capsName = "DRAGON RAGE",
            .fullName = "Dragon Rage",
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
        .description = "The foe is stricken\\nby a shock wave.\\nThis attack always\\ninflicts 40 HP\\ndamage.",
    },

    [MOVE_FIRE_SPIN] = {
        .names = {
            .name = "Fire Spin",
            .capsName = "FIRE SPIN",
            .fullName = "Fire Spin",
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
        .description = "The foe becomes\\ntrapped within a\\nfierce vortex of fire\\nthat rages for two\\nto five turns.",
    },

    [MOVE_THUNDER_SHOCK] = {
        .names = {
            .name = "Thunder Shock",
            .capsName = "THUNDER SHOCK",
            .fullName = "Thunder Shock",
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
        .description = "A jolt of electricity\\nis hurled at the foe\\nto inflict damage.\\nIt may also leave the\\nfoe paralyzed.",
    },

    [MOVE_THUNDERBOLT] = {
        .names = {
            .name = "Thunderbolt",
            .capsName = "THUNDERBOLT",
            .fullName = "Thunderbolt",
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
        .description = "A strong electric\\nblast is loosed at\\nthe foe.\\nIt may also leave the\\nfoe paralyzed.",
    },

    [MOVE_THUNDER_WAVE] = {
        .names = {
            .name = "Thunder Wave",
            .capsName = "THUNDER WAVE",
            .fullName = "Thunder Wave",
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
        .description = "A weak electric\\ncharge is launched at\\nthe foe.\\nIt causes paralysis if\\nit hits.",
    },

    [MOVE_THUNDER] = {
        .names = {
            .name = "Thunder",
            .capsName = "THUNDER",
            .fullName = "Thunder",
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
        .description = "A wicked thunderbolt\\nis dropped on the foe\\nto inflict damage.\\nIt may also leave the\\ntarget paralyzed.",
    },

    [MOVE_ROCK_THROW] = {
        .names = {
            .name = "Rock Throw",
            .capsName = "ROCK THROW",
            .fullName = "Rock Throw",
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
        .description = "The user picks up\\nand throws a small\\nrock at the foe to\\nattack.\\n",
    },

    [MOVE_EARTHQUAKE] = {
        .names = {
            .name = "Earthquake",
            .capsName = "EARTHQUAKE",
            .fullName = "Earthquake",
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
        .description = "The user sets off an\\nearthquake that hits\\nall the Pokémon in\\nthe battle.\\n",
    },

    [MOVE_FISSURE] = {
        .names = {
            .name = "Fissure",
            .capsName = "FISSURE",
            .fullName = "Fissure",
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
        .description = "The user opens up a\\nfissure in the ground\\nand drops the foe in.\\nThe target instantly\\nfaints if it hits.",
    },

    [MOVE_DIG] = {
        .names = {
            .name = "Dig",
            .capsName = "DIG",
            .fullName = "Dig",
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
        .description = "The user burrows,\\nthen attacks on the\\nsecond turn.\\nIt can also be used\\nto exit dungeons.",
    },

    [MOVE_TOXIC] = {
        .names = {
            .name = "Toxic",
            .capsName = "TOXIC",
            .fullName = "Toxic",
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
        .description = "A move that leaves\\nthe target badly\\npoisoned.\\nIts poison damage\\nworsens every turn.",
    },

    [MOVE_CONFUSION] = {
        .names = {
            .name = "Confusion",
            .capsName = "CONFUSION",
            .fullName = "Confusion",
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
        .description = "The foe is hit by a\\nweak telekinetic\\nforce. It may also\\nleave the foe\\nconfused.",
    },

    [MOVE_PSYCHIC] = {
        .names = {
            .name = "Psychic",
            .capsName = "PSYCHIC",
            .fullName = "Psychic",
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
        .description = "The foe is hit by a\\nstrong telekinetic\\nforce. It may also\\nreduce the foe’s\\nSp. Def stat.",
    },

    [MOVE_HYPNOSIS] = {
        .names = {
            .name = "Hypnosis",
            .capsName = "HYPNOSIS",
            .fullName = "Hypnosis",
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
        .description = "The user employs\\nhypnotic suggestion\\nto make the target\\nfall into a deep\\nsleep.",
    },

    [MOVE_MEDITATE] = {
        .names = {
            .name = "Meditate",
            .capsName = "MEDITATE",
            .fullName = "Meditate",
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
        .description = "The user meditates\\nto awaken the power\\ndeep within its body\\nand raise its Attack\\nstat.",
    },

    [MOVE_AGILITY] = {
        .names = {
            .name = "Agility",
            .capsName = "AGILITY",
            .fullName = "Agility",
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
        .description = "The user relaxes and\\nlightens its body to\\nmove faster.\\nIt sharply boosts\\nthe Speed stat.",
    },

    [MOVE_QUICK_ATTACK] = {
        .names = {
            .name = "Quick Attack",
            .capsName = "QUICK ATTACK",
            .fullName = "Quick Attack",
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
        .description = "The user lunges at\\nthe foe at a speed\\nthat makes it almost\\ninvisible. It is sure\\nto strike first.",
    },

    [MOVE_RAGE] = {
        .names = {
            .name = "Rage",
            .capsName = "RAGE",
            .fullName = "Rage",
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
        .description = "While this move is in\\nuse, it gains attack\\npower each time the\\nuser is hit in battle.\\n",
    },

    [MOVE_TELEPORT] = {
        .names = {
            .name = "Teleport",
            .capsName = "TELEPORT",
            .fullName = "Teleport",
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
        .description = "Use it to flee from\\nany wild Pokémon.\\nIt can also warp to\\nthe last Pokémon\\nCenter visited.",
    },

    [MOVE_NIGHT_SHADE] = {
        .names = {
            .name = "Night Shade",
            .capsName = "NIGHT SHADE",
            .fullName = "Night Shade",
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
        .description = "The user makes the\\nfoe see a mirage.\\nIt inflicts damage\\nmatching the user’s\\nlevel.",
    },

    [MOVE_MIMIC] = {
        .names = {
            .name = "Mimic",
            .capsName = "MIMIC",
            .fullName = "Mimic",
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
        .description = "The user copies the\\nmove last used by\\nthe foe. The move can\\nbe used for the rest\\nof the battle.",
    },

    [MOVE_SCREECH] = {
        .names = {
            .name = "Screech",
            .capsName = "SCREECH",
            .fullName = "Screech",
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
        .description = "An earsplitting\\nscreech is emitted to\\nsharply reduce the\\nfoe’s Defense stat.\\n",
    },

    [MOVE_DOUBLE_TEAM] = {
        .names = {
            .name = "Double Team",
            .capsName = "DOUBLE TEAM",
            .fullName = "Double Team",
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
        .description = "By moving rapidly, the\\nuser makes illusory\\ncopies of itself to\\nraise its evasiveness.\\n",
    },

    [MOVE_RECOVER] = {
        .names = {
            .name = "Recover",
            .capsName = "RECOVER",
            .fullName = "Recover",
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
        .description = "A self-healing move.\\nThe user restores its\\nown HP by up to half\\nof its max HP.\\n",
    },

    [MOVE_HARDEN] = {
        .names = {
            .name = "Harden",
            .capsName = "HARDEN",
            .fullName = "Harden",
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
        .description = "The user stiffens all\\nthe muscles in its\\nbody to raise its\\nDefense stat.\\n",
    },

    [MOVE_MINIMIZE] = {
        .names = {
            .name = "Minimize",
            .capsName = "MINIMIZE",
            .fullName = "Minimize",
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
        .description = "The user compresses\\nits body to make\\nitself look smaller.\\nThe user’s evasion\\nstat is boosted.",
    },

    [MOVE_SMOKESCREEN] = {
        .names = {
            .name = "Smokescreen",
            .capsName = "SMOKESCREEN",
            .fullName = "Smokescreen",
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
        .description = "The user releases an\\nobscuring cloud of\\nsmoke or ink.\\nIt reduces the foe’s\\naccuracy.",
    },

    [MOVE_CONFUSE_RAY] = {
        .names = {
            .name = "Confuse Ray",
            .capsName = "CONFUSE RAY",
            .fullName = "Confuse Ray",
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
        .description = "The foe is exposed\\nto a sinister ray\\nthat triggers\\nconfusion.\\n",
    },

    [MOVE_WITHDRAW] = {
        .names = {
            .name = "Withdraw",
            .capsName = "WITHDRAW",
            .fullName = "Withdraw",
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
        .description = "The user withdraws\\nits body into its hard\\nshell, raising its\\nDefense stat.\\n",
    },

    [MOVE_DEFENSE_CURL] = {
        .names = {
            .name = "Defense Curl",
            .capsName = "DEFENSE CURL",
            .fullName = "Defense Curl",
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
        .description = "The user curls up to\\nconceal weak spots\\nand raise its Defense\\nstat.\\n",
    },

    [MOVE_BARRIER] = {
        .names = {
            .name = "Barrier",
            .capsName = "BARRIER",
            .fullName = "Barrier",
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
        .description = "The user throws up a\\nsturdy wall that\\nsharply raises its\\nDefense stat.\\n",
    },

    [MOVE_LIGHT_SCREEN] = {
        .names = {
            .name = "Light Screen",
            .capsName = "LIGHT SCREEN",
            .fullName = "Light Screen",
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
        .description = "A wondrous wall of\\nlight is put up to\\nsuppress damage from\\nspecial attacks for\\nfive turns.",
    },

    [MOVE_HAZE] = {
        .names = {
            .name = "Haze",
            .capsName = "HAZE",
            .fullName = "Haze",
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
        .description = "The user creates a\\nhaze that eliminates\\nevery stat change\\namong all the Pokémon\\nengaged in battle.",
    },

    [MOVE_REFLECT] = {
        .names = {
            .name = "Reflect",
            .capsName = "REFLECT",
            .fullName = "Reflect",
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
        .description = "A wondrous wall of\\nlight is put up to\\nsuppress damage from\\nphysical attacks for\\nfive turns.",
    },

    [MOVE_FOCUS_ENERGY] = {
        .names = {
            .name = "Focus Energy",
            .capsName = "FOCUS ENERGY",
            .fullName = "Focus Energy",
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
        .description = "The user takes a\\ndeep breath and\\nfocuses to raise the\\ncritical-hit ratio of\\nits attacks.",
    },

    [MOVE_BIDE] = {
        .names = {
            .name = "Bide",
            .capsName = "BIDE",
            .fullName = "Bide",
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
        .description = "The user endures\\nattacks for two\\nturns, then strikes\\nback to cause double\\nthe damage taken.",
    },

    [MOVE_METRONOME] = {
        .names = {
            .name = "Metronome",
            .capsName = "METRONOME",
            .fullName = "Metronome",
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
        .description = "The user waggles a\\nfinger and stimulates\\nthe brain into\\nrandomly using nearly\\nany move.",
    },

    [MOVE_MIRROR_MOVE] = {
        .names = {
            .name = "Mirror Move",
            .capsName = "MIRROR MOVE",
            .fullName = "Mirror Move",
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
        .description = "The user counters\\nthe foe by mimicking\\nthe move last used\\nby the foe.",
    },

    [MOVE_SELF_DESTRUCT] = {
        .names = {
            .name = "Self-Destruct",
            .capsName = "SELF-DESTRUCT",
            .fullName = "Self-Destruct",
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
        .description = "The user blows up to\\ninflict damage on all\\nPokémon in battle.\\nThe user faints upon\\nusing this move.",
    },

    [MOVE_EGG_BOMB] = {
        .names = {
            .name = "Egg Bomb",
            .capsName = "EGG BOMB",
            .fullName = "Egg Bomb",
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
        .description = "A large egg is hurled\\nwith maximum force at\\nthe foe to inflict\\ndamage.\\n",
    },

    [MOVE_LICK] = {
        .names = {
            .name = "Lick",
            .capsName = "LICK",
            .fullName = "Lick",
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
        .description = "The foe is licked with\\na long tongue, causing\\ndamage.\\nIt may also paralyze\\nthe target.",
    },

    [MOVE_SMOG] = {
        .names = {
            .name = "Smog",
            .capsName = "SMOG",
            .fullName = "Smog",
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
        .description = "The foe is attacked\\nwith a discharge of\\nfilthy gases.\\nIt may also poison\\nthe target.",
    },

    [MOVE_SLUDGE] = {
        .names = {
            .name = "Sludge",
            .capsName = "SLUDGE",
            .fullName = "Sludge",
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
        .description = "Unsanitary sludge is\\nhurled at the foe.\\nIt may also poison\\nthe target.\\n",
    },

    [MOVE_BONE_CLUB] = {
        .names = {
            .name = "Bone Club",
            .capsName = "BONE CLUB",
            .fullName = "Bone Club",
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
        .description = "The user clubs the\\nfoe with a bone.\\nIt may also make the\\ntarget flinch.\\n",
    },

    [MOVE_FIRE_BLAST] = {
        .names = {
            .name = "Fire Blast",
            .capsName = "FIRE BLAST",
            .fullName = "Fire Blast",
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
        .description = "The foe is attacked\\nwith an intense blast\\nof all-consuming fire.\\nIt may also leave the\\ntarget with a burn.",
    },

    [MOVE_WATERFALL] = {
        .names = {
            .name = "Waterfall",
            .capsName = "WATERFALL",
            .fullName = "Waterfall",
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
        .description = "The user charges at\\nthe foe rapidly, and\\nmay make it flinch.\\nIt can also be used\\nto climb a waterfall.",
    },

    [MOVE_CLAMP] = {
        .names = {
            .name = "Clamp",
            .capsName = "CLAMP",
            .fullName = "Clamp",
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
        .description = "The foe is clamped\\nand squeezed by\\nthe user’s very thick\\nand sturdy shell for\\ntwo to five turns.",
    },

    [MOVE_SWIFT] = {
        .names = {
            .name = "Swift",
            .capsName = "SWIFT",
            .fullName = "Swift",
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
        .description = "Star-shaped rays are\\nshot at the foe.\\nThis attack never\\nmisses.\\n",
    },

    [MOVE_SKULL_BASH] = {
        .names = {
            .name = "Skull Bash",
            .capsName = "SKULL BASH",
            .fullName = "Skull Bash",
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
        .description = "The user tucks in its\\nhead to raise its\\nDefense in the first\\nturn, then rams the\\nfoe on the next turn.",
    },

    [MOVE_SPIKE_CANNON] = {
        .names = {
            .name = "Spike Cannon",
            .capsName = "SPIKE CANNON",
            .fullName = "Spike Cannon",
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
        .description = "Sharp spikes are\\nfired at the foe to\\nstrike two to five\\ntimes in rapid\\nsuccession.",
    },

    [MOVE_CONSTRICT] = {
        .names = {
            .name = "Constrict",
            .capsName = "CONSTRICT",
            .fullName = "Constrict",
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
        .description = "The foe is attacked\\nwith long, creeping\\ntentacles or vines.\\nIt may also lower the\\ntarget’s Speed.",
    },

    [MOVE_AMNESIA] = {
        .names = {
            .name = "Amnesia",
            .capsName = "AMNESIA",
            .fullName = "Amnesia",
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
        .description = "The user temporarily\\nempties its mind to\\nforget its concerns.\\nIt sharply raises the\\nuser’s Sp. Def stat.",
    },

    [MOVE_KINESIS] = {
        .names = {
            .name = "Kinesis",
            .capsName = "KINESIS",
            .fullName = "Kinesis",
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
        .description = "The user distracts\\nthe foe by bending a\\nspoon.\\nIt may lower the\\ntarget’s accuracy.",
    },

    [MOVE_SOFT_BOILED] = {
        .names = {
            .name = "Soft-Boiled",
            .capsName = "SOFT-BOILED",
            .fullName = "Soft-Boiled",
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
        .description = "The user restores its\\nown HP by up to half\\nof its maximum HP.\\nIt may also be used\\nto heal an ally’s HP.",
    },

    [MOVE_HIGH_JUMP_KICK] = {
        .names = {
            .name = "High Jump Kick",
            .capsName = "HIGH JUMP KICK",
            .fullName = "High Jump Kick",
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
        .description = "The foe is attacked\\nwith a knee kick from\\na jump. If it misses,\\nthe user is hurt\\ninstead.",
    },

    [MOVE_GLARE] = {
        .names = {
            .name = "Glare",
            .capsName = "GLARE",
            .fullName = "Glare",
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
        .description = "The user intimidates\\nthe foe with the\\npattern on its belly\\nto cause paralysis.\\n",
    },

    [MOVE_DREAM_EATER] = {
        .names = {
            .name = "Dream Eater",
            .capsName = "DREAM EATER",
            .fullName = "Dream Eater",
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
        .description = "An attack that works\\nonly on a sleeping\\nfoe. It absorbs half\\nthe damage caused to\\nheal the user’s HP.",
    },

    [MOVE_POISON_GAS] = {
        .names = {
            .name = "Poison Gas",
            .capsName = "POISON GAS",
            .fullName = "Poison Gas",
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
        .description = "A cloud of poison gas\\nis sprayed in the\\nfoe’s face.\\nIt may poison the\\ntarget.",
    },

    [MOVE_BARRAGE] = {
        .names = {
            .name = "Barrage",
            .capsName = "BARRAGE",
            .fullName = "Barrage",
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
        .description = "Round objects are\\nhurled at the foe to\\nstrike two to five\\ntimes in a row.\\n",
    },

    [MOVE_LEECH_LIFE] = {
        .names = {
            .name = "Leech Life",
            .capsName = "LEECH LIFE",
            .fullName = "Leech Life",
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
        .description = "A blood-draining\\nattack. The user’s\\nHP is restored by\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_LOVELY_KISS] = {
        .names = {
            .name = "Lovely Kiss",
            .capsName = "LOVELY KISS",
            .fullName = "Lovely Kiss",
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
        .description = "With a scary face, the\\nuser tries to force a\\nkiss on the foe. If it\\nsucceeds, the target\\nfalls asleep.",
    },

    [MOVE_SKY_ATTACK] = {
        .names = {
            .name = "Sky Attack",
            .capsName = "SKY ATTACK",
            .fullName = "Sky Attack",
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
        .description = "A second-turn attack\\nmove with a high\\ncritical-hit ratio.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_TRANSFORM] = {
        .names = {
            .name = "Transform",
            .capsName = "TRANSFORM",
            .fullName = "Transform",
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
        .description = "The user transforms\\ninto a copy of the\\nfoe right down to\\nhaving the same move\\nset.",
    },

    [MOVE_BUBBLE] = {
        .names = {
            .name = "Bubble",
            .capsName = "BUBBLE",
            .fullName = "Bubble",
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
        .description = "A spray of countless\\nbubbles is jetted at\\nthe foe.\\nIt may also lower the\\ntarget’s Speed stat.",
    },

    [MOVE_DIZZY_PUNCH] = {
        .names = {
            .name = "Dizzy Punch",
            .capsName = "DIZZY PUNCH",
            .fullName = "Dizzy Punch",
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
        .description = "The foe is hit with\\nrhythmically launched\\npunches that may also\\nleave it confused.\\n",
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
        .description = "The user scatters\\nbursts of spores\\nthat induce sleep.\\n\\n",
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
        .description = "The user flashes a\\nlight that cuts the\\nfoe’s accuracy.\\nIt can also be used\\nto illuminate caves.",
    },

    [MOVE_PSYWAVE] = {
        .names = {
            .name = "Psywave",
            .capsName = "PSYWAVE",
            .fullName = "Psywave",
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
        .description = "The foe is attacked\\nwith an odd, hot\\nenergy wave.\\nThe attack varies in\\nintensity.",
    },

    [MOVE_SPLASH] = {
        .names = {
            .name = "Splash",
            .capsName = "SPLASH",
            .fullName = "Splash",
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
        .description = "The user just flops\\nand splashes around\\nto no effect at all...\\n\\n",
    },

    [MOVE_ACID_ARMOR] = {
        .names = {
            .name = "Acid Armor",
            .capsName = "ACID ARMOR",
            .fullName = "Acid Armor",
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
        .description = "The user alters its\\ncellular structure to\\nliquefy itself,\\nsharply raising its\\nDefense stat.",
    },

    [MOVE_CRABHAMMER] = {
        .names = {
            .name = "Crabhammer",
            .capsName = "CRABHAMMER",
            .fullName = "Crabhammer",
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
        .description = "The foe is hammered\\nwith a large pincer.\\nThis move has a high\\ncritical-hit ratio.\\n",
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
        .description = "The user explodes to\\ninflict damage on all\\nPokémon in battle.\\nThe user faints upon\\nusing this move.",
    },

    [MOVE_FURY_SWIPES] = {
        .names = {
            .name = "Fury Swipes",
            .capsName = "FURY SWIPES",
            .fullName = "Fury Swipes",
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
        .description = "The foe is raked with\\nsharp claws or\\nscythes for two to\\nfive times in quick\\nsuccession.",
    },

    [MOVE_BONEMERANG] = {
        .names = {
            .name = "Bonemerang",
            .capsName = "BONEMERANG",
            .fullName = "Bonemerang",
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
        .description = "The user throws the\\nbone it holds. The\\nbone loops to hit the\\nfoe twice, coming and\\ngoing.",
    },

    [MOVE_REST] = {
        .names = {
            .name = "Rest",
            .capsName = "REST",
            .fullName = "Rest",
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
        .description = "The user goes to\\nsleep for two turns.\\nIt fully restores the\\nuser’s HP and heals\\nany status problem.",
    },

    [MOVE_ROCK_SLIDE] = {
        .names = {
            .name = "Rock Slide",
            .capsName = "ROCK SLIDE",
            .fullName = "Rock Slide",
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
        .description = "Large boulders are\\nhurled at the foe to\\ninflict damage.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_HYPER_FANG] = {
        .names = {
            .name = "Hyper Fang",
            .capsName = "HYPER FANG",
            .fullName = "Hyper Fang",
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
        .description = "The user bites hard\\non the foe with its\\nsharp front fangs.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_SHARPEN] = {
        .names = {
            .name = "Sharpen",
            .capsName = "SHARPEN",
            .fullName = "Sharpen",
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
        .description = "The user reduces its\\npolygon count to\\nmake itself more\\njagged, raising the\\nAttack stat.",
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
        .description = "The user changes its\\ntype to become the\\nsame type as one of\\nits moves.\\n",
    },

    [MOVE_TRI_ATTACK] = {
        .names = {
            .name = "Tri Attack",
            .capsName = "TRI ATTACK",
            .fullName = "Tri Attack",
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
        .description = "The user strikes with\\na simultaneous three-\\nbeam attack. May also\\nparalyze, burn, or\\nfreeze the target.",
    },

    [MOVE_SUPER_FANG] = {
        .names = {
            .name = "Super Fang",
            .capsName = "SUPER FANG",
            .fullName = "Super Fang",
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
        .description = "The user chomps hard\\non the foe with its\\nsharp front fangs.\\nIt cuts the target’s\\nHP to half.",
    },

    [MOVE_SLASH] = {
        .names = {
            .name = "Slash",
            .capsName = "SLASH",
            .fullName = "Slash",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
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
            .appeal = APPEAL_BASIC,
            .contestType = CONTEST_COOL,
        },
        .description = "The foe is attacked\\nwith a slash of\\nclaws, etc.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_SUBSTITUTE] = {
        .names = {
            .name = "Substitute",
            .capsName = "SUBSTITUTE",
            .fullName = "Substitute",
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
        .description = "The user makes a\\ncopy of itself using\\nsome of its HP.\\nThe copy serves as\\nthe user’s decoy.",
    },

    [MOVE_STRUGGLE] = {
        .names = {
            .name = "Struggle",
            .capsName = "STRUGGLE",
            .fullName = "Struggle",
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
        .description = "An attack that is\\nused in desperation\\nonly if the user has\\nno PP. It also hurts\\nthe user slightly.",
    },

    [MOVE_SKETCH] = {
        .names = {
            .name = "Sketch",
            .capsName = "SKETCH",
            .fullName = "Sketch",
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
        .description = "It enables the user\\nto permanently learn\\nthe move last used by\\nthe foe. Once used,\\nSketch disappears.",
    },

    [MOVE_TRIPLE_KICK] = {
        .names = {
            .name = "Triple Kick",
            .capsName = "TRIPLE KICK",
            .fullName = "Triple Kick",
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
        .description = "A consecutive three-\\nkick attack that\\nbecomes more\\npowerful with each \\nsuccessive hit.",
    },

    [MOVE_THIEF] = {
        .names = {
            .name = "Thief",
            .capsName = "THIEF",
            .fullName = "Thief",
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
        .description = "The user attacks and\\nsteals the foe’s held\\nitem simultaneously.\\nIt can’t steal if the\\nuser holds an item.",
    },

    [MOVE_SPIDER_WEB] = {
        .names = {
            .name = "Spider Web",
            .capsName = "SPIDER WEB",
            .fullName = "Spider Web",
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
        .description = "The user ensnares\\nthe foe with a thin,\\ngooey silk so it can’t\\nflee from battle.\\n",
    },

    [MOVE_MIND_READER] = {
        .names = {
            .name = "Mind Reader",
            .capsName = "MIND READER",
            .fullName = "Mind Reader",
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
        .description = "The user senses the\\nfoe’s movements\\nwith its mind to\\nensure its next\\nattack does not miss.",
    },

    [MOVE_NIGHTMARE] = {
        .names = {
            .name = "Nightmare",
            .capsName = "NIGHTMARE",
            .fullName = "Nightmare",
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
        .description = "A sleeping foe is\\nshown a nightmare\\nthat inflicts some\\ndamage every turn.\\n",
    },

    [MOVE_FLAME_WHEEL] = {
        .names = {
            .name = "Flame Wheel",
            .capsName = "FLAME WHEEL",
            .fullName = "Flame Wheel",
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
        .description = "The user cloaks\\nitself in fire and\\ncharges at the foe.\\nIt may also leave the\\ntarget with a burn.",
    },

    [MOVE_SNORE] = {
        .names = {
            .name = "Snore",
            .capsName = "SNORE",
            .fullName = "Snore",
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
        .description = "An attack that can\\nbe used only if the\\nuser is asleep. The\\nharsh noise may also\\nmake the foe flinch.",
    },

    [MOVE_CURSE] = {
        .names = {
            .name = "Curse",
            .capsName = "CURSE",
            .fullName = "Curse",
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
        .description = "A move that works\\ndifferently for the\\nGhost type than for\\nall the other types.\\n",
    },

    [MOVE_FLAIL] = {
        .names = {
            .name = "Flail",
            .capsName = "FLAIL",
            .fullName = "Flail",
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
        .description = "The user flails about\\naimlessly to attack.\\nIt becomes more\\npowerful the less HP\\nthe user has.",
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
        .description = "The user changes its\\ntype to make itself\\nresistant to the type\\nof the attack it\\nlast took.",
    },

    [MOVE_AEROBLAST] = {
        .names = {
            .name = "Aeroblast",
            .capsName = "AEROBLAST",
            .fullName = "Aeroblast",
        },
        .data = {
            .effect = MOVE_EFFECT_HIGH_CRITICAL,
            .split = SPLIT_SPECIAL,
            .power = 100,
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
        .description = "A vortex of air is\\nshot at the foe to\\ninflict damage.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_COTTON_SPORE] = {
        .names = {
            .name = "Cotton Spore",
            .capsName = "COTTON SPORE",
            .fullName = "Cotton Spore",
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
        .description = "The user releases\\ncottonlike spores\\nthat cling to the\\nfoe, sharply reducing\\nits Speed stat.",
    },

    [MOVE_REVERSAL] = {
        .names = {
            .name = "Reversal",
            .capsName = "REVERSAL",
            .fullName = "Reversal",
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
        .description = "An all-out attack\\nthat becomes more\\npowerful the less\\nHP the user has.\\n",
    },

    [MOVE_SPITE] = {
        .names = {
            .name = "Spite",
            .capsName = "SPITE",
            .fullName = "Spite",
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
        .description = "The user looses its\\ngrudge on the move\\nlast used by the foe\\nby cutting 4 PP from\\nit.",
    },

    [MOVE_POWDER_SNOW] = {
        .names = {
            .name = "Powder Snow",
            .capsName = "POWDER SNOW",
            .fullName = "Powder Snow",
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
        .description = "The user attacks with\\na chilling gust of\\npowdery snow.\\nIt may also freeze\\nthe target.",
    },

    [MOVE_PROTECT] = {
        .names = {
            .name = "Protect",
            .capsName = "PROTECT",
            .fullName = "Protect",
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
        .description = "It enables the user\\nto evade all attacks.\\nIts chance of failing\\nrises if it is used in\\nsuccession.",
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
        .description = "The user throws a\\npunch at blinding\\nspeed.\\nIt is certain to\\nstrike first.",
    },

    [MOVE_SCARY_FACE] = {
        .names = {
            .name = "Scary Face",
            .capsName = "SCARY FACE",
            .fullName = "Scary Face",
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
        .description = "The user frightens\\nthe foe with a scary\\nface to sharply\\nreduce its Speed\\nstat.",
    },

    [MOVE_FEINT_ATTACK] = {
        .names = {
            .name = "Feint Attack",
            .capsName = "FEINT ATTACK",
            .fullName = "Feint Attack",
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
        .description = "The user draws up to\\nthe foe disarmingly,\\nthen throws a sucker\\npunch.\\nIt hits without fail.",
    },

    [MOVE_SWEET_KISS] = {
        .names = {
            .name = "Sweet Kiss",
            .capsName = "SWEET KISS",
            .fullName = "Sweet Kiss",
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
        .description = "The user kisses the\\nfoe with a sweet,\\nangelic cuteness that\\ncauses confusion.\\n",
    },

    [MOVE_BELLY_DRUM] = {
        .names = {
            .name = "Belly Drum",
            .capsName = "BELLY DRUM",
            .fullName = "Belly Drum",
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
        .description = "The user maximizes\\nits Attack stat in\\nexchange for HP\\nequal to half its max\\nHP.",
    },

    [MOVE_SLUDGE_BOMB] = {
        .names = {
            .name = "Sludge Bomb",
            .capsName = "SLUDGE BOMB",
            .fullName = "Sludge Bomb",
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
        .description = "The user attacks by\\nhurling filthy sludge\\nat the foe.\\nIt may also poison\\nthe target.",
    },

    [MOVE_MUD_SLAP] = {
        .names = {
            .name = "Mud-Slap",
            .capsName = "MUD-SLAP",
            .fullName = "Mud-Slap",
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
        .description = "The user hurls mud in\\nthe foe’s face to\\ninflict damage and\\nlower its accuracy.\\n",
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
        .description = "The user attacks by\\nspraying ink in the\\nfoe’s face or eyes.\\nIt may also lower the\\ntarget’s accuracy.",
    },

    [MOVE_SPIKES] = {
        .names = {
            .name = "Spikes",
            .capsName = "SPIKES",
            .fullName = "Spikes",
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
        .description = "The user lays a trap\\nof spikes at the\\nfoe’s feet. The trap\\nhurts foes that\\nswitch into battle.",
    },

    [MOVE_ZAP_CANNON] = {
        .names = {
            .name = "Zap Cannon",
            .capsName = "ZAP CANNON",
            .fullName = "Zap Cannon",
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
        .description = "The user fires an\\nelectric blast like a\\ncannon to inflict\\ndamage and cause\\nparalysis.",
    },

    [MOVE_FORESIGHT] = {
        .names = {
            .name = "Foresight",
            .capsName = "FORESIGHT",
            .fullName = "Foresight",
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
        .description = "Enables the user to\\nhit a Ghost type with\\nany type of move. It\\nalso enables the user\\nto hit an evasive foe.",
    },

    [MOVE_DESTINY_BOND] = {
        .names = {
            .name = "Destiny Bond",
            .capsName = "DESTINY BOND",
            .fullName = "Destiny Bond",
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
        .description = "When this move is\\nused, if the user\\nfaints, the foe that\\nlanded the knockout\\nhit also faints.",
    },

    [MOVE_PERISH_SONG] = {
        .names = {
            .name = "Perish Song",
            .capsName = "PERISH SONG",
            .fullName = "Perish Song",
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
        .description = "Any Pokémon that\\nhears this song\\nfaints in three turns,\\nunless it switches\\nout of battle.",
    },

    [MOVE_ICY_WIND] = {
        .names = {
            .name = "Icy Wind",
            .capsName = "ICY WIND",
            .fullName = "Icy Wind",
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
        .description = "The user attacks with\\na gust of chilled air.\\nIt also lowers the\\ntarget’s Speed stat.\\n",
    },

    [MOVE_DETECT] = {
        .names = {
            .name = "Detect",
            .capsName = "DETECT",
            .fullName = "Detect",
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
        .description = "It enables the user\\nto evade all attacks.\\nIts chance of failing\\nrises if it is used in\\nsuccession.",
    },

    [MOVE_BONE_RUSH] = {
        .names = {
            .name = "Bone Rush",
            .capsName = "BONE RUSH",
            .fullName = "Bone Rush",
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
        .description = "The user strikes at\\nthe foe with a hard\\nbone two to five\\ntimes in a row.\\n",
    },

    [MOVE_LOCK_ON] = {
        .names = {
            .name = "Lock-On",
            .capsName = "LOCK-ON",
            .fullName = "Lock-On",
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
        .description = "The user takes sure\\naim at the foe.\\nIt ensures the next\\nattack does not fail\\nto hit the target.",
    },

    [MOVE_OUTRAGE] = {
        .names = {
            .name = "Outrage",
            .capsName = "OUTRAGE",
            .fullName = "Outrage",
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
        .description = "The user rampages\\nand attacks for two\\nto three turns.\\nHowever, it then\\nbecomes confused.",
    },

    [MOVE_SANDSTORM] = {
        .names = {
            .name = "Sandstorm",
            .capsName = "SANDSTORM",
            .fullName = "Sandstorm",
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
        .description = "A five-turn sand-\\nstorm is summoned\\nto hurt all combatant\\ntypes except Rock, \\nGround, and Steel.",
    },

    [MOVE_GIGA_DRAIN] = {
        .names = {
            .name = "Giga Drain",
            .capsName = "GIGA DRAIN",
            .fullName = "Giga Drain",
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
        .description = "A nutrient-draining\\nattack. The user’s\\nHP is restored by\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_ENDURE] = {
        .names = {
            .name = "Endure",
            .capsName = "ENDURE",
            .fullName = "Endure",
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
        .description = "The user endures any\\nattack with at least\\n1 HP. Its chance of\\nfailing rises if it is\\nused in succession.",
    },

    [MOVE_CHARM] = {
        .names = {
            .name = "Charm",
            .capsName = "CHARM",
            .fullName = "Charm",
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
        .description = "The user charmingly\\nstares at the foe,\\nmaking it less wary.\\nThe target’s Attack\\nis sharply lowered.",
    },

    [MOVE_ROLLOUT] = {
        .names = {
            .name = "Rollout",
            .capsName = "ROLLOUT",
            .fullName = "Rollout",
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
        .description = "The user continually\\nrolls into the foe\\nover five turns. It\\nbecomes stronger\\neach time it hits.",
    },

    [MOVE_FALSE_SWIPE] = {
        .names = {
            .name = "False Swipe",
            .capsName = "FALSE SWIPE",
            .fullName = "False Swipe",
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
        .description = "A restrained attack\\nthat prevents the\\nfoe from fainting.\\nThe target is left\\nwith at least 1 HP.",
    },

    [MOVE_SWAGGER] = {
        .names = {
            .name = "Swagger",
            .capsName = "SWAGGER",
            .fullName = "Swagger",
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
        .description = "The user enrages the\\nfoe into confusion.\\nHowever, it also\\nsharply raises the\\nfoe’s Attack stat.",
    },

    [MOVE_MILK_DRINK] = {
        .names = {
            .name = "Milk Drink",
            .capsName = "MILK DRINK",
            .fullName = "Milk Drink",
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
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "The user restores its\\nown HP by up to half\\nof its maximum HP.\\nIt may also be used\\nto heal an ally’s HP.",
    },

    [MOVE_SPARK] = {
        .names = {
            .name = "Spark",
            .capsName = "SPARK",
            .fullName = "Spark",
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
        .description = "The user throws an\\nelectrically charged\\ntackle at the foe.\\nIt may also leave the\\ntarget paralyzed.",
    },

    [MOVE_FURY_CUTTER] = {
        .names = {
            .name = "Fury Cutter",
            .capsName = "FURY CUTTER",
            .fullName = "Fury Cutter",
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
        .description = "The foe is slashed\\nwith scythes or\\nclaws. Its power\\nincreases if it hits\\nin succession.",
    },

    [MOVE_STEEL_WING] = {
        .names = {
            .name = "Steel Wing",
            .capsName = "STEEL WING",
            .fullName = "Steel Wing",
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
        .description = "The foe is hit with\\nwings of steel.\\nIt may also raise the\\nuser’s Defense stat.\\n",
    },

    [MOVE_MEAN_LOOK] = {
        .names = {
            .name = "Mean Look",
            .capsName = "MEAN LOOK",
            .fullName = "Mean Look",
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
        .description = "The user affixes the\\nfoe with a dark,\\narresting look.\\nThe target becomes\\nunable to flee.",
    },

    [MOVE_ATTRACT] = {
        .names = {
            .name = "Attract",
            .capsName = "ATTRACT",
            .fullName = "Attract",
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
        .description = "If it is the opposite\\ngender of the user,\\nthe foe becomes\\ninfatuated and less\\nlikely to attack.",
    },

    [MOVE_SLEEP_TALK] = {
        .names = {
            .name = "Sleep Talk",
            .capsName = "SLEEP TALK",
            .fullName = "Sleep Talk",
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
        .description = "While it is asleep, the\\nuser randomly uses\\none of the moves it\\nknows.\\n",
    },

    [MOVE_HEAL_BELL] = {
        .names = {
            .name = "Heal Bell",
            .capsName = "HEAL BELL",
            .fullName = "Heal Bell",
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
        .description = "The user makes a\\nsoothing bell chime\\nto heal the status\\nproblems of all the\\nparty Pokémon.",
    },

    [MOVE_RETURN] = {
        .names = {
            .name = "Return",
            .capsName = "RETURN",
            .fullName = "Return",
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
        .description = "A full-power attack\\nthat grows more\\npowerful the more\\nthe user likes its\\nTrainer.",
    },

    [MOVE_PRESENT] = {
        .names = {
            .name = "Present",
            .capsName = "PRESENT",
            .fullName = "Present",
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
        .description = "The user attacks by\\ngiving the foe a\\nbooby-trapped gift.\\nIt restores HP\\nsometimes, however.",
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
        .description = "A full-power attack\\nthat grows more\\npowerful the less\\nthe user likes its\\nTrainer.",
    },

    [MOVE_SAFEGUARD] = {
        .names = {
            .name = "Safeguard",
            .capsName = "SAFEGUARD",
            .fullName = "Safeguard",
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
        .description = "The user creates a\\nprotective field that\\nprevents status\\nproblems for five\\nturns.",
    },

    [MOVE_PAIN_SPLIT] = {
        .names = {
            .name = "Pain Split",
            .capsName = "PAIN SPLIT",
            .fullName = "Pain Split",
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
        .description = "The user adds its HP\\nto the foe’s HP, then\\nequally shares the\\ncombined HP with the\\nfoe.",
    },

    [MOVE_SACRED_FIRE] = {
        .names = {
            .name = "Sacred Fire",
            .capsName = "SACRED FIRE",
            .fullName = "Sacred Fire",
        },
        .data = {
            .effect = MOVE_EFFECT_THAW_AND_BURN_HIT,
            .split = SPLIT_PHYSICAL,
            .power = 100,
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
        .description = "The foe is razed with\\na mystical fire of\\ngreat intensity.\\nIt may also leave the\\ntarget with a burn.",
    },

    [MOVE_MAGNITUDE] = {
        .names = {
            .name = "Magnitude",
            .capsName = "MAGNITUDE",
            .fullName = "Magnitude",
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
        .description = "The user looses a\\nground-shaking quake\\naffecting everyone in\\nbattle. Its power\\nvaries.",
    },

    [MOVE_DYNAMIC_PUNCH] = {
        .names = {
            .name = "Dynamic Punch",
            .capsName = "DYNAMIC PUNCH",
            .fullName = "Dynamic Punch",
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
        .description = "The foe is punched\\nwith the user’s full,\\nconcentrated power.\\nIt confuses the foe\\nif it hits.",
    },

    [MOVE_MEGAHORN] = {
        .names = {
            .name = "Megahorn",
            .capsName = "MEGAHORN",
            .fullName = "Megahorn",
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
        .description = "Using its tough\\nand impressive\\nhorn, the user\\nrams into the foe \\nwith no letup.\\n",
    },

    [MOVE_DRAGON_BREATH] = {
        .names = {
            .name = "Dragon Breath",
            .capsName = "DRAGON BREATH",
            .fullName = "Dragon Breath",
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
        .description = "The user exhales\\na mighty gust that\\ninflicts damage.\\nIt may also paralyze\\nthe target.",
    },

    [MOVE_BATON_PASS] = {
        .names = {
            .name = "Baton Pass",
            .capsName = "BATON PASS",
            .fullName = "Baton Pass",
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
        .description = "The user switches\\nplaces with a party\\nPokémon in waiting,\\npassing along any\\nstat changes.",
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
        .description = "The user compels the\\nfoe to keep using\\nonly the move it last\\nused for three to\\nseven turns.",
    },

    [MOVE_PURSUIT] = {
        .names = {
            .name = "Pursuit",
            .capsName = "PURSUIT",
            .fullName = "Pursuit",
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
        .description = "An attack move that\\ninflicts double damage\\nif used on a foe that\\nis switching out of\\nbattle.",
    },

    [MOVE_RAPID_SPIN] = {
        .names = {
            .name = "Rapid Spin",
            .capsName = "RAPID SPIN",
            .fullName = "Rapid Spin",
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
        .description = "A spin attack that\\ncan also eliminate\\nsuch moves as Bind,\\nWrap, Leech Seed,\\nand Spikes.",
    },

    [MOVE_SWEET_SCENT] = {
        .names = {
            .name = "Sweet Scent",
            .capsName = "SWEET SCENT",
            .fullName = "Sweet Scent",
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
        .description = "A sweet scent that\\nlowers the foe’s\\nevasiveness. It also\\nlures wild Pokémon\\nif used in grass, etc.",
    },

    [MOVE_IRON_TAIL] = {
        .names = {
            .name = "Iron Tail",
            .capsName = "IRON TAIL",
            .fullName = "Iron Tail",
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
        .description = "The foe is slammed\\nwith a steel-hard\\ntail. It may also\\nlower the target’s\\nDefense stat.",
    },

    [MOVE_METAL_CLAW] = {
        .names = {
            .name = "Metal Claw",
            .capsName = "METAL CLAW",
            .fullName = "Metal Claw",
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
        .description = "The foe is raked\\nwith steel claws.\\nIt may also raise the\\nuser’s Attack stat.\\n",
    },

    [MOVE_VITAL_THROW] = {
        .names = {
            .name = "Vital Throw",
            .capsName = "VITAL THROW",
            .fullName = "Vital Throw",
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
        .description = "The user allows the\\nfoe to attack first.\\nIn return, this throw\\nmove is guaranteed\\nnot to miss.",
    },

    [MOVE_MORNING_SUN] = {
        .names = {
            .name = "Morning Sun",
            .capsName = "MORNING SUN",
            .fullName = "Morning Sun",
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
        .description = "The user restores its\\nown HP.\\nThe amount of HP\\nregained varies with\\nthe weather.",
    },

    [MOVE_SYNTHESIS] = {
        .names = {
            .name = "Synthesis",
            .capsName = "SYNTHESIS",
            .fullName = "Synthesis",
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
        .description = "The user restores its\\nown HP.\\nThe amount of HP\\nregained varies with\\nthe weather.",
    },

    [MOVE_MOONLIGHT] = {
        .names = {
            .name = "Moonlight",
            .capsName = "MOONLIGHT",
            .fullName = "Moonlight",
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
        .description = "The user restores its\\nown HP.\\nThe amount of HP\\nregained varies with\\nthe weather.",
    },

    [MOVE_HIDDEN_POWER] = {
        .names = {
            .name = "Hidden Power",
            .capsName = "HIDDEN POWER",
            .fullName = "Hidden Power",
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
        .description = "A unique attack that\\nvaries in type\\ndepending on the\\nPokémon using it.",
    },

    [MOVE_CROSS_CHOP] = {
        .names = {
            .name = "Cross Chop",
            .capsName = "CROSS CHOP",
            .fullName = "Cross Chop",
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
        .description = "The user delivers a\\ndouble chop with its\\nforearms crossed.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_TWISTER] = {
        .names = {
            .name = "Twister",
            .capsName = "TWISTER",
            .fullName = "Twister",
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
        .description = "The user whips up a\\nvicious tornado to\\ntear at the foe.\\nIt may also make the\\nfoe flinch.",
    },

    [MOVE_RAIN_DANCE] = {
        .names = {
            .name = "Rain Dance",
            .capsName = "RAIN DANCE",
            .fullName = "Rain Dance",
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
        .description = "The user summons a\\nheavy rain that falls\\nfor five turns,\\npowering up Water-\\ntype moves.",
    },

    [MOVE_SUNNY_DAY] = {
        .names = {
            .name = "Sunny Day",
            .capsName = "SUNNY DAY",
            .fullName = "Sunny Day",
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
        .description = "The user intensifies\\nthe sun for five\\nturns, powering up\\nFire-type moves.\\n",
    },

    [MOVE_CRUNCH] = {
        .names = {
            .name = "Crunch",
            .capsName = "CRUNCH",
            .fullName = "Crunch",
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
        .description = "The user crunches up\\nthe foe with sharp\\nfangs. It may also\\nlower the target’s\\nDefense stat.",
    },

    [MOVE_MIRROR_COAT] = {
        .names = {
            .name = "Mirror Coat",
            .capsName = "MIRROR COAT",
            .fullName = "Mirror Coat",
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
        .description = "A retaliation move\\nthat counters any\\nspecial attack,\\ninflicting double the\\ndamage taken.",
    },

    [MOVE_PSYCH_UP] = {
        .names = {
            .name = "Psych Up",
            .capsName = "PSYCH UP",
            .fullName = "Psych Up",
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
        .description = "The user hypnotizes\\nitself into copying\\nany stat change\\nmade by the foe.\\n",
    },

    [MOVE_EXTREME_SPEED] = {
        .names = {
            .name = "Extreme Speed",
            .capsName = "EXTREME SPEED",
            .fullName = "Extreme Speed",
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
        .description = "The user charges the\\nfoe at blinding speed.\\nThis attack always\\ngoes before any\\nother move.",
    },

    [MOVE_ANCIENT_POWER] = {
        .names = {
            .name = "Ancient Power",
            .capsName = "ANCIENT POWER",
            .fullName = "Ancient Power",
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
        .description = "The user attacks with\\na prehistoric power.\\nIt may also raise all\\nthe user’s stats at\\nonce.",
    },

    [MOVE_SHADOW_BALL] = {
        .names = {
            .name = "Shadow Ball",
            .capsName = "SHADOW BALL",
            .fullName = "Shadow Ball",
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
        .description = "The user hurls a\\nshadowy blob at the\\nfoe. It may also\\nlower the foe’s\\nSp. Def stat.",
    },

    [MOVE_FUTURE_SIGHT] = {
        .names = {
            .name = "Future Sight",
            .capsName = "FUTURE SIGHT",
            .fullName = "Future Sight",
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
        .description = "Two turns after this\\nmove is used, the foe\\nis attacked with a\\nhunk of psychic\\nenergy.",
    },

    [MOVE_ROCK_SMASH] = {
        .names = {
            .name = "Rock Smash",
            .capsName = "ROCK SMASH",
            .fullName = "Rock Smash",
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
        .description = "The user hits with a\\npunch that may lower\\nthe target’s Defense.\\nIt can also smash\\ncracked boulders.",
    },

    [MOVE_WHIRLPOOL] = {
        .names = {
            .name = "Whirlpool",
            .capsName = "WHIRLPOOL",
            .fullName = "Whirlpool",
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
        .description = "Traps the foe inside a\\nwhirlpool that lasts\\nfor two to five turns.\\nThe user can pass\\nthrough whirlpools.",
    },

    [MOVE_BEAT_UP] = {
        .names = {
            .name = "Beat Up",
            .capsName = "BEAT UP",
            .fullName = "Beat Up",
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
        .description = "The user gets all the\\nparty Pokémon to\\nattack the foe. The\\nmore party Pokémon,\\nthe more damage.",
    },

    [MOVE_FAKE_OUT] = {
        .names = {
            .name = "Fake Out",
            .capsName = "FAKE OUT",
            .fullName = "Fake Out",
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
        .description = "An attack that hits\\nfirst and makes the\\ntarget flinch. It only\\nworks the first turn\\nthe user is in battle.",
    },

    [MOVE_UPROAR] = {
        .names = {
            .name = "Uproar",
            .capsName = "UPROAR",
            .fullName = "Uproar",
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
        .description = "The user attacks in\\nan uproar for two to\\nfive turns. Over that\\ntime, no one can fall\\nasleep.",
    },

    [MOVE_STOCKPILE] = {
        .names = {
            .name = "Stockpile",
            .capsName = "STOCKPILE",
            .fullName = "Stockpile",
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
        .description = "The user charges\\nup power, and raises\\nboth its Defense and\\nSp. Def. The move can\\nbe used three times.",
    },

    [MOVE_SPIT_UP] = {
        .names = {
            .name = "Spit Up",
            .capsName = "SPIT UP",
            .fullName = "Spit Up",
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
        .description = "The power stored\\nusing the move\\nStockpile is released\\nat once in an attack.\\n",
    },

    [MOVE_SWALLOW] = {
        .names = {
            .name = "Swallow",
            .capsName = "SWALLOW",
            .fullName = "Swallow",
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
        .description = "The power stored\\nusing the move\\nStockpile is absorbed\\nby the user to heal\\nits HP.",
    },

    [MOVE_HEAT_WAVE] = {
        .names = {
            .name = "Heat Wave",
            .capsName = "HEAT WAVE",
            .fullName = "Heat Wave",
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
        .description = "The user exhales a\\nheated breath on the\\nfoe to attack. It may\\nalso leave the target\\nwith a burn.",
    },

    [MOVE_HAIL] = {
        .names = {
            .name = "Hail",
            .capsName = "HAIL",
            .fullName = "Hail",
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
        .description = "The user summons a\\nhailstorm lasting five\\nturns. It damages all\\nPokémon except the\\nIce type.",
    },

    [MOVE_TORMENT] = {
        .names = {
            .name = "Torment",
            .capsName = "TORMENT",
            .fullName = "Torment",
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
        .description = "The user torments\\nand enrages the foe,\\nmaking it incapable of\\nusing the same move\\ntwice in a row.",
    },

    [MOVE_FLATTER] = {
        .names = {
            .name = "Flatter",
            .capsName = "FLATTER",
            .fullName = "Flatter",
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
        .description = "Flattery is used to\\nconfuse the foe.\\nHowever, it also\\nraises the target’s\\nSp. Atk stat.",
    },

    [MOVE_WILL_O_WISP] = {
        .names = {
            .name = "Will-O-Wisp",
            .capsName = "WILL-O-WISP",
            .fullName = "Will-O-Wisp",
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
        .description = "The user shoots a\\nsinister, bluish white\\nflame at the foe to\\ninflict a burn.\\n",
    },

    [MOVE_MEMENTO] = {
        .names = {
            .name = "Memento",
            .capsName = "MEMENTO",
            .fullName = "Memento",
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
        .description = "The user faints upon\\nusing this move.\\nIn return, it sharply\\nlowers the target’s\\nAttack and Sp. Atk.",
    },

    [MOVE_FACADE] = {
        .names = {
            .name = "Facade",
            .capsName = "FACADE",
            .fullName = "Facade",
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
        .description = "An attack move that\\ndoubles its power if\\nthe user is poisoned,\\nparalyzed, or has a\\nburn.",
    },

    [MOVE_FOCUS_PUNCH] = {
        .names = {
            .name = "Focus Punch",
            .capsName = "FOCUS PUNCH",
            .fullName = "Focus Punch",
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
        .description = "The user focuses its\\nmind before launching\\na punch. It will fail\\nif the user is hit\\nbefore it is used.",
    },

    [MOVE_SMELLING_SALTS] = {
        .names = {
            .name = "Smelling Salts",
            .capsName = "SMELLING SALTS",
            .fullName = "Smelling Salts",
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
        .description = "This attack inflicts\\ndouble damage on a\\nparalyzed foe. It\\nalso cures the foe’s\\nparalysis, however.",
    },

    [MOVE_FOLLOW_ME] = {
        .names = {
            .name = "Follow Me",
            .capsName = "FOLLOW ME",
            .fullName = "Follow Me",
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
        .description = "The user draws\\nattention to itself,\\nmaking all foes take\\naim only at the user.\\n",
    },

    [MOVE_NATURE_POWER] = {
        .names = {
            .name = "Nature Power",
            .capsName = "NATURE POWER",
            .fullName = "Nature Power",
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
        .description = "An attack that makes\\nuse of nature’s\\npower. Its effects\\nvary depending on the\\nuser’s environment.",
    },

    [MOVE_CHARGE] = {
        .names = {
            .name = "Charge",
            .capsName = "CHARGE",
            .fullName = "Charge",
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
        .description = "The user boosts the\\npower of the Electric\\nmove it uses next.\\nIt also raises the\\nuser’s Sp. Def stat.",
    },

    [MOVE_TAUNT] = {
        .names = {
            .name = "Taunt",
            .capsName = "TAUNT",
            .fullName = "Taunt",
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
        .description = "The foe is taunted\\ninto a rage that\\nallows it to use only\\nattack moves for two\\nto four turns.",
    },

    [MOVE_HELPING_HAND] = {
        .names = {
            .name = "Helping Hand",
            .capsName = "HELPING HAND",
            .fullName = "Helping Hand",
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
        .description = "A move that boosts\\nthe power of the\\nally’s attack in a\\nDouble Battle.\\n",
    },

    [MOVE_TRICK] = {
        .names = {
            .name = "Trick",
            .capsName = "TRICK",
            .fullName = "Trick",
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
        .description = "The user catches the\\nfoe off guard and\\nswaps the foe’s held\\nitem with its own.\\n",
    },

    [MOVE_ROLE_PLAY] = {
        .names = {
            .name = "Role Play",
            .capsName = "ROLE PLAY",
            .fullName = "Role Play",
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
        .description = "The user mimics the\\nfoe completely,\\ncopying the foe’s\\nnatural ability.\\n",
    },

    [MOVE_WISH] = {
        .names = {
            .name = "Wish",
            .capsName = "WISH",
            .fullName = "Wish",
        },
        .data = {
            .effect = MOVE_EFFECT_HEAL_IN_3_TURNS,
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
            .flags = FLAG_SNATCH | FLAG_HIDE_SHADOW,
        },
        .contest = {
            .appeal = APPEAL_SUCCESSIVE,
            .contestType = CONTEST_CUTE,
        },
        .description = "A self-healing move.\\nThe user restores its\\nown HP by up to half\\nof its maximum HP\\nin the next turn.",
    },

    [MOVE_ASSIST] = {
        .names = {
            .name = "Assist",
            .capsName = "ASSIST",
            .fullName = "Assist",
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
        .description = "The user hurriedly\\nand randomly uses a\\nmove among those\\nknown by other\\nPokémon in the party.",
    },

    [MOVE_INGRAIN] = {
        .names = {
            .name = "Ingrain",
            .capsName = "INGRAIN",
            .fullName = "Ingrain",
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
        .description = "The user lays roots\\nthat restore HP on\\nevery turn.\\nBecause it is rooted,\\nit can’t switch out.",
    },

    [MOVE_SUPERPOWER] = {
        .names = {
            .name = "Superpower",
            .capsName = "SUPERPOWER",
            .fullName = "Superpower",
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
        .description = "The user attacks the\\nfoe with great power.\\nHowever, it also\\nlowers the user’s\\nAttack and Defense.",
    },

    [MOVE_MAGIC_COAT] = {
        .names = {
            .name = "Magic Coat",
            .capsName = "MAGIC COAT",
            .fullName = "Magic Coat",
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
        .description = "A barrier reflects\\nback to the foe\\nmoves like Leech\\nSeed and moves\\nthat damage status.",
    },

    [MOVE_RECYCLE] = {
        .names = {
            .name = "Recycle",
            .capsName = "RECYCLE",
            .fullName = "Recycle",
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
        .description = "The user recycles a\\nheld item that\\nhas been used in\\nbattle so it can be\\nused again.",
    },

    [MOVE_REVENGE] = {
        .names = {
            .name = "Revenge",
            .capsName = "REVENGE",
            .fullName = "Revenge",
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
        .description = "An attack move that\\ninflicts double the\\ndamage if the user\\nhas been hurt by the\\nfoe in the same turn.",
    },

    [MOVE_BRICK_BREAK] = {
        .names = {
            .name = "Brick Break",
            .capsName = "BRICK BREAK",
            .fullName = "Brick Break",
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
        .description = "The user attacks with\\ntough fists, etc. It\\ncan also break any\\nbarrier such as Light\\nScreen and Reflect.",
    },

    [MOVE_YAWN] = {
        .names = {
            .name = "Yawn",
            .capsName = "YAWN",
            .fullName = "Yawn",
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
        .description = "The user lets loose a\\nhuge yawn that lulls\\nthe foe into falling\\nasleep on the next\\nturn.",
    },

    [MOVE_KNOCK_OFF] = {
        .names = {
            .name = "Knock Off",
            .capsName = "KNOCK OFF",
            .fullName = "Knock Off",
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
        .description = "The user slaps down\\nthe foe’s held item,\\npreventing the item\\nfrom being used\\nduring the battle.",
    },

    [MOVE_ENDEAVOR] = {
        .names = {
            .name = "Endeavor",
            .capsName = "ENDEAVOR",
            .fullName = "Endeavor",
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
        .description = "An attack move that\\ncuts down the foe’s\\nHP to equal the\\nuser’s HP.\\n",
    },

    [MOVE_ERUPTION] = {
        .names = {
            .name = "Eruption",
            .capsName = "ERUPTION",
            .fullName = "Eruption",
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
        .description = "The user attacks in\\nan explosive fury.\\nThe lower the user’s\\nHP, the less powerful\\nthis attack becomes.",
    },

    [MOVE_SKILL_SWAP] = {
        .names = {
            .name = "Skill Swap",
            .capsName = "SKILL SWAP",
            .fullName = "Skill Swap",
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
        .description = "The user employs its\\npsychic power to\\nexchange abilities\\nwith the foe.\\n",
    },

    [MOVE_IMPRISON] = {
        .names = {
            .name = "Imprison",
            .capsName = "IMPRISON",
            .fullName = "Imprison",
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
        .description = "If the foe knows any\\nmove also known by\\nthe user, the foe\\nis prevented\\nfrom using it.",
    },

    [MOVE_REFRESH] = {
        .names = {
            .name = "Refresh",
            .capsName = "REFRESH",
            .fullName = "Refresh",
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
        .description = "The user rests\\nto cure itself of a\\npoisoning, burn, or\\nparalysis.\\n",
    },

    [MOVE_GRUDGE] = {
        .names = {
            .name = "Grudge",
            .capsName = "GRUDGE",
            .fullName = "Grudge",
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
        .description = "If the user faints,\\nthe user’s grudge\\nfully depletes the PP\\nof the foe’s move\\nthat knocked it out.",
    },

    [MOVE_SNATCH] = {
        .names = {
            .name = "Snatch",
            .capsName = "SNATCH",
            .fullName = "Snatch",
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
        .description = "The user steals the\\neffects of any\\nhealing or stat-\\nchanging move the foe\\nattempts to use.",
    },

    [MOVE_SECRET_POWER] = {
        .names = {
            .name = "Secret Power",
            .capsName = "SECRET POWER",
            .fullName = "Secret Power",
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
        .description = "The user attacks with\\na secret power. Its\\nadded effects vary\\ndepending on the\\nuser’s environment.",
    },

    [MOVE_DIVE] = {
        .names = {
            .name = "Dive",
            .capsName = "DIVE",
            .fullName = "Dive",
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
        .description = "A two-turn attack.\\nThe user dives\\nunderwater on the\\nfirst turn, then hits\\non the next turn.",
    },

    [MOVE_ARM_THRUST] = {
        .names = {
            .name = "Arm Thrust",
            .capsName = "ARM THRUST",
            .fullName = "Arm Thrust",
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
        .description = "The user looses a\\nflurry of open-palmed\\narm thrusts that hit\\ntwo to five times in a\\nrow.",
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
        .description = "The user’s type is\\nchanged depending on\\nits environment, such\\nas at water’s edge, in\\ngrass, or in a cave.",
    },

    [MOVE_TAIL_GLOW] = {
        .names = {
            .name = "Tail Glow",
            .capsName = "TAIL GLOW",
            .fullName = "Tail Glow",
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
        .description = "The user stares at\\nflashing lights to\\nfocus its mind,\\nsharply raising its\\nSp. Atk stat.",
    },

    [MOVE_LUSTER_PURGE] = {
        .names = {
            .name = "Luster Purge",
            .capsName = "LUSTER PURGE",
            .fullName = "Luster Purge",
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
        .description = "The user looses a\\ndamaging burst of\\nlight. It may also\\nreduce the target’s\\nSp. Def stat.",
    },

    [MOVE_MIST_BALL] = {
        .names = {
            .name = "Mist Ball",
            .capsName = "MIST BALL",
            .fullName = "Mist Ball",
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
        .description = "A mistlike flurry of\\ndown envelops and\\ndamages the foe. It\\nmay also lower the\\ntarget’s Sp. Atk.",
    },

    [MOVE_FEATHER_DANCE] = {
        .names = {
            .name = "Feather Dance",
            .capsName = "FEATHER DANCE",
            .fullName = "Feather Dance",
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
        .description = "The user covers the\\nfoe with a mass of\\ndown that sharply\\nlowers the Attack\\nstat.",
    },

    [MOVE_TEETER_DANCE] = {
        .names = {
            .name = "Teeter Dance",
            .capsName = "TEETER DANCE",
            .fullName = "Teeter Dance",
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
        .description = "The user performs a\\nwobbly dance that\\nconfuses all the\\nPokémon in battle.\\n",
    },

    [MOVE_BLAZE_KICK] = {
        .names = {
            .name = "Blaze Kick",
            .capsName = "BLAZE KICK",
            .fullName = "Blaze Kick",
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
        .description = "The user launches a\\nkick with a high\\ncritical-hit ratio.\\nIt may also leave the\\ntarget with a burn.",
    },

    [MOVE_MUD_SPORT] = {
        .names = {
            .name = "Mud Sport",
            .capsName = "MUD SPORT",
            .fullName = "Mud Sport",
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
        .description = "The user covers\\nitself with mud. It\\nweakens Electric-\\ntype moves while the\\nuser is in the battle.",
    },

    [MOVE_ICE_BALL] = {
        .names = {
            .name = "Ice Ball",
            .capsName = "ICE BALL",
            .fullName = "Ice Ball",
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
        .description = "The user continually\\nrolls into the foe\\nover five turns. It\\nbecomes stronger\\neach time it hits.",
    },

    [MOVE_NEEDLE_ARM] = {
        .names = {
            .name = "Needle Arm",
            .capsName = "NEEDLE ARM",
            .fullName = "Needle Arm",
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
        .description = "The user attacks by\\nwildly swinging its\\nthorny arms.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_SLACK_OFF] = {
        .names = {
            .name = "Slack Off",
            .capsName = "SLACK OFF",
            .fullName = "Slack Off",
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
        .description = "The user slacks off,\\nrestoring its own HP\\nby up to half of its\\nmaximum HP.\\n",
    },

    [MOVE_HYPER_VOICE] = {
        .names = {
            .name = "Hyper Voice",
            .capsName = "HYPER VOICE",
            .fullName = "Hyper Voice",
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
        .description = "The user lets loose\\na horribly echoing\\nshout with the\\npower to inflict\\ndamage.",
    },

    [MOVE_POISON_FANG] = {
        .names = {
            .name = "Poison Fang",
            .capsName = "POISON FANG",
            .fullName = "Poison Fang",
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
        .description = "The user bites the\\nfoe with toxic fangs.\\nIt may also leave the\\nfoe badly poisoned.\\n",
    },

    [MOVE_CRUSH_CLAW] = {
        .names = {
            .name = "Crush Claw",
            .capsName = "CRUSH CLAW",
            .fullName = "Crush Claw",
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
        .description = "The user slashes the\\nfoe with hard and\\nsharp claws.\\nIt may also lower the\\ntarget’s Defense.",
    },

    [MOVE_BLAST_BURN] = {
        .names = {
            .name = "Blast Burn",
            .capsName = "BLAST BURN",
            .fullName = "Blast Burn",
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
        .description = "The foe is razed by\\na fiery explosion.\\nThe user must rest\\non the next turn,\\nhowever.",
    },

    [MOVE_HYDRO_CANNON] = {
        .names = {
            .name = "Hydro Cannon",
            .capsName = "HYDRO CANNON",
            .fullName = "Hydro Cannon",
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
        .description = "The foe is hit with\\na watery blast.\\nThe user must rest\\non the next turn,\\nhowever.",
    },

    [MOVE_METEOR_MASH] = {
        .names = {
            .name = "Meteor Mash",
            .capsName = "METEOR MASH",
            .fullName = "Meteor Mash",
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
        .description = "The foe is hit with a\\nhard punch fired\\nlike a meteor.\\nIt may also raise\\nthe user’s Attack.",
    },

    [MOVE_ASTONISH] = {
        .names = {
            .name = "Astonish",
            .capsName = "ASTONISH",
            .fullName = "Astonish",
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
        .description = "The user attacks the\\nfoe while shouting in\\na startling fashion.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_WEATHER_BALL] = {
        .names = {
            .name = "Weather Ball",
            .capsName = "WEATHER BALL",
            .fullName = "Weather Ball",
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
        .description = "An attack move that\\nvaries in power and\\ntype depending on\\nthe weather.\\n",
    },

    [MOVE_AROMATHERAPY] = {
        .names = {
            .name = "Aromatherapy",
            .capsName = "AROMATHERAPY",
            .fullName = "Aromatherapy",
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
        .description = "The user releases a\\nsoothing scent that\\nheals all status\\nproblems affecting\\nthe user’s party.",
    },

    [MOVE_FAKE_TEARS] = {
        .names = {
            .name = "Fake Tears",
            .capsName = "FAKE TEARS",
            .fullName = "Fake Tears",
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
        .description = "The user feigns\\ncrying to make the\\nfoe feel flustered,\\nsharply lowering its\\nSp. Def stat.",
    },

    [MOVE_AIR_CUTTER] = {
        .names = {
            .name = "Air Cutter",
            .capsName = "AIR CUTTER",
            .fullName = "Air Cutter",
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
        .description = "The user launches\\nrazorlike wind to\\nslash the foe.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_OVERHEAT] = {
        .names = {
            .name = "Overheat",
            .capsName = "OVERHEAT",
            .fullName = "Overheat",
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
        .description = "The user attacks the\\nfoe at full power.\\nThe attack’s recoil\\nsharply reduces the\\nuser’s Sp. Atk stat.",
    },

    [MOVE_ODOR_SLEUTH] = {
        .names = {
            .name = "Odor Sleuth",
            .capsName = "ODOR SLEUTH",
            .fullName = "Odor Sleuth",
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
        .description = "Enables the user to\\nhit a Ghost type with\\nany type of move. It\\nalso enables the user\\nto hit an evasive foe.",
    },

    [MOVE_ROCK_TOMB] = {
        .names = {
            .name = "Rock Tomb",
            .capsName = "ROCK TOMB",
            .fullName = "Rock Tomb",
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
        .description = "Boulders are hurled\\nat the foe. It also\\nlowers the foe’s\\nSpeed by preventing\\nits movement.",
    },

    [MOVE_SILVER_WIND] = {
        .names = {
            .name = "Silver Wind",
            .capsName = "SILVER WIND",
            .fullName = "Silver Wind",
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
        .description = "The foe is attacked\\nwith powdery scales\\nblown by wind.\\nIt may also raise all\\nthe user’s stats.",
    },

    [MOVE_METAL_SOUND] = {
        .names = {
            .name = "Metal Sound",
            .capsName = "METAL SOUND",
            .fullName = "Metal Sound",
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
        .description = "A horrible sound like\\nscraping metal is\\nemitted to sharply\\nreduce the foe’s\\nSp. Def stat.",
    },

    [MOVE_GRASS_WHISTLE] = {
        .names = {
            .name = "Grass Whistle",
            .capsName = "GRASS WHISTLE",
            .fullName = "Grass Whistle",
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
        .description = "The user plays a\\npleasant melody that\\nlulls the foe into a\\ndeep sleep.\\n",
    },

    [MOVE_TICKLE] = {
        .names = {
            .name = "Tickle",
            .capsName = "TICKLE",
            .fullName = "Tickle",
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
        .description = "The user tickles the\\nfoe into laughing,\\nreducing its Attack\\nand Defense stats.\\n",
    },

    [MOVE_COSMIC_POWER] = {
        .names = {
            .name = "Cosmic Power",
            .capsName = "COSMIC POWER",
            .fullName = "Cosmic Power",
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
        .description = "The user absorbs a\\nmystical power from\\nspace to raise its\\nDefense and Sp. Def\\nstats.",
    },

    [MOVE_WATER_SPOUT] = {
        .names = {
            .name = "Water Spout",
            .capsName = "WATER SPOUT",
            .fullName = "Water Spout",
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
        .description = "The user spouts\\nwater to damage the\\nfoe. The lower the\\nuser’s HP, the less\\npowerful it becomes.",
    },

    [MOVE_SIGNAL_BEAM] = {
        .names = {
            .name = "Signal Beam",
            .capsName = "SIGNAL BEAM",
            .fullName = "Signal Beam",
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
        .description = "The user attacks with\\na sinister beam of\\nlight. It may also\\nconfuse the target.\\n",
    },

    [MOVE_SHADOW_PUNCH] = {
        .names = {
            .name = "Shadow Punch",
            .capsName = "SHADOW PUNCH",
            .fullName = "Shadow Punch",
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
        .description = "The user throws a\\npunch at the foe from\\nthe shadows.\\nThe punch lands\\nwithout fail.",
    },

    [MOVE_EXTRASENSORY] = {
        .names = {
            .name = "Extrasensory",
            .capsName = "EXTRASENSORY",
            .fullName = "Extrasensory",
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
        .description = "The user attacks with\\nan odd, unseeable\\npower.\\nIt may also make the\\nfoe flinch.",
    },

    [MOVE_SKY_UPPERCUT] = {
        .names = {
            .name = "Sky Uppercut",
            .capsName = "SKY UPPERCUT",
            .fullName = "Sky Uppercut",
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
        .description = "The user attacks the\\nfoe with an uppercut\\nthrown skyward\\nwith force.\\n",
    },

    [MOVE_SAND_TOMB] = {
        .names = {
            .name = "Sand Tomb",
            .capsName = "SAND TOMB",
            .fullName = "Sand Tomb",
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
        .description = "The user traps the\\nfoe inside a harshly\\nraging sandstorm for\\ntwo to five turns.\\n",
    },

    [MOVE_SHEER_COLD] = {
        .names = {
            .name = "Sheer Cold",
            .capsName = "SHEER COLD",
            .fullName = "Sheer Cold",
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
        .description = "The foe is attacked\\nwith a blast of\\nabsolute-zero cold.\\nThe foe instantly\\nfaints if it hits.",
    },

    [MOVE_MUDDY_WATER] = {
        .names = {
            .name = "Muddy Water",
            .capsName = "MUDDY WATER",
            .fullName = "Muddy Water",
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
        .description = "The user attacks by\\nshooting out muddy\\nwater.\\nIt may also lower the\\nfoe’s accuracy.",
    },

    [MOVE_BULLET_SEED] = {
        .names = {
            .name = "Bullet Seed",
            .capsName = "BULLET SEED",
            .fullName = "Bullet Seed",
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
        .description = "The user forcefully\\nshoots seeds at the\\nfoe. Two to five\\nseeds are shot in\\nrapid succession.",
    },

    [MOVE_AERIAL_ACE] = {
        .names = {
            .name = "Aerial Ace",
            .capsName = "AERIAL ACE",
            .fullName = "Aerial Ace",
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
        .description = "The user confounds\\nthe foe with speed,\\nthen slashes.\\nThe attack lands\\nwithout fail.",
    },

    [MOVE_ICICLE_SPEAR] = {
        .names = {
            .name = "Icicle Spear",
            .capsName = "ICICLE SPEAR",
            .fullName = "Icicle Spear",
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
        .description = "The user launches\\nsharp icicles at the\\nfoe. It strikes two\\nto five times in a\\nrow.",
    },

    [MOVE_IRON_DEFENSE] = {
        .names = {
            .name = "Iron Defense",
            .capsName = "IRON DEFENSE",
            .fullName = "Iron Defense",
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
        .description = "The user hardens\\nits body’s surface\\nlike iron, sharply\\nraising its Defense\\nstat.",
    },

    [MOVE_BLOCK] = {
        .names = {
            .name = "Block",
            .capsName = "BLOCK",
            .fullName = "Block",
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
        .description = "The user blocks the\\nfoe’s way with arms\\nspread wide to\\nprevent escape.\\n",
    },

    [MOVE_HOWL] = {
        .names = {
            .name = "Howl",
            .capsName = "HOWL",
            .fullName = "Howl",
        },
        .data = {
            .effect = MOVE_EFFECT_ATK_UP,
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
            .flags = FLAG_SNATCH,
        },
        .contest = {
            .appeal = APPEAL_DOUBLE_NEXT_SCORE,
            .contestType = CONTEST_COOL,
        },
        .description = "The user howls loudly\\nto raise its spirit,\\nboosting its Attack\\nstat.\\n",
    },

    [MOVE_DRAGON_CLAW] = {
        .names = {
            .name = "Dragon Claw",
            .capsName = "DRAGON CLAW",
            .fullName = "Dragon Claw",
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
        .description = "The user slashes the\\nfoe with huge, sharp\\nclaws.\\n\\n",
    },

    [MOVE_FRENZY_PLANT] = {
        .names = {
            .name = "Frenzy Plant",
            .capsName = "FRENZY PLANT",
            .fullName = "Frenzy Plant",
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
        .description = "The foe is slammed\\nwith an enormous\\ntree.\\nThe user can’t move\\non the next turn.",
    },

    [MOVE_BULK_UP] = {
        .names = {
            .name = "Bulk Up",
            .capsName = "BULK UP",
            .fullName = "Bulk Up",
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
        .description = "The user tenses its\\nmuscles to bulk up\\nits body, boosting\\nboth its Attack and\\nDefense stats.",
    },

    [MOVE_BOUNCE] = {
        .names = {
            .name = "Bounce",
            .capsName = "BOUNCE",
            .fullName = "Bounce",
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
        .description = "The user bounces up\\nhigh, then drops on\\nthe foe on the second\\nturn. It may also\\nparalyze the foe.",
    },

    [MOVE_MUD_SHOT] = {
        .names = {
            .name = "Mud Shot",
            .capsName = "MUD SHOT",
            .fullName = "Mud Shot",
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
        .description = "The user attacks by\\nhurling a blob of mud\\nat the foe.\\nIt also reduces the\\ntarget’s Speed.",
    },

    [MOVE_POISON_TAIL] = {
        .names = {
            .name = "Poison Tail",
            .capsName = "POISON TAIL",
            .fullName = "Poison Tail",
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
        .description = "An attack with a\\nhigh critical-hit\\nratio. This tail \\nattack may also \\npoison the foe.",
    },

    [MOVE_COVET] = {
        .names = {
            .name = "Covet",
            .capsName = "COVET",
            .fullName = "Covet",
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
        .description = "The user endearingly\\napproaches the foe,\\nthen steals the item\\nthe foe is holding.\\n",
    },

    [MOVE_VOLT_TACKLE] = {
        .names = {
            .name = "Volt Tackle",
            .capsName = "VOLT TACKLE",
            .fullName = "Volt Tackle",
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
        .description = "The user electrifies\\nitself, then charges\\nat the foe. It causes\\nconsiderable damage\\nto the user as well.",
    },

    [MOVE_MAGICAL_LEAF] = {
        .names = {
            .name = "Magical Leaf",
            .capsName = "MAGICAL LEAF",
            .fullName = "Magical Leaf",
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
        .description = "The user scatters\\ncurious leaves that\\nchase the foe.\\nThis attack will not\\nmiss.",
    },

    [MOVE_WATER_SPORT] = {
        .names = {
            .name = "Water Sport",
            .capsName = "WATER SPORT",
            .fullName = "Water Sport",
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
        .description = "The user soaks itself\\nwith water. The move\\nweakens Fire-type\\nmoves while the user\\nis in the battle.",
    },

    [MOVE_CALM_MIND] = {
        .names = {
            .name = "Calm Mind",
            .capsName = "CALM MIND",
            .fullName = "Calm Mind",
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
        .description = "The user quietly\\nfocuses its mind and\\ncalms its spirit to\\nraise its Sp. Atk and\\nSp. Def stats.",
    },

    [MOVE_LEAF_BLADE] = {
        .names = {
            .name = "Leaf Blade",
            .capsName = "LEAF BLADE",
            .fullName = "Leaf Blade",
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
        .description = "The foe is slashed\\nwith a sharp leaf.\\nIt has a high\\ncritical-hit ratio.\\n",
    },

    [MOVE_DRAGON_DANCE] = {
        .names = {
            .name = "Dragon Dance",
            .capsName = "DRAGON DANCE",
            .fullName = "Dragon Dance",
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
        .description = "The user vigorously\\nperforms a mystic,\\npowerful dance that\\nboosts its Attack and\\nSpeed stats.",
    },

    [MOVE_ROCK_BLAST] = {
        .names = {
            .name = "Rock Blast",
            .capsName = "ROCK BLAST",
            .fullName = "Rock Blast",
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
        .description = "The user hurls hard\\nrocks at the foe.\\nTwo to five rocks are\\nlaunched in quick\\nsuccession.",
    },

    [MOVE_SHOCK_WAVE] = {
        .names = {
            .name = "Shock Wave",
            .capsName = "SHOCK WAVE",
            .fullName = "Shock Wave",
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
        .description = "The user strikes the\\nfoe with a quick jolt\\nof electricity.\\nThis attack cannot be\\nevaded.",
    },

    [MOVE_WATER_PULSE] = {
        .names = {
            .name = "Water Pulse",
            .capsName = "WATER PULSE",
            .fullName = "Water Pulse",
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
        .description = "The user attacks the\\nfoe with a pulsing\\nblast of water.\\nIt may also confuse\\nthe foe.",
    },

    [MOVE_DOOM_DESIRE] = {
        .names = {
            .name = "Doom Desire",
            .capsName = "DOOM DESIRE",
            .fullName = "Doom Desire",
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
        .description = "Two turns after this\\nmove is used, the\\nuser blasts the foe\\nwith a concentrated\\nbundle of light.",
    },

    [MOVE_PSYCHO_BOOST] = {
        .names = {
            .name = "Psycho Boost",
            .capsName = "PSYCHO BOOST",
            .fullName = "Psycho Boost",
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
        .description = "The user attacks the\\nfoe at full power.\\nThe attack’s recoil\\nsharply reduces the\\nuser’s Sp. Atk stat.",
    },

    [MOVE_ROOST] = {
        .names = {
            .name = "Roost",
            .capsName = "ROOST",
            .fullName = "Roost",
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
        .description = "The user lands and\\nrests its body.\\nIt restores the\\nuser’s HP by up to\\nhalf of its max HP.",
    },

    [MOVE_GRAVITY] = {
        .names = {
            .name = "Gravity",
            .capsName = "GRAVITY",
            .fullName = "Gravity",
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
        .description = "Gravity is intensified\\nfor five turns, making\\nmoves involving flying\\nunusable and\\nnegating Levitation.",
    },

    [MOVE_MIRACLE_EYE] = {
        .names = {
            .name = "Miracle Eye",
            .capsName = "MIRACLE EYE",
            .fullName = "Miracle Eye",
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
        .description = "Enables the user to\\nhit a Dark type with\\nany type of move. It\\nalso enables the user\\nto hit an evasive foe.",
    },

    [MOVE_WAKE_UP_SLAP] = {
        .names = {
            .name = "Wake-Up Slap",
            .capsName = "WAKE-UP SLAP",
            .fullName = "Wake-Up Slap",
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
        .description = "This attack inflicts\\nhigh damage on a\\nsleeping foe. It\\nalso wakes the foe\\nup, however.",
    },

    [MOVE_HAMMER_ARM] = {
        .names = {
            .name = "Hammer Arm",
            .capsName = "HAMMER ARM",
            .fullName = "Hammer Arm",
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
        .description = "The user swings and\\nhits with its strong\\nand heavy fist.\\nIt lowers the user’s\\nSpeed, however.",
    },

    [MOVE_GYRO_BALL] = {
        .names = {
            .name = "Gyro Ball",
            .capsName = "GYRO BALL",
            .fullName = "Gyro Ball",
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
        .description = "The user tackles the\\nfoe with a high-speed\\nspin. The slower the\\nuser, the greater\\nthe damage.",
    },

    [MOVE_HEALING_WISH] = {
        .names = {
            .name = "Healing Wish",
            .capsName = "HEALING WISH",
            .fullName = "Healing Wish",
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
        .description = "The user faints. In\\nreturn, the Pokémon\\ntaking its place will\\nhave its HP restored\\nand status cured.",
    },

    [MOVE_BRINE] = {
        .names = {
            .name = "Brine",
            .capsName = "BRINE",
            .fullName = "Brine",
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
        .description = "If the foe’s HP is\\ndown to about half,\\nthis attack will hit\\nwith double the\\npower.",
    },

    [MOVE_NATURAL_GIFT] = {
        .names = {
            .name = "Natural Gift",
            .capsName = "NATURAL GIFT",
            .fullName = "Natural Gift",
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
        .description = "The user draws power\\nto attack by using\\nits held Berry.\\nThe Berry determines\\nits type and power.",
    },

    [MOVE_FEINT] = {
        .names = {
            .name = "Feint",
            .capsName = "FEINT",
            .fullName = "Feint",
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
        .description = "An attack that hits a\\nfoe using Protect or\\nDetect. It also lifts\\nthe effects of those\\nmoves.",
    },

    [MOVE_PLUCK] = {
        .names = {
            .name = "Pluck",
            .capsName = "PLUCK",
            .fullName = "Pluck",
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
        .description = "The user pecks the\\nfoe. If the foe is\\nholding a Berry, the\\nuser plucks it and\\ngains its effect.",
    },

    [MOVE_TAILWIND] = {
        .names = {
            .name = "Tailwind",
            .capsName = "TAILWIND",
            .fullName = "Tailwind",
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
        .description = "The user whips up a\\nturbulent whirlwind\\nthat ups the Speed\\nof all party Pokémon\\nfor three turns.",
    },

    [MOVE_ACUPRESSURE] = {
        .names = {
            .name = "Acupressure",
            .capsName = "ACUPRESSURE",
            .fullName = "Acupressure",
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
        .description = "The user applies\\npressure to stress\\npoints, sharply\\nboosting one of its\\nstats.",
    },

    [MOVE_METAL_BURST] = {
        .names = {
            .name = "Metal Burst",
            .capsName = "METAL BURST",
            .fullName = "Metal Burst",
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
        .description = "The user retaliates\\nagainst the foe that\\nlast inflicted damage\\non it with much\\ngreater power.",
    },

    [MOVE_U_TURN] = {
        .names = {
            .name = "U-turn",
            .capsName = "U-TURN",
            .fullName = "U-turn",
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
        .description = "After making its\\nattack, the user\\nrushes back to switch\\nplaces with a party\\nPokémon in waiting.",
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
        .description = "The user fights the\\nfoe up close without\\nguarding itself. It\\nalso cuts the user’s\\nDefense and Sp. Def.",
    },

    [MOVE_PAYBACK] = {
        .names = {
            .name = "Payback",
            .capsName = "PAYBACK",
            .fullName = "Payback",
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
        .description = "If the user can use\\nthis attack after the\\nfoe attacks, its\\npower is doubled.\\n",
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
        .description = "If the foe has\\nalready taken some\\ndamage in the same\\nturn, this attack’s\\npower is doubled.",
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
        .description = "It prevents the foe\\nfrom using its held\\nitem. Its Trainer is\\nalso prevented from\\nusing items on it.",
    },

    [MOVE_FLING] = {
        .names = {
            .name = "Fling",
            .capsName = "FLING",
            .fullName = "Fling",
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
        .description = "The user flings its\\nheld item at the foe\\nto attack. Its power\\nand effects depend\\non the item.",
    },

    [MOVE_PSYCHO_SHIFT] = {
        .names = {
            .name = "Psycho Shift",
            .capsName = "PSYCHO SHIFT",
            .fullName = "Psycho Shift",
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
        .description = "Using its psychic\\npower of suggestion,\\nthe user transfers\\nits status problems\\nto the target.",
    },

    [MOVE_TRUMP_CARD] = {
        .names = {
            .name = "Trump Card",
            .capsName = "TRUMP CARD",
            .fullName = "Trump Card",
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
        .description = "The fewer PP this\\nmove has, the more\\npower it has for\\nattack.\\n",
    },

    [MOVE_HEAL_BLOCK] = {
        .names = {
            .name = "Heal Block",
            .capsName = "HEAL BLOCK",
            .fullName = "Heal Block",
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
        .description = "The user prevents\\nthe foe from using\\nany HP-recovery\\nmoves for five turns.\\n",
    },

    [MOVE_WRING_OUT] = {
        .names = {
            .name = "Wring Out",
            .capsName = "WRING OUT",
            .fullName = "Wring Out",
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
        .description = "The user powerfully\\nwrings the foe.\\nThe more HP the foe\\nhas, the greater this\\nattack’s power.",
    },

    [MOVE_POWER_TRICK] = {
        .names = {
            .name = "Power Trick",
            .capsName = "POWER TRICK",
            .fullName = "Power Trick",
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
        .description = "The user employs its\\npsychic power to\\nswitch its Attack\\nwith its Defense\\nstat.",
    },

    [MOVE_GASTRO_ACID] = {
        .names = {
            .name = "Gastro Acid",
            .capsName = "GASTRO ACID",
            .fullName = "Gastro Acid",
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
        .description = "The user hurls up its\\nstomach acids on\\nthe foe. The fluid\\neliminates the effect\\nof the foe’s ability.",
    },

    [MOVE_LUCKY_CHANT] = {
        .names = {
            .name = "Lucky Chant",
            .capsName = "LUCKY CHANT",
            .fullName = "Lucky Chant",
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
        .description = "The user chants an\\nincantation toward\\nthe sky, preventing\\nthe foe from landing\\ncritical hits.",
    },

    [MOVE_ME_FIRST] = {
        .names = {
            .name = "Me First",
            .capsName = "ME FIRST",
            .fullName = "Me First",
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
        .description = "The user tries to cut\\nahead of the foe to\\nsteal and use the\\nfoe’s intended move\\nwith greater power.",
    },

    [MOVE_COPYCAT] = {
        .names = {
            .name = "Copycat",
            .capsName = "COPYCAT",
            .fullName = "Copycat",
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
        .description = "The user mimics the\\nmove used immediately\\nbefore it. The move\\nfails if no other move\\nhas been used yet.",
    },

    [MOVE_POWER_SWAP] = {
        .names = {
            .name = "Power Swap",
            .capsName = "POWER SWAP",
            .fullName = "Power Swap",
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
        .description = "The user employs its\\npsychic power to\\nswitch changes to\\nits Attack and\\nSp. Atk with the foe.",
    },

    [MOVE_GUARD_SWAP] = {
        .names = {
            .name = "Guard Swap",
            .capsName = "GUARD SWAP",
            .fullName = "Guard Swap",
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
        .description = "The user employs its\\npsychic power to\\nswitch changes to\\nits Defense and\\nSp. Def with the foe.",
    },

    [MOVE_PUNISHMENT] = {
        .names = {
            .name = "Punishment",
            .capsName = "PUNISHMENT",
            .fullName = "Punishment",
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
        .description = "This attack’s power\\nincreases the more\\nthe foe has powered\\nup with stat changes.\\n",
    },

    [MOVE_LAST_RESORT] = {
        .names = {
            .name = "Last Resort",
            .capsName = "LAST RESORT",
            .fullName = "Last Resort",
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
        .description = "This move can be used\\nonly after the user\\nhas used all the\\nother moves it knows\\nin the battle.",
    },

    [MOVE_WORRY_SEED] = {
        .names = {
            .name = "Worry Seed",
            .capsName = "WORRY SEED",
            .fullName = "Worry Seed",
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
        .description = "A seed that causes\\nworry is planted on\\nthe foe. It prevents\\nsleep by making its\\nability Insomnia.",
    },

    [MOVE_SUCKER_PUNCH] = {
        .names = {
            .name = "Sucker Punch",
            .capsName = "SUCKER PUNCH",
            .fullName = "Sucker Punch",
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
        .description = "This move enables the\\nuser to attack first.\\nIt fails if the foe is\\nnot readying an\\nattack, however.",
    },

    [MOVE_TOXIC_SPIKES] = {
        .names = {
            .name = "Toxic Spikes",
            .capsName = "TOXIC SPIKES",
            .fullName = "Toxic Spikes",
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
        .description = "The user lays a trap\\nof poison spikes at\\nthe foe’s feet. They\\npoison foes that\\nswitch into battle.",
    },

    [MOVE_HEART_SWAP] = {
        .names = {
            .name = "Heart Swap",
            .capsName = "HEART SWAP",
            .fullName = "Heart Swap",
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
        .description = "The user employs its\\npsychic power to\\nswitch stat changes\\nwith the foe.\\n",
    },

    [MOVE_AQUA_RING] = {
        .names = {
            .name = "Aqua Ring",
            .capsName = "AQUA RING",
            .fullName = "Aqua Ring",
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
        .description = "The user envelops\\nitself in a veil made\\nof water. It regains\\nsome HP on every\\nturn.",
    },

    [MOVE_MAGNET_RISE] = {
        .names = {
            .name = "Magnet Rise",
            .capsName = "MAGNET RISE",
            .fullName = "Magnet Rise",
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
        .description = "The user levitates\\nusing electrically\\ngenerated magnetism\\nfor five turns.\\n",
    },

    [MOVE_FLARE_BLITZ] = {
        .names = {
            .name = "Flare Blitz",
            .capsName = "FLARE BLITZ",
            .fullName = "Flare Blitz",
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
        .description = "The user cloaks\\nitself in fire and\\ncharges at the foe.\\nThe user sustains\\nserious damage, too.",
    },

    [MOVE_FORCE_PALM] = {
        .names = {
            .name = "Force Palm",
            .capsName = "FORCE PALM",
            .fullName = "Force Palm",
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
        .description = "The foe is attacked\\nwith a shock wave.\\nIt may also leave the\\ntarget paralyzed.\\n",
    },

    [MOVE_AURA_SPHERE] = {
        .names = {
            .name = "Aura Sphere",
            .capsName = "AURA SPHERE",
            .fullName = "Aura Sphere",
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
        .description = "The user looses a\\nblast of aura power\\nfrom deep within its\\nbody. This move is\\ncertain to hit.",
    },

    [MOVE_ROCK_POLISH] = {
        .names = {
            .name = "Rock Polish",
            .capsName = "ROCK POLISH",
            .fullName = "Rock Polish",
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
        .description = "The user polishes its\\nbody to reduce drag.\\nIt can sharply raise\\nthe Speed stat.\\n",
    },

    [MOVE_POISON_JAB] = {
        .names = {
            .name = "Poison Jab",
            .capsName = "POISON JAB",
            .fullName = "Poison Jab",
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
        .description = "The foe is stabbed\\nwith a tentacle or\\narm steeped in\\npoison. It may also\\npoison the foe.",
    },

    [MOVE_DARK_PULSE] = {
        .names = {
            .name = "Dark Pulse",
            .capsName = "DARK PULSE",
            .fullName = "Dark Pulse",
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
        .description = "The user releases a\\nhorrible aura imbued\\nwith dark thoughts.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_NIGHT_SLASH] = {
        .names = {
            .name = "Night Slash",
            .capsName = "NIGHT SLASH",
            .fullName = "Night Slash",
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
        .description = "The user slashes the\\nfoe the instant an\\nopportunity arises.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_AQUA_TAIL] = {
        .names = {
            .name = "Aqua Tail",
            .capsName = "AQUA TAIL",
            .fullName = "Aqua Tail",
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
        .description = "The user attacks by\\nswinging its tail as if\\nit were a vicious wave\\nin a raging storm.\\n",
    },

    [MOVE_SEED_BOMB] = {
        .names = {
            .name = "Seed Bomb",
            .capsName = "SEED BOMB",
            .fullName = "Seed Bomb",
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
        .description = "The user slams a\\nbarrage of hard-\\nshelled seeds\\ndown on the foe\\nfrom above.",
    },

    [MOVE_AIR_SLASH] = {
        .names = {
            .name = "Air Slash",
            .capsName = "AIR SLASH",
            .fullName = "Air Slash",
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
        .description = "The user attacks with\\na blade of air that\\nslices even the sky.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_X_SCISSOR] = {
        .names = {
            .name = "X-Scissor",
            .capsName = "X-SCISSOR",
            .fullName = "X-Scissor",
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
        .description = "The user slashes at\\nthe foe by crossing\\nits scythes or claws\\nas if they were a pair\\nof scissors.",
    },

    [MOVE_BUG_BUZZ] = {
        .names = {
            .name = "Bug Buzz",
            .capsName = "BUG BUZZ",
            .fullName = "Bug Buzz",
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
        .description = "The user vibrates its\\nwings to generate a\\ndamaging sound wave.\\nIt may also lower the\\nfoe’s Sp. Def stat.",
    },

    [MOVE_DRAGON_PULSE] = {
        .names = {
            .name = "Dragon Pulse",
            .capsName = "DRAGON PULSE",
            .fullName = "Dragon Pulse",
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
        .description = "The foe is attacked\\nwith a shock wave\\ngenerated by the\\nuser’s gaping mouth.\\n",
    },

    [MOVE_DRAGON_RUSH] = {
        .names = {
            .name = "Dragon Rush",
            .capsName = "DRAGON RUSH",
            .fullName = "Dragon Rush",
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
        .description = "The user tackles the\\nfoe while exhibiting\\noverwhelming menace.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_POWER_GEM] = {
        .names = {
            .name = "Power Gem",
            .capsName = "POWER GEM",
            .fullName = "Power Gem",
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
        .description = "The user attacks with\\na ray of light that\\nsparkles as if it were\\nmade of gemstones.\\n",
    },

    [MOVE_DRAIN_PUNCH] = {
        .names = {
            .name = "Drain Punch",
            .capsName = "DRAIN PUNCH",
            .fullName = "Drain Punch",
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
        .description = "An energy-draining\\npunch. The user’s\\nHP is restored by\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_VACUUM_WAVE] = {
        .names = {
            .name = "Vacuum Wave",
            .capsName = "VACUUM WAVE",
            .fullName = "Vacuum Wave",
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
        .description = "The user whirls its\\nfists to send a wave\\nof pure vacuum at\\nthe foe. This move\\nalways goes first.",
    },

    [MOVE_FOCUS_BLAST] = {
        .names = {
            .name = "Focus Blast",
            .capsName = "FOCUS BLAST",
            .fullName = "Focus Blast",
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
        .description = "The user heightens\\nits mental focus and\\nunleashes its power.\\nIt may also lower the\\ntarget’s Sp. Def.",
    },

    [MOVE_ENERGY_BALL] = {
        .names = {
            .name = "Energy Ball",
            .capsName = "ENERGY BALL",
            .fullName = "Energy Ball",
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
        .description = "The user draws power\\nfrom nature and\\nfires it at the foe.\\nIt may also lower the\\ntarget’s Sp. Def.",
    },

    [MOVE_BRAVE_BIRD] = {
        .names = {
            .name = "Brave Bird",
            .capsName = "BRAVE BIRD",
            .fullName = "Brave Bird",
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
        .description = "The user tucks in\\nits wings and charges\\nfrom a low altitude.\\nThe user also takes\\nserious damage.",
    },

    [MOVE_EARTH_POWER] = {
        .names = {
            .name = "Earth Power",
            .capsName = "EARTH POWER",
            .fullName = "Earth Power",
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
        .description = "The user makes the\\nground under the foe\\nerupt with power.\\nIt may also lower the\\ntarget’s Sp. Def.",
    },

    [MOVE_SWITCHEROO] = {
        .names = {
            .name = "Switcheroo",
            .capsName = "SWITCHEROO",
            .fullName = "Switcheroo",
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
        .description = "The user trades held\\nitems with the foe\\nfaster than the eye\\ncan follow.\\n",
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
        .description = "The user charges at\\nthe foe using every\\nbit of its power.\\nThe user must rest\\non the next turn.",
    },

    [MOVE_NASTY_PLOT] = {
        .names = {
            .name = "Nasty Plot",
            .capsName = "NASTY PLOT",
            .fullName = "Nasty Plot",
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
        .description = "The user stimulates\\nits brain by thinking\\nbad thoughts.\\nIt sharply raises the\\nuser’s Sp. Atk.",
    },

    [MOVE_BULLET_PUNCH] = {
        .names = {
            .name = "Bullet Punch",
            .capsName = "BULLET PUNCH",
            .fullName = "Bullet Punch",
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
        .description = "The user strikes\\nwith a tough punch as\\nfast as a bullet.\\nThis move always goes\\nfirst.",
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
        .description = "An attack move that\\ninflicts double the\\ndamage if the user\\nhas been hurt by the\\nfoe in the same turn.",
    },

    [MOVE_ICE_SHARD] = {
        .names = {
            .name = "Ice Shard",
            .capsName = "ICE SHARD",
            .fullName = "Ice Shard",
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
        .description = "The user flash\\nfreezes chunks of\\nice and hurls them.\\nThis move always goes\\nfirst.",
    },

    [MOVE_SHADOW_CLAW] = {
        .names = {
            .name = "Shadow Claw",
            .capsName = "SHADOW CLAW",
            .fullName = "Shadow Claw",
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
        .description = "The user slashes with\\na sharp claw made\\nfrom shadows.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_THUNDER_FANG] = {
        .names = {
            .name = "Thunder Fang",
            .capsName = "THUNDER FANG",
            .fullName = "Thunder Fang",
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
        .description = "The user bites with\\nelectrified fangs.\\nIt may also make the\\nfoe flinch or become\\nparalyzed.",
    },

    [MOVE_ICE_FANG] = {
        .names = {
            .name = "Ice Fang",
            .capsName = "ICE FANG",
            .fullName = "Ice Fang",
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
        .description = "The user bites with\\ncold-infused fangs.\\nIt may also make the\\nfoe flinch or freeze.\\n",
    },

    [MOVE_FIRE_FANG] = {
        .names = {
            .name = "Fire Fang",
            .capsName = "FIRE FANG",
            .fullName = "Fire Fang",
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
        .description = "The user bites with\\nflame-cloaked fangs.\\nIt may also make the\\nfoe flinch or sustain\\na burn.",
    },

    [MOVE_SHADOW_SNEAK] = {
        .names = {
            .name = "Shadow Sneak",
            .capsName = "SHADOW SNEAK",
            .fullName = "Shadow Sneak",
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
        .description = "The user extends its\\nshadow and attacks\\nthe foe from behind.\\nThis move always goes\\nfirst.",
    },

    [MOVE_MUD_BOMB] = {
        .names = {
            .name = "Mud Bomb",
            .capsName = "MUD BOMB",
            .fullName = "Mud Bomb",
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
        .description = "The user launches a\\nhard-packed mud ball\\nto attack.\\nIt may also lower the\\ntarget’s accuracy.",
    },

    [MOVE_PSYCHO_CUT] = {
        .names = {
            .name = "Psycho Cut",
            .capsName = "PSYCHO CUT",
            .fullName = "Psycho Cut",
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
        .description = "The user tears at\\nthe foe with blades\\nformed by psychic\\npower. It has a high\\ncritical-hit ratio.",
    },

    [MOVE_ZEN_HEADBUTT] = {
        .names = {
            .name = "Zen Headbutt",
            .capsName = "ZEN HEADBUTT",
            .fullName = "Zen Headbutt",
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
        .description = "The user focuses its\\nwillpower to its head\\nand rams the foe.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_MIRROR_SHOT] = {
        .names = {
            .name = "Mirror Shot",
            .capsName = "MIRROR SHOT",
            .fullName = "Mirror Shot",
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
        .description = "The user looses a\\nflash of energy from\\nits polished body.\\nIt may also lower the\\ntarget’s accuracy.",
    },

    [MOVE_FLASH_CANNON] = {
        .names = {
            .name = "Flash Cannon",
            .capsName = "FLASH CANNON",
            .fullName = "Flash Cannon",
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
        .description = "The user gathers all\\nits light energy and\\nreleases it at once.\\nIt may also lower the\\nfoe’s Sp. Def stat.",
    },

    [MOVE_ROCK_CLIMB] = {
        .names = {
            .name = "Rock Climb",
            .capsName = "ROCK CLIMB",
            .fullName = "Rock Climb",
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
        .description = "A charging attack\\nthat may also leave\\nthe foe confused.\\nIt can also be used\\nto scale rocky walls.",
    },

    [MOVE_DEFOG] = {
        .names = {
            .name = "Defog",
            .capsName = "DEFOG",
            .fullName = "Defog",
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
        .description = "It reduces the foe’s\\nevasion stat. It also\\nremoves spikes,\\nlight screens, etc.",
    },

    [MOVE_TRICK_ROOM] = {
        .names = {
            .name = "Trick Room",
            .capsName = "TRICK ROOM",
            .fullName = "Trick Room",
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
        .description = "The user creates a\\nbizarre area in which\\nslower Pokémon get\\nto move first for five\\nturns.",
    },

    [MOVE_DRACO_METEOR] = {
        .names = {
            .name = "Draco Meteor",
            .capsName = "DRACO METEOR",
            .fullName = "Draco Meteor",
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
        .description = "Comets are summoned\\ndown from the sky.\\nThe attack’s recoil\\nsharply reduces the\\nuser’s Sp. Atk stat.",
    },

    [MOVE_DISCHARGE] = {
        .names = {
            .name = "Discharge",
            .capsName = "DISCHARGE",
            .fullName = "Discharge",
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
        .description = "A flare of electricity\\nis loosed to strike\\nall Pokémon in battle.\\nIt may also cause\\nparalysis.",
    },

    [MOVE_LAVA_PLUME] = {
        .names = {
            .name = "Lava Plume",
            .capsName = "LAVA PLUME",
            .fullName = "Lava Plume",
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
        .description = "An inferno of scarlet\\nflames washes over\\nall Pokémon in battle.\\nIt may also inflict\\nburns.",
    },

    [MOVE_LEAF_STORM] = {
        .names = {
            .name = "Leaf Storm",
            .capsName = "LEAF STORM",
            .fullName = "Leaf Storm",
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
        .description = "A storm of sharp\\nleaves is whipped up.\\nThe attack’s recoil\\nsharply reduces the\\nuser’s Sp. Atk stat.",
    },

    [MOVE_POWER_WHIP] = {
        .names = {
            .name = "Power Whip",
            .capsName = "POWER WHIP",
            .fullName = "Power Whip",
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
        .description = "The user violently\\nwhirls its vines or\\ntentacles to harshly\\nlash the foe.\\n",
    },

    [MOVE_ROCK_WRECKER] = {
        .names = {
            .name = "Rock Wrecker",
            .capsName = "ROCK WRECKER",
            .fullName = "Rock Wrecker",
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
        .description = "The user launches a\\nhuge boulder at the\\nfoe to attack.\\nIt must rest on the\\nnext turn, however.",
    },

    [MOVE_CROSS_POISON] = {
        .names = {
            .name = "Cross Poison",
            .capsName = "CROSS POISON",
            .fullName = "Cross Poison",
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
        .description = "A slashing attack\\nthat may also leave\\nthe target poisoned.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_GUNK_SHOT] = {
        .names = {
            .name = "Gunk Shot",
            .capsName = "GUNK SHOT",
            .fullName = "Gunk Shot",
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
        .description = "The user shoots\\nfilthy garbage at the\\nfoe to attack.\\nIt may also poison\\nthe target.",
    },

    [MOVE_IRON_HEAD] = {
        .names = {
            .name = "Iron Head",
            .capsName = "IRON HEAD",
            .fullName = "Iron Head",
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
        .description = "The foe slams the\\ntarget with its\\nsteel-hard head.\\nIt may also make the\\ntarget flinch.",
    },

    [MOVE_MAGNET_BOMB] = {
        .names = {
            .name = "Magnet Bomb",
            .capsName = "MAGNET BOMB",
            .fullName = "Magnet Bomb",
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
        .description = "The user launches a\\nsteel bomb that\\nsticks to the target.\\nThis attack will not\\nmiss.",
    },

    [MOVE_STONE_EDGE] = {
        .names = {
            .name = "Stone Edge",
            .capsName = "STONE EDGE",
            .fullName = "Stone Edge",
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
        .description = "The user stabs the\\nfoe with a sharpened\\nstone. It has a high\\ncritical-hit ratio.\\n",
    },

    [MOVE_CAPTIVATE] = {
        .names = {
            .name = "Captivate",
            .capsName = "CAPTIVATE",
            .fullName = "Captivate",
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
        .description = "If it is the opposite\\ngender of the user,\\nthe foe is charmed\\ninto sharply lowering\\nits Sp. Atk stat.",
    },

    [MOVE_STEALTH_ROCK] = {
        .names = {
            .name = "Stealth Rock",
            .capsName = "STEALTH ROCK",
            .fullName = "Stealth Rock",
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
        .description = "The user lays a trap\\nof levitating stones\\naround the foe. The\\ntrap hurts foes that\\nswitch into battle.",
    },

    [MOVE_GRASS_KNOT] = {
        .names = {
            .name = "Grass Knot",
            .capsName = "GRASS KNOT",
            .fullName = "Grass Knot",
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
        .description = "The user snares the\\nfoe with grass and\\ntrips it. The heavier\\nthe foe, the greater\\nthe damage.",
    },

    [MOVE_CHATTER] = {
        .names = {
            .name = "Chatter",
            .capsName = "CHATTER",
            .fullName = "Chatter",
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
        .description = "The user attacks\\nusing a sound wave\\nbased on words it has\\nlearned. It may also\\nconfuse the foe.",
    },

    [MOVE_JUDGMENT] = {
        .names = {
            .name = "Judgment",
            .capsName = "JUDGMENT",
            .fullName = "Judgment",
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
        .description = "The user releases\\ncountless shots of\\nlight. Its type varies\\nwith the kind of Plate\\nthe user is holding.",
    },

    [MOVE_BUG_BITE] = {
        .names = {
            .name = "Bug Bite",
            .capsName = "BUG BITE",
            .fullName = "Bug Bite",
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
        .description = "The user bites the\\nfoe. If the foe is\\nholding a Berry, the\\nuser eats it and\\ngains its effect.",
    },

    [MOVE_CHARGE_BEAM] = {
        .names = {
            .name = "Charge Beam",
            .capsName = "CHARGE BEAM",
            .fullName = "Charge Beam",
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
        .description = "The user fires a\\nconcentrated bundle\\nof electricity. It may\\nalso raise the user’s\\nSp. Atk stat.",
    },

    [MOVE_WOOD_HAMMER] = {
        .names = {
            .name = "Wood Hammer",
            .capsName = "WOOD HAMMER",
            .fullName = "Wood Hammer",
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
        .description = "The user slams its\\nrugged body into the\\nfoe to attack. The\\nuser also sustains\\nserious damage.",
    },

    [MOVE_AQUA_JET] = {
        .names = {
            .name = "Aqua Jet",
            .capsName = "AQUA JET",
            .fullName = "Aqua Jet",
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
        .description = "The user lunges at\\nthe foe at a speed\\nthat makes it almost\\ninvisible. It is sure\\nto strike first.",
    },

    [MOVE_ATTACK_ORDER] = {
        .names = {
            .name = "Attack Order",
            .capsName = "ATTACK ORDER",
            .fullName = "Attack Order",
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
        .description = "The user calls out\\nits underlings to\\npummel the foe.\\nIt has a high\\ncritical-hit ratio.",
    },

    [MOVE_DEFEND_ORDER] = {
        .names = {
            .name = "Defend Order",
            .capsName = "DEFEND ORDER",
            .fullName = "Defend Order",
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
        .description = "The user calls out\\nits underlings to\\nshield its body,\\nraising its Defense\\nand Sp. Def stats.",
    },

    [MOVE_HEAL_ORDER] = {
        .names = {
            .name = "Heal Order",
            .capsName = "HEAL ORDER",
            .fullName = "Heal Order",
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
        .description = "The user calls out\\nits underlings to heal\\nit. The user regains\\nup to half of its\\nmax HP.",
    },

    [MOVE_HEAD_SMASH] = {
        .names = {
            .name = "Head Smash",
            .capsName = "HEAD SMASH",
            .fullName = "Head Smash",
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
        .description = "The user delivers a\\nlife-endangering\\nattack at full power.\\nThe user also takes\\nterrible damage.",
    },

    [MOVE_DOUBLE_HIT] = {
        .names = {
            .name = "Double Hit",
            .capsName = "DOUBLE HIT",
            .fullName = "Double Hit",
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
        .description = "The user slams the\\nfoe with a long tail,\\nvines, etc. The\\ntarget is hit\\ntwice in a row.",
    },

    [MOVE_ROAR_OF_TIME] = {
        .names = {
            .name = "Roar of Time",
            .capsName = "ROAR OF TIME",
            .fullName = "Roar of Time",
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
        .description = "The user blasts the\\nfoe with power that\\ndistorts even time.\\nThe user must rest\\non the next turn.",
    },

    [MOVE_SPACIAL_REND] = {
        .names = {
            .name = "Spacial Rend",
            .capsName = "SPACIAL REND",
            .fullName = "Spacial Rend",
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
        .description = "The user tears the\\nfoe along with the\\nspace around it.\\nThis move has a high\\ncritical-hit ratio.",
    },

    [MOVE_LUNAR_DANCE] = {
        .names = {
            .name = "Lunar Dance",
            .capsName = "LUNAR DANCE",
            .fullName = "Lunar Dance",
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
        .description = "The user faints. In\\nreturn, the Pokémon\\ntaking its place will\\nhave its status and\\nHP fully restored.",
    },

    [MOVE_CRUSH_GRIP] = {
        .names = {
            .name = "Crush Grip",
            .capsName = "CRUSH GRIP",
            .fullName = "Crush Grip",
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
        .description = "The foe is crushed\\nwith great force.\\nThe attack is more\\npowerful the more HP\\nthe foe has left.",
    },

    [MOVE_MAGMA_STORM] = {
        .names = {
            .name = "Magma Storm",
            .capsName = "MAGMA STORM",
            .fullName = "Magma Storm",
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
        .description = "The foe becomes\\ntrapped within a\\nmaelstrom of fire\\nthat rages for two\\nto five turns.",
    },

    [MOVE_DARK_VOID] = {
        .names = {
            .name = "Dark Void",
            .capsName = "DARK VOID",
            .fullName = "Dark Void",
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
        .description = "The foe is dragged\\ninto a world of total\\ndarkness that puts it\\nto sleep.\\n",
    },

    [MOVE_SEED_FLARE] = {
        .names = {
            .name = "Seed Flare",
            .capsName = "SEED FLARE",
            .fullName = "Seed Flare",
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
        .description = "The user generates\\na shock wave from\\nwithin its body.\\nIt may also lower the\\ntarget’s Sp. Def.",
    },

    [MOVE_OMINOUS_WIND] = {
        .names = {
            .name = "Ominous Wind",
            .capsName = "OMINOUS WIND",
            .fullName = "Ominous Wind",
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
        .description = "The user creates a\\ngust of repulsive\\nwind. It may also\\nraise all the user’s\\nstats at once.",
    },

    [MOVE_SHADOW_FORCE] = {
        .names = {
            .name = "Shadow Force",
            .capsName = "SHADOW FORCE",
            .fullName = "Shadow Force",
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
        .description = "The user disappears,\\nthen strikes the foe\\non the second turn.\\nIt hits even if the\\nfoe protects itself.",
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
            .name = "Hone Claws",
            .capsName = "HONE CLAWS",
            .fullName = "Hone Claws",
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
        .description = "The user sharpens\\nits claws to boost\\nits Attack and\\nAccuracy.",
    },

    [MOVE_WIDE_GUARD] = {
        .names = {
            .name = "Wide Guard",
            .capsName = "WIDE GUARD",
            .fullName = "Wide Guard",
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
        .description = "The user protects\\nitself and its\\nallies from wide-\\nranged attacks.",
    },

    [MOVE_GUARD_SPLIT] = {
        .names = {
            .name = "Guard Split",
            .capsName = "GUARD SPLIT",
            .fullName = "Guard Split",
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
        .description = "The user employs its\\npsychic power to\\naverage its Defense\\nand Sp. Def stats\\nwith the target.",
    },

    [MOVE_POWER_SPLIT] = {
        .names = {
            .name = "Power Split",
            .capsName = "POWER SPLIT",
            .fullName = "Power Split",
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
        .description = "The user employs its\\npsychic power to\\naverage its Attack\\nand Sp. Atk stats\\nwith the target.",
    },

    [MOVE_WONDER_ROOM] = {
        .names = {
            .name = "Wonder Room",
            .capsName = "WONDER ROOM",
            .fullName = "Wonder Room",
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
        .description = "The user creates a\\nbizarre area where\\nPokémon’s Defense\\nand Sp. Def swap\\nfor five turns.",
    },

    [MOVE_PSYSHOCK] = {
        .names = {
            .name = "Psyshock",
            .capsName = "PSYSHOCK",
            .fullName = "Psyshock",
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
        .description = "An odd psychic wave\\nattacks the target.\\nThis attack does\\nphysical damage.",
    },

    [MOVE_VENOSHOCK] = {
        .names = {
            .name = "Venoshock",
            .capsName = "VENOSHOCK",
            .fullName = "Venoshock",
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
        .description = "The foe is soaked\\nby a special acid.\\nIts power doubles if\\nthe foe is poisoned.",
    },

    [MOVE_AUTOTOMIZE] = {
        .names = {
            .name = "Autotomize",
            .capsName = "AUTOTOMIZE",
            .fullName = "Autotomize",
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
        .description = "The user sheds part\\nof its body to make\\nitself lighter and\\nsharply raise its\\nSpeed stat.",
    },

    [MOVE_RAGE_POWDER] = {
        .names = {
            .name = "Rage Powder",
            .capsName = "RAGE POWDER",
            .fullName = "Rage Powder",
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
        .description = "The user scatters\\na cloud of powder,\\nmaking foes attack\\nonly the user.",
    },

    [MOVE_TELEKINESIS] = {
        .names = {
            .name = "Telekinesis",
            .capsName = "TELEKINESIS",
            .fullName = "Telekinesis",
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
        .description = "The user makes the\\ntarget float with\\npsychic power. The\\ntarget is easier to\\nhit for three turns.",
    },

    [MOVE_MAGIC_ROOM] = {
        .names = {
            .name = "Magic Room",
            .capsName = "MAGIC ROOM",
            .fullName = "Magic Room",
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
        .description = "The user creates a\\nbizarre area in\\nwhich Pokémon’s held\\nitems lose effect\\nfor five turns.",
    },

    [MOVE_SMACK_DOWN] = {
        .names = {
            .name = "Smack Down",
            .capsName = "SMACK DOWN",
            .fullName = "Smack Down",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
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
            .flags = FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_TOUGH,
        },
        .description = "A projectile is\\nthrown at the\\nopponent. A flying\\nPokémon will fall\\nto the ground.",
    },

    [MOVE_STORM_THROW] = {
        .names = {
            .name = "Storm Throw",
            .capsName = "STORM THROW",
            .fullName = "Storm Throw",
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
        .description = "The user strikes\\nthe foe fiercely.\\nIt always results in\\na critical hit.",
    },

    [MOVE_FLAME_BURST] = {
        .names = {
            .name = "Flame Burst",
            .capsName = "FLAME BURST",
            .fullName = "Flame Burst",
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
        .description = "The user attacks\\nthe foe with a\\nbursting flame.",
    },

    [MOVE_SLUDGE_WAVE] = {
        .names = {
            .name = "Sludge Wave",
            .capsName = "SLUDGE WAVE",
            .fullName = "Sludge Wave",
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
        .description = "The area around the\\nuser is swamped by\\na giant sludge wave.\\nIt may also poison\\nthose hit.",
    },

    [MOVE_QUIVER_DANCE] = {
        .names = {
            .name = "Quiver Dance",
            .capsName = "QUIVER DANCE",
            .fullName = "Quiver Dance",
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
        .description = "The user mystically\\ndances, raising its\\nSp. Atk, Sp. Def,\\nand Speed.",
    },

    [MOVE_HEAVY_SLAM] = {
        .names = {
            .name = "Heavy Slam",
            .capsName = "HEAVY SLAM",
            .fullName = "Heavy Slam",
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
        .description = "The user slams into\\nthe target. The\\ngreater the weight\\ndifference, the\\ngreater the damage.",
    },

    [MOVE_SYNCHRONOISE] = {
        .names = {
            .name = "Synchronoise",
            .capsName = "SYNCHRONOISE",
            .fullName = "Synchronoise",
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
        .description = "Using an odd shock\\nwave, the user\\ndamages same-type\\nPokémon in the\\nsurrounding area.",
    },

    [MOVE_ELECTRO_BALL] = {
        .names = {
            .name = "Electro Ball",
            .capsName = "ELECTRO BALL",
            .fullName = "Electro Ball",
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
        .description = "The user hurls an\\nelectric orb. The\\nfaster the user is\\nthan the foe, the\\ngreater the damage.",
    },

    [MOVE_SOAK] = {
        .names = {
            .name = "Soak",
            .capsName = "SOAK",
            .fullName = "Soak",
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
        .description = "The user shoots a\\ntorrent of water at\\nthe target and\\nchanges the target’s\\ntype to Water.",
    },

    [MOVE_FLAME_CHARGE] = {
        .names = {
            .name = "Flame Charge",
            .capsName = "FLAME CHARGE",
            .fullName = "Flame Charge",
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
        .description = "The user cloaks\\nitself in flames and\\nattacks. It also ups\\nthe user’s Speed.",
    },

    [MOVE_COIL] = {
        .names = {
            .name = "Coil",
            .capsName = "COIL",
            .fullName = "Coil",
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
        .description = "The user coils up,\\nraising its Attack,\\nDefense, and\\naccuracy.",
    },

    [MOVE_LOW_SWEEP] = {
        .names = {
            .name = "Low Sweep",
            .capsName = "LOW SWEEP",
            .fullName = "Low Sweep",
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
        .description = "The user attacks\\nthe foe’s legs,\\nlowering its\\nSpeed stat.",
    },

    [MOVE_ACID_SPRAY] = {
        .names = {
            .name = "Acid Spray",
            .capsName = "ACID SPRAY",
            .fullName = "Acid Spray",
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
        .description = "The user spits fluid\\nthat melts the foe.\\nIt harshly lowers\\nthe foe’s Sp. Def.",
    },

    [MOVE_FOUL_PLAY] = {
        .names = {
            .name = "Foul Play",
            .capsName = "FOUL PLAY",
            .fullName = "Foul Play",
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
        .description = "The user turns the\\ntarget’s power\\nagainst it. Power\\nincreases with the\\nfoe’s Attack stat.",
    },

    [MOVE_SIMPLE_BEAM] = {
        .names = {
            .name = "Simple Beam",
            .capsName = "SIMPLE BEAM",
            .fullName = "Simple Beam",
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
        .description = "The user’s\\nmysterious psychic\\nwave changes the\\ntarget’s Ability to\\nSimple.",
    },

    [MOVE_ENTRAINMENT] = {
        .names = {
            .name = "Entrainment",
            .capsName = "ENTRAINMENT",
            .fullName = "Entrainment",
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
        .description = "The user dances\\nwith an odd rhythm,\\nmaking the target’s\\nAbility the same as\\nthe user’s Ability.",
    },

    [MOVE_AFTER_YOU] = {
        .names = {
            .name = "After You",
            .capsName = "AFTER YOU",
            .fullName = "After You",
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
        .description = "The user helps the\\ntarget and makes it\\nuse its move right\\nafter the user.",
    },

    [MOVE_ROUND] = {
        .names = {
            .name = "Round",
            .capsName = "ROUND",
            .fullName = "Round",
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
        .description = "The user attacks\\nwith a song. Others\\ncan join in, doing\\nmore damage.",
    },

    [MOVE_ECHOED_VOICE] = {
        .names = {
            .name = "Echoed Voice",
            .capsName = "ECHOED VOICE",
            .fullName = "Echoed Voice",
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
        .description = "The user attacks\\nthe target with a\\nharsh echo.\\nIf used every turn,\\npower increases.",
    },

    [MOVE_CHIP_AWAY] = {
        .names = {
            .name = "Chip Away",
            .capsName = "CHIP AWAY",
            .fullName = "Chip Away",
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
        .description = "An attack which is\\nnot affected by the\\ntarget’s stat\\nchanges.",
    },

    [MOVE_CLEAR_SMOG] = {
        .names = {
            .name = "Clear Smog",
            .capsName = "CLEAR SMOG",
            .fullName = "Clear Smog",
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
        .description = "The user throws a\\nclump of special\\nmud that reverts\\nall stat changes.",
    },

    [MOVE_STORED_POWER] = {
        .names = {
            .name = "Stored Power",
            .capsName = "STORED POWER",
            .fullName = "Stored Power",
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
        .description = "The user attacks\\nwith a stored power\\nthat grows with\\neach raised stat.",
    },

    [MOVE_QUICK_GUARD] = {
        .names = {
            .name = "Quick Guard",
            .capsName = "QUICK GUARD",
            .fullName = "Quick Guard",
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
        .description = "The user protects\\nitself and its\\nallies from priority\\nmoves.",
    },

    [MOVE_ALLY_SWITCH] = {
        .names = {
            .name = "Ally Switch",
            .capsName = "ALLY SWITCH",
            .fullName = "Ally Switch",
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
        .description = "The user teleports\\nusing a strange\\npower and switches\\nplaces with one of\\nits allies.",
    },

    [MOVE_SCALD] = {
        .names = {
            .name = "Scald",
            .capsName = "SCALD",
            .fullName = "Scald",
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
        .description = "Boiling water is\\nshot at the foe.\\nIt may also cause\\na burn.",
    },

    [MOVE_SHELL_SMASH] = {
        .names = {
            .name = "Shell Smash",
            .capsName = "SHELL SMASH",
            .fullName = "Shell Smash",
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
        .description = "Sharply raises\\nAttack, Sp. Atk, and\\nSpeed, but lowers\\nDefense and Sp. Def.",
    },

    [MOVE_HEAL_PULSE] = {
        .names = {
            .name = "Heal Pulse",
            .capsName = "HEAL PULSE",
            .fullName = "Heal Pulse",
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
        .description = "The user emits a\\nhealing pulse that\\nrestores a target’s\\nHP by up to half.",
    },

    [MOVE_HEX] = {
        .names = {
            .name = "Hex",
            .capsName = "HEX",
            .fullName = "Hex",
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
        .description = "This attack does\\ndouble damage to a\\ntarget affected by\\na status problem.",
    },

    [MOVE_SKY_DROP] = {
        .names = {
            .name = "Sky Drop",
            .capsName = "SKY DROP",
            .fullName = "Sky Drop",
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
        .description = "It takes the enemy\\ninto the sky,\\nwhere it can’t\\nattack. It is\\ndropped next turn.",
    },

    [MOVE_SHIFT_GEAR] = {
        .names = {
            .name = "Shift Gear",
            .capsName = "SHIFT GEAR",
            .fullName = "Shift Gear",
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
        .description = "Rotating its gears,\\nthe user raises its\\nAttack and sharply\\nraises its Speed.",
    },

    [MOVE_CIRCLE_THROW] = {
        .names = {
            .name = "Circle Throw",
            .capsName = "CIRCLE THROW",
            .fullName = "Circle Throw",
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
        .description = "The foe is made to\\nswitch out with an\\nally. In the wild,\\nthe battle ends.",
    },

    [MOVE_INCINERATE] = {
        .names = {
            .name = "Incinerate",
            .capsName = "INCINERATE",
            .fullName = "Incinerate",
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
        .description = "The user burns\\nthe foe completely,\\nrendering a held\\nBerry useless.",
    },

    [MOVE_QUASH] = {
        .names = {
            .name = "Quash",
            .capsName = "QUASH",
            .fullName = "Quash",
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
        .description = "The user suppresses\\nthe target and makes\\nits move go last.",
    },

    [MOVE_ACROBATICS] = {
        .names = {
            .name = "Acrobatics",
            .capsName = "ACROBATICS",
            .fullName = "Acrobatics",
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
        .description = "A nimble attack\\nthat does double\\ndamage if the user\\nhas no held item.",
    },

    [MOVE_REFLECT_TYPE] = {
        .names = {
            .name = "Reflect Type",
            .capsName = "REFLECT TYPE",
            .fullName = "Reflect Type",
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
        .description = "The user reflects\\nthe target’s type,\\nmaking it the same\\ntype as the target.",
    },

    [MOVE_RETALIATE] = {
        .names = {
            .name = "Retaliate",
            .capsName = "RETALIATE",
            .fullName = "Retaliate",
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
        .description = "If an ally fainted\\nin the previous\\nturn, this attack’s\\ndamage increases.",
    },

    [MOVE_FINAL_GAMBIT] = {
        .names = {
            .name = "Final Gambit",
            .capsName = "FINAL GAMBIT",
            .fullName = "Final Gambit",
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
        .description = "The user risks all,\\ndealing damage\\nequal to its HP\\nand then fainting\\nfrom exhaustion.",
    },

    [MOVE_BESTOW] = {
        .names = {
            .name = "Bestow",
            .capsName = "BESTOW",
            .fullName = "Bestow",
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
        .description = "The user passes its\\nheld item to the\\ntarget when the\\ntarget isn’t holding\\nan item.",
    },

    [MOVE_INFERNO] = {
        .names = {
            .name = "Inferno",
            .capsName = "INFERNO",
            .fullName = "Inferno",
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
        .description = "The foe is engulfed\\nby an intense fire\\nthat is sure to\\nleave a burn.",
    },

    [MOVE_WATER_PLEDGE] = {
        .names = {
            .name = "Water Pledge",
            .capsName = "WATER PLEDGE",
            .fullName = "Water Pledge",
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
        .description = "When combined with\\nits fire equivalent,\\nits power increases\\nand a rainbow\\nappears.",
    },

    [MOVE_FIRE_PLEDGE] = {
        .names = {
            .name = "Fire Pledge",
            .capsName = "FIRE PLEDGE",
            .fullName = "Fire Pledge",
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
        .description = "When used with its\\ngrass equivalent,\\nits power increases\\nand a vast sea of\\nfire appears.",
    },

    [MOVE_GRASS_PLEDGE] = {
        .names = {
            .name = "Grass Pledge",
            .capsName = "GRASS PLEDGE",
            .fullName = "Grass Pledge",
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
        .description = "When used with its\\nwater equivalent,\\nits power increases\\nand a vast swamp\\nappears.",
    },

    [MOVE_VOLT_SWITCH] = {
        .names = {
            .name = "Volt Switch",
            .capsName = "VOLT SWITCH",
            .fullName = "Volt Switch",
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
        .description = "After attacking,\\nthe user switches\\nplaces with a\\nparty Pokémon.",
    },

    [MOVE_STRUGGLE_BUG] = {
        .names = {
            .name = "Struggle Bug",
            .capsName = "STRUGGLE BUG",
            .fullName = "Struggle Bug",
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
        .description = "While resisting, the\\nuser attacks the\\nfoe, lowering its\\nSp. Atk stat.",
    },

    [MOVE_BULLDOZE] = {
        .names = {
            .name = "Bulldoze",
            .capsName = "BULLDOZE",
            .fullName = "Bulldoze",
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
        .description = "The user hits all\\nPokémon in battle\\nby stomping. Lowers\\nSpeed of those hit.",
    },

    [MOVE_FROST_BREATH] = {
        .names = {
            .name = "Frost Breath",
            .capsName = "FROST BREATH",
            .fullName = "Frost Breath",
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
        .description = "The user blows\\ncold air at the foe.\\nIt always results in\\na critical hit.",
    },

    [MOVE_DRAGON_TAIL] = {
        .names = {
            .name = "Dragon Tail",
            .capsName = "DRAGON TAIL",
            .fullName = "Dragon Tail",
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
        .description = "The foe is made to\\nswitch out with an\\nally. In the wild,\\nthe battle ends.",
    },

    [MOVE_WORK_UP] = {
        .names = {
            .name = "Work Up",
            .capsName = "WORK UP",
            .fullName = "Work Up",
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
        .description = "The user rouses\\nitself to raise\\nits Attack and\\nSp. Atk stats.",
    },

    [MOVE_ELECTROWEB] = {
        .names = {
            .name = "Electroweb",
            .capsName = "ELECTROWEB",
            .fullName = "Electroweb",
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
        .description = "The user traps the\\nfoe in an electric\\nnet. It also lowers\\nthe foe’s Speed.",
    },

    [MOVE_WILD_CHARGE] = {
        .names = {
            .name = "Wild Charge",
            .capsName = "WILD CHARGE",
            .fullName = "Wild Charge",
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
        .description = "The user throws an\\nelectrified tackle.\\nIt hurts the user\\na little.",
    },

    [MOVE_DRILL_RUN] = {
        .names = {
            .name = "Drill Run",
            .capsName = "DRILL RUN",
            .fullName = "Drill Run",
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
        .description = "The user rotates\\nits body like a\\ndrill. It has a high\\ncritical-hit ratio.",
    },

    [MOVE_DUAL_CHOP] = {
        .names = {
            .name = "Dual Chop",
            .capsName = "DUAL CHOP",
            .fullName = "Dual Chop",
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
        .description = "The user hits\\nthe foe with two\\nbrutal strikes\\nin one turn.",
    },

    [MOVE_HEART_STAMP] = {
        .names = {
            .name = "Heart Stamp",
            .capsName = "HEART STAMP",
            .fullName = "Heart Stamp",
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
        .description = "The foe is hit\\nafter a cute act.\\nIt may also make\\nthe foe flinch.",
    },

    [MOVE_HORN_LEECH] = {
        .names = {
            .name = "Horn Leech",
            .capsName = "HORN LEECH",
            .fullName = "Horn Leech",
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
        .description = "A harsh attack that\\nabsorbs half the\\ndamage it inflicted\\nto restore HP.",
    },

    [MOVE_SACRED_SWORD] = {
        .names = {
            .name = "Sacred Sword",
            .capsName = "SACRED SWORD",
            .fullName = "Sacred Sword",
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
        .description = "The user attacks by\\nslicing with a long\\nhorn. The target’s\\nstat changes are\\nignored.",
    },

    [MOVE_RAZOR_SHELL] = {
        .names = {
            .name = "Razor Shell",
            .capsName = "RAZOR SHELL",
            .fullName = "Razor Shell",
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
        .description = "The foe is cut\\nby sharp shells.\\nIt may also lower\\nthe foe’s Defense.",
    },

    [MOVE_HEAT_CRASH] = {
        .names = {
            .name = "Heat Crash",
            .capsName = "HEAT CRASH",
            .fullName = "Heat Crash",
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
        .description = "The user slams down\\nwith fire. The more\\nthe user outweighs\\nthe foe, the greater\\nthe damage.",
    },

    [MOVE_LEAF_TORNADO] = {
        .names = {
            .name = "Leaf Tornado",
            .capsName = "LEAF TORNADO",
            .fullName = "Leaf Tornado",
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
        .description = "Sharp leaves circle\\nthe foe. It may also\\nlower the foe’s\\naccuracy.",
    },

    [MOVE_STEAMROLLER] = {
        .names = {
            .name = "Steamroller",
            .capsName = "STEAMROLLER",
            .fullName = "Steamroller",
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
        .description = "The user crushes\\nthe foe with its\\nbody. It may also\\nmake the foe flinch.",
    },

    [MOVE_COTTON_GUARD] = {
        .names = {
            .name = "Cotton Guard",
            .capsName = "COTTON GUARD",
            .fullName = "Cotton Guard",
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
        .description = "The user protects\\nitself with cotton,\\ndrastically raising\\nits Defense.",
    },

    [MOVE_NIGHT_DAZE] = {
        .names = {
            .name = "Night Daze",
            .capsName = "NIGHT DAZE",
            .fullName = "Night Daze",
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
        .description = "The user releases a\\npitch-black blast\\nat its target. May\\nalso lower target’s\\naccuracy.",
    },

    [MOVE_PSYSTRIKE] = {
        .names = {
            .name = "Psystrike",
            .capsName = "PSYSTRIKE",
            .fullName = "Psystrike",
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
        .description = "An odd psychic wave\\nattacks the target.\\nThis attack does\\nphysical damage.",
    },

    [MOVE_TAIL_SLAP] = {
        .names = {
            .name = "Tail Slap",
            .capsName = "TAIL SLAP",
            .fullName = "Tail Slap",
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
        .description = "The use attacks by\\nhitting the target\\nwith its hard tail.\\nIt hits two to five\\ntimes in a row.",
    },

    [MOVE_HURRICANE] = {
        .names = {
            .name = "Hurricane",
            .capsName = "HURRICANE",
            .fullName = "Hurricane",
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
        .description = "The user attacks by\\nwrapping its opponent\\nin a fierce wind.\\nThis may also confuse\\nthe target.",
    },

    [MOVE_HEAD_CHARGE] = {
        .names = {
            .name = "Head Charge",
            .capsName = "HEAD CHARGE",
            .fullName = "Head Charge",
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
        .description = "The user charges its\\nhead into its foe,\\nusing its guard hair.\\nIt slightly damages\\nthe user.",
    },

    [MOVE_GEAR_GRIND] = {
        .names = {
            .name = "Gear Grind",
            .capsName = "GEAR GRIND",
            .fullName = "Gear Grind",
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
        .description = "The user attacks by\\nthrowing two steel\\ngears at it target.\\nThis attack hits\\ntwice in a row.",
    },

    [MOVE_SEARING_SHOT] = {
        .names = {
            .name = "Searing Shot",
            .capsName = "SEARING SHOT",
            .fullName = "Searing Shot",
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
        .description = "The user torches\\neverything around it\\nin an inferno of\\nscarlet flames. It\\nmay burn the foes.",
    },

    [MOVE_TECHNO_BLAST] = {
        .names = {
            .name = "Techno Blast",
            .capsName = "TECHNO BLAST",
            .fullName = "Techno Blast",
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
        .description = "The user fires a beam\\nof light at its foe.\\nThe type changes\\ndepending on the\\nDrive held.",
    },

    [MOVE_RELIC_SONG] = {
        .names = {
            .name = "Relic Song",
            .capsName = "RELIC SONG",
            .fullName = "Relic Song",
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
        .description = "The user sings an\\nancient song and\\nattacks the hearts of\\nthe listeners. It\\nmay induce sleep.",
    },

    [MOVE_SECRET_SWORD] = {
        .names = {
            .name = "Secret Sword",
            .capsName = "SECRET SWORD",
            .fullName = "Secret Sword",
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
        .description = "The user cuts with\\nits long horn. The\\nodd power in the\\nhorn does physical\\ndamage to the foe.",
    },

    [MOVE_GLACIATE] = {
        .names = {
            .name = "Glaciate",
            .capsName = "GLACIATE",
            .fullName = "Glaciate",
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
        .description = "The user attacks by\\nblowing freezing cold\\nair at opposing\\nPokémon. This lowers\\ntheir Speed.",
    },

    [MOVE_BOLT_STRIKE] = {
        .names = {
            .name = "Bolt Strike",
            .capsName = "BOLT STRIKE",
            .fullName = "Bolt Strike",
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
        .description = "The user surrounds\\nitself with abundant\\nelectricity that can\\nparalyze and charges\\nits target.",
    },

    [MOVE_BLUE_FLARE] = {
        .names = {
            .name = "Blue Flare",
            .capsName = "BLUE FLARE",
            .fullName = "Blue Flare",
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
        .description = "The user attacks by\\nengulfing the foe in\\na severe, beautiful,\\nblue flame. It may\\nburn the foe.",
    },

    [MOVE_FIERY_DANCE] = {
        .names = {
            .name = "Fiery Dance",
            .capsName = "FIERY DANCE",
            .fullName = "Fiery Dance",
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
        .description = "Cloaked in flames,\\nthe user dances.\\nIt may also raise\\nthe user’s Sp. Atk.",
    },

    [MOVE_FREEZE_SHOCK] = {
        .names = {
            .name = "Freeze Shock",
            .capsName = "FREEZE SHOCK",
            .fullName = "Freeze Shock",
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
        .description = "A two-turn attack\\nthat hits the foe\\nwith electrically\\ncharged ice. It may\\nparalyze the foe.",
    },

    [MOVE_ICE_BURN] = {
        .names = {
            .name = "Ice Burn",
            .capsName = "ICE BURN",
            .fullName = "Ice Burn",
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
        .description = "A two-turn attack\\nthat surrounds the\\nfoe with ultracold,\\nfreezing wind. It\\nmay burn the foe.",
    },

    [MOVE_SNARL] = {
        .names = {
            .name = "Snarl",
            .capsName = "SNARL",
            .fullName = "Snarl",
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
        .description = "The user barks\\nmenacingly. It\\nalso lowers the\\nfoe’s Sp. Atk.",
    },

    [MOVE_ICICLE_CRASH] = {
        .names = {
            .name = "Icicle Crash",
            .capsName = "ICICLE CRASH",
            .fullName = "Icicle Crash",
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
        .description = "Icicles are dropped\\non the foe. It may\\nalso make the foe\\nflinch.",
    },

    [MOVE_V_CREATE] = {
        .names = {
            .name = "V-create",
            .capsName = "V-CREATE",
            .fullName = "V-create",
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
        .description = "The user hurls the\\nhot flame on its\\nforehead. It lowers\\nthe user’s Def, Sp.\\nDef, and Speed.",
    },

    [MOVE_FUSION_FLARE] = {
        .names = {
            .name = "Fusion Flare",
            .capsName = "FUSION FLARE",
            .fullName = "Fusion Flare",
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
        .description = "The user brings down\\na giant flame.\\nIt does more damage\\nwhen influenced by\\nan enormous bolt.",
    },

    [MOVE_FUSION_BOLT] = {
        .names = {
            .name = "Fusion Bolt",
            .capsName = "FUSION BOLT",
            .fullName = "Fusion Bolt",
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
        .description = "The user throws down\\na giant bolt.\\nIt does more damage\\nwhen influenced by\\nan enormous flame.",
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
        .description = "The user dives down\\nonto the target from\\nthe sky. This move is\\nFighting and Flying\\ntype simultaneously.",
    },

    [MOVE_MAT_BLOCK] = {
        .names = {
            .name = "Mat Block",
            .capsName = "MAT BLOCK",
            .fullName = "Mat Block",
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
        .description = "Using a pulled-up mat\\nas a shield, the user\\nprotects itself and\\nits allies from\\ndamaging moves.",
    },

    [MOVE_BELCH] = {
        .names = {
            .name = "Belch",
            .capsName = "BELCH",
            .fullName = "Belch",
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
        .description = "The user lets out a\\ndamaging belch at the\\ntarget. The user must\\neat a held Berry to\\nuse this move.",
    },

    [MOVE_ROTOTILLER] = {
        .names = {
            .name = "Rototiller",
            .capsName = "ROTOTILLER",
            .fullName = "Rototiller",
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
        .description = "By making it easier\\nfor plants to grow,\\nthe user raises the\\nAttack and Sp. Atk\\nstats of Grass-types.",
    },

    [MOVE_STICKY_WEB] = {
        .names = {
            .name = "Sticky Web",
            .capsName = "STICKY WEB",
            .fullName = "Sticky Web",
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
        .description = "The user weaves a web\\naround the opposing\\nteam, which lowers\\ntheir Speed stat upon\\nswitching into battle.",
    },

    [MOVE_FELL_STINGER] = {
        .names = {
            .name = "Fell Stinger",
            .capsName = "FELL STINGER",
            .fullName = "Fell Stinger",
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
        .description = "When the user knocks\\nout a target with\\nthis move, the\\nuser’s Attack stat\\nrises drastically.",
    },

    [MOVE_PHANTOM_FORCE] = {
        .names = {
            .name = "Phantom Force",
            .capsName = "PHANTOM FORCE",
            .fullName = "Phantom Force",
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
        .description = "The user disappears,\\nthen strikes the foe\\non the second turn.\\nIt hits even if the\\nfoe protects itself.",
    },

    [MOVE_TRICK_OR_TREAT] = {
        .names = {
            .name = "Trick-or-Treat",
            .capsName = "TRICK-OR-TREAT",
            .fullName = "Trick-or-Treat",
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
        .description = "The user takes the\\ntarget trick-or-\\ntreating.\\nThis adds Ghost type\\nto the target’s type.",
    },

    [MOVE_NOBLE_ROAR] = {
        .names = {
            .name = "Noble Roar",
            .capsName = "NOBLE ROAR",
            .fullName = "Noble Roar",
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
        .description = "Letting out a noble\\nroar, the user\\nintimidates the target\\nand lowers its Attack\\nand Sp. Atk stats.",
    },

    [MOVE_ION_DELUGE] = {
        .names = {
            .name = "Ion Deluge",
            .capsName = "ION DELUGE",
            .fullName = "Ion Deluge",
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
        .description = "The user disperses\\nelectrically charged\\nparticles, which\\nchanges Normal-type\\nmoves to Electric.",
    },

    [MOVE_PARABOLIC_CHARGE] = {
        .names = {
            .name = "ParabolicCharge",
            .capsName = "PARABOLICCHARGE",
            .fullName = "Parabolic Charge",
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
        .description = "An energy-draining\\nshockwave. The user’s\\nHP is restored by\\nhalf the damage taken\\nby those hit.",
    },

    [MOVE_FORESTS_CURSE] = {
        .names = {
            .name = "Forest’s Curse",
            .capsName = "FOREST’S CURSE",
            .fullName = "Forest’s Curse",
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
        .description = "The user puts a\\nforest curse on the\\ntarget.\\nThis adds Grass type\\nto the target’s type.",
    },

    [MOVE_PETAL_BLIZZARD] = {
        .names = {
            .name = "Petal Blizzard",
            .capsName = "PETAL BLIZZARD",
            .fullName = "Petal Blizzard",
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
        .description = "The user stirs up a\\nviolent petal blizzard\\nand attacks everything\\naround it.",
    },

    [MOVE_FREEZE_DRY] = {
        .names = {
            .name = "Freeze-Dry",
            .capsName = "FREEZE-DRY",
            .fullName = "Freeze-Dry",
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
        .description = "The user rapidly cools\\nthe target, possibly\\nleaving them frozen.\\nThis move is super\\neffective on Water.",
    },

    [MOVE_DISARMING_VOICE] = {
        .names = {
            .name = "Disarming Voice",
            .capsName = "DISARMING VOICE",
            .fullName = "Disarming Voice",
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
        .description = "Letting out a charming\\ncry, the user does\\nemotional damage to\\nopposing Pokémon. This\\nattack never misses.",
    },

    [MOVE_PARTING_SHOT] = {
        .names = {
            .name = "Parting Shot",
            .capsName = "PARTING SHOT",
            .fullName = "Parting Shot",
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
        .description = "With a parting threat,\\nthe user lowers the\\ntarget’s Attack and\\nSp. Atk stats.\\nThen it switches out.",
    },

    [MOVE_TOPSY_TURVY] = {
        .names = {
            .name = "Topsy-Turvy",
            .capsName = "TOPSY-TURVY",
            .fullName = "Topsy-Turvy",
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
        .description = "All stat changes\\naffecting the target\\nturn topsy-turvy and\\nbecome the opposite of\\nwhat they were.",
    },

    [MOVE_DRAINING_KISS] = {
        .names = {
            .name = "Draining Kiss",
            .capsName = "DRAINING KISS",
            .fullName = "Draining Kiss",
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
        .description = "An energy-stealing\\nkiss. The user’s\\nHP is restored by\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_CRAFTY_SHIELD] = {
        .names = {
            .name = "Crafty Shield",
            .capsName = "CRAFTY SHIELD",
            .fullName = "Crafty Shield",
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
        .description = "The user protects\\nitself and its allies\\nfrom status moves\\nwith a mysterious\\npower.",
    },

    [MOVE_FLOWER_SHIELD] = {
        .names = {
            .name = "Flower Shield",
            .capsName = "FLOWER SHIELD",
            .fullName = "Flower Shield",
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
        .description = "The user raises the\\nDefense stats of all\\nGrass-type Pokémon\\nin battle with a\\nmysterious power.",
    },

    [MOVE_GRASSY_TERRAIN] = {
        .names = {
            .name = "Grassy Terrain",
            .capsName = "GRASSY TERRAIN",
            .fullName = "Grassy Terrain",
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
        .description = "The user turns the\\nground into Grassy\\nTerrain for five\\nturns. This powers up\\nGrass-type moves.",
    },

    [MOVE_MISTY_TERRAIN] = {
        .names = {
            .name = "Misty Terrain",
            .capsName = "MISTY TERRAIN",
            .fullName = "Misty Terrain",
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
        .description = "Sets a Misty Terrain\\nfor five turns. This\\nprevents status\\nailments and weakens\\nDragon-Type moves.",
    },

    [MOVE_ELECTRIFY] = {
        .names = {
            .name = "Electrify",
            .capsName = "ELECTRIFY",
            .fullName = "Electrify",
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
        .description = "If the target is\\nelectrified, their\\nmoves become Electric\\ntype for the rest of\\nthat turn.",
    },

    [MOVE_PLAY_ROUGH] = {
        .names = {
            .name = "Play Rough",
            .capsName = "PLAY ROUGH",
            .fullName = "Play Rough",
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
        .description = "The user attacks by\\nplaying rough with the\\ntarget. This may also\\nlower the target’s\\nAttack stat.",
    },

    [MOVE_FAIRY_WIND] = {
        .names = {
            .name = "Fairy Wind",
            .capsName = "FAIRY WIND",
            .fullName = "Fairy Wind",
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
        .description = "The user attacks by\\nstirring up a fairy\\nwind to strike the\\ntarget.",
    },

    [MOVE_MOONBLAST] = {
        .names = {
            .name = "Moonblast",
            .capsName = "MOONBLAST",
            .fullName = "Moonblast",
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
        .description = "Borrowing the power of\\nthe moon, the user\\nattacks the target.\\nThis may also lower the\\ntarget’s Sp. Atk stat.",
    },

    [MOVE_BOOMBURST] = {
        .names = {
            .name = "Boomburst",
            .capsName = "BOOMBURST",
            .fullName = "Boomburst",
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
        .description = "The user attacks\\neverything around it\\nwith the destructive\\npower of a terrible\\nexplosive sound.",
    },

    [MOVE_FAIRY_LOCK] = {
        .names = {
            .name = "Fairy Lock",
            .capsName = "FAIRY LOCK",
            .fullName = "Fairy Lock",
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
        .description = "By locking down the\\nbattlefield, the user\\nkeeps all Pokémon\\nfrom fleeing during\\nthe next turn.",
    },

    [MOVE_KINGS_SHIELD] = {
        .names = {
            .name = "King’s Shield",
            .capsName = "KING’S SHIELD",
            .fullName = "King’s Shield",
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
        .description = "The user protects\\nitself from damage\\nwhile lowering the\\nAttack of any attacker\\nthat makes contact.",
    },

    [MOVE_PLAY_NICE] = {
        .names = {
            .name = "Play Nice",
            .capsName = "PLAY NICE",
            .fullName = "Play Nice",
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
        .description = "The user and the\\ntarget become pals,\\nlowering the target’s\\nAttack stat.\\nBypasses Protect.",
    },

    [MOVE_CONFIDE] = {
        .names = {
            .name = "Confide",
            .capsName = "CONFIDE",
            .fullName = "Confide",
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
        .description = "The user tells the\\ntarget a secret,\\nmaking it lose focus.\\nThis lowers the\\ntarget’s Sp. Atk stat.",
    },

    [MOVE_DIAMOND_STORM] = {
        .names = {
            .name = "Diamond Storm",
            .capsName = "DIAMOND STORM",
            .fullName = "Diamond Storm",
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
        .description = "A storm of diamonds\\nwhips opposing\\nPokémon. This may also\\nsharply boost the\\nuser’s Defense stat.",
    },

    [MOVE_STEAM_ERUPTION] = {
        .names = {
            .name = "Steam Eruption",
            .capsName = "STEAM ERUPTION",
            .fullName = "Steam Eruption",
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
        .description = "The user immerses the\\ntarget in superheated\\nsteam.\\nThis may also leave\\nthe target with a burn.",
    },

    [MOVE_HYPERSPACE_HOLE] = {
        .names = {
            .name = "Hyperspace Hole",
            .capsName = "HYPERSPACE HOLE",
            .fullName = "Hyperspace Hole",
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
        .description = "Using a hyperspace\\nhole, the user strikes\\nfrom far away. This\\ncan hit a target using\\nProtect or Detect.",
    },

    [MOVE_WATER_SHURIKEN] = {
        .names = {
            .name = "Water Shuriken",
            .capsName = "WATER SHURIKEN",
            .fullName = "Water Shuriken",
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
        .description = "The user hits the\\ntarget with throwing\\nstars two to five\\ntimes. This move\\nalways goes first.",
    },

    [MOVE_MYSTICAL_FIRE] = {
        .names = {
            .name = "Mystical Fire",
            .capsName = "MYSTICAL FIRE",
            .fullName = "Mystical Fire",
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
        .description = "The user attacks by\\nbreathing a special,\\nhot fire.\\nThis also lowers the\\ntarget’s Sp. Atk stat.",
    },

    [MOVE_SPIKY_SHIELD] = {
        .names = {
            .name = "Spiky Shield",
            .capsName = "SPIKY SHIELD",
            .fullName = "Spiky Shield",
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
        .description = "The user is protected\\nfrom attacks, while\\nalso damaging any\\nattacker who makes\\ndirect contact.",
    },

    [MOVE_AROMATIC_MIST] = {
        .names = {
            .name = "Aromatic Mist",
            .capsName = "AROMATIC MIST",
            .fullName = "Aromatic Mist",
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
        .description = "The user boosts the\\nSp. Def stat of an\\nally Pokémon by using\\na mysterious aroma.",
    },

    [MOVE_EERIE_IMPULSE] = {
        .names = {
            .name = "Eerie Impulse",
            .capsName = "EERIE IMPULSE",
            .fullName = "Eerie Impulse",
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
        .description = "The user emits an\\neerie impulse from its\\nbody, harshly lowering\\nthe target’s Sp. Atk\\nstat.",
    },

    [MOVE_VENOM_DRENCH] = {
        .names = {
            .name = "Venom Drench",
            .capsName = "VENOM DRENCH",
            .fullName = "Venom Drench",
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
        .description = "Foes are drenched in\\na poisonous liquid.\\nThis lowers the Attack,\\nSp. Atk, and Speed of\\na poisoned target.",
    },

    [MOVE_POWDER] = {
        .names = {
            .name = "Powder",
            .capsName = "POWDER",
            .fullName = "Powder",
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
        .description = "The user covers the\\ntarget in an explosive\\npowder that damages\\nthe target if they use\\na Fire-type move.",
    },

    [MOVE_GEOMANCY] = {
        .names = {
            .name = "Geomancy",
            .capsName = "GEOMANCY",
            .fullName = "Geomancy",
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
        .description = "The user absorbs energy\\nand sharply boosts its\\nSp. Atk, Sp. Def, and\\nSpeed stats on the next\\nturn.",
    },

    [MOVE_MAGNETIC_FLUX] = {
        .names = {
            .name = "Magnetic Flux",
            .capsName = "MAGNETIC FLUX",
            .fullName = "Magnetic Flux",
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
        .description = "Magnetic fields boost\\nthe Defense and Sp. Def\\nstats of ally Pokémon\\nwith the Plus or Minus\\nAbility.",
    },

    [MOVE_HAPPY_HOUR] = {
        .names = {
            .name = "Happy Hour",
            .capsName = "HAPPY HOUR",
            .fullName = "Happy Hour",
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
        .description = "Using Happy Hour\\ndoubles the amount of\\nprize money received\\nafter battle.",
    },

    [MOVE_ELECTRIC_TERRAIN] = {
        .names = {
            .name = "ElectricTerrain",
            .capsName = "ELECTRICTERRAIN",
            .fullName = "Electric Terrain",
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
        .description = "For five turns, Pokémon\\non the ground have\\npowered up Electric-type\\nmoves and can no longer\\nfall asleep.",
    },

    [MOVE_DAZZLING_GLEAM] = {
        .names = {
            .name = "Dazzling Gleam",
            .capsName = "DAZZLING GLEAM",
            .fullName = "Dazzling Gleam",
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
        .description = "The user damages\\nopposing Pokémon by\\nemitting a powerful\\nflash.",
    },

    [MOVE_CELEBRATE] = {
        .names = {
            .name = "Celebrate",
            .capsName = "CELEBRATE",
            .fullName = "Celebrate",
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
        .description = "The Pokémon\\ncongratulates you on\\nyour special day!",
    },

    [MOVE_HOLD_HANDS] = {
        .names = {
            .name = "Hold Hands",
            .capsName = "HOLD HANDS",
            .fullName = "Hold Hands",
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
        .description = "The user and an ally\\nhold hands.\\nThis makes them very\\nhappy.",
    },

    [MOVE_BABY_DOLL_EYES] = {
        .names = {
            .name = "Baby-Doll Eyes",
            .capsName = "BABY-DOLL EYES",
            .fullName = "Baby-Doll Eyes",
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
        .description = "The user stares at\\nthe target with its\\nbaby-eyes, lowering\\nits Attack stat.\\nAlways goes first.",
    },

    [MOVE_NUZZLE] = {
        .names = {
            .name = "Nuzzle",
            .capsName = "NUZZLE",
            .fullName = "Nuzzle",
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
        .description = "The user nuzzles its\\nelectrified cheeks\\nagainst the target.\\nThis also leaves the\\ntarget with paralysis.",
    },

    [MOVE_HOLD_BACK] = {
        .names = {
            .name = "Hold Back",
            .capsName = "HOLD BACK",
            .fullName = "Hold Back",
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
        .description = "The user holds back\\nwhen it attacks, and\\nthe target is left\\nwith at least 1 HP.",
    },

    [MOVE_INFESTATION] = {
        .names = {
            .name = "Infestation",
            .capsName = "INFESTATION",
            .fullName = "Infestation",
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
        .description = "The target is infested\\nand attacked for four\\nto five turns.\\nThe target can’t flee\\nduring this time.",
    },

    [MOVE_POWER_UP_PUNCH] = {
        .names = {
            .name = "Power-Up Punch",
            .capsName = "POWER-UP PUNCH",
            .fullName = "Power-Up Punch",
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
        .description = "Striking opponents\\nover and over makes\\nthe user’s fists\\nharder. Hitting a\\ntarget raises Attack.",
    },

    [MOVE_OBLIVION_WING] = {
        .names = {
            .name = "Oblivion Wing",
            .capsName = "OBLIVION WING",
            .fullName = "Oblivion Wing",
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
        .description = "The user absorbs the\\ntarget’s HP. The user’s\\nHP is restored by over\\nhalf the damage taken\\nby the target.",
    },

    [MOVE_THOUSAND_ARROWS] = {
        .names = {
            .name = "Thousand Arrows",
            .capsName = "THOUSAND ARROWS",
            .fullName = "Thousand Arrows",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
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
            .flags = FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED | FLAG_PROTECT,
        },
        .contest = {
            .appeal = 0,
            .contestType = CONTEST_BEAUTY,
        },
        .description = "This move can hit\\nopposing Pokémon that\\nare in the air. Those\\nPokémon are knocked\\ndown to the ground.",
    },

    [MOVE_THOUSAND_WAVES] = {
        .names = {
            .name = "Thousand Waves",
            .capsName = "THOUSAND WAVES",
            .fullName = "Thousand Waves",
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
        .description = "The user attacks with\\na wave that crawls\\nalong the ground.\\nThose it hits can’t\\nflee from battle.",
    },

    [MOVE_LANDS_WRATH] = {
        .names = {
            .name = "Land’s Wrath",
            .capsName = "LAND’S WRATH",
            .fullName = "Land’s Wrath",
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
        .description = "The user gathers the\\nenergy of the land and\\nfocuses that power on\\nopposing Pokémon to\\ninflict damage.",
    },

    [MOVE_LIGHT_OF_RUIN] = {
        .names = {
            .name = "Light of Ruin",
            .capsName = "LIGHT OF RUIN",
            .fullName = "Light of Ruin",
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
        .description = "Drawing power from the\\nEternal Flower, the user\\nfires a powerful beam of\\nlight. This also damages\\nthe user terribly.",
    },

    [MOVE_ORIGIN_PULSE] = {
        .names = {
            .name = "Origin Pulse",
            .capsName = "ORIGIN PULSE",
            .fullName = "Origin Pulse",
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
        .description = "The user attacks\\nopposing Pokémon with\\ncountless beams of\\nlight that glow a deep\\nand brilliant blue.",
    },

    [MOVE_PRECIPICE_BLADES] = {
        .names = {
            .name = "PrecipiceBlades",
            .capsName = "PRECIPICEBLADES",
            .fullName = "Precipice Blades",
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
        .description = "The user attacks\\nopposing Pokémon by\\nmanifesting the power\\nof the land in\\nfearsome stone blades",
    },

    [MOVE_DRAGON_ASCENT] = {
        .names = {
            .name = "Dragon Ascent",
            .capsName = "DRAGON ASCENT",
            .fullName = "Dragon Ascent",
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
        .description = "The user attacks by\\ndropping out of the sky\\nat high speed. This also\\nlowers the user’s\\nDefense and Sp. Def.",
    },

    [MOVE_HYPERSPACE_FURY] = {
        .names = {
            .name = "Hyperspace Fury",
            .capsName = "HYPERSPACE FURY",
            .fullName = "Hyperspace Fury",
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
        .description = "The user unleashes a\\nbarrage that ignores the\\neffects of protection\\nmoves. This also lowers\\nthe user’s Defense.",
    },

    [MOVE_BREAKNECK_BLITZ_PHYSICAL] = {
        .names = {
            .name = "Breakneck Blitz",
            .capsName = "BREAKNECK BLITZ",
            .fullName = "Breakneck Blitz",
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
        .description = "The user crashes into\\nthe target at full speed\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_BREAKNECK_BLITZ_SPECIAL] = {
        .names = {
            .name = "Breakneck Blitz",
            .capsName = "BREAKNECK BLITZ",
            .fullName = "Breakneck Blitz",
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
        .description = "The user crashes into\\nthe target at full speed\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_ALL_OUT_PUMMELING_PHYSICAL] = {
        .names = {
            .name = "All-Out Pummel",
            .capsName = "ALL-OUT PUMMEL",
            .fullName = "All-Out Pummeling",
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
        .description = "The user fires an\\nenergy orb created by\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_ALL_OUT_PUMMELING_SPECIAL] = {
        .names = {
            .name = "All-Out Pummel",
            .capsName = "ALL-OUT PUMMEL",
            .fullName = "All-Out Pummeling",
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
        .description = "The user fires an\\nenergy orb created by\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL] = {
        .names = {
            .name = "Super Skystrike",
            .capsName = "SUPER SKYSTRIKE",
            .fullName = "Supersonic Skystrike",
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
        .description = "The user plummets toward\\nthe target at full speed\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL] = {
        .names = {
            .name = "Super Skystrike",
            .capsName = "SUPER SKYSTRIKE",
            .fullName = "Supersonic Skystrike",
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
        .description = "The user plummets toward\\nthe target at full speed\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_ACID_DOWNPOUR_PHYSICAL] = {
        .names = {
            .name = "Acid Downpour",
            .capsName = "ACID DOWNPOUR",
            .fullName = "Acid Downpour",
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
        .description = "The user creates a\\npoisonous swamp using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_ACID_DOWNPOUR_SPECIAL] = {
        .names = {
            .name = "Acid Downpour",
            .capsName = "ACID DOWNPOUR",
            .fullName = "Acid Downpour",
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
        .description = "The user creates a\\npoisonous swamp using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_TECTONIC_RAGE_PHYSICAL] = {
        .names = {
            .name = "Tectonic Rage",
            .capsName = "TECTONIC RAGE",
            .fullName = "Tectonic Rage",
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
        .description = "The user slams into the\\ntarget from underground\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_TECTONIC_RAGE_SPECIAL] = {
        .names = {
            .name = "Tectonic Rage",
            .capsName = "TECTONIC RAGE",
            .fullName = "Tectonic Rage",
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
        .description = "The user slams into the\\ntarget from underground\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_CONTINENTAL_CRUSH_PHYSICAL] = {
        .names = {
            .name = "Continent Crush",
            .capsName = "CONTINENT CRUSH",
            .fullName = "Continental Crush",
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
        .description = "The user drops a huge\\nmountain onto the target\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_CONTINENTAL_CRUSH_SPECIAL] = {
        .names = {
            .name = "Continent Crush",
            .capsName = "CONTINENT CRUSH",
            .fullName = "Continental Crush",
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
        .description = "The user drops a huge\\nmountain onto the target\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_SAVAGE_SPIN_OUT_PHYSICAL] = {
        .names = {
            .name = "Savage Spin-Out",
            .capsName = "SAVAGE SPIN-OUT",
            .fullName = "Savage Spin-Out",
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
        .description = "The user spits threads\\nat the target made\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_SAVAGE_SPIN_OUT_SPECIAL] = {
        .names = {
            .name = "Savage Spin-Out",
            .capsName = "SAVAGE SPIN-OUT",
            .fullName = "Savage Spin-Out",
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
        .description = "The user spits threads\\nat the target made\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL] = {
        .names = {
            .name = "EndlessNitemare",
            .capsName = "ENDLESSNITEMARE",
            .fullName = "Never-Ending Nightmare",
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
        .description = "Deep-seated grudges are\\nsummoned by the user’s\\nZ-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL] = {
        .names = {
            .name = "EndlessNitemare",
            .capsName = "ENDLESSNITEMARE",
            .fullName = "Never-Ending Nightmare",
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
        .description = "Deep-seated grudges are\\nsummoned by the user’s\\nZ-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_CORKSCREW_CRASH_PHYSICAL] = {
        .names = {
            .name = "Corkscrew Crash",
            .capsName = "CORKSCREW CRASH",
            .fullName = "Corkscrew Crash",
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
        .description = "The user spins very fast\\nand rams into the target\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_CORKSCREW_CRASH_SPECIAL] = {
        .names = {
            .name = "Corkscrew Crash",
            .capsName = "CORKSCREW CRASH",
            .fullName = "Corkscrew Crash",
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
        .description = "The user spins very fast\\nand rams into the target\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_INFERNO_OVERDRIVE_PHYSICAL] = {
        .names = {
            .name = "Inferno Drive",
            .capsName = "INFERNO DRIVE",
            .fullName = "Inferno Overdrive",
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
        .description = "The user breathes a\\nstream of intense fire\\nusing its Z-Power. The\\npower varies depending\\non the original move.",
    },

    [MOVE_INFERNO_OVERDRIVE_SPECIAL] = {
        .names = {
            .name = "Inferno Drive",
            .capsName = "INFERNO DRIVE",
            .fullName = "Inferno Overdrive",
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
        .description = "The user breathes a\\nstream of intense fire\\nusing its Z-Power. The\\npower varies depending\\non the original move.",
    },

    [MOVE_HYDRO_VORTEX_PHYSICAL] = {
        .names = {
            .name = "Hydro Vortex",
            .capsName = "HYDRO VORTEX",
            .fullName = "Hydro Vortex",
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
        .description = "The user creates a huge\\nwhirling current using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_HYDRO_VORTEX_SPECIAL] = {
        .names = {
            .name = "Hydro Vortex",
            .capsName = "HYDRO VORTEX",
            .fullName = "Hydro Vortex",
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
        .description = "The user creates a huge\\nwhirling current using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_BLOOM_DOOM_PHYSICAL] = {
        .names = {
            .name = "Bloom Doom",
            .capsName = "BLOOM DOOM",
            .fullName = "Bloom Doom",
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
        .description = "The user attacks with\\nenergy drawn from plants\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_BLOOM_DOOM_SPECIAL] = {
        .names = {
            .name = "Bloom Doom",
            .capsName = "BLOOM DOOM",
            .fullName = "Bloom Doom",
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
        .description = "The user attacks with\\nenergy drawn from plants\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_GIGAVOLT_HAVOC_PHYSICAL] = {
        .names = {
            .name = "Gigavolt Havoc",
            .capsName = "GIGAVOLT HAVOC",
            .fullName = "Gigavolt Havoc",
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
        .description = "The user summons a\\nstrong electric current\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_GIGAVOLT_HAVOC_SPECIAL] = {
        .names = {
            .name = "Gigavolt Havoc",
            .capsName = "GIGAVOLT HAVOC",
            .fullName = "Gigavolt Havoc",
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
        .description = "The user summons a\\nstrong electric current\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_SHATTERED_PSYCHE_PHYSICAL] = {
        .names = {
            .name = "ShatteredPsyche",
            .capsName = "SHATTEREDPSYCHE",
            .fullName = "Shattered Psyche",
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
        .description = "The user hurts the\\ntarget’s mind using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_SHATTERED_PSYCHE_SPECIAL] = {
        .names = {
            .name = "ShatteredPsyche",
            .capsName = "SHATTEREDPSYCHE",
            .fullName = "Shattered Psyche",
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
        .description = "The user hurts the\\ntarget’s mind using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_SUBZERO_SLAMMER_PHYSICAL] = {
        .names = {
            .name = "Subzero Slammer",
            .capsName = "SUBZERO SLAMMER",
            .fullName = "Subzero Slammer",
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
        .description = "The user freezes the\\ntarget using its\\nZ-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_SUBZERO_SLAMMER_SPECIAL] = {
        .names = {
            .name = "Subzero Slammer",
            .capsName = "SUBZERO SLAMMER",
            .fullName = "Subzero Slammer",
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
        .description = "The user freezes the\\ntarget using its\\nZ-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_DEVASTATING_DRAKE_PHYSICAL] = {
        .names = {
            .name = "Ultimate Drake",
            .capsName = "ULTIMATE DRAKE",
            .fullName = "Devastating Drake",
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
        .description = "The user materializes\\nand projects its aura\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_DEVASTATING_DRAKE_SPECIAL] = {
        .names = {
            .name = "Ultimate Drake",
            .capsName = "ULTIMATE DRAKE",
            .fullName = "Devastating Drake",
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
        .description = "The user materializes\\nand projects its aura\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL] = {
        .names = {
            .name = "Black Eclipse",
            .capsName = "BLACK ECLIPSE",
            .fullName = "Black Hole Eclipse",
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
        .description = "The user sucks the\\ntarget into dark energy\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_BLACK_HOLE_ECLIPSE_SPECIAL] = {
        .names = {
            .name = "Black Eclipse",
            .capsName = "BLACK ECLIPSE",
            .fullName = "Black Hole Eclipse",
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
        .description = "The user sucks the\\ntarget into dark energy\\nusing its Z-Power. The\\npower varies, depending\\non the original move.",
    },

    [MOVE_TWINKLE_TACKLE_PHYSICAL] = {
        .names = {
            .name = "Twinkle Tackle",
            .capsName = "TWINKLE TACKLE",
            .fullName = "Twinkle Tackle",
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
        .description = "The user totally toys\\nwith the target using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_TWINKLE_TACKLE_SPECIAL] = {
        .names = {
            .name = "Twinkle Tackle",
            .capsName = "TWINKLE TACKLE",
            .fullName = "Twinkle Tackle",
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
        .description = "The user totally toys\\nwith the target using\\nits Z-Power. The power\\nvaries, depending on\\nthe original move.",
    },

    [MOVE_CATASTROPIKA] = {
        .names = {
            .name = "Catastropika",
            .capsName = "CATASTROPIKA",
            .fullName = "Catastropika",
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
        .description = "Pikachu surrounds\\nitself with maximum\\nelectricity using its\\nZ-Power and pounces on\\nits target.",
    },

    [MOVE_SHORE_UP] = {
        .names = {
            .name = "Shore Up",
            .capsName = "SHORE UP",
            .fullName = "Shore Up",
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
        .description = "The user restores its\\nown HP by up to half\\nits max HP.\\nIt regains more HP\\nin a sandstorm.",
    },

    [MOVE_FIRST_IMPRESSION] = {
        .names = {
            .name = "FirstImpression",
            .capsName = "FIRSTIMPRESSION",
            .fullName = "First Impression",
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
        .description = "Although this move has\\ngreat power, it works\\nonly on the first turn\\neach time the user\\nenters battle.",
    },

    [MOVE_BANEFUL_BUNKER] = {
        .names = {
            .name = "Baneful Bunker",
            .capsName = "BANEFUL BUNKER",
            .fullName = "Baneful Bunker",
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
        .description = "The user protects\\nitself from attacks\\nwhile poisoning any\\nattacker that makes\\ndirect contact.",
    },

    [MOVE_SPIRIT_SHACKLE] = {
        .names = {
            .name = "Spirit Shackle",
            .capsName = "SPIRIT SHACKLE",
            .fullName = "Spirit Shackle",
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
        .description = "The user attacks while\\nsimultaneously stitching\\nthe target’s shadow to\\nthe ground to prevent\\nthe target from fleeing.",
    },

    [MOVE_DARKEST_LARIAT] = {
        .names = {
            .name = "Darkest Lariat",
            .capsName = "DARKEST LARIAT",
            .fullName = "Darkest Lariat",
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
        .description = "The user swings both\\narms and hits the\\ntarget, ignoring changes\\nto the target’s Defense\\nand Evasion.",
    },

    [MOVE_SPARKLING_ARIA] = {
        .names = {
            .name = "Sparkling Aria",
            .capsName = "SPARKLING ARIA",
            .fullName = "Sparkling Aria",
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
        .description = "The user bursts into\\nsong, emitting bubbles.\\nAny Pokémon suffering\\nfrom a burn will be\\ncured by their touch.",
    },

    [MOVE_ICE_HAMMER] = {
        .names = {
            .name = "Ice Hammer",
            .capsName = "ICE HAMMER",
            .fullName = "Ice Hammer",
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
        .description = "The user swings and\\nhits with its strong,\\nheavy fist.\\nIt lowers the user’s\\nSpeed, however.",
    },

    [MOVE_FLORAL_HEALING] = {
        .names = {
            .name = "Floral Healing",
            .capsName = "FLORAL HEALING",
            .fullName = "Floral Healing",
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
        .description = "The user restores the\\ntarget’s HP by up to\\nhalf of its max HP. It\\nrestores more HP when\\nthe terrain is grass.",
    },

    [MOVE_HIGH_HORSEPOWER] = {
        .names = {
            .name = "High Horsepower",
            .capsName = "HIGH HORSEPOWER",
            .fullName = "High Horsepower",
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
        .description = "The user fiercely\\nattacks the target\\nusing its entire body.",
    },

    [MOVE_STRENGTH_SAP] = {
        .names = {
            .name = "Strength Sap",
            .capsName = "STRENGTH SAP",
            .fullName = "Strength Sap",
        },
        .data = {
            .effect = MOVE_EFFECT_STRENGTH_SAP,
            .split = SPLIT_STATUS,
            .power = 0,
            .type = TYPE_GRASS,
            .accuracy = 100,
            .pp = 10,
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
        .description = "The user restores its\\nHP by the same amount\\nas the target’s Attack\\nstat. It also lowers the\\ntarget’s Attack stat.",
    },

    [MOVE_SOLAR_BLADE] = {
        .names = {
            .name = "Solar Blade",
            .capsName = "SOLAR BLADE",
            .fullName = "Solar Blade",
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
        .description = "The user fills a blade\\nwith light’s energy on\\nthe first turn, then\\nattacks on the next\\nturn.",
    },

    [MOVE_LEAFAGE] = {
        .names = {
            .name = "Leafage",
            .capsName = "LEAFAGE",
            .fullName = "Leafage",
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
        .description = "The user attacks by\\npelting the target\\nwith leaves.",
    },

    [MOVE_SPOTLIGHT] = {
        .names = {
            .name = "Spotlight",
            .capsName = "SPOTLIGHT",
            .fullName = "Spotlight",
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
        .description = "The user shines a\\nspotlight on the target\\nso that only the target\\nwill be attacked during\\nthe turn.",
    },

    [MOVE_TOXIC_THREAD] = {
        .names = {
            .name = "Toxic Thread",
            .capsName = "TOXIC THREAD",
            .fullName = "Toxic Thread",
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
        .description = "The user shoots\\npoisonous threads\\nto poison the target\\nand lower the\\ntarget’s Speed stat.",
    },

    [MOVE_LASER_FOCUS] = {
        .names = {
            .name = "Laser Focus",
            .capsName = "LASER FOCUS",
            .fullName = "Laser Focus",
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
        .description = "The user concentrates\\nintensely.\\nThe attack on the next\\nturn always results in\\na critical hit.",
    },

    [MOVE_GEAR_UP] = {
        .names = {
            .name = "Gear Up",
            .capsName = "GEAR UP",
            .fullName = "Gear Up",
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
        .description = "The user engages its\\ngears to raise the\\nAttack and Sp. Atk\\nstats of ally Pokémon\\nwith Plus or Minus.",
    },

    [MOVE_THROAT_CHOP] = {
        .names = {
            .name = "Throat Chop",
            .capsName = "THROAT CHOP",
            .fullName = "Throat Chop",
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
        .description = "The user attacks the\\ntarget’s throat,\\npreventing the target\\nfrom using sound-based\\nmoves for two turns.",
    },

    [MOVE_POLLEN_PUFF] = {
        .names = {
            .name = "Pollen Puff",
            .capsName = "POLLEN PUFF",
            .fullName = "Pollen Puff",
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
        .description = "The user attacks with\\nan exploding pollen\\npuff. If the target is\\nan ally, it restores\\nits HP instead.",
    },

    [MOVE_ANCHOR_SHOT] = {
        .names = {
            .name = "Anchor Shot",
            .capsName = "ANCHOR SHOT",
            .fullName = "Anchor Shot",
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
        .description = "The user entangles the\\ntarget with its anchor\\nchain while attacking.\\nThe target becomes\\nunable to flee.",
    },

    [MOVE_PSYCHIC_TERRAIN] = {
        .names = {
            .name = "Psychic Terrain",
            .capsName = "PSYCHIC TERRAIN",
            .fullName = "Psychic Terrain",
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
        .description = "This protects Pokémon\\non the ground from\\npriority moves and\\npowers up Psychic-type\\nmoves for five turns.",
    },

    [MOVE_LUNGE] = {
        .names = {
            .name = "Lunge",
            .capsName = "LUNGE",
            .fullName = "Lunge",
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
        .description = "The user makes a lunge\\nat the target, attacking\\nwith full force.\\nThis also lowers the\\ntarget’s Attack stat.",
    },

    [MOVE_FIRE_LASH] = {
        .names = {
            .name = "Fire Lash",
            .capsName = "FIRE LASH",
            .fullName = "Fire Lash",
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
        .description = "The user strikes the\\ntarget with a burning\\nlash.\\nThis also lowers the\\ntarget’s Defense stat.",
    },

    [MOVE_POWER_TRIP] = {
        .names = {
            .name = "Power Trip",
            .capsName = "POWER TRIP",
            .fullName = "Power Trip",
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
        .description = "The user flaunts its\\nstrength. The more the\\nuser’s stats are\\nboosted, the greater\\nthe move’s power.",
    },

    [MOVE_BURN_UP] = {
        .names = {
            .name = "Burn Up",
            .capsName = "BURN UP",
            .fullName = "Burn Up",
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
        .description = "To inflict massive\\ndamage, the user burns\\nitself out. After using\\nthis move, the user will\\nno longer be Fire type.",
    },

    [MOVE_SPEED_SWAP] = {
        .names = {
            .name = "Speed Swap",
            .capsName = "SPEED SWAP",
            .fullName = "Speed Swap",
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
        .description = "The user exchanges\\nSpeed stats with the\\ntarget.",
    },

    [MOVE_SMART_STRIKE] = {
        .names = {
            .name = "Smart Strike",
            .capsName = "SMART STRIKE",
            .fullName = "Smart Strike",
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
        .description = "The user stabs the\\ntarget with a sharp\\nhorn.\\nThis attack never\\nmisses.",
    },

    [MOVE_PURIFY] = {
        .names = {
            .name = "Purify",
            .capsName = "PURIFY",
            .fullName = "Purify",
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
        .description = "The user cures the\\ntarget’s status\\ncondition. If the move\\nsucceeds, it also\\nrestores the user’s HP.",
    },

    [MOVE_REVELATION_DANCE] = {
        .names = {
            .name = "RevelationDance",
            .capsName = "REVELATIONDANCE",
            .fullName = "Revelation Dance",
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
        .description = "The user attacks the\\ntarget by dancing with\\nall its might. This\\nmove becomes the same\\ntype as the user’s type.",
    },

    [MOVE_CORE_ENFORCER] = {
        .names = {
            .name = "Core Enforcer",
            .capsName = "CORE ENFORCER",
            .fullName = "Core Enforcer",
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
        .description = "If a target has already\\nused their move this\\nturn, this move\\neliminates the effects\\nof their Ability.",
    },

    [MOVE_TROP_KICK] = {
        .names = {
            .name = "Trop Kick",
            .capsName = "TROP KICK",
            .fullName = "Trop Kick",
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
        .description = "The user lands an\\nintense kick of tropical\\norigins on the target.\\nThis also lowers the\\ntarget’s Attack stat.",
    },

    [MOVE_INSTRUCT] = {
        .names = {
            .name = "Instruct",
            .capsName = "INSTRUCT",
            .fullName = "Instruct",
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
        .description = "The user instructs the\\ntarget to reuse the\\nmove last used by the\\ntarget.",
    },

    [MOVE_BEAK_BLAST] = {
        .names = {
            .name = "Beak Blast",
            .capsName = "BEAK BLAST",
            .fullName = "Beak Blast",
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
        .description = "The user heats up its\\nbeak before attacking.\\nMaking contact before\\nthe user attacks\\nresults in a burn.",
    },

    [MOVE_CLANGING_SCALES] = {
        .names = {
            .name = "Clanging Scales",
            .capsName = "CLANGING SCALES",
            .fullName = "Clanging Scales",
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
        .description = "The user rubs its\\nscales to make a huge\\nnoise. The user’s\\nDefense stat is lowered\\nafter the attack.",
    },

    [MOVE_DRAGON_HAMMER] = {
        .names = {
            .name = "Dragon Hammer",
            .capsName = "DRAGON HAMMER",
            .fullName = "Dragon Hammer",
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
        .description = "The user wields its\\nbody like a hammer to\\nattack the target and\\ninflict damage.",
    },

    [MOVE_BRUTAL_SWING] = {
        .names = {
            .name = "Brutal Swing",
            .capsName = "BRUTAL SWING",
            .fullName = "Brutal Swing",
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
        .description = "The user swings its\\nbody around violently\\nto inflict damage on\\neverything in its\\nvicinity.",
    },

    [MOVE_AURORA_VEIL] = {
        .names = {
            .name = "Aurora Veil",
            .capsName = "AURORA VEIL",
            .fullName = "Aurora Veil",
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
        .description = "This move reduces damage\\nfrom most moves for five\\nturns. It can be used\\nonly when it is snowing.",
    },

    [MOVE_SINISTER_ARROW_RAID] = {
        .names = {
            .name = "Sinister Raid",
            .capsName = "SINISTER RAID",
            .fullName = "Sinister Arrow Raid",
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
        .description = "The user, Decidueye,\\ncreates countless\\narrows using its Z-Power\\nand shoots the target\\nwith full force.",
    },

    [MOVE_MALICIOUS_MOONSAULT] = {
        .names = {
            .name = "Moonsault",
            .capsName = "MOONSAULT",
            .fullName = "Malicious Moonsault",
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
        .description = "The user, Incineroar,\\nstrengthens its body\\nusing its Z-Power and\\ncrashes into the target\\nwith full force.",
    },

    [MOVE_OCEANIC_OPERETTA] = {
        .names = {
            .name = "OceanicOperetta",
            .capsName = "OCEANICOPERETTA",
            .fullName = "Oceanic Operetta",
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
        .description = "The user, Primarina,\\nsummons a massive\\namount of water using its\\nZ-Power and attacks the\\ntarget with full force.",
    },

    [MOVE_GUARDIAN_OF_ALOLA] = {
        .names = {
            .name = "Alolan Guardian",
            .capsName = "ALOLAN GUARDIAN",
            .fullName = "Guardian of Alola",
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
        .description = "The Land Spirit Pokémon\\nuses its Z-Power to\\nattack with Alola’s\\nenergy. This reduces the\\ntarget’s HP greatly.",
    },

    [MOVE_SOUL_STEALING_7_STAR_STRIKE] = {
        .names = {
            .name = "7-Star Strike",
            .capsName = "7-STAR STRIKE",
            .fullName = "Soul-Stealing 7-Star Strike",
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
        .description = "After obtaining\\nZ-Power, Marshadow\\npunches and kicks the\\ntarget consecutively\\nwith full force.",
    },

    [MOVE_STOKED_SPARKSURFER] = {
        .names = {
            .name = "Sparksurfer",
            .capsName = "SPARKSURFER",
            .fullName = "Stoked Sparksurfer",
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
        .description = "After obtaining\\nZ-Power, Alolan Raichu\\nattacks the target with\\nfull force, leaving\\nthem with paralysis.",
    },

    [MOVE_PULVERIZING_PANCAKE] = {
        .names = {
            .name = "Pulver-Pancake",
            .capsName = "PULVER-PANCAKE",
            .fullName = "Pulverizing Pancake",
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
        .description = "Z-Power brings out the\\ntrue capabilities of\\nSnorlax, which excitedly\\nmoves its enormous body\\nto attack the target.",
    },

    [MOVE_EXTREME_EVOBOOST] = {
        .names = {
            .name = "ExtremeEvoboost",
            .capsName = "EXTREMEEVOBOOST",
            .fullName = "Extreme Evoboost",
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
        .description = "After obtaining\\nZ-Power, Eevee gets\\nenergy from its evolved\\nfriends and boosts its\\nstats sharply.",
    },

    [MOVE_GENESIS_SUPERNOVA] = {
        .names = {
            .name = "OriginSupernova",
            .capsName = "ORIGINSUPERNOVA",
            .fullName = "Genesis Supernova",
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
        .description = "After obtaining\\nZ-Power, Mew attacks\\nthe target and charges\\nthe terrain with\\npsychic energy.",
    },

    [MOVE_SHELL_TRAP] = {
        .names = {
            .name = "Shell Trap",
            .capsName = "SHELL TRAP",
            .fullName = "Shell Trap",
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
        .description = "The user sets a shell\\ntrap. If hit by a\\nphysical move, the\\ntrap will explode and\\ninflict damage.",
    },

    [MOVE_FLEUR_CANNON] = {
        .names = {
            .name = "Fleur Cannon",
            .capsName = "FLEUR CANNON",
            .fullName = "Fleur Cannon",
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
        .description = "The user unleashes a\\nstrong beam.\\nThe attack’s recoil\\nharshly lowers the\\nuser’s Sp. Atk stat.",
    },

    [MOVE_PSYCHIC_FANGS] = {
        .names = {
            .name = "Psychic Fangs",
            .capsName = "PSYCHIC FANGS",
            .fullName = "Psychic Fangs",
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
        .description = "The user bites the\\ntarget with its psychic\\ncapabilities. This can\\nalso destroy Light\\nScreen and Reflect.",
    },

    [MOVE_STOMPING_TANTRUM] = {
        .names = {
            .name = "StompingTantrum",
            .capsName = "STOMPINGTANTRUM",
            .fullName = "Stomping Tantrum",
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
        .description = "Driven by frustration,\\nthe user attacks. This\\nmove’s power is\\ndoubled if the user’s\\nprevious move failed.",
    },

    [MOVE_SHADOW_BONE] = {
        .names = {
            .name = "Shadow Bone",
            .capsName = "SHADOW BONE",
            .fullName = "Shadow Bone",
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
        .description = "The user beats the\\ntarget with a bone that\\ncontains a spirit. This\\nmay also lower the\\ntarget’s Defense stat.",
    },

    [MOVE_ACCELEROCK] = {
        .names = {
            .name = "Accelerock",
            .capsName = "ACCELEROCK",
            .fullName = "Accelerock",
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
        .description = "The user smashes into\\nthe target at high\\nspeed.\\nThis move always goes\\nfirst.",
    },

    [MOVE_LIQUIDATION] = {
        .names = {
            .name = "Liquidation",
            .capsName = "LIQUIDATION",
            .fullName = "Liquidation",
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
        .description = "The user slams into\\nthe target using a\\nblast of water. This\\nmay also lower the\\ntarget’s Defense stat.",
    },

    [MOVE_PRISMATIC_LASER] = {
        .names = {
            .name = "Prismatic Laser",
            .capsName = "PRISMATIC LASER",
            .fullName = "Prismatic Laser",
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
        .description = "The user shoots\\npowerful lasers using\\nthe power of a prism.\\nThe user can’t move on\\nthe next turn.",
    },

    [MOVE_SPECTRAL_THIEF] = {
        .names = {
            .name = "Spectral Thief",
            .capsName = "SPECTRAL THIEF",
            .fullName = "Spectral Thief",
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
        .description = "The user hides in the\\ntarget’s shadow,\\nsteals the target’s\\nstat boosts,\\nand then attacks",
    },

    [MOVE_SUNSTEEL_STRIKE] = {
        .names = {
            .name = "Sunsteel Strike",
            .capsName = "SUNSTEEL STRIKE",
            .fullName = "Sunsteel Strike",
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
        .description = "The user attacks with\\nmeteoric force. This\\nmove can be used on\\nthe target regardless\\nof its Ability.",
    },

    [MOVE_MOONGEIST_BEAM] = {
        .names = {
            .name = "Moongeist Beam",
            .capsName = "MOONGEIST BEAM",
            .fullName = "Moongeist Beam",
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
        .description = "The user emits a\\nsinister ray. This\\nmove can be used on\\nthe target regardless\\nof its Ability.",
    },

    [MOVE_TEARFUL_LOOK] = {
        .names = {
            .name = "Tearful Look",
            .capsName = "TEARFUL LOOK",
            .fullName = "Tearful Look",
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
        .description = "The user tears up,\\nlowering the target’s\\nAttack and Sp. Atk\\nstats.\\nBypasses Protect.",
    },

    [MOVE_ZING_ZAP] = {
        .names = {
            .name = "Zing Zap",
            .capsName = "ZING ZAP",
            .fullName = "Zing Zap",
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
        .description = "The user crashes into\\nthe target, delivering\\na powerful electric\\nshock. This may also\\nmake the target flinch.",
    },

    [MOVE_NATURES_MADNESS] = {
        .names = {
            .name = "Nature’sMadness",
            .capsName = "NATURE’SMADNESS",
            .fullName = "Nature’s Madness",
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
        .description = "The user hits the\\ntarget with the full\\nwrath of nature.\\nThis cuts the target’s\\nHP in half.",
    },

    [MOVE_MULTI_ATTACK] = {
        .names = {
            .name = "Multi-Attack",
            .capsName = "MULTI-ATTACK",
            .fullName = "Multi-Attack",
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
        .description = "Cloaking itself in high\\nenergy, the user slams\\ninto the target. The\\nmemory held determines\\nthe move’s type.",
    },

    [MOVE_10_000_000_VOLT_THUNDERBOLT] = {
        .names = {
            .name = "10,000,000 Bolt",
            .capsName = "10,000,000 BOLT",
            .fullName = "10,000,000 Volt Thunderbolt",
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
        .description = "Pikachu (wearing a\\ncap) unleashes a jolt\\nof electricity using\\nits Z-Power. Critical\\nhits land more easily.",
    },

    [MOVE_MIND_BLOWN] = {
        .names = {
            .name = "Mind Blown",
            .capsName = "MIND BLOWN",
            .fullName = "Mind Blown",
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
        .description = "The user attacks\\neverything around it by\\ncausing its own head to\\nexplode. This also\\ndamages the user.",
    },

    [MOVE_PLASMA_FISTS] = {
        .names = {
            .name = "Plasma Fists",
            .capsName = "PLASMA FISTS",
            .fullName = "Plasma Fists",
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
        .description = "The user attacks with\\nelectrically charged\\nfists. This move\\nchanges Normal-type\\nmoves to Electric.",
    },

    [MOVE_PHOTON_GEYSER] = {
        .names = {
            .name = "Photon Geyser",
            .capsName = "PHOTON GEYSER",
            .fullName = "Photon Geyser",
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
        .description = "The user attacks with a\\npillar of light. This\\ncan inflict damage using\\nAttack or Sp. Atk-\\nwhichever is higher.",
    },

    [MOVE_LIGHT_THAT_BURNS_THE_SKY] = {
        .names = {
            .name = "LightBurnSky",
            .capsName = "LIGHTBURNSKY",
            .fullName = "Light That Burns the Sky",
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
        .description = "Necrozma inflicts damage\\nusing Attack or Sp. Atk-\\nwhichever is higher.\\nThis move ignores the\\ntarget’s Ability.",
    },

    [MOVE_SEARING_SUNRAZE_SMASH] = {
        .names = {
            .name = "Sunraze Smash",
            .capsName = "SUNRAZE SMASH",
            .fullName = "Searing Sunraze Smash",
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
        .description = "After obtaining Z-Power,\\nSolgaleo attacks the\\ntarget. This move can\\nignore the effect of the\\ntarget’s Ability.",
    },

    [MOVE_MENACING_MOONRAZE_MAELSTROM] = {
        .names = {
            .name = "Moonraze Storm",
            .capsName = "MOONRAZE STORM",
            .fullName = "Menacing Moonraze Maelstrom",
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
        .description = "After obtaining Z-Power,\\nLunala attacks the\\ntarget. This move can\\nignore the effect of the\\ntarget’s Ability.",
    },

    [MOVE_LETS_SNUGGLE_FOREVER] = {
        .names = {
            .name = "Let’s Snuggle",
            .capsName = "LET’S SNUGGLE",
            .fullName = "Let’s Snuggle Forever",
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
        .description = "After obtaining\\nZ-Power, the user,\\nMimikyu, punches the\\ntarget with full\\nforce.",
    },

    [MOVE_SPLINTERED_STORMSHARDS] = {
        .names = {
            .name = "Stormshards",
            .capsName = "STORMSHARDS",
            .fullName = "Splintered Stormshards",
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
        .description = "After obtaining\\nZ-Power, Lycanroc\\nattacks the target.\\nThis move also\\ndestroys terrain.",
    },

    [MOVE_CLANGOROUS_SOULBLAZE] = {
        .names = {
            .name = "Soulblaze",
            .capsName = "SOULBLAZE",
            .fullName = "Clangorous Soulblaze",
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
        .description = "After obtaining Z-Power, Kommo-o attacks. This move boosts the all the user’s stats at once.",
    },

    [MOVE_ZIPPY_ZAP] = {
        .names = {
            .name = "Zippy Zap",
            .capsName = "ZIPPY ZAP",
            .fullName = "Zippy Zap",
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
        .description = "The user attacks with\\nhigh-speed bursts of\\nelectricity. This move\\nboosts Evasion and\\nalways goes first.",
    },

    [MOVE_SPLISHY_SPLASH] = {
        .names = {
            .name = "Splishy Splash",
            .capsName = "SPLISHY SPLASH",
            .fullName = "Splishy Splash",
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
        .description = "The user charges a huge\\nwave with electricity.\\nThis may also leave the\\nopposing Pokémon with\\nparalysis.",
    },

    [MOVE_FLOATY_FALL] = {
        .names = {
            .name = "Floaty Fall",
            .capsName = "FLOATY FALL",
            .fullName = "Floaty Fall",
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
        .description = "The user floats in the\\nair, then dives at a\\nsteep angle to attack.\\nThis may also make the\\ntarget flinch.",
    },

    [MOVE_PIKA_PAPOW] = {
        .names = {
            .name = "Pika Papow",
            .capsName = "PIKA PAPOW",
            .fullName = "Pika Papow",
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
        .description = "The more Pikachu\\nloves its Trainer,\\nthe greater the\\nmove’s power.\\nIt never misses.",
    },

    [MOVE_BOUNCY_BUBBLE] = {
        .names = {
            .name = "Bouncy Bubble",
            .capsName = "BOUNCY BUBBLE",
            .fullName = "Bouncy Bubble",
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
        .description = "The user attacks by\\nshooting water\\nbubbles, which restore\\nits HP by half the\\ndamage dealt.",
    },

    [MOVE_BUZZY_BUZZ] = {
        .names = {
            .name = "Buzzy Buzz",
            .capsName = "BUZZY BUZZ",
            .fullName = "Buzzy Buzz",
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
        .description = "The user shoots a jolt\\nof electricity to\\nattack the target.\\nThis also leaves the\\ntarget with paralysis.",
    },

    [MOVE_SIZZLY_SLIDE] = {
        .names = {
            .name = "Sizzly Slide",
            .capsName = "SIZZLY SLIDE",
            .fullName = "Sizzly Slide",
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
        .description = "The user cloaks itself\\nin fire and charges at\\nthe target.\\nThis also leaves the\\ntarget with a burn.",
    },

    [MOVE_GLITZY_GLOW] = {
        .names = {
            .name = "Glitzy Glow",
            .capsName = "GLITZY GLOW",
            .fullName = "Glitzy Glow",
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
        .description = "The user bombards the\\ntarget with\\ntelekinetic force,\\nsuppressing damage\\nfrom special moves.",
    },

    [MOVE_BADDY_BAD] = {
        .names = {
            .name = "Baddy Bad",
            .capsName = "BADDY BAD",
            .fullName = "Baddy Bad",
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
        .description = "The user acts bad and\\nattacks the target,\\nsuppressing damage\\nfrom physical moves.",
    },

    [MOVE_SAPPY_SEED] = {
        .names = {
            .name = "Sappy Seed",
            .capsName = "SAPPY SEED",
            .fullName = "Sappy Seed",
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
        .description = "The user scatters\\nseeds to attack the\\ntarget. The seeds\\ndrain the target’s HP\\nevery turn.",
    },

    [MOVE_FREEZY_FROST] = {
        .names = {
            .name = "Freezy Frost",
            .capsName = "FREEZY FROST",
            .fullName = "Freezy Frost",
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
        .description = "The user attacks with a\\ncrystal made of frozen\\nhaze. It eliminates\\nevery stat change among\\nall Pokémon in battle.",
    },

    [MOVE_SPARKLY_SWIRL] = {
        .names = {
            .name = "Sparkly Swirl",
            .capsName = "SPARKLY SWIRL",
            .fullName = "Sparkly Swirl",
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
        .description = "The user attacks with\\nan overpowering scent.\\nThis also heals all\\nstatus conditions of\\nthe user’s party.",
    },

    [MOVE_VEEVEE_VOLLEY] = {
        .names = {
            .name = "Veevee Volley",
            .capsName = "VEEVEE VOLLEY",
            .fullName = "Veevee Volley",
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
        .description = "The more Eevee\\nloves its Trainer,\\nthe greater the\\nmove’s power.\\nIt never misses.",
    },

    [MOVE_DOUBLE_IRON_BASH] = {
        .names = {
            .name = "Double IronBash",
            .capsName = "DOUBLE IRONBASH",
            .fullName = "Double Iron Bash",
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
        .description = "The user spins on its\\nnut, striking the target\\nwith its arms twice in a\\nrow. This may also make\\nthe target flinch.",
    },

    [MOVE_MAX_GUARD] = {
        .names = {
            .name = "Max Guard",
            .capsName = "MAX GUARD",
            .fullName = "Max Guard",
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
        .description = "This move protects the\\nuser from all attacks.\\nIts chance of failing\\nrises if it is used in\\nsuccession.",
    },

    [MOVE_DYNAMAX_CANNON] = {
        .names = {
            .name = "Dynamax Cannon",
            .capsName = "DYNAMAX CANNON",
            .fullName = "Dynamax Cannon",
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
        .description = "The user condenses\\nenergy within its body\\nand unleashes that\\nenergy from its core\\nto inflict damage.",
    },

    [MOVE_SNIPE_SHOT] = {
        .names = {
            .name = "Snipe Shot",
            .capsName = "SNIPE SHOT",
            .fullName = "Snipe Shot",
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
        .description = "The user ignores\\nopposing Pokémon’s moves\\nand Abilities that draw\\nin moves, allowing it to\\nhit the chosen target.",
    },

    [MOVE_JAW_LOCK] = {
        .names = {
            .name = "Jaw Lock",
            .capsName = "JAW LOCK",
            .fullName = "Jaw Lock",
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
        .description = "This move prevents the\\nuser and the target from\\nswitching out until\\neither of them faints or\\nleaves the field.",
    },

    [MOVE_STUFF_CHEEKS] = {
        .names = {
            .name = "Stuff Cheeks",
            .capsName = "STUFF CHEEKS",
            .fullName = "Stuff Cheeks",
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
        .description = "The user eats its\\nheld Berry, then\\nsharply boosts its\\nDefense stat.",
    },

    [MOVE_NO_RETREAT] = {
        .names = {
            .name = "No Retreat",
            .capsName = "NO RETREAT",
            .fullName = "No Retreat",
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
        .description = "This move boosts all\\nthe user’s stats but\\nprevents the user\\nfrom switching out\\nor fleeing.",
    },

    [MOVE_TAR_SHOT] = {
        .names = {
            .name = "Tar Shot",
            .capsName = "TAR SHOT",
            .fullName = "Tar Shot",
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
        .description = "The user pours tar on\\nthe target, dropping\\ntheir Speed stat.\\nFire attacks deal\\nmore damage.",
    },

    [MOVE_MAGIC_POWDER] = {
        .names = {
            .name = "Magic Powder",
            .capsName = "MAGIC POWDER",
            .fullName = "Magic Powder",
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
        .description = "The user scatters a\\ncloud of magic powder\\nthat changes the\\ntarget’s type to\\nPsychic.",
    },

    [MOVE_DRAGON_DARTS] = {
        .names = {
            .name = "Dragon Darts",
            .capsName = "DRAGON DARTS",
            .fullName = "Dragon Darts",
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
        .description = "The user attacks twice\\nusing Dreepy. If there\\nare two opposing\\nPokémon, this move\\nhits each of them once.",
    },

    [MOVE_TEATIME] = {
        .names = {
            .name = "Teatime",
            .capsName = "TEATIME",
            .fullName = "Teatime",
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
        .description = "The user has teatime\\nwith all the Pokémon\\ncurrently in the battle.\\nEach Pokémon eats its\\nheld Berry.",
    },

    [MOVE_OCTOLOCK] = {
        .names = {
            .name = "Octolock",
            .capsName = "OCTOLOCK",
            .fullName = "Octolock",
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
        .description = "The user prevents the\\ntarget from fleeing.\\nThis move also lowers\\nthe target’s Defense\\nand Sp. Def every turn.",
    },

    [MOVE_BOLT_BEAK] = {
        .names = {
            .name = "Bolt Beak",
            .capsName = "BOLT BEAK",
            .fullName = "Bolt Beak",
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
        .description = "The user stabs with its\\nelectrified beak. This\\nmove’s power is doubled\\nif the user moves before\\nthe target.",
    },

    [MOVE_FISHIOUS_REND] = {
        .names = {
            .name = "Fishious Rend",
            .capsName = "FISHIOUS REND",
            .fullName = "Fishious Rend",
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
        .description = "The user rends with its\\nhard gills. If the user\\nattacks before the\\ntarget, the power of\\nthis move is doubled.",
    },

    [MOVE_COURT_CHANGE] = {
        .names = {
            .name = "Court Change",
            .capsName = "COURT CHANGE",
            .fullName = "Court Change",
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
        .description = "With its mysterious\\npower, the user swaps\\nthe effects on either\\nside of the field.",
    },

    [MOVE_MAX_FLARE] = {
        .names = {
            .name = "Max Flare",
            .capsName = "MAX FLARE",
            .fullName = "Max Flare",
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
        .description = "This is a Fire-type\\nattack Dynamax Pokémon\\nuse. The user\\nintensifies the sun\\nfor five turns.",
    },

    [MOVE_MAX_FLUTTERBY] = {
        .names = {
            .name = "Max Flutterby",
            .capsName = "MAX FLUTTERBY",
            .fullName = "Max Flutterby",
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
        .description = "This is a Bug-type\\nattack Dynamax Pokémon\\nuse. This lowers the\\ntarget’s Sp. Atk stat.",
    },

    [MOVE_MAX_LIGHTNING] = {
        .names = {
            .name = "Max Lightning",
            .capsName = "MAX LIGHTNING",
            .fullName = "Max Lightning",
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
        .description = "This is an Electric-type\\nattack Dynamax Pokémon\\nuse. The user turns the\\nground into Electric\\nTerrain for five turns.",
    },

    [MOVE_MAX_STRIKE] = {
        .names = {
            .name = "Max Strike",
            .capsName = "MAX STRIKE",
            .fullName = "Max Strike",
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
        .description = "This is a Normal-type\\nattack Dynamax Pokémon\\nuse. This lowers the\\ntarget’s Speed stat.",
    },

    [MOVE_MAX_KNUCKLE] = {
        .names = {
            .name = "Max Knuckle",
            .capsName = "MAX KNUCKLE",
            .fullName = "Max Knuckle",
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
        .description = "This is a Fighting-type\\nattack Dynamax Pokémon\\nuse. This boosts ally\\nPokémon’s Attack stats.",
    },

    [MOVE_MAX_PHANTASM] = {
        .names = {
            .name = "Max Phantasm",
            .capsName = "MAX PHANTASM",
            .fullName = "Max Phantasm",
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
        .description = "This is a Ghost-type\\nattack Dynamax Pokémon\\nuse. This lowers the\\ntarget’s Defense stat.",
    },

    [MOVE_MAX_HAILSTORM] = {
        .names = {
            .name = "Max Hailstorm",
            .capsName = "MAX HAILSTORM",
            .fullName = "Max Hailstorm",
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
        .description = "This is an Ice-type\\nattack Dynamax Pokémon\\nuse. The user summons\\na snowstorm lasting\\nfive turns.",
    },

    [MOVE_MAX_OOZE] = {
        .names = {
            .name = "Max Ooze",
            .capsName = "MAX OOZE",
            .fullName = "Max Ooze",
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
        .description = "This is a Poison-type\\nattack Dynamax Pokémon\\nuse. This boosts ally\\nPokémon’s Sp. Atk\\nstats.",
    },

    [MOVE_MAX_GEYSER] = {
        .names = {
            .name = "Max Geyser",
            .capsName = "MAX GEYSER",
            .fullName = "Max Geyser",
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
        .description = "This is a Water-type\\nattack Dynamax Pokémon\\nuse. The user summons\\na heavy rain that\\nfalls for five turns.",
    },

    [MOVE_MAX_AIRSTREAM] = {
        .names = {
            .name = "Max Airstream",
            .capsName = "MAX AIRSTREAM",
            .fullName = "Max Airstream",
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
        .description = "This is a Flying-type\\nattack Dynamax Pokémon\\nuse. This boosts ally\\nPokémon’s Speed stats.",
    },

    [MOVE_MAX_STARFALL] = {
        .names = {
            .name = "Max Starfall",
            .capsName = "MAX STARFALL",
            .fullName = "Max Starfall",
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
        .description = "This is a Fairy-type\\nattack Dynamax Pokémon\\nuse. The user turns the\\nground into Misty\\nTerrain for five turns.",
    },

    [MOVE_MAX_WYRMWIND] = {
        .names = {
            .name = "Max Wyrmwind",
            .capsName = "MAX WYRMWIND",
            .fullName = "Max Wyrmwind",
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
        .description = "This is a Dragon-type\\nattack Dynamax Pokémon\\nuse. This lowers the\\ntarget’s Attack stat.",
    },

    [MOVE_MAX_MINDSTORM] = {
        .names = {
            .name = "Max Mindstorm",
            .capsName = "MAX MINDSTORM",
            .fullName = "Max Mindstorm",
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
        .description = "This is a Psychic-type\\nattack Dynamax Pokémon\\nuse. The user turns the\\nground into Psychic\\nTerrain for five turns.",
    },

    [MOVE_MAX_ROCKFALL] = {
        .names = {
            .name = "Max Rockfall",
            .capsName = "MAX ROCKFALL",
            .fullName = "Max Rockfall",
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
        .description = "This is a Rock-type\\nattack Dynamax Pokémon\\nuse. The user summons\\na sandstorm lasting\\nfive turns.",
    },

    [MOVE_MAX_QUAKE] = {
        .names = {
            .name = "Max Quake",
            .capsName = "MAX QUAKE",
            .fullName = "Max Quake",
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
        .description = "This is a Ground-type\\nattack Dynamax Pokémon\\nuse. This boosts ally\\nPokémon’s Sp. Def\\nstats.",
    },

    [MOVE_MAX_DARKNESS] = {
        .names = {
            .name = "Max Darkness",
            .capsName = "MAX DARKNESS",
            .fullName = "Max Darkness",
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
        .description = "This is a Dark-type\\nattack Dynamax Pokémon\\nuse. This lowers the\\ntarget’s Sp. Def stat.",
    },

    [MOVE_MAX_OVERGROWTH] = {
        .names = {
            .name = "Max Overgrowth",
            .capsName = "MAX OVERGROWTH",
            .fullName = "Max Overgrowth",
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
        .description = "This is a Grass-type\\nattack Dynamax Pokémon\\nuse. The user turns the\\nground into Grassy\\nTerrain for five turns.",
    },

    [MOVE_MAX_STEELSPIKE] = {
        .names = {
            .name = "Max Steelspike",
            .capsName = "MAX STEELSPIKE",
            .fullName = "Max Steelspike",
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
        .description = "This is a Steel-type\\nattack Dynamax Pokémon\\nuse. This boosts ally\\nPokémon’s Defense\\nstats.",
    },

    [MOVE_CLANGOROUS_SOUL] = {
        .names = {
            .name = "Clangorous Soul",
            .capsName = "CLANGOROUS SOUL",
            .fullName = "Clangorous Soul",
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
        .description = "The user boosts all\\nits stats by using\\nsome of its own HP.",
    },

    [MOVE_BODY_PRESS] = {
        .names = {
            .name = "Body Press",
            .capsName = "BODY PRESS",
            .fullName = "Body Press",
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
        .description = "The user slams its\\nbody into the target.\\nThe higher the user’s\\nDefense stat, the\\ngreater the damage.",
    },

    [MOVE_DECORATE] = {
        .names = {
            .name = "Decorate",
            .capsName = "DECORATE",
            .fullName = "Decorate",
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
        .description = "The user sharply\\nboosts the target’s\\nAttack and Sp. Atk\\nstats by decorating\\nthe target.",
    },

    [MOVE_DRUM_BEATING] = {
        .names = {
            .name = "Drum Beating",
            .capsName = "DRUM BEATING",
            .fullName = "Drum Beating",
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
        .description = "The user plays its drum,\\ncontrolling the drum’s\\nroots to attack the\\ntarget. This also lowers\\nthe target’s Speed stat.",
    },

    [MOVE_SNAP_TRAP] = {
        .names = {
            .name = "Snap Trap",
            .capsName = "SNAP TRAP",
            .fullName = "Snap Trap",
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
        .description = "The user snares the\\ntarget in a snap trap\\nthat inflicts damage\\nfor four to five\\nturns.",
    },

    [MOVE_PYRO_BALL] = {
        .names = {
            .name = "Pyro Ball",
            .capsName = "PYRO BALL",
            .fullName = "Pyro Ball",
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
        .description = "The user ignites a small\\nstone and launches it as\\na fiery ball. This may\\nalso leave the target\\nwith a burn.",
    },

    [MOVE_BEHEMOTH_BLADE] = {
        .names = {
            .name = "Behemoth Blade",
            .capsName = "BEHEMOTH BLADE",
            .fullName = "Behemoth Blade",
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
        .description = "The user wields a\\nlarge, powerful sword\\nusing its whole body\\nand cuts the target\\nin a vigorous attack.",
    },

    [MOVE_BEHEMOTH_BASH] = {
        .names = {
            .name = "Behemoth Bash",
            .capsName = "BEHEMOTH BASH",
            .fullName = "Behemoth Bash",
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
        .description = "The user’s body\\nbecomes a firm shield\\nand slams into the\\ntarget fiercely.",
    },

    [MOVE_AURA_WHEEL] = {
        .names = {
            .name = "Aura Wheel",
            .capsName = "AURA WHEEL",
            .fullName = "Aura Wheel",
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
        .description = "Morpeko attacks and\\nboosts its Speed stat.\\nThis move’s type\\nchanges depending on\\nthe user’s form.",
    },

    [MOVE_BREAKING_SWIPE] = {
        .names = {
            .name = "Breaking Swipe",
            .capsName = "BREAKING SWIPE",
            .fullName = "Breaking Swipe",
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
        .description = "The user swings its\\ntough tail and attacks\\nopposing Pokémon.\\nThis also lowers their\\nAttack stats.",
    },

    [MOVE_BRANCH_POKE] = {
        .names = {
            .name = "Branch Poke",
            .capsName = "BRANCH POKE",
            .fullName = "Branch Poke",
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
        .description = "The user attacks the\\ntarget by poking it\\nwith a sharply\\npointed branch.",
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
        .description = "The user attacks by\\ntwanging a guitar or\\nbass guitar, causing a\\nhuge echo and strong\\nvibration.",
    },

    [MOVE_APPLE_ACID] = {
        .names = {
            .name = "Apple Acid",
            .capsName = "APPLE ACID",
            .fullName = "Apple Acid",
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
        .description = "The user attacks with an\\nacidic liquid created\\nfrom tart apples. This\\nalso lowers the target’s\\nSp. Def stat.",
    },

    [MOVE_GRAV_APPLE] = {
        .names = {
            .name = "Grav Apple",
            .capsName = "GRAV APPLE",
            .fullName = "Grav Apple",
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
        .description = "The user inflicts\\ndamage by dropping\\nan apple from above.\\nThis also lowers the\\ntarget’s Defense stat.",
    },

    [MOVE_SPIRIT_BREAK] = {
        .names = {
            .name = "Spirit Break",
            .capsName = "SPIRIT BREAK",
            .fullName = "Spirit Break",
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
        .description = "The user attacks with\\nenough force to break\\nthe target’s spirit.\\nThis also lowers the\\ntarget’s Sp. Atk stat.",
    },

    [MOVE_STRANGE_STEAM] = {
        .names = {
            .name = "Strange Steam",
            .capsName = "STRANGE STEAM",
            .fullName = "Strange Steam",
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
        .description = "The user attacks the\\ntarget by emitting\\nsteam.\\nThis may also\\nconfuse the target.",
    },

    [MOVE_LIFE_DEW] = {
        .names = {
            .name = "Life Dew",
            .capsName = "LIFE DEW",
            .fullName = "Life Dew",
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
        .description = "The user scatters\\nmysterious water around\\nand restores the HP of\\nitself and its allies\\ncurrently in battle.",
    },

    [MOVE_OBSTRUCT] = {
        .names = {
            .name = "Obstruct",
            .capsName = "OBSTRUCT",
            .fullName = "Obstruct",
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
        .description = "The user protects itself\\nfrom damage while\\nharshly lowering the\\nDefense of any attacker\\nthat makes contact.",
    },

    [MOVE_FALSE_SURRENDER] = {
        .names = {
            .name = "False Surrender",
            .capsName = "FALSE SURRENDER",
            .fullName = "False Surrender",
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
        .description = "The user pretends to\\nbow its head, but then\\nit stabs the target\\nwith its hair. This\\nattack never misses.",
    },

    [MOVE_METEOR_ASSAULT] = {
        .names = {
            .name = "Meteor Assault",
            .capsName = "METEOR ASSAULT",
            .fullName = "Meteor Assault",
        },
        .data = {
            .effect = MOVE_EFFECT_RECHARGE_AFTER,
            .split = SPLIT_PHYSICAL,
            .power = 150,
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
        .description = "The user attacks\\nwildly with its thick\\nleek.\\nThe user can’t move\\non the next turn.",
    },

    [MOVE_ETERNABEAM] = {
        .names = {
            .name = "Eternabeam",
            .capsName = "ETERNABEAM",
            .fullName = "Eternabeam",
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
        .description = "This is Eternatus’s\\nmost powerful attack\\nin its original form.\\nThe user can’t move\\non the next turn.",
    },

    [MOVE_STEEL_BEAM] = {
        .names = {
            .name = "Steel Beam",
            .capsName = "STEEL BEAM",
            .fullName = "Steel Beam",
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
        .description = "The user fires a beam\\nof steel that it\\ncollected from its\\nentire body. This also\\ndamages the user.",
    },

    [MOVE_EXPANDING_FORCE] = {
        .names = {
            .name = "Expanding Force",
            .capsName = "EXPANDING FORCE",
            .fullName = "Expanding Force",
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
        .description = "The user attacks with\\nits psychic power. This\\nmove’s power goes up and\\ndamages all opponents on\\nPsychic Terrain.",
    },

    [MOVE_STEEL_ROLLER] = {
        .names = {
            .name = "Steel Roller",
            .capsName = "STEEL ROLLER",
            .fullName = "Steel Roller",
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
        .description = "The user attacks while\\ndestroying the terrain.\\nThis move fails if the\\nground hasn’t turned\\ninto a terrain.",
    },

    [MOVE_SCALE_SHOT] = {
        .names = {
            .name = "Scale Shot",
            .capsName = "SCALE SHOT",
            .fullName = "Scale Shot",
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
        .description = "The user attacks by\\nshooting scales two to\\nfive times in a row.\\nThis raises Speed\\nbut lowers Defense.",
    },

    [MOVE_METEOR_BEAM] = {
        .names = {
            .name = "Meteor Beam",
            .capsName = "METEOR BEAM",
            .fullName = "Meteor Beam",
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
        .description = "The user gathers\\nenergy from space to\\nraise its Sp. Atk on\\nthe first turn, then\\nattacks on the next.",
    },

    [MOVE_SHELL_SIDE_ARM] = {
        .names = {
            .name = "Shell Side Arm",
            .capsName = "SHELL SIDE ARM",
            .fullName = "Shell Side Arm",
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
        .description = "This move is either\\nphysical or special,\\nwhichever will inflict\\nmore damage. This may\\nalso poison the target.",
    },

    [MOVE_MISTY_EXPLOSION] = {
        .names = {
            .name = "Misty Explosion",
            .capsName = "MISTY EXPLOSION",
            .fullName = "Misty Explosion",
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
        .description = "The user attacks\\neverything around it\\nand faints. This move’s\\npower is boosted on\\nMisty Terrain.",
    },

    [MOVE_GRASSY_GLIDE] = {
        .names = {
            .name = "Grassy Glide",
            .capsName = "GRASSY GLIDE",
            .fullName = "Grassy Glide",
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
        .description = "Gliding on the ground,\\nthe user attacks the\\ntarget. This move\\nalways goes first on\\nGrassy Terrain.",
    },

    [MOVE_RISING_VOLTAGE] = {
        .names = {
            .name = "Rising Voltage",
            .capsName = "RISING VOLTAGE",
            .fullName = "Rising Voltage",
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
        .description = "The user attacks with\\nelectricity rising from\\nthe ground. Its power is\\ndoubled if the target is\\non Electric Terrain.",
    },

    [MOVE_TERRAIN_PULSE] = {
        .names = {
            .name = "Terrain Pulse",
            .capsName = "TERRAIN PULSE",
            .fullName = "Terrain Pulse",
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
        .description = "The user utilizes the\\nenergy of the terrain.\\nThis move’s type and\\npower change depending\\non the current terrain.",
    },

    [MOVE_SKITTER_SMACK] = {
        .names = {
            .name = "Skitter Smack",
            .capsName = "SKITTER SMACK",
            .fullName = "Skitter Smack",
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
        .description = "The user skitters\\nbehind the target to\\nattack.\\nThis also lowers the\\ntarget’s Sp. Atk stat.",
    },

    [MOVE_BURNING_JEALOUSY] = {
        .names = {
            .name = "BurningJealousy",
            .capsName = "BURNINGJEALOUSY",
            .fullName = "Burning Jealousy",
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
        .description = "The user attacks with\\nenergy from jealousy.\\nThis burns all opposing\\nPokémon that have had\\ntheir stats boosted.",
    },

    [MOVE_LASH_OUT] = {
        .names = {
            .name = "Lash Out",
            .capsName = "LASH OUT",
            .fullName = "Lash Out",
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
        .description = "The user vents its\\nfrustration. Its power is\\ndoubled if the user’s\\nstats were lowered\\nduring this turn.",
    },

    [MOVE_POLTERGEIST] = {
        .names = {
            .name = "Poltergeist",
            .capsName = "POLTERGEIST",
            .fullName = "Poltergeist",
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
        .description = "The user attacks by\\ncontrolling the\\ntarget’s item. This\\nmove fails if the foe\\nisn’t holding an item.",
    },

    [MOVE_CORROSIVE_GAS] = {
        .names = {
            .name = "Corrosive Gas",
            .capsName = "CORROSIVE GAS",
            .fullName = "Corrosive Gas",
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
        .description = "The user surrounds\\neverything around it\\nwith highly acidic gas\\nand melts away items\\nheld by other Pokémon.",
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
        .description = "The user properly\\ncoaches its ally\\nPokémon, boosting\\ntheir Attack and\\nDefense stats.",
    },

    [MOVE_FLIP_TURN] = {
        .names = {
            .name = "Flip Turn",
            .capsName = "FLIP TURN",
            .fullName = "Flip Turn",
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
        .description = "After making its\\nattack, the user\\nrushes back to switch\\nplaces with a party\\nPokémon in waiting.",
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
        .description = "A consecutive\\nthree-kick attack\\nthat becomes more\\npowerful with each\\nsuccessful hit.",
    },

    [MOVE_DUAL_WINGBEAT] = {
        .names = {
            .name = "Dual Wingbeat",
            .capsName = "DUAL WINGBEAT",
            .fullName = "Dual Wingbeat",
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
        .description = "The user slams the\\ntarget with its wings\\nto inflict damage.\\nThe target is hit\\ntwice in a row.",
    },

    [MOVE_SCORCHING_SANDS] = {
        .names = {
            .name = "Scorching Sands",
            .capsName = "SCORCHING SANDS",
            .fullName = "Scorching Sands",
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
        .description = "The user throws\\nscorching sand at\\nthe target to attack.\\nThe target may also\\nbe left with a burn.",
    },

    [MOVE_JUNGLE_HEALING] = {
        .names = {
            .name = "Jungle Healing",
            .capsName = "JUNGLE HEALING",
            .fullName = "Jungle Healing",
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
        .description = "The user restores HP and\\ncures status conditions\\nfor itself and its ally\\nPokémon currently in the\\nbattle.",
    },

    [MOVE_WICKED_BLOW] = {
        .names = {
            .name = "Wicked Blow",
            .capsName = "WICKED BLOW",
            .fullName = "Wicked Blow",
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
        .description = "The user strikes\\nthe target with a\\nfierce blow.\\nThis move always\\nlands a critical hit.",
    },

    [MOVE_SURGING_STRIKES] = {
        .names = {
            .name = "Surging Strikes",
            .capsName = "SURGING STRIKES",
            .fullName = "Surging Strikes",
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
        .description = "The user strikes the\\ntarget with a flowing\\nmotion three times in\\na row. This move always\\nlands a critical hit.",
    },

    [MOVE_THUNDER_CAGE] = {
        .names = {
            .name = "Thunder Cage",
            .capsName = "THUNDER CAGE",
            .fullName = "Thunder Cage",
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
        .description = "The user traps the\\ntarget inside a cage\\nof electricity that\\ninflicts damage for\\nfour to five turns.",
    },

    [MOVE_DRAGON_ENERGY] = {
        .names = {
            .name = "Dragon Energy",
            .capsName = "DRAGON ENERGY",
            .fullName = "Dragon Energy",
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
        .description = "The user converts its\\nlife-force into power.\\nThe lower the user’s\\nHP, the lower the\\nmove’s power.",
    },

    [MOVE_FREEZING_GLARE] = {
        .names = {
            .name = "Freezing Glare",
            .capsName = "FREEZING GLARE",
            .fullName = "Freezing Glare",
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
        .description = "The user shoots its\\npsychic power from\\nits eyes to attack.\\nThis may also leave\\nthe target frozen.",
    },

    [MOVE_FIERY_WRATH] = {
        .names = {
            .name = "Fiery Wrath",
            .capsName = "FIERY WRATH",
            .fullName = "Fiery Wrath",
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
        .description = "The user transforms its\\nwrath into a fire-like\\naura to attack. This may\\nalso make opposing\\nPokémon flinch.",
    },

    [MOVE_THUNDEROUS_KICK] = {
        .names = {
            .name = "Thunderous Kick",
            .capsName = "THUNDEROUS KICK",
            .fullName = "Thunderous Kick",
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
        .description = "With lightning-like\\nmovement, the user\\ndelivers a kick. This\\nalso lowers the\\ntarget’s Defense stat.",
    },

    [MOVE_GLACIAL_LANCE] = {
        .names = {
            .name = "Glacial Lance",
            .capsName = "GLACIAL LANCE",
            .fullName = "Glacial Lance",
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
        .description = "The user attacks by\\nhurling a\\nblizzard-cloaked\\nicicle lance at\\nopposing Pokémon.",
    },

    [MOVE_ASTRAL_BARRAGE] = {
        .names = {
            .name = "Astral Barrage",
            .capsName = "ASTRAL BARRAGE",
            .fullName = "Astral Barrage",
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
        .description = "The user attacks by\\nsending a frightful\\namount of small\\nghosts at opposing\\nPokémon.",
    },

    [MOVE_EERIE_SPELL] = {
        .names = {
            .name = "Eerie Spell",
            .capsName = "EERIE SPELL",
            .fullName = "Eerie Spell",
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
        .description = "The user attacks with\\nits tremendous psychic\\npower. This also drains\\n3 PP from the move last\\nused by the target.",
    },

    [MOVE_DIRE_CLAW] = {
        .names = {
            .name = "Dire Claw",
            .capsName = "DIRE CLAW",
            .fullName = "Dire Claw",
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
        .description = "The user lashes out\\nat the target with\\nruinous claws. May\\nalso poison, paralyze,\\nor sleep the target.",
    },

    [MOVE_PSYSHIELD_BASH] = {
        .names = {
            .name = "Psyshield Bash",
            .capsName = "PSYSHIELD BASH",
            .fullName = "Psyshield Bash",
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
        .description = "Cloaked in psychic\\nenergy, the user slams\\ninto the target. This\\nalso boosts the user’s\\nDefense stat.",
    },

    [MOVE_POWER_SHIFT] = {
        .names = {
            .name = "Power Shift",
            .capsName = "POWER SHIFT",
            .fullName = "Power Shift",
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
        .description = "The user swaps its\\nAttack and Defense\\nstats.",
    },

    [MOVE_STONE_AXE] = {
        .names = {
            .name = "Stone Axe",
            .capsName = "STONE AXE",
            .fullName = "Stone Axe",
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
        .description = "The user swings its\\nstone axes at the\\ntarget. Splinters left\\nbehind by this attack\\nfloat around the target.",
    },

    [MOVE_SPRINGTIDE_STORM] = {
        .names = {
            .name = "SpringtideStorm",
            .capsName = "SPRINGTIDESTORM",
            .fullName = "Springtide Storm",
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
        .description = "The user wraps foes in\\nfierce winds brimming\\nwith love and hate.\\nThis may also lower\\ntheir Attack stats.",
    },

    [MOVE_MYSTICAL_POWER] = {
        .names = {
            .name = "Mystical Power",
            .capsName = "MYSTICAL POWER",
            .fullName = "Mystical Power",
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
        .description = "The user attacks by\\nemitting a mysterious\\npower.\\nThis also boosts the\\nuser’s Sp. Atk stat.",
    },

    [MOVE_RAGING_FURY] = {
        .names = {
            .name = "Raging Fury",
            .capsName = "RAGING FURY",
            .fullName = "Raging Fury",
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
        .description = "The user rampages\\naround spewing flames\\nfor two to three turns.\\nThe user then becomes\\nconfused.",
    },

    [MOVE_WAVE_CRASH] = {
        .names = {
            .name = "Wave Crash",
            .capsName = "WAVE CRASH",
            .fullName = "Wave Crash",
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
        .description = "The user shrouds\\nitself in water and\\nslams into the target.\\nThis also damages the\\nuser quite a lot.",
    },

    [MOVE_CHLOROBLAST] = {
        .names = {
            .name = "Chloroblast",
            .capsName = "CHLOROBLAST",
            .fullName = "Chloroblast",
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
        .description = "The user launches its\\namassed chlorophyll\\nto inflict damage on\\nthe target. This also\\ndamages the user.",
    },

    [MOVE_MOUNTAIN_GALE] = {
        .names = {
            .name = "Mountain Gale",
            .capsName = "MOUNTAIN GALE",
            .fullName = "Mountain Gale",
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
        .description = "The user hurls giant\\nchunks of ice at the\\ntarget to inflict\\ndamage. This may also\\nmake the target flinch.",
    },

    [MOVE_VICTORY_DANCE] = {
        .names = {
            .name = "Victory Dance",
            .capsName = "VICTORY DANCE",
            .fullName = "Victory Dance",
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
        .description = "The user performs an\\nintense dance to usher\\nin victory, boosting\\nits Attack, Defense,\\nand Speed stats.",
    },

    [MOVE_HEADLONG_RUSH] = {
        .names = {
            .name = "Headlong Rush",
            .capsName = "HEADLONG RUSH",
            .fullName = "Headlong Rush",
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
        .description = "The user smashes into\\nthe target in a\\nfull-body tackle. This\\nalso lowers the user’s\\nDefense and Sp. Def.",
    },

    [MOVE_BARB_BARRAGE] = {
        .names = {
            .name = "Barb Barrage",
            .capsName = "BARB BARRAGE",
            .fullName = "Barb Barrage",
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
        .description = "The user launches barbs\\nwhich may poison the\\ntarget. Its power is\\ndoubled if the target\\nis already poisoned.",
    },

    [MOVE_ESPER_WING] = {
        .names = {
            .name = "Esper Wing",
            .capsName = "ESPER WING",
            .fullName = "Esper Wing",
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
        .description = "The user slashes with\\naura-enriched wings and\\nboosts its Speed. This\\nmove has a heightened\\ncritical hit chance.",
    },

    [MOVE_BITTER_MALICE] = {
        .names = {
            .name = "Bitter Malice",
            .capsName = "BITTER MALICE",
            .fullName = "Bitter Malice",
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
        .description = "The user attacks the\\ntarget with spine-\\nchilling resentment.\\nThis also lowers the\\ntarget’s Attack stat.",
    },

    [MOVE_SHELTER] = {
        .names = {
            .name = "Shelter",
            .capsName = "SHELTER",
            .fullName = "Shelter",
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
        .description = "The user makes its\\nskin as hard as an\\niron shield,\\nsharply boosting\\nits Defense stat.",
    },

    [MOVE_TRIPLE_ARROWS] = {
        .names = {
            .name = "Triple Arrows",
            .capsName = "TRIPLE ARROWS",
            .fullName = "Triple Arrows",
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
        .description = "The user kicks and fires\\nthree arrows. This has a\\nhigh critical hit chance\\nand may lower Defense or\\nmake the target flinch.",
    },

    [MOVE_INFERNAL_PARADE] = {
        .names = {
            .name = "Infernal Parade",
            .capsName = "INFERNAL PARADE",
            .fullName = "Infernal Parade",
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
        .description = "The user summons myriad\\nfireballs which may burn\\nthe target. Its power is\\ndoubled if the target\\nhas a status condition.",
    },

    [MOVE_CEASELESS_EDGE] = {
        .names = {
            .name = "Ceaseless Edge",
            .capsName = "CEASELESS EDGE",
            .fullName = "Ceaseless Edge",
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
        .description = "The user slashes its\\nshell blade at the\\ntarget. Shell\\nsplinters left behind\\nremain as spikes.",
    },

    [MOVE_BLEAKWIND_STORM] = {
        .names = {
            .name = "BleakwindStorm",
            .capsName = "BLEAKWINDSTORM",
            .fullName = "Bleakwind Storm",
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
        .description = "The user attacks with\\nsavagely cold winds.\\nThis may also lower\\nthe Speed stats of\\nopposing Pokémon.",
    },

    [MOVE_WILDBOLT_STORM] = {
        .names = {
            .name = "WildboltStorm",
            .capsName = "WILDBOLTSTORM",
            .fullName = "Wildbolt Storm",
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
        .description = "The user savagely\\nattacks with\\nlightning and wind.\\nIt may also leave\\nopponents paralyzed.",
    },

    [MOVE_SANDSEAR_STORM] = {
        .names = {
            .name = "SandsearStorm",
            .capsName = "SANDSEARSTORM",
            .fullName = "Sandsear Storm",
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
        .description = "The user wraps opposing\\nPokémon in fierce winds\\nand searingly hot sand.\\nThis may also leave them\\nwith a burn.",
    },

    [MOVE_LUNAR_BLESSING] = {
        .names = {
            .name = "Lunar Blessing",
            .capsName = "LUNAR BLESSING",
            .fullName = "Lunar Blessing",
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
        .description = "The user receives a\\nblessing from the moon,\\nrestoring HP and curing\\nstatus conditions for\\nitself and its allies.",
    },

    [MOVE_TAKE_HEART] = {
        .names = {
            .name = "Take Heart",
            .capsName = "TAKE HEART",
            .fullName = "Take Heart",
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
        .description = "The user lifts its\\nspirits, curing its\\nown status conditions\\nand boosting its Sp.\\nAtk and Sp. Def stats.",
    },

    [MOVE_TERA_BLAST] = {
        .names = {
            .name = "Tera Blast",
            .capsName = "TERA BLAST",
            .fullName = "Tera Blast",
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
        .description = "If Terastallized, the\\nuser unleashes energy of\\nits Tera Type. It can\\nuse Attack or Sp. Atk-\\nwhichever is higher.",
    },

    [MOVE_SILK_TRAP] = {
        .names = {
            .name = "Silk Trap",
            .capsName = "SILK TRAP",
            .fullName = "Silk Trap",
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
        .description = "The user spins a silken\\ntrap, protecting itself\\nwhile lowering the Speed\\nof any attacker that\\nmakes direct contact.",
    },

    [MOVE_AXE_KICK] = {
        .names = {
            .name = "Axe Kick",
            .capsName = "AXE KICK",
            .fullName = "Axe Kick",
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
        .description = "The user slams its heel\\ndown upon the target,\\nwhich may also confuse\\nthem. If it misses, the\\nuser is hurt instead.",
    },

    [MOVE_LAST_RESPECTS] = {
        .names = {
            .name = "Last Respects",
            .capsName = "LAST RESPECTS",
            .fullName = "Last Respects",
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
        .description = "The user attacks to\\navenge its allies. The\\nmore defeated allies\\nin the user’s party,\\nthe greater its power.",
    },

    [MOVE_LUMINA_CRASH] = {
        .names = {
            .name = "Lumina Crash",
            .capsName = "LUMINA CRASH",
            .fullName = "Lumina Crash",
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
        .description = "The user unleashes a\\npeculiar light that even\\naffects the mind. This\\nalso harshly lowers the\\ntarget’s Sp. Def stat.",
    },

    [MOVE_ORDER_UP] = {
        .names = {
            .name = "Order Up",
            .capsName = "ORDER UP",
            .fullName = "Order Up",
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
        .description = "The user attacks with\\nelegant poise. If it has\\na Tatsugiri in its\\nmouth, this move boosts\\none of the user’s stats.",
    },

    [MOVE_JET_PUNCH] = {
        .names = {
            .name = "Jet Punch",
            .capsName = "JET PUNCH",
            .fullName = "Jet Punch",
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
        .description = "The user summons a\\ntorrent around its\\nfist and punches at\\nblinding speed. It is\\nsure to strike first.",
    },

    [MOVE_SPICY_EXTRACT] = {
        .names = {
            .name = "Spicy Extract",
            .capsName = "SPICY EXTRACT",
            .fullName = "Spicy Extract",
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
        .description = "The user’s incredibly\\nspicy extract sharply\\nboosts the target’s\\nAttack stat and harshly\\nlowers their Defense.",
    },

    [MOVE_SPIN_OUT] = {
        .names = {
            .name = "Spin Out",
            .capsName = "SPIN OUT",
            .fullName = "Spin Out",
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
        .description = "The user spins furiously\\nby straining its legs,\\ninflicting damage while\\nharshly lowering the\\nuser’s Speed stat.",
    },

    [MOVE_POPULATION_BOMB] = {
        .names = {
            .name = "Population Bomb",
            .capsName = "POPULATION BOMB",
            .fullName = "Population Bomb",
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
        .description = "The user’s fellows\\ngather in droves to\\nperform a combo attack\\nthat hits the target one\\nto ten times in a row.",
    },

    [MOVE_ICE_SPINNER] = {
        .names = {
            .name = "Ice Spinner",
            .capsName = "ICE SPINNER",
            .fullName = "Ice Spinner",
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
        .description = "The user covers its\\nfeet in ice and twirls\\naround, slamming into\\nthe target. It also\\ndestroys the terrain.",
    },

    [MOVE_GLAIVE_RUSH] = {
        .names = {
            .name = "Glaive Rush",
            .capsName = "GLAIVE RUSH",
            .fullName = "Glaive Rush",
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
        .description = "The user charges\\nrecklessly. Attacks on\\nthe user on the next\\nturn always hit and will\\ninflict double damage.",
    },

    [MOVE_REVIVAL_BLESSING] = {
        .names = {
            .name = "RevivalBlessing",
            .capsName = "REVIVALBLESSING",
            .fullName = "Revival Blessing",
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
        .description = "The user’s loving\\nblessing revives a party\\nPokémon that has fainted\\nand restores half that\\nPokémon’s max HP.",
    },

    [MOVE_SALT_CURE] = {
        .names = {
            .name = "Salt Cure",
            .capsName = "SALT CURE",
            .fullName = "Salt Cure",
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
        .description = "The user salt cures the\\ntarget, dealing damage\\nevery turn. Steel and\\nWater types are strongly\\naffected by this move.",
    },

    [MOVE_TRIPLE_DIVE] = {
        .names = {
            .name = "Triple Dive",
            .capsName = "TRIPLE DIVE",
            .fullName = "Triple Dive",
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
        .description = "The user performs a\\nperfectly timed triple\\ndive, hitting the target\\nwith splashes of water\\nthree times in a row.",
    },

    [MOVE_MORTAL_SPIN] = {
        .names = {
            .name = "Mortal Spin",
            .capsName = "MORTAL SPIN",
            .fullName = "Mortal Spin",
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
        .description = "A spin attack that can\\neliminate such moves as\\nBind, Wrap and Leech\\nSeed. It also poisons\\nopposing Pokémon.",
    },

    [MOVE_DOODLE] = {
        .names = {
            .name = "Doodle",
            .capsName = "DOODLE",
            .fullName = "Doodle",
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
        .description = "The target’s essence is\\ncaptured in a sketch.\\nThis makes the Abilities\\nof the user and its ally\\nmatch the target’s.",
    },

    [MOVE_FILLET_AWAY] = {
        .names = {
            .name = "Fillet Away",
            .capsName = "FILLET AWAY",
            .fullName = "Fillet Away",
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
        .description = "The user sharply\\nboosts its Attack,\\nSp. Atk, and Speed\\nstats by using its\\nown HP.",
    },

    [MOVE_KOWTOW_CLEAVE] = {
        .names = {
            .name = "Kowtow Cleave",
            .capsName = "KOWTOW CLEAVE",
            .fullName = "Kowtow Cleave",
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
        .description = "The user slashes at the\\ntarget after kowtowing\\nto make the target let\\ndown its guard. This\\nattack never misses.",
    },

    [MOVE_FLOWER_TRICK] = {
        .names = {
            .name = "Flower Trick",
            .capsName = "FLOWER TRICK",
            .fullName = "Flower Trick",
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
        .description = "The user throws a rigged\\nbouquet of flowers at\\nthe target. This attack\\nnever misses and always\\nlands a critical hit.",
    },

    [MOVE_TORCH_SONG] = {
        .names = {
            .name = "Torch Song",
            .capsName = "TORCH SONG",
            .fullName = "Torch Song",
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
        .description = "The user blows out\\nraging flames as if\\nsinging, scorching the\\ntarget. This also boosts\\nthe user’s Sp. Atk stat.",
    },

    [MOVE_AQUA_STEP] = {
        .names = {
            .name = "Aqua Step",
            .capsName = "AQUA STEP",
            .fullName = "Aqua Step",
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
        .description = "The user toys with the\\ntarget and attacks using\\nlight and fluid dance\\nsteps. This also boosts\\nthe user’s Speed stat.",
    },

    [MOVE_RAGING_BULL] = {
        .names = {
            .name = "Raging Bull",
            .capsName = "RAGING BULL",
            .fullName = "Raging Bull",
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
        .description = "The user performs a\\ntackle like a raging\\nbull. It can also break\\nbarriers, such as Light\\nScreen and Reflect.",
    },

    [MOVE_MAKE_IT_RAIN] = {
        .names = {
            .name = "Make It Rain",
            .capsName = "MAKE IT RAIN",
            .fullName = "Make It Rain",
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
        .description = "The user throws out a\\nmass of coins. This also\\nlowers the user’s Sp.\\nAtk stat. Money is\\nearned after the battle.",
    },

    [MOVE_PSYBLADE] = {
        .names = {
            .name = "Psyblade",
            .capsName = "PSYBLADE",
            .fullName = "Psyblade",
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
        .description = "The user rends with an\\nethereal blade. Its\\npower is boosted by 50\\npercent if the user is\\non Electric Terrain.",
    },

    [MOVE_HYDRO_STEAM] = {
        .names = {
            .name = "Hydro Steam",
            .capsName = "HYDRO STEAM",
            .fullName = "Hydro Steam",
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
        .description = "The user blasts out\\nboiling-hot water. Its\\npower is not lowered in\\nharsh sunlight but\\nrather boosted by 50%.",
    },

    [MOVE_RUINATION] = {
        .names = {
            .name = "Ruination",
            .capsName = "RUINATION",
            .fullName = "Ruination",
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
        .description = "The user summons a\\nruinous disaster.\\nThis cuts the\\ntarget’s HP in half.",
    },

    [MOVE_COLLISION_COURSE] = {
        .names = {
            .name = "ColisionCourse",
            .capsName = "COLISIONCOURSE",
            .fullName = "Collision Course",
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
        .description = "The user causes a\\nmassive prehistoric\\nexplosion. This move’s\\npower is boosted more if\\nit’s super effective.",
    },

    [MOVE_ELECTRO_DRIFT] = {
        .names = {
            .name = "Electro Drift",
            .capsName = "ELECTRO DRIFT",
            .fullName = "Electro Drift",
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
        .description = "The user pierces its\\ntarget with futuristic\\nelectricity. This move’s\\npower is boosted more if\\nit’s supereffective.",
    },

    [MOVE_SHED_TAIL] = {
        .names = {
            .name = "Shed Tail",
            .capsName = "SHED TAIL",
            .fullName = "Shed Tail",
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
        .description = "The user creates\\na decoy using its own\\nHP, then swaps places\\nwith a party Pokémon\\nin waiting.",
    },

    [MOVE_CHILLY_RECEPTION] = {
        .names = {
            .name = "ChillyReception",
            .capsName = "CHILLYRECEPTION",
            .fullName = "Chilly Reception",
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
        .description = "The user tells a\\nchillingly bad joke\\nbefore switching out.\\nThis summons a snowstorm\\nlasting five turns.",
    },

    [MOVE_TIDY_UP] = {
        .names = {
            .name = "Tidy Up",
            .capsName = "TIDY UP",
            .fullName = "Tidy Up",
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
        .description = "The user tidies up and\\nremoves entry hazards\\nand Substitutes. This\\nalso boosts the user’s\\nAttack and Speed stats.",
    },

    [MOVE_SNOWSCAPE] = {
        .names = {
            .name = "Snowscape",
            .capsName = "SNOWSCAPE",
            .fullName = "Snowscape",
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
        .description = "The user summons a\\nsnowstorm lasting five\\nturns. This boosts the\\nDefense stats of Ice\\ntypes.",
    },

    [MOVE_POUNCE] = {
        .names = {
            .name = "Pounce",
            .capsName = "POUNCE",
            .fullName = "Pounce",
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
        .description = "The user attacks by\\npouncing on the\\ntarget.\\nThis also lowers the\\ntarget’s Speed stat.",
    },

    [MOVE_TRAILBLAZE] = {
        .names = {
            .name = "Trailblaze",
            .capsName = "TRAILBLAZE",
            .fullName = "Trailblaze",
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
        .description = "The user attacks as if\\nleaping out from tall\\ngrass. The user’s\\nnimble footwork raises\\nits Speed stat.",
    },

    [MOVE_CHILLING_WATER] = {
        .names = {
            .name = "Chilling Water",
            .capsName = "CHILLING WATER",
            .fullName = "Chilling Water",
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
        .description = "The user attacks the\\ntarget by showering it\\nwith cold water. This\\nalso lowers the target’s\\nAttack stat.",
    },

    [MOVE_HYPER_DRILL] = {
        .names = {
            .name = "Hyper Drill",
            .capsName = "HYPER DRILL",
            .fullName = "Hyper Drill",
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
        .description = "The user spins at high\\nspeed to pierce the\\ntarget. This attack can\\nhit through a move such\\nas Protect or Detect.",
    },

    [MOVE_TWIN_BEAM] = {
        .names = {
            .name = "Twin Beam",
            .capsName = "TWIN BEAM",
            .fullName = "Twin Beam",
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
        .description = "The user shoots\\nmystical beams from its\\neyes to inflict damage.\\nThe target is hit twice\\nin a row.",
    },

    [MOVE_RAGE_FIST] = {
        .names = {
            .name = "Rage Fist",
            .capsName = "RAGE FIST",
            .fullName = "Rage Fist",
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
        .description = "The user converts its\\nrage into energy to\\nattack. The more the\\nuser has been attacked,\\nthe greater the power.",
    },

    [MOVE_ARMOR_CANNON] = {
        .names = {
            .name = "Armor Cannon",
            .capsName = "ARMOR CANNON",
            .fullName = "Armor Cannon",
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
        .description = "The user shoots its own\\narmor out as blazing\\nprojectiles. It also\\ncuts the user’s Defense\\nand Sp. Def stats.",
    },

    [MOVE_BITTER_BLADE] = {
        .names = {
            .name = "Bitter Blade",
            .capsName = "BITTER BLADE",
            .fullName = "Bitter Blade",
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
        .description = "The user focuses its\\nbitter feelings into a\\nslash. The user’s HP\\nis restored by up to\\nhalf the damage taken.",
    },

    [MOVE_DOUBLE_SHOCK] = {
        .names = {
            .name = "Double Shock",
            .capsName = "DOUBLE SHOCK",
            .fullName = "Double Shock",
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
        .description = "The user discharges\\nall the electricity\\nfrom its body. After\\nthis, the user loses\\nthe Electric type.",
    },

    [MOVE_GIGATON_HAMMER] = {
        .names = {
            .name = "Gigaton Hammer",
            .capsName = "GIGATON HAMMER",
            .fullName = "Gigaton Hammer",
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
        .description = "The user swings its\\nwhole body around to\\nattack with its huge\\nhammer. This move can’t\\nbe used twice in a row.",
    },

    [MOVE_COMEUPPANCE] = {
        .names = {
            .name = "Comeuppance",
            .capsName = "COMEUPPANCE",
            .fullName = "Comeuppance",
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
        .description = "The user retaliates\\nagainst the foe that\\nlast inflicted damage\\non it with much\\ngreater power.",
    },

    [MOVE_AQUA_CUTTER] = {
        .names = {
            .name = "Aqua Cutter",
            .capsName = "AQUA CUTTER",
            .fullName = "Aqua Cutter",
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
        .description = "The user expels\\npressurized water to\\ncut at the target like\\na blade. It has a high\\ncritical-hit ratio.",
    },

    [MOVE_BLAZING_TORQUE] = {
        .names = {
            .name = "Blazing Torque",
            .capsName = "BLAZING TORQUE",
            .fullName = "Blazing Torque",
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
        .description = "The user rams into the\\ntarget with blazing\\nenergy. This may also\\nleave the target with\\na burn.",
    },

    [MOVE_WICKED_TORQUE] = {
        .names = {
            .name = "Wicked Torque",
            .capsName = "WICKED TORQUE",
            .fullName = "Wicked Torque",
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
        .description = "The user rams into the\\ntarget with malicious\\nintent. This may put\\nthe target to sleep.",
    },

    [MOVE_NOXIOUS_TORQUE] = {
        .names = {
            .name = "Noxious Torque",
            .capsName = "NOXIOUS TORQUE",
            .fullName = "Noxious Torque",
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
        .description = "The user rams into the\\ntarget with a\\npoisonous end. This\\nmay also poison the\\ntarget.",
    },

    [MOVE_COMBAT_TORQUE] = {
        .names = {
            .name = "Combat Torque",
            .capsName = "COMBAT TORQUE",
            .fullName = "Combat Torque",
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
        .description = "The user rams into the\\ntarget with great\\nforce. This may also\\nleave the target with\\nparalysis.",
    },

    [MOVE_MAGICAL_TORQUE] = {
        .names = {
            .name = "Magical Torque",
            .capsName = "MAGICAL TORQUE",
            .fullName = "Magical Torque",
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
        .description = "The user rams into the\\ntarget with a fae-like\\nforce. This may also\\nconfuse the target.",
    },

    [MOVE_BLOOD_MOON] = {
        .names = {
            .name = "Blood Moon",
            .capsName = "BLOOD MOON",
            .fullName = "Blood Moon",
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
        .description = "The user unleashes the\\nfull brunt of its spirit\\nfrom a full moon.\\nThis move can’t be used\\ntwice in a row.",
    },

    [MOVE_MATCHA_GOTCHA] = {
        .names = {
            .name = "Matcha Gotcha",
            .capsName = "MATCHA GOTCHA",
            .fullName = "Matcha Gotcha",
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
        .description = "The user fires a blast\\nof tea, restoring HP\\nby up to half the\\ndamage dealt. This may\\nalso burn the target.",
    },

    [MOVE_SYRUP_BOMB] = {
        .names = {
            .name = "Syrup Bomb",
            .capsName = "SYRUP BOMB",
            .fullName = "Syrup Bomb",
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
        .description = "The user sets off a\\ngooey explosion, which\\ncauses the target’s\\nSpeed stat to drop each\\nturn for three turns.",
    },

    [MOVE_IVY_CUDGEL] = {
        .names = {
            .name = "Ivy Cudgel",
            .capsName = "IVY CUDGEL",
            .fullName = "Ivy Cudgel",
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
        .description = "The user strikes with a\\ncudgel. It has a high\\ncritical hit chance, and\\nits type changes with\\nthe user’s mask.",
    },

    [MOVE_ELECTRO_SHOT] = {
        .names = {
            .name = "Electro Shot",
            .capsName = "ELECTRO SHOT",
            .fullName = "Electro Shot",
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
        .description = "A two-turn attack.\\nThe user gathers\\nlight, then fires a\\nhigh voltage shot\\non the second turn.",
    },

    [MOVE_TERA_STARSTORM] = {
        .names = {
            .name = "Tera Starstorm",
            .capsName = "TERA STARSTORM",
            .fullName = "Tera Starstorm",
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
        .description = "The user bombards the\\ntarget with crystalline\\npower. When used by\\nStellar Terapagos, this\\nmove damages all foes.",
    },

    [MOVE_FICKLE_BEAM] = {
        .names = {
            .name = "Fickle Beam",
            .capsName = "FICKLE BEAM",
            .fullName = "Fickle Beam",
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
        .description = "The user shoots a beam\\nof light. Sometimes\\nthe user’s heads shoot\\nin unison, doubling\\nthe move’s power.",
    },

    [MOVE_BURNING_BULWARK] = {
        .names = {
            .name = "Burning Bulwark",
            .capsName = "BURNING BULWARK",
            .fullName = "Burning Bulwark",
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
        .description = "The user’s intensely hot\\nfur protects it from\\nattacks and also burns\\nany attacker that makes\\ndirect contact with it.",
    },

    [MOVE_THUNDERCLAP] = {
        .names = {
            .name = "Thunderclap",
            .capsName = "THUNDERCLAP",
            .fullName = "Thunderclap",
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
        .description = "The user attacks first\\nwith a jolt of\\nelectricity. This move\\nfails if the target is\\nnot readying an attack.",
    },

    [MOVE_MIGHTY_CLEAVE] = {
        .names = {
            .name = "Mighty Cleave",
            .capsName = "MIGHTY CLEAVE",
            .fullName = "Mighty Cleave",
        },
        .data = {
            .effect = MOVE_EFFECT_HIT,
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
        .description = "Light from atop the\\nuser’s head cleaves the\\ntarget. This move hits\\neven if the target\\nprotects itself.",
    },

    [MOVE_TACHYON_CUTTER] = {
        .names = {
            .name = "Tachyon Cutter",
            .capsName = "TACHYON CUTTER",
            .fullName = "Tachyon Cutter",
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
        .description = "The user attacks by\\nlaunching particle\\nblades at the target\\ntwice in a row. This\\nattack never misses.",
    },

    [MOVE_HARD_PRESS] = {
        .names = {
            .name = "Hard Press",
            .capsName = "HARD PRESS",
            .fullName = "Hard Press",
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
        .description = "The target is crushed by\\nthe user. The more HP\\nthe target has left, the\\ngreater the move’s\\npower.",
    },

    [MOVE_DRAGON_CHEER] = {
        .names = {
            .name = "Dragon Cheer",
            .capsName = "DRAGON CHEER",
            .fullName = "Dragon Cheer",
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
        .description = "Allies’ morale is raised\\nwith a draconic cry,\\nboosting their critical\\nhit rate. This rouses\\nDragon types more.",
    },

    [MOVE_ALLURING_VOICE] = {
        .names = {
            .name = "Alluring Voice",
            .capsName = "ALLURING VOICE",
            .fullName = "Alluring Voice",
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
        .description = "The user attacks using\\nits angelic voice. This\\nalso confuses the target\\nif its stats have been\\nboosted during the turn.",
    },

    [MOVE_TEMPER_FLARE] = {
        .names = {
            .name = "Temper Flare",
            .capsName = "TEMPER FLARE",
            .fullName = "Temper Flare",
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
        .description = "The user desperately\\nattacks the target. This\\nmove’s power is doubled\\nif the user’s previous\\nmove failed.",
    },

    [MOVE_SUPERCELL_SLAM] = {
        .names = {
            .name = "Supercell Slam",
            .capsName = "SUPERCELL SLAM",
            .fullName = "Supercell Slam",
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
        .description = "The user electrifies its\\nbody and drops onto the\\ntarget. If this move\\nmisses, the user takes\\ndamage instead.",
    },

    [MOVE_PSYCHIC_NOISE] = {
        .names = {
            .name = "Psychic Noise",
            .capsName = "PSYCHIC NOISE",
            .fullName = "Psychic Noise",
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
        .description = "The user attacks with\\nunpleasant sound waves.\\nFor two turns, the\\ntarget is prevented\\nfrom recovering HP.",
    },

    [MOVE_UPPER_HAND] = {
        .names = {
            .name = "Upper Hand",
            .capsName = "UPPER HAND",
            .fullName = "Upper Hand",
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
        .description = "The user strikes\\nreactively, making the\\ntarget flinch. This move\\nfails if the target is\\nnot readying a priority\\rmove.",
    },

    [MOVE_MALIGNANT_CHAIN] = {
        .names = {
            .name = "Malignant Chain",
            .capsName = "MALIGNANT CHAIN",
            .fullName = "Malignant Chain",
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
        .description = "The user pours toxins\\ninto the target through\\na corrosive chain. This\\nmay also leave the\\ntarget badly poisoned.",
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
