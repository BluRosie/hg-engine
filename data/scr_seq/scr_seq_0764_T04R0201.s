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

.include "data/scr_seq/event_T04R0201.inc"


// text archive to grab from: 472.txt

.data


scrdef scr_seq_T04R0201_000
scrdef scr_seq_T04R0201_001
scrdef scr_seq_T04R0201_002
scrdef_end

scr_seq_T04R0201_000:
	simple_npc_msg 0
	end

scr_seq_T04R0201_001:
	simple_npc_msg 1
	end

scr_seq_T04R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_DIGLETT, 0
	npc_msg 2
	wait_cry
	wait_button
	closemsg
	releaseall
	end
	.balign 4
