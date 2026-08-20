.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

.include "data/scr_seq/event_T31PC0102.inc"


.data


	.byte 1
	.word scr_seq_T31PC0102_map_scripts_2-.-4
	.byte 4
	.hword std_wifi_reset_state, 0
	.byte 0

scr_seq_T31PC0102_map_scripts_2:
	.hword VAR_SCENE_POKECENTER_WIFI_BASEMENT, 0, std_teala_first_intro
	.hword VAR_UNK_4137, 1, std_wifi_return
	.hword 0

	.balign 4
