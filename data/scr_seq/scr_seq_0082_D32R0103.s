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

.include "data/scr_seq/include/event_D32R0103.inc"


// text archive to grab from: 105.txt

.data


scrdef scr_seq_D32R0103_000
scrdef scr_seq_D32R0103_001
scrdef scr_seq_D32R0103_002
scrdef scr_seq_D32R0103_003
scrdef_end

scr_seq_D32R0103_003:
	setvar VAR_UNK_40E5, 2
	end

scr_seq_D32R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_frontier_move_tutor_1
	releaseall
	end

scr_seq_D32R0103_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_frontier_move_tutor_2
	releaseall
	end

scr_seq_D32R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_frontier_move_tutor_3
	releaseall
	end
	.balign 4
