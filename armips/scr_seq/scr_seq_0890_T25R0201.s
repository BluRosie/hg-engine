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

.include "armips/scr_seq/event_T25R0201.inc"


// text archive to grab from: 584.txt

.create "build/a012/2_890", 0


scrdef scr_seq_T25R0201_000
scrdef scr_seq_T25R0201_001
scrdef_end

scr_seq_T25R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_089, _0081
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0042
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _008C
	end

_0042:
	npc_msg 1
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0065
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _008C
	end

_0065:
	giveitem_no_check ITEM_BIKE, 1
	setflag FLAG_UNK_089
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0081:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_008C:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

scr_seq_T25R0201_001:
	simple_npc_msg 5
	end
	.align 4


.close
