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

.include "armips/scr_seq/event_R28R0101.inc"


// text archive to grab from: 372.txt

.create "build/a012/2_224", 0


scrdef scr_seq_R28R0101_000
scrdef scr_seq_R28R0101_001
scrdef scr_seq_R28R0101_002
scrdef_end

scr_seq_R28R0101_002:
	apply_movement obj_R28R0101_gsgirl1, _0020
	wait_movement
	setvar VAR_UNK_4126, 1
	end

	.align 4
_0020:

	step 1, 1
	step 75, 1
	step_end
scr_seq_R28R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TM47_FROM_ROUTE_28_CELEBRITY, _012A
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0060
	apply_movement obj_R28R0101_gsgirl1, _0140
	goto _009E

_0060:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _007B
	apply_movement obj_R28R0101_gsgirl1, _014C
	goto _009E

_007B:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0096
	apply_movement obj_R28R0101_gsgirl1, _0158
	goto _009E

_0096:
	apply_movement obj_R28R0101_gsgirl1, _0164
_009E:
	wait_movement
	npc_msg 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _00BE
	apply_movement obj_R28R0101_gsgirl1, _0164
	goto _00FC

_00BE:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _00D9
	apply_movement obj_R28R0101_gsgirl1, _0158
	goto _00FC

_00D9:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _00F4
	apply_movement obj_R28R0101_gsgirl1, _014C
	goto _00FC

_00F4:
	apply_movement obj_R28R0101_gsgirl1, _0140
_00FC:
	wait_movement
	npc_msg 1
	goto_if_no_item_space ITEM_TM047, 1, _0135
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM47_FROM_ROUTE_28_CELEBRITY
_012A:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0135:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

	.align 4
_0140:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_014C:

	step 63, 1
	step 34, 1
	step_end
	.align 4
_0158:

	step 63, 1
	step 35, 1
	step_end
	.align 4
_0164:

	step 63, 1
	step 33, 1
	step_end
scr_seq_R28R0101_001:
	play_cry SPECIES_FEAROW, 0
	simple_npc_msg 3
	wait_cry
	end
	.align 4


.close
