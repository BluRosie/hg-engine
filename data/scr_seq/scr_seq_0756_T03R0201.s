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

.include "data/scr_seq/include/event_T03R0201.inc"


// text archive to grab from: 465.txt

.data


scrdef scr_seq_T03R0201_000
scrdef scr_seq_T03R0201_001
scrdef_end

scr_seq_T03R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

scr_seq_T03R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_NIDORAN_M, 0
	npc_msg 1
	wait_cry
	wait_button
	closemsg
	releaseall
	end
	.balign 4
