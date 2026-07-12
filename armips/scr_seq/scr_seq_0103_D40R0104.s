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

.include "armips/scr_seq/event_D40R0104.inc"


// text archive to grab from: 124.txt

.create "build/a012/2_103", 0


scrdef scr_seq_D40R0104_000
scrdef scr_seq_D40R0104_001
scrdef scr_seq_D40R0104_002
scrdef scr_seq_D40R0104_003
scrdef_end

scr_seq_D40R0104_003:
	setvar VAR_TEMP_x4003, 111
	end

scr_seq_D40R0104_001:
	compare VAR_TEMP_x4003, 111
	goto_if_ne _0032
	goto_if_set FLAG_UNK_106, _003A
_0032:
	setvar VAR_TEMP_x4003, 0
	end

_003A:
	move_person_facing obj_D40R0104_bozu, 34, 1, 29, DIR_EAST
	setvar VAR_TEMP_x4003, 0
	end

scr_seq_D40R0104_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_CAUGHT_LUGIA, _010D
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _0093
	goto_if_set FLAG_UNK_106, _00C5
	goto_if_set FLAG_UNK_094, _00B4
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0093:
	goto_if_set FLAG_UNK_106, _00C5
	goto_if_set FLAG_UNK_094, _00B4
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B4:
	npc_msg 2
	closemsg
	show_legendary_wing 1
	releaseall
	setflag FLAG_UNK_106
	end

_00C5:
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 8
	goto_if_ne _00EC
	goto_if_set FLAG_UNK_109, _00F7
	goto_if_set FLAG_UNK_105, _0102
_00EC:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F7:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0102:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_010D:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D40R0104_002:
	wait 60, VAR_SPECIAL_RESULT
	npc_msg 3
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0142
	apply_movement obj_D40R0104_bozu, _0168
	goto _014A

_0142:
	apply_movement obj_D40R0104_bozu, _0154
_014A:
	wait_movement
	wait 30, VAR_SPECIAL_RESULT
	end

	.align 4
_0154:

	step 1, 1
	step 71, 1
	step 12, 1
	step 72, 1
	step_end
	.align 4
_0168:

	step 3, 1
	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.align 4


.close
