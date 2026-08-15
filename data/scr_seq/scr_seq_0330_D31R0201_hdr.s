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

.include "data/scr_seq/event_D31R0201.inc"


.data


	.byte 2
	.hword 22, 0
	.byte 3
	.hword 23, 0
	.byte 1
	.word scr_seq_D31R0201_map_scripts_2-.-4
	.byte 0

scr_seq_D31R0201_map_scripts_2:
	.hword VAR_UNK_414B, 1, 4
	.hword VAR_UNK_414B, 2, 5
	.hword VAR_UNK_414B, 3, 8
	.hword VAR_UNK_414B, 255, 6
	.hword 0

	.balign 4
