.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/battle_constants.inc"
.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/items.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

.include "armips/scr_seq/event_R10R0201.inc"


// text archive to grab from: 344.txt

.create "build/a012/2_195", 0


scrdef scr_seq_R10R0201_000
scrdef scr_seq_R10R0201_001
scrdef scr_seq_R10R0201_002
scrdef scr_seq_R10R0201_003
scrdef scr_seq_R10R0201_004
scrdef scr_seq_R10R0201_005
scrdef scr_seq_R10R0201_006
scrdef scr_seq_R10R0201_007
scrdef scr_seq_R10R0201_008
scrdef_end

scr_seq_R10R0201_000:
	simple_npc_msg 3
	end

scr_seq_R10R0201_001:
	simple_npc_msg 4
	end

scr_seq_R10R0201_002:
	simple_npc_msg 5
	end

scr_seq_R10R0201_003:
	simple_npc_msg 6
	end

scr_seq_R10R0201_004:
	simple_npc_msg 7
	end

scr_seq_R10R0201_005:
	simple_npc_msg 8
	end

scr_seq_R10R0201_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_POWER_PLANT_DUGTRIO_MAGNETON, _013F
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0134
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0134
	load_npc_trade 8
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _0127
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_POWER_PLANT_DUGTRIO_MAGNETON
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0127:
	npc_trade_end
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0134:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013F:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10R0201_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10R0201_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
