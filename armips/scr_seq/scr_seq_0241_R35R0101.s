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

.include "armips/scr_seq/event_R35R0101.inc"


// text archive to grab from: 388.txt

.create "build/a012/2_241", 0


scrdef scr_seq_R35R0101_000
scrdef scr_seq_R35R0101_001
scrdef_end

scr_seq_R35R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_RADIO_CARD, _0028
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0028:
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _004B
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_004B:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R35R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_LOAN_SPEAROW, 1
	goto_if_eq _00BC
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ge _0104
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00EE
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _00F9
	npc_msg 3
	give_loan_mon 7, 20, 101
	setvar VAR_LOAN_SPEAROW, 1
	buffer_players_name 0
	npc_msg 4
	play_fanfare SEQ_ME_PT_SPECIAL
	wait_fanfare
_00BC:
	kenya_check_party_or_mailbox VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0178
	goto_if_set FLAG_UNK_0B5, _00E3
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E3:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00EE:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F9:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0104:
	compare VAR_LOAN_SPEAROW, 4
	goto_if_ge _016D
	npc_msg 7
	goto_if_no_item_space ITEM_HP_UP, 1, _0163
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 3
	goto_if_ne _0152
	setvar VAR_LOAN_SPEAROW, 5
	goto _0158

_0152:
	setvar VAR_LOAN_SPEAROW, 4
_0158:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0163:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_016D:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0178:
	setvar VAR_LOAN_SPEAROW, 6
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
