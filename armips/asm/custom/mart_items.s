.nds
.thumb

// Thanks to Drayano for this mart template! -sauceyaTTa
// Changes items obtainable in some Poké Marts

//内存基址
.open "base/arm9.bin", 0x02000000

ZERO_BADGES equ 1
ONE_BADGE equ 2
THREE_BADGES equ 3
FIVE_BADGES equ 4
SEVEN_BADGES equ 5
EIGHT_BADGES equ 6

//ZERO_BADGES 0徽章
//ONE_BADGE 1徽章
//THREE_BADGES 3徽章
//FIVE_BADGES 5徽章
//SEVEN_BADGES 7徽章
//EIGHT_BADGES 8徽章

/* 普通商店物品表 */
.org 0x020FBF22

//0徽章	//精灵球
.halfword ITEM_POKE_BALL
.halfword ZERO_BADGES

//0徽章	//超级球
.halfword ITEM_GREAT_BALL
.halfword ZERO_BADGES

//0徽章	//高级球
.halfword ITEM_ULTRA_BALL
.halfword ZERO_BADGES

//0徽章	//穿洞绳
.halfword ITEM_ESCAPE_ROPE
.halfword ZERO_BADGES


//0徽章	//解毒药
.halfword ITEM_ANTIDOTE
.halfword ZERO_BADGES

//0徽章	//解麻药
.halfword ITEM_PARALYZE_HEAL
.halfword ZERO_BADGES

//1徽章	//好伤药
.halfword ITEM_SUPER_POTION
.halfword ONE_BADGE

//3徽章	//高级药
.halfword ITEM_HYPER_POTION
.halfword THREE_BADGES

//7徽章	//满腹药
.halfword ITEM_MAX_POTION
.halfword SEVEN_BADGES

//8徽章	//全复药
.halfword ITEM_FULL_RESTORE
.halfword EIGHT_BADGES

//3徽章	//活力碎片
.halfword ITEM_REVIVE
.halfword THREE_BADGES

//8徽章	//活力块
.halfword ITEM_MAX_REVIVE
.halfword EIGHT_BADGES

//5徽章	//黄金喷雾剂
.halfword ITEM_MAX_REPEL
.halfword ZERO_BADGES

//1徽章	//0
.halfword 0xFFFF
.halfword ONE_BADGE

/** 特殊商店列表
const u16 *_0210FA3C[] = {
    _020FBA54, 0	//吉花市的商店第二个售货员
    _020FBA78, 1	//桔梗市的商店第二个售货员
    _020FBAB0, 2	//桧皮镇的商店第二个售货员
    _020FBBEA, 3	//鎏金市2F的第一个店员，性格薄荷
    _020FBC1A, 4	//鎏金市2F的第二个店员，精灵球、喷雾剂，邮件等物品
    _020FBBB4, 5	//鎏金市3F，携带获取双倍努力的道具
    _020FBAFA, 6	//鎏金市4F，努力增强剂。
    _020FBC34, 7	//鎏金市5F，各种进化石
    _020FBACA, 8	//应该是湛蓝市药店，元气粉，元气根，
    _020FBA60, 9	//槐荫市的商店第二个售货员
    _020FBA88, 10	//浅木市的商店第二个售货员
    _020FBAD4, 11	//湛蓝市的商家
    _020FBA80, 12	//烟墨市的商店第二个售货员
    _020FBB84, 13	//宝可梦联盟的商店
    _020FBAC0, 14	//枯叶市的商店第二个售货员
    _020FBA70, 15	//金黄市的商店第二个售货员
    _020FBA98, 16	//紫苑镇的商店第二个售货员
    _020FBA5A, 17	//华蓝市的商店第二个售货员
    _020FBC02, 18	//玉虹市
    _020FBC4E, 19	//玉虹市
    _020FBC68, 20	//玉虹市
    _020FBA68, 21	//玉虹市
    _020FBBC6, 22 	//玉虹市
    _020FBB08, 23 	//玉虹市
    _020FBA90, 24 	//浅红市的商店第二个售货员
    _020FBAA0, 25	//深灰市的商店第二个售货员
    _020FBAA8, 26	//常青市的商店第二个售货员
    _020FBB16, 27	//月见山的商店
    _020FBAB8, 28	//桃花木心镇的商家
    _020FBBD8, 29	//桃花木心镇的商家
};
*/

//	例子：const u16 _020FBA54[] = {ITEM_AIR_MAIL, ITEM_HEAL_BALL, 0xFFFF}; 这个数组的数量，最大可能是16（我猜的）。
//	上面的代码意思是：声明一个u16类型的数组变量，数组里的就是售卖的物品： 天空邮件、治愈球、结尾符


