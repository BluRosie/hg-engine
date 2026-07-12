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

.include "armips/scr_seq/event_D31R0201.inc"


// text archive to grab from: 096.txt

.create "build/a012/2_069", 0


scrdef scr_seq_D31R0201_000
scrdef scr_seq_D31R0201_001
scrdef scr_seq_D31R0201_002
scrdef scr_seq_D31R0201_003
scrdef scr_seq_D31R0201_004
scrdef scr_seq_D31R0201_005
scrdef scr_seq_D31R0201_006
scrdef scr_seq_D31R0201_007
scrdef scr_seq_D31R0201_008
scrdef scr_seq_D31R0201_009
scrdef scr_seq_D31R0201_010
scrdef scr_seq_D31R0201_011
scrdef scr_seq_D31R0201_012
scrdef scr_seq_D31R0201_013
scrdef scr_seq_D31R0201_014
scrdef scr_seq_D31R0201_015
scrdef scr_seq_D31R0201_016
scrdef scr_seq_D31R0201_017
scrdef scr_seq_D31R0201_018
scrdef scr_seq_D31R0201_019
scrdef scr_seq_D31R0201_020
scrdef scr_seq_D31R0201_021
scrdef scr_seq_D31R0201_022
scrdef scr_seq_D31R0201_023
scrdef_end

scr_seq_D31R0201_021:
	compare VAR_UNK_414B, 1
	call_if_eq _00A6
	compare VAR_UNK_414B, 3
	call_if_eq _00A6
	compare VAR_UNK_414B, 255
	call_if_eq _00A6
	scrcmd_415 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _00A0
	setflag FLAG_HIDE_BATTLE_TOWER_RECEPTIONIST
	end

_00A0:
	clearflag FLAG_HIDE_BATTLE_TOWER_RECEPTIONIST
	end

_00A6:
	scrcmd_521
	return

scr_seq_D31R0201_022:
	compare VAR_UNK_414B, 1
	goto_if_ne _00EF
	scrcmd_415 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _00F1
	compare VAR_TEMP_x4000, 1
	goto_if_eq _00F1
	compare VAR_TEMP_x4000, 2
	goto_if_eq _00F1
	compare VAR_TEMP_x4000, 3
	goto_if_eq _00F1
_00EF:
	end

_00F1:
	scrcmd_344 3, 2
	end

_00F9:
	setvar VAR_UNK_414B, 255
	setvar VAR_UNK_414D, 1
	setvar VAR_UNK_414E, 1
	setvar VAR_UNK_414C, 1
	return

_0113:
	setvar VAR_UNK_414B, 255
	setvar VAR_UNK_414D, 3
	setvar VAR_UNK_414F, 1
	setvar VAR_UNK_4150, 1
	setvar VAR_UNK_4151, 1
	return

_0133:
	setvar VAR_UNK_414B, 255
	setvar VAR_UNK_414D, 1
	setvar VAR_UNK_414E, 1
	setvar VAR_UNK_414C, 2
	return

scr_seq_D31R0201_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4001, 0
	scrcmd_414 VAR_TEMP_x4002
	goto _0167

_0167:
	switch VAR_TEMP_x4002
	case 1, _01DA
	case 2, _01ED
	case 3, _0200
	case 4, _01CF
	npc_msg 15
	goto _01AC

_01AC:
	wait_button_or_walk_away
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01C1
	closemsg
	releaseall
	end

_01C1:
	call _0872
	goto _0860

_01CF:
	npc_msg 89
	goto _01AC

_01DA:
	buffer_int 0, 20
	setvar VAR_SPECIAL_x8004, 85
	goto _0213

_01ED:
	buffer_int 0, 50
	setvar VAR_SPECIAL_x8004, 86
	goto _0213

_0200:
	buffer_int 0, 100
	setvar VAR_SPECIAL_x8004, 87
	goto _0213

_0213:
	npc_msg 88
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	compare VAR_SPECIAL_x8004, 85
	goto_if_ne _0233
	clearflag FLAG_HIDE_PLAYERS_ROOM_BRONZE_TROPHY
	goto _024E

_0233:
	compare VAR_SPECIAL_x8004, 86
	goto_if_ne _024A
	clearflag FLAG_HIDE_PLAYERS_ROOM_SILVER_TROPHY
	goto _024E

