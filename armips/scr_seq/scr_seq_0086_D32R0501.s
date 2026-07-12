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

.include "armips/scr_seq/event_D32R0501.inc"


// text archive to grab from: 109.txt

.create "build/a012/2_086", 0


scrdef scr_seq_D32R0501_000
scrdef scr_seq_D32R0501_001
scrdef scr_seq_D32R0501_002
scrdef scr_seq_D32R0501_003
scrdef scr_seq_D32R0501_004
scrdef scr_seq_D32R0501_005
scrdef scr_seq_D32R0501_006
scrdef scr_seq_D32R0501_007
scrdef scr_seq_D32R0501_008
scrdef scr_seq_D32R0501_009
scrdef scr_seq_D32R0501_010
scrdef scr_seq_D32R0501_011
scrdef scr_seq_D32R0501_012
scrdef scr_seq_D32R0501_013
scrdef_end

scr_seq_D32R0501_013:
	end

scr_seq_D32R0501_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	goto _0074

scr_seq_D32R0501_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 1
	goto _0074

_0074:
	scrcmd_682 0
	compare VAR_TEMP_x4004, 0
	call_if_eq _068C
	compare VAR_TEMP_x4004, 1
	call_if_eq _0691
	goto _009A

_009A:
	compare VAR_TEMP_x4004, 0
	call_if_eq _0696
	compare VAR_TEMP_x4004, 1
	call_if_eq _06B5
	menu_item_add 41, 255, 2
	menu_item_add 42, 255, 3
	menu_exec
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _013F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _016C
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0104
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0199
	touchscreen_menu_show
	goto _0126

_0104:
	compare VAR_TEMP_x4004, 0
	call_if_eq _06CC
	compare VAR_TEMP_x4004, 1
	call_if_eq _06D1
	goto _009A

_0126:
	goto _012E

_012E:
	setvar VAR_UNK_4147, 0
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013F:
	setvar VAR_UNK_4148, 0
	scrcmd_637 0, 3, VAR_SPECIAL_RESULT
	buffer_int 0, 3
	buffer_int 1, 3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01C6
	goto _01F0

_016C:
	setvar VAR_UNK_4148, 1
	scrcmd_637 0, 3, VAR_SPECIAL_RESULT
	buffer_int 0, 3
	buffer_int 1, 3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01C6
	goto _01F0

_0199:
	setvar VAR_UNK_4148, 2
	scrcmd_637 0, 2, VAR_SPECIAL_RESULT
	buffer_int 0, 2
	buffer_int 1, 2
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01DB
	goto _01F0

_01C6:
	npc_msg 8
	scrcmd_444 9, 3, 0, 0
	touchscreen_menu_show
	goto _0126

_01DB:
	npc_msg 8
	scrcmd_444 9, 2, 0, 0
	touchscreen_menu_show
	goto _0126

_01F0:
	npc_msg 7
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_637 4, VAR_UNK_4148, VAR_SPECIAL_RESULT
	scrcmd_639 VAR_TEMP_x4002, VAR_TEMP_x4005, VAR_TEMP_x4006
	compare VAR_TEMP_x4002, 255
	goto_if_ne _0222
	scrcmd_815 0
_0222:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 255
	goto_if_eq _0126
	day_care_sanitize_mon VAR_TEMP_x4002, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _05FB
	day_care_sanitize_mon VAR_TEMP_x4005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _05FB
	compare VAR_UNK_4148, 2
	goto_if_eq _0283
	day_care_sanitize_mon VAR_TEMP_x4006, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _05FB
_0283:
	get_partymon_species VAR_TEMP_x4002, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _029E
	touchscreen_menu_show
	goto _0126

_029E:
	goto _02A6

_02A6:
	goto _02AE