//吉花市的商店
.org 0x020FBA54
//治愈球、巢穴球、先机球、豪华球
.halfword ITEM_HEAL_BALL
.halfword ITEM_NEST_BALL
.halfword ITEM_QUICK_BALL
.halfword ITEM_LUXURY_BALL
.halfword 0xFFFF

/* const u16 _020FBA5A[] = {ITEM_AIR_MAIL, ITEM_QUICK_BALL, 0xFFFF}; */
/* const u16 _020FBA60[] = {ITEM_AIR_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF}; */
/* Ecruteak City 2nd Clerk -> Safari Zone Top Stall */

//缘朱市(槐荫市)
.org 0x020FBA60
//吼叫,十字剪,食梦、充电光束、银色旋风、暗影爪、岩石打磨、隐形岩、查封，升级数据
.halfword ITEM_TM05
.halfword ITEM_TM81
.halfword ITEM_TM85

.halfword ITEM_TM57
.halfword ITEM_TM62
.halfword ITEM_TM65
.halfword ITEM_TM69
.halfword ITEM_TM76
.halfword ITEM_TM63
.halfword ITEM_UP_GRADE

.halfword 0xFFFF

/* const u16 _020FBA68[] = {ITEM_AIR_MAIL, ITEM_TUNNEL_MAIL, ITEM_BLOOM_MAIL, 0xFFFF}; */
/* const u16 _020FBA70[] = {ITEM_AIR_MAIL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF}; */
/* const u16 _020FBA78[] = {ITEM_TUNNEL_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF}; */
/* Violet City -> Goldenrod Flower Shop */

//	桔梗市
.org 0x020FBA78
//	刀背打、自然之恩、雪崩、降物攻果、气腰、强力香草
.halfword ITEM_TM54
.halfword ITEM_POWER_HERB
.halfword ITEM_TM72
.halfword 0xFFFF

/* const u16 _020FBA80[] = {ITEM_AIR_MAIL, ITEM_NET_BALL, ITEM_DUSK_BALL, 0xFFFF}; */

//	烟墨市的商店第二个售货员：保护、替身、黑暗球
.org 0x020FBA80
.halfword ITEM_TM58
.halfword ITEM_TM90
.halfword ITEM_DUSK_BALL
.halfword 0xFFFF


/* const u16 _020FBA88[] = {ITEM_HEART_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF}; */

//	浅木市的商店第二个售货员：剧毒、铁蹄光线、
.org 0x020FBA88
.halfword ITEM_TM06
.halfword ITEM_TM91
.halfword ITEM_TM89
.halfword 0xFFFF

/* const u16 _020FBA90[] = {ITEM_STEEL_MAIL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF}; */
/* const u16 _020FBA98[] = {ITEM_SNOW_MAIL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF}; */
/* const u16 _020FBAA0[] = {ITEM_STEEL_MAIL, ITEM_NEST_BALL, ITEM_QUICK_BALL, 0xFFFF}; */
/* const u16 _020FBAA8[] = {ITEM_STEEL_MAIL, ITEM_NET_BALL, ITEM_HEAL_BALL, 0xFFFF}; */
/* const u16 _020FBAB0[] = {ITEM_BLOOM_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF}; */

//	桧皮镇的商店第二个售货员
.org 0x020FBAB0
.halfword ITEM_TM03
.halfword ITEM_TM88
.halfword ITEM_TM34
.halfword ITEM_RAZOR_CLAW
.halfword ITEM_RAZOR_FANG
.halfword ITEM_PROTECTOR
.halfword ITEM_ELECTIRIZER
.halfword ITEM_MAGMARIZER
.halfword ITEM_DUBIOUS_DISC
.halfword ITEM_REAPER_CLOTH
.halfword 0xFFFF

/* const u16 _020FBAB8[] = {ITEM_TINYMUSHROOM, ITEM_POKE_BALL, ITEM_POTION, 0xFFFF}; */
/* const u16 _020FBAC0[] = {ITEM_AIR_MAIL, ITEM_NEST_BALL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF}; */
/* const u16 _020FBACA[] = {ITEM_HEAL_POWDER, ITEM_ENERGYPOWDER, ITEM_ENERGY_ROOT, ITEM_REVIVAL_HERB, 0xFFFF}; */

//	湛蓝市的商家
.org 0x020FBACA
.halfword ITEM_ULTRA_BALL
.halfword ITEM_MAX_REPEL
.halfword ITEM_TM47
.halfword ITEM_TM65
.halfword ITEM_TM74
.halfword 0xFFFF
/* const u16 _020FBAD4[] = {ITEM_POTION, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_FULL_HEAL, ITEM_REVIVE, 0xFFFF}; */
/* const u16 _020FBAFA[] = {ITEM_PROTEIN, ITEM_IRON, ITEM_CALCIUM, ITEM_ZINC, ITEM_CARBOS, ITEM_HP_UP, 0xFFFF}; */