_024A:
	clearflag FLAG_HIDE_PLAYERS_ROOM_GOLD_TROPHY
_024E:
	npc_msg 15
	goto _01AC

scr_seq_D31R0201_000:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_SELECT
	scrcmd_409
	npc_msg 0
	goto _026E

_026E:
	npc_msg 1
	call _02AC
	switch VAR_SPECIAL_RESULT
	case 0, _02D2
	case 1, _02A1
	touchscreen_menu_show
	goto _085B

_02A1:
	npc_msg 3
	goto _026E

_02AC:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 143, 255, 0
	menu_item_add 144, 255, 1
	menu_item_add 145, 255, 2
	menu_exec
	return

_02D2:
	npc_msg 4
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 475, 255, 0
	menu_item_add 476, 255, 1
	menu_item_add 94, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0321
	case 1, _0356
	touchscreen_menu_show
	goto _085B

_0321:
	scrcmd_410 0, 0
	goto _032F

_032F:
	scrcmd_412 1, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0383
	touchscreen_menu_show
	scrcmd_444 91, 3, 0, 0
	goto _085E

_0356:
	scrcmd_410 0, 1
	scrcmd_412 1, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _042F
	touchscreen_menu_show
	scrcmd_444 91, 4, 0, 0
	goto _085E

_0383:
	npc_msg 8
	call _0560
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _085B
	scrcmd_412 32, 0, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 1, _0546
	case 2, _0553
	scrcmd_412 53, 0, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 53, 1, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 53, 2, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 43, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0A97
	goto _04F6

_042F:
	npc_msg 8
	call _0560
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _085B
	scrcmd_412 32, 0, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 1, _0546
	case 2, _0553
	scrcmd_412 53, 0, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 53, 1, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 53, 2, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 53, 3, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 43, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0A97
	goto _04F6

_04F6:
	call _00F9
	scrcmd_412 5, 0, 0
	heal_party
	call _053A
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
	scrcmd_815 0
	scrcmd_412 57, 0, VAR_SPECIAL_RESULT
	scrcmd_412 52, 0, 0
	npc_msg 11
	wait_button
	goto _06CD

_053A:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	return

_0546:
	npc_msg 9
	touchscreen_menu_show
	goto _085B

_0553:
	npc_msg 10
	touchscreen_menu_show
	goto _085B

_0560:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	scrcmd_412 30, 0, 0
	scrcmd_412 31, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _058F
	scrcmd_815 0
_058F:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return

scr_seq_D31R0201_004:
	scrcmd_609
	lockall
	setvar VAR_UNK_414B, 0
	scrcmd_412 4, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq scr_seq_D31R0201_005
	npc_msg 16
	scrcmd_410 1, 65535
	scrcmd_412 43, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _05FD
	call _0133
	scrcmd_412 5, 0, 0
	call _0817
	npc_msg 11
	wait_button
	goto _06CD

_05FD:
	call _062C
	scrcmd_412 5, 0, 0
	call _0817
	scrcmd_412 51, 0, VAR_SPECIAL_RESULT
	copyvar VAR_TEMP_x4009, VAR_SPECIAL_RESULT
	npc_msg 32
	wait_button
	goto _06CD

_062C:
	setvar VAR_UNK_414B, 255
	setvar VAR_UNK_414D, 2
	setvar VAR_UNK_414F, 1
	setvar VAR_UNK_4150, 2
	setvar VAR_UNK_4151, 0
	return

scr_seq_D31R0201_005:
	scrcmd_609
	lockall
	npc_msg 19
	scrcmd_412 14, 0, VAR_SPECIAL_RESULT
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 1
	call_if_eq _068A
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 3
	call_if_eq _0692
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _069A
	goto _0855

_068A:
	setvar VAR_BATTLE_TOWER_PRINT_PROGRESS, 0
	return

_0692:
	setvar VAR_BATTLE_TOWER_PRINT_PROGRESS, 2
	return

_069A:
	scrcmd_412 9, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
	scrcmd_412 10, 0, VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	buffer_int 0, VAR_SPECIAL_x8000
	npc_msg 65
	goto _0855

