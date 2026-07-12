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


// text archive to grab from: 209.txt

.create "build/a012/2_144", 0


scrdef scr_seq_0144_000
scrdef scr_seq_0144_001
scrdef scr_seq_0144_002
scrdef scr_seq_0144_003
scrdef_end

scr_seq_0144_000:
	mystery_gift 0, 0, 0
	mom_gift_check VAR_TEMP_x4000
	nop_var_490 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0035
	setflag FLAG_HIDE_MOM_GIFT_DELIVERYMAN
	goto _0039

_0035:
	clearflag FLAG_HIDE_MOM_GIFT_DELIVERYMAN
_0039:
	mystery_gift 1, VAR_MYSTERY_GIFT_CHECK, 0
	compare VAR_MYSTERY_GIFT_CHECK, 0
	goto_if_ne _0056
	setflag FLAG_HIDE_MYSTERY_GIFT_DELIVERYMAN
	goto _005A

_0056:
	clearflag FLAG_HIDE_MYSTERY_GIFT_DELIVERYMAN
_005A:
	mystery_gift 7, 0, 0
	end

scr_seq_0144_003:
	mystery_gift 0, 0, 0
	mom_gift_check VAR_TEMP_x4000
	nop_var_490 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0083
	setflag FLAG_HIDE_MOM_GIFT_DELIVERYMAN
	goto _0087

_0083:
	clearflag FLAG_HIDE_MOM_GIFT_DELIVERYMAN
_0087:
	mystery_gift 1, VAR_MYSTERY_GIFT_CHECK, 0
	compare VAR_MYSTERY_GIFT_CHECK, 0
	goto_if_ne _00A4
	setflag FLAG_HIDE_MYSTERY_GIFT_DELIVERYMAN
	goto _00A8

_00A4:
	clearflag FLAG_HIDE_MYSTERY_GIFT_DELIVERYMAN
_00A8:
	setvar VAR_UNK_40E5, 2
	mystery_gift 7, 0, 0
	end

scr_seq_0144_001:
	mystery_gift 0, 0, 0
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	mystery_gift 1, VAR_SPECIAL_RESULT, 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _016D
	scrcmd_379 VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 0, _00FD
	case 1, _0109
	goto _0115

_00FD:
	buffer_players_name 0
	npc_msg 0
	goto _0121

_0109:
	buffer_players_name 0
	npc_msg 1
	goto _0121

_0115:
	buffer_players_name 0
	npc_msg 2
	goto _0121

_0121:
	mystery_gift 3, VAR_SPECIAL_RESULT, 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0157
	play_fanfare SEQ_ME_ITEM
	mystery_gift 5, VAR_SPECIAL_x8005, VAR_SPECIAL_x8006
	msgbox_extern VAR_SPECIAL_x8005, VAR_SPECIAL_x8006
	wait_fanfare
	npc_msg 20
	wait_button_or_walk_away
	mystery_gift 4, 0, 0
	goto _0182

_0157:
	mystery_gift 6, VAR_SPECIAL_x8005, VAR_SPECIAL_x8006
	msgbox_extern VAR_SPECIAL_x8005, VAR_SPECIAL_x8006
	wait_button_or_walk_away
	goto _0178

_016D:
	npc_msg 3
	wait_button_or_walk_away
	goto _0178

_0178:
	closemsg
	releaseall
	mystery_gift 7, 0, 0
	end

_0182:
	closemsg
	releaseall
	mystery_gift 8, 0, 0
	end

scr_seq_0144_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	mom_gift_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0232
	scrcmd_379 VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 0, _01CF
	case 1, _01DB
	goto _01E7

_01CF:
	buffer_players_name 0
	npc_msg 27
	goto _01F3

_01DB:
	buffer_players_name 0
	npc_msg 28
	goto _01F3

_01E7:
	buffer_players_name 0
	npc_msg 29
	goto _01F3

_01F3:
	scrcmd_811 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0222
	callstd std_give_item_verbose
	scrcmd_812
	scrcmd_149 12
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0222:
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0232:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
