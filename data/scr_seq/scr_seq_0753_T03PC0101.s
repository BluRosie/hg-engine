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

.include "data/scr_seq/include/event_T03PC0101.inc"


// text archive to grab from: 463.txt

.data


scrdef scr_seq_T03PC0101_000
scrdef scr_seq_T03PC0101_001
scrdef scr_seq_T03PC0101_002
scrdef scr_seq_T03PC0101_003
scrdef scr_seq_T03PC0101_004
scrdef_end

scr_seq_T03PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T03PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_PEWTER_CITY_HAUNTER_XATU, _00C9
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00BE
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _00BE
	load_npc_trade 9
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _00B1
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_PEWTER_CITY_HAUNTER_XATU
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_00B1:
	npc_trade_end
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_00BE:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_00C9:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

scr_seq_T03PC0101_002:
	simple_npc_msg 0
	end

scr_seq_T03PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_JIGGLYPUFF, 0
	npc_msg 1
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_T03PC0101_004:
	simple_npc_msg 2
	end
	.balign 4
