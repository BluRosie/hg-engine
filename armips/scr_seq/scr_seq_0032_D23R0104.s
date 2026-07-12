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

.include "armips/scr_seq/event_D23R0104.inc"


// text archive to grab from: 068.txt

.create "build/a012/2_032", 0


scrdef scr_seq_D23R0104_000
scrdef scr_seq_D23R0104_001
scrdef scr_seq_D23R0104_002
scrdef scr_seq_D23R0104_003
scrdef scr_seq_D23R0104_004
scrdef scr_seq_D23R0104_005
scrdef scr_seq_D23R0104_006
scrdef scr_seq_D23R0104_007
scrdef scr_seq_D23R0104_008
scrdef_end

scr_seq_D23R0104_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0045
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _0056

_0045:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _0056
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
_0056:
	end

scr_seq_D23R0104_008:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0089
	move_person_facing obj_D23R0104_kurumi, 18, 1, 12, DIR_EAST
	move_person_facing obj_D23R0104_follower_mon_static_meowth, 19, 1, 12, DIR_SOUTH
	move_person_facing obj_D23R0104_gsman2, 20, 1, 12, DIR_SOUTH
_0089:
	end

scr_seq_D23R0104_001:
	simple_npc_msg 8
	end

scr_seq_D23R0104_002:
	simple_npc_msg 9
	end

scr_seq_D23R0104_003:
	simple_npc_msg 0
	end

scr_seq_D23R0104_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _00E2
	npc_msg 1
	goto _00E8

_00E2:
	goto _00F0

_00E8:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F0:
	goto_if_set FLAG_GOT_BRIGHTPOWDER_FROM_MARY, _013D
	npc_msg 2
	goto_if_no_item_space ITEM_BRIGHT_POWDER, 1, _0132
	callstd std_give_item_verbose
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_BRIGHTPOWDER_FROM_MARY
	end

_0132:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013D:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D23R0104_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEOWTH, 0
	npc_msg 7
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D23R0104_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0181
	npc_msg 10
	goto _0184

_0181:
	npc_msg 11
_0184:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D23R0104_007:
	goto_if_defeated TRAINER_TEAM_ROCKET_F_GRUNT_4, _01F6
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _01BF
	apply_movement obj_D23R0104_rocketw, _0210
	goto _01C7

_01BF:
	apply_movement obj_D23R0104_rocketw, _021C
_01C7:
	wait_movement
	npc_msg 13
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_F_GRUNT_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0209
	settrainerflag TRAINER_TEAM_ROCKET_F_GRUNT_4
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01F6:
	simple_npc_msg 14
	end

_0209:
	white_out
	releaseall
	end

	.align 4
_0210:

	step 75, 1
	step 35, 1
	step_end
	.align 4
_021C:

	step 75, 1
	step 33, 1
	step_end
	.align 4


.close
