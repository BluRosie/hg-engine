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

.include "armips/scr_seq/event_R16R0101.inc"


// text archive to grab from: 355.txt

.create "build/a012/2_206", 0


scrdef scr_seq_R16R0101_000
scrdef scr_seq_R16R0101_001
scrdef_end

scr_seq_R16R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_ABA, _0068
	scrcmd_540 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _007E
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0073
	scrcmd_538 VAR_SPECIAL_RESULT, 0
	compare VAR_SPECIAL_RESULT, 65535
	goto_if_eq _007E
	setflag FLAG_UNK_ABA
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0068:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0073:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_007E:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R16R0101_000:
	simple_npc_msg 0
	end
	.align 4


.close
