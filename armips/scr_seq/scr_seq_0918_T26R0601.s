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

.include "armips/scr_seq/event_T26R0601.inc"


// text archive to grab from: 610.txt

.create "build/a012/2_918", 0


scrdef scr_seq_T26R0601_000
scrdef_end

scr_seq_T26R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_GOOD_ROD, _008E
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0040
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0079
	end

_0040:
	goto_if_no_item_space ITEM_GOOD_ROD, 1, _0084
	npc_msg 1
	wait_button_or_walk_away
	callstd std_give_item_verbose
	setflag FLAG_GOT_GOOD_ROD
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0079:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0084:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_008E:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
