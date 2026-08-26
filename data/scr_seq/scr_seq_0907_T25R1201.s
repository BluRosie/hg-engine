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

.include "data/scr_seq/include/event_T25R1201.inc"


// text archive to grab from: 600.txt

.data


scrdef scr_seq_T25R1201_000
scrdef scr_seq_T25R1201_001
scrdef scr_seq_T25R1201_002
scrdef scr_seq_T25R1201_003
scrdef scr_seq_T25R1201_004
scrdef scr_seq_T25R1201_005
scrdef scr_seq_T25R1201_006
scrdef scr_seq_T25R1201_007
scrdef scr_seq_T25R1201_008
scrdef scr_seq_T25R1201_009
scrdef scr_seq_T25R1201_010
scrdef scr_seq_T25R1201_011
scrdef scr_seq_T25R1201_012
scrdef scr_seq_T25R1201_013
scrdef scr_seq_T25R1201_014
scrdef scr_seq_T25R1201_015
scrdef scr_seq_T25R1201_016
scrdef scr_seq_T25R1201_017
scrdef_end


	.byte 0x13, 0xfd
scr_seq_T25R1201_001:
	compare VAR_UNK_4133, 6
	call_if_eq _005B
	end

_005B:
	make_object_visible obj_player
	return

scr_seq_T25R1201_002:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_eq _0084
	goto _009D

	.byte 0x16, 0x00
	.byte 0x13, 0x00, 0x00, 0x00
_0084:
	compare VAR_TEMP_x4001, 2
	goto_if_eq _0097
	goto _009D

_0097:
	call _00A7
_009D:
	setvar VAR_UNK_4133, 0
	releaseall
	end

_00A7:
	scrcmd_307 0, 0, 8, 2, 77
	call _00F5
	scrcmd_374 obj_player
	apply_movement obj_player, _0108
	wait_movement
	call _00FD
	scrcmd_307 0, 0, 8, 4, 77
	call _00F5
	apply_movement obj_player, _0118
	wait_movement
	call _00FD
	setvar VAR_UNK_4133, 0
	return

_00F5:
	scrcmd_310 77
	scrcmd_308 77
	return

_00FD:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

	.balign 4
_0108:

	step 13, 1
	step_end
	.byte 0x0d, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.balign 4
_0118:

	step 13, 2
	step_end
scr_seq_T25R1201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	party_legal_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C4
	goto_if_set FLAG_UNK_112, _0354
	setflag FLAG_UNK_112
	npc_msg 0
_014B:
	touchscreen_menu_hide
_014D:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 131, 255, 0
	menu_item_add 130, 255, 1
	menu_item_add 132, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0227
	case 1, _01A4
	case 2, _0330
	goto _0330

	.byte 0x02, 0x00
_01A4:
	npc_msg 2
	goto _01AF

	.byte 0x02, 0x00
_01AF:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 133, 255, 0
	menu_item_add 134, 255, 1
	menu_item_add 135, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0206
	case 1, _0211
	case 2, _021C
	goto _021C

	.byte 0x02, 0x00
_0206:
	npc_msg 3
	goto _01AF

	.byte 0x02
	.byte 0x00
_0211:
	npc_msg 4
	goto _01AF

	.byte 0x02, 0x00
_021C:
	npc_msg 5
	goto _014D

	.byte 0x02, 0x00
_0227:
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_lt _0240
	goto _035F

	.byte 0x02, 0x00
_0240:
	npc_msg 9
	wait_button
	touchscreen_menu_show
	closemsg
	releaseall
	end

_024D:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0343
	touchscreen_menu_show
	heal_party
	setvar VAR_UNK_4133, 6
	npc_msg 7
	closemsg
	apply_movement obj_player, _03A0
	wait_movement
	scrcmd_307 0, 0, 8, 4, 77
	call _00F5
	apply_movement obj_player, _03B4
	wait_movement
	call _00FD
	scrcmd_307 0, 0, 8, 2, 77
	call _00F5
	apply_movement obj_player, _03AC
	wait_movement
	make_object_visible obj_player
	apply_movement obj_player, _03BC
	wait_movement
	call _00FD
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_579
	scrcmd_815 0
	scrcmd_166 VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_165 VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0314
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	call _00A7
	releaseall
	end

