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

.include "data/scr_seq/event_T21FS0101.inc"


// text archive to grab from: 551.txt

.data


scrdef scr_seq_T21FS0101_000
scrdef scr_seq_T21FS0101_001
scrdef scr_seq_T21FS0101_002
scrdef scr_seq_T21FS0101_003
scrdef_end

scr_seq_T21FS0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 0
	callstd std_pokemart
	releaseall
	end

scr_seq_T21FS0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 0
	callstd std_special_mart
	releaseall
	end

scr_seq_T21FS0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_lt _0068
	npc_msg 1
	goto _006B

_0068:
	npc_msg 0
_006B:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T21FS0101_001:
	simple_npc_msg 2
	end
	.balign 4
