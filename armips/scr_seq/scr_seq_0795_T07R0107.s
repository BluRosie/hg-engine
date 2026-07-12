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

.include "armips/scr_seq/event_T07R0107.inc"


// text archive to grab from: 500.txt

.create "build/a012/2_795", 0


scrdef scr_seq_T07R0107_000
scrdef_end

scr_seq_T07R0107_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	switch VAR_ELEVATOR_LAST_FLOOR
	case 5, _0068
	case 4, _0072
	case 3, _007C
	case 2, _0086
	case 1, _0090
	case 0, _009A
	end

_0068:
	buffer_dept_store_floor_no 0, 6
	goto _00A4

_0072:
	buffer_dept_store_floor_no 0, 5
	goto _00A4

_007C:
	buffer_dept_store_floor_no 0, 4
	goto _00A4

_0086:
	buffer_dept_store_floor_no 0, 3
	goto _00A4

_0090:
	buffer_dept_store_floor_no 0, 2
	goto _00A4

_009A:
	buffer_dept_store_floor_no 0, 1
	goto _00A4

_00A4:
	elevator_cur_floor_box 20, 1, VAR_ELEVATOR_LAST_FLOOR, VAR_ELEVATOR_LAST_FLOOR
	npc_msg 0
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 121, 255, 6
	menu_item_add 120, 255, 0
	menu_item_add 119, 255, 1
	menu_item_add 118, 255, 2
	menu_item_add 117, 255, 3
	menu_item_add 116, 255, 4
	menu_item_add 126, 255, 7
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 6, _052D
	case 0, _0467
	case 1, _03A1
	case 2, _02DB
	case 3, _0215
	case 4, _014F
	goto _06DE

_014F:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	set_dynamic_warp MAP_T07R0101, 2, 5, 3, 1
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	goto_if_eq _06C7
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	call_if_gt _05FE
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	call_if_lt _05F3
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_ne _01A5
	setvar VAR_SPECIAL_x8005, 1
	goto _0203

_01A5:
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	goto_if_ne _01BE
	setvar VAR_SPECIAL_x8005, 2
	goto _0203

_01BE:
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	goto_if_ne _01D7
	setvar VAR_SPECIAL_x8005, 3
	goto _0203

_01D7:
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	goto_if_ne _01F0
	setvar VAR_SPECIAL_x8005, 4
	goto _0203

_01F0:
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	goto_if_ne _0203
	setvar VAR_SPECIAL_x8005, 5
_0203:
	call _0609
	setvar VAR_ELEVATOR_LAST_FLOOR, 0
	goto _0627

_0215:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	set_dynamic_warp MAP_T07R0102, 2, 19, 3, 1
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_eq _06C7
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	call_if_gt _05FE
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	call_if_lt _05F3
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	goto_if_ne _026B
	setvar VAR_SPECIAL_x8005, 1
	goto _02C9

_026B:
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	goto_if_ne _0284
	setvar VAR_SPECIAL_x8005, 1
	goto _02C9

_0284:
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	goto_if_ne _029D
	setvar VAR_SPECIAL_x8005, 2
	goto _02C9

_029D:
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	goto_if_ne _02B6
	setvar VAR_SPECIAL_x8005, 3
	goto _02C9

_02B6:
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	goto_if_ne _02C9
	setvar VAR_SPECIAL_x8005, 4
_02C9:
	call _0609
	setvar VAR_ELEVATOR_LAST_FLOOR, 1
	goto _0627

_02DB:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	set_dynamic_warp MAP_T07R0103, 2, 19, 3, 1
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	goto_if_eq _06C7
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	call_if_gt _05FE
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	call_if_lt _05F3
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	goto_if_ne _0331
	setvar VAR_SPECIAL_x8005, 2
	goto _038F

_0331:
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_ne _034A
	setvar VAR_SPECIAL_x8005, 1
	goto _038F

_034A:
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	goto_if_ne _0363
	setvar VAR_SPECIAL_x8005, 1
	goto _038F

_0363:
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	goto_if_ne _037C
	setvar VAR_SPECIAL_x8005, 2
	goto _038F

_037C:
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	goto_if_ne _038F
	setvar VAR_SPECIAL_x8005, 3
_038F:
	call _0609
	setvar VAR_ELEVATOR_LAST_FLOOR, 2
	goto _0627

