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

.include "data/scr_seq/include/event_T05R0601.inc"


// text archive to grab from: 481.txt

.data


scrdef scr_seq_T05R0601_000
scrdef scr_seq_T05R0601_001
scrdef scr_seq_T05R0601_002
scrdef scr_seq_T05R0601_003
scrdef_end

scr_seq_T05R0601_000:
	simple_npc_msg 0
	end

scr_seq_T05R0601_001:
	simple_npc_msg 1
	end

scr_seq_T05R0601_002:
	simple_npc_msg 2
	end

scr_seq_T05R0601_003:
	simple_npc_msg 3
	end
	.balign 4
