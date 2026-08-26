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

.include "data/scr_seq/include/event_D42R0101.inc"


// text archive to grab from: 127.txt

.data


scrdef scr_seq_D42R0101_000
scrdef_end

scr_seq_D42R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN, _0045
	npc_msg 0
	goto_if_no_item_space ITEM_BLACK_GLASSES, 1, _0050
	callstd std_give_item_verbose
	setflag FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN
_0045:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_0050:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end
	.balign 4
