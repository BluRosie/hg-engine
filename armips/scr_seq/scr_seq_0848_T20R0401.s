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

.include "armips/scr_seq/event_T20R0401.inc"


// text archive to grab from: 548.txt

.create "build/a012/2_848", 0


scrdef scr_seq_T20R0401_000
scrdef_end

scr_seq_T20R0401_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND, _0035
	compare VAR_SCENE_ELMS_LAB, 1
	goto_if_ge _0044
	buffer_players_name 0
	gender_msgbox 0, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0035:
	buffer_players_name 0
	gender_msgbox 2, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0044:
	buffer_players_name 0
	gender_msgbox 4, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
