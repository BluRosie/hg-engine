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

.include "armips/scr_seq/event_T27R0201.inc"


// text archive to grab from: 616.txt

.create "build/a012/2_926", 0


scrdef scr_seq_T27R0201_000
scrdef scr_seq_T27R0201_001
scrdef scr_seq_T27R0201_002
scrdef scr_seq_T27R0201_003
scrdef_end

scr_seq_T27R0201_003:
	goto_if_set FLAG_UNK_108, _001F
	end

_001F:
	move_person_facing obj_T27R0201_bozu, 16, 0, 8, DIR_WEST
	end

scr_seq_T27R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _00E8
	compare VAR_TEMP_x4002, 1
	goto_if_ge _00C9
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00D4
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0096
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _008B
	npc_msg 0
	goto _008E

_008B:
	npc_msg 1
_008E:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0096:
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _00B0
	npc_msg 2
	goto _00B3

_00B0:
	npc_msg 3
_00B3:
	closemsg
	apply_movement obj_T27R0201_bozu, _00F4
	wait_movement
	setvar VAR_TEMP_x4002, 1
	releaseall
	end

_00C9:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00D4:
	apply_movement obj_T27R0201_bozu, _0104
	wait_movement
	setvar VAR_TEMP_x4002, 1
	releaseall
	end

_00E8:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_00F4:

	step 12, 1
	step 15, 1
	step 2, 1
	step_end
	.align 4
_0104:

	step 13, 1
	step 15, 1
	step 2, 1
	step_end
scr_seq_T27R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _0162
	goto_if_set FLAG_UNK_103, _0157
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _014C
	npc_msg 6
	goto _014F

_014C:
	npc_msg 7
_014F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0157:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0162:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0201_002:
	simple_npc_msg 10
	end
	.align 4


.close
