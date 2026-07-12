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

.include "armips/scr_seq/event_T10R0401.inc"


// text archive to grab from: 525.txt

.create "build/a012/2_822", 0


scrdef scr_seq_T10R0401_000
scrdef scr_seq_T10R0401_001
scrdef scr_seq_T10R0401_002
scrdef_end

scr_seq_T10R0401_002:
	goto_if_set FLAG_DEFEATED_BRUNO, _0023
	make_object_visible obj_T10R0401_leag_door2_2
	make_object_visible obj_T10R0401_leag_door2_3
	end

_0023:
	end

scr_seq_T10R0401_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0060
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_BRUNOS_ROOM_RETREAT
	show_person obj_T10R0401_babyboy1_11
	setvar VAR_TEMP_x4001, 1
	releaseall
	end

	.align 4
_0060:

	step 12, 6
	step_end
scr_seq_T10R0401_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_DEFEATED_BRUNO, _00D4
	buffer_players_name 0
	npc_msg 0
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _009E
	trainer_battle TRAINER_ELITE_FOUR_BRUNO_BRUNO_2, 0, 0, 0
	goto _00A6

_009E:
	trainer_battle TRAINER_ELITE_FOUR_BRUNO_BRUNO, 0, 0, 0
_00A6:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00DF
	setflag FLAG_DEFEATED_BRUNO
	npc_msg 1
	closemsg
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person obj_T10R0401_leag_door2
	hide_person obj_T10R0401_leag_door2_2
	hide_person obj_T10R0401_leag_door2_3
	releaseall
	end

_00D4:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00DF:
	white_out
	releaseall
	end
	.align 4


.close
