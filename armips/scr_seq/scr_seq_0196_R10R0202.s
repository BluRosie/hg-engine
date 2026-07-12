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

.include "armips/scr_seq/event_R10R0202.inc"


// text archive to grab from: 345.txt

.create "build/a012/2_196", 0


scrdef scr_seq_R10R0202_000
scrdef scr_seq_R10R0202_001
scrdef scr_seq_R10R0202_002
scrdef scr_seq_R10R0202_003
scrdef scr_seq_R10R0202_004
scrdef scr_seq_R10R0202_005
scrdef scr_seq_R10R0202_006
scrdef scr_seq_R10R0202_007
scrdef scr_seq_R10R0202_008
scrdef scr_seq_R10R0202_009
scrdef_end

scr_seq_R10R0202_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_MACHINE_PART, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0071
	goto_if_set FLAG_GOT_POWER_PLANT_MANAGERS_STORY, _005C
	setflag FLAG_GOT_POWER_PLANT_MANAGERS_STORY
	setvar VAR_SCENE_ROUTE_10_POWER_PLANT, 1
_005C:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	apply_movement obj_R10R0202_policeman, _0100
	wait_movement
	releaseall
	end

_0071:
	npc_msg 14
	closemsg
	takeitem ITEM_MACHINE_PART, 1, VAR_SPECIAL_RESULT
	apply_movement obj_R10R0202_gsbigman, _0108
	wait_movement
	wait_se SEQ_SE_GS_W012
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0201, 0, 13, 7, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 15
	apply_movement obj_R10R0202_gsbigman, _0120
	wait_movement
	setflag FLAG_RESTORED_POWER
	npc_msg 16
	giveitem_no_check ITEM_TM057, 1
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_258
	clearflag FLAG_HIDE_LAVENDER_RADIO_TOWER_DIRECTOR
	setflag FLAG_UNK_2FB
	clearflag FLAG_HIDE_VERMILION_FAN_CLUB_LOST_ITEM
	setvar VAR_UNK_40FF, 1
	releaseall
	end

	.align 4
_0100:

	step 1, 1
	step_end
	.align 4
_0108:

	step 34, 1
	step 61, 1
	step 34, 1
	step 61, 1
	step 34, 1
	step_end
	.align 4
_0120:

	step 0, 1
	step_end
scr_seq_R10R0202_007:
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_PHONE0
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R10R0202_policeman, _0198
	apply_movement obj_player, _01B4
	apply_movement obj_R10R0202_gsassistantm, _01CC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 1
	closemsg
	apply_movement obj_R10R0202_policeman, _01D8
	apply_movement obj_player, _01FC
	wait_movement
	npc_msg 2
	closemsg
	apply_movement obj_R10R0202_policeman, _01E8
	wait_movement
	clearflag FLAG_HIDE_CERULEAN_GYM_ROCKET
	setvar VAR_SCENE_ROUTE_10_POWER_PLANT, 0
	setvar VAR_UNK_411C, 1
	releaseall
	end

	.align 4
_0198:

	step 75, 1
	step 13, 1
	step 15, 2
	step 12, 3
	step 15, 5
	step 12, 2
	step_end
	.align 4
_01B4:

	step 66, 2
	step 12, 1
	step 1, 1
	step 65, 1
	step 3, 1
	step_end
	.align 4
_01CC:

	step 66, 4
	step 1, 1
	step_end
	.align 4
_01D8:

	step 13, 2
	step 14, 5
	step 0, 1
	step_end
	.align 4
_01E8:

	step 13, 3
	step 14, 2
	step 12, 1
	step 33, 1
	step_end
	.align 4
_01FC:

	step 63, 7
	step 1, 1
	step_end
scr_seq_R10R0202_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_POWER_PLANT_MANAGERS_STORY, _0226
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0226:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10R0202_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_POWER_PLANT_DUGTRIO_MAGNETON, _02D8
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02CD
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _02CD
	load_npc_trade 8
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _02C0
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_POWER_PLANT_DUGTRIO_MAGNETON
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02C0:
	npc_trade_end
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02CD:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D8:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10R0202_003:
	simple_npc_msg 6
	end

scr_seq_R10R0202_001:
	simple_npc_msg 4
	end

scr_seq_R10R0202_002:
	simple_npc_msg 5
	end

scr_seq_R10R0202_004:
	simple_npc_msg 7
	end

scr_seq_R10R0202_008:
	simple_npc_msg 18
	end

scr_seq_R10R0202_009:
	simple_npc_msg 19
	end
	.align 4


.close
