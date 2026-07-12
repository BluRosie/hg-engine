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

.include "armips/scr_seq/event_T30R0601.inc"


// text archive to grab from: 635.txt

.create "build/a012/2_948", 0


scrdef scr_seq_T30R0601_000
scrdef scr_seq_T30R0601_001
scrdef scr_seq_T30R0601_002
scrdef scr_seq_T30R0601_003
scrdef scr_seq_T30R0601_004
scrdef_end

scr_seq_T30R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_MAPTEMP_001, _0036
	npc_msg 0
	setflag FLAG_MAPTEMP_001
	goto _0036

_0036:
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _005D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _014A
	end

_005D:
	npc_msg 2
	closemsg
	goto _0068

_0068:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8002
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8002, 255
	goto_if_eq _014A
	get_partymon_species VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0134
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _013F
	npc_msg 6
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_394 VAR_SPECIAL_x8002
	scrcmd_395 VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8001, 255
	goto_if_eq _005D
	buffer_party_mon_move_name 0, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _011D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _005D
	end

_011D:
	mon_forget_move VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	play_fanfare SEQ_ME_WASURE
	wait_fanfare
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0134:
	npc_msg 5
	closemsg
	goto _0068

_013F:
	npc_msg 4
	closemsg
	goto _0068

_014A:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30R0601_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_MET_MOVE_MANIAC, _0238
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _022D
	npc_msg 10
	npc_msg 12
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8005
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8005, 255
	goto_if_eq _022D
	get_partymon_species VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0247
	scrcmd_466 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0222
	npc_msg 13
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_relearner_init VAR_SPECIAL_x8005
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _022D
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0222:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_022D:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0238:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_MET_MOVE_MANIAC
	end

_0247:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30R0601_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_186, _0287
	setflag FLAG_UNK_186
	npc_msg 26
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A5
	goto _02EC

_0287:
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A5
	goto _02EC

_02A5:
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02B0:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02BB:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02C6:
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D1:
	buffer_move_name 0, MOVE_DRACO_METEOR
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02E1:
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02EC:
	get_party_count VAR_TEMP_x4000
_02F0:
	subvar VAR_TEMP_x4000, 1
	get_partymon_species VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0346
	get_mon_types VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_TEMP_x4000
	compare VAR_SPECIAL_x8004, 16
	goto_if_eq _0331
	compare VAR_SPECIAL_x8005, 16
	goto_if_eq _0331
	goto _0346

_0331:
	mon_has_move VAR_SPECIAL_RESULT, MOVE_DRACO_METEOR, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0359
_0346:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _02F0
	goto _02B0

_0359:
	npc_msg 30
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _02A5
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _02C6
	call _042B
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02BB
	mon_has_move VAR_SPECIAL_RESULT, MOVE_DRACO_METEOR, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02D1
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 255
	goto_if_lt _02E1
	buffer_mon_species_name 0, VAR_SPECIAL_x8000
	npc_msg 62
	closemsg
	setvar VAR_SPECIAL_x8003, 434
	goto _03EF

_03EF:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_tutor_init VAR_SPECIAL_x8000, MOVE_DRACO_METEOR
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _02A5
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_042B:
	get_mon_types VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8004, 16
	goto_if_eq _0455
	compare VAR_SPECIAL_x8005, 16
	goto_if_eq _0455
	setvar VAR_SPECIAL_RESULT, 0
	return

_0455:
	setvar VAR_SPECIAL_RESULT, 1
	return

scr_seq_T30R0601_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_187, _0490
	setflag FLAG_UNK_187
	npc_msg 43
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04AC
	goto _06EE

_0490:
	npc_msg 44
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04AC
	goto _06EE

_04AC:
	npc_msg 45
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _06EE
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0708
	call _05F4
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06FB
	copyvar VAR_SPECIAL_x8002, VAR_SPECIAL_RESULT
	call _06B0
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0722
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 255
	goto_if_lt _0715
	buffer_mon_species_name 0, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8002, 1
	goto_if_eq _0555
	compare VAR_SPECIAL_x8002, 2
	goto_if_eq _0577
	goto _0599

_0555:
	npc_msg 52
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06EE
	setvar VAR_SPECIAL_x8003, 307
	goto _05BB

_0577:
	npc_msg 53
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06EE
	setvar VAR_SPECIAL_x8003, 308
	goto _05BB

_0599:
	npc_msg 54
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06EE
	setvar VAR_SPECIAL_x8003, 338
	goto _05BB

_05BB:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_tutor_init VAR_SPECIAL_x8000, VAR_SPECIAL_x8003
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _06EE
	touchscreen_menu_show
	releaseall
	end

_05F4:
	compare VAR_SPECIAL_x8001, 6
	goto_if_eq _0698
	compare VAR_SPECIAL_x8001, 157
	goto_if_eq _0698
	compare VAR_SPECIAL_x8001, 257
	goto_if_eq _0698
	compare VAR_SPECIAL_x8001, 392
	goto_if_eq _0698
	compare VAR_SPECIAL_x8001, 9
	goto_if_eq _06A0
	compare VAR_SPECIAL_x8001, 160
	goto_if_eq _06A0
	compare VAR_SPECIAL_x8001, 260
	goto_if_eq _06A0
	compare VAR_SPECIAL_x8001, 395
	goto_if_eq _06A0
	compare VAR_SPECIAL_x8001, 3
	goto_if_eq _06A8
	compare VAR_SPECIAL_x8001, 154
	goto_if_eq _06A8
	compare VAR_SPECIAL_x8001, 254
	goto_if_eq _06A8
	compare VAR_SPECIAL_x8001, 389
	goto_if_eq _06A8
	setvar VAR_SPECIAL_RESULT, 0
	return

_0698:
	setvar VAR_SPECIAL_RESULT, 1
	return

_06A0:
	setvar VAR_SPECIAL_RESULT, 2
	return

_06A8:
	setvar VAR_SPECIAL_RESULT, 3
	return

_06B0:
	compare VAR_SPECIAL_x8002, 1
	goto_if_eq _06D0
	compare VAR_SPECIAL_x8002, 2
	goto_if_eq _06DA
	goto _06E4

_06D0:
	mon_has_move VAR_SPECIAL_RESULT, MOVE_BLAST_BURN, VAR_SPECIAL_x8000
	return

_06DA:
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HYDRO_CANNON, VAR_SPECIAL_x8000
	return

_06E4:
	mon_has_move VAR_SPECIAL_RESULT, MOVE_FRENZY_PLANT, VAR_SPECIAL_x8000
	return

_06EE:
	npc_msg 46
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_06FB:
	npc_msg 48
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0708:
	npc_msg 49
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0715:
	npc_msg 50
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0722:
	npc_msg 51
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

scr_seq_T30R0601_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 61
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
