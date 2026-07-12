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


// text archive to grab from: 732.txt

.create "build/a012/2_955", 0


scrdef scr_seq_0955_000
scrdef scr_seq_0955_001
scrdef scr_seq_0955_002
scrdef scr_seq_0955_003
scrdef scr_seq_0955_004
scrdef scr_seq_0955_005
scrdef scr_seq_0955_006
scrdef scr_seq_0955_007
scrdef scr_seq_0955_008
scrdef scr_seq_0955_009
scrdef scr_seq_0955_010
scrdef scr_seq_0955_011
scrdef scr_seq_0955_012
scrdef scr_seq_0955_013
scrdef scr_seq_0955_014
scrdef scr_seq_0955_015
scrdef scr_seq_0955_016
scrdef scr_seq_0955_017
scrdef scr_seq_0955_018
scrdef_end

scr_seq_0955_000:
	setvar VAR_SPECIAL_x8000, 1
	goto _0159

scr_seq_0955_001:
	setvar VAR_SPECIAL_x8000, 2
	goto _0159

scr_seq_0955_002:
	setvar VAR_SPECIAL_x8000, 3
	goto _0159

scr_seq_0955_003:
	setvar VAR_SPECIAL_x8000, 4
	goto _0159

scr_seq_0955_004:
	setvar VAR_SPECIAL_x8000, 5
	goto _0159

scr_seq_0955_005:
	setvar VAR_SPECIAL_x8000, 6
	goto _0159

scr_seq_0955_006:
	setvar VAR_SPECIAL_x8000, 7
	goto _0159

scr_seq_0955_007:
	setvar VAR_SPECIAL_x8000, 8
	goto _0159

scr_seq_0955_008:
	setvar VAR_SPECIAL_x8000, 9
	goto _0159

scr_seq_0955_009:
	setvar VAR_SPECIAL_x8000, 10
	goto _0159

scr_seq_0955_010:
	setvar VAR_SPECIAL_x8000, 11
	goto _0159

scr_seq_0955_011:
	setvar VAR_SPECIAL_x8000, 12
	goto _0159

scr_seq_0955_012:
	setvar VAR_SPECIAL_x8000, 13
	goto _0159

scr_seq_0955_013:
	setvar VAR_SPECIAL_x8000, 14
	goto _0159

scr_seq_0955_014:
	compare VAR_UNK_4032, 1
	goto_if_eq scr_seq_0955_015
	compare VAR_UNK_4032, 2
	goto_if_eq scr_seq_0955_016
	compare VAR_UNK_4032, 3
	goto_if_eq scr_seq_0955_017
	setvar VAR_SPECIAL_x8000, 15
	goto _0159

scr_seq_0955_015:
	setvar VAR_SPECIAL_x8000, 16
	goto _0159

scr_seq_0955_016:
	setvar VAR_SPECIAL_x8000, 17
	goto _0159

scr_seq_0955_017:
	setvar VAR_SPECIAL_x8000, 18
	goto _0159

scr_seq_0955_018:
	setvar VAR_SPECIAL_x8000, 19
	goto _0159

_0159:
	simple_npc_msg 2
	end
	.align 4


.close
