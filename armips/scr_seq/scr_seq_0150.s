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


// text archive to grab from: 023.txt

.create "build/a012/2_150", 0


scrdef scr_seq_0150_000
scrdef_end

scr_seq_0150_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	closemsg
	hasitem ITEM_APRICORN_BOX, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0099
	anim_apricorn_tree VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0088
	apricorn_tree_get_apricorn VAR_SPECIAL_x8000
	setvar VAR_SPECIAL_x8005, 1
	buffer_players_name 0
	buffer_apricorn_name 1, VAR_SPECIAL_x8000
	npc_msg 1
	closemsg
	play_fanfare SEQ_ME_ITEM
	npc_msg 3
	wait_fanfare
	give_apricorn_from_tree VAR_SPECIAL_x8000, 1, VAR_SPECIAL_RESULT
	add_special_game_stat 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _007D
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_007D:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0088:
	wait 15, VAR_SPECIAL_RESULT
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0099:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
