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

.include "armips/scr_seq/event_T11R0601.inc"


// text archive to grab from: 535.txt

.create "build/a012/2_834", 0


scrdef scr_seq_T11R0601_000
scrdef scr_seq_T11R0601_001
scrdef scr_seq_T11R0601_002
scrdef scr_seq_T11R0601_003
scrdef scr_seq_T11R0601_004
scrdef scr_seq_T11R0601_005
scrdef scr_seq_T11R0601_006
scrdef scr_seq_T11R0601_007
scrdef scr_seq_T11R0601_008
scrdef_end

scr_seq_T11R0601_006:
	scrcmd_582 MAP_T25, 1290, 209
	goto_if_set FLAG_RESTORED_POWER, _003F
	goto _0045

_003F:
	setvar VAR_UNK_411D, 0
_0045:
	setflag FLAG_UNK_2F7
	check_registered_phone_number PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_eq _007E
	get_phone_book_rematch PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _007E
	goto_if_set FLAG_TRADE_LT_SURGE_PIKACHU, _007E
	clearflag FLAG_UNK_2F7
_007E:
	end

scr_seq_T11R0601_005:
	goto_if_set FLAG_RESTORED_POWER, _008D
	end

_008D:
	move_person_facing obj_T11R0601_policeman, 12, 0, 7, DIR_EAST
	end

scr_seq_T11R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RESTORED_POWER, _00B9
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B9:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _00D7
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	goto _00E6

_00D7:
	npc_msg 7
	closemsg
	apply_movement obj_T11R0601_policeman, _00EC
	wait_movement
_00E6:
	releaseall
	end

	.align 4
_00EC:

	step 3, 1
	step_end
scr_seq_T11R0601_004:
	scrcmd_609
	lockall
	apply_movement obj_player, _017C
	wait_movement
	goto_if_set FLAG_UNK_123, _0158
	npc_msg 1
	closemsg
	setflag FLAG_UNK_123
_0116:
	wait 50, VAR_SPECIAL_x8004
	hasitem ITEM_PASS, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0163
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0184
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_0158:
	npc_msg 3
	closemsg
	goto _0116

_0163:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_411D, 1
	setvar VAR_UNK_411F, 1
	releaseall
	end

	.align 4
_017C:

	step 34, 1
	step_end
	.align 4
_0184:

	step 13, 2
	step_end
scr_seq_T11R0601_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _024F
	npc_msg 14
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _024F
	load_npc_trade 10
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _0242
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_LT_SURGE_PIKACHU
	npc_msg 16
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _022C
	apply_movement obj_T11R0601_gsleader9, _025C
	goto _0234

_022C:
	apply_movement obj_T11R0601_gsleader9, _0268
_0234:
	wait_movement
	hide_person obj_T11R0601_gsleader9
	setflag FLAG_UNK_2F7
	releaseall
	end

_0242:
	npc_trade_end
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_024F:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_025C:

	step 78, 5
	step 77, 10
	step_end
	.align 4
_0268:

	step 77, 10
	step_end
scr_seq_T11R0601_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RESTORED_POWER, _028E
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_028E:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11R0601_002:
	simple_npc_msg 10
	end

scr_seq_T11R0601_003:
	simple_npc_msg 11
	end

scr_seq_T11R0601_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