_06CD:
	closemsg
	scrcmd_412 43, 0, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 4, _0733
	case 5, _0733
	case 2, _074D
	case 3, _0767
	goto _0719

_0719:
	setvar VAR_TEMP_x4002, 0
	setvar VAR_TEMP_x4003, 15
	call _078F
	goto _0829

_0733:
	setvar VAR_TEMP_x4002, 2
	setvar VAR_TEMP_x4003, 19
	call _078F
	goto _0829

_074D:
	setvar VAR_TEMP_x4002, 1
	setvar VAR_TEMP_x4003, 11
	call _078F
	goto _07CF

_0767:
	setvar VAR_TEMP_x4002, 1
	setvar VAR_TEMP_x4003, 11
	call _078F
	goto _0781

_0781:
	setvar VAR_UNK_414D, 2
	goto _0829

_078F:
	apply_movement VAR_TEMP_x4002, _1348
	apply_movement obj_player, _1360
	wait_movement
	scrcmd_307 0, 0, VAR_TEMP_x4003, 2, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement VAR_TEMP_x4002, _1354
	apply_movement obj_player, _136C
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

_07CF:
	goto _0829

scr_seq_D31R0201_007:
	scrcmd_609
	lockall
	call _0807
	scrcmd_412 100, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _085B
	npc_msg 56
	call _0817
	goto _0855

_0807:
	call _0890
	scrcmd_412 6, 0, 0
	return

_0817:
	add_waiting_icon
	save_game_normal VAR_SPECIAL_RESULT
	remove_waiting_icon
	play_se SEQ_SE_DP_SAVE
	wait_se SEQ_SE_DP_SAVE
	return

_0829:
	scrcmd_420 59
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D31R0202, 0, 3, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0855:
	call _0872
_085B:
	npc_msg 2
_085E:
	wait_button_or_walk_away
_0860:
	closemsg
	call _088C
	call _0890
	releaseall
	end

_0872:
	scrcmd_412 6, 0, 0
	call _0882
	return

_0882:
	scrcmd_412 3, 0, 0
	return

_088C:
	scrcmd_411
	return

_0890:
	setvar VAR_UNK_414B, 0
	setvar VAR_UNK_414D, 0
	setvar VAR_UNK_414E, 0
	setvar VAR_UNK_414F, 0
	setvar VAR_UNK_414C, 0
	setvar VAR_UNK_4150, 0
	setvar VAR_UNK_4151, 0
	return

scr_seq_D31R0201_002:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_SELECT
	scrcmd_409
	scrcmd_412 12, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _09F7
	npc_msg 36
	goto _08E6

_08E6:
	scrcmd_412 15, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0974
	goto _0903

_0903:
	npc_msg 37
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 143, 255, 0
	menu_item_add 155, 255, 1
	menu_item_add 144, 255, 2
	menu_item_add 145, 255, 3
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0B97
	case 1, _0B46
	case 2, _0969
	touchscreen_menu_show
	goto _085B

_0969:
	npc_msg 38
	goto _08E6

_0974:
	npc_msg 37
	call _09C1
	switch VAR_SPECIAL_RESULT
	case 0, _0B97
	case 1, _0B46
	case 2, _0BA5
	case 3, _0969
	touchscreen_menu_show
	goto _085B

_09C1:
	touchscreen_menu_hide
	menu_init_std_gmm 12, 7, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 143, 255, 0
	menu_item_add 153, 255, 1
	menu_item_add 154, 255, 2
	menu_item_add 144, 255, 3
	menu_item_add 145, 255, 4
	menu_exec
	return

_09F7:
	npc_msg 61
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08E6
	call _053A
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _085B
	scrcmd_815 0
	call _0A42
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _085B
	npc_msg 60
	goto _085B

_0A42:
	closemsg
	setvar VAR_TEMP_x4001, 1
	call _0A52
	return

_0A52:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_166 VAR_TEMP_x4000
	scrcmd_412 16, VAR_TEMP_x4001, VAR_TEMP_x4000
	copyvar VAR_TEMP_x4001, VAR_TEMP_x4000
	compare VAR_TEMP_x4001, 0
	goto_if_eq _0A81
	scrcmd_815 0
_0A81:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4001
	return

