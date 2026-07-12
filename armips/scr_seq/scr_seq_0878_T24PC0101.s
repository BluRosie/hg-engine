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

.include "armips/scr_seq/event_T24PC0101.inc"


// text archive to grab from: 575.txt

.create "build/a012/2_878", 0


scrdef scr_seq_T24PC0101_000
scrdef scr_seq_T24PC0101_001
scrdef scr_seq_T24PC0101_002
scrdef scr_seq_T24PC0101_003
scrdef_end

scr_seq_T24PC0101_000:
	setvar VAR_SPECIAL_x8007, 3
	callstd std_nurse_joy
	end

scr_seq_T24PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T24PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 540
	goto_if_ne _0056
	goto _005C

_0056:
	goto _00E4

_005C:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0079
	goto _007F

_0079:
	goto _00E4

_007F:
	npc_msg 4
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	give_mon SPECIES_TENTACOOL, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00BC
	touchscreen_menu_show
	closemsg
	goto _00E0

_00BC:
	closemsg
	scrcmd_815 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input 1, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_00E0:
	releaseall
	end

_00E4:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T24PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_STORM, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0115
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0115:
	buffer_players_name 0
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
