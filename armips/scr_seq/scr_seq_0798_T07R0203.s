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

.include "armips/scr_seq/event_T07R0203.inc"


// text archive to grab from: 503.txt

.create "build/a012/2_798", 0


scrdef scr_seq_T07R0203_000
scrdef scr_seq_T07R0203_001
scrdef scr_seq_T07R0203_002
scrdef scr_seq_T07R0203_003
scrdef scr_seq_T07R0203_004
scrdef scr_seq_T07R0203_005
scrdef scr_seq_T07R0203_006
scrdef scr_seq_T07R0203_007
scrdef scr_seq_T07R0203_008
scrdef scr_seq_T07R0203_009
scrdef scr_seq_T07R0203_010
scrdef scr_seq_T07R0203_011
scrdef scr_seq_T07R0203_012
scrdef scr_seq_T07R0203_013
scrdef_end

scr_seq_T07R0203_008:
	get_friend_sprite VAR_OBJ_0
	setvar VAR_UNK_4125, 0
	end

scr_seq_T07R0203_011:
	compare VAR_UNK_412C, 0
	goto_if_ne _006B
	move_person_facing obj_T07R0203_var_1, 12, 0, 6, DIR_WEST
	move_person_facing obj_T07R0203_follower_mon_static_marill, 13, 0, 6, DIR_WEST
_006B:
	end

scr_seq_T07R0203_010:
	scrcmd_609
	lockall
	callstd std_play_friend_music
	apply_movement obj_T07R0203_var_1, _012C
	apply_movement obj_T07R0203_follower_mon_static_marill, _0138
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	apply_movement obj_T07R0203_var_1, _0140
	apply_movement obj_T07R0203_follower_mon_static_marill, _0148
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0150
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 14, 15
	closemsg
	apply_movement obj_T07R0203_var_1, _015C
	apply_movement obj_T07R0203_follower_mon_static_marill, _016C
	wait_movement
	scrcmd_307 0, 0, 3, 2, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T07R0203_var_1, _0180
	apply_movement obj_T07R0203_follower_mon_static_marill, _018C
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	callstd std_fade_end_friend_music
	setvar VAR_UNK_412C, 1
	move_person_facing obj_T07R0203_var_1, 29, 0, 29, DIR_WEST
	move_person_facing obj_T07R0203_follower_mon_static_marill, 29, 0, 29, DIR_WEST
	releaseall
	end

	.align 4
_012C:

	step 14, 4
	step 75, 1
	step_end
	.align 4
_0138:

	step 14, 4
	step_end
	.align 4
_0140:

	step 14, 4
	step_end
	.align 4
_0148:

	step 14, 4
	step_end
	.align 4
_0150:

	step 13, 3
	step 35, 1
	step_end
	.align 4
_015C:

	step 12, 2
	step 14, 1
	step 12, 1
	step_end
	.align 4
_016C:

	step 14, 1
	step 12, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_0180:

	step 12, 1
	step 69, 1
	step_end
	.align 4
_018C:

	step 12, 2
	step 69, 1
	step_end
scr_seq_T07R0203_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_johto_dex_complete VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0245
	goto_if_set FLAG_SAW_JOHTO_DEX_CERTIFICATE, _01ED
	npc_msg 1
	play_fanfare SEQ_ME_HYOUKA2
	wait_fanfare
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	show_certificate 0
	restore_overworld
	setflag FLAG_SAW_JOHTO_DEX_CERTIFICATE
	add_special_game_stat 25
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_01ED:
	check_national_dex_complete VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0245
	goto_if_set FLAG_SAW_NATIONAL_DEX_CERTIFICATE, _023A
	npc_msg 2
	play_fanfare SEQ_ME_HYOUKA2
	wait_fanfare
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	show_certificate 1
	restore_overworld
	setflag FLAG_SAW_NATIONAL_DEX_CERTIFICATE
	add_special_game_stat 26
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_023A:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0245:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0276
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0276:
	getitemquantity ITEM_GB_SOUNDS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02A7
	npc_msg 8
	giveitem_no_check ITEM_GB_SOUNDS, 1
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A7:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_001:
	simple_npc_msg 4
	end

scr_seq_T07R0203_002:
	simple_npc_msg 5
	end

scr_seq_T07R0203_003:
	simple_npc_msg 6
	end

scr_seq_T07R0203_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0203_012:
	simple_npc_msg 21
	end
	.align 4


.close