_03A1:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	set_dynamic_warp MAP_T07R0104, 2, 19, 3, 1
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	goto_if_eq _06C7
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	call_if_gt _05FE
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	call_if_lt _05F3
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	goto_if_ne _03F7
	setvar VAR_SPECIAL_x8005, 3
	goto _0455

_03F7:
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_ne _0410
	setvar VAR_SPECIAL_x8005, 2
	goto _0455

_0410:
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	goto_if_ne _0429
	setvar VAR_SPECIAL_x8005, 1
	goto _0455

_0429:
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	goto_if_ne _0442
	setvar VAR_SPECIAL_x8005, 1
	goto _0455

_0442:
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	goto_if_ne _0455
	setvar VAR_SPECIAL_x8005, 2
_0455:
	call _0609
	setvar VAR_ELEVATOR_LAST_FLOOR, 3
	goto _0627

_0467:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	set_dynamic_warp MAP_T07R0105, 2, 19, 3, 1
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	goto_if_eq _06C7
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	call_if_gt _05FE
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	call_if_lt _05F3
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	goto_if_ne _04BD
	setvar VAR_SPECIAL_x8005, 4
	goto _051B

_04BD:
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_ne _04D6
	setvar VAR_SPECIAL_x8005, 3
	goto _051B

_04D6:
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	goto_if_ne _04EF
	setvar VAR_SPECIAL_x8005, 2
	goto _051B

_04EF:
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	goto_if_ne _0508
	setvar VAR_SPECIAL_x8005, 1
	goto _051B

_0508:
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	goto_if_ne _051B
	setvar VAR_SPECIAL_x8005, 1
_051B:
	call _0609
	setvar VAR_ELEVATOR_LAST_FLOOR, 4
	goto _0627

_052D:
	wait 1, VAR_SPECIAL_RESULT
	get_dynamic_warp_floor_no VAR_ELEVATOR_LAST_FLOOR
	set_dynamic_warp MAP_T07R0106, 1, 19, 3, 1
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	goto_if_eq _06C7
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	call_if_gt _05FE
	compare VAR_ELEVATOR_LAST_FLOOR, 5
	call_if_lt _05F3
	compare VAR_ELEVATOR_LAST_FLOOR, 0
	goto_if_ne _0583
	setvar VAR_SPECIAL_x8005, 5
	goto _05E1

_0583:
	compare VAR_ELEVATOR_LAST_FLOOR, 1
	goto_if_ne _059C
	setvar VAR_SPECIAL_x8005, 4
	goto _05E1

_059C:
	compare VAR_ELEVATOR_LAST_FLOOR, 2
	goto_if_ne _05B5
	setvar VAR_SPECIAL_x8005, 3
	goto _05E1

_05B5:
	compare VAR_ELEVATOR_LAST_FLOOR, 3
	goto_if_ne _05CE
	setvar VAR_SPECIAL_x8005, 2
	goto _05E1

_05CE:
	compare VAR_ELEVATOR_LAST_FLOOR, 4
	goto_if_ne _05E1
	setvar VAR_SPECIAL_x8005, 1
_05E1:
	call _0609
	setvar VAR_ELEVATOR_LAST_FLOOR, 5
	goto _0627

_05F3:
	npc_msg 2
	setvar VAR_SPECIAL_x8004, 0
	return

_05FE:
	npc_msg 3
	setvar VAR_SPECIAL_x8004, 1
	return

_0609:
	setvar VAR_ELEVATOR_LAST_FLOOR, 65535
	closemsg
	apply_movement obj_T07R0107_gswoman6, _06F8
	wait_movement
	wait_se SEQ_SE_DP_SELECT
	elevator_anim VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	return

_0627:
	switch VAR_ELEVATOR_LAST_FLOOR
	case 5, _067D
	case 4, _0688
	case 3, _0693
	case 2, _069E
	case 1, _06A9
	case 0, _06B4
	end

_067D:
	npc_msg 10
	goto _06BF

_0688:
	npc_msg 9
	goto _06BF

_0693:
	npc_msg 8
	goto _06BF

_069E:
	npc_msg 7
	goto _06BF

_06A9:
	npc_msg 6
	goto _06BF

_06B4:
	npc_msg 5
	goto _06BF

_06BF:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06C7:
	setvar VAR_ELEVATOR_LAST_FLOOR, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06DE:
	setvar VAR_ELEVATOR_LAST_FLOOR, 65535
	wait 1, VAR_SPECIAL_RESULT
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_06F8:

	step 33, 1
	step_end
	.align 4


.close
