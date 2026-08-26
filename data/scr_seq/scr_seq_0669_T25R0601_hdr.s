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

.include "data/scr_seq/include/event_T25R0601.inc"


.data


	.byte 2
	.hword 3, 0
	.byte 1
	.word scr_seq_T25R0601_map_scripts_2-.-4
	.byte 0

scr_seq_T25R0601_map_scripts_2:
	.hword VAR_UNK_4082, 1, 4
	.hword 0

	.balign 4
