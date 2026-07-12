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

.include "armips/scr_seq/event_T24R0801.inc"


// text archive to grab from: 580.txt

.create "build/a012/2_884", 0


scrdef scr_seq_T24R0801_000
scrdef_end

scr_seq_T24R0801_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _002B
	goto _0031

_002B:
	goto _0073

_0031:
	hasitem ITEM_CLEAR_BELL, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0061
	hasitem ITEM_RAINBOW_FEATHER, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _006A
	goto _00B5

_0061:
	npc_msg 3
	goto _00B8

_006A:
	npc_msg 1
	goto _00B8

_0073:
	hasitem ITEM_TIDAL_BELL, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _00A3
	hasitem ITEM_SILVER_FEATHER, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _00AC
	goto _00B5

_00A3:
	npc_msg 4
	goto _00B8

_00AC:
	npc_msg 2
	goto _00B8

_00B5:
	npc_msg 0
_00B8:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
