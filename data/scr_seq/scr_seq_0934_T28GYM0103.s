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

.include "data/scr_seq/event_T28GYM0103.inc"


// text archive to grab from: 623.txt

.data


scrdef scr_seq_T28GYM0103_000
scrdef scr_seq_T28GYM0103_001
scrdef_end

scr_seq_T28GYM0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_GLACIER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0030
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

_0030:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_T28GYM0103_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_GLACIER, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0062
	npc_msg 2
	goto _0065

_0062:
	npc_msg 3
_0065:
	wait_button
	closemsg
	releaseall
	end
	.balign 4
