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

.include "data/scr_seq/include/event_D24R0205.inc"


.data


	.byte 1
	.word scr_seq_D24R0205_map_scripts_2-.-4
	.byte 3
	.hword 2, 0
	.byte 2
	.hword 9, 0
	.byte 0

scr_seq_D24R0205_map_scripts_2:
	.hword VAR_UNK_40CE, 1, 1
	.hword VAR_SCENE_SINJOH_MYSTRI_ROOM, 2, 7
	.hword VAR_SCENE_SINJOH_MYSTRI_ROOM, 9, 8
	.hword VAR_SCENE_SINJOH_MYSTRI_ROOM, 11, 10
	.hword 0

	.balign 4