//鎏金市4F，努力增强剂。降努力果
.org 0x020FBAFA
.halfword ITEM_HP_UP
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CARBOS
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword 0xFFFF



/* const u16 _020FBB08[] = {ITEM_PROTEIN, ITEM_IRON, ITEM_CALCIUM, ITEM_ZINC, ITEM_CARBOS, ITEM_HP_UP, 0xFFFF}; */

.org 0x020FBB08
/* Celadon Dept Store 5F -> Goldenrod/Celadon Dept Store 2F (reduced inventory) */

//玉虹市5F、鎏金市百货商店2F

//伤药、好伤药、高级伤药、满腹药、活力碎片、痊愈药
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* const u16 _020FBB16[] = {ITEM_POKE_DOLL, ITEM_FRESH_WATER, ITEM_SODA_POP, ITEM_LEMONADE, ITEM_REPEL, ITEM_HEART_MAIL, 0xFFFF}; */
/* const u16 _020FBB84[] = {ITEM_ULTRA_BALL, ITEM_MAX_REPEL, ITEM_HYPER_POTION, ITEM_MAX_POTION, ITEM_FULL_RESTORE, ITEM_REVIVE, ITEM_FULL_HEAL, 0xFFFF}; */

/* const u16 _020FBBB4[] = {ITEM_X_SPEED, ITEM_X_ATTACK, ITEM_X_DEFENSE, ITEM_GUARD_SPEC_, ITEM_DIRE_HIT, ITEM_X_ACCURACY, ITEM_X_SPECIAL, ITEM_X_SP__DEF, 0xFFFF}; */
/* const u16 _020FBBC6[] = {ITEM_X_SPEED, ITEM_X_ATTACK, ITEM_X_DEFENSE, ITEM_GUARD_SPEC_, ITEM_DIRE_HIT, ITEM_X_ACCURACY, ITEM_X_SPECIAL, ITEM_X_SP__DEF, 0xFFFF}; */

.org 0x020FBBB4
/* This spills over into _020FBBC6 */
/* Goldenrod Dept Store 3F & Celadon Dept Store 5F -> Chansey Supply 1 */ 

//鎏金市3F 玉虹市5F

//HP ATK DEF SPE SP.ATK SP.DEF 补剂；力量负重，力量护腕，力量腰带
//鎏金市4F 已经有了，重复。
.halfword ITEM_POWER_WEIGHT
.halfword ITEM_POWER_BRACER
.halfword ITEM_POWER_BELT
.halfword ITEM_POWER_LENS
.halfword ITEM_POWER_BAND
.halfword ITEM_POWER_ANKLET
.halfword ITEM_POMEG_BERRY
.halfword ITEM_KELPSY_BERRY
.halfword ITEM_QUALOT_BERRY

//力量镜，力量束带，力量护踝，学习装置，强制锻炼器
.halfword ITEM_TAMATO_BERRY
.halfword ITEM_HONDEW_BERRY
.halfword ITEM_GREPA_BERRY
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF

/* const u16 _020FBBD8[] = {ITEM_GREAT_BALL, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_ANTIDOTE, ITEM_PARLYZ_HEAL, ITEM_SUPER_REPEL, ITEM_REVIVE, ITEM_AIR_MAIL, 0xFFFF}; */

.org 0x020FBBD8
/* Mahogany Shop -> Goldenrod/Celadon Dept Store */

//卡吉镇商店、鎏金市、玉虹市百货商店
//各种X道具
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP_DEF
.halfword 0xFFFF

/* const u16 _020FBBEA[] = {ITEM_POTION, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_MAX_POTION, ITEM_REVIVE, ITEM_ANTIDOTE, ITEM_PARLYZ_HEAL, ITEM_BURN_HEAL, ITEM_ICE_HEAL, ITEM_AWAKENING, ITEM_FULL_HEAL, 0xFFFF}; */
/* const u16 _020FBC02[] = {ITEM_POTION, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_MAX_POTION, ITEM_REVIVE, ITEM_ANTIDOTE, ITEM_PARLYZ_HEAL, ITEM_BURN_HEAL, ITEM_ICE_HEAL, ITEM_AWAKENING, ITEM_FULL_HEAL, 0xFFFF}; */

.org 0x020FBBEA
/* This spills over into _020FBC02 */
/* Goldenrod Dept Store 2F & Celadon Dept Store 2F -> Chansey Supply 2 */

//鎏金市2F 玉虹市2F 百货商店