_0A97:
	heal_party
	call _053A
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
	call _00F9
	scrcmd_412 5, 0, 0
	heal_party
	closemsg
	setvar VAR_TEMP_x4001, 0
	call _0A52
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0855
	goto _0ADF

_0ADF:
	npc_msg 47
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06CD
	npc_msg 48
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0ADF
	setvar VAR_UNK_414B, 2
	scrcmd_412 39, 0, 0
	scrcmd_411
	npc_msg 56
	call _0817
	wait_button_or_delay 30
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	scrcmd_412 2, 0, 0
	releaseall
	end

_0B46:
	call _053A
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _085B
	closemsg
	setvar VAR_TEMP_x4001, 2
	scrcmd_815 0
	call _0A52
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _085B
	scrcmd_418 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_int 0, VAR_SPECIAL_x8004
	buffer_int_ex 1, VAR_SPECIAL_x8005, 2, 3
	npc_msg 52
	wait_button
	goto _0860

_0B97:
	scrcmd_410 0, 4
	goto _032F

_0BA5:
	scrcmd_410 0, 5
	goto _032F

_0BB3:
	apply_movement obj_player, _1378
	wait_movement
	return

scr_seq_D31R0201_001:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_SELECT
	scrcmd_409
	npc_msg 20
	goto _0BD4

_0BD4:
	npc_msg 21
	call _02AC
	switch VAR_SPECIAL_RESULT
	case 0, _0C12
	case 1, _0C07
	touchscreen_menu_show
	goto _085B

_0C07:
	npc_msg 23
	goto _0BD4

_0C12:
	scrcmd_412 1, 2, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C39
	touchscreen_menu_show
	scrcmd_444 91, 2, 0, 0
	goto _085E

_0C39:
	npc_msg 26
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C69
	goto _0C55

_0C55:
	scrcmd_410 0, 2
	setvar VAR_TEMP_x4001, 0
	goto _0C7D

_0C69:
	scrcmd_410 0, 3
	setvar VAR_TEMP_x4001, 1
	goto _0C7D

_0C7D:
	npc_msg 8
	call _0560
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _085B
	scrcmd_412 32, 0, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 1, _0546
	case 2, _0553
	scrcmd_412 53, 0, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	scrcmd_412 53, 1, VAR_SPECIAL_RESULT
	day_care_sanitize_mon VAR_SPECIAL_RESULT, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _14C8
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0D40
	call _0113
	scrcmd_412 5, 0, 0
	heal_party
	call _053A
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
	scrcmd_815 0
	scrcmd_412 57, 0, VAR_SPECIAL_RESULT
	scrcmd_412 52, 0, 0
	npc_msg 35
	goto _06CD

_0D40:
	heal_party
	call _053A
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
_0D55:
	npc_msg 27
	touchscreen_menu_hide
	menu_init_std_gmm 18, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 5, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0DA6
	case 1, _0DFE
	touchscreen_menu_show
	goto _0855

_0DA6:
	npc_msg 112
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0D55
	touchscreen_menu_show
	closemsg
	scrcmd_226 16, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0DEC
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0DF4
	goto _0E56

_0DEC:
	goto _0D55

_0DF4:
	scrcmd_283
	goto _0D55

_0DFE:
	npc_msg 112
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0D55
	touchscreen_menu_show
	closemsg
	scrcmd_227 16, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E44
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0E4C
	goto _0E56

_0E44:
	goto _0D55

_0E4C:
	scrcmd_283
	goto _0D55

_0E56:
	scrcmd_258
	scrcmd_257 1
	scrcmd_412 58, 0, 0
	goto _0E6C

_0E6C:
	scrcmd_416 0, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E6C
	scrcmd_417 0, VAR_TEMP_x4000
	switch VAR_TEMP_x4000
	case 1, _0EE1
	case 2, _0EFF
	case 3, _0F1D
	scrcmd_258
	scrcmd_257 2
	scrcmd_412 57, 0, VAR_SPECIAL_x8004
	scrcmd_451 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0F84
	scrcmd_417 1, VAR_TEMP_x4000
	goto _0F52

_0EE1:
	call _0F48
	scrcmd_412 53, 0, VAR_SPECIAL_RESULT
	buffer_mon_species_name 0, VAR_SPECIAL_RESULT
	npc_msg 33
	goto _0855