_0314:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	call _00A7
	goto _0343

	.byte 0x02, 0x00
_0330:
	setvar VAR_UNK_4133, 0
	touchscreen_menu_show
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0343:
	setvar VAR_UNK_4133, 0
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0354:
	npc_msg 1
	goto _014B

	.byte 0x02, 0x00
_035F:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0378
	goto _024D

	.byte 0x02, 0x00
_0378:
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0391
	goto _024D

	.byte 0x02
	.byte 0x00
_0391:
	touchscreen_menu_show
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00, 0x00
	.balign 4
_03A0:

	step 15, 1
	step 32, 1
	step_end
	.balign 4
_03AC:

	step 12, 1
	step_end
	.balign 4
_03B4:

	step 12, 2
	step_end
	.balign 4
_03BC:

	step 1, 1
	step_end
_03C4:
	callstd std_party_illegal
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1201_003:
	simple_npc_msg 10
	end

scr_seq_T25R1201_004:
	simple_npc_msg 11
	end

scr_seq_T25R1201_005:
	simple_npc_msg 12
	end

scr_seq_T25R1201_006:
	simple_npc_msg 13
	end

scr_seq_T25R1201_007:
	simple_npc_msg 14
	end

scr_seq_T25R1201_008:
	simple_npc_msg 15
	end

scr_seq_T25R1201_009:
	simple_npc_msg 16
	end

scr_seq_T25R1201_010:
	simple_npc_msg 17
	end

scr_seq_T25R1201_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8005, 3
	goto _047C

	.byte 0x02, 0x00
_047C:
	npc_msg 31
	touchscreen_menu_hide
	menu_init 21, 11, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 33, 255, 0
	menu_item_add 34, 255, 1
	menu_item_add 35, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _04D3
	case 1, _04F8
	goto _04CB

	.byte 0x02, 0x00
_04CB:
	touchscreen_menu_show
_04CD:
	closemsg
	releaseall
	end

_04D3:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04CD
	closemsg
	scrcmd_815 0
	callstd std_enter_global_terminal
	releaseall
	end

_04F8:
	npc_msg 32
	goto _047C

	.byte 0x02, 0x00
scr_seq_T25R1201_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8005, 4
	goto _0517

	.byte 0x02, 0x00
_0517:
	npc_msg 29
	touchscreen_menu_hide
	menu_init 21, 11, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 33, 255, 0
	menu_item_add 34, 255, 1
	menu_item_add 35, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _056E
	case 1, _0593
	goto _0566

	.byte 0x02, 0x00
_0566:
	touchscreen_menu_show
_0568:
	closemsg
	releaseall
	end

_056E:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0568
	closemsg
	scrcmd_815 0
	callstd std_enter_global_terminal
	releaseall
	end

_0593:
	npc_msg 30
	goto _0517

	.byte 0x02, 0x00
scr_seq_T25R1201_013:
	simple_npc_msg 27
	end

scr_seq_T25R1201_014:
	simple_npc_msg 28
	end

scr_seq_T25R1201_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	party_legal_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0622
	setvar VAR_SPECIAL_x8000, 0
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _064D
	buffer_mon_species_name 0, 0
	npc_msg 18
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _062D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063A
	end

_0622:
	npc_msg 23
	goto _067F

	.byte 0x02, 0x00
_062D:
	set_favorite_mon
	npc_msg 20
	goto _067F

	.byte 0x02, 0x00
_063A:
	buffer_mon_species_name 0, 0
	npc_msg 21
	goto _067F

	.byte 0x02, 0x00, 0x2d, 0x00, 0x12
_064D:
	npc_msg 19
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _062D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0674
	end

_0674:
	npc_msg 22
	goto _067F

	.byte 0x02, 0x00
_067F:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1201_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06D1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	scrcmd_681 VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _06D1
	npc_msg 25
	wait_button
	closemsg
	releaseall
	end

_06D1:
	npc_msg 26
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1201_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 36
	wait_button
	closemsg
	releaseall
	end
	.balign 4
