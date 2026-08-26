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

.include "data/scr_seq/include/event_T10R0101.inc"


// text archive to grab from: 522.txt

.data


scrdef scr_seq_T10R0101_000
scrdef scr_seq_T10R0101_001
scrdef scr_seq_T10R0101_002
scrdef scr_seq_T10R0101_003
scrdef scr_seq_T10R0101_004
scrdef scr_seq_T10R0101_005
scrdef scr_seq_T10R0101_006
scrdef scr_seq_T10R0101_007
scrdef scr_seq_T10R0101_008
scrdef_end

scr_seq_T10R0101_005:
	setflag FLAG_HIDE_WILLS_ROOM_RETREAT
	setflag FLAG_HIDE_KOGAS_ROOM_RETREAT
	setflag FLAG_HIDE_BRUNOS_ROOM_RETREAT
	setflag FLAG_HIDE_KARENS_ROOM_RETREAT
	clearflag FLAG_HIDE_WILLS_ROOM_EXIT
	clearflag FLAG_HIDE_KOGAS_ROOM_EXIT
	clearflag FLAG_HIDE_BRUNOS_ROOM_EXIT
	clearflag FLAG_HIDE_KARENS_ROOM_EXIT
	clearflag FLAG_DEFEATED_WILL
	clearflag FLAG_DEFEATED_KOGA
	clearflag FLAG_DEFEATED_BRUNO
	clearflag FLAG_DEFEATED_KAREN
	compare VAR_UNK_40FC, 1
	goto_if_le _00AC
	goto_if_set FLAG_UNK_AA9, _00AC
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _008B
	setvar VAR_UNK_4119, 1
	goto _00AA

_008B:
	compare VAR_TEMP_x4000, 3
	goto_if_ne _00A4
	setvar VAR_UNK_4119, 1
	goto _00AA

_00A4:
	setvar VAR_UNK_4119, 0
_00AA:
	end

_00AC:
	end

scr_seq_T10R0101_001:
	simple_npc_msg 0
	end

scr_seq_T10R0101_002:
	simple_npc_msg 1
	end

scr_seq_T10R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ABRA, 0
	npc_msg 2
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_T10R0101_006:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	apply_movement obj_player, _01DC
	wait_movement
	callstd std_play_rival_intro_music
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	clearflag FLAG_HIDE_INDIGO_PLATEAU_RIVAL
	show_person obj_T10R0101_gsrivel
	move_person_facing obj_T10R0101_gsrivel, VAR_SPECIAL_x8000, 0, 23, DIR_NORTH
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T10R0101_gsrivel, _0208
	apply_movement obj_player, _01E8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 3
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _016E
	trainer_battle TRAINER_RIVAL_SILVER_20, 0, 0, 0
	goto _0191

_016E:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _0189
	trainer_battle TRAINER_RIVAL_SILVER_21, 0, 0, 0
	goto _0191

_0189:
	trainer_battle TRAINER_RIVAL_SILVER_19, 0, 0, 0
_0191:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01CE
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 4
	closemsg
	apply_movement obj_T10R0101_gsrivel, _0210
	wait_movement
	setvar VAR_UNK_4119, 0
	setflag FLAG_UNK_AA9
	hide_person obj_T10R0101_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_01CE:
	hide_person obj_T10R0101_gsrivel
	setflag FLAG_HIDE_INDIGO_PLATEAU_RIVAL
	white_out
	releaseall
	end

	.balign 4
_01DC:

	step 75, 1
	step 63, 1
	step_end
	.balign 4
_01E8:

	step 63, 2
	step 13, 1
	step_end
	.byte 0x3f, 0x00, 0x02, 0x00, 0x0f, 0x00, 0x01, 0x00, 0x0c, 0x00, 0x01, 0x00
	.byte 0x21, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.balign 4
_0208:

	step 12, 7
	step_end
	.balign 4
_0210:

	step 33, 1
	step 13, 7
	step_end
scr_seq_T10R0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T10R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 13
	callstd std_special_mart
	releaseall
	end

scr_seq_T10R0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4005, 1
	goto_if_ge _0293
	npc_msg 5
	closemsg
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _027D
	apply_movement obj_T10R0101_counterm, _02A0
	goto _0287

_027D:
	apply_movement obj_T10R0101_counterm, _02B0
	wait_movement
_0287:
	wait_movement
	setvar VAR_TEMP_x4005, 1
	releaseall
	end

_0293:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00, 0x00
	.balign 4
_02A0:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.balign 4
_02B0:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
scr_seq_T10R0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	touchscreen_menu_hide
_02CD:
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 8, 255, 0
	menu_item_add 9, 255, 1
	menu_item_add 10, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0317
	case 1, _0456
	goto _058C

	.byte 0x02, 0x00
_0317:
	compare VAR_UNK_40E6, 0
	goto_if_eq _037A
	npc_msg 11
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 14, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _037A
	case 1, _03F1
	goto _0371

	.byte 0x02
	.byte 0x00
_0371:
	npc_msg 7
	goto _02CD

_037A:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 16, 255, 0
	menu_item_add 17, 255, 1
	menu_item_add 18, 255, 2
	menu_item_add 19, 255, 3
	menu_item_add 26, 255, 4
	menu_exec
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _03CF
	closemsg
	view_rankings RANKINGS_RECORD_BATTLE_TOWER_WIFI_WINS, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _02CD

_03CF:
	compare VAR_UNK_40E6, 0
	goto_if_ne _03EB
	npc_msg 7
	goto _02CD

	.byte 0x16, 0x00, 0x06, 0x00, 0x00, 0x00
_03EB:
	goto _0317

_03F1:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 20, 255, 0
	menu_item_add 21, 255, 1
	menu_item_add 22, 255, 2
	menu_item_add 23, 255, 3
	menu_item_add 24, 255, 4
	menu_item_add 25, 255, 5
	menu_item_add 26, 255, 6
	menu_exec
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _03CF
	closemsg
	view_rankings RANKINGS_RECORD_BATTLE_TOWER_MULTI_COMM_WINS, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _02CD

_0456:
	compare VAR_UNK_40E6, 0
	goto_if_eq _04B0
	npc_msg 11
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 14, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _04B0
	case 1, _0527
	goto _02CD

	.byte 0x02, 0x00
_04B0:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 16, 255, 0
	menu_item_add 17, 255, 1
	menu_item_add 18, 255, 2
	menu_item_add 19, 255, 3
	menu_item_add 26, 255, 4
	menu_exec
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0505
	closemsg
	view_rankings RANKINGS_RECORD_BATTLE_TOWER_DOUBLE_WINS, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _02CD

_0505:
	compare VAR_UNK_40E6, 0
	goto_if_ne _0521
	npc_msg 7
	goto _02CD

	.byte 0x16, 0x00, 0x06, 0x00, 0x00
	.byte 0x00
_0521:
	goto _0456

_0527:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 20, 255, 0
	menu_item_add 21, 255, 1
	menu_item_add 22, 255, 2
	menu_item_add 23, 255, 3
	menu_item_add 24, 255, 4
	menu_item_add 25, 255, 5
	menu_item_add 26, 255, 6
	menu_exec
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0505
	closemsg
	view_rankings RANKINGS_RECORD_BATTLE_TOWER_SINGLE_WINS, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _02CD

_058C:
	touchscreen_menu_show
	closemsg
	releaseall
	end
	.balign 4
