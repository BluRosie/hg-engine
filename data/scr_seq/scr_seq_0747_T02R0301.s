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

.include "data/scr_seq/event_T02R0301.inc"


// text archive to grab from: 457.txt

.data


scrdef scr_seq_T02R0301_000
scrdef scr_seq_T02R0301_001
scrdef scr_seq_T02R0301_002
scrdef scr_seq_T02R0301_003
scrdef scr_seq_T02R0301_004
scrdef scr_seq_T02R0301_005
scrdef scr_seq_T02R0301_006
scrdef scr_seq_T02R0301_007
scrdef_end

scr_seq_T02R0301_000:
	simple_npc_msg 0
	end

scr_seq_T02R0301_001:
	simple_npc_msg 1
	end

scr_seq_T02R0301_002:
	simple_npc_msg 2
	end

scr_seq_T02R0301_003:
	simple_npc_msg 3
	end

scr_seq_T02R0301_004:
	simple_npc_msg 4
	end

scr_seq_T02R0301_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

scr_seq_T02R0301_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

scr_seq_T02R0301_007:
	simple_npc_msg 7
	end
	.balign 4
