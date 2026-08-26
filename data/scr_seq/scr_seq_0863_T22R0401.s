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

.include "data/scr_seq/include/event_T22R0401.inc"


// text archive to grab from: 561.txt

.data


scrdef scr_seq_T22R0401_000
scrdef scr_seq_T22R0401_001
scrdef scr_seq_T22R0401_002
scrdef scr_seq_T22R0401_003
scrdef_end

scr_seq_T22R0401_000:
	end

scr_seq_T22R0401_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PIDGEY, 0
	npc_msg 2
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_T22R0401_001:
	simple_npc_msg 0
	end

scr_seq_T22R0401_002:
	simple_npc_msg 1
	end
	.balign 4
