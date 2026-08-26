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

.include "data/scr_seq/include/event_T22R0601.inc"


// text archive to grab from: 562.txt

.data


scrdef scr_seq_T22R0601_000
scrdef scr_seq_T22R0601_001
scrdef scr_seq_T22R0601_002
scrdef_end

scr_seq_T22R0601_000:
	end

scr_seq_T22R0601_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_VIOLET_CITY_BELLSPROUT_ONIX, _00BD
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0041
	goto _00B2

_0041:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _00B2
	load_npc_trade 0
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _00A5
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_VIOLET_CITY_BELLSPROUT_ONIX
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_00A5:
	npc_trade_end
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_00B2:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_00BD:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

scr_seq_T22R0601_002:
	simple_npc_msg 0
	end
	.balign 4