_0EFF:
	call _0F48
	scrcmd_412 53, 1, VAR_SPECIAL_RESULT
	buffer_mon_species_name 0, VAR_SPECIAL_RESULT
	npc_msg 33
	goto _0855

_0F1D:
	call _0F48
	scrcmd_412 53, 0, VAR_SPECIAL_RESULT
	buffer_mon_species_name 0, VAR_SPECIAL_RESULT
	scrcmd_412 53, 1, VAR_SPECIAL_RESULT
	buffer_mon_species_name 1, VAR_SPECIAL_RESULT
	npc_msg 34
	goto _0855

_0F48:
	scrcmd_258
	scrcmd_257 8
	scrcmd_283
	return

_0F52:
	call _0113
	scrcmd_412 5, 0, 0
	heal_party
	npc_msg 69
	call _0817
	battle_tower_setup_multi_battle
	npc_msg 32
	wait 30, VAR_SPECIAL_RESULT
	scrcmd_258
	scrcmd_257 3
	goto _06CD

_0F84:
	scrcmd_412 52, 0, 0
	scrcmd_412 58, 0, 0
	goto _0F9C

_0F9C:
	scrcmd_416 1, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0F9C
	goto _0F52

scr_seq_D31R0201_003:
	scrcmd_609
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	call _0807
	scrcmd_412 100, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _085B
	scrcmd_412 35, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _107A
	goto _1001

_1001:
	npc_msg 53
	scrcmd_412 43, 0, VAR_SPECIAL_RESULT
	copyvar VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	switch VAR_TEMP_x4000
	case 5, _104F
	case 4, _12B6
	scrcmd_412 49, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	call_if_eq _106F
	goto _104F

_104F:
	npc_msg 56
	call _0817
	closemsg
	compare VAR_TEMP_x4000, 0
	goto_if_eq _1286
	goto _0855

_106F:
	npc_msg 73
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	return

_107A:
	scrcmd_412 43, 0, VAR_SPECIAL_RESULT
	copyvar VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x4000, 5
	goto_if_eq _1268
	compare VAR_TEMP_x4000, 0
	goto_if_eq _118D
	compare VAR_TEMP_x4000, 4
	goto_if_eq _10E6
	scrcmd_412 49, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _10D2
	call _1263
	goto _1273

_10D2:
	npc_msg 12
	npc_msg 73
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	goto _1273

_10E6:
	npc_msg 12
	scrcmd_412 54, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _115A
	goto _1106

_1106:
	scrcmd_412 10, 0, VAR_SPECIAL_RESULT
	copyvar VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_int 1, VAR_TEMP_x4000
	npc_msg 55
	goto _1127

_1127:
	scrcmd_412 49, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _12F1
	goto _1144

_1144:
	buffer_int 0, VAR_TEMP_x4000
	npc_msg 70
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	goto _12F1

_115A:
	scrcmd_412 49, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _12F1
	goto _1177

_1177:
	buffer_int 0, VAR_TEMP_x4000
	npc_msg 132
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	goto _12F1

_118D:
	scrcmd_412 45, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _11AA
	goto _11F1

_11AA:
	call _1263
	goto _11B8

_11B8:
	npc_msg 14
	call _0817
	scrcmd_414 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
	npc_msg 113
	closemsg
	copyvar VAR_TEMP_x4002, VAR_SPECIAL_RESULT
	setvar VAR_TEMP_x4001, 1
	call _0BB3
	goto _0167

_11F1:
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 1
	call_if_eq _1231
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 3
	call_if_eq _1248
	scrcmd_412 48, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _11B8
	npc_msg 84
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	goto _11B8

_1231:
	npc_msg 85
	buffer_players_name 0
	npc_msg 87
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_TOWER_PRINT_PROGRESS, 2
	return

_1248:
	npc_msg 85
	buffer_players_name 0
	npc_msg 86
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_TOWER_PRINT_PROGRESS, 4
	callstd std_frontier_gold_prints_check
	return

_1263:
	npc_msg 12
	return

_1268:
	npc_msg 54
	goto _1273

_1273:
	npc_msg 14
	call _0817
	closemsg
	goto _0855

