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

.include "armips/scr_seq/event_T06R0301.inc"


// text archive to grab from: 488.txt

.create "build/a012/2_782", 0


scrdef scr_seq_T06R0301_000
scrdef scr_seq_T06R0301_001
scrdef scr_seq_T06R0301_002
scrdef scr_seq_T06R0301_003
scrdef scr_seq_T06R0301_004
scrdef scr_seq_T06R0301_005
scrdef scr_seq_T06R0301_006
scrdef scr_seq_T06R0301_007
scrdef_end

scr_seq_T06R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GOT_RARE_CANDY_FROM_FAN_CLUB_CHAIRMAN, _0044
	buffer_players_name 0
	gender_msgbox 4, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0044:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _009E
	npc_msg 1
	goto_if_no_item_space ITEM_RARE_CANDY, 1, _0093
	callstd std_give_item_verbose
	setflag FLAG_GOT_RARE_CANDY_FROM_FAN_CLUB_CHAIRMAN
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0093:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_009E:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T06R0301_001:
	simple_npc_msg 8
	end

scr_seq_T06R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_LOST_ITEM, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0141
	getitemquantity ITEM_PASS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0141
	goto_if_set FLAG_UNK_119, _0116
	goto_if_set FLAG_RESTORED_POWER, _010B
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_010B:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0116:
	npc_msg 11
	hide_person obj_T06R0301_mono_pip
	setflag FLAG_HIDE_VERMILION_FAN_CLUB_LOST_ITEM
	giveitem_no_check ITEM_LOST_ITEM, 1
	setvar VAR_UNK_4130, 1
	clearflag FLAG_HIDE_VERMILION_CITY_STEVEN
	closemsg
	releaseall
	end

_0141:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T06R0301_003:
	simple_npc_msg 14
	end

scr_seq_T06R0301_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BAYLEEF, 0
	npc_msg 16
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T06R0301_007:
	goto_if_set FLAG_HIDE_VERMILION_FAN_CLUB_LOST_ITEM, _0198
	simple_npc_msg 15
	end

_0198:
	end

scr_seq_T06R0301_005:
	simple_npc_msg 17
	end

scr_seq_T06R0301_006:
	simple_npc_msg 18
	end
	.align 4


.close
