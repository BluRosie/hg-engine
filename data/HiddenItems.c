#include "../include/constants/item.h"
#include "../include/types.h"

typedef struct HiddenItemData {
    u16 itemId;
    u8 quantity;
    u8 unk3;
    u16 unk4;
    u16 index;
} HiddenItemData;

const HiddenItemData sHiddenItemParam[] = {
    { ITEM_POTION, 1, 0, 0, 0 }, // New Bark Town
    { ITEM_NUGGET, 1, 0, 0, 1 }, // Cherrygrove
    { ITEM_NUGGET, 1, 0, 0, 225 }, // Cherrygrove
    { ITEM_POTION, 1, 0, 0, 2 }, // R30
    { ITEM_POKE_BALL, 1, 0, 0, 14 }, // Dark Cave
    { ITEM_MAX_ETHER, 1, 0, 0, 15 }, // Dark Cave
    { ITEM_MAX_REVIVE, 1, 0, 0, 16 }, // Dark Cave
    { ITEM_HYPER_POTION, 1, 0, 0, 17 }, // Dark Cave
    { ITEM_ELIXIR, 1, 0, 0, 18 }, // Dark Cave
    { ITEM_HYPER_POTION, 1, 0, 0, 3 }, // Violet
    { ITEM_POKE_BALL, 1, 0, 0, 108 }, // Violet
    { ITEM_GREAT_BALL, 1, 0, 0, 146 }, // Ruins of Alph E
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 147 }, // Ruins of Alph SW
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 148 }, // Ruins of Alph W
    { ITEM_RARE_CANDY, 1, 0, 0, 149 }, // Ruins of Alph NW
    { ITEM_NUGGET, 1, 0, 0, 150 }, // Ruins of Alph SW
    { ITEM_GREAT_BALL, 1, 0, 0, 151 }, // Union Cave 1F E
    { ITEM_PARALYZE_HEAL, 1, 0, 0, 152 }, // Union Cave 1F S
    { ITEM_BIG_PEARL, 1, 0, 0, 154 }, // Union Cave 1F W
    { ITEM_X_SPEED, 1, 0, 0, 153 }, // Union Cave B1F S
    { ITEM_REVIVE, 1, 0, 0, 155 }, // Union Cave B1F E
    { ITEM_ULTRA_BALL, 1, 0, 0, 156 }, // Union Cave B2F SW
    { ITEM_CALCIUM, 1, 0, 0, 157 }, // Union Cave B2F W
    { ITEM_HEART_SCALE, 1, 0, 0, 4 }, // R32 E
    { ITEM_GREAT_BALL, 1, 0, 0, 5 }, // R32 SW
    { ITEM_SUPER_POTION, 1, 0, 0, 97 }, // R32 N
    { ITEM_FULL_HEAL, 1, 0, 0, 6 }, // Azalea Town
    { ITEM_GREAT_BALL, 1, 0, 0, 27 }, // Slowpoke Well Entrance
    { ITEM_SUPER_POTION, 1, 0, 0, 28 }, // Slowpoke Well B1F Rock
    { ITEM_FULL_HEAL, 1, 0, 0, 29 }, // Slowpoke Well B1F Ladder
    { ITEM_ANTIDOTE, 1, 0, 0, 30 }, // Ilex Forest W
    { ITEM_SUPER_POTION, 1, 0, 0, 31 }, // Ilex Forest
    { ITEM_FULL_HEAL, 1, 0, 0, 32 }, // Ilex Forest
    { ITEM_ETHER, 1, 0, 0, 33 }, // Ilex Forest
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 211 }, // Ilex Forest
    { ITEM_REPEL, 1, 0, 0, 212 }, // Ilex Forest
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 213 }, // Ilex Forest W Surf
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 214 }, // Ilex Forest
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 215 }, // Ilex Forest
    { ITEM_RARE_CANDY, 1, 0, 0, 7 }, // R34 Centre
    { ITEM_SUPER_POTION, 1, 0, 0, 8 }, // R34 E
    { ITEM_SUPER_POTION, 1, 0, 0, 9 }, // Goldenrod
    { ITEM_PARALYZE_HEAL, 1, 0, 0, 52 }, // Goldenrod Dept Store Basement W
    { ITEM_SUPER_POTION, 1, 0, 0, 53 }, // Goldenrod Dept Store Basement Centre
    { ITEM_ANTIDOTE, 1, 0, 0, 67 }, // Goldenrod Dept Store Basement SE
    { ITEM_MAX_POTION, 1, 0, 0, 68 }, // Goldenrod Tunnel Basement
    { ITEM_REVIVE, 1, 0, 0, 69 }, // Goldenrod Tunnel Basement
    { ITEM_NUGGET, 1, 0, 0, 10 }, // R35 NW
    { ITEM_AWAKENING, 1, 0, 0, 11 }, // R36 W
    { ITEM_FULL_HEAL, 1, 0, 0, 34 }, // National Park
    { ITEM_FULL_HEAL, 1, 0, 0, 35 }, // National Park
    { ITEM_PP_UP, 1, 0, 0, 159 }, // Pokeathlon Dome NE
    { ITEM_PROTEIN, 1, 0, 0, 160 }, // Pokeathlon Dome W
    { ITEM_HYPER_POTION, 1, 0, 0, 12 }, // Ecruteak Centre
    { ITEM_ETHER, 1, 0, 0, 13 }, // Ecruteak N
    { ITEM_RARE_CANDY, 1, 0, 0, 132 }, // Ecruteak NE
    { ITEM_ULTRA_BALL, 1, 0, 0, 133 }, // Ecruteak W
    { ITEM_ETHER, 1, 0, 0, 19 }, // Burned Tower Entrance N
    { ITEM_ULTRA_BALL, 1, 0, 0, 20 }, // Burned Tower Entrance SW
    { ITEM_ANTIDOTE, 1, 0, 0, 65 }, // Burned Tower Basement NW
    { ITEM_REVIVE, 1, 0, 0, 21 }, // Burned Tower Basement S
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 125 }, // Bellchime Trail
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 126 }, // Bellchime Trail
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 127 }, // Bellchime Trail
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 128 }, // Bellchime Trail
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 129 }, // Bellchime Trail
    { ITEM_MAX_POTION, 1, 0, 0, 62 }, // Bell Tower 3F
    { ITEM_FULL_RESTORE, 1, 0, 0, 63 }, // Bell Tower 5F
    { ITEM_CARBOS, 1, 0, 0, 64 }, // Bell Tower 8F
    { ITEM_HP_UP, 1, 0, 0, 22 }, // R38
    { ITEM_NUGGET, 1, 0, 0, 98 }, // R39 Centre SE
    { ITEM_PP_UP, 1, 0, 0, 135 }, // R39 W
    { ITEM_X_ATTACK, 1, 0, 0, 136 }, // R39 Centre NE
    { ITEM_RARE_CANDY, 1, 0, 0, 23 }, // Olivine Rock Climb
    { ITEM_FULL_HEAL, 1, 0, 0, 137 }, // Olivine Rock
    { ITEM_HYPER_POTION, 1, 0, 0, 66 }, // Olivine
    { ITEM_PROTEIN, 1, 0, 0, 86 }, // Olivine
    { ITEM_PEARL, 1, 0, 0, 158 }, // Olivine Dock
    { ITEM_RARE_CANDY, 1, 0, 0, 161 }, // Frontier Access
    { ITEM_HYPER_POTION, 1, 0, 0, 24 }, // R40
    { ITEM_MAX_ETHER, 1, 0, 0, 99 }, // Whirl Islands
    { ITEM_STARDUST, 1, 0, 0, 170 }, // Whirl Islands
    { ITEM_STARDUST, 1, 0, 0, 171 }, // Whirl Islands
    { ITEM_STARDUST, 1, 0, 0, 172 }, // Whirl Islands
    { ITEM_STARDUST, 1, 0, 0, 173 }, // Whirl Islands
    { ITEM_RARE_CANDY, 1, 0, 0, 73 }, // Whirl Islands
    { ITEM_ULTRA_BALL, 1, 0, 0, 74 }, // Whirl Islands
    { ITEM_SUPER_REPEL, 1, 0, 0, 191 }, // Whirl Islands
    { ITEM_PEARL, 1, 0, 0, 192 }, // Whirl Islands
    { ITEM_REVIVE, 1, 0, 0, 193 }, // Whirl Islands
    { ITEM_FULL_RESTORE, 1, 0, 0, 75 }, // Whirl Islands
    { ITEM_REVIVE, 1, 0, 0, 25 }, // Cianwood E
    { ITEM_STARDUST, 1, 0, 0, 26 }, // Cianwood NW
    { ITEM_BIG_PEARL, 1, 0, 0, 209 }, // Cliff Edge Gate
    { ITEM_STARDUST, 1, 0, 0, 39 }, // R47 SW
    { ITEM_PEARL, 1, 0, 0, 40 }, // R47 S
    { ITEM_ULTRA_BALL, 1, 0, 0, 226 }, // Cliff Cave
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 41 }, // Safari Zone Gate
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 130 }, // Safari Zone Gate
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 131 }, // Safari Zone Gate
    { ITEM_MAX_POTION, 1, 0, 0, 42 }, // R42
    { ITEM_HYPER_POTION, 1, 0, 0, 43 }, // Mt Mortar Entrance W
    { ITEM_REVIVE, 1, 0, 0, 44 }, // Mt Mortar Entrance E
    { ITEM_MAX_REPEL, 1, 0, 0, 45 }, // Mt Mortar Back
    { ITEM_ETHER, 1, 0, 0, 46 }, // Mt Mortar Back
    { ITEM_RARE_CANDY, 1, 0, 0, 140 }, // Mt Mortar Back
    { ITEM_ULTRA_BALL, 1, 0, 0, 141 }, // Mt Mortar Back
    { ITEM_NUGGET, 1, 0, 0, 142 }, // Mt Mortar Back
    { ITEM_FULL_RESTORE, 1, 0, 0, 47 }, // Mt Mortar 2F
    { ITEM_HP_UP, 1, 0, 0, 48 }, // Mt Mortar 2F
    { ITEM_HYPER_POTION, 1, 0, 0, 143 }, // Mt Mortar 2F
    { ITEM_FULL_HEAL, 1, 0, 0, 144 }, // Mt Mortar 2F
    { ITEM_MAX_REVIVE, 1, 0, 0, 49 }, // Mt Mortar B1F
    { ITEM_ULTRA_BALL, 1, 0, 0, 50 }, // Mt Mortar B1F
    { ITEM_REVIVE, 1, 0, 0, 51 }, // Rocket HQ B1F E
    { ITEM_FULL_HEAL, 1, 0, 0, 54 }, // Rocket HQ B2F S
    { ITEM_X_SP_DEF, 1, 0, 0, 55 }, // Rocket HQ B2F E
    { ITEM_FULL_RESTORE, 1, 0, 0, 36 }, // Lake of Rage SW
    { ITEM_RARE_CANDY, 1, 0, 0, 37 }, // Lake of Rage E
    { ITEM_MAX_POTION, 1, 0, 0, 102 }, // Lake of Rage NE
    { ITEM_ELIXIR, 1, 0, 0, 100 }, // R44
    { ITEM_MAX_POTION, 1, 0, 0, 70 }, // Ice Path 1F W
    { ITEM_ICE_HEAL, 1, 0, 0, 72 }, // Ice Path 1F N
    { ITEM_REVIVE, 1, 0, 0, 228 }, // Ice Path B1F
    { ITEM_CARBOS, 1, 0, 0, 71 }, // Ice Path B2F
    { ITEM_REVIVE, 1, 0, 0, 81 }, // Dragons Den NW
    { ITEM_MAX_POTION, 1, 0, 0, 82 }, // Dragons Den S
    { ITEM_MAX_ELIXIR, 1, 0, 0, 83 }, // Dragons Den W
    { ITEM_PP_UP, 1, 0, 0, 101 }, // R45
    { ITEM_REVIVE, 1, 0, 0, 181 }, // R27
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 182 }, // R27
    { ITEM_NUGGET, 1, 0, 0, 183 }, // R27
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 184 }, // R26
    { ITEM_MAX_POTION, 1, 0, 0, 79 }, // Victory Road
    { ITEM_FULL_HEAL, 1, 0, 0, 80 }, // Victory Road
    { ITEM_MAX_REVIVE, 1, 0, 0, 185 }, // Victory Road
    { ITEM_PP_UP, 1, 0, 0, 186 }, // Victory Road
    { ITEM_ULTRA_BALL, 1, 0, 0, 189 }, // Victory Road
    { ITEM_HYPER_POTION, 1, 0, 0, 187 }, // Victory Road
    { ITEM_ZINC, 1, 0, 0, 188 }, // Victory Road
    { ITEM_RARE_CANDY, 1, 0, 0, 190 }, // Indigo Plateau
    { ITEM_IRON, 1, 0, 0, 84 }, // Vermillion
    { ITEM_FULL_HEAL, 1, 0, 0, 103 }, // Vermillion
    { ITEM_HEART_SCALE, 1, 0, 0, 168 }, // Vermillion
    { ITEM_PEARL, 1, 0, 0, 162 }, // Vermillion
    { ITEM_PEARL, 1, 0, 0, 163 }, // Vermillion
    { ITEM_BIG_PEARL, 1, 0, 0, 164 }, // Vermillion
    { ITEM_MAX_REVIVE, 1, 0, 0, 56 }, // Digglets Cave Centre
    { ITEM_CALCIUM, 1, 0, 0, 224 }, // Digglets Cave NW
    { ITEM_FULL_RESTORE, 1, 0, 0, 57 }, // Underground Path
    { ITEM_X_SP_ATK, 1, 0, 0, 58 }, // Underground Path
    { ITEM_REVIVE, 1, 0, 0, 104 }, // R11
    { ITEM_X_ACCURACY, 1, 0, 0, 59 }, // Rock Tunnel
    { ITEM_X_DEFENSE, 1, 0, 0, 60 }, // Rock Tunnel
    { ITEM_MAX_POTION, 1, 0, 0, 61 }, // Rock Tunnel
    { ITEM_HP_UP, 1, 0, 0, 169 }, // Rock Tunnel
    { ITEM_CARBOS, 1, 0, 0, 197 }, // R10
    { ITEM_ETHER, 1, 0, 0, 105 }, // R9
    { ITEM_NUGGET, 1, 0, 0, 106 }, // Cerulean
    { ITEM_REVIVE, 1, 0, 0, 107 }, // R25
    { ITEM_PP_UP, 1, 0, 0, 122 }, // Celadon
    { ITEM_MAX_ETHER, 1, 0, 0, 109 }, // R17 Centre
    { ITEM_MAX_ELIXIR, 1, 0, 0, 110 }, // R17 South
    { ITEM_NUGGET, 1, 0, 0, 134 }, // Fuchsia
    { ITEM_CALCIUM, 1, 0, 0, 111 }, // R13
    { ITEM_ELIXIR, 1, 0, 0, 112 }, // R12
    { ITEM_MAX_ETHER, 1, 0, 0, 85 }, // Viridian Forest
    { ITEM_FULL_RESTORE, 1, 0, 0, 87 }, // Viridian Forest
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 216 }, // Viridian Forest
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 217 }, // Viridian Forest
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 218 }, // Viridian Forest
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 219 }, // Viridian Forest
    { ITEM_TINY_MUSHROOM, 1, 0, 0, 220 }, // Viridian Forest
    { ITEM_PP_UP, 1, 0, 0, 198 }, // Pewter W
    { ITEM_GUARD_SPEC, 1, 0, 0, 199 }, // Pewter SE
    { ITEM_MAX_REVIVE, 1, 0, 0, 227 }, // Pewter S
    { ITEM_STAR_PIECE, 1, 0, 0, 145 }, // R3
    { ITEM_STAR_PIECE, 1, 0, 0, 138 }, // R3
    { ITEM_HYPER_POTION, 1, 0, 0, 139 }, // R3
    { ITEM_REVIVE, 1, 0, 0, 195 }, // Mt Moon
    { ITEM_MAX_REVIVE, 1, 0, 0, 196 }, // Mt Moon Outside
    { ITEM_ULTRA_BALL, 1, 0, 0, 113 }, // R4 N
    { ITEM_BIG_MUSHROOM, 1, 0, 0, 194 }, // R4 S
    { ITEM_NUGGET, 1, 0, 0, 200 }, // Viridian
    { ITEM_STARDUST, 1, 0, 0, 174 }, // R20
    { ITEM_STARDUST, 1, 0, 0, 175 }, // R21
    { ITEM_STARDUST, 1, 0, 0, 176 }, // R21
    { ITEM_STARDUST, 1, 0, 0, 177 }, // R21
    { ITEM_RARE_CANDY, 1, 0, 0, 114 }, // Cinnabar
    { ITEM_IRON, 1, 0, 0, 166 }, // Cinnabar
    { ITEM_STAR_PIECE, 1, 0, 0, 167 }, // Cinnabar
    { ITEM_ESCAPE_ROPE, 1, 0, 0, 88 }, // Seafoam Islands
    { ITEM_ICE_HEAL, 1, 0, 0, 89 }, // Seafoam Islands
    { ITEM_PEARL, 1, 0, 0, 90 }, // Seafoam Islands
    { ITEM_PEARL, 1, 0, 0, 91 }, // Seafoam Islands
    { ITEM_MAX_REVIVE, 1, 0, 0, 92 }, // Seafoam Islands
    { ITEM_RARE_CANDY, 1, 0, 0, 210 }, // Seafoam Islands
    { ITEM_ZINC, 1, 0, 0, 223 }, // Seafoam Islands
    { ITEM_BIG_PEARL, 1, 0, 0, 180 }, // R19
    { ITEM_PEARL, 1, 0, 0, 178 }, // R19
    { ITEM_PEARL, 1, 0, 0, 179 }, // R19
    { ITEM_REVIVE, 1, 0, 0, 207 }, // R19
    { ITEM_MAX_ELIXIR, 1, 0, 0, 208 }, // R19
    { ITEM_RARE_CANDY, 1, 0, 0, 115 }, // R28
    { ITEM_FULL_RESTORE, 1, 0, 0, 116 }, // Mt Silver PC
    { ITEM_DIRE_HIT, 1, 0, 0, 76 }, // Mt Silver
    { ITEM_ULTRA_BALL, 1, 0, 0, 77 }, // Mt Silver
    { ITEM_REVIVE, 1, 0, 0, 201 }, // Mt Silver
    { ITEM_RARE_CANDY, 1, 0, 0, 165 }, // Mt Silver
    { ITEM_MAX_ETHER, 1, 0, 0, 204 }, // Mt Silver
    { ITEM_HYPER_POTION, 1, 0, 0, 205 }, // Mt Silver
    { ITEM_ULTRA_BALL, 1, 0, 0, 202 }, // Mt Silver
    { ITEM_HYPER_POTION, 1, 0, 0, 203 }, // Mt Silver
    { ITEM_MAX_POTION, 1, 0, 0, 78 }, // Mt Silver
    { ITEM_IRON, 1, 0, 0, 222 }, // Mt Silver
    { ITEM_MAX_REVIVE, 1, 0, 0, 206 }, // Mt Silver
    { ITEM_HYPER_POTION, 1, 0, 0, 93 }, // Cerulean Cave
    { ITEM_RARE_CANDY, 1, 0, 0, 94 }, // Cerulean Cave
    { ITEM_REVIVE, 1, 0, 0, 95 }, // Cerulean Cave
    { ITEM_ULTRA_BALL, 1, 0, 0, 96 }, // Cerulean Cave
    { ITEM_PP_UP, 1, 0, 0, 117 }, // Cerulean Cave
    { ITEM_BIG_PEARL, 1, 0, 0, 118 }, // Cerulean Cave
    { ITEM_ZINC, 1, 0, 0, 119 }, // Cerulean Cave
    { ITEM_FULL_HEAL, 1, 0, 0, 120 }, // Cerulean Cave
    { ITEM_PROTEIN, 1, 0, 0, 221 }, // Cerulean Cave
    { ITEM_MAX_REVIVE, 1, 0, 0, 121 }, // Cerulean Cave
    { ITEM_ULTRA_BALL, 1, 0, 0, 123 }, // Cerulean Cave
    { ITEM_NUGGET, 1, 0, 0, 124 }, // Cerulean Cave
    { ITEM_DEEP_SEA_TOOTH, 1, 0, 0, 38 }, // R20
    { ITEM_DEEP_SEA_SCALE, 1, 0, 0, 229 }, // R20
    { ITEM_PP_MAX, 1, 0, 0, 230 }, // R46
};
