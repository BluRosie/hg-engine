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

.include "armips/scr_seq/event_T07.inc"


// text archive to grab from: 491.txt

.create "build/a012/2_785", 0


scrdef scr_seq_T07_000
scrdef scr_seq_T07_001
scrdef scr_seq_T07_002
scrdef scr_seq_T07_003
scrdef scr_seq_T07_004
scrdef scr_seq_T07_005
scrdef scr_seq_T07_006
scrdef scr_seq_T07_007
scrdef scr_seq_T07_008
scrdef scr_seq_T07_009
scrdef scr_seq_T07_010
scrdef scr_seq_T07_011
scrdef scr_seq_T07_012
scrdef scr_seq_T07_013
scrdef scr_seq_T07_014
scrdef scr_seq_T07_015
scrdef scr_seq_T07_016
scrdef scr_seq_T07_017
scrdef scr_seq_T07_018
scrdef_end

scr_seq_T07_015:
	goto_if_unset FLAG_UNK_189, _005F
	clearflag FLAG_UNK_189
	end

_005F:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _007A
	clearflag FLAG_HIDE_CAMERON
	goto _0095

_007A:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0091
	clearflag FLAG_HIDE_CAMERON
	goto _0095

_0091:
	setflag FLAG_HIDE_CAMERON
_0095:
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _015E
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _00C3
	goto _0198

_00C3:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _00E0
	goto _0101

_00E0:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _00F9
	goto _0101

_00F9:
	goto _0198

_0101:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _0120
	clearflag FLAG_UNK_25D
	clearflag FLAG_UNK_2E1
	goto _015C

_0120:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _013B
	clearflag FLAG_UNK_25D
	clearflag FLAG_UNK_2E1
	goto _015C

_013B:
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0156
	clearflag FLAG_UNK_25D
	clearflag FLAG_UNK_2E1
	goto _015C

_0156:
	goto _0198

_015C:
	end

_015E:
	get_phone_book_rematch PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0198
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0190
	clearflag FLAG_UNK_25D
	setflag FLAG_UNK_2E1
	goto _0196

_0190:
	goto _0198

_0196:
	end

_0198:
	setflag FLAG_UNK_25D
	setflag FLAG_UNK_2E1
	end

scr_seq_T07_000:
	simple_npc_msg 0
	end

scr_seq_T07_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_POLIWRATH, 0
	npc_msg 1
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07_002:
	simple_npc_msg 2
	end

scr_seq_T07_003:
	simple_npc_msg 3
	end

scr_seq_T07_004:
	simple_npc_msg 4
	end

scr_seq_T07_005:
	simple_npc_msg 5
	end

scr_seq_T07_006:
	simple_npc_msg 6
	end

scr_seq_T07_007:
	simple_npc_msg 7
	end

scr_seq_T07_008:
	simple_npc_msg 8
	end

scr_seq_T07_009:
	direction_signpost 30, 0, 7, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T07_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 31, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T07_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 32, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T07_012:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 33, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T07_013:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 34, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T07_014:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T07_016:
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _046C
	compare VAR_TEMP_x4005, 2
	goto_if_eq _0434
	compare VAR_TEMP_x4005, 1
	goto_if_eq _03AA
_0302:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_TEMP_x4005, 1
	apply_movement obj_T07_gsleader12, _045C
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_T07_gsleader6, _0464
	wait_movement
	npc_msg 10
	closemsg
	apply_movement obj_T07_gsleader12, _045C
	wait_movement
	npc_msg 11
	closemsg
	apply_movement obj_T07_gsleader6, _0464
	wait_movement
	npc_msg 12
	closemsg
	apply_movement obj_T07_gsleader12, _045C
	wait_movement
	npc_msg 13
	closemsg
	apply_movement obj_T07_gsleader6, _0464
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T07_gsleader12, _045C
	wait_movement
	npc_msg 15
	closemsg
	apply_movement obj_T07_gsleader6, _0464
	wait_movement
	npc_msg 16
	closemsg
	apply_movement obj_T07_gsleader12, _045C
	wait_movement
	npc_msg 17
	closemsg
	apply_movement obj_T07_gsleader6, _0464
	wait_movement
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03AA:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4005, 2
	buffer_players_name 0
	npc_msg 19
_03BE:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03E2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0429
	end

_03E2:
	buffer_players_name 0
	npc_msg 20
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_ERIKA
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_25D
	hide_person obj_T07_gsleader12
	hide_person obj_T07_gsleader6
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0429:
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0434:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 23
	goto _03BE

	.align 4
_045C:

	step 35, 1
	step_end
	.align 4
_0464:

	step 34, 1
	step_end
_046C:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04D5
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04E0
	npc_msg 25
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 81
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04D5:
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04E0:
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07_017:
	compare VAR_TEMP_x4002, 1
	goto_if_ge _0500
	goto _0302

_0500:
	simple_npc_msg 29
	end

scr_seq_T07_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063B
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _064F
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _058C
	apply_movement obj_player, _0664
	apply_movement obj_T07_gsmiddleman1, _06B0
	goto _05DA

_058C:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05A7
	apply_movement obj_player, _067C
	goto _05DA

_05A7:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _05CA
	apply_movement obj_player, _069C
	apply_movement obj_T07_gsmiddleman1, _06B0
	goto _05DA

_05CA:
	apply_movement obj_player, _0688
	apply_movement obj_T07_gsmiddleman1, _06B0
_05DA:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0601
	apply_movement obj_partner_poke, _06BC
	wait_movement
_0601:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 57
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_063B:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_064F:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0664:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_067C:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0688:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_069C:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_06B0:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_06BC:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4


.close
