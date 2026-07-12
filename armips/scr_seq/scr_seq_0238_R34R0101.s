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

.include "armips/scr_seq/event_R34R0101.inc"


// text archive to grab from: 385.txt

.create "build/a012/2_238", 0


scrdef scr_seq_R34R0101_000
scrdef scr_seq_R34R0101_001
scrdef_end

scr_seq_R34R0101_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_R34R0101_var_1, _0140
	apply_movement obj_R34R0101_follower_mon_static_marill, _014C
	apply_movement obj_player, _0158
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 0, 10
	closemsg
	gender_msgbox 1, 11
	closemsg
	apply_movement obj_R34R0101_var_1, _0138
	wait_movement
	gender_msgbox 2, 12
	closemsg
	gender_msgbox 3, 13
	closemsg
	apply_movement obj_R34R0101_var_1, _0164
	wait_movement
	gender_msgbox 4, 14
	closemsg
	apply_movement obj_R34R0101_var_1, _016C
	apply_movement obj_R34R0101_follower_mon_static_marill, _0184
	wait_movement
	gender_msgbox 5, 15
	closemsg
	apply_movement obj_R34R0101_var_1, _0198
	apply_movement obj_R34R0101_follower_mon_static_marill, _01A8
	wait_movement
	apply_movement obj_player, _0190
	wait_movement
	gender_msgbox 6, 16
	closemsg
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _00C6
	register_gear_number PHONE_CONTACT_LYRA
	goto _00CA

_00C6:
	register_gear_number PHONE_CONTACT_ETHAN
_00CA:
	buffer_players_name 0
	gender_msgbox 7, 17
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	apply_movement obj_R34R0101_var_1, _01BC
	wait_movement
	gender_msgbox 8, 18
	closemsg
	apply_movement obj_R34R0101_var_1, _01C4
	apply_movement obj_R34R0101_follower_mon_static_marill, _01CC
	wait_movement
	gender_msgbox 9, 19
	closemsg
	apply_movement obj_R34R0101_var_1, _01D4
	apply_movement obj_R34R0101_follower_mon_static_marill, _01E8
	apply_movement obj_player, _0204
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_R34R0101_var_1
	hide_person obj_R34R0101_follower_mon_static_marill
	wait_se SEQ_SE_DP_KAIDAN2
	setvar VAR_UNK_408E, 2
	setflag FLAG_UNK_22D
	releaseall
	end

	.align 4
_0138:

	step 75, 1
	step_end
	.align 4
_0140:

	step 63, 1
	step 12, 3
	step_end
	.align 4
_014C:

	step 16, 3
	step 48, 2
	step_end
	.align 4
_0158:

	step 63, 1
	step 12, 3
	step_end
	.align 4
_0164:

	step 33, 1
	step_end
	.align 4
_016C:

	step 14, 1
	step 13, 3
	step 63, 1
	step 75, 1
	step 32, 1
	step_end
	.align 4
_0184:

	step 14, 2
	step 13, 2
	step_end
	.align 4
_0190:

	step 34, 1
	step_end
	.align 4
_0198:

	step 63, 1
	step 12, 1
	step 35, 1
	step_end
	.align 4
_01A8:

	step 35, 1
	step 71, 1
	step 54, 1
	step 72, 1
	step_end
	.align 4
_01BC:

	step 35, 1
	step_end
	.align 4
_01C4:

	step 32, 1
	step_end
	.align 4
_01CC:

	step 32, 1
	step_end
	.align 4
_01D4:

	step 13, 2
	step 15, 1
	step 13, 1
	step 69, 1
	step_end
	.align 4
_01E8:

	step 63, 1
	step 48, 2
	step 63, 1
	step 17, 3
	step 19, 2
	step 37, 1
	step_end
	.align 4
_0204:

	step 63, 2
	step 33, 1
	step_end
scr_seq_R34R0101_000:
	update_day_care_mon_objects
	end
	.align 4


.close
