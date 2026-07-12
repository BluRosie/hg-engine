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

.include "armips/scr_seq/event_T25R1202.inc"


// text archive to grab from: 601.txt

.create "build/a012/2_908", 0


scrdef scr_seq_T25R1202_000
scrdef scr_seq_T25R1202_001
scrdef scr_seq_T25R1202_002
scrdef scr_seq_T25R1202_003
scrdef scr_seq_T25R1202_004
scrdef scr_seq_T25R1202_005
scrdef scr_seq_T25R1202_006
scrdef scr_seq_T25R1202_007
scrdef scr_seq_T25R1202_008
scrdef scr_seq_T25R1202_009
scrdef scr_seq_T25R1202_010
scrdef scr_seq_T25R1202_011
scrdef scr_seq_T25R1202_012
scrdef_end

scr_seq_T25R1202_000:
	simple_npc_msg 0
	end

scr_seq_T25R1202_001:
	simple_npc_msg 1
	end

scr_seq_T25R1202_002:
	simple_npc_msg 2
	end

scr_seq_T25R1202_003:
	simple_npc_msg 3
	end

scr_seq_T25R1202_004:
	simple_npc_msg 4
	end

scr_seq_T25R1202_005:
	simple_npc_msg 5
	end

scr_seq_T25R1202_006:
	simple_npc_msg 6
	end

scr_seq_T25R1202_007:
	simple_npc_msg 7
	end

scr_seq_T25R1202_008:
	simple_npc_msg 8
	end

scr_seq_T25R1202_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1202_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1202_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8005, 6
	goto _0117

_0117:
	npc_msg 13
	touchscreen_menu_hide
	menu_init 21, 11, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 15, 255, 0
	menu_item_add 16, 255, 1
	menu_item_add 17, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _016E
	case 1, _0193
	goto _0166

_0166:
	touchscreen_menu_show
_0168:
	closemsg
	releaseall
	end

_016E:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0168
	closemsg
	scrcmd_815 0
	callstd std_enter_global_terminal
	releaseall
	end

_0193:
	npc_msg 14
	goto _0117

scr_seq_T25R1202_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8005, 5
	goto _01B2

_01B2:
	npc_msg 11
	touchscreen_menu_hide
	menu_init 21, 11, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 15, 255, 0
	menu_item_add 16, 255, 1
	menu_item_add 17, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0209
	case 1, _022E
	goto _0201

_0201:
	touchscreen_menu_show
_0203:
	closemsg
	releaseall
	end

_0209:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0203
	closemsg
	scrcmd_815 0
	callstd std_enter_global_terminal
	releaseall
	end

_022E:
	npc_msg 12
	goto _01B2

	.align 4


.close