_02AE:
	compare VAR_UNK_4148, 0
	call_if_eq _046A
	compare VAR_UNK_4148, 1
	call_if_eq _046A
	setvar VAR_TEMP_x4000, 0
	heal_party
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0126
	touchscreen_menu_show
	compare VAR_UNK_4148, 2
	goto_if_eq _02FE
	goto _04CB

_02FE:
	npc_msg 43
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 5, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _034F
	case 1, _03A7
	touchscreen_menu_show
	goto _0126

_034F:
	npc_msg 44
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02FE
	touchscreen_menu_show
	closemsg
	scrcmd_226 31, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0395
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _039D
	goto _03FF

_0395:
	goto _02FE

_039D:
	scrcmd_283
	goto _02FE

_03A7:
	npc_msg 44
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02FE
	touchscreen_menu_show
	closemsg
	scrcmd_227 31, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03ED
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _03F5
	goto _03FF

_03ED:
	goto _02FE

_03F5:
	scrcmd_283
	goto _02FE

_03FF:
	scrcmd_258
	scrcmd_257 136
	get_partymon_species VAR_TEMP_x4002, VAR_SPECIAL_x8000
	get_partymon_species VAR_TEMP_x4005, VAR_SPECIAL_x8001
	scrcmd_638 VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 1, _0472
	case 2, _0488
	case 3, _049E
	scrcmd_258
	scrcmd_257 138
	npc_msg 45
	compare VAR_UNK_4148, 2
	call_if_eq _046A
	call _06FD
	goto _04CB

_046A:
	setvar VAR_UNK_4147, 255
	return

_0472:
	call _04C1
	buffer_mon_species_name 0, VAR_TEMP_x4002
	npc_msg 29
	goto _04B9

_0488:
	call _04C1
	buffer_mon_species_name 0, VAR_TEMP_x4005
	npc_msg 29
	goto _04B9

_049E:
	call _04C1
	buffer_mon_species_name 0, VAR_TEMP_x4002
	buffer_mon_species_name 1, VAR_TEMP_x4005
	npc_msg 30
	goto _04B9

_04B9:
	goto _0126

_04C1:
	scrcmd_258
	scrcmd_257 139
	scrcmd_283
	return

_04CB:
	compare VAR_UNK_4148, 0
	call_if_eq _0563
	compare VAR_UNK_4148, 1
	call_if_eq _057E
	compare VAR_UNK_4148, 2
	call_if_eq _0599
	play_se SEQ_SE_DP_KAIDAN2
	goto _04FE

_04FE:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_815 0
	compare VAR_UNK_4148, 0
	call_if_eq _05BF
	compare VAR_UNK_4148, 1
	call_if_eq _05D3
	compare VAR_UNK_4148, 2
	call_if_eq _05E7
	scrcmd_420 59
	scrcmd_436
	scrcmd_627 11
	compare VAR_UNK_4148, 2
	call_if_eq _055F
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_682 1
	end

_055F:
	scrcmd_283
	return

_0563:
	npc_msg 32
	wait_button
	closemsg
	apply_movement obj_player, _060C
	apply_movement VAR_SPECIAL_LAST_TALKED, _062C
	wait_movement
	return

_057E:
	npc_msg 32
	wait_button
	closemsg
	apply_movement obj_player, _060C
	apply_movement VAR_SPECIAL_LAST_TALKED, _062C
	wait_movement
	return

_0599:
	npc_msg_var 32
	wait 10, VAR_SPECIAL_RESULT
	scrcmd_258
	scrcmd_257 137
	closemsg
	apply_movement obj_player, _0618
	apply_movement VAR_SPECIAL_LAST_TALKED, _0638
	wait_movement
	return

_05BF:
	apply_movement obj_player, _064C
	apply_movement VAR_SPECIAL_LAST_TALKED, _0670
	wait_movement
	return

_05D3:
	apply_movement obj_player, _064C
	apply_movement VAR_SPECIAL_LAST_TALKED, _0670
	wait_movement
	return

