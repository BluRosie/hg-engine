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

.include "armips/scr_seq/event_T28.inc"


// text archive to grab from: 620.txt

.create "build/a012/2_930", 0


scrdef scr_seq_T28_000
scrdef scr_seq_T28_001
scrdef scr_seq_T28_002
scrdef scr_seq_T28_003
scrdef scr_seq_T28_004
scrdef scr_seq_T28_005
scrdef scr_seq_T28_006
scrdef scr_seq_T28_007
scrdef scr_seq_T28_008
scrdef_end

scr_seq_T28_005:
	setvar VAR_SCENE_ROCKET_TAKEOVER, 2
	setflag FLAG_UNK_0C5
	setflag FLAG_ROCKET_TAKEOVER_ACTIVE
	compare VAR_UNK_40F8, 0
	goto_if_ne _0047
	setvar VAR_UNK_40F8, 2
_0047:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	end

scr_seq_T28_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_eq _0117
	goto_if_set FLAG_GOT_RAGECANDYBAR, _010C
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0101
_009D:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 200
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00EC
	goto_if_no_item_space ITEM_RAGE_CANDY_BAR, 1, _00F7
	callstd std_give_item_verbose
	submoneyimmediate 200
	npc_msg 5
	wait_button_or_walk_away
	setflag FLAG_GOT_RAGECANDYBAR
	goto _014C

_00EC:
	npc_msg 7
	wait_button_or_walk_away
	goto _014C

_00F7:
	callstd std_bag_is_full
	goto _014C

_0101:
	npc_msg 9
	wait_button_or_walk_away
	goto _014C

_010C:
	npc_msg 1
	wait_button_or_walk_away
	goto _014C

_0117:
	goto_if_set FLAG_GOT_RAGECANDYBAR, _0147
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _009D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0101
_0147:
	npc_msg 4
	wait_button_or_walk_away
_014C:
	closemsg
	releaseall
	end

scr_seq_T28_001:
	scrcmd_609
	lockall
	apply_movement obj_T28_gsmiddleman1, _0278
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 176
	goto_if_ne _0193
	apply_movement obj_T28_gsmiddleman1, _0284
	apply_movement obj_player, _0294
	goto _01A3

_0193:
	apply_movement obj_T28_gsmiddleman1, _02A4
	apply_movement obj_player, _02B4
_01A3:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto_if_set FLAG_GOT_RAGECANDYBAR, _026D
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01DF
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0257
_01DF:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 300
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0262
	goto_if_no_item_space ITEM_RAGE_CANDY_BAR, 1, _00F7
	callstd std_give_item_verbose
	submoneyimmediate 300
	npc_msg 6
	closemsg
	setflag FLAG_GOT_RAGECANDYBAR
_0228:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 176
	goto_if_ne _0249
	apply_movement obj_T28_gsmiddleman1, _02C4
	goto _0251

_0249:
	apply_movement obj_T28_gsmiddleman1, _02D0
_0251:
	wait_movement
	releaseall
	end

_0257:
	npc_msg 10
	closemsg
	goto _0228

_0262:
	npc_msg 8
	closemsg
	goto _0228

_026D:
	npc_msg 2
	closemsg
	goto _0228

	.align 4
_0278:

	step 1, 1
	step 75, 1
	step_end
	.align 4
_0284:

	step 19, 1
	step 17, 1
	step 18, 1
	step_end
	.align 4
_0294:

	step 62, 2
	step 18, 1
	step 3, 1
	step_end
	.align 4
_02A4:

	step 19, 1
	step 17, 2
	step 18, 1
	step_end
	.align 4
_02B4:

	step 62, 3
	step 18, 1
	step 3, 1
	step_end
	.align 4
_02C4:

	step 12, 1
	step 1, 1
	step_end
	.align 4
_02D0:

	step 12, 2
	step 1, 1
	step_end
scr_seq_T28_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_RED_SCALE, _02FA
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02FA:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T28_003:
	simple_npc_msg 16
	end

scr_seq_T28_004:
	simple_npc_msg 13
	end

scr_seq_T28_006:
	direction_signpost 17, 0, 19, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T28_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 18, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T28_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 19, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
