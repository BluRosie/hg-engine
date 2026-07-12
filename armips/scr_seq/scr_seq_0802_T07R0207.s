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

.include "armips/scr_seq/event_T07R0207.inc"


// text archive to grab from: 507.txt

.create "build/a012/2_802", 0


scrdef scr_seq_T07R0207_000
scrdef_end

scr_seq_T07R0207_000:
	scrcmd_609
	lockall
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0058
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _002A
	end

_002A:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0170
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_partner_poke, _017C
	wait_movement
	goto _0062

_0058:
	apply_movement obj_player, _0170
	wait_movement
_0062:
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	switch VAR_ELEVATOR_LAST_FLOOR
	case 1, _0088
	case 3, _0098
	end

_0088:
	buffer_dept_store_floor_no 0, 2
	call _00A9
	goto _00B3

_0098:
	buffer_int 0, 0
	call _00A9
	goto _00EE

_00A9:
	elevator_cur_floor_box 20, 1, VAR_ELEVATOR_LAST_FLOOR, VAR_ELEVATOR_LAST_FLOOR
	return

_00B3:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0150
	npc_msg 3
	closemsg
	setvar VAR_ELEVATOR_LAST_FLOOR, 65535
	set_dynamic_warp MAP_T07R0204, 2, 5, 3, 1
	setvar VAR_SPECIAL_x8004, 0
	goto _0129

_00EE:
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0150
	npc_msg 4
	closemsg
	setvar VAR_ELEVATOR_LAST_FLOOR, 65535
	set_dynamic_warp MAP_T07R0202, 1, 5, 3, 1
	setvar VAR_SPECIAL_x8004, 1
	goto _0129

_0129:
	wait_se SEQ_SE_DP_SELECT
	elevator_anim VAR_SPECIAL_x8004, 2
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_ne _014D
	npc_msg 6
	goto _0150

_014D:
	npc_msg 5
_0150:
	setvar VAR_ELEVATOR_LAST_FLOOR, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4125, 1
	releaseall
	end

	.align 4
_0170:

	step 12, 2
	step 33, 1
	step_end
	.align 4
_017C:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4


.close