_1286:
	scrcmd_414 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0855
	npc_msg 113
	closemsg
	copyvar VAR_TEMP_x4002, VAR_SPECIAL_RESULT
	setvar VAR_TEMP_x4001, 1
	call _0BB3
	goto _0167

_12B6:
	scrcmd_412 9, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _12D3
	goto _12F1

_12D3:
	scrcmd_412 10, 0, VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	buffer_int 0, VAR_SPECIAL_x8000
	npc_msg 65
	goto _12F1

_12F1:
	scrcmd_412 11, 1, 0
	goto _1301

_1301:
	call _0872
	npc_msg 56
	call _0817
	npc_msg 57
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _085B
	call _0A42
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _085B
	npc_msg 60
	goto _085B

	.align 4
_1348:

	step 62, 1
	step 12, 2
	step_end
	.align 4
_1354:

	step 12, 1
	step 69, 1
	step_end
	.align 4
_1360:

	step 62, 1
	step 12, 2
	step_end
	.align 4
_136C:

	step 12, 2
	step 69, 1
	step_end
	.align 4
_1378:

	step 3, 1
	step_end
scr_seq_D31R0201_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 0
	setvar VAR_SPECIAL_x8001, 0
	call _1404
	end

scr_seq_D31R0201_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 0
	setvar VAR_SPECIAL_x8001, 1
	call _1404
	end

scr_seq_D31R0201_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 0
	setvar VAR_SPECIAL_x8001, 2
	call _1404
	end

scr_seq_D31R0201_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_419 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _13F9
	setvar VAR_SPECIAL_x8000, 1
	setvar VAR_SPECIAL_x8001, 0
	call _1404
	end

_13F9:
	npc_msg 111
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_1404:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_408 VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	return

scr_seq_D31R0201_013:
	simple_npc_msg 74
	end

scr_seq_D31R0201_014:
	simple_npc_msg 75
	end

scr_seq_D31R0201_015:
	simple_npc_msg 76
	end

scr_seq_D31R0201_016:
	simple_npc_msg 77
	end

scr_seq_D31R0201_017:
	simple_npc_msg 78
	end

scr_seq_D31R0201_018:
	simple_npc_msg 79
	end

scr_seq_D31R0201_019:
	simple_npc_msg 80
	end

scr_seq_D31R0201_008:
	end

scr_seq_D31R0201_020:
	play_cry SPECIES_PIKACHU, 0
	simple_npc_msg 81
	end

_14C8:
	touchscreen_menu_show
	call _088C
	call _0890
	callstd std_bag_is_full_griseous_orb
	end

scr_seq_D31R0201_023:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call_if_unset FLAG_GOT_JUDGE_EXPLANATION, _158E
	call_if_set FLAG_GOT_JUDGE_EXPLANATION, _1593
	setflag FLAG_GOT_JUDGE_EXPLANATION
	goto _1506

_1506:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	party_select_ui
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _1645
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _1598
	stat_judge VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_x8001, 90
	goto_if_le _15E5
	compare VAR_SPECIAL_x8001, 120
	goto_if_le _15F0
	compare VAR_SPECIAL_x8001, 150
	goto_if_le _15FB
	compare VAR_SPECIAL_x8001, 151
	goto_if_ge _1606
	end

_158E:
	npc_msg 114
	return

_1593:
	npc_msg 115
	return

_1598:
	npc_msg 117
	goto _1506

_15A3:
	non_npc_msg_var VAR_SPECIAL_x8002
	goto _15AF

_15AF:
	compare VAR_SPECIAL_x8003, 15
	goto_if_le _1611
	compare VAR_SPECIAL_x8003, 25
	goto_if_le _161C
	compare VAR_SPECIAL_x8003, 30
	goto_if_le _1627
	compare VAR_SPECIAL_x8003, 31
	goto_if_ge _1632
	end

_15E5:
	npc_msg 118
	goto _15A3

_15F0:
	npc_msg 119
	goto _15A3

_15FB:
	npc_msg 120
	goto _15A3

_1606:
	npc_msg 121
	goto _15A3

_1611:
	npc_msg 128
	goto _163D

_161C:
	npc_msg 129
	goto _163D

_1627:
	npc_msg 130
	goto _163D

_1632:
	npc_msg 131
	goto _163D

_163D:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_1645:
	npc_msg 116
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
