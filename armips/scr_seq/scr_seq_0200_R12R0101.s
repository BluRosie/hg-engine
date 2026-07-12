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

.include "armips/scr_seq/event_R12R0101.inc"


// text archive to grab from: 349.txt

.create "build/a012/2_200", 0


scrdef scr_seq_R12R0101_000
scrdef_end

scr_seq_R12R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_SUPER_ROD, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _004C
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0057
	npc_msg 1
	giveitem_no_check ITEM_SUPER_ROD, 1
_004C:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0057:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
