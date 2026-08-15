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

.include "data/scr_seq/event_T07R0204.inc"


// text archive to grab from: 504.txt

.data


scrdef scr_seq_T07R0204_000
scrdef scr_seq_T07R0204_001
scrdef_end

scr_seq_T07R0204_001:
	setvar VAR_UNK_4125, 0
	end

scr_seq_T07R0204_000:
	simple_npc_msg 0
	end
	.balign 4
