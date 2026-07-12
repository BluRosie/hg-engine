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

.include "armips/scr_seq/event_T22R0301.inc"


// text archive to grab from: 560.txt

.create "build/a012/2_862", 0


scrdef scr_seq_T22R0301_000
scrdef scr_seq_T22R0301_001
scrdef scr_seq_T22R0301_002
scrdef scr_seq_T22R0301_003
scrdef scr_seq_T22R0301_004
scrdef scr_seq_T22R0301_005
scrdef scr_seq_T22R0301_006
scrdef scr_seq_T22R0301_007
scrdef_end

scr_seq_T22R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0049
	apply_movement obj_T22R0301_gsbigman, _0164
	goto _0087

_0049:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0064
	apply_movement obj_T22R0301_gsbigman, _0188
	goto _0087

_0064:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _007F
	apply_movement obj_T22R0301_gsbigman, _01AC
	goto _0087

_007F:
	apply_movement obj_T22R0301_gsbigman, _01D0
_0087:
	wait_movement
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00B0
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00D7
	end

_00B0:
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00D7
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0157
	end

_00D7:
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00FE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0125
	end

_00FE:
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0125
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0157
	end

_0125:
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _014C
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0157
	end

_014C:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0157:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0164:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end
	.align 4
_0188:

	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4
_01AC:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_01D0:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end
scr_seq_T22R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	goto _0207

_0207:
	npc_msg 13
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 24, 255, 1
	menu_item_add 25, 255, 2
	menu_item_add 26, 255, 3
	menu_item_add 27, 255, 4
	menu_item_add 28, 255, 5
	menu_item_add 29, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0264
	npc_msg 14
	goto _0207

_0264:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0280
	npc_msg 15
	goto _0207

_0280:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _029C
	npc_msg 16
	goto _0207

_029C:
	compare VAR_SPECIAL_RESULT, 4
	goto_if_ne _02B8
	npc_msg 17
	goto _0207

_02B8:
	compare VAR_SPECIAL_RESULT, 5
	goto_if_ne _02D4
	npc_msg 18
	goto _0207

_02D4:
	closemsg
	releaseall
	end

scr_seq_T22R0301_003:
	simple_npc_msg 11
	end

scr_seq_T22R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 19
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0353
	npc_msg 20
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0353
	npc_msg 21
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0353
	npc_msg 22
	closemsg
	touchscreen_menu_show
	apply_movement obj_T22R0301_gsboy1, _035C
	wait_movement
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0353:
	closemsg
	touchscreen_menu_show
	releaseall
	end

	.align 4
_035C:

	step 32, 1
	step_end
scr_seq_T22R0301_004:
	simple_npc_msg 7
	end

scr_seq_T22R0301_005:
	simple_npc_msg 10
	end

scr_seq_T22R0301_006:
	simple_npc_msg 9
	end

scr_seq_T22R0301_007:
	simple_npc_msg 8
	end
	.align 4


.close