//特性药膏、各种薄荷
.halfword ITEM_ABILITY_CAPSULE
.halfword ITEM_SERIOUS_MINT
.halfword ITEM_TIMID_MINT
.halfword ITEM_HASTY_MINT
.halfword ITEM_JOLLY_MINT
.halfword ITEM_NAIVE_MINT
.halfword ITEM_LONELY_MINT
.halfword ITEM_ADAMANT_MINT
.halfword ITEM_NAUGHTY_MINT
.halfword ITEM_BRAVE_MINT
.halfword ITEM_BOLD_MINT
.halfword ITEM_IMPISH_MINT

.halfword ITEM_LAX_MINT
.halfword ITEM_RELAXED_MINT
.halfword ITEM_MODEST_MINT
.halfword ITEM_MILD_MINT
.halfword ITEM_RASH_MINT
.halfword ITEM_QUIET_MINT
.halfword ITEM_CALM_MINT
.halfword ITEM_GENTLE_MINT
.halfword ITEM_CAREFUL_MINT
.halfword ITEM_SASSY_MINT
.halfword 0xFFFF
.halfword 0xFFFF

/* const u16 _020FBC1A[] = {ITEM_POKE_BALL, ITEM_GREAT_BALL, ITEM_ULTRA_BALL, ITEM_ESCAPE_ROPE, ITEM_POKE_DOLL, ITEM_REPEL, ITEM_SUPER_REPEL, ITEM_MAX_REPEL, ITEM_GRASS_MAIL, ITEM_FLAME_MAIL, ITEM_BUBBLE_MAIL, ITEM_SPACE_MAIL, 0xFFFF}; */

/* const u16 _020FBC34[] = {ITEM_TM70, ITEM_TM17, ITEM_TM54, ITEM_TM83, ITEM_TM16, ITEM_TM33, ITEM_TM22, ITEM_TM52, ITEM_TM38, ITEM_TM25, ITEM_TM14, ITEM_TM15, 0xFFFF}; */

.org 0x020FBC34
/* Goldenrod Dept Store 5F -> Goldenrod Dept Store 5F still (also Celadon 3F) */

//鎏金市5F 玉虹市3F
//各种进化石 太阳 月 火 雷 水 叶 冰  不变之石
.halfword ITEM_SUN_STONE
.halfword ITEM_MOON_STONE
.halfword ITEM_FIRE_STONE
.halfword ITEM_THUNDER_STONE
.halfword ITEM_WATER_STONE
.halfword ITEM_LEAF_STONE
.halfword ITEM_ICE_STONE
.halfword ITEM_EVERSTONE
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF

/* const u16 _020FBC4E[] = {ITEM_POKE_BALL, ITEM_GREAT_BALL, ITEM_ULTRA_BALL, ITEM_ESCAPE_ROPE, ITEM_POKE_DOLL, ITEM_REPEL, ITEM_SUPER_REPEL, ITEM_MAX_REPEL, ITEM_GRASS_MAIL, ITEM_FLAME_MAIL, ITEM_BUBBLE_MAIL, ITEM_SPACE_MAIL, 0xFFFF}; */

.org 0x020FBC4E
/* Celadon Dept Store 2F -> Safari Zone Gate */

//玉虹市2F 狩猎地带

//饱腹香薰、悠闲香薰、幸运香薰、奇异香薰、洁净香薰、岩石香薰、海潮香薰、涟漪香薰
.halfword ITEM_FULL_INCENSE
.halfword ITEM_LAX_INCENSE
.halfword ITEM_LUCK_INCENSE
.halfword ITEM_ODD_INCENSE
.halfword ITEM_PURE_INCENSE
.halfword ITEM_ROCK_INCENSE
.halfword ITEM_ROSE_INCENSE
.halfword ITEM_SEA_INCENSE
.halfword ITEM_WAVE_INCENSE
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF
.halfword 0xFFFF

/* const u16 _020FBC68[] = {ITEM_TM21, ITEM_TM27, ITEM_TM87, ITEM_TM78, ITEM_TM12, ITEM_TM41, ITEM_TM20, ITEM_TM28, ITEM_TM76, ITEM_TM55, ITEM_TM72, ITEM_TM79, 0xFFFF}; */

.org 0x020FBC68
/* Celadon Dept Store 3F -> Safari Zone Gate */

//玉虹市3F

//光之石、黑暗石、觉醒石、浑圆石、王者之证、锐利之爪、锐利之牙、美丽鳞片、香袋、升级数据、泡沫奶油
.halfword ITEM_SHINY_STONE
.halfword ITEM_DUSK_STONE
.halfword ITEM_DAWN_STONE
.halfword ITEM_OVAL_STONE
.halfword ITEM_KINGS_ROCK
.halfword ITEM_LINKING_CORD
.halfword ITEM_RAZOR_CLAW
.halfword ITEM_RAZOR_FANG
.halfword ITEM_PRISM_SCALE
.halfword ITEM_SACHET
.halfword ITEM_UP_GRADE
.halfword ITEM_WHIPPED_DREAM
.halfword 0xFFFF

.close
