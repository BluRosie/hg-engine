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

.include "armips/scr_seq/event_R05R0202.inc"


// text archive to grab from: 331.txt

.create "build/a012/2_181", 0


scrdef scr_seq_R05R0202_000
scrdef scr_seq_R05R0202_001
scrdef_end

scr_seq_R05R0202_001:
	setvar VAR_TEMP_x4000, 0
	end

scr_seq_R05R0202_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00BE
	goto_if_set FLAG_UNK_164, _00D8
	compare VAR_TEMP_x4000, 1
	goto_if_eq _006E
	hasitem ITEM_RAGE_CANDY_BAR, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _005F
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_005F:
	npc_msg 1
	closemsg
	apply_movement obj_R05R0202_gsmiddleman1, _0100
	wait_movement
_006E:
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00E3
	hasspaceforitem ITEM_TM064, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00F4
	buffer_players_name 0
	npc_msg 3
	takeitem ITEM_RAGE_CANDY_BAR, 1, VAR_SPECIAL_RESULT
	npc_msg 4
	closemsg
	setvar VAR_SPECIAL_x8004, 391
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
_00BE:
	npc_msg 5
	closemsg
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	setvar VAR_TEMP_x4001, 1
	setflag FLAG_UNK_164
	releaseall
	end

_00D8:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E3:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_TEMP_x4000, 1
	end

_00F4:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0100:

	step 75, 1
	step_end
	.align 4


.close