_05E7:
	apply_movement obj_player, _065C
	apply_movement VAR_SPECIAL_LAST_TALKED, _067C
	wait_movement
	return

_05FB:
	touchscreen_menu_show
	setvar VAR_UNK_4147, 0
	callstd std_bag_is_full_griseous_orb
	end

	.align 4
_060C:

	step 14, 6
	step 69, 1
	step_end
	.align 4
_0618:

	step 14, 3
	step 12, 1
	step 14, 3
	step 69, 1
	step_end
	.align 4
_062C:

	step 14, 5
	step 69, 1
	step_end
	.align 4
_0638:

	step 14, 2
	step 12, 1
	step 14, 3
	step 69, 1
	step_end
	.align 4
_064C:

	step 23, 6
	step 70, 1
	step 2, 1
	step_end
	.align 4
_065C:

	step 23, 6
	step 21, 1
	step 70, 1
	step 2, 1
	step_end
	.align 4
_0670:

	step 23, 5
	step 70, 1
	step_end
	.align 4
_067C:

	step 21, 1
	step 23, 5
	step 70, 1
	step_end
_068C:
	npc_msg 0
	return

_0691:
	npc_msg 3
	return

_0696:
	npc_msg 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 38, 255, 0
	menu_item_add 39, 255, 1
	return

_06B5:
	npc_msg 4
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 40, 255, 4
	return

_06CC:
	npc_msg 2
	return

_06D1:
	npc_msg 5
	return

scr_seq_D32R0501_001:
	scrcmd_682 0
	setvar VAR_TEMP_x4003, 1
	setvar VAR_UNK_4147, 0
	npc_msg 33
	call _046A
	call _06FD
	goto _04CB

_06FD:
	add_waiting_icon
	save_game_normal VAR_SPECIAL_RESULT
	remove_waiting_icon
	play_se SEQ_SE_DP_SAVE
	wait_se SEQ_SE_DP_SAVE
	return

scr_seq_D32R0501_002:
	lockall
	faceplayer
	npc_msg 34
	scrcmd_640 VAR_UNK_4148
	compare VAR_BATTLE_CASTLE_PRINT_PROGRESS, 1
	call_if_eq _073C
	compare VAR_BATTLE_CASTLE_PRINT_PROGRESS, 3
	call_if_eq _0744
	goto _0126

_073C:
	setvar VAR_BATTLE_CASTLE_PRINT_PROGRESS, 0
	return

_0744:
	setvar VAR_BATTLE_CASTLE_PRINT_PROGRESS, 2
	return

scr_seq_D32R0501_003:
	compare VAR_UNK_4148, 0
	call_if_eq _0788
	compare VAR_UNK_4148, 1
	call_if_eq _0788
	compare VAR_BATTLE_CASTLE_PRINT_PROGRESS, 1
	call_if_eq _078E
	compare VAR_BATTLE_CASTLE_PRINT_PROGRESS, 3
	call_if_eq _07A5
	goto _0126

_0788:
	add_special_game_stat_2 28
	return

_078E:
	npc_msg 35
	buffer_players_name 0
	npc_msg 37
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_CASTLE_PRINT_PROGRESS, 2
	return

_07A5:
	npc_msg 35
	buffer_players_name 0
	npc_msg 36
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_CASTLE_PRINT_PROGRESS, 4
	callstd std_frontier_gold_prints_check
	return

scr_seq_D32R0501_004:
	goto _0126

scr_seq_D32R0501_006:
	simple_npc_msg 46
	end

scr_seq_D32R0501_007:
	simple_npc_msg 47
	end

scr_seq_D32R0501_008:
	simple_npc_msg 48
	end

scr_seq_D32R0501_009:
	simple_npc_msg 49
	end

scr_seq_D32R0501_010:
	simple_npc_msg 50
	end

scr_seq_D32R0501_011:
	simple_npc_msg 51
	end

scr_seq_D32R0501_012:
	simple_npc_msg 52
	end
	.align 4


.close
