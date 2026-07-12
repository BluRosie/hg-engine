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

.include "armips/scr_seq/event_T27R0801.inc"


// text archive to grab from: 619.txt

.create "build/a012/2_929", 0


scrdef scr_seq_T27R0801_000
scrdef scr_seq_T27R0801_001
scrdef_end

scr_seq_T27R0801_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_DOWSING_MACHINE, _0078
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0044
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _008D
	end

_0044:
	npc_msg 1
	wait_button
	goto_if_no_item_space ITEM_DOWSING_MACHINE, 1, _0083
	callstd std_give_item_verbose
	setflag FLAG_GOT_DOWSING_MACHINE
	goto _0078

_0078:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0083:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_008D:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0801_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00C7
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F9
	end

_00C7:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00EE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F9
	end

_00EE:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F9:
	closemsg
	releaseall
	end
	.align 4


.close
