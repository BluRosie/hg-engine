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

.include "armips/scr_seq/event_D49R0102.inc"


// text archive to grab from: 139.txt

.create "build/a012/2_124", 0


scrdef scr_seq_D49R0102_000
scrdef scr_seq_D49R0102_001
scrdef scr_seq_D49R0102_002
scrdef scr_seq_D49R0102_003
scrdef scr_seq_D49R0102_004
scrdef scr_seq_D49R0102_005
scrdef scr_seq_D49R0102_006
scrdef scr_seq_D49R0102_007
scrdef scr_seq_D49R0102_008
scrdef scr_seq_D49R0102_009
scrdef scr_seq_D49R0102_010
scrdef scr_seq_D49R0102_011
scrdef scr_seq_D49R0102_012
scrdef scr_seq_D49R0102_013
scrdef scr_seq_D49R0102_014
scrdef scr_seq_D49R0102_015
scrdef scr_seq_D49R0102_016
scrdef_end

scr_seq_D49R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	stop_se SEQ_SE_GS_N_KANSEI
	callstd std_play_mom_music
	goto_if_unset FLAG_UNK_0FA, _006A
	npc_msg 1
	goto _0071

_006A:
	npc_msg 0
	setflag FLAG_UNK_0FA
_0071:
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 272, 255, 0
	menu_item_add 296, 255, 1
	menu_item_add 297, 255, 2
	menu_item_add 12, 255, 3
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _03C5
	case 1, _00D5
	case 2, _03D0
	goto _03DB

_00D5:
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 308, 255, 0
	menu_item_add 309, 255, 1
	menu_item_add 310, 255, 2
	menu_item_add 311, 255, 3
	menu_item_add 312, 255, 4
	menu_item_add 13, 255, 5
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 5, _0071
	npc_msg 4
	case 0, _0166
	case 1, _01A0
	case 2, _01DA
	case 3, _0214
	goto _024E

_0166:
	setvar VAR_TEMP_x4007, 0
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 298, 255, 0
	menu_item_add 299, 255, 1
	menu_item_add 304, 255, 6
	menu_item_add 13, 255, 10
	menu_exec
	goto _0288

_01A0:
	setvar VAR_TEMP_x4007, 1
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 301, 255, 3
	menu_item_add 300, 255, 2
	menu_item_add 307, 255, 9
	menu_item_add 13, 255, 10
	menu_exec
	goto _0288

_01DA:
	setvar VAR_TEMP_x4007, 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 306, 255, 8
	menu_item_add 307, 255, 9
	menu_item_add 299, 255, 1
	menu_item_add 13, 255, 10
	menu_exec
	goto _0288

_0214:
	setvar VAR_TEMP_x4007, 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 305, 255, 7
	menu_item_add 304, 255, 6
	menu_item_add 301, 255, 3
	menu_item_add 13, 255, 10
	menu_exec
	goto _0288

_024E:
	setvar VAR_TEMP_x4007, 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 303, 255, 5
	menu_item_add 302, 255, 4
	menu_item_add 298, 255, 0
	menu_item_add 13, 255, 10
	menu_exec
	goto _0288

_0288:
	switch VAR_SPECIAL_RESULT
	case 0, _0318
	case 1, _0323
	case 2, _032E
	case 3, _0339
	case 4, _0344
	case 5, _034F
	case 6, _035A
	case 7, _0365
	case 8, _0370
	case 9, _037B
	goto _00D5

_0318:
	npc_msg 6
	goto _0386

_0323:
	npc_msg 7
	goto _0386

_032E:
	npc_msg 8
	goto _0386

_0339:
	npc_msg 9
	goto _0386

_0344:
	npc_msg 10
	goto _0386

_034F:
	npc_msg 11
	goto _0386

_035A:
	npc_msg 12
	goto _0386

_0365:
	npc_msg 13
	goto _0386

_0370:
	npc_msg 14
	goto _0386

_037B:
	npc_msg 15
	goto _0386

