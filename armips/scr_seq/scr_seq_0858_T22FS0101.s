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

.include "armips/scr_seq/event_T22FS0101.inc"


// text archive to grab from: 557.txt

.create "build/a012/2_858", 0


scrdef scr_seq_T22FS0101_000
scrdef scr_seq_T22FS0101_001
scrdef scr_seq_T22FS0101_002
scrdef scr_seq_T22FS0101_003
scrdef scr_seq_T22FS0101_004
scrdef_end

scr_seq_T22FS0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 1
	callstd std_pokemart
	releaseall
	end

scr_seq_T22FS0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 1
	callstd std_special_mart
	releaseall
	end

scr_seq_T22FS0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_06F, _0115
	buffer_players_name 0
	gender_msgbox 2, 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F7
_007D:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0106
	give_togepi_egg
	setflag FLAG_UNK_070
	buffer_players_name 0
	npc_msg 4
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	gender_msgbox 5, 6
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _00C5
	apply_movement obj_T22FS0101_assistantm, _014C
	goto _00CD

_00C5:
	apply_movement obj_T22FS0101_assistantm, _0140
_00CD:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T22FS0101_assistantm
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	releaseall
	setvar VAR_SCENE_VIOLET_CITY_OW, 3
	clearflag FLAG_HIDE_VIOLET_KIMONO_GIRL
	clearflag FLAG_HIDE_ELMS_LAB_AIDE
	setvar VAR_SCENE_ELMS_LAB, 7
	end

_00F7:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_UNK_06F
	end

_0106:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_UNK_06F
	end

_0115:
	buffer_players_name 0
	gender_msgbox 9, 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _007D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F7
	end

	.align 4
_0140:

	step 14, 2
	step 13, 3
	step_end
	.align 4
_014C:

	step 13, 2
	step 14, 2
	step 13, 1
	step_end
scr_seq_T22FS0101_003:
	simple_npc_msg 0
	end

scr_seq_T22FS0101_004:
	simple_npc_msg 1
	end
	.align 4


.close
