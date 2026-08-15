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

.include "data/scr_seq/event_T21PC0101.inc"


// text archive to grab from: 552.txt

.data


scrdef scr_seq_T21PC0101_000
scrdef scr_seq_T21PC0101_001
scrdef scr_seq_T21PC0101_002
scrdef scr_seq_T21PC0101_003
scrdef scr_seq_T21PC0101_004
scrdef scr_seq_T21PC0101_005
scrdef_end

scr_seq_T21PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T21PC0101_004:
	simple_npc_msg 4
	end

scr_seq_T21PC0101_005:
	simple_npc_msg 5
	end

scr_seq_T21PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ELMS_LAB, 3
	goto_if_lt _006A
	npc_msg 3
	goto _006D

_006A:
	npc_msg 2
_006D:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T21PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T21PC0101_002:
	simple_npc_msg 1
	end
	.balign 4
