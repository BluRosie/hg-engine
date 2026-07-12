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

.include "armips/scr_seq/event_T22GYM0101.inc"


// text archive to grab from: 558.txt

.create "build/a012/2_859", 0


scrdef scr_seq_T22GYM0101_000
scrdef scr_seq_T22GYM0101_001
scrdef scr_seq_T22GYM0101_002
scrdef scr_seq_T22GYM0101_003
scrdef scr_seq_T22GYM0101_004
scrdef scr_seq_T22GYM0101_005
scrdef_end

scr_seq_T22GYM0101_000:
	violet_gym_init
	get_phone_book_rematch PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00A7
	check_registered_phone_number PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _007E
	check_badge BADGE_SOUL, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _005B
	goto _00A1

_005B:
	get_weekday VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_ne _0076
	setflag FLAG_UNK_2E9
	goto _007C

_0076:
	goto _00A1

_007C:
	end

_007E:
	get_weekday VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _0099
	setflag FLAG_UNK_2E9
	goto _009F

_0099:
	goto _00A1

_009F:
	end

_00A1:
	clearflag FLAG_UNK_2E9
	end

_00A7:
	setflag FLAG_UNK_2E9
	end

scr_seq_T22GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0168
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_FALKNER_FALKNER, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _017E
	give_badge BADGE_ZEPHYR
	add_special_game_stat 22
	settrainerflag TRAINER_BIRD_KEEPER_GS_ROD
	settrainerflag TRAINER_BIRD_KEEPER_GS_ABE
	setvar VAR_SCENE_VIOLET_CITY_OW, 1
	setflag FLAG_UNK_192
	setvar VAR_SCENE_ELMS_LAB, 6
	setflag FLAG_UNK_0F4
	setflag FLAG_HIDE_WIFI_CLUB_CLOSED_LADY
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _0126

_0126:
	goto_if_no_item_space ITEM_TM051, 1, _015E
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM51_FROM_FALKNER
	clearflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_015E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0168:
	goto_if_unset FLAG_GOT_TM51_FROM_FALKNER, _0126
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_017E:
	white_out
	releaseall
	end

scr_seq_T22GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01AA
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AA:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T22GYM0101_005:
	simple_npc_msg 6
	end

scr_seq_T22GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01EF
	npc_msg 9
	goto _01F2

_01EF:
	npc_msg 10
_01F2:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T22GYM0101_004:
	setvar VAR_TEMP_x4000, 0
	violet_gym_elevator
	end
	.align 4


.close
