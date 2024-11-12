#include "../include/types.h"
#include "../include/constants/trainerclass.h"
#include "../include/constants/sndseq.h"

struct TrainerMusic
{
    u16 class;
    u16 music1;
	u16 music2;
};

struct TrainerMusic sTrainerEncounterMusicParam [] = // cues which music sequence occurs upon eyes meeting
{
   {.class = CLASS_YOUNGSTER, .music1 = SEQ_GS_EYE_J_SHOUNEN, .music2 = SEQ_GS_EYE_J_SHOUNEN},
   {.class = CLASS_LASS, .music1 = SEQ_GS_EYE_K_SHOUJO, .music2 = SEQ_GS_EYE_K_SHOUJO},
   {.class = CLASS_CAMPER, .music1 = SEQ_GS_EYE_J_SHOUNEN, .music2 = SEQ_GS_EYE_J_SHOUNEN},
   {.class = CLASS_PICNICKER, .music1 = SEQ_GS_EYE_K_SHOUJO, .music2 = SEQ_GS_EYE_K_SHOUJO},
   {.class = CLASS_BUG_CATCHER, .music1 = SEQ_GS_EYE_J_SHOUNEN, .music2 = SEQ_GS_EYE_J_SHOUNEN},
   {.class = CLASS_TWINS, .music1 = SEQ_GS_EYE_K_SHOUJO, .music2 = SEQ_GS_EYE_K_SHOUJO},
   {.class = CLASS_HIKER, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_FISHERMAN, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_BLACK_BELT, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_POKEFAN_M, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_POKEFAN_F, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_ACE_TRAINER_M, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_ACE_TRAINER_F, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_BIRD_KEEPER_1, .music1 = SEQ_GS_EYE_J_SHOUNEN, .music2 = SEQ_GS_EYE_J_SHOUNEN},
   {.class = CLASS_JUGGLER, .music1 = SEQ_GS_EYE_J_AYASHII, .music2 = SEQ_GS_EYE_J_AYASHII},
   {.class = CLASS_GENTLEMAN, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_BEAUTY, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_POLICEMAN, .music1 = SEQ_GS_EYE_K_SHOUNEN, .music2 = SEQ_GS_EYE_K_SHOUNEN},
   {.class = CLASS_SWIMMER_M, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_SWIMMER_F, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_SAILOR, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_KIMONO_GIRL, .music1 = SEQ_GS_EYE_MAIKO, .music2 = SEQ_GS_EYE_MAIKO},
   {.class = CLASS_PSYCHIC_M, .music1 = SEQ_GS_EYE_J_SHOUNEN, .music2 = SEQ_GS_EYE_J_SHOUNEN},
   {.class = CLASS_GUITARIST, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_TEAM_ROCKET, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
   {.class = CLASS_SKIER, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_SCHOOL_KID_M, .music1 = SEQ_GS_EYE_J_SHOUNEN, .music2 = SEQ_GS_EYE_J_SHOUNEN},
   {.class = CLASS_TEAM_ROCKET_1, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
   {.class = CLASS_BURGLAR, .music1 = SEQ_GS_EYE_J_AYASHII, .music2 = SEQ_GS_EYE_J_AYASHII},
   {.class = CLASS_FIREBREATHER, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_BIKER, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_POKE_MANIAC, .music1 = SEQ_GS_EYE_J_AYASHII, .music2 = SEQ_GS_EYE_J_AYASHII},
   {.class = CLASS_TEACHER, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_SUPER_NERD, .music1 = SEQ_GS_EYE_J_AYASHII, .music2 = SEQ_GS_EYE_J_AYASHII},
   {.class = CLASS_SAGE, .music1 = SEQ_GS_EYE_BOUZU, .music2 = SEQ_GS_EYE_BOUZU},
   {.class = CLASS_MEDIUM, .music1 = SEQ_GS_EYE_BOUZU, .music2 = SEQ_GS_EYE_BOUZU},
   {.class = CLASS_SCIENTIST_1, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_J_AYASHII},
   {.class = CLASS_BOARDER, .music1 = SEQ_GS_EYE_K_AYASHII, .music2 = SEQ_GS_EYE_K_AYASHII},
   {.class = CLASS_DOUBLE_TEAM, .music1 = SEQ_GS_EYE_K_SHOUNEN, .music2 = SEQ_GS_EYE_K_SHOUNEN},
   {.class = CLASS_YOUNG_COUPLE, .music1 = SEQ_GS_EYE_J_SHOUJO, .music2 = SEQ_GS_EYE_J_SHOUJO},
   {.class = CLASS_EXECUTIVE, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
   {.class = CLASS_EXECUTIVE_0, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
   {.class = CLASS_EXECUTIVE_1, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
   {.class = CLASS_EXECUTIVE_2, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
};