_0386:
	npc_msg 4
	compare VAR_TEMP_x4007, 0
	goto_if_eq _0166
	compare VAR_TEMP_x4007, 1
	goto_if_eq _01A0
	compare VAR_TEMP_x4007, 2
	goto_if_eq _01DA
	compare VAR_TEMP_x4007, 3
	goto_if_eq _0214
	goto _024E

_03C5:
	npc_msg 5
	goto _0071

_03D0:
	npc_msg 17
	goto _0071

_03DB:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	stop_bgm 0
	reset_bgm
	scrcmd_726
	releaseall
	end

scr_seq_D49R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 500
	goto_if_lt _0417
	buffer_players_name 0
	npc_msg 25
	goto _041A

_0417:
	npc_msg 24
_041A:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 51
	goto_if_lt _0449
	buffer_players_name 0
	npc_msg 27
	goto _044C

_0449:
	npc_msg 26
_044C:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 150
	goto_if_lt _047B
	buffer_players_name 0
	npc_msg 29
	goto _047E

_047B:
	npc_msg 28
_047E:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1000
	goto_if_lt _04AD
	buffer_players_name 0
	npc_msg 31
	goto _04B0

_04AD:
	npc_msg 30
_04B0:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 10001
	goto_if_lt _04DF
	buffer_players_name 0
	npc_msg 33
	goto _04E2

_04DF:
	npc_msg 32
_04E2:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 75
	goto_if_lt _0511
	buffer_players_name 0
	npc_msg 35
	goto _0514

_0511:
	npc_msg 34
_0514:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 26
	goto_if_lt _0544
	buffer_players_name 0
	gender_msgbox 37, 38
	goto _0547

_0544:
	npc_msg 36
_0547:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 20001
	goto_if_lt _0576
	buffer_players_name 0
	npc_msg 40
	goto _0579

_0576:
	npc_msg 39
_0579:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 800
	goto_if_lt _05A5
	npc_msg 43
	goto _05A8

_05A5:
	npc_msg 41
_05A8:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 800
	goto_if_lt _05D7
	buffer_players_name 0
	npc_msg 46
	goto _05DA

_05D7:
	npc_msg 45
_05DA:
	closemsg
	apply_movement obj_D49R0102_gsmiddleman1, _0610
	wait_movement
	compare VAR_TEMP_x4000, 800
	goto_if_lt _05FC
	npc_msg 44
	goto _05FF

_05FC:
	npc_msg 42
_05FF:
	closemsg
	apply_movement obj_D49R0102_gsmiddleman1, _0618
	wait_movement
	releaseall
	end

	.align 4
_0610:

	step 35, 1
	step_end
	.align 4
_0618:

	step 32, 1
	step_end
scr_seq_D49R0102_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 201
	goto_if_lt _0647
	buffer_players_name 0
	npc_msg 48
	goto _064A

_0647:
	npc_msg 47
_064A:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 250
	goto_if_lt _0679
	buffer_players_name 0
	npc_msg 50
	goto _067C

_0679:
	npc_msg 49
_067C:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 101
	goto_if_lt _06AB
	buffer_players_name 0
	npc_msg 52
	goto _06AE

_06AB:
	npc_msg 51
_06AE:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	play_cry SPECIES_RATTATA, 0
	compare VAR_TEMP_x4000, 15000
	goto_if_lt _06E3
	buffer_players_name 0
	npc_msg 19
	goto _06E6

_06E3:
	npc_msg 18
_06E6:
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	play_cry SPECIES_MACHOP, 0
	compare VAR_TEMP_x4000, 15000
	goto_if_lt _071D
	buffer_players_name 0
	npc_msg 21
	goto _0720

_071D:
	npc_msg 20
_0720:
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0102_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 11, VAR_TEMP_x4000
	play_cry SPECIES_BUTTERFREE, 0
	compare VAR_TEMP_x4000, 15000
	goto_if_lt _0757
	buffer_players_name 0
	npc_msg 23
	goto _075A

_0757:
	npc_msg 22
_075A:
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
