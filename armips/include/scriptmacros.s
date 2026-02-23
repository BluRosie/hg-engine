SCRDEF_END_CONSTANT equ 0xFD13

.macro scrdef,offset
.word offset - . - 4
.endmacro

.macro scrdef_end
.halfword SCRDEF_END_CONSTANT
.endmacro

// Dummy command
.macro snop
.halfword 0
.endmacro

// Dummy command
.macro dummy
.halfword 1
.endmacro

// Exits script execution and returns control to the player
.macro end
.halfword 2
.endmacro

// Pauses for some frames,tracks the timer in a script variable
.macro wait,frames,var
.halfword 3
.halfword frames
.halfword var
.endmacro

// Loads 8-bit value into the specified script register
.macro loadbyte,reg,val
.halfword 4
.byte reg
.byte val
.endmacro

// Loads 32-bit value into the specified script register
.macro loadword,reg,val
.halfword 5
.byte reg
.word val
.endmacro

// Reads byte at a specific memory address into a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro loadbytefromaddr,reg,addr
.halfword 6
.byte reg
.word addr
.endmacro

// Writes byte to a specific memory address from a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro writebytetoaddr,addr,reg
.halfword 7
.word addr
.byte reg
.endmacro

// Writes byte literal to a specific memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro setptrbyte,addr,val
.halfword 8
.word addr
.byte val
.endmacro

// Copies a byte between script registers
.macro copylocal,to,from
.halfword 9
.byte to
.byte from
.endmacro

// Copies a byte between two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro copybyte,to,from
.halfword 10
.word to
.word from
.endmacro

// Compares values between script reg and script reg
.macro compare_local_to_local,a,b
.halfword 11
.byte a
.byte b
.endmacro

// Compares script reg to byte literal
.macro compare_local_to_value,reg,val
.halfword 12
.byte reg
.byte val
.endmacro

// Compares script reg to memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_local_to_addr,reg,addr
.halfword 13
.byte reg
.word addr
.endmacro

// Compares memory address to script reg
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_addr_to_local,addr,reg
.halfword 14
.word addr
.byte reg
.endmacro

// Compares memory address to byte literal
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_addr_to_value,addr,val
.halfword 15
.word addr
.byte val
.endmacro

// Compares bytes at two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro compare_addr_to_addr,a,b
.halfword 16
.word a
.word b
.endmacro

// Compares variable to 16-bit literal
.macro compare_var_to_value,var,val
.halfword 17
.halfword var
.halfword val
.endmacro

// Compares two variables
.macro compare_var_to_var,a,b
.halfword 18
.halfword a
.halfword b
.endmacro

// Creates a new script context to run the indicated script asynchronously
.macro runscript,id
.halfword 19
.halfword id
.endmacro

_std_misc                       equ 2000
std_signpost                    equ 2000
std_hidden_item_fanfare         equ 2001
std_nurse_joy                   equ 2002
std_survive_poisoning           equ 2003
std_prompt_save                 equ 2006
std_receive_accessory           equ 2007
std_obtain_item_verbose         equ 2008
std_bag_is_full                 equ 2009
std_pokecenter_pc               equ 2010
std_mart_intro                  equ 2011
std_whited_out_to_mom           equ 2012
std_whited_out_to_pokecenter    equ 2013
std_global_terminal_globe       equ 2015
std_bike_rack                   equ 2020
std_hatch_egg                   equ 2021
std_repel_wore_off              equ 2022
std_set_battle_phrase           equ 2023
std_wifi_club_closed            equ 2025
std_receive_background          equ 2026
std_play_friend_music           equ 2029
std_fade_end_friend_music       equ 2030
std_play_rival_intro_music      equ 2031
std_fade_end_rival_intro_music  equ 2032
std_give_item_verbose           equ 2033
std_play_mom_music              equ 2036
std_play_follow_music           equ 2037
std_fade_end_mom_music          equ 2038
std_phone_call                  equ 2039
std_frontier_gold_prints_check  equ 2040
std_bag_is_full_griseous_orb    equ 2041
std_play_eusine_music           equ 2042
std_fade_end_eusine_music       equ 2043
std_play_clair_music            equ 2044
std_fade_end_clair_music        equ 2045
std_enter_global_terminal       equ 2046
std_pokemart                    equ 2048
std_pokemart_buy                equ 2049
std_pokemart_sell               equ 2050
std_pokemart_cancel             equ 2051
std_special_mart                equ 2052
std_special_mart_buy            equ 2053
std_special_mart_sell           equ 2054
std_special_mart_cancel         equ 2055
std_play_pichu_music            equ 2065
std_fade_end_pichu_music        equ 2066
std_play_kimono_girl_music      equ 2067
std_fade_end_kimono_girl_music  equ 2068
std_fade_heal_fade              equ 2069
std_play_rival_outro_music      equ 2070
std_fade_end_rival_outro_music  equ 2071

// Creates a new script context to run the indicated script and wait
.macro callstd,id
.halfword 20
.halfword id
.endmacro

// Yield to parent context
.macro endstd
.halfword 21
.endmacro

// Absolute branch to offset in script
.macro goto,dest
.halfword 22
.word dest-.-4
.endmacro

// Branch to offset in script if interacting with a specific object
.macro objectgoto,object,dest
.halfword 23
.byte object
.word dest-.-4
.endmacro

// Branch to offset in script if interacting with a specific bg event
.macro bggoto,bg,dest
.halfword 24
.byte bg
.word dest-.-4
.endmacro

DIR_NORTH equ 0
DIR_SOUTH equ 1
DIR_WEST equ 2
DIR_EAST equ 3

// Branch to offset in script if facing a specific direction
.macro directiongoto,dir,dest
.halfword 25
.byte dir
.word dest-.-4
.endmacro

// Call script as a subroutine
.macro call,sub
.halfword 26
.word sub-.-4
.endmacro

// Return from subroutine
.macro return
.halfword 27
.endmacro

// Conditional branch to offset in script
.macro goto_if,condition,dest
.halfword 28
.byte condition
.word dest-.-4
.endmacro

// Conditional call subroutine
.macro call_if,condition,sub
.halfword 29
.byte condition
.word sub-.-4
.endmacro

// Set event flag
.macro setflag,flag
.halfword 30
.halfword flag
.endmacro

// Clear event flag
.macro clearflag,flag
.halfword 31
.halfword flag
.endmacro

// Check event flag, store result on context
.macro checkflag,flag
.halfword 32
.halfword flag
.endmacro

// Set event flag referenced in var
.macro setflagvar,var
.halfword 33
.halfword var
.endmacro

// Clear event flag referenced in var
.macro clearflagvar,var
.halfword 34
.halfword var
.endmacro

// Check event flag referenced in var, store result in other var
.macro checkflagvar,var_flag,var_dest
.halfword 35
.halfword var_flag
.halfword var_dest
.endmacro

// Set trainer defeated flag
.macro settrainerflag,var_or_trno
.halfword 36
.halfword var_or_trno
.endmacro

// Clear trainer defeated flag
.macro cleartrainerflag,var_or_trno
.halfword 37
.halfword var_or_trno
.endmacro

// Check trainer defeated flag,store result on context
.macro checktrainerflag,var_or_trno
.halfword 38
.halfword var_or_trno
.endmacro

// Increment var value by value
.macro addvar,var,var_or_addend
.halfword 39
.halfword var
.halfword var_or_addend
.endmacro

// Decrement var value by value
.macro subvar,var,var_or_addend
.halfword 40
.halfword var
.halfword var_or_addend
.endmacro

// Set var to short literal
.macro setvar,var,val
.halfword 41
.halfword var
.halfword val
.endmacro

// Set var from other var
.macro copyvar,dst,src
.halfword 42
.halfword dst
.halfword src
.endmacro

// Set var from other var or short literal
.macro setorcopyvar,dst,src
.halfword 43
.halfword dst
.halfword src
.endmacro

// Print non_npc_msg in field window from current map message bank
.macro non_npc_msg,msg_id
.halfword 44
.byte msg_id
.endmacro

// NPC dialogue window
.macro npc_msg,msg_id
.halfword 45
.byte msg_id
.endmacro

// Not sure what to call this but it
// is also a message printer
.macro non_npc_msg_var,msg_id
.halfword 46
.halfword msg_id
.endmacro

.macro npc_msg_var,arg0
.halfword 47
.halfword arg0
.endmacro

.macro scrcmd_048,arg0
.halfword 48
.byte arg0
.endmacro

// Waits for A or B button
.macro wait_button
.halfword 49
.endmacro

// Waits for A,B,or dpad. On pressing dpad,does a turn frame.
.macro wait_button_or_walk_away
.halfword 50
.endmacro

// Waits for A,B,or dpad. No turn frame.
.macro wait_button_or_dpad
.halfword 51
.endmacro

.macro openmsg
.halfword 52
.endmacro

.macro closemsg
.halfword 53
.endmacro

// Like closemsg but does not clear the graphics.
.macro holdmsg
.halfword 54
.endmacro

.macro direction_signpost,message,arg1,arrow,arg3
.halfword 55
.byte message
.byte arg1
.halfword arrow
.halfword arg3
.endmacro

.macro scrcmd_055,message,arg1
.halfword 56
.byte message
.halfword arg1
.endmacro

.macro scrcmd_057,arg0
.halfword 57
.byte arg0
.endmacro

.macro scrcmd_058
.halfword 58
.endmacro

.macro trainer_tips,arg0,arg1
.halfword 59
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_060,arg0
.halfword 60
.halfword arg0
.endmacro

.macro scrcmd_061
.halfword 61
.endmacro

.macro scrcmd_062,arg0,arg1,arg2,arg3,arg4,arg5
.halfword 62
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.byte arg4
.byte arg5
.endmacro

.macro yesno,arg0
.halfword 63
.halfword arg0
.endmacro

.macro scrcmd_064,arg0,arg1,arg2,arg3,arg4
.halfword 64
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro scrcmd_065,arg0,arg1,arg2,arg3,arg4
.halfword 65
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro scrcmd_066,arg0,arg1
.halfword 66
.byte arg0
.byte arg1
.endmacro

.macro scrcmd_067
.halfword 67
.endmacro

.macro scrcmd_068,arg0,arg1,arg2,arg3,arg4
.halfword 68
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

// uses text bank 191 to choose what to do.
.macro prepare_list_std_text,x,y,cursor,cancel,selection
.halfword 68
.byte x
.byte y
.byte cursor
.byte cancel
.halfword selection
.endmacro

.macro scrcmd_069,arg0,arg1,arg2,arg3,arg4
.halfword 69
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

// uses the current loaded text bank on the map to choose what to do.
.macro prepare_list_local_text,x,y,cursor,cancel,selection
.halfword 69
.byte x
.byte y
.byte cursor
.byte cancel
.halfword selection
.endmacro

.macro scrcmd_070,arg0,arg1,arg2
.halfword 70
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro add_list_option,optionmsg,highlightmsg,listslot
.halfword 70
.halfword optionmsg
.halfword highlightmsg
.halfword listslot
.endmacro

.macro scrcmd_071
.halfword 71
.endmacro

.macro show_prepared_list
.halfword 71
.endmacro

.macro scrcmd_072,arg0
.halfword 72
.byte arg0
.endmacro

.macro play_se,arg0
.halfword 73
.halfword arg0
.endmacro

.macro stop_se,arg0
.halfword 74
.halfword arg0
.endmacro

.macro wait_se,arg0
.halfword 75
.halfword arg0
.endmacro

.macro play_cry,arg0,arg1
.halfword 76
.halfword arg0
.halfword arg1
.endmacro

.macro wait_cry
.halfword 77
.endmacro

.macro play_fanfare,fanfare
.halfword 78
.halfword fanfare
.endmacro

.macro wait_fanfare
.halfword 79
.endmacro

.macro play_bgm,bgm
.halfword 80
.halfword bgm
.endmacro

.macro stop_bgm,arg0
.halfword 81
.halfword arg0
.endmacro

.macro reset_bgm
.halfword 82
.endmacro

.macro scrcmd_083,arg0
.halfword 83
.halfword arg0
.endmacro

// Fade out the music to the target level
// in the designated number of frames
.macro fade_out_bgm,target,frames
.halfword 84
.halfword target
.halfword frames
.endmacro

.macro fade_in_bgm,arg0
.halfword 85
.halfword arg0
.endmacro

.macro scrcmd_086,arg0,arg1
.halfword 86
.byte arg0
.byte arg1
.endmacro

.macro temp_bgm,arg0
.halfword 87
.halfword arg0
.endmacro

.macro scrcmd_088,arg0
.halfword 88
.byte arg0
.endmacro

.macro chatot_has_cry,arg0
.halfword 89
.halfword arg0
.endmacro

.macro chatot_start_recording,arg0
.halfword 90
.halfword arg0
.endmacro

.macro chatot_stop_recording
.halfword 91
.endmacro

.macro chatot_save_recording
.halfword 92
.endmacro

.macro scrcmd_093
.halfword 93
.endmacro

obj_daycare_poke_1        equ 250
obj_daycare_poke_2        equ 251
obj_apricorn              equ 252
obj_partner_poke          equ 253
obj_player                equ 255

LookUp equ 0x0000
LookDown equ 0x0001
LookLeft equ 0x0002
LookRight equ 0x0003
WalkUpSlow equ 0x0004
WalkDownSlow equ 0x0005
WalkLeftSlow equ 0x0006
WalkRightSlow equ 0x0007
WalkUp equ 0x0008
WalkDown equ 0x0009
WalkLeft equ 0x000A
WalkRight equ 0x000B
WalkUpFast equ 0x000C
WalkDownFast equ 0x000D
WalkLeftFast equ 0x000E
WalkRightFast equ 0x000F
WalkUpVeryFast equ 0x0010
WalkDownVeryFast equ 0x0011
WalkLeftVeryFast equ 0x0012
WalkRightVeryFast equ 0x0013
RunUp equ 0x0014
RunDown equ 0x0015
RunLeft equ 0x0016
RunRight equ 0x0017
WalkUpSlowSite equ 0x0018
WalkDownSlowSite equ 0x0019
WalkLeftSlowSite equ 0x001A
WalkRightSlowSite equ 0x001B
WalkUpSite equ 0x001C
WalkDownSite equ 0x001D
WalkLeftSite equ 0x001E
WalkRightSite equ 0x001F
WalkUpFastSite equ 0x0020
WalkDownFastSite equ 0x0021
WalkLeftFastSite equ 0x0022
WalkRightFastSite equ 0x0023
WalkUpVeryFastSite equ 0x0024
WalkDownVeryFastSite equ 0x0025
WalkLeftVeryFastSite equ 0x0026
WalkRightVeryFastSite equ 0x0027
RunUpSite equ 0x0028
RunDownSite equ 0x0029
RunLeftSite equ 0x002A
RunRightSite equ 0x002B
JumpUpSlow equ 0x002C
JumpDownSlow equ 0x002D
JumpLeftSlow equ 0x002E
JumpRightSlow equ 0x002F
JumpUpSite equ 0x0030
JumpDownSite equ 0x0031
JumpLeftSite equ 0x0032
JumpRightSite equ 0x0033
JumpUp equ 0x0034
JumpDown equ 0x0035
JumpLeft equ 0x0036
JumpRight equ 0x0037
JumpUp2 equ 0x0038
JumpDown2 equ 0x0039
JumpLeft2 equ 0x003A
JumpRight2 equ 0x003B
Freeze equ 0x003E
WaitDisappear equ 0x0045
LockDir equ 0x0047
ReleaseDir equ 0x0048
Exclamation equ 0x004B
WaitWalkUpSlow equ 0x004C
WaitWalkDownSlow equ 0x004D
WaitWalkLeftSlow equ 0x004E // seems bugged
WaitWalkRightSlow equ 0x004F
WaitWalkUp equ 0x0050
WaitWalkDown equ 0x0051
WaitWalkLeft equ 0x0052
WaitWalkRight equ 0x0053
WaitMoveUp equ 0x0054
WaitMoveDown equ 0x0055
WaitMoveLeft equ 0x0056
WaitMoveRight equ 0x0057
WaitWalkBackUp equ 0x0058
WaitWalkBackDown equ 0x0059
WaitWalkBackLeft equ 0x005A
WaitWalkBackRight equ 0x005B
WaitJumpLeft1 equ 0x005C
WaitJumpRight1 equ 0x005D
WaitJumpLeft2 equ 0x005E
WaitJumpRight2 equ 0x005F
WaitMoveSite equ 0x0064
WaitJumpSite equ 0x0065
WaitDoubleExclamation equ 0x0067
WaitMoveForever equ 0x0068
MovementEnd equ 0x00FE

.macro apply_movement,arg0,arg1
.halfword 94
.halfword arg0
.word arg1-.-4
.endmacro

.macro wait_movement
.halfword 95
.endmacro

.macro lockall
.halfword 96
.endmacro

.macro releaseall
.halfword 97
.endmacro

.macro lock,arg0
.halfword 98
.halfword arg0
.endmacro

.macro release,arg0
.halfword 99
.halfword arg0
.endmacro

.macro show_person,arg0
.halfword 100
.halfword arg0
.endmacro

.macro hide_person,arg0
.halfword 101
.halfword arg0
.endmacro

.macro scrcmd_102,arg0,arg1
.halfword 102
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_103
.halfword 103
.endmacro

.macro faceplayer
.halfword 104
.endmacro

.macro get_player_coords,arg0,arg1
.halfword 105
.halfword arg0
.halfword arg1
.endmacro

.macro get_person_coords,arg0,arg1,arg2
.halfword 106
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_107,arg0,arg1,arg2
.halfword 107
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_108,arg0,arg1
.halfword 108
.halfword arg0
.byte arg1
.endmacro

.macro scrcmd_109,arg0,arg1
.halfword 109
.halfword arg0
.halfword arg1
.endmacro

.macro addmoney,arg0
.halfword 110
.word arg0
.endmacro

.macro submoneyimmediate,arg0
.halfword 111
.word arg0
.endmacro

.macro hasenoughmoneyimmediate,arg0,arg1
.halfword 112
.halfword arg0
.word arg1
.endmacro

.macro show_money_box,arg0,arg1
.halfword 113
.halfword arg0
.halfword arg1
.endmacro

.macro hide_money_box
.halfword 114
.endmacro

.macro update_money_box
.halfword 115
.endmacro

.macro scrcmd_116,arg0,arg1,arg2
.halfword 116
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_117
.halfword 117
.endmacro

.macro scrcmd_118,arg0
.halfword 118
.byte arg0
.endmacro

.macro get_coin_amount,arg0
.halfword 119
.halfword arg0
.endmacro

.macro give_coins,arg0
.halfword 120
.halfword arg0
.endmacro

.macro take_coins,arg0
.halfword 121
.halfword arg0
.endmacro

.macro give_athlete_points,arg0
.halfword 122
.halfword arg0
.endmacro

.macro take_athlete_points,arg0
.halfword 123
.halfword arg0
.endmacro

.macro check_athlete_points,arg0,arg1
.halfword 124
.halfword arg0
.halfword arg1
.endmacro

.macro giveitem,arg0,arg1,arg2
.halfword 125
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro takeitem,arg0,arg1,arg2
.halfword 126
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro hasspaceforitem,arg0,arg1,arg2
.halfword 127
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro hasitem,arg0,arg1,arg2
.halfword 128
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro itemistmorhm,arg0,arg1
.halfword 129
.halfword arg0
.halfword arg1
.endmacro

.macro getitempocket,arg0,arg1
.halfword 130
.halfword arg0
.halfword arg1
.endmacro

.macro set_starter_choice,arg0
.halfword 131
.halfword arg0
.endmacro

.macro gender_msgbox,arg0,arg1
.halfword 132
.byte arg0
.byte arg1
.endmacro

.macro get_seal_quantity,arg0,arg1
.halfword 133
.halfword arg0
.halfword arg1
.endmacro

.macro give_or_take_seal,arg0,arg1
.halfword 134
.halfword arg0
.halfword arg1
.endmacro

.macro give_random_seal,arg0,arg1,arg2
.halfword 135
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_136,arg0,arg1
.halfword 136
.halfword arg0
.halfword arg1
.endmacro

.macro give_mon,arg0,arg1,arg2,arg3,arg4,arg5
.halfword 137
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.halfword arg5
.endmacro

.macro give_egg,arg0,arg1
.halfword 138
.halfword arg0
.halfword arg1
.endmacro

.macro set_mon_move,arg0,arg1,arg2
.halfword 139
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro mon_has_move,arg0,arg1,arg2
.halfword 140
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro get_party_slot_with_move,arg0,arg1
.halfword 141
.halfword arg0
.halfword arg1
.endmacro

.macro get_phone_book_rematch,arg0,arg1
.halfword 142
.halfword arg0
.halfword arg1
.endmacro

.macro name_rival,arg0
.halfword 143
.halfword arg0
.endmacro

.macro get_friend_sprite,arg0
.halfword 144
.halfword arg0
.endmacro

.macro register_pokegear_card,arg0
.halfword 145
.byte arg0
.endmacro

.macro register_gear_number,arg0
.halfword 146
.halfword arg0
.endmacro

// Pokegear Contacts
PHONE_CONTACT_NONE                equ 0xff
PHONE_CONTACT_MOTHER              equ    0
PHONE_CONTACT_PROF__ELM           equ    1
PHONE_CONTACT_PROF__OAK           equ    2
PHONE_CONTACT_ETHAN               equ    3
PHONE_CONTACT_LYRA                equ    4
PHONE_CONTACT_KURT                equ    5
PHONE_CONTACT_DAY_C_MAN           equ    6
PHONE_CONTACT_DAY_C_LADY          equ    7
PHONE_CONTACT_BUENA               equ    8
PHONE_CONTACT_BILL                equ    9
PHONE_CONTACT_JOEY                equ   10
PHONE_CONTACT_RALPH               equ   11
PHONE_CONTACT_LIZ                 equ   12
PHONE_CONTACT_WADE                equ   13
PHONE_CONTACT_ANTHONY             equ   14
PHONE_CONTACT_BIKE_SHOP           equ   15
PHONE_CONTACT_KENJI               equ   16
PHONE_CONTACT_WHITNEY             equ   17
PHONE_CONTACT_FALKNER             equ   18
PHONE_CONTACT_JACK                equ   19
PHONE_CONTACT_CHAD                equ   20
PHONE_CONTACT_BRENT               equ   21
PHONE_CONTACT_TODD                equ   22
PHONE_CONTACT_ARNIE               equ   23
PHONE_CONTACT_BAOBA               equ   24
PHONE_CONTACT_IRWIN               equ   25
PHONE_CONTACT_JANINE              equ   26
PHONE_CONTACT_CLAIR               equ   27
PHONE_CONTACT_ERIKA               equ   28
PHONE_CONTACT_MISTY               equ   29
PHONE_CONTACT_BLAINE              equ   30
PHONE_CONTACT_BLUE                equ   31
PHONE_CONTACT_CHUCK               equ   32
PHONE_CONTACT_BROCK               equ   33
PHONE_CONTACT_BUGSY               equ   34
PHONE_CONTACT_SABRINA             equ   35
PHONE_CONTACT_LT__SURGE           equ   36
PHONE_CONTACT_MORTY               equ   37
PHONE_CONTACT_JASMINE             equ   38
PHONE_CONTACT_PRYCE               equ   39
PHONE_CONTACT_HUEY                equ   40
PHONE_CONTACT_GAVEN               equ   41
PHONE_CONTACT_JAMIE               equ   42
PHONE_CONTACT_REENA               equ   43
PHONE_CONTACT_VANCE               equ   44
PHONE_CONTACT_PARRY               equ   45
PHONE_CONTACT_ERIN                equ   46
PHONE_CONTACT_BEVERLY             equ   47
PHONE_CONTACT_JOSE                equ   48
PHONE_CONTACT_GINA                equ   49
PHONE_CONTACT_ALAN                equ   50
PHONE_CONTACT_DANA                equ   51
PHONE_CONTACT_DEREK               equ   52
PHONE_CONTACT_TULLY               equ   53
PHONE_CONTACT_TIFFANY             equ   54
PHONE_CONTACT_WILTON              equ   55
PHONE_CONTACT_KRISE               equ   56
PHONE_CONTACT_IAN                 equ   57
PHONE_CONTACT_WALT                equ   58
PHONE_CONTACT_ALFRED              equ   59
PHONE_CONTACT_DOUG                equ   60
PHONE_CONTACT_ROB                 equ   61
PHONE_CONTACT_KYLE                equ   62
PHONE_CONTACT_KYLER               equ   63
PHONE_CONTACT_TIM_AND_SUE         equ   64
PHONE_CONTACT_KENNY               equ   65
PHONE_CONTACT_TANNER              equ   66
PHONE_CONTACT_JOSH                equ   67
PHONE_CONTACT_TORIN               equ   68
PHONE_CONTACT_HILLARY             equ   69
PHONE_CONTACT_BILLY               equ   70
PHONE_CONTACT_KAY_AND_TIA         equ   71
PHONE_CONTACT_REESE               equ   72
PHONE_CONTACT_AIDEN               equ   73
PHONE_CONTACT_ERNEST              equ   74
NUM_PHONE_CONTACTS                equ   75

.macro check_registered_phone_number,arg0,arg1
.halfword 147
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_148,arg0,arg1
.halfword 148
.byte arg0
.byte arg1
.endmacro

.macro scrcmd_149,arg0
.halfword 149
.byte arg0
.endmacro

.macro scrcmd_150
.halfword 150
.endmacro

.macro scrcmd_151
.halfword 151
.endmacro

.macro scrcmd_152
.halfword 152
.endmacro

.macro scrcmd_153,arg0
.halfword 153
.halfword arg0
.endmacro

.macro scrcmd_154,arg0,arg1,arg2
.halfword 154
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_155,arg0,arg1
.halfword 155
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_156
.halfword 156
.endmacro

.macro town_map
.halfword 157
.endmacro

.macro scrcmd_158,arg0
.halfword 158
.byte arg0
.endmacro

.macro scrcmd_159
.halfword 159
.endmacro

.macro scrcmd_160
.halfword 160
.endmacro

.macro scrcmd_161
.halfword 161
.endmacro

.macro scrcmd_162
.halfword 162
.endmacro

.macro hof_credits,arg0
.halfword 163
.halfword arg0
.endmacro

.macro scrcmd_164
.halfword 164
.endmacro

.macro scrcmd_165,arg0,arg1
.halfword 165
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_166,arg0
.halfword 166
.halfword arg0
.endmacro

.macro choose_starter
.halfword 167
.endmacro

.macro get_trainer_path_to_player,arg0
.halfword 168
.halfword arg0
.endmacro

.macro trainer_step_towards_player,arg0,arg1
.halfword 169
.halfword arg0
.halfword arg1
.endmacro

.macro get_trainer_eye_type,arg0
.halfword 170
.halfword arg0
.endmacro

// For when one or more trainers see you
.macro get_eye_trainer_num,arg0,arg1
.halfword 171
.halfword arg0
.halfword arg1
.endmacro

.macro name_player,arg0
.halfword 172
.halfword arg0
.endmacro

.macro nickname_input,arg0,arg1
.halfword 173
.halfword arg0
.halfword arg1
.endmacro

RGB_BLACK equ 0
RGB_WHITE equ 0x7FFF

.macro fade_screen,arg0,speed,direction,color
.halfword 174
.halfword arg0
.halfword speed
.halfword direction
.halfword color
.endmacro

.macro wait_fade
.halfword 175
.endmacro

.macro warp,arg0,arg1,arg2,arg3,arg4
.halfword 176
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro rock_climb,arg0
.halfword 177
.halfword arg0
.endmacro

.macro surf,arg0
.halfword 178
.halfword arg0
.endmacro

.macro waterfall,arg0
.halfword 179
.halfword arg0
.endmacro

.macro scrcmd_180,arg0,arg1,arg2
.halfword 180
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro flash_effect
.halfword 181
.endmacro

.macro whirlpool,arg0
.halfword 182
.halfword arg0
.endmacro

.macro scrcmd_183,arg0
.halfword 183
.halfword arg0
.endmacro

.macro player_on_bike_check,arg0
.halfword 184
.halfword arg0
.endmacro

.macro player_on_bike_set,arg0
.halfword 185
.byte arg0
.endmacro

.macro scrcmd_186,arg0
.halfword 186
.byte arg0
.endmacro


// Player avatar state
PLAYER_STATE_WALKING equ 0
PLAYER_STATE_CYCLING equ 1
PLAYER_STATE_SURFING equ 2
PLAYER_STATE_ROCKET  equ 3

// Player transition bits
PLAYER_TRANSITION_WALKING          equ     1
PLAYER_TRANSITION_CYCLING          equ     2
PLAYER_TRANSITION_SURFING          equ     4
PLAYER_TRANSITION_x0008            equ     8
PLAYER_TRANSITION_x0010            equ    16
PLAYER_TRANSITION_x0020            equ    32
PLAYER_TRANSITION_x0040            equ    64
PLAYER_TRANSITION_x0080            equ   128
PLAYER_TRANSITION_HEAL             equ   256
PLAYER_TRANSITION_x0200            equ   512
PLAYER_TRANSITION_ROCKET           equ  1024
PLAYER_TRANSITION_ROCKET_HEAL      equ  2048
PLAYER_TRANSITION_POKEATHLON       equ  4096
PLAYER_TRANSITION_x2000            equ  8192
PLAYER_TRANSITION_x4000            equ 16384


// Get the overworld state of the player.
// Used in some places to determine whether
// the player is masquerading as a member
// of Team Rocket.
.macro get_player_state,var
.halfword 187
.halfword var
.endmacro

.macro set_avatar_bits,arg0
.halfword 188
.halfword arg0
.endmacro

.macro update_avatar_state
.halfword 189
.endmacro

// In the buffer_XXX commands,the maximum
// acceptable value for the slot arg is 7.
// This sets the message format placeholder
// to whatever is buffered.
.macro buffer_players_name,slot
.halfword 190
.byte slot
.endmacro

// If you use this before naming your rival,
// this will be an empty string.
.macro buffer_rivals_name,slot
.halfword 191
.byte slot
.endmacro

.macro buffer_friends_name,slot
.halfword 192
.byte slot
.endmacro

// For these commands, the additional argument
// is a flex arg, meaning it can be a literal
// or a variable.
.macro buffer_mon_species_name,slot,party_pos
.halfword 193
.byte slot
.halfword party_pos
.endmacro

.macro buffer_item_name,slot,item
.halfword 194
.byte slot
.halfword item
.endmacro

.macro buffer_pocket_name,slot,pocket
.halfword 195
.byte slot
.halfword pocket
.endmacro

.macro buffer_tmhm_move_name,slot,tmhm
.halfword 196
.byte slot
.halfword tmhm
.endmacro

.macro buffer_move_name,slot,move
.halfword 197
.byte slot
.halfword move
.endmacro

.macro buffer_int,slot,value
.halfword 198
.byte slot
.halfword value
.endmacro

.macro bufferpartymonnick,slot,party_pos
.halfword 199
.byte slot
.halfword party_pos
.endmacro

.macro buffer_trainer_class_name,slot,trcls
.halfword 200
.byte slot
.halfword trcls
.endmacro

.macro buffer_player_union_avatar_class_name,slot
.halfword 201
.byte slot
.endmacro

// The other two args here are unused
.macro buffer_species_name,slot,species,arg2,arg3
.halfword 202
.byte slot
.halfword species
.halfword arg2
.byte arg3
.endmacro

.macro buffer_starter_species_name,slot
.halfword 203
.byte slot
.endmacro

// These two commands are leftover from Platinum.
// As such,they are configured to check for the
// Sinnoh starters instead of the Johto starters.
// Since the player will never start with any of
// Turtwig,Chimchar,or Piplup,this command
// will always return TURTWIG,and the following
// CHIMCHAR.
// These commands are unused in HGSS.
.macro buffer_dppt_rival_starter_species_name,slot
.halfword 204
.byte slot
.endmacro

.macro buffer_dppt_friend_starter_species_name,slot
.halfword 205
.byte slot
.endmacro

// Gets your starter species into the indicated
// variable. Used to calculate which rival
// party to use.
.macro get_starter_choice,var
.halfword 206
.halfword var
.endmacro

.macro buffer_decoration_name,slot,deco
.halfword 207
.byte slot
.halfword deco
.endmacro

// Dummy
.macro scrcmd_208,slot,unk
.halfword 208
.byte slot
.halfword unk
.endmacro

.macro queue_new_repel
RunNewCommand NEW_COMMAND_QUEUE_NEW_REPEL, 0x800C
.endmacro

// Dummy
.macro scrcmd_209,slot,unk
.halfword 209
.byte slot
.halfword unk
.endmacro

.macro buffer_map_sec_name,slot,location
.halfword 210
.byte slot
.halfword location
.endmacro

.macro scrcmd_211,arg0,arg1
.halfword 211
.halfword arg0
.halfword arg1
.endmacro

// For when you talk to a trainer
.macro get_trainer_num,arg0
.halfword 212
.halfword arg0
.endmacro

.macro trainer_battle,trainer,arg1,arg2,arg3
.halfword 213
.halfword trainer
.halfword arg1
.byte arg2
.byte arg3
.endmacro

.macro trainer_message,trainer,param
.halfword 214
.halfword trainer
.halfword param
.endmacro

.macro get_trainer_msg_params,intro,after,_1poke
.halfword 215
.halfword intro
.halfword after
.halfword _1poke
.endmacro

.macro get_rematch_msg_params,arg0,arg1,arg2
.halfword 216
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro trainer_is_double_battle,arg0
.halfword 217
.halfword arg0
.endmacro

.macro encounter_music,arg0
.halfword 218
.halfword arg0
.endmacro

.macro white_out
.halfword 219
.endmacro

// Is this loss?
.macro check_battle_won,var
.halfword 220
.halfword var
.endmacro

.macro scrcmd_221,arg0,arg1
.halfword 221
.halfword arg0
.byte arg1
.endmacro

.macro party_check_for_double,arg0
.halfword 222
.halfword arg0
.endmacro

.macro scrcmd_223
.halfword 223
.endmacro

.macro scrcmd_224
.halfword 224
.endmacro

.macro goto_if_trainer_defeated,arg0
.halfword 225
.word arg0-.-4
.endmacro

.macro scrcmd_226,arg0,arg1,arg2,arg3
.halfword 226
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_227,arg0,arg1,arg2,arg3
.halfword 227
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_228,arg0
.halfword 228
.halfword arg0
.endmacro

.macro scrcmd_229,arg0
.halfword 229
.halfword arg0
.endmacro

.macro scrcmd_230
.halfword 230
.endmacro

.macro scrcmd_231
.halfword 231
.endmacro

.macro scrcmd_232,arg0
.halfword 232
.halfword arg0
.endmacro

.macro scrcmd_233,arg0
.halfword 233
.halfword arg0
.endmacro

.macro scrcmd_234,arg0,arg1,arg2,arg3
.halfword 234
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_235,arg0
.halfword 235
.halfword arg0
.endmacro

.macro scrcmd_236,arg0
.halfword 236
.halfword arg0
.endmacro

.macro scrcmd_237
.halfword 237
.endmacro

.macro party_has_pokerus,arg0
.halfword 238
.halfword arg0
.endmacro

.macro mon_get_gender,arg0,arg1
.halfword 239
.halfword arg0
.halfword arg1
.endmacro

.macro set_dynamic_warp,arg0,arg1,arg2,arg3,arg4
.halfword 240
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro get_dynamic_warp_floor_no,arg0
.halfword 241
.halfword arg0
.endmacro

.macro elevator_cur_floor_box,arg0,arg1,arg2,arg3
.halfword 242
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.endmacro

.macro count_johto_dex_seen,var
.halfword 243
.halfword var
.endmacro

.macro count_johto_dex_owned,var
.halfword 244
.halfword var
.endmacro

.macro count_national_dex_seen,var
.halfword 245
.halfword var
.endmacro

.macro count_national_dex_owned,var
.halfword 246
.halfword var
.endmacro

// Dummy
.macro scrcmd_247
.halfword 247
.endmacro

// The actual Pokedex evaluation.
// national: 0 = Johto dex, 1 = National dex
// msg: Variable to return the message ID
// fanfare: Variable to return the fanfare ID
.macro get_dex_eval_result,national,msg,fanfare
.halfword 248
.byte national
.halfword msg
.halfword fanfare
.endmacro

.macro rocket_trap_battle,arg0,arg1
.halfword 249
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_250,arg0,arg1
.halfword 250
.halfword arg0
.halfword arg1
.endmacro

.macro wild_battle_no_buttons,arg0,arg1
.halfword 250
.halfword arg0
.halfword arg1
.endmacro

.macro catching_tutorial
.halfword 251
.endmacro

.macro scrcmd_252
.halfword 252
.endmacro

.macro get_save_file_state,arg0
.halfword 253
.halfword arg0
.endmacro

.macro save_game_normal,arg0
.halfword 254
.halfword arg0
.endmacro

.macro scrcmd_255,arg0,arg1
.halfword 255
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_256,arg0
.halfword 256
.halfword arg0
.endmacro

.macro scrcmd_257,arg0
.halfword 257
.halfword arg0
.endmacro

.macro scrcmd_258
.halfword 258
.endmacro

.macro scrcmd_259,arg0
.halfword 259
.halfword arg0
.endmacro

.macro scrcmd_260,arg0
.halfword 260
.halfword arg0
.endmacro

.macro scrcmd_261,arg0
.halfword 261
.halfword arg0
.endmacro

.macro scrcmd_262
.halfword 262
.endmacro

.macro scrcmd_263
.halfword 263
.endmacro

.macro scrcmd_264,arg0
.halfword 264
.halfword arg0
.endmacro

.macro scrcmd_265
.halfword 265
.endmacro

.macro scrcmd_266
.halfword 266
.endmacro

.macro scrcmd_267,arg0,arg1
.halfword 267
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_268,arg0
.halfword 268
.halfword arg0
.endmacro

.macro scrcmd_269,arg0
.halfword 269
.halfword arg0
.endmacro

.macro scrcmd_270
.halfword 270
.endmacro

.macro scrcmd_271,arg0,arg1
.halfword 271
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_272,arg0
.halfword 272
.halfword arg0
.endmacro

.macro scrcmd_273,arg0
.halfword 273
.halfword arg0
.endmacro

.macro scrcmd_274,arg0,arg1
.halfword 274
.halfword arg0
.halfword arg1
.endmacro

.macro mart_buy,arg0
.halfword 275
.halfword arg0
.endmacro

.macro special_mart_buy,arg0
.halfword 276
.halfword arg0
.endmacro

.macro decoration_mart,arg0
.halfword 277
.halfword arg0
.endmacro

.macro seal_mart,arg0
.halfword 278
.halfword arg0
.endmacro

// Used with poison faint,but due to overworld
// poison mechanics in gen 4,this is
// never reached.
.macro overworld_white_out
.halfword 279
.endmacro

.macro set_spawn,arg0
.halfword 280
.halfword arg0
.endmacro

// Are you a boy? Or are you a girl?
.macro get_player_gender,var
.halfword 281
.halfword var
.endmacro

.macro heal_party
.halfword 282
.endmacro

.macro scrcmd_283
.halfword 283
.endmacro

.macro scrcmd_284
.halfword 284
.endmacro

.macro scrcmd_285,arg0
.halfword 285
.halfword arg0
.endmacro

.macro scrcmd_286
.halfword 286
.endmacro

.macro scrcmd_287
.halfword 287
.endmacro

.macro scrcmd_288,arg0,arg1
.halfword 288
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_289,arg0
.halfword 289
.halfword arg0
.endmacro

.macro check_pokedex,arg0
.halfword 290
.halfword arg0
.endmacro

.macro give_pokedex
.halfword 291
.endmacro

.macro check_running_shoes,arg0
.halfword 292
.halfword arg0
.endmacro

.macro give_running_shoes
.halfword 293
.endmacro

// badges
BADGE_ZEPHYR   equ  0
BADGE_HIVE     equ  1
BADGE_PLAIN    equ  2
BADGE_FOG      equ  3
BADGE_STORM    equ  4
BADGE_MINERAL  equ  5
BADGE_GLACIER  equ  6
BADGE_RISING   equ  7

BADGE_BOULDER  equ  8
BADGE_CASCADE  equ  9
BADGE_THUNDER  equ 10
BADGE_RAINBOW  equ 11
BADGE_SOUL     equ 12
BADGE_MARSH    equ 13
BADGE_VOLCANO  equ 14
BADGE_EARTH    equ 15

.macro check_badge,badge,var
.halfword 294
.halfword badge
.halfword var
.endmacro

.macro give_badge,badge
.halfword 295
.halfword badge
.endmacro

// This command is never used because it is
// assumed that you cannot get the 8th badge
// before the other 7,or the 16th before the
// other 15. This assumption does not account
// for tweaking.
.macro count_badges,var
.halfword 296
.halfword var
.endmacro

.macro scrcmd_297,arg0
.halfword 297
.halfword arg0
.endmacro

.macro scrcmd_298
.halfword 298
.endmacro

.macro check_escort_mode,arg0
.halfword 299
.halfword arg0
.endmacro

.macro set_escort_mode
.halfword 300
.endmacro

.macro clear_escort_mode
.halfword 301
.endmacro

.macro scrcmd_302,arg0
.halfword 302
.halfword arg0
.endmacro

.macro scrcmd_303
.halfword 303
.endmacro

.macro scrcmd_304
.halfword 304
.endmacro

.macro scrcmd_305,arg0
.halfword 305
.halfword arg0
.endmacro

.macro scrcmd_306
.halfword 306
.endmacro

.macro scrcmd_307,arg0,arg1,arg2,arg3,arg4
.halfword 307
.halfword arg0 // matrix x
.halfword arg1 // matrix y
.halfword arg2 // map x
.halfword arg3 // map y
.byte arg4     // door id
.endmacro

.macro prepare_door_animation,arg0,arg1,arg2,arg3,arg4
.halfword 307
.halfword arg0 // matrix x
.halfword arg1 // matrix y
.halfword arg2 // map x
.halfword arg3 // map y
.byte arg4     // door id
.endmacro

.macro scrcmd_308,arg0
.halfword 308
.byte arg0     // door id
.endmacro

.macro wait_door_animation,arg0
.halfword 308
.byte arg0     // door id
.endmacro

.macro scrcmd_309,arg0
.halfword 309
.byte arg0     // door id
.endmacro

.macro free_door_animation,arg0
.halfword 309
.byte arg0     // door id
.endmacro

.macro scrcmd_310,arg0
.halfword 310
.byte arg0     // door id
.endmacro

.macro open_door_animation,arg0
.halfword 310
.byte arg0     // door id
.endmacro

.macro scrcmd_311,arg0
.halfword 311
.byte arg0     // door id
.endmacro

.macro close_door_animation,arg0
.halfword 311
.byte arg0     // door id
.endmacro

.macro buffer_day_care_mon_nicks
.halfword 312
.endmacro

.macro get_day_care_state,arg0
.halfword 313
.halfword arg0
.endmacro

.macro ecruteak_gym_init
.halfword 314
.endmacro

.macro scrcmd_315
.halfword 315
.endmacro

.macro scrcmd_316
.halfword 316
.endmacro

.macro scrcmd_317,arg0
.halfword 317
.byte arg0
.endmacro

.macro cianwood_gym_init
.halfword 318
.endmacro

.macro cianwood_gym_turn_winch,arg0
.halfword 319
.halfword arg0
.endmacro

.macro vermilion_gym_init
.halfword 320
.endmacro

.macro vermilion_gym_lock_action,arg0,arg1
.halfword 321
.byte arg0
.byte arg1
.endmacro

.macro vermilion_gym_can_check,arg0,arg1
.halfword 322
.byte arg0
.halfword arg1
.endmacro

.macro resample_vermilion_gym_cans
.halfword 323
.endmacro

.macro violet_gym_init
.halfword 324
.endmacro

.macro violet_gym_elevator
.halfword 325
.endmacro

.macro azalea_gym_init
.halfword 326
.endmacro

.macro azalea_gym_spinarak,arg0
.halfword 327
.byte arg0
.endmacro

.macro azalea_gym_switch,arg0
.halfword 328
.byte arg0
.endmacro

.macro blackthorn_gym_init
.halfword 329
.endmacro

.macro fuchsia_gym_init
.halfword 330
.endmacro

.macro viridian_gym_init
.halfword 331
.endmacro

.macro get_party_count,var
.halfword 332
.halfword var
.endmacro

.macro scrcmd_333,arg0
.halfword 333
.byte arg0
.endmacro

.macro scrcmd_334,arg0
.halfword 334
.halfword arg0
.endmacro

.macro scrcmd_335,arg0,arg1
.halfword 335
.halfword arg0
.halfword arg1
.endmacro

.macro buffer_berry_name,slot,item,quantity
.halfword 336
.byte slot
.halfword item
.halfword quantity
.endmacro

.macro buffer_nature_name,slot,nature
.halfword 337
.byte slot
.halfword nature
.endmacro

.macro move_person,arg0,arg1,arg2
.halfword 338
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro move_person_facing,person,x,z,y,facing
.halfword 339
.halfword person
.halfword x
.halfword z
.halfword y
.halfword facing
.endmacro

.macro set_object_movement_type,arg0,arg1
.halfword 340
.halfword arg0
.halfword arg1
.endmacro

.macro set_object_facing,arg0,arg1
.halfword 341
.halfword arg0
.halfword arg1
.endmacro

.macro move_warp,arg0,arg1,arg2
.halfword 342
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro move_bg_event,arg0,arg1,arg2
.halfword 343
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_344,arg0,arg1
.halfword 344
.halfword arg0
.halfword arg1
.endmacro

.macro add_waiting_icon
.halfword 345
.endmacro

.macro remove_waiting_icon
.halfword 346
.endmacro

.macro scrcmd_347,arg0
.halfword 347
.halfword arg0
.endmacro

.macro wait_button_or_delay,arg0
.halfword 348
.halfword arg0
.endmacro

.macro party_select_ui
.halfword 349
.endmacro

.macro scrcmd_350
.halfword 350
.endmacro

.macro get_party_selection,arg0
.halfword 351
.halfword arg0
.endmacro

.macro choose_move_ui,arg0,arg1,arg2
.halfword 352
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro get_move_selection,arg0,arg1
.halfword 353
.byte arg0
.halfword arg1
.endmacro

.macro get_partymon_species,slot,var
.halfword 354
.halfword slot
.halfword var
.endmacro

.macro partymon_is_mine,slot,var
.halfword 355
.halfword slot
.halfword var
.endmacro

.macro party_count_not_egg,var
.halfword 356
.halfword var
.endmacro

// Count Pokemon that are not fainted.
// If except is set, exclude that slot
// from the tally. Use 6 to disable.
.macro count_alive_mons,var,except
.halfword 357
.halfword var
.halfword except
.endmacro

.macro count_alive_mons_and_pc,arg0
.halfword 358
.halfword arg0
.endmacro

.macro party_count_egg,arg0
.halfword 359
.halfword arg0
.endmacro

.macro submoneyvar,var
.halfword 360
.halfword var
.endmacro

.macro retrieve_day_care_mon,arg0,arg1
.halfword 361
.halfword arg0
.halfword arg1
.endmacro

.macro give_loan_mon,arg0,arg1,arg2
.halfword 362
.byte arg0
.byte arg1
.halfword arg2
.endmacro

.macro check_return_loan_mon,arg0,arg1,arg2
.halfword 363
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro return_loan_mon,arg0
.halfword 364
.halfword arg0
.endmacro

.macro reset_day_care_egg
.halfword 365
.endmacro

.macro give_day_care_egg
.halfword 366
.endmacro

.macro buffer_day_care_withdraw_cost,arg0,arg1
.halfword 367
.halfword arg0
.halfword arg1
.endmacro

.macro hasenoughmoneyvar,var,amount
.halfword 368
.halfword var
.halfword amount
.endmacro

.macro egg_hatch_anim
.halfword 369
.endmacro

.macro scrcmd_370,arg0
.halfword 370
.byte arg0
.endmacro

.macro buffer_day_care_mon_growth,arg0,arg1
.halfword 371
.halfword arg0
.halfword arg1
.endmacro

.macro get_tail_day_care_mon_species_and_nick,arg0
.halfword 372
.halfword arg0
.endmacro

.macro put_mon_in_day_care,arg0
.halfword 373
.halfword arg0
.endmacro

.macro scrcmd_374,arg0
.halfword 374
.halfword arg0
.endmacro

.macro scrcmd_375,arg0
.halfword 375
.halfword arg0
.endmacro

.macro scrcmd_376
.halfword 376
.endmacro

.macro scrcmd_377,arg0
.halfword 377
.halfword arg0
.endmacro

.macro scrcmd_378,arg0,arg1
.halfword 378
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_379,arg0
.halfword 379
.halfword arg0
.endmacro

.macro random,arg0,arg1
.halfword 380
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_381,arg0,arg1
.halfword 381
.halfword arg0
.halfword arg1
.endmacro

.macro mon_get_friendship,arg0,arg1
.halfword 382
.halfword arg0
.halfword arg1
.endmacro

.macro mon_add_friendship,arg0,arg1
.halfword 383
.halfword arg0
.halfword arg1
.endmacro

.macro mon_subtract_friendship,arg0,arg1
.halfword 384
.halfword arg0
.halfword arg1
.endmacro

.macro buffer_day_care_mon_stats,arg0,arg1,arg2,arg3
.halfword 385
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro get_player_facing,arg0
.halfword 386
.halfword arg0
.endmacro

.macro get_day_care_compatibility,arg0
.halfword 387
.halfword arg0
.endmacro

.macro check_day_care_egg,arg0
.halfword 388
.halfword arg0
.endmacro

.macro player_has_species,arg0,arg1
.halfword 389
.halfword arg0
.halfword arg1
.endmacro

.macro size_record_compare,arg0,arg1
.halfword 390
.halfword arg0
.halfword arg1
.endmacro

.macro size_record_update,arg0
.halfword 391
.halfword arg0
.endmacro

.macro buffer_mon_size,arg0,arg1,arg2
.halfword 392
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro buffer_record_size,arg0,arg1,arg2
.halfword 393
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_394,arg0
.halfword 394
.halfword arg0
.endmacro

.macro scrcmd_395,arg0
.halfword 395
.halfword arg0
.endmacro

.macro count_mon_moves,arg0,arg1
.halfword 396
.halfword arg0
.halfword arg1
.endmacro

.macro mon_forget_move,arg0,arg1
.halfword 397
.halfword arg0
.halfword arg1
.endmacro

.macro mon_get_move,arg0,arg1,arg2
.halfword 398
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro buffer_party_mon_move_name,slot,party_pos,move_pos
.halfword 399
.byte slot
.halfword party_pos
.halfword move_pos
.endmacro

// action = 0: Deactivate strength
// action = 1: Activate strength
// action = 2: Check whether strength is active
.macro strength_flag_action,action,var
.halfword 400
.byte action
.if action == 2
.halfword var
.endif
.endmacro

.macro flash_action,action,var
.halfword 401
.byte action
.if action == 2
.halfword var
.endif
.endmacro

.macro defog_action,action,var
.halfword 402
.byte action
.if action == 2
.halfword var
.endif
.endmacro

.macro scrcmd_403,arg0,arg1
.halfword 403
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_404,arg0,arg1,arg2
.halfword 404
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_405,arg0,arg1,arg2
.halfword 405
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_406,arg0
.halfword 406
.halfword arg0
.endmacro

.macro scrcmd_407,arg0,arg1
.halfword 407
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_408,arg0,arg1
.halfword 408
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_409
.halfword 409
.endmacro

.macro scrcmd_410,arg0,arg1
.halfword 410
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_411
.halfword 411
.endmacro

.macro scrcmd_412,arg0,arg1,arg2
.halfword 412
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_413,arg0,arg1,arg2,arg3
.halfword 413
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_414,arg0
.halfword 414
.halfword arg0
.endmacro

.macro scrcmd_415,arg0
.halfword 415
.halfword arg0
.endmacro

.macro scrcmd_416,arg0,arg1,arg2
.halfword 416
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_417,arg0,arg1
.halfword 417
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_418,arg0,arg1
.halfword 418
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_419,arg0
.halfword 419
.halfword arg0
.endmacro

.macro scrcmd_420,arg0
.halfword 420
.halfword arg0
.endmacro

.macro scrcmd_421,arg0,arg1,arg2
.halfword 421
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_422,arg0,arg1,arg2,arg3
.halfword 422
.halfword arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro check_johto_dex_complete,arg0
.halfword 423
.halfword arg0
.endmacro

.macro check_national_dex_complete,arg0
.halfword 424
.halfword arg0
.endmacro

.macro scrcmd_425,arg0
.halfword 425
.halfword arg0
.endmacro

.macro kenya_check,arg0,arg1,arg2
.halfword 426
.halfword arg0
.halfword arg1
.byte arg2
.endmacro

.macro scrcmd_427,arg0
.halfword 427
.halfword arg0
.endmacro

.macro mon_give_mail,arg0
.halfword 428
.halfword arg0
.endmacro

.macro countfossils,arg0
.halfword 429
.halfword arg0
.endmacro

.macro set_phone_call,arg0,arg1,arg2
.halfword 430
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro run_phone_call
.halfword 431
.endmacro

.macro getfossilpokemon,arg0,arg1
.halfword 432
.halfword arg0
.halfword arg1
.endmacro

.macro getfossilminimumamount,arg0,arg1,arg2
.halfword 433
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro party_count_mons_at_or_below_level,arg0,arg1
.halfword 434
.halfword arg0
.halfword arg1
.endmacro

.macro survive_poisoning,arg0,arg1
.halfword 435
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_436
.halfword 436
.endmacro

.macro debugwatch,arg0
.halfword 437
.halfword arg0
.endmacro

.macro get_std_msg_naix,arg0,arg1
.halfword 438
.halfword arg0
.halfword arg1
.endmacro

.macro non_npc_msg_extern,arg0,arg1
.halfword 439
.halfword arg0
.halfword arg1
.endmacro

.macro msgbox_extern,arg0,arg1
.halfword 440
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_441,arg0,arg1,arg2,arg3
.halfword 441
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_442,arg0,arg1,arg2,arg3
.halfword 442
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_443,arg0
.halfword 443
.byte arg0
.endmacro

.macro scrcmd_444,arg0,arg1,arg2,arg3
.halfword 444
.byte arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro scrcmd_445,arg0
.halfword 445
.halfword arg0
.endmacro

.macro scrcmd_446,arg0
.halfword 446
.halfword arg0
.endmacro

.macro safari_zone_action,arg0,arg1
.halfword 447
.byte arg0
.byte arg1
.endmacro

.macro scrcmd_448,arg0,arg1,arg2,arg3,arg4
.halfword 448
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scrcmd_449
.halfword 449
.endmacro

.macro scrcmd_450
.halfword 450
.endmacro

.macro scrcmd_451,arg0
.halfword 451
.halfword arg0
.endmacro

.macro scrcmd_452,arg0,arg1
.halfword 452
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_453
.halfword 453
.endmacro

.macro scrcmd_454
.halfword 454
.endmacro

.macro scrcmd_455
.halfword 455
.endmacro

.macro scrcmd_456,arg0
.halfword 456
.byte arg0
.endmacro

.macro mon_get_nature,arg0,arg1
.halfword 457
.halfword arg0
.halfword arg1
.endmacro

.macro get_party_slot_with_nature,arg0,arg1
.halfword 458
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_459
.halfword 459
.endmacro

.macro load_phone_dat,arg0,arg1
.halfword 460
.halfword arg0
.halfword arg1
.endmacro

.macro get_phone_contact_msg_ids,arg0,arg1,arg2
.halfword 461
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_462,arg0
.halfword 462
.halfword arg0
.endmacro

.macro enable_mass_outbreaks
.halfword 463
.endmacro

.macro create_roamer,arg0
.halfword 464
.byte arg0
.endmacro

.macro scrcmd_465,arg0,arg1,arg2
.halfword 465
.halfword arg0
.if arg0 <= 3
    .halfword arg1
    .halfword arg2
.else
    .if arg0 != 6
        .halfword arg1
    .endif
.endif
.endmacro

.macro scrcmd_466,arg0,arg1
.halfword 466
.halfword arg0
.halfword arg1
.endmacro

.macro move_relearner_init,arg0
.halfword 467
.halfword arg0
.endmacro

.macro move_tutor_init,arg0,arg1
.halfword 468
.halfword arg0
.halfword arg1
.endmacro

.macro move_relearner_get_result,arg0
.halfword 469
.halfword arg0
.endmacro

.macro load_npc_trade,arg0
.halfword 470
.byte arg0
.endmacro

.macro get_offered_species,arg0
.halfword 471
.halfword arg0
.endmacro

.macro npc_trade_get_req_species,arg0
.halfword 472
.halfword arg0
.endmacro

.macro npc_trade_exec,arg0
.halfword 473
.halfword arg0
.endmacro

.macro npc_trade_end
.halfword 474
.endmacro

.macro scrcmd_475
.halfword 475
.endmacro

.macro scrcmd_476
.halfword 476
.endmacro

.macro nat_dex_flag_action,arg0,arg1
.halfword 477
.byte arg0
.halfword arg1
.endmacro

.macro mon_get_ribbon_count,arg0,arg1
.halfword 478
.halfword arg0
.halfword arg1
.endmacro

.macro party_get_ribbon_count,arg0
.halfword 479
.halfword arg0
.endmacro

.macro mon_has_ribbon,arg0,arg1,arg2
.halfword 480
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro


RIBBON_HOENN_CHAMPION         equ  0
RIBBON_HOENN_COOL             equ  1
RIBBON_HOENN_COOL_SUPER       equ  2
RIBBON_HOENN_COOL_HYPER       equ  3
RIBBON_HOENN_COOL_MASTER      equ  4
RIBBON_HOENN_BEAUTY           equ  5
RIBBON_HOENN_BEAUTY_SUPER     equ  6
RIBBON_HOENN_BEAUTY_HYPER     equ  7
RIBBON_HOENN_BEAUTY_MASTER    equ  8
RIBBON_HOENN_CUTE             equ  9
RIBBON_HOENN_CUTE_SUPER       equ 10
RIBBON_HOENN_CUTE_HYPER       equ 11
RIBBON_HOENN_CUTE_MASTER      equ 12
RIBBON_HOENN_SMART            equ 13
RIBBON_HOENN_SMART_SUPER      equ 14
RIBBON_HOENN_SMART_HYPER      equ 15
RIBBON_HOENN_SMART_MASTER     equ 16
RIBBON_HOENN_TOUGH            equ 17
RIBBON_HOENN_TOUGH_SUPER      equ 18
RIBBON_HOENN_TOUGH_HYPER      equ 19
RIBBON_HOENN_TOUGH_MASTER     equ 20
RIBBON_HOENN_WINNING          equ 21
RIBBON_HOENN_VICTORY          equ 22
RIBBON_HOENN_ARTIST           equ 23
RIBBON_HOENN_EFFORT           equ 24
RIBBON_HOENN_MARINE           equ 25
RIBBON_HOENN_LAND             equ 26
RIBBON_HOENN_SKY              equ 27
RIBBON_HOENN_COUNTRY          equ 28
RIBBON_HOENN_NATIONAL         equ 29
RIBBON_HOENN_EARTH            equ 30
RIBBON_HOENN_WORLD            equ 31
RIBBON_SINNOH_CHAMP           equ 32
RIBBON_COOL                   equ 33
RIBBON_COOL_GREAT             equ 34
RIBBON_COOL_ULTRA             equ 35
RIBBON_COOL_MASTER            equ 36
RIBBON_BEAUTY                 equ 37
RIBBON_BEAUTY_GREAT           equ 38
RIBBON_BEAUTY_ULTRA           equ 39
RIBBON_BEAUTY_MASTER          equ 40
RIBBON_CUTE                   equ 41
RIBBON_CUTE_GREAT             equ 42
RIBBON_CUTE_ULTRA             equ 43
RIBBON_CUTE_MASTER            equ 44
RIBBON_SMART                  equ 45
RIBBON_SMART_GREAT            equ 46
RIBBON_SMART_ULTRA            equ 47
RIBBON_SMART_MASTER           equ 48
RIBBON_TOUGH                  equ 49
RIBBON_TOUGH_GREAT            equ 50
RIBBON_TOUGH_ULTRA            equ 51
RIBBON_TOUGH_MASTER           equ 52
RIBBON_ABILITY                equ 53
RIBBON_GREAT_ABILITY          equ 54
RIBBON_DOUBLE_ABILITY         equ 55
RIBBON_MULTI_ABILITY          equ 56
RIBBON_PAIR_ABILITY           equ 57
RIBBON_WORLD_ABILITY          equ 58
RIBBON_ALERT                  equ 59
RIBBON_SHOCK                  equ 60
RIBBON_DOWNCAST               equ 61
RIBBON_CARELESS               equ 62
RIBBON_RELAX                  equ 63
RIBBON_SNOOZE                 equ 64
RIBBON_SMILE                  equ 65
RIBBON_GORGEOUS               equ 66
RIBBON_ROYAL                  equ 67
RIBBON_GORGEOUS_ROYAL         equ 68
RIBBON_FOOTPRINT              equ 69
RIBBON_RECORD                 equ 70
RIBBON_HISTORY                equ 71
RIBBON_LEGEND                 equ 72
RIBBON_RED                    equ 73
RIBBON_GREEN                  equ 74
RIBBON_BLUE                   equ 75
RIBBON_FESTIVAL               equ 76
RIBBON_CARNIVAL               equ 77
RIBBON_CLASSIC                equ 78
RIBBON_PREMIER                equ 79
RIBBON_MAX                    equ 80

.macro give_ribbon,arg0,arg1
.halfword 481
.halfword arg0
.halfword arg1
.endmacro

.macro buffer_ribbon_name,arg0,arg1
.halfword 482
.byte arg0
.halfword arg1
.endmacro

.macro get_ev_total,arg0,arg1
.halfword 483
.halfword arg0
.halfword arg1
.endmacro

.macro get_weekday,arg0
.halfword 484
.halfword arg0
.endmacro

.macro scrcmd_485,arg0
.halfword 485
.halfword arg0
.endmacro

.macro dummy_486
.halfword 486
.endmacro

.macro pokecen_anim,arg0
.halfword 487
.halfword arg0
.endmacro

.macro elevator_anim,direction,distance
.halfword 488
.halfword direction
.halfword distance
.endmacro

.macro mystery_gift,arg0,arg1,arg2
.halfword 489
.halfword arg0
.if arg0 >= 1 && arg0 <= 3
    .halfword arg1
.else
    .if arg0 == 5 || arg0 == 6
        .halfword arg1
        .halfword arg2
    .endif
.endif
.endmacro

.macro nop_var_490,arg0
.halfword 490
.halfword arg0
.endmacro

.macro scrcmd_491,arg0
.halfword 491
.halfword arg0
.endmacro

.macro scrcmd_492,arg0,arg1,arg2
.halfword 492
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro prompt_easy_chat,arg0,arg1,arg2
.halfword 493
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_494,arg0,arg1
.halfword 494
.halfword arg0
.halfword arg1
.endmacro

.macro get_game_version,arg0
.halfword 495
.halfword arg0
.endmacro

.macro get_party_lead,arg0
.halfword 496
.halfword arg0
.endmacro

.macro get_mon_types,arg0,arg1,arg2
.halfword 497
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro primo_password_check_1,arg0,arg1,arg2,arg3,arg4
.halfword 498
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro primo_password_check_2,arg0,arg1,arg2,arg3,arg4
.halfword 499
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scrcmd_500,arg0
.halfword 500
.byte arg0
.endmacro

.macro scrcmd_501,arg0
.halfword 501
.byte arg0
.endmacro

.macro scrcmd_502,arg0
.halfword 502
.byte arg0
.endmacro

.macro loto_id_get,arg0
.halfword 503
.halfword arg0
.endmacro

.macro loto_id_search,arg0,arg1,arg2,arg3
.halfword 504
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro loto_id_set
.halfword 505
.endmacro

.macro bufferboxmonnick,arg0,arg1
.halfword 506
.byte arg0
.halfword arg1
.endmacro

.macro count_pc_empty_space,arg0
.halfword 507
.halfword arg0
.endmacro

.macro scrcmd_508,arg0
.halfword 508
.halfword arg0
.endmacro

.macro scrcmd_509,arg0
.halfword 509
.halfword arg0
.endmacro

.macro scrcmd_510
.halfword 510
.endmacro

.macro pal_park_score_get,arg0,arg1
.halfword 511
.halfword arg0
.halfword arg1
.endmacro

.macro player_movement_saving_set
.halfword 512
.endmacro

.macro player_movement_saving_clear
.halfword 513
.endmacro

// Animate placing the balls on the machine
// for the Hall of Fame
.macro hall_of_fame_anim,num
.halfword 514
.halfword num
.endmacro

.macro add_special_game_stat,arg0
.halfword 515
.halfword arg0
.endmacro

.macro buffer_fashion_name,arg0,arg1
.halfword 516
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_517,arg0,arg1
.halfword 517
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_518,arg0
.halfword 518
.halfword arg0
.endmacro

.macro scrcmd_519,arg0
.halfword 519
.halfword arg0
.endmacro

.macro scrcmd_520
.halfword 520
.endmacro

.macro scrcmd_521
.halfword 521
.endmacro

.macro scrcmd_522,arg0
.halfword 522
.halfword arg0
.endmacro

.macro scrcmd_523,arg0,arg1,arg2,arg3,arg4
.halfword 523
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scrcmd_524,arg0,arg1,arg2
.halfword 524
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_525,arg0
.halfword 525
.halfword arg0
.endmacro

.macro scrcmd_526,arg0
.halfword 526
.halfword arg0
.endmacro

.macro scrcmd_527,arg0
.halfword 527
.halfword arg0
.endmacro

.macro scrcmd_528,arg0
.halfword 528
.halfword arg0
.endmacro

.macro get_party_lead_alive,arg0
.halfword 529
.halfword arg0
.endmacro

.macro scrcmd_530,arg0,arg1
.halfword 530
.halfword arg0
.byte arg1
.endmacro

.macro buffer_background_name,arg0,arg1
.halfword 531
.byte arg0
.halfword arg1
.endmacro

.macro check_coins_immediate,arg0,arg1
.halfword 532
.halfword arg0
.word arg1
.endmacro

.macro checkgivecoins,arg0,arg1
.halfword 533
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_534,arg0
.halfword 534
.halfword arg0
.endmacro

.macro mon_get_level,arg0,arg1
.halfword 535
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_536,arg0,arg1
.halfword 536
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_537
.halfword 537
.endmacro

.macro scrcmd_538,arg0,arg1
.halfword 538
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_539,arg0
.halfword 539
.halfword arg0
.endmacro

.macro scrcmd_540,arg0
.halfword 540
.halfword arg0
.endmacro

.macro buffer_int_ex,arg0,arg1,arg2,arg3
.halfword 541
.byte arg0
.halfword arg1
.byte arg2
.byte arg3
.endmacro

.macro mon_get_contest_value,arg0,arg1,arg2
.halfword 542
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_543,arg0
.halfword 543
.halfword arg0
.endmacro

.macro scrcmd_544,arg0,arg1
.halfword 544
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_545,arg0
.halfword 545
.halfword arg0
.endmacro

.macro scrcmd_546,arg0,arg1
.halfword 546
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_547,arg0
.halfword 547
.halfword arg0
.endmacro

.macro scrcmd_548
.halfword 548
.endmacro

.macro scrcmd_549,arg0
.halfword 549
.halfword arg0
.endmacro

.macro scrcmd_550,arg0
.halfword 550
.halfword arg0
.endmacro

.macro scrcmd_551,arg0
.halfword 551
.halfword arg0
.endmacro

.macro scrcmd_552,arg0,arg1
.halfword 552
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_553,arg0,arg1
.halfword 553
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_554,arg0
.halfword 554
.halfword arg0
.endmacro

.macro scrcmd_555,arg0
.halfword 555
.halfword arg0
.endmacro

.macro scrcmd_556,arg0
.halfword 556
.halfword arg0
.endmacro

.macro check_battle_points,arg0,arg1
.halfword 557
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_558,arg0,arg1
.halfword 558
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_559,arg0,arg1
.halfword 559
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_560,arg0,arg1
.halfword 560
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_561,arg0,arg1,arg2,arg3
.halfword 561
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro multi_battle,arg0,arg1,arg2,arg3
.halfword 562
.halfword arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro scrcmd_563,arg0,arg1,arg2
.halfword 563
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_564,arg0
.halfword 564
.halfword arg0
.endmacro

.macro scrcmd_565,arg0
.halfword 565
.halfword arg0
.endmacro

.macro scrcmd_566
.halfword 566
.endmacro

.macro getdpplprizeitemidandcost,arg0,arg1,arg2
.halfword 567
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_568,arg0,arg1
.halfword 568
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_569,arg0
.halfword 569
.halfword arg0
.endmacro

.macro check_coins_var,arg0,arg1
.halfword 570
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_571,arg0,arg1,arg2,arg3,arg4
.halfword 571
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scrcmd_572,arg0
.halfword 572
.halfword arg0
.endmacro

.macro scrcmd_573
.halfword 573
.endmacro

.macro scrcmd_574,arg0,arg1
.halfword 574
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_575,arg0,arg1
.halfword 575
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_576,arg0
.halfword 576
.halfword arg0
.endmacro

.macro scrcmd_577
.halfword 577
.endmacro

.macro scrcmd_578
.halfword 578
.endmacro

.macro scrcmd_579
.halfword 579
.endmacro

.macro buffer_seal_name,arg0,arg1
.halfword 580
.byte arg0
.halfword arg1
.endmacro

.macro lock_last_talked
.halfword 581
.endmacro

.macro scrcmd_582,arg0,arg1,arg2
.halfword 582
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_583,arg0,arg1
.halfword 583
.halfword arg0
.byte arg1
.endmacro

.macro party_legal_check,arg0
.halfword 584
.halfword arg0
.endmacro

.macro scrcmd_585
.halfword 585
.endmacro

.macro scrcmd_586,arg0
.halfword 586
.halfword arg0
.endmacro

.macro scrcmd_587
.halfword 587
.endmacro

.macro scrcmd_588,arg0
.halfword 588
.halfword arg0
.endmacro

.macro wild_battle,species,level,shiny
.halfword 589
.halfword species
.halfword level
.byte shiny
.endmacro

.macro get_trcard_stars,arg0
.halfword 590
.halfword arg0
.endmacro

.macro scrcmd_591
.halfword 591
.endmacro

.macro scrcmd_592,arg0
.halfword 592
.halfword arg0
.endmacro

.macro show_save_stats
.halfword 593
.endmacro

.macro hide_save_stats
.halfword 594
.endmacro

.macro scrcmd_595,arg0
.halfword 595
.byte arg0
.endmacro

.macro scrcmd_596,arg0
.halfword 596
.halfword arg0
.endmacro

.macro scrcmd_597
.halfword 597
.endmacro

.macro scrcmd_598,arg0
.halfword 598
.halfword arg0
.endmacro

.macro scrcmd_599
.halfword 599
.endmacro

.macro scrcmd_600
.halfword 600
.endmacro

.macro send_follower_to_ball
.halfword 600
.endmacro

.macro follow_poke_face_player
.halfword 601
.endmacro

.macro scrcmd_602,arg0
.halfword 602
.halfword arg0
.endmacro

.macro scrcmd_603
.halfword 603
.endmacro

.macro scrcmd_604,arg0
.halfword 604
.halfword arg0
.endmacro

.macro scrcmd_605,arg0,arg1
.halfword 605
.byte arg0
.byte arg1
.endmacro

.macro scrcmd_606
.halfword 606
.endmacro

.macro reset_follower_with_ball
.halfword 606
.endmacro

.macro scrcmd_607
.halfword 607
.endmacro

.macro reset_follower_without_ball
.halfword 607
.endmacro

.macro scrcmd_608
.halfword 608
.endmacro

.macro scrcmd_609
.halfword 609
.endmacro

.macro scrcmd_610,arg0
.halfword 610
.halfword arg0
.endmacro

.macro pokeathlon,arg0,arg1,arg2,arg3,arg4,arg5,arg6
.halfword 611
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.halfword arg4
.halfword arg5
.halfword arg6
.endmacro

.macro get_npc_trade_unused_flag,arg0
.halfword 612
.halfword arg0
.endmacro

.macro get_phone_contact_random_gift_berry,arg0
.halfword 613
.halfword arg0
.endmacro

.macro get_phone_contact_gift_item,arg0
.halfword 614
.halfword arg0
.endmacro

.macro cameron_photo,arg0
.halfword 615
.halfword arg0
.endmacro

.macro scrcmd_616,arg0
.halfword 616
.halfword arg0
.endmacro

.macro scrcmd_617
.halfword 617
.endmacro

.macro photo_album_is_full,arg0
.halfword 618
.halfword arg0
.endmacro

.macro rocket_costume_flag_check,arg0
.halfword 619
.halfword arg0
.endmacro

.macro rocket_costume_flag_action,arg0
.halfword 620
.byte arg0
.endmacro

.macro scrcmd_621
.halfword 621
.endmacro

.macro scrcmd_622,arg0,arg1
.halfword 622
.halfword arg0
.halfword arg1
.endmacro

.macro anim_apricorn_tree,arg0
.halfword 623
.halfword arg0
.endmacro

.macro apricorn_tree_get_apricorn,arg0
.halfword 624
.halfword arg0
.endmacro

.macro give_apricorn_from_tree,arg0,arg1,arg2
.halfword 625
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro buffer_apricorn_name,arg0,arg1
.halfword 626
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_627,arg0
.halfword 627
.byte arg0
.endmacro

.macro scrcmd_628,arg0,arg1
.halfword 628
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_629
.halfword 629
.endmacro

.macro scrcmd_630,arg0
.halfword 630
.halfword arg0
.endmacro

.macro scrcmd_631,arg0,arg1,arg2
.halfword 631
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro count_party_mons_of_species,arg0,arg1
.halfword 632
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_633,arg0,arg1,arg2
.halfword 633
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_634,arg0,arg1
.halfword 634
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_635,arg0,arg1
.halfword 635
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_636,arg0
.halfword 636
.halfword arg0
.endmacro

.macro scrcmd_637,arg0,arg1,arg2
.halfword 637
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_638,arg0,arg1,arg2
.halfword 638
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_639,arg0,arg1,arg2
.halfword 639
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_640,arg0
.halfword 640
.halfword arg0
.endmacro

.macro save_wipe_extra_chunks
.halfword 641
.endmacro

.macro scrcmd_642,arg0
.halfword 642
.halfword arg0
.endmacro

.macro scrcmd_643,arg0,arg1,arg2
.halfword 643
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_644,arg0,arg1,arg2
.halfword 644
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_645,arg0,arg1,arg2
.halfword 645
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_646,arg0
.halfword 646
.halfword arg0
.endmacro

.macro get_party_slot_with_species,arg0,arg1
.halfword 647
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_648,arg0,arg1,arg2,arg3,arg4
.halfword 648
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scratch_off_card
.halfword 649
.endmacro

.macro scratch_off_card_end
.halfword 650
.endmacro

.macro get_scratch_off_prize,arg0,arg1,arg2
.halfword 651
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_652,arg0,arg1,arg2
.halfword 652
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro move_tutor_choose_move,mon_slot,tutor_no,arg2,arg3
.halfword 653
.halfword mon_slot
.halfword tutor_no
.halfword arg2
.halfword arg3
.endmacro

.macro tutor_move_teach_in_slot,party_slot,move_slot,move
.halfword 654
.halfword party_slot
.halfword move_slot
.halfword move
.endmacro

.macro tutor_move_get_price,arg0,arg1
.halfword 655
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_656,arg0,arg1
.halfword 656
.halfword arg0
.halfword arg1
.endmacro

.macro stat_judge,mon_slot,iv_sum,best_stat,best_iv
.halfword 657
.halfword mon_slot
.halfword iv_sum
.halfword best_stat
.halfword best_iv
.endmacro

.macro buffer_stat_name,arg0,arg1
.halfword 658
.byte arg0
.halfword arg1
.endmacro

.macro set_mon_forme,arg0,arg1
.halfword 659
.halfword arg0
.halfword arg1
.endmacro

.macro buffer_trainer_name,arg0,arg1
.halfword 660
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_661,arg0,arg1,arg2,arg3
.halfword 661
.byte arg0
.word arg1
.byte arg2
.byte arg3
.endmacro

.macro scrcmd_662,arg0,arg1,arg2
.halfword 662
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_663,arg0
.halfword 663
.halfword arg0
.endmacro

.macro scrcmd_664
.halfword 664
.endmacro

.macro scrcmd_665,arg0
.halfword 665
.halfword arg0
.endmacro

.macro scrcmd_666,arg0
.halfword 666
.halfword arg0
.endmacro

.macro scrcmd_667,arg0
.halfword 667
.halfword arg0
.endmacro

.macro buffer_type_name,arg0,arg1
.halfword 668
.byte arg0
.halfword arg1
.endmacro

.macro getitemquantity,arg0,arg1
.halfword 669
.halfword arg0
.halfword arg1
.endmacro

.macro get_hidden_power_type,arg0,arg1
.halfword 670
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_671
.halfword 671
.endmacro

.macro scrcmd_672,arg0,arg1,arg2
.halfword 672
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro get_owned_rotom_formes,arg0,arg1,arg2,arg3,arg4
.halfword 673
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro count_transformed_rotoms_in_party,arg0,arg1
.halfword 674
.halfword arg0
.halfword arg1
.endmacro

.macro update_rotom_forme,arg0,arg1,arg2,arg3
.halfword 675
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro get_party_mon_forme,arg0,arg1
.halfword 676
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_677,arg0,arg1
.halfword 677
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_678,arg0,arg1
.halfword 678
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_679
.halfword 679
.endmacro

.macro add_special_game_stat_2,arg0
.halfword 680
.halfword arg0
.endmacro

.macro scrcmd_681,arg0
.halfword 681
.halfword arg0
.endmacro

.macro scrcmd_682,arg0
.halfword 682
.halfword arg0
.endmacro

.macro scrcmd_683,arg0
.halfword 683
.halfword arg0
.endmacro

.macro scrcmd_684,arg0
.halfword 684
.halfword arg0
.endmacro

.macro get_player_xyz,arg0,arg1,arg2
.halfword 685
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_686,arg0,arg1
.halfword 686
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_687,arg0
.halfword 687
.halfword arg0
.endmacro

.macro get_party_slot_with_fateful_encounter,arg0,arg1
.halfword 688
.halfword arg0
.halfword arg1
.endmacro

// Attempt to remove all Griseous Orbs and reset Pokemon
// to formes present in Diamond and Pearl, to avoid
// problems communicating with those games.
.macro comm_sanitize_party,var_result
.halfword 689
.halfword var_result
.endmacro

.macro day_care_sanitize_mon,arg0,arg1
.halfword 690
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_691,arg0
.halfword 691
.halfword arg0
.endmacro

.macro buffer_battle_hall_streak,arg0,arg1,arg2,arg3,arg4,arg5
.halfword 692
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.halfword arg5
.endmacro

.macro battle_hall_count_used_species,arg0
.halfword 693
.halfword arg0
.endmacro

.macro battle_hall_get_total_streak,arg0
.halfword 694
.halfword arg0
.endmacro

.macro scrcmd_695,arg0
.halfword 695
.halfword arg0
.endmacro

.macro scrcmd_696,arg0
.halfword 696
.halfword arg0
.endmacro

.macro scrcmd_697,arg0
.halfword 697
.halfword arg0
.endmacro

.macro follower_poke_is_event_trigger,arg0,arg1,arg2
.halfword 698
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_699
.halfword 699
.endmacro

.macro scrcmd_700
.halfword 700
.endmacro

.macro mon_has_item,arg0,arg1
.halfword 701
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_702
.halfword 702
.endmacro

.macro scrcmd_703,arg0
.halfword 703
.halfword arg0
.endmacro

.macro scrcmd_704,arg0,arg1
.halfword 704
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_705,arg0,arg1
.halfword 705
.halfword arg0
.word arg1
.endmacro

.macro scrcmd_706,arg0
.halfword 706
.halfword arg0
.endmacro

.macro scrcmd_707,arg0,arg1
.halfword 707
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_708,arg0
.halfword 708
.halfword arg0
.endmacro

.macro scrcmd_709
.halfword 709
.endmacro

.macro scrcmd_710
.halfword 710
.endmacro

.macro follow_poke_interact
.halfword 711
.endmacro

.macro scrcmd_712,arg0
.halfword 712
.byte arg0
.endmacro

.macro alph_puzzle,arg0
.halfword 713
.byte arg0
.endmacro

.macro scrcmd_714,arg0
.halfword 714
.byte arg0
.endmacro

.macro update_day_care_mon_objects
.halfword 715
.endmacro

.macro scrcmd_716
.halfword 716
.endmacro

.macro scrcmd_717,arg0
.halfword 717
.halfword arg0
.endmacro

.macro scrcmd_718,arg0,arg1
.halfword 718
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_719,arg0,arg1
.halfword 719
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_720,arg0
.halfword 720
.halfword arg0
.endmacro

.macro scrcmd_721,arg0
.halfword 721
.halfword arg0
.endmacro

.macro scrcmd_722,arg0,arg1,arg2,arg3,arg4
.halfword 722
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scrcmd_723,arg0,arg1,arg2,arg3,arg4
.halfword 723
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro scrcmd_724,arg0,arg1
.halfword 724
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_725,arg0,arg1
.halfword 725
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_726
.halfword 726
.endmacro

.macro scrcmd_727,arg0
.halfword 727
.halfword arg0
.endmacro

.macro scrcmd_728,arg0,arg1
.halfword 728
.byte arg0
.byte arg1
.endmacro

.macro scrcmd_729,arg0
.halfword 729
.halfword arg0
.endmacro

.macro scrcmd_730,arg0
.halfword 730
.halfword arg0
.endmacro

.macro scrcmd_731
.halfword 731
.endmacro

.macro scrcmd_732,arg0
.halfword 732
.byte arg0
.endmacro

.macro scrcmd_733,arg0,arg1
.halfword 733
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_734,arg0
.halfword 734
.byte arg0
.endmacro

.macro scrcmd_735,arg0
.halfword 735
.halfword arg0
.endmacro

.macro scrcmd_736
.halfword 736
.endmacro

.macro scrcmd_737,arg0
.halfword 737
.halfword arg0
.endmacro

.macro scrcmd_738,arg0
.halfword 738
.halfword arg0
.endmacro

.macro scrcmd_739
.halfword 739
.endmacro

.macro scrcmd_740,arg0,arg1
.halfword 740
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_741,arg0,arg1,arg2,arg3
.halfword 741
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro scrcmd_742,arg0,arg1,arg2
.halfword 742
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_743,arg0
.halfword 743
.halfword arg0
.endmacro

.macro scrcmd_744
.halfword 744
.endmacro

.macro buffer_pokeathlon_course_name,arg0,arg1
.halfword 745
.byte arg0
.halfword arg1
.endmacro

.macro touchscreen_menu_hide
.halfword 746
.endmacro

.macro touchscreen_menu_show
.halfword 747
.endmacro

.macro getmenuchoice,arg0
.halfword 748
.halfword arg0
.endmacro

.macro menu_init_std_gmm,arg0,arg1,arg2,arg3,arg4
.halfword 749
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro menu_init,arg0,arg1,arg2,arg3,arg4
.halfword 750
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro menu_item_add,arg0,arg1,arg2
.halfword 751
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro menu_exec
.halfword 752
.endmacro

.macro scrcmd_rock_smash_item_check,arg0,arg1,arg2
.halfword 753
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro scrcmd_754,arg0
.halfword 754
.halfword arg0
.endmacro

.macro scrcmd_755
.halfword 755
.endmacro

.macro scrcmd_756
.halfword 756
.endmacro

.macro scrcmd_757
.halfword 757
.endmacro

.macro scrcmd_758,arg0
.halfword 758
.halfword arg0
.endmacro

.macro scrcmd_759
.halfword 759
.endmacro

.macro scrcmd_760
.halfword 760
.endmacro

.macro scrcmd_761,arg0
.halfword 761
.halfword arg0
.endmacro

.macro scrcmd_762,arg0
.halfword 762
.halfword arg0
.endmacro

.macro scrcmd_763
.halfword 763
.endmacro

.macro scrcmd_764
.halfword 764
.endmacro

.macro scrcmd_765
.halfword 765
.endmacro

.macro scrcmd_766
.halfword 766
.endmacro

.macro scrcmd_767
.halfword 767
.endmacro

.macro scrcmd_768
.halfword 768
.endmacro

.macro scrcmd_769
.halfword 769
.endmacro

.macro scrcmd_770,arg0
.halfword 770
.halfword arg0
.endmacro

.macro scrcmd_771
.halfword 771
.endmacro

.macro scrcmd_772
.halfword 772
.endmacro

.macro cinematic,arg0
.halfword 773
.halfword arg0
.endmacro

.macro scrcmd_774,arg0
.halfword 774
.halfword arg0
.endmacro

.macro scrcmd_775,arg0,arg1
.halfword 775
.halfword arg0
.halfword arg1
.endmacro

.macro give_togepi_egg
.halfword 776
.endmacro

.macro scrcmd_777,arg0,arg1
.halfword 777
.halfword arg0
.halfword arg1
.endmacro

.macro give_spiky_ear_pichu
.halfword 778
.endmacro

.macro radio_music_is_playing,arg0,arg1
.halfword 779
.halfword arg0
.halfword arg1
.endmacro

.macro casino_game,arg0,arg1
.halfword 780
.byte arg0
.byte arg1
.endmacro

.macro kenya_check_party_or_mailbox,arg0
.halfword 781
.halfword arg0
.endmacro

.macro mart_sell
.halfword 782
.endmacro

.macro set_follow_poke_inhibit_state,arg0
.halfword 783
.byte arg0
.endmacro

.macro script_overlay_cmd,arg0,arg1
.halfword 784
.byte arg0
.byte arg1
.endmacro

.macro bug_contest_action,arg0,arg1
.halfword 785
.byte arg0
.halfword arg1
.endmacro

.macro buffer_bug_contest_winner,arg0
.halfword 786
.byte arg0
.endmacro

.macro judge_bug_contest,arg0,arg1,arg2
.halfword 787
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro buffer_bug_contest_mon_nick,arg0,arg1
.halfword 788
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_789,arg0
.halfword 789
.byte arg0
.endmacro

.macro is_npc_bug_contestant_registered,arg0,arg1
.halfword 790
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_791,arg0,arg1
.halfword 791
.byte arg0
.halfword arg1
.endmacro

.macro scrcmd_792
.halfword 792
.endmacro

.macro bank_transaction,arg0,arg1
.halfword 793
.halfword arg0
.halfword arg1
.endmacro

.macro check_bank_balance,arg0,arg1
.halfword 794
.halfword arg0
.word arg1
.endmacro

.macro scrcmd_795,arg0,arg1
.halfword 795
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_796
.halfword 796
.endmacro

.macro scrcmd_797
.halfword 797
.endmacro

.macro buffer_ruleset_name,arg0
.halfword 798
.halfword arg0
.endmacro

.macro scrcmd_799,arg0
.halfword 799
.halfword arg0
.endmacro

.macro scrcmd_800,arg0
.halfword 800
.halfword arg0
.endmacro

.macro scrcmd_801,arg0
.halfword 801
.halfword arg0
.endmacro

.macro scrcmd_802
.halfword 802
.endmacro

.macro scrcmd_803,arg0,arg1
.halfword 803
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_804,arg0
.halfword 804
.byte arg0
.endmacro

.macro scrcmd_805
.halfword 805
.endmacro

.macro scrcmd_806
.halfword 806
.endmacro

.macro scrcmd_807,arg0,arg1
.halfword 807
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_808,arg0
.halfword 808
.halfword arg0
.endmacro

.macro scrcmd_809,arg0
.halfword 809
.halfword arg0
.endmacro

.macro scrcmd_810
.halfword 810
.endmacro

.macro scrcmd_811,arg0,arg1
.halfword 811
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_812
.halfword 812
.endmacro

.macro mom_gift_check,arg0
.halfword 813
.halfword arg0
.endmacro

.macro scrcmd_814
.halfword 814
.endmacro

.macro scrcmd_815,arg0
.halfword 815
.halfword arg0
.endmacro

.macro unown_circle
.halfword 816
.endmacro

.macro scrcmd_817,arg0
.halfword 817
.byte arg0
.endmacro

.macro mystry_stage_gymmick_init
.halfword 818
.endmacro

.macro scrcmd_819
.halfword 819
.endmacro

.macro scrcmd_820,arg0
.halfword 820
.byte arg0
.endmacro

.macro get_buenas_password,arg0,arg1
.halfword 821
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_822
.halfword 822
.endmacro

.macro scrcmd_823,arg0
.halfword 823
.halfword arg0
.endmacro

.macro scrcmd_824,arg0
.halfword 824
.halfword arg0
.endmacro

.macro scrcmd_825,arg0,arg1
.halfword 825
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_826,arg0
.halfword 826
.halfword arg0
.endmacro

.macro get_partymon_forme,arg0,arg1
.halfword 827
.halfword arg0
.halfword arg1
.endmacro

.macro mon_add_contest_value,arg0,arg1,arg2
.halfword 828
.halfword arg0
.byte arg1
.halfword arg2
.endmacro

.macro scrcmd_829,arg0
.halfword 829
.halfword arg0
.endmacro

.macro scrcmd_830,arg0
.halfword 830
.halfword arg0
.endmacro

.macro scrcmd_831,arg0
.halfword 831
.halfword arg0
.endmacro

.macro scrcmd_832,arg0
.halfword 832
.halfword arg0
.endmacro

.macro scrcmd_833,arg0
.halfword 833
.halfword arg0
.endmacro

.macro scrcmd_834,arg0
.halfword 834
.halfword arg0
.endmacro

.macro scrcmd_835,arg0
.halfword 835
.halfword arg0
.endmacro

.macro scrcmd_836,arg0
.halfword 836
.halfword arg0
.endmacro

.macro scrcmd_837,arg0
.halfword 837
.halfword arg0
.endmacro

.macro bank_or_wallet_is_full,arg0,arg1
.halfword 838
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_839,arg0
.halfword 839
.halfword arg0
.endmacro

.macro scrcmd_840,arg0,arg1
.halfword 840
.halfword arg0
.halfword arg1
.endmacro

.macro scrcmd_841,arg0
.halfword 841
.byte arg0
.endmacro

.macro scrcmd_842,arg0
.halfword 842
.byte arg0
.endmacro

.macro buffer_item_name_indef,arg0,arg1
.halfword 843
.byte arg0
.halfword arg1
.endmacro

.macro buffer_item_name_plural,arg0,arg1
.halfword 844
.byte arg0
.halfword arg1
.endmacro

.macro buffer_party_mon_species_name_indef,arg0,arg1
.halfword 845
.byte arg0
.halfword arg1
.endmacro

.macro buffer_species_name_indef,arg0,arg1,arg2,arg3
.halfword 846
.byte arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro buffer_dppt_friend_starter_species_name_indef,arg0
.halfword 847
.byte arg0
.endmacro

.macro buffer_fashion_name_indef,arg0,arg1
.halfword 848
.byte arg0
.halfword arg1
.endmacro

.macro buffer_trainer_class_name_indef,arg0,arg1
.halfword 849
.byte arg0
.halfword arg1
.endmacro

.macro buffer_seal_name_plural,arg0,arg1
.halfword 850
.byte arg0
.halfword arg1
.endmacro

.macro capitalize,arg0
.halfword 851
.byte arg0
.endmacro

.macro buffer_dept_store_floor_no,arg0,arg1
.halfword 852
.byte arg0
.byte arg1
.endmacro

// Script headers

.macro map_script,kind,script
.byte kind
.word script
.endmacro

.macro map_script_2,var,val,script
.halfword var, val, script
.endmacro

// Convenience macros

// Generic compare macro which attempts to deduce argument types based on their values
// Any values between 0x4000 to 0x40FF and 0x8000 to 0x8015 are considered event variable identifiers
.macro compare,var,arg
    .if ((arg >= VARS_START && arg <= VARS_END) || (arg >= SPECIAL_VARS_START && arg <= SPECIAL_VARS_END))
        compare_var_to_var var,arg
    .else
        compare_var_to_value var,arg
    .endif
.endmacro

.macro goto_if_unset,flag,dest
checkflag flag
goto_if 0,dest
.endmacro

.macro goto_if_set,flag,dest
checkflag flag
goto_if 1,dest
.endmacro

.macro goto_if_lt,dest // LESS THAN
goto_if 0,dest
.endmacro

.macro goto_if_eq,dest // EQUAL
goto_if 1,dest
.endmacro

.macro goto_if_gt,dest // GREATER THAN
goto_if 2,dest
.endmacro

.macro goto_if_le,dest // LESS THAN OR EQUAL
goto_if 3,dest
.endmacro

.macro goto_if_ge,dest // GREATER THAN OR EQUAL
goto_if 4,dest
.endmacro

.macro goto_if_ne,dest // NOT EQUAL
goto_if 5,dest
.endmacro

.macro call_if_unset,flag,dest
checkflag flag
call_if 0,dest
.endmacro

.macro call_if_set,flag,dest
checkflag flag
call_if 1,dest
.endmacro

.macro call_if_lt,dest // LESS THAN
call_if 0,dest
.endmacro

.macro call_if_eq,dest // EQUAL
call_if 1,dest
.endmacro

.macro call_if_gt,dest // GREATER THAN
call_if 2,dest
.endmacro

.macro call_if_le,dest // LESS THAN OR EQUAL
call_if 3,dest
.endmacro

.macro call_if_ge,dest // GREATER THAN OR EQUAL
call_if 4,dest
.endmacro

.macro call_if_ne,dest // NOT EQUAL
call_if 5,dest
.endmacro

.macro goto_if_defeated,trainer,dest
checktrainerflag trainer
goto_if 1,dest
.endmacro

.macro goto_if_not_defeated,trainer,dest
checktrainerflag trainer
goto_if 0,dest
.endmacro

.macro call_if_defeated,trainer,dest
checktrainerflag trainer
call_if 1,dest
.endmacro

.macro call_if_not_defeated,trainer,dest
checktrainerflag trainer
call_if 0,dest
.endmacro

.macro item_vars,item,quantity
.if item < 0x4000
setvar VAR_SPECIAL_x8004,item
.else
copyvar VAR_SPECIAL_x8004,item
.endif
.if quantity < 0x4000
setvar VAR_SPECIAL_x8005,quantity
.else
copyvar VAR_SPECIAL_x8005,quantity
.endif
.endmacro

.macro goto_if_no_item_space,item,quantity,target
item_vars item,quantity
hasspaceforitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
compare VAR_SPECIAL_RESULT,0
goto_if_eq target
.endmacro

.macro goto_if_no_item_space_2,item,quantity,target
item_vars item,quantity
hasspaceforitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
compare VAR_SPECIAL_RESULT,1
goto_if_ne target
.endmacro

.macro giveitem_no_check,item,quantity
item_vars item,quantity
callstd std_give_item_verbose // std_give_item_verbose
.endmacro

.macro takeitem_no_check,item,quantity
item_vars item,quantity
takeitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
.endmacro

.macro switch,var
copyvar VAR_SPECIAL_x8008,var
.endmacro

.macro case,value,target
compare VAR_SPECIAL_x8008,value
goto_if_eq target
.endmacro

.macro phone_call,who,b,c
setvar VAR_SPECIAL_x8004,who
setvar VAR_SPECIAL_x8005,b
setvar VAR_SPECIAL_x8006,c
callstd std_phone_call
.endmacro

.macro simple_npc_msg,msgid
play_se 1500 // SEQ_SE_DP_SELECT
lockall
faceplayer
npc_msg msgid
wait_button_or_walk_away
closemsg
releaseall
.endmacro

.macro move_follower_to_player_coords
get_player_coords 0x8000, 0x8001
get_player_facing VAR_SPECIAL_RESULT
move_person_facing obj_partner_poke, 0x8000, 0, 0x8001, VAR_SPECIAL_RESULT
.endmacro

// Movement commands

.macro step,type,length
.halfword type
.halfword length
.endmacro

.macro step_end
.halfword 254,0
.endmacro


// level script define macro

TRIGGER_VARIABLE_VALUE equ 1
TRIGGER_MAP_CHANGE equ 2
TRIGGER_SCREEN_RESET equ 3
TRIGGER_LOAD_GAME equ 4


.macro level_script,type,script
.byte type
.if (type == TRIGGER_VARIABLE_VALUE)
    .word script-.-4
.else
    .word script+1
.endif
.endmacro

.macro level_script_end
.byte 0
.endmacro


// conditional for use with TRIGGER_VARIABLE_VALUE

.macro var_level_script_run,var,value,script
.halfword var
.halfword value
.halfword script+1
.endmacro

.macro var_level_script_end
.halfword 0
.endmacro



// DSPRE Syntax macros



// Dummy command
.macro Nop
.halfword 0
.endmacro

//// Dummy command
//.macro Dummy
//.halfword 1
//.endmacro
//
//// Exits script execution and returns control to the player
//.macro End
//.halfword 2
//.endmacro

// Pauses for some frames,tracks the timer in a script variable
.macro WaitTime,frames,var
.halfword 3
.halfword frames
.halfword var
.endmacro

// Loads 8-bit value into the specified script register
.macro RegValueSet,reg,val
.halfword 4
.byte reg
.byte val
.endmacro

// Loads 32-bit value into the specified script register
.macro RegDataSet,reg,val
.halfword 5
.byte reg
.word val
.endmacro

// Reads byte at a specific memory address into a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro RegAdrsSet,reg,addr
.halfword 6
.byte reg
.word addr
.endmacro

// Writes byte to a specific memory address from a script register
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro AdrsValueSet,addr,reg
.halfword 7
.word addr
.byte reg
.endmacro

// Writes byte literal to a specific memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro AdrsRegSet,addr,val
.halfword 8
.word addr
.byte val
.endmacro

// Copies a byte between script registers
.macro RegRegSet,to,from
.halfword 9
.byte to
.byte from
.endmacro

// Copies a byte between two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro AdrsAdrsSet,to,from
.halfword 10
.word to
.word from
.endmacro

// Compares values between script reg and script reg
.macro CompareRegs,a,b
.halfword 11
.byte a
.byte b
.endmacro

// Compares script reg to byte literal
.macro CompareRegValue,reg,val
.halfword 12
.byte reg
.byte val
.endmacro

// Compares script reg to memory address
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareRegAdrs,reg,addr
.halfword 13
.byte reg
.word addr
.endmacro

// Compares memory address to script reg
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareAdrsReg,addr,reg
.halfword 14
.word addr
.byte reg
.endmacro

// Compares memory address to byte literal
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareAdrsValue,addr,val
.halfword 15
.word addr
.byte val
.endmacro

// Compares bytes at two memory addresses
// Because scripts are compiled in a code-agnostic fashion,
// this command can never be assembled.
.macro CompareAdrsAdrs,a,b
.halfword 16
.word a
.word b
.endmacro

// Compares variable to 16-bit literal
.macro CompareVarValue,var,val
.halfword 17
.halfword var
.halfword val
.endmacro

// Compares two variables
.macro CompareVars,a,b
.halfword 18
.halfword a
.halfword b
.endmacro

// Creates a new script context to run the indicated script asynchronously
.macro ParallelCommonScript,id
.halfword 19
.halfword id
.endmacro

// Creates a new script context to run the indicated script and wait
.macro CommonScript,id
.halfword 20
.halfword id
.endmacro

// Yield to parent context
.macro LocalScript
.halfword 21
.endmacro

// Absolute branch to offset in script
.macro Jump,dest
.halfword 22
.word dest-.-4
.endmacro

// Branch to offset in script if interacting with a specific object
.macro JumpIfObjID,object,dest
.halfword 23
.byte object
.word dest-.-4
.endmacro

// Branch to offset in script if interacting with a specific bg event
.macro JumpIfBgID,bg,dest
.halfword 24
.byte bg
.word dest-.-4
.endmacro

// Branch to offset in script if facing a specific direction
.macro JumpIfPlayerDir,dir,dest
.halfword 25
.byte dir
.word dest-.-4
.endmacro

// Call script as a subroutine
//.macro Call,sub
//.halfword 26
//.word sub-.-4
//.endmacro
//
//// Return from subroutine
//.macro Return
//.halfword 27
//.endmacro

// Conditional branch to offset in script
.macro JumpIf,condition,dest
.halfword 28
.byte condition
.word dest-.-4
.endmacro

// Conditional call subroutine
.macro CallIf,condition,sub
.halfword 29
.byte condition
.word sub-.-4
.endmacro

//// Set event flag
//.macro SetFlag,flag
//.halfword 30
//.halfword flag
//.endmacro
//
//// Clear event flag
//.macro ClearFlag,flag
//.halfword 31
//.halfword flag
//.endmacro
//
//// Check event flag, store result on context
//.macro CheckFlag,flag
//.halfword 32
//.halfword flag
//.endmacro

// Set event flag referenced in var
.macro SetFlagFromVar,var
.halfword 33
.halfword var
.endmacro

// Clear event flag referenced in var
.macro ClearFlagFromVar,var
.halfword 34
.halfword var
.endmacro

// Check event flag referenced in var, store result in other var
.macro FlagStatusToVar,var_flag,var_dest
.halfword 35
.halfword var_flag
.halfword var_dest
.endmacro

//// Set trainer defeated flag
//.macro SetTrainerFlag,var_or_trno
//.halfword 36
//.halfword var_or_trno
//.endmacro
//
//// Clear trainer defeated flag
//.macro ClearTrainerFlag,var_or_trno
//.halfword 37
//.halfword var_or_trno
//.endmacro
//
//// Check trainer defeated flag,store result on context
//.macro CheckTrainerFlag,var_or_trno
//.halfword 38
//.halfword var_or_trno
//.endmacro

// Increment var value by value
.macro IncrementVar,var,var_or_addend
.halfword 39
.halfword var
.halfword var_or_addend
.endmacro

// Decrement var value by value
.macro DecrementVar,var,var_or_addend
.halfword 40
.halfword var
.halfword var_or_addend
.endmacro

//// Set var to short literal
//.macro SetVar,var,val
//.halfword 41
//.halfword var
//.halfword val
//.endmacro

// Set var from other var
.macro SetVarFromVariable,dst,src
.halfword 42
.halfword dst
.halfword src
.endmacro

// Set var from other var or short literal
.macro SetVarFromFlexible,dst,src
.halfword 43
.halfword dst
.halfword src
.endmacro

// Print non_npc_msg in field window from current map message bank
.macro MessageAll,msg_id
.halfword 44
.byte msg_id
.endmacro

// NPC dialogue window
.macro Message,msg_id
.halfword 45
.byte msg_id
.endmacro

// Not sure what to call this but it
// is also a message printer
.macro MessageFlex,msg_id
.halfword 46
.halfword msg_id
.endmacro

.macro MessageNoSkip,arg0
.halfword 47
.halfword arg0
.endmacro

.macro CMD_048,arg0
.halfword 48
.byte arg0
.endmacro

// Waits for A or B button
.macro WaitAB
.halfword 49
.endmacro

// Waits for A,B,or dpad. On pressing dpad,does a turn frame.
.macro WaitButton
.halfword 50
.endmacro

// Waits for A,B,or dpad. No turn frame.
.macro WaitABPad
.halfword 51
.endmacro

.macro OpenMessage
.halfword 52
.endmacro

.macro CloseMessage
.halfword 53
.endmacro

// Like closemsg but does not clear the graphics.
.macro FreezeMessage
.halfword 54
.endmacro

.macro SetIconBoard,message,arg1,arrow,arg3
.halfword 55
.byte message
.byte arg1
.halfword arrow
.halfword arg3
.endmacro

.macro SetTextBoard,message,arg1
.halfword 56
.byte message
.halfword arg1
.endmacro

.macro ShowBoard,arg0
.halfword 57
.byte arg0
.endmacro

.macro WaitBoard
.halfword 58
.endmacro

.macro BoardMessage,arg0,arg1
.halfword 59
.byte arg0
.halfword arg1
.endmacro

.macro CloseBoard,arg0
.halfword 60
.halfword arg0
.endmacro

.macro Menu
.halfword 61
.endmacro

.macro CMD_062,arg0,arg1,arg2,arg3,arg4,arg5
.halfword 62
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.byte arg4
.byte arg5
.endmacro

.macro YesNoBox,arg0
.halfword 63
.halfword arg0
.endmacro

.macro MultiStandardText,arg0,arg1,arg2,arg3,arg4
.halfword 64
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro MultiLocalText,arg0,arg1,arg2,arg3,arg4
.halfword 65
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro AddMultiOption,arg0,arg1
.halfword 66
.byte arg0
.byte arg1
.endmacro

.macro ShowMulti
.halfword 67
.endmacro

// uses text bank 191 to choose what to do.
.macro ListStandardText,x,y,cursor,cancel,selection
.halfword 68
.byte x
.byte y
.byte cursor
.byte cancel
.halfword selection
.endmacro

// uses the current loaded text bank on the map to choose what to do.
.macro ListLocalText,x,y,cursor,cancel,selection
.halfword 69
.byte x
.byte y
.byte cursor
.byte cancel
.halfword selection
.endmacro

.macro AddListOption,optionmsg,highlightmsg,listslot
.halfword 70
.halfword optionmsg
.halfword highlightmsg
.halfword listslot
.endmacro

.macro ShowList
.halfword 71
.endmacro

.macro MultiColumn,arg0
.halfword 72
.byte arg0
.endmacro

.macro PlayFanfare,arg0
.halfword 73
.halfword arg0
.endmacro

.macro StopFanfare,arg0
.halfword 74
.halfword arg0
.endmacro

.macro WaitFanfare,arg0
.halfword 75
.halfword arg0
.endmacro

.macro PlayCry,arg0,arg1
.halfword 76
.halfword arg0
.halfword arg1
.endmacro

.macro WaitCry
.halfword 77
.endmacro

.macro PlaySound,fanfare
.halfword 78
.halfword fanfare
.endmacro

.macro WaitSound
.halfword 79
.endmacro

.macro PlayMusic,bgm
.halfword 80
.halfword bgm
.endmacro

.macro StopMusic,arg0
.halfword 81
.halfword arg0
.endmacro

.macro PlayDefaultMusic
.halfword 82
.endmacro

.macro SetMusic,arg0
.halfword 83
.halfword arg0
.endmacro

// Fade out the music to the target level
// in the designated number of frames
.macro FadeOutMusic,target,frames
.halfword 84
.halfword target
.halfword frames
.endmacro

.macro FadeInMusic,arg0
.halfword 85
.halfword arg0
.endmacro

.macro SetMusicPauseStatus,arg0,arg1
.halfword 86
.byte arg0
.byte arg1
.endmacro

.macro TempMusic,arg0
.halfword 87
.halfword arg0
.endmacro

.macro SetBGMFlag,arg0
.halfword 88
.byte arg0
.endmacro

.macro CheckChatotCry,arg0
.halfword 89
.halfword arg0
.endmacro

.macro StartChatotCry,arg0
.halfword 90
.halfword arg0
.endmacro

.macro StopChatotCry
.halfword 91
.endmacro

.macro SaveChatotCry
.halfword 92
.endmacro

.macro CMD_093
.halfword 93
.endmacro

.macro Movement,arg0,arg1
.halfword 94
.halfword arg0
.word arg1-.-4
.endmacro

.macro WaitMovement
.halfword 95
.endmacro

//.macro LockAll
//.halfword 96
//.endmacro
//
//.macro ReleaseAll
//.halfword 97
//.endmacro
//
//.macro Lock,arg0
//.halfword 98
//.halfword arg0
//.endmacro
//
//.macro Release,arg0
//.halfword 99
//.halfword arg0
//.endmacro

.macro AddOW,arg0
.halfword 100
.halfword arg0
.endmacro

.macro RemoveOW,arg0
.halfword 101
.halfword arg0
.endmacro

.macro LockCamera,arg0,arg1
.halfword 102
.halfword arg0
.halfword arg1
.endmacro

.macro ReleaseCamera
.halfword 103
.endmacro

//.macro FacePlayer
//.halfword 104
//.endmacro

.macro GetPlayerPosition,arg0,arg1
.halfword 105
.halfword arg0
.halfword arg1
.endmacro

.macro GetOWPosition,arg0,arg1,arg2
.halfword 106
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro SetFollowingOverworld,arg0,arg1,arg2
.halfword 107
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro KeepOverworld,arg0,arg1
.halfword 108
.halfword arg0
.byte arg1
.endmacro

.macro SetOWMovement,arg0,arg1
.halfword 109
.halfword arg0
.halfword arg1
.endmacro

MOVE_0_None                                                     equ 0
MOVE_1_None                                                     equ 1
MOVE_2_Looking_In_All_Directions                                equ 2
MOVE_3_Walking_In_All_Directions                                equ 3
MOVE_4_Walking_Up_and_Down                                      equ 4
MOVE_5_Walking_Left_and_Right                                   equ 5
MOVE_6_Looking_Up_and_Left                                      equ 6
MOVE_7_Looking_Up_and_Right                                     equ 7
MOVE_8_Looking_Down_and_Left                                    equ 8
MOVE_9_Looking_Down_and_Right                                   equ 9
MOVE_10_Looking_Up_Down_and_Left                                equ 10
MOVE_11_Looking_Up_Right_and_Down                               equ 11
MOVE_12_Looking_Right_Left_and_Up                               equ 12
MOVE_13_Looking_Right_Left_and_Down                             equ 13
MOVE_14_Facing_Up                                               equ 14
MOVE_15_Facing_Down                                             equ 15
MOVE_16_Facing_Left                                             equ 16
MOVE_17_Facing_Right                                            equ 17
MOVE_18_Counterclockwise_Spinning                               equ 18
MOVE_19_Clockwise_Spinning                                      equ 19
MOVE_20_Running_Side_To_Side                                    equ 20 // can be either horizontally or vertically depending on the overworld's movement ranges
MOVE_21_L_Run_Up_and_Right                                      equ 21
MOVE_22_Patrols_Then_Stops_CRASH                                equ 22
MOVE_23_Patrols_Then_Stops_CRASH                                equ 23
MOVE_24_L_Run_Up_and_Right                                      equ 24
MOVE_25_Patrols_Then_Stops_CRASH                                equ 25
MOVE_26_Patrols_Then_Stops_CRASH                                equ 26
MOVE_27_Patrols_Then_Stops                                      equ 27
MOVE_28_L_Run_Right_and_Down                                    equ 28
MOVE_29_L_Run_Left_and_Up                                       equ 29
MOVE_30_Continuous_Patrolling_CRASH                             equ 30
MOVE_31_Continuous_Patrolling_CRASH                             equ 31
MOVE_32_L_Run_Down_and_Right                                    equ 32
MOVE_33_L_Run_Right_and_Up                                      equ 33
MOVE_34_Patrols_Then_Stops                                      equ 34
MOVE_35_Patrols_Then_Stops                                      equ 35
MOVE_36_L_Run_Down_and_Left                                     equ 36
MOVE_37_Running_Up_Left_Down_Right                              equ 37
MOVE_38_Running_Down_Right_Up_Left                              equ 38
MOVE_39_Running_Left_Down_Right_Up                              equ 39
MOVE_40_Runing_Right_Up_Left_Down                               equ 40
MOVE_41_Running_Up_Right_Down_Left                              equ 41
MOVE_42_Running_Down_Left_Up_Right                              equ 42
MOVE_43_Running_Left_Up_Right_Down                              equ 43
MOVE_44_Running_Right_Down_Left_Up                              equ 44
MOVE_45_Looking_Up_and_Down                                     equ 45
MOVE_46Looking_Right_and_Left                                   equ 46
MOVE_47_CRASH                                                   equ 47
MOVE_48_Follow_Hero                                             equ 48
MOVE_49_Spin_Down_Right_and_Up                                  equ 49
MOVE_50_Looking_Down                                            equ 50
MOVE_51_Hidden_Under_Snow                                       equ 51
MOVE_52_Hidden_Under_Snow                                       equ 52
MOVE_53_Hidden_Underground                                      equ 53
MOVE_54_Hidden_Under_Grass                                      equ 54
MOVE_55_Follow_Hero                                             equ 55
MOVE_56_Disappears                                              equ 56
MOVE_57_Looking_Left                                            equ 57
MOVE_58_Looking_Right                                           equ 58
MOVE_59_Mimick_Player_Direction                                 equ 59
MOVE_60_Mimick_Player_Direction                                 equ 60
MOVE_61_Mimick_Player_Direction                                 equ 61
MOVE_62_Mimick_Player_Direction                                 equ 62
MOVE_63_NOTHING                                                 equ 63
MOVE_64_NOTHING                                                 equ 64
MOVE_65_NOTHING                                                 equ 65
MOVE_66_NOTHING                                                 equ 66
MOVE_67_Walking_Right_Left_CRASH                                equ 67
MOVE_68_Looking_Right                                           equ 68
MOVE_69_NOTHING                                                 equ 69
MOVE_70_NOTHING                                                 equ 70
MOVE_71_Looking_Left                                            equ 71

.macro GiveMoney,arg0
.halfword 110
.word arg0
.endmacro

.macro TakeMoney,arg0
.halfword 111
.word arg0
.endmacro

.macro CompareMoney,arg0,arg1
.halfword 112
.halfword arg0
.word arg1
.endmacro

.macro ShowMoney,arg0,arg1
.halfword 113
.halfword arg0
.halfword arg1
.endmacro

.macro HideMoney
.halfword 114
.endmacro

.macro UpdateMoney
.halfword 115
.endmacro

.macro ShowSpecialCurrency,arg0,arg1,arg2
.halfword 116
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro HideSpecialCurrency
.halfword 117
.endmacro

.macro UpdateSpecialCurrency,arg0
.halfword 118
.byte arg0
.endmacro

.macro CheckCoins,arg0
.halfword 119
.halfword arg0
.endmacro

.macro GiveCoins,arg0
.halfword 120
.halfword arg0
.endmacro

.macro TakeCoins,arg0
.halfword 121
.halfword arg0
.endmacro

.macro GiveAthletePoints,arg0
.halfword 122
.halfword arg0
.endmacro

.macro TakeAthletePoints,arg0
.halfword 123
.halfword arg0
.endmacro

.macro CompareAthletePoints,arg0,arg1
.halfword 124
.halfword arg0
.halfword arg1
.endmacro

//.macro GiveItem,arg0,arg1,arg2
//.halfword 125
//.halfword arg0
//.halfword arg1
//.halfword arg2
//.endmacro
//
//.macro TakeItem,arg0,arg1,arg2
//.halfword 126
//.halfword arg0
//.halfword arg1
//.halfword arg2
//.endmacro

.macro CheckItemSpace,arg0,arg1,arg2
.halfword 127
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckItem,arg0,arg1,arg2
.halfword 128
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckItemIsMachine,arg0,arg1
.halfword 129
.halfword arg0
.halfword arg1
.endmacro

//.macro GetItemPocket,arg0,arg1
//.halfword 130
//.halfword arg0
//.halfword arg1
//.endmacro

.macro SetStarter,arg0
.halfword 131
.halfword arg0
.endmacro

.macro GenderMessage,arg0,arg1
.halfword 132
.byte arg0
.byte arg1
.endmacro

.macro CheckSeals,arg0,arg1
.halfword 133
.halfword arg0
.halfword arg1
.endmacro

.macro GiveSeals,arg0,arg1
.halfword 134
.halfword arg0
.halfword arg1
.endmacro

.macro GiveRandomSeals,arg0,arg1,arg2
.halfword 135
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckPokemonForm,arg0,arg1
.halfword 136
.halfword arg0
.halfword arg1
.endmacro

.macro GivePokemon,arg0,arg1,arg2,arg3,arg4,arg5
.halfword 137
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.halfword arg5
.endmacro

.macro GivePokemonEgg,arg0,arg1
.halfword 138
.halfword arg0
.halfword arg1
.endmacro

.macro ReplaceMove,arg0,arg1,arg2
.halfword 139
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckPokemonHasMove,arg0,arg1,arg2
.halfword 140
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckMoveInParty,arg0,arg1
.halfword 141
.halfword arg0
.halfword arg1
.endmacro

.macro GetPokeGearRematch,arg0,arg1
.halfword 142
.halfword arg0
.halfword arg1
.endmacro

.macro ChooseRivalName,arg0
.halfword 143
.halfword arg0
.endmacro

.macro GetCounterpartSprite,arg0
.halfword 144
.halfword arg0
.endmacro

.macro UpgradePokegear,arg0
.halfword 145
.byte arg0
.endmacro

.macro RecordPokegearNumber,arg0
.halfword 146
.halfword arg0
.endmacro

.macro CheckHasPokegearNumber,arg0,arg1
.halfword 147
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_148,arg0,arg1
.halfword 148
.byte arg0
.byte arg1
.endmacro

.macro CMD_149,arg0
.halfword 149
.byte arg0
.endmacro

.macro ReturnScreen
.halfword 150
.endmacro

.macro CMD_151
.halfword 151
.endmacro

.macro Wifi
.halfword 152
.endmacro

.macro DressPokemon,arg0
.halfword 153
.halfword arg0
.endmacro

.macro ContestDressupScreen,arg0,arg1,arg2
.halfword 154
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro DressUpArtworkScreen,arg0,arg1
.halfword 155
.halfword arg0
.halfword arg1
.endmacro

.macro SealCapsuleScreen
.halfword 156
.endmacro

.macro WorldMapScreen
.halfword 157
.endmacro

.macro PCBoxScreen,arg0
.halfword 158
.byte arg0
.endmacro

.macro DrawScreenUnion
.halfword 159
.endmacro

.macro TrainerCaseUnion
.halfword 160
.endmacro

.macro TradeScreenUnion
.halfword 161
.endmacro

.macro RecordMixingUnion
.halfword 162
.endmacro

.macro EndGameScreen,arg0
.halfword 163
.halfword arg0
.endmacro

.macro HallOfFameData
.halfword 164
.endmacro

.macro StoreGTSStatus,arg0,arg1
.halfword 165
.halfword arg0
.halfword arg1
.endmacro

.macro InitWFC,arg0
.halfword 166
.halfword arg0
.endmacro

.macro StarterSelectionScreen
.halfword 167
.endmacro

.macro GetTrainerPathToPlayer,arg0
.halfword 168
.halfword arg0
.endmacro

.macro TrainerStepTowardsPlayer,arg0,arg1
.halfword 169
.halfword arg0
.halfword arg1
.endmacro

.macro GetTrainerEyeType,arg0
.halfword 170
.halfword arg0
.endmacro

// For when one or more trainers see you
.macro GetEyeTrainerNum,arg0,arg1
.halfword 171
.halfword arg0
.halfword arg1
.endmacro

.macro WritePlayerName,arg0
.halfword 172
.halfword arg0
.endmacro

.macro WritePokemonName,arg0,arg1
.halfword 173
.halfword arg0
.halfword arg1
.endmacro

.macro FadeScreen,arg0,speed,direction,color
.halfword 174
.halfword arg0
.halfword speed
.halfword direction
.halfword color
.endmacro

FADE_OUT                                equ 0
FADE_IN                                 equ 1
FADE_RGB_BLACK                          equ 0
FADE_RGB_WHITE                          equ 32767       // 0x7FFF

.macro WaitFadeScreen
.halfword 175
.endmacro

//.macro Warp,arg0,arg1,arg2,arg3,arg4
//.halfword 176
//.halfword arg0
//.halfword arg1
//.halfword arg2
//.halfword arg3
//.halfword arg4
//.endmacro

.macro RockClimbAnimation,arg0
.halfword 177
.halfword arg0
.endmacro

.macro SurfAnimation,arg0
.halfword 178
.halfword arg0
.endmacro

.macro WaterfallAnimation,arg0
.halfword 179
.halfword arg0
.endmacro

.macro FlyAnimation,arg0,arg1,arg2
.halfword 180
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro FlashAnimation
.halfword 181
.endmacro

.macro WhirlpoolAnimation,arg0
.halfword 182
.halfword arg0
.endmacro

.macro CutAnimation,arg0
.halfword 183
.halfword arg0
.endmacro

.macro CheckBike,arg0
.halfword 184
.halfword arg0
.endmacro

.macro RideBike,arg0
.halfword 185
.byte arg0
.endmacro

.macro CyclingRoad,arg0
.halfword 186
.byte arg0
.endmacro

// Get the overworld state of the player.
// Used in some places to determine whether
// the player is masquerading as a member
// of Team Rocket.
.macro CheckPlayerForm,var
.halfword 187
.halfword var
.endmacro

.macro SetPlayerForm,arg0
.halfword 188
.halfword arg0
.endmacro

FORM_ROCKET_DISGUISE                    equ 1024

.macro UpdatePlayerForm
.halfword 189
.endmacro

// In the buffer_XXX commands,the maximum
// acceptable value for the slot arg is 7.
// This sets the message format placeholder
// to whatever is buffered.
.macro TextPlayerName,slot
.halfword 190
.byte slot
.endmacro

// If you use this before naming your rival,
// this will be an empty string.
.macro TextRivalName,slot
.halfword 191
.byte slot
.endmacro

.macro TextCounterpart,slot
.halfword 192
.byte slot
.endmacro

// For these commands, the additional argument
// is a flex arg, meaning it can be a literal
// or a variable.
.macro TextPartyPokemon,slot,party_pos
.halfword 193
.byte slot
.halfword party_pos
.endmacro

.macro TextItem,slot,item
.halfword 194
.byte slot
.halfword item
.endmacro

.macro TextPocket,slot,pocket
.halfword 195
.byte slot
.halfword pocket
.endmacro

.macro TextMachineMove,slot,tmhm
.halfword 196
.byte slot
.halfword tmhm
.endmacro

.macro TextMove,slot,move
.halfword 197
.byte slot
.halfword move
.endmacro

.macro TextNumber,slot,value
.halfword 198
.byte slot
.halfword value
.endmacro

.macro TextPokeNickname,slot,party_pos
.halfword 199
.byte slot
.halfword party_pos
.endmacro

.macro TextTrainerClassName,slot,trcls
.halfword 200
.byte slot
.halfword trcls
.endmacro

.macro TextPlayerTrainerType,slot
.halfword 201
.byte slot
.endmacro

// The other two args here are unused
.macro TextPokemon,slot,species,arg2,arg3
.halfword 202
.byte slot
.halfword species
.halfword arg2
.byte arg3
.endmacro

.macro TextStarterPokemon,slot
.halfword 203
.byte slot
.endmacro

// These two commands are leftover from Platinum.
// As such,they are configured to check for the
// Sinnoh starters instead of the Johto starters.
// Since the player will never start with any of
// Turtwig,Chimchar,or Piplup,this command
// will always return TURTWIG,and the following
// CHIMCHAR.
// These commands are unused in HGSS.
.macro TextRivalStarter,slot
.halfword 204
.byte slot
.endmacro

.macro TextCounterpartStarter,slot
.halfword 205
.byte slot
.endmacro

// Gets your starter species into the indicated
// variable. Used to calculate which rival
// party to use.
.macro CheckStarter,var
.halfword 206
.halfword var
.endmacro

.macro DummyTextGoods,slot,deco
.halfword 207
.byte slot
.halfword deco
.endmacro

// Dummy
.macro DummyTextTrap,slot,unk
.halfword 208
.byte slot
.halfword unk
.endmacro

// 208 has been reused for new script commands
.equ NEW_COMMAND_QUEUE_NEW_REPEL, 0

.macro RunNewCommand,slot,unk
DummyTextTrap slot, unk
.endmacro

.macro QueueNewRepel
RunNewCommand NEW_COMMAND_QUEUE_NEW_REPEL, 0x800C
.endmacro

// Dummy
.macro DummyTextTreasure,slot,unk
.halfword 209
.byte slot
.halfword unk
.endmacro

.macro TextMapName,slot,location
.halfword 210
.byte slot
.halfword location
.endmacro

.macro GetSwarmInfo,arg0,arg1
.halfword 211
.halfword arg0
.halfword arg1
.endmacro

// For when you talk to a trainer
.macro TrainerID,arg0
.halfword 212
.halfword arg0
.endmacro

.macro TrainerBattle,trainer,arg1,arg2,arg3
.halfword 213
.halfword trainer
.halfword arg1
.byte arg2
.byte arg3
.endmacro

.macro TrainerMessage,trainer,param
.halfword 214
.halfword trainer
.halfword param
.endmacro

.macro TrainerMsgCheck,intro,after,_1poke
.halfword 215
.halfword intro
.halfword after
.halfword _1poke
.endmacro

.macro TrainerRematchMsgCheck,arg0,arg1,arg2
.halfword 216
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro TrainerTypeCheck,arg0
.halfword 217
.halfword arg0
.endmacro

.macro TrainerMusic,arg0
.halfword 218
.halfword arg0
.endmacro

.macro LostBattle
.halfword 219
.endmacro

// Is this loss?
.macro CheckBattleIsLost,var
.halfword 220
.halfword var
.endmacro

.macro CheckDefeatedPokemon,arg0,arg1
.halfword 221
.halfword arg0
.byte arg1
.endmacro

.macro Check2vs2,arg0
.halfword 222
.halfword arg0
.endmacro

.macro DummyTrainerBattle
.halfword 223
.endmacro

.macro DummyTrainerFlag
.halfword 224
.endmacro

.macro DummyTrainerFlagJump,arg0
.halfword 225
.word arg0-.-4
.endmacro

.macro CMD_226,arg0,arg1,arg2,arg3
.halfword 226
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_227,arg0,arg1,arg2,arg3
.halfword 227
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_228,arg0
.halfword 228
.halfword arg0
.endmacro

.macro CMD_229,arg0
.halfword 229
.halfword arg0
.endmacro

.macro CMD_230
.halfword 230
.endmacro

.macro CMD_231
.halfword 231
.endmacro

.macro CMD_232,arg0
.halfword 232
.halfword arg0
.endmacro

.macro CMD_233,arg0
.halfword 233
.halfword arg0
.endmacro

.macro CMD_234,arg0,arg1,arg2,arg3
.halfword 234
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_235,arg0
.halfword 235
.halfword arg0
.endmacro

.macro CMD_236,arg0
.halfword 236
.halfword arg0
.endmacro

.macro CMD_237
.halfword 237
.endmacro

.macro CheckPokerus,arg0
.halfword 238
.halfword arg0
.endmacro

.macro GetPokemonGender,arg0,arg1
.halfword 239
.halfword arg0
.halfword arg1
.endmacro

.macro SetElevatorWarp,arg0,arg1,arg2,arg3,arg4
.halfword 240
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro GetElevatorFloor,arg0
.halfword 241
.halfword arg0
.endmacro

.macro ElevatorBox,arg0,arg1,arg2,arg3
.halfword 242
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CountJohtoDexSeen,var
.halfword 243
.halfword var
.endmacro

.macro CountJohtoDexObtained,var
.halfword 244
.halfword var
.endmacro

.macro CountNationalDexSeen,var
.halfword 245
.halfword var
.endmacro

.macro CountNationalDexObtained,var
.halfword 246
.halfword var
.endmacro

// Dummy
.macro DummyNationalDexCheck
.halfword 247
.endmacro

// The actual Pokedex evaluation.
// national: 0 = Johto dex, 1 = National dex
// msg: Variable to return the message ID
// fanfare: Variable to return the fanfare ID
.macro GetDexProgressMsg,national,msg,fanfare
.halfword 248
.byte national
.halfword msg
.halfword fanfare
.endmacro

.macro WildBattle,arg0,arg1
.halfword 249
.halfword arg0
.halfword arg1
.endmacro

.macro WildBattleNoButtons,arg0,arg1
.halfword 250
.halfword arg0
.halfword arg1
.endmacro

.macro CatchTutorial
.halfword 251
.endmacro

.macro CMD_252
.halfword 252
.endmacro

.macro CheckSaveGame,arg0
.halfword 253
.halfword arg0
.endmacro

.macro SaveGame,arg0
.halfword 254
.halfword arg0
.endmacro

.macro CheckPortrait,arg0,arg1
.halfword 255
.halfword arg0
.halfword arg1
.endmacro

.macro SetPortraitTitle,arg0
.halfword 256
.halfword arg0
.endmacro

.macro CMD_257,arg0
.halfword 257
.halfword arg0
.endmacro

.macro CMD_258
.halfword 258
.endmacro

.macro CMD_259,arg0
.halfword 259
.halfword arg0
.endmacro

.macro CMD_260,arg0
.halfword 260
.halfword arg0
.endmacro

.macro CMD_261,arg0
.halfword 261
.halfword arg0
.endmacro

.macro CMD_262
.halfword 262
.endmacro

.macro CMD_263
.halfword 263
.endmacro

.macro CMD_264,arg0
.halfword 264
.halfword arg0
.endmacro

.macro CMD_265
.halfword 265
.endmacro

.macro CMD_266
.halfword 266
.endmacro

.macro CMD_267,arg0,arg1
.halfword 267
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_268,arg0
.halfword 268
.halfword arg0
.endmacro

.macro CMD_269,arg0
.halfword 269
.halfword arg0
.endmacro

.macro CMD_270
.halfword 270
.endmacro

.macro CMD_271,arg0,arg1
.halfword 271
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_272,arg0
.halfword 272
.halfword arg0
.endmacro

.macro CMD_273,arg0
.halfword 273
.halfword arg0
.endmacro

.macro CMD_274,arg0,arg1
.halfword 274
.halfword arg0
.halfword arg1
.endmacro

.macro MartScreen,arg0
.halfword 275
.halfword arg0
.endmacro

.macro SpMartScreen,arg0
.halfword 276
.halfword arg0
.endmacro

.macro GoodsMartScreen,arg0
.halfword 277
.halfword arg0
.endmacro

.macro SealMartScreen,arg0
.halfword 278
.halfword arg0
.endmacro

// Used with poison faint,but due to overworld
// poison mechanics in gen 4,this is
// never reached.
.macro DummyLostBattle
.halfword 279
.endmacro

.macro SetLastWarp,arg0
.halfword 280
.halfword arg0
.endmacro

// Are you a boy? Or are you a girl?
.macro CheckPlayerGender,var
.halfword 281
.halfword var
.endmacro

.macro HealPokemon
.halfword 282
.endmacro

.macro EndWirelessComms
.halfword 283
.endmacro

.macro EnterBattleRoom
.halfword 284
.endmacro

.macro SetPlayerDirComm,arg0
.halfword 285
.halfword arg0
.endmacro

.macro UnionMapChange
.halfword 286
.endmacro

.macro UnionRoomSpriteScreen
.halfword 287
.endmacro

.macro StoreUnionSprite,arg0,arg1
.halfword 288
.halfword arg0
.halfword arg1
.endmacro

.macro SetUnionSprite,arg0
.halfword 289
.halfword arg0
.endmacro

.macro CheckPokedex,arg0
.halfword 290
.halfword arg0
.endmacro

.macro GivePokedex
.halfword 291
.endmacro

.macro CheckShoes,arg0
.halfword 292
.halfword arg0
.endmacro

.macro GiveShoes
.halfword 293
.endmacro

.macro CheckBadge,badge,var
.halfword 294
.halfword badge
.halfword var
.endmacro

.macro GiveBadge,badge
.halfword 295
.halfword badge
.endmacro

// This command is never used because it is
// assumed that you cannot get the 8th badge
// before the other 7,or the 16th before the
// other 15. This assumption does not account
// for tweaking.
.macro CountBadges,var
.halfword 296
.halfword var
.endmacro

.macro DummyCheckBag,arg0
.halfword 297
.halfword arg0
.endmacro

.macro DummyGiveBag
.halfword 298
.endmacro

.macro CheckPartner,arg0
.halfword 299
.halfword arg0
.endmacro

.macro SetPartner
.halfword 300
.endmacro

.macro ClearPartner
.halfword 301
.endmacro

.macro CheckStepFlag,arg0
.halfword 302
.halfword arg0
.endmacro

.macro SetStepFlag
.halfword 303
.endmacro

.macro ClearStepFlag
.halfword 304
.endmacro

.macro DummyCheckGameCompleted,arg0
.halfword 305
.halfword arg0
.endmacro

.macro DummyGameCompleted
.halfword 306
.endmacro

.macro DoorAnimation,arg0,arg1,arg2,arg3,arg4
.halfword 307
.halfword arg0 // matrix x
.halfword arg1 // matrix y
.halfword arg2 // map x
.halfword arg3 // map y
.byte arg4     // door id
.endmacro

.macro WaitDoor,arg0
.halfword 308
.byte arg0     // door id
.endmacro

.macro FreeDoor,arg0
.halfword 309
.byte arg0     // door id
.endmacro

.macro OpenDoor,arg0
.halfword 310
.byte arg0     // door id
.endmacro

.macro CloseDoor,arg0
.halfword 311
.byte arg0     // door id
.endmacro

.macro GetDaycareNames
.halfword 312
.endmacro

.macro GetDaycareStatus,arg0
.halfword 313
.halfword arg0
.endmacro

.macro InitEcruteakGym
.halfword 314
.endmacro

.macro CMD_315
.halfword 315
.endmacro

.macro CMD_316
.halfword 316
.endmacro

.macro CMD_317,arg0
.halfword 317
.byte arg0
.endmacro

.macro CianwoodGymInit
.halfword 318
.endmacro

.macro CianwoodGymTurnWinch,arg0
.halfword 319
.halfword arg0
.endmacro

.macro VermilionGymInit
.halfword 320
.endmacro

.macro VermilionGymLockAction,arg0,arg1
.halfword 321
.byte arg0
.byte arg1
.endmacro

.macro VermilionGymCanCheck,arg0,arg1
.halfword 322
.byte arg0
.halfword arg1
.endmacro

.macro ResetVermilionGymCans
.halfword 323
.endmacro

.macro InitVioletGym
.halfword 324
.endmacro

.macro VioletGymElevator
.halfword 325
.endmacro

.macro InitAzaleaGym
.halfword 326
.endmacro

.macro AzaleaGymSpinarak,arg0
.halfword 327
.byte arg0
.endmacro

.macro AzaleaGymSwitch,arg0
.halfword 328
.byte arg0
.endmacro

.macro BlackthornGymInit
.halfword 329
.endmacro

.macro FuchsiaGymInit
.halfword 330
.endmacro

.macro ViridianGymInit
.halfword 331
.endmacro

.macro GetPartyCount,var
.halfword 332
.halfword var
.endmacro

.macro BagScreen,arg0
.halfword 333
.byte arg0
.endmacro

.macro BagScreenSelection,arg0
.halfword 334
.halfword arg0
.endmacro

.macro CheckPocketItems,arg0,arg1
.halfword 335
.halfword arg0
.halfword arg1
.endmacro

.macro DummyTextBerry,slot,item,quantity
.halfword 336
.byte slot
.halfword item
.halfword quantity
.endmacro

.macro TextNature,slot,nature
.halfword 337
.byte slot
.halfword nature
.endmacro

.macro SetOWDefaultPosition,arg0,arg1,arg2
.halfword 338
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro SetOWPosition,person,x,z,y,facing
.halfword 339
.halfword person
.halfword x
.halfword z
.halfword y
.halfword facing
.endmacro

.macro SetOWDefaultMovement,arg0,arg1
.halfword 340
.halfword arg0
.halfword arg1
.endmacro

.macro SetOWDefaultDirection,arg0,arg1
.halfword 341
.halfword arg0
.halfword arg1
.endmacro

.macro SetWarpPosition,arg0,arg1,arg2
.halfword 342
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro SetSpawnablePosition,arg0,arg1,arg2
.halfword 343
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro SetOWDirection,arg0,arg1
.halfword 344
.halfword arg0
.halfword arg1
.endmacro

.macro AddWaitingIcon
.halfword 345
.endmacro

.macro RemoveWaitingIcon
.halfword 346
.endmacro

.macro ReturnScriptWkSet,arg0
.halfword 347
.halfword arg0
.endmacro

.macro WaitTimeOrAB,arg0
.halfword 348
.halfword arg0
.endmacro

.macro ChoosePKMNSelection
.halfword 349
.endmacro

.macro UnionChoosePKMNSelection
.halfword 350
.endmacro

.macro GetSelectedPartySlot,arg0
.halfword 351
.halfword arg0
.endmacro

.macro SelectMove,arg0,arg1,arg2
.halfword 352
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro GetMoveSelection,arg0,arg1
.halfword 353
.byte arg0
.halfword arg1
.endmacro

.macro GetPartyPokemonID,slot,var
.halfword 354
.halfword slot
.halfword var
.endmacro

.macro CheckTradedPokemon,slot,var
.halfword 355
.halfword slot
.halfword var
.endmacro

.macro CountPartyBornPokemon,var
.halfword 356
.halfword var
.endmacro

// Count Pokemon that are not fainted.
// If except is set, exclude that slot
// from the tally. Use 6 to disable.
.macro CountAlivePokemonExceptFirst,var,except
.halfword 357
.halfword var
.halfword except
.endmacro

.macro CountTotalAlivePokemon,arg0
.halfword 358
.halfword arg0
.endmacro

.macro CountPartyEggs,arg0
.halfword 359
.halfword arg0
.endmacro

.macro TakeMoneyFlex,var
.halfword 360
.halfword var
.endmacro

.macro RetrieveDayCareMon,arg0,arg1
.halfword 361
.halfword arg0
.halfword arg1
.endmacro

.macro GiveLoanMon,arg0,arg1,arg2
.halfword 362
.byte arg0
.byte arg1
.halfword arg2
.endmacro

.macro CheckReturnLoanMon,arg0,arg1,arg2
.halfword 363
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro DeletePartyPokemon,arg0
.halfword 364
.halfword arg0
.endmacro

.macro RemoveDayCareEgg
.halfword 365
.endmacro

.macro GiveDayCareEgg
.halfword 366
.endmacro

.macro TextDayCareCost,arg0,arg1
.halfword 367
.halfword arg0
.halfword arg1
.endmacro

.macro CompareMoneyFlex,var,amount
.halfword 368
.halfword var
.halfword amount
.endmacro

.macro EggHatchScreen
.halfword 369
.endmacro

.macro CMD_370,arg0
.halfword 370
.byte arg0
.endmacro

.macro CheckDaycareLevelGain,arg0,arg1
.halfword 371
.halfword arg0
.halfword arg1
.endmacro

.macro GetDayCareSpeciesandNick,arg0
.halfword 372
.halfword arg0
.endmacro

.macro GiveDayCareMon,arg0
.halfword 373
.halfword arg0
.endmacro

.macro UnvanishOverworld,arg0
.halfword 374
.halfword arg0
.endmacro

.macro VanishOverworld,arg0
.halfword 375
.halfword arg0
.endmacro

.macro MailScreen
.halfword 376
.endmacro

.macro CountMail,arg0
.halfword 377
.halfword arg0
.endmacro

.macro RankingView,arg0,arg1
.halfword 378
.halfword arg0
.halfword arg1
.endmacro

.macro GetTimePeriod,arg0
.halfword 379
.halfword arg0
.endmacro

TIME_MORNING                    equ 0           // 4:00-9:59
TIME_AFTERNOON                  equ 1           // 10:00-16:59
TIME_EVENING                    equ 2           // 17:00-19:59
TIME_NIGHT                      equ 3           // 20:00-23:59
TIME_MIDNIGHT                   equ 4           // 24:00-3:59

.macro GetRandom,arg0,arg1
.halfword 380
.halfword arg0
.halfword arg1
.endmacro

.macro DummyGetRandom,arg0,arg1
.halfword 381
.halfword arg0
.halfword arg1
.endmacro

.macro GetPokemonHappiness,arg0,arg1
.halfword 382
.halfword arg0
.halfword arg1
.endmacro

.macro AddHappiness,arg0,arg1
.halfword 383
.halfword arg0
.halfword arg1
.endmacro

.macro SubHappiness,arg0,arg1
.halfword 384
.halfword arg0
.halfword arg1
.endmacro

.macro TextDayCareMonStats,arg0,arg1,arg2,arg3
.halfword 385
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro GetPlayerDirection,arg0
.halfword 386
.halfword arg0
.endmacro

.macro GetDayCareMonCompatibility,arg0
.halfword 387
.halfword arg0
.endmacro

.macro CheckDayCareEgg,arg0
.halfword 388
.halfword arg0
.endmacro

.macro CheckBornPokemonInParty,arg0,arg1
.halfword 389
.halfword arg0
.halfword arg1
.endmacro

.macro CheckPokemonSizeRecord,arg0,arg1
.halfword 390
.halfword arg0
.halfword arg1
.endmacro

.macro SetPokemonSizeRecord,arg0
.halfword 391
.halfword arg0
.endmacro

.macro TextPartyPokemonSize,arg0,arg1,arg2
.halfword 392
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro TextPokemonRecordSize,arg0,arg1,arg2
.halfword 393
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_394,arg0
.halfword 394
.halfword arg0
.endmacro

.macro CMD_395,arg0
.halfword 395
.halfword arg0
.endmacro

.macro CountPokemonMoves,arg0,arg1
.halfword 396
.halfword arg0
.halfword arg1
.endmacro

.macro DeleteMove,arg0,arg1
.halfword 397
.halfword arg0
.halfword arg1
.endmacro

.macro GetPartyPokemonMove,arg0,arg1,arg2
.halfword 398
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro TextPartyPokemonMove,slot,party_pos,move_pos
.halfword 399
.byte slot
.halfword party_pos
.halfword move_pos
.endmacro

// action = 0: Deactivate strength
// action = 1: Activate strength
// action = 2: Check whether strength is active
.macro Strength,action,var
.halfword 400
.byte action
.if action == 2
.halfword var
.endif
.endmacro

.macro FlashAction,action,var
.halfword 401
.byte action
.if action == 2
.halfword var
.endif
.endmacro

.macro DefogAction,action,var
.halfword 402
.byte action
.if action == 2
.halfword var
.endif
.endmacro

.macro GiveAccessory,arg0,arg1
.halfword 403
.halfword arg0
.halfword arg1
.endmacro

.macro CheckGivenAccessory,arg0,arg1,arg2
.halfword 404
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckAccessory,arg0,arg1,arg2
.halfword 405
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro GiveBGAccessory,arg0
.halfword 406
.halfword arg0
.endmacro

.macro CheckBGAccessory,arg0,arg1
.halfword 407
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_408,arg0,arg1
.halfword 408
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_409
.halfword 409
.endmacro

.macro CMD_410,arg0,arg1
.halfword 410
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_411
.halfword 411
.endmacro

.macro CMD_412,arg0,arg1,arg2
.halfword 412
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_413,arg0,arg1,arg2,arg3
.halfword 413
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_414,arg0
.halfword 414
.halfword arg0
.endmacro

.macro CMD_415,arg0
.halfword 415
.halfword arg0
.endmacro

.macro CMD_416,arg0,arg1,arg2
.halfword 416
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_417,arg0,arg1
.halfword 417
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_418,arg0,arg1
.halfword 418
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_419,arg0
.halfword 419
.halfword arg0
.endmacro

.macro CMD_420,arg0
.halfword 420
.halfword arg0
.endmacro

.macro CMD_421,arg0,arg1,arg2
.halfword 421
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_422,arg0,arg1,arg2,arg3
.halfword 422
.halfword arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro CheckCompleteJohtoDex,arg0
.halfword 423
.halfword arg0
.endmacro

.macro CheckCompleteNationalDex,arg0
.halfword 424
.halfword arg0
.endmacro

.macro OpenPokedexScreen,arg0
.halfword 425
.halfword arg0
.endmacro

.macro CheckPokemonMail,arg0,arg1,arg2
.halfword 426
.halfword arg0
.halfword arg1
.byte arg2
.endmacro

.macro CMD_427,arg0
.halfword 427
.halfword arg0
.endmacro

.macro TakePokemonMail,arg0
.halfword 428
.halfword arg0
.endmacro

//.macro CountFossils,arg0
//.halfword 429
//.halfword arg0
//.endmacro

.macro SetPhoneCall,arg0,arg1,arg2
.halfword 430
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro RunPhoneCall
.halfword 431
.endmacro

.macro CheckFossilPokemon,arg0,arg1
.halfword 432
.halfword arg0
.halfword arg1
.endmacro

.macro CheckFossil,arg0,arg1,arg2
.halfword 433
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CountPokemonUnderLevel,arg0,arg1
.halfword 434
.halfword arg0
.halfword arg1
.endmacro

.macro SurvivePoison,arg0,arg1
.halfword 435
.halfword arg0
.halfword arg1
.endmacro

.macro FinishOverworldScreen
.halfword 436
.endmacro

.macro DebugPoketch,arg0
.halfword 437
.halfword arg0
.endmacro

.macro MessageAllFromArchive,arg0,arg1
.halfword 438
.halfword arg0
.halfword arg1
.endmacro

.macro MessageFromArchive,arg0,arg1
.halfword 439
.halfword arg0
.halfword arg1
.endmacro

.macro MessageAllPutPMS,arg0,arg1
.halfword 440
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_441,arg0,arg1,arg2,arg3
.halfword 441
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_442,arg0,arg1,arg2,arg3
.halfword 442
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_443,arg0
.halfword 443
.byte arg0
.endmacro

.macro CMD_444,arg0,arg1,arg2,arg3
.halfword 444
.byte arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro GetPreviousHeaderID,arg0
.halfword 445
.halfword arg0
.endmacro

.macro GetCurrentHeaderID,arg0
.halfword 446
.halfword arg0
.endmacro

.macro SetSafariFlag,arg0,arg1
.halfword 447
.byte arg0
.byte arg1
.endmacro

.macro BattleRoomWarp,arg0,arg1,arg2,arg3,arg4
.halfword 448
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro ExitBattleRoom
.halfword 449
.endmacro

.macro GeonetScreen
.halfword 450
.endmacro

.macro CMD_451,arg0
.halfword 451
.halfword arg0
.endmacro

.macro ShowPokemonPic,arg0,arg1
.halfword 452
.halfword arg0
.halfword arg1
.endmacro

.macro HidePokemonPic
.halfword 453
.endmacro

.macro CMD_454
.halfword 454
.endmacro

.macro CMD_455
.halfword 455
.endmacro

.macro CMD_456,arg0
.halfword 456
.byte arg0
.endmacro

.macro GetPokemonNature,arg0,arg1
.halfword 457
.halfword arg0
.halfword arg1
.endmacro

.macro CheckPartyNature,arg0,arg1
.halfword 458
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_459
.halfword 459
.endmacro

.macro LoadPokegearData,arg0,arg1
.halfword 460
.halfword arg0
.halfword arg1
.endmacro

.macro SetRebattleTrainerID,arg0,arg1,arg2
.halfword 461
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro SetRebattleGymLeaderID,arg0
.halfword 462
.halfword arg0
.endmacro

.macro EnableMassOutbreaks
.halfword 463
.endmacro

.macro AddRoamingPokemon,arg0
.halfword 464
.byte arg0
.endmacro

.macro UnionGroup,arg0,arg1,arg2
.halfword 465
.halfword arg0
.if arg0 <= 3
    .halfword arg1
    .halfword arg2
.else
    .if arg0 != 6
        .halfword arg1
    .endif
.endif
.endmacro

.macro CheckEggMoves,arg0,arg1
.halfword 466
.halfword arg0
.halfword arg1
.endmacro

.macro RememberMoveScreen,arg0
.halfword 467
.halfword arg0
.endmacro

.macro TeachMovesScreen,arg0,arg1
.halfword 468
.halfword arg0
.halfword arg1
.endmacro

.macro ResponseTeachMove,arg0
.halfword 469
.halfword arg0
.endmacro

.macro InitTrade,arg0
.halfword 470
.byte arg0
.endmacro

.macro GetOfferedPokemon,arg0
.halfword 471
.halfword arg0
.endmacro

.macro GetRequestedPokemon,arg0
.halfword 472
.halfword arg0
.endmacro

.macro TradePokemonScreen,arg0
.halfword 473
.halfword arg0
.endmacro

.macro EndTrade
.halfword 474
.endmacro

.macro DummyInternationalDex
.halfword 475
.endmacro

.macro DummyDimorphismDex
.halfword 476
.endmacro

.macro NationalDex,arg0,arg1
.halfword 477
.byte arg0
.halfword arg1
.endmacro

.macro CountPokemonRibbons,arg0,arg1
.halfword 478
.halfword arg0
.halfword arg1
.endmacro

.macro CountPartyRibbons,arg0
.halfword 479
.halfword arg0
.endmacro

.macro CheckRibbon,arg0,arg1,arg2
.halfword 480
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro GiveRibbon,arg0,arg1
.halfword 481
.halfword arg0
.halfword arg1
.endmacro

.macro TextRibbon,arg0,arg1
.halfword 482
.byte arg0
.halfword arg1
.endmacro

.macro CountPokemonEVs,arg0,arg1
.halfword 483
.halfword arg0
.halfword arg1
.endmacro

.macro GetDayOfWeek,arg0
.halfword 484
.halfword arg0
.endmacro

DAY_SUNDAY                                  equ 0
DAY_MONDAY                                  equ 1
DAY_TUESDAY                                 equ 2
DAY_WEDNESDAY                               equ 3
DAY_THURSDAY                                equ 4
DAY_FRIDAY                                  equ 5
DAY_SATURDAY                                equ 6

.macro ShowRulesList,arg0
.halfword 485
.halfword arg0
.endmacro

.macro DummyGetPokemonFootprint
.halfword 486
.endmacro

.macro PCHealAnimation,arg0
.halfword 487
.halfword arg0
.endmacro

.macro ElevatorAnimation,direction,distance
.halfword 488
.halfword direction
.halfword distance
.endmacro

.macro MysteryGiftGive,arg0,arg1,arg2
.halfword 489
.halfword arg0
.if arg0 >= 1 && arg0 <= 3
    .halfword arg1
.else
    .if arg0 == 5 || arg0 == 6
        .halfword arg1
        .halfword arg2
    .endif
.endif
.endmacro

.macro CMD_490,arg0
.halfword 490
.halfword arg0
.endmacro

.macro CMD_491,arg0
.halfword 491
.halfword arg0
.endmacro

.macro CMD_492,arg0,arg1,arg2
.halfword 492
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro MPT_EASY_CHAT,arg0,arg1,arg2
.halfword 493
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_494,arg0,arg1
.halfword 494
.halfword arg0
.halfword arg1
.endmacro

.macro CheckVersion,arg0
.halfword 495
.halfword arg0
.endmacro

.macro FirstPokemonInParty,arg0
.halfword 496
.halfword arg0
.endmacro

.macro CheckPokemonType,arg0,arg1,arg2
.halfword 497
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro FirstPrimoPassword,arg0,arg1,arg2,arg3,arg4
.halfword 498
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro SecondPrimoPassword,arg0,arg1,arg2,arg3,arg4
.halfword 499
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro PreparePCAnimation,arg0
.halfword 500
.byte arg0
.endmacro

.macro OpenPCAnimation,arg0
.halfword 501
.byte arg0
.endmacro

.macro ClosePCAnimation,arg0
.halfword 502
.byte arg0
.endmacro

.macro GetLottoNumber,arg0
.halfword 503
.halfword arg0
.endmacro

.macro CheckWinLotto,arg0,arg1,arg2,arg3
.halfword 504
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro InitLotto
.halfword 505
.endmacro

.macro BufferBoxPokemonNick,arg0,arg1
.halfword 506
.byte arg0
.halfword arg1
.endmacro

.macro CountPCFreeSpace,arg0
.halfword 507
.halfword arg0
.endmacro

.macro PalParkControl,arg0
.halfword 508
.halfword arg0
.endmacro

.macro PalParkDepositCountCheck,arg0
.halfword 509
.halfword arg0
.endmacro

.macro PalParkBoxPokemonCaught
.halfword 510
.endmacro

.macro PalParkScoreResult,arg0,arg1
.halfword 511
.halfword arg0
.halfword arg1
.endmacro

.macro PlayerMovementSavingSet
.halfword 512
.endmacro

.macro PlayerMovementSavingClear
.halfword 513
.endmacro

// Animate placing the balls on the machine
// for the Hall of Fame
.macro HallOfFameAnime,num
.halfword 514
.halfword num
.endmacro

.macro AddTrainerScore,arg0
.halfword 515
.halfword arg0
.endmacro

.macro TextAccessory,arg0,arg1
.halfword 516
.byte arg0
.halfword arg1
.endmacro

.macro CheckPokemonInParty,arg0,arg1
.halfword 517
.halfword arg0
.halfword arg1
.endmacro

.macro SetDeoxysForm,arg0
.halfword 518
.halfword arg0
.endmacro

.macro CheckBurmyForms,arg0
.halfword 519
.halfword arg0
.endmacro

.macro CMD_520
.halfword 520
.endmacro

.macro CMD_521
.halfword 521
.endmacro

.macro GetHour,arg0
.halfword 522
.halfword arg0
.endmacro

.macro ShakeOverworld,arg0,arg1,arg2,arg3,arg4
.halfword 523
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro BlinkOverworld,arg0,arg1,arg2
.halfword 524
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckRegis,arg0
.halfword 525
.halfword arg0
.endmacro

.macro CMD_526,arg0
.halfword 526
.halfword arg0
.endmacro

.macro MessageUnown,arg0
.halfword 527
.halfword arg0
.endmacro

.macro CheckGBACartidge,arg0
.halfword 528
.halfword arg0
.endmacro

.macro GetFirstAlivePokemonSlot,arg0
.halfword 529
.halfword arg0
.endmacro

.macro SetMatrixAlternativeMap,arg0,arg1
.halfword 530
.halfword arg0
.byte arg1
.endmacro

.macro TextBackgroundName,arg0,arg1
.halfword 531
.byte arg0
.halfword arg1
.endmacro

.macro CheckCoinsImmediate,arg0,arg1
.halfword 532
.halfword arg0
.word arg1
.endmacro

//.macro CheckCoins,arg0,arg1
//.halfword 533
//.halfword arg0
//.halfword arg1
//.endmacro

.macro AddCoins,arg0
.halfword 534
.halfword arg0
.endmacro

.macro GetPokemonLevel,arg0,arg1
.halfword 535
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_536,arg0,arg1
.halfword 536
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_537
.halfword 537
.endmacro

.macro CMD_538,arg0,arg1
.halfword 538
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_539,arg0
.halfword 539
.halfword arg0
.endmacro

.macro CMD_540,arg0
.halfword 540
.halfword arg0
.endmacro

.macro TextNumberSp,arg0,arg1,arg2,arg3
.halfword 541
.byte arg0
.halfword arg1
.byte arg2
.byte arg3
.endmacro

.macro MonGetContestValue,arg0,arg1,arg2
.halfword 542
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CheckBirthday,arg0
.halfword 543
.halfword arg0
.endmacro

.macro MusicVolumeSet,arg0,arg1
.halfword 544
.halfword arg0
.halfword arg1
.endmacro

.macro CountSeenUnown,arg0
.halfword 545
.halfword arg0
.endmacro

.macro CMD_546,arg0,arg1
.halfword 546
.byte arg0
.halfword arg1
.endmacro

.macro CMD_547,arg0
.halfword 547
.halfword arg0
.endmacro

.macro CMD_548
.halfword 548
.endmacro

.macro CMD_549,arg0
.halfword 549
.halfword arg0
.endmacro

.macro CountHallOfFameEntries,arg0
.halfword 550
.halfword arg0
.endmacro

.macro CMD_551,arg0
.halfword 551
.halfword arg0
.endmacro

.macro CMD_552,arg0,arg1
.halfword 552
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_553,arg0,arg1
.halfword 553
.byte arg0
.halfword arg1
.endmacro

.macro CMD_554,arg0
.halfword 554
.halfword arg0
.endmacro

.macro CMD_555,arg0
.halfword 555
.halfword arg0
.endmacro

.macro CMD_556,arg0
.halfword 556
.halfword arg0
.endmacro

.macro CheckBattlePoints,arg0,arg1
.halfword 557
.halfword arg0
.halfword arg1
.endmacro

.macro GiveBP,arg0,arg1
.halfword 558
.halfword arg0
.halfword arg1
.endmacro

.macro TakeBP,arg0,arg1
.halfword 559
.halfword arg0
.halfword arg1
.endmacro

.macro CompareBP,arg0,arg1
.halfword 560
.halfword arg0
.halfword arg1
.endmacro

.macro ShakeCamera,arg0,arg1,arg2,arg3
.halfword 561
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro Battle2vs2,arg0,arg1,arg2,arg3
.halfword 562
.halfword arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro CMD_563,arg0,arg1,arg2
.halfword 563
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_564,arg0
.halfword 564
.halfword arg0
.endmacro

.macro CMD_565,arg0
.halfword 565
.halfword arg0
.endmacro

.macro PartyPokemonTradeScreen
.halfword 566
.endmacro

.macro GetDPPtPrizeItemIdAndCost,arg0,arg1,arg2
.halfword 567
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_568,arg0,arg1
.halfword 568
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_569,arg0
.halfword 569
.halfword arg0
.endmacro

.macro CheckCoinsVar,arg0,arg1
.halfword 570
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_571,arg0,arg1,arg2,arg3,arg4
.halfword 571
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro GetUniqueSealsQuantity,arg0
.halfword 572
.halfword arg0
.endmacro

.macro DummyActivateMysteryGift
.halfword 573
.endmacro

.macro GetOWMovement,arg0,arg1
.halfword 574
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_575,arg0,arg1
.halfword 575
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_576,arg0
.halfword 576
.halfword arg0
.endmacro

.macro CMD_577
.halfword 577
.endmacro

.macro CMD_578
.halfword 578
.endmacro

.macro CMD_579
.halfword 579
.endmacro

.macro TextSealSingular,arg0,arg1
.halfword 580
.byte arg0
.halfword arg1
.endmacro

.macro DummyLockAll
.halfword 581
.endmacro

.macro CMD_582,arg0,arg1,arg2
.halfword 582
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_583,arg0,arg1
.halfword 583
.halfword arg0
.byte arg1
.endmacro

.macro PartyLegalCheck,arg0
.halfword 584
.halfword arg0
.endmacro

.macro CMD_585
.halfword 585
.endmacro

.macro CMD_586,arg0
.halfword 586
.halfword arg0
.endmacro

.macro CMD_587
.halfword 587
.endmacro

.macro LastBattleCheckCaught,arg0
.halfword 588
.halfword arg0
.endmacro

.macro WildBattleSp,species,level,shiny
.halfword 589
.halfword species
.halfword level
.byte shiny
.endmacro

.macro CheckTrainerCardLevel,arg0
.halfword 590
.halfword arg0
.endmacro

.macro DummyRideBike
.halfword 591
.endmacro

.macro CMD_592,arg0
.halfword 592
.halfword arg0
.endmacro

.macro ShowSaveBox
.halfword 593
.endmacro

.macro HideSaveBox
.halfword 594
.endmacro

.macro ScopeMode,arg0
.halfword 595
.byte arg0
.endmacro

.macro GetFollowingPokeSize,arg0
.halfword 596
.halfword arg0
.endmacro

.macro CMD_597
.halfword 597
.endmacro

.macro CMD_598,arg0
.halfword 598
.halfword arg0
.endmacro

.macro FollowingPokePCAnimation
.halfword 599
.endmacro

.macro SendBackFollowingPoke
.halfword 600
.endmacro

.macro FollowingPokeFacePlayer
.halfword 601
.endmacro

.macro LockFollowingPoke,arg0
.halfword 602
.halfword arg0
.endmacro

.macro WaitFollowingPoke
.halfword 603
.endmacro

.macro SetFollowingPokeMovement,arg0
.halfword 604
.halfword arg0
.endmacro

.macro SetFollowingPokePosition,arg0,arg1
.halfword 605
.byte arg0
.byte arg1
.endmacro

.macro BallResetFollowingPoke
.halfword 606
.endmacro

.macro NoBallResetFollowingPoke
.halfword 607
.endmacro

.macro SendOutFollowingPoke
.halfword 608
.endmacro

.macro CMD_609
.halfword 609
.endmacro

.macro CMD_610,arg0
.halfword 610
.halfword arg0
.endmacro

//.macro Pokeathlon,arg0,arg1,arg2,arg3,arg4,arg5,arg6
//.halfword 611
//.byte arg0
//.byte arg1
//.halfword arg2
//.halfword arg3
//.halfword arg4
//.halfword arg5
//.halfword arg6
//.endmacro

.macro CMD_612,arg0
.halfword 612
.halfword arg0
.endmacro

.macro GetPokegearContactRandomGiftBerry,arg0
.halfword 613
.halfword arg0
.endmacro

.macro GetPokegearContactGiftItem,arg0
.halfword 614
.halfword arg0
.endmacro

.macro CameronPhotoScreen,arg0
.halfword 615
.halfword arg0
.endmacro

.macro TakePhoto,arg0
.halfword 615
.halfword arg0
.endmacro

// Photo IDs
PHOTO_NEW_BARK_TOWN                         equ 0
PHOTO_CHERRYGROVE_CITY                      equ 1
PHOTO_FALKNER                               equ 2
PHOTO_RUINS_OF_ALPH_EX                      equ 3
PHOTO_RUINS_OF_ALPH_IN                      equ 4
PHOTO_ROUTE_32                              equ 5
PHOTO_SLOWPOKE_WELL                         equ 6
PHOTO_BUGSY                                 equ 7
PHOTO_ILEX_FOREST                           equ 8
PHOTO_ROUTE_34_WITH_DAYCARE_MAN             equ 9
PHOTO_GOLDENROD_TUNNEL_TEAM_ROCKET          equ 10
PHOTO_ROUTE_35                              equ 11
PHOTO_NATIONAL_PARK_GATE                    equ 12
PHOTO_POKEATHLON_DOME_APRIJUICE             equ 13
PHOTO_POKEATHLON_DOME                       equ 14
PHOTO_WHITNEY                               equ 15
PHOTO_NATIONAL_PARK_FOUNTAIN                equ 16
PHOTO_NATIONAL_PARK                         equ 17
PHOTO_ECRUTEAK_CITY                         equ 19
PHOTO_MORTY                                 equ 20

PHOTO_OLIVINE_CITY                          equ 23

PHOTO_OLIVINE_CAFE                          equ 25

PHOTO_GLITTER_LIGHTHOUSE                    equ 27
PHOTO_ROUTE_39                              equ 28
PHOTO_JOHTO_FRONTIER_ACCESS                 equ 29

PHOTO_JOHTO_BATTLE_FRONTIER                 equ 31

PHOTO_CIANWOOD_CITY                         equ 35

PHOTO_ROUTE_48                              equ 37
PHOTO_SAFARI_ZONE_GATE                      equ 38

PHOTO_PRYCE                                 equ 40

PHOTO_ICE_PATH                              equ 43
PHOTO_BLACKTHORN_CITY                       equ 44

PHOTO_DRAGON_MASTER                         equ 46
PHOTO_ROUTE_45                              equ 47
PHOTO_ROUTE_26                              equ 48

PHOTO_VERMILION_CITY                        equ 50

PHOTO_SAFFRON_CITY_TRAIN_STATION            equ 52
PHOTO_SILPH_CO_EX                           equ 53

PHOTO_CERULEAN_CITY                         equ 55

PHOTO_CELADON_CITY                          equ 57
PHOTO_CELADON_CITY_DEPARTMENT_STORE         equ 58
PHOTO_ROUTE_12                              equ 59
PHOTO_ROUTE_14                              equ 60

PHOTO_FUCHSIA_CITY                          equ 62

PHOTO_PEWTER_CITY_MUSEUM                    equ 65
PHOTO_PEWTER_CITY                           equ 66

PHOTO_VIRIDIAN_CITY                         equ 69
PHOTO_JANINE                                equ 70
PHOTO_ROUTE_22                              equ 71
PHOTO_ROUTE_1                               equ 72
PHOTO_PALLET_TOWN                           equ 73
PHOTO_ROUTE_21                              equ 74
PHOTO_SEAFOAM_ISLANDS                       equ 75

PHOTO_MT_SILVER                             equ 77
PHOTO_MT_SILVER_CAVE                        equ 78

PHOTO_LT_SURGE                              equ 80
PHOTO_ERIKA                                 equ 81

PHOTO_CLAIR                                 equ 83
PHOTO_MISTY                                 equ 84
PHOTO_BLAINE                                equ 85
PHOTO_BROCK                                 equ 86

PHOTO_SABRINA                               equ 88
PHOTO_JASMINE                               equ 89
PHOTO_PROFESSOR_OAK                         equ 90
PHOTO_CHUCK                                 equ 91
PHOTO_BLUE                                  equ 92

.macro CMD_616,arg0
.halfword 616
.halfword arg0
.endmacro

.macro CMD_617
.halfword 617
.endmacro

.macro CheckAlbumIfFull,arg0
.halfword 618
.halfword arg0
.endmacro

.macro CheckRocketCostume,arg0
.halfword 619
.halfword arg0
.endmacro

.macro ActivateRocketCostume,arg0
.halfword 620
.byte arg0
.endmacro

.macro CMD_621
.halfword 621
.endmacro

.macro GetOWDirection,arg0,arg1
.halfword 622
.halfword arg0
.halfword arg1
.endmacro

.macro AnimationApricornTree,arg0
.halfword 623
.halfword arg0
.endmacro

.macro ApricornTreeGetApricorn,arg0
.halfword 624
.halfword arg0
.endmacro

.macro GiveApricornFromTree,arg0,arg1,arg2
.halfword 625
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro TextApricornName,arg0,arg1
.halfword 626
.byte arg0
.halfword arg1
.endmacro

.macro CMD_627,arg0
.halfword 627
.byte arg0
.endmacro

.macro CMD_628,arg0,arg1
.halfword 628
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_629
.halfword 629
.endmacro

.macro CMD_630,arg0
.halfword 630
.halfword arg0
.endmacro

.macro CMD_631,arg0,arg1,arg2
.halfword 631
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CountPartyMonsOfSpecies,arg0,arg1
.halfword 632
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_633,arg0,arg1,arg2
.halfword 633
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_634,arg0,arg1
.halfword 634
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_635,arg0,arg1
.halfword 635
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_636,arg0
.halfword 636
.halfword arg0
.endmacro

.macro CMD_637,arg0,arg1,arg2
.halfword 637
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_638,arg0,arg1,arg2
.halfword 638
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_639,arg0,arg1,arg2
.halfword 639
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_640,arg0
.halfword 640
.halfword arg0
.endmacro

.macro SaveWipeExtraChunks
.halfword 641
.endmacro

.macro CMD_642,arg0
.halfword 642
.halfword arg0
.endmacro

.macro CMD_643,arg0,arg1,arg2
.halfword 643
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_644,arg0,arg1,arg2
.halfword 644
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_645,arg0,arg1,arg2
.halfword 645
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_646,arg0
.halfword 646
.halfword arg0
.endmacro

.macro GetPartySlotWithSpecies,arg0,arg1
.halfword 647
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_648,arg0,arg1,arg2,arg3,arg4
.halfword 648
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro OpenScratchCardScreen
.halfword 649
.endmacro

.macro CloseScratchCard
.halfword 650
.endmacro

.macro GetScratchCardPrize,arg0,arg1,arg2
.halfword 651
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_652,arg0,arg1,arg2
.halfword 652
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro MoveTutorChooseMove,mon_slot,tutor_no,arg2,arg3
.halfword 653
.halfword mon_slot
.halfword tutor_no
.halfword arg2
.halfword arg3
.endmacro

.macro TutorMoveTeachInSlot,party_slot,move_slot,move
.halfword 654
.halfword party_slot
.halfword move_slot
.halfword move
.endmacro

.macro TutorMoveGetPrice,arg0,arg1
.halfword 655
.halfword arg0
.halfword arg1
.endmacro

.macro CheckHeadbuttCompatibility,arg0,arg1
.halfword 656
.halfword arg0
.halfword arg1
.endmacro

.macro IVCheckerJudge,mon_slot,iv_sum,best_stat,best_iv
.halfword 657
.halfword mon_slot
.halfword iv_sum
.halfword best_stat
.halfword best_iv
.endmacro

.macro BufferStatName,arg0,arg1
.halfword 658
.byte arg0
.halfword arg1
.endmacro

.macro SetMonForme,arg0,arg1
.halfword 659
.halfword arg0
.halfword arg1
.endmacro

.macro TextTrainerName,arg0,arg1
.halfword 660
.byte arg0
.halfword arg1
.endmacro

.macro CMD_661,arg0,arg1,arg2,arg3
.halfword 661
.byte arg0
.word arg1
.byte arg2
.byte arg3
.endmacro

.macro CMD_662,arg0,arg1,arg2
.halfword 662
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_663,arg0
.halfword 663
.halfword arg0
.endmacro

.macro CMD_664
.halfword 664
.endmacro

.macro CMD_665,arg0
.halfword 665
.halfword arg0
.endmacro

.macro CMD_666,arg0
.halfword 666
.halfword arg0
.endmacro

.macro CMD_667,arg0
.halfword 667
.halfword arg0
.endmacro

.macro TextTypeName,arg0,arg1
.halfword 668
.byte arg0
.halfword arg1
.endmacro

//.macro GetItemQuantity,arg0,arg1
//.halfword 669
//.halfword arg0
//.halfword arg1
//.endmacro

.macro GetHiddenPowerType,arg0,arg1
.halfword 670
.halfword arg0
.halfword arg1
.endmacro

.macro SetFavoriteMon
.halfword 671
.endmacro

.macro GetFavoriteMon,arg0,arg1,arg2
.halfword 672
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro GetOwnedRotomFormes,arg0,arg1,arg2,arg3,arg4
.halfword 673
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro CountTranformedRotomsInParty,arg0,arg1
.halfword 674
.halfword arg0
.halfword arg1
.endmacro

.macro UpdateRotomForme,arg0,arg1,arg2,arg3
.halfword 675
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro GetPartyPokemonForm,arg0,arg1
.halfword 676
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_677,arg0,arg1
.halfword 677
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_678,arg0,arg1
.halfword 678
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_679
.halfword 679
.endmacro

.macro CMD_680,arg0
.halfword 680
.halfword arg0
.endmacro

.macro CMD_681,arg0
.halfword 681
.halfword arg0
.endmacro

.macro CMD_682,arg0
.halfword 682
.halfword arg0
.endmacro

.macro CMD_683,arg0
.halfword 683
.halfword arg0
.endmacro

.macro GetCurrentWeather,arg0
.halfword 684
.halfword arg0
.endmacro

.macro GetPlayerCoordinates,arg0,arg1,arg2
.halfword 685
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_686,arg0,arg1
.halfword 686
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_687,arg0
.halfword 687
.halfword arg0
.endmacro

.macro CheckFatefulEncounter,arg0,arg1
.halfword 688
.halfword arg0
.halfword arg1
.endmacro

// Attempt to remove all Griseous Orbs and reset Pokemon
// to formes present in Diamond and Pearl, to avoid
// problems communicating with those games.
.macro CommSanitizeParty,var_result
.halfword 689
.halfword var_result
.endmacro

.macro DayCareSanitizeMon,arg0,arg1
.halfword 690
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_691,arg0
.halfword 691
.halfword arg0
.endmacro

.macro TextBattleHallStreak,arg0,arg1,arg2,arg3,arg4,arg5
.halfword 692
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.halfword arg5
.endmacro

.macro BattleHallCountUsedSpecies,arg0
.halfword 693
.halfword arg0
.endmacro

.macro BattleHallGetTotalStreak,arg0
.halfword 694
.halfword arg0
.endmacro

.macro CMD_695,arg0
.halfword 695
.halfword arg0
.endmacro

.macro CMD_696,arg0
.halfword 696
.halfword arg0
.endmacro

.macro CMD_697,arg0
.halfword 697
.halfword arg0
.endmacro

.macro FollowingPokemonIsEventTrigger,arg0,arg1,arg2
.halfword 698
.byte arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_699
.halfword 699
.endmacro

.macro CMD_700
.halfword 700
.endmacro

.macro PokemonHasItem,arg0,arg1
.halfword 701
.halfword arg0
.halfword arg1
.endmacro

.macro BattleTowerSetUpMultiBattle
.halfword 702
.endmacro

.macro SetPlayerVolume,arg0
.halfword 703
.halfword arg0
.endmacro

.macro CMD_704,arg0,arg1
.halfword 704
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_705,arg0,arg1
.halfword 705
.halfword arg0
.word arg1
.endmacro

.macro CMD_706,arg0
.halfword 706
.halfword arg0
.endmacro

.macro CheckPokemonIsSeen,arg0,arg1
.halfword 707
.halfword arg0
.halfword arg1
.endmacro

.macro FloorTrapAnimation,arg0
.halfword 708
.halfword arg0
.endmacro

.macro CMD_709
.halfword 709
.endmacro

.macro CMD_710
.halfword 710
.endmacro

.macro TalkFollowingPoke
.halfword 711
.endmacro

.macro CMD_712,arg0
.halfword 712
.byte arg0
.endmacro

.macro OpenAlphPuzzle,arg0
.halfword 713
.byte arg0
.endmacro

.macro OpenRuinsofAlphHiddenRoom,arg0
.halfword 714
.byte arg0
.endmacro

.macro UpdateDayCareMonOverworlds
.halfword 715
.endmacro

.macro CMD_716
.halfword 716
.endmacro

.macro CMD_717,arg0
.halfword 717
.halfword arg0
.endmacro

.macro CMD_718,arg0,arg1
.halfword 718
.byte arg0
.halfword arg1
.endmacro

.macro CMD_719,arg0,arg1
.halfword 719
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_720,arg0
.halfword 720
.halfword arg0
.endmacro

.macro CMD_721,arg0
.halfword 721
.halfword arg0
.endmacro

.macro CMD_722,arg0,arg1,arg2,arg3,arg4
.halfword 722
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro BoatAnimation,arg0,arg1,arg2,arg3,arg4
.halfword 723
.byte arg0
.byte arg1
.halfword arg2
.halfword arg3
.halfword arg4
.endmacro

.macro CMD_724,arg0,arg1
.halfword 724
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_725,arg0,arg1
.halfword 725
.byte arg0
.halfword arg1
.endmacro

.macro CMD_726
.halfword 726
.endmacro

.macro CMD_727,arg0
.halfword 727
.halfword arg0
.endmacro

.macro CMD_728,arg0,arg1
.halfword 728
.byte arg0
.byte arg1
.endmacro

.macro CheckAlivePokemon,arg0
.halfword 729
.halfword arg0
.endmacro

.macro CheckFollowingPoke,arg0
.halfword 730
.halfword arg0
.endmacro

.macro CMD_731
.halfword 731
.endmacro

.macro CMD_732,arg0
.halfword 732
.byte arg0
.endmacro

.macro CMD_733,arg0,arg1
.halfword 733
.byte arg0
.halfword arg1
.endmacro

.macro CMD_734,arg0
.halfword 734
.byte arg0
.endmacro

.macro CheckKurtApricorn,arg0
.halfword 735
.halfword arg0
.endmacro

.macro ClearKurtApricorn
.halfword 736
.endmacro

.macro GiveApricornBalls,arg0
.halfword 737
.halfword arg0
.endmacro

.macro CheckApricornCount,arg0
.halfword 738
.halfword arg0
.endmacro

.macro KurtApricornMenuScreen
.halfword 739
.endmacro

.macro StoreApricornJuice,arg0,arg1
.halfword 740
.halfword arg0
.halfword arg1
.endmacro

.macro CheckJuice,arg0,arg1,arg2,arg3
.halfword 741
.halfword arg0
.halfword arg1
.halfword arg2
.halfword arg3
.endmacro

.macro CMD_742,arg0,arg1,arg2
.halfword 742
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_743,arg0
.halfword 743
.halfword arg0
.endmacro

.macro CreatePokeathlonFriendshipRoomStatues
.halfword 744
.endmacro

.macro TextPokeathlonCourseName,arg0,arg1
.halfword 745
.byte arg0
.halfword arg1
.endmacro

.macro OpenTouchScreen
.halfword 746
.endmacro

.macro CloseTouchScreen
.halfword 747
.endmacro

.macro YesNoTouchScreen,arg0
.halfword 748
.halfword arg0
.endmacro

.macro MultiTouchStandardText,arg0,arg1,arg2,arg3,arg4
.halfword 749
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro MultiTouchLocalText,arg0,arg1,arg2,arg3,arg4
.halfword 750
.byte arg0
.byte arg1
.byte arg2
.byte arg3
.halfword arg4
.endmacro

.macro CreateMultiTouchBox,arg0,arg1,arg2
.halfword 751
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CloseMultiTouch
.halfword 752
.endmacro

.macro RockSmashItemCheck,arg0,arg1,arg2
.halfword 753
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro CMD_754,arg0
.halfword 754
.halfword arg0
.endmacro

.macro CMD_755
.halfword 755
.endmacro

.macro CMD_756
.halfword 756
.endmacro

.macro CMD_757
.halfword 757
.endmacro

.macro CMD_758,arg0
.halfword 758
.halfword arg0
.endmacro

.macro CMD_759
.halfword 759
.endmacro

.macro CMD_760
.halfword 760
.endmacro

.macro CMD_761,arg0
.halfword 761
.halfword arg0
.endmacro

.macro CMD_762,arg0
.halfword 762
.halfword arg0
.endmacro

.macro CMD_763
.halfword 763
.endmacro

.macro CMD_764
.halfword 764
.endmacro

.macro CMD_765
.halfword 765
.endmacro

.macro CMD_766
.halfword 766
.endmacro

.macro CMD_767
.halfword 767
.endmacro

.macro CMD_768
.halfword 768
.endmacro

.macro CMD_769
.halfword 769
.endmacro

.macro CMD_770,arg0
.halfword 770
.halfword arg0
.endmacro

.macro CMD_771
.halfword 771
.endmacro

.macro CMD_772
.halfword 772
.endmacro

.macro RenderCutscene,arg0
.halfword 773
.halfword arg0
.endmacro

.macro CMD_774,arg0
.halfword 774
.halfword arg0
.endmacro

.macro CMD_775,arg0,arg1
.halfword 775
.halfword arg0
.halfword arg1
.endmacro

.macro GiveTogepiEgg
.halfword 776
.endmacro

.macro CMD_777,arg0,arg1
.halfword 777
.halfword arg0
.halfword arg1
.endmacro

.macro GiveSpikyEaredPichu
.halfword 778
.endmacro

.macro RadioMusicIsPlaying,arg0,arg1
.halfword 779
.halfword arg0
.halfword arg1
.endmacro

.macro OpenVoltorbFlip,arg0,arg1
.halfword 780
.byte arg0
.byte arg1
.endmacro

.macro KenyaCheckPartyOrMailbox,arg0
.halfword 781
.halfword arg0
.endmacro

.macro MartSell
.halfword 782
.endmacro

.macro SetFollowPokeInhibitState,arg0
.halfword 783
.byte arg0
.endmacro

.macro ScriptOverlayCmd,arg0,arg1
.halfword 784
.byte arg0
.byte arg1
.endmacro

.macro BugContestAction,arg0,arg1
.halfword 785
.byte arg0
.halfword arg1
.endmacro

.macro TextBugContestWinner,arg0
.halfword 786
.byte arg0
.endmacro

.macro JudgeBugContest,arg0,arg1,arg2
.halfword 787
.halfword arg0
.halfword arg1
.halfword arg2
.endmacro

.macro TextBugContestMonNick,arg0,arg1
.halfword 788
.byte arg0
.halfword arg1
.endmacro

.macro BugContestGetTimeLeft,arg0
.halfword 789
.byte arg0
.endmacro

.macro IsBugContestantRegistered,arg0,arg1
.halfword 790
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_791,arg0,arg1
.halfword 791
.byte arg0
.halfword arg1
.endmacro

.macro CMD_792
.halfword 792
.endmacro

.macro TakeMomMoney,arg0,arg1
.halfword 793
.halfword arg0
.halfword arg1
.endmacro

.macro CheckMomMoneyBalance,arg0,arg1
.halfword 794
.halfword arg0
.word arg1
.endmacro

.macro ShowMomMoney,arg0,arg1
.halfword 795
.halfword arg0
.halfword arg1
.endmacro

.macro HideMomMoney
.halfword 796
.endmacro

.macro CMD_797
.halfword 797
.endmacro

.macro TextRulesetName,arg0
.halfword 798
.halfword arg0
.endmacro

.macro CMD_799,arg0
.halfword 799
.halfword arg0
.endmacro

.macro CMD_800,arg0
.halfword 800
.halfword arg0
.endmacro

.macro CMD_801,arg0
.halfword 801
.halfword arg0
.endmacro

.macro CMD_802
.halfword 802
.endmacro

.macro CMD_803,arg0,arg1
.halfword 803
.halfword arg0
.halfword arg1
.endmacro

.macro UpdateTownMap,arg0
.halfword 804
.byte arg0
.endmacro

.macro CMD_805
.halfword 805
.endmacro

.macro CMD_806
.halfword 806
.endmacro

.macro CMD_807,arg0,arg1
.halfword 807
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_808,arg0
.halfword 808
.halfword arg0
.endmacro

.macro CMD_809,arg0
.halfword 809
.halfword arg0
.endmacro

.macro CelebiTimeTravelAnimation
.halfword 810
.endmacro

.macro CMD_811,arg0,arg1
.halfword 811
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_812
.halfword 812
.endmacro

.macro MomGiftCheck,arg0
.halfword 813
.halfword arg0
.endmacro

.macro CMD_814
.halfword 814
.endmacro

.macro CMD_815,arg0
.halfword 815
.halfword arg0
.endmacro

.macro UnownCircle
.halfword 816
.endmacro

.macro CMD_817,arg0
.halfword 817
.byte arg0
.endmacro

.macro InitMystriStageAnimation
.halfword 818
.endmacro

.macro CMD_819
.halfword 819
.endmacro

.macro CMD_820,arg0
.halfword 820
.byte arg0
.endmacro

.macro GetBuenasPassword,arg0,arg1
.halfword 821
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_822
.halfword 822
.endmacro

.macro CMD_823,arg0
.halfword 823
.halfword arg0
.endmacro

.macro CMD_824,arg0
.halfword 824
.halfword arg0
.endmacro

.macro GetShinyLeafCount,arg0,arg1
.halfword 825
.halfword arg0
.halfword arg1
.endmacro

.macro TryGiveShinyLeafCrown,arg0
.halfword 826
.halfword arg0
.endmacro

.macro CheckPokemonNickname,arg0,arg1
.halfword 827
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_828,arg0,arg1,arg2
.halfword 828
.halfword arg0
.byte arg1
.halfword arg2
.endmacro

.macro CMD_829,arg0
.halfword 829
.halfword arg0
.endmacro

.macro CMD_830,arg0
.halfword 830
.halfword arg0
.endmacro

.macro CMD_831,arg0
.halfword 831
.halfword arg0
.endmacro

.macro CMD_832,arg0
.halfword 832
.halfword arg0
.endmacro

.macro CMD_833,arg0
.halfword 833
.halfword arg0
.endmacro

.macro CMD_834,arg0
.halfword 834
.halfword arg0
.endmacro

.macro CMD_835,arg0
.halfword 835
.halfword arg0
.endmacro

.macro CheckJadeOrbRequirements,arg0
.halfword 836
.halfword arg0
.endmacro

.macro CMD_837,arg0
.halfword 837
.halfword arg0
.endmacro

.macro CheckMoneyFull,arg0,arg1
.halfword 838
.halfword arg0
.halfword arg1
.endmacro

.macro SystemSetSleepFlag,arg0
.halfword 839
.halfword arg0
.endmacro

.macro CMD_840,arg0,arg1
.halfword 840
.halfword arg0
.halfword arg1
.endmacro

.macro CMD_841,arg0
.halfword 841
.byte arg0
.endmacro

.macro CMD_842,arg0
.halfword 842
.byte arg0
.endmacro

.macro TextItemLowercase,arg0,arg1
.halfword 843
.byte arg0
.halfword arg1
.endmacro

.macro TextItemPlural,arg0,arg1
.halfword 844
.byte arg0
.halfword arg1
.endmacro

.macro TextPartyPokemonDefault,arg0,arg1
.halfword 845
.byte arg0
.halfword arg1
.endmacro

.macro CMD_846,arg0,arg1,arg2,arg3
.halfword 846
.byte arg0
.halfword arg1
.halfword arg2
.byte arg3
.endmacro

.macro CMD_847,arg0
.halfword 847
.byte arg0
.endmacro

.macro CMD_848,arg0,arg1
.halfword 848
.byte arg0
.halfword arg1
.endmacro

.macro TextTrainerClass,arg0,arg1
.halfword 849
.byte arg0
.halfword arg1
.endmacro

.macro TextSealPlural,arg0,arg1
.halfword 850
.byte arg0
.halfword arg1
.endmacro

.macro TextCapitalize,arg0
.halfword 851
.byte arg0
.endmacro

.macro TextFloor,arg0,arg1
.halfword 852
.byte arg0
.byte arg1
.endmacro

// Convenience macros

// Generic compare macro which attempts to deduce argument types based on their values
// Any values between 0x4000 to 0x40FF and 0x8000 to 0x8015 are considered event variable identifiers
//.macro Compare,var,arg
//  .if ((arg >= VARS_START && arg <= VARS_END) || (arg >= SPECIAL_VARS_START && arg <= SPECIAL_VARS_END))
//      compare_var_to_var var,arg
//  .else
//      compare_var_to_value var,arg
//  .endif
//.endmacro

.macro JumpIfUnset,flag,dest
checkflag flag
goto_if 0,dest
.endmacro

.macro JumpIfSet,flag,dest
checkflag flag
goto_if 1,dest
.endmacro

.macro JumpIfLessThan,dest // LESS THAN
goto_if 0,dest
.endmacro

.macro JumpIfEqual,dest // EQUAL
goto_if 1,dest
.endmacro

.macro JumpIfGreaterThan,dest // GREATER THAN
goto_if 2,dest
.endmacro

.macro JumpIfLessThanOrEqual,dest // LESS THAN OR EQUAL
goto_if 3,dest
.endmacro

.macro JumpIfGreaterThanOrEqual,dest // GREATER THAN OR EQUAL
goto_if 4,dest
.endmacro

.macro JumpIfNotEqual,dest // NOT EQUAL
goto_if 5,dest
.endmacro

.macro CallIfNotSet,flag,dest
checkflag flag
call_if 0,dest
.endmacro

.macro CallIfSet,flag,dest
checkflag flag
call_if 1,dest
.endmacro

.macro CallIfLessThan,dest // LESS THAN
call_if 0,dest
.endmacro

.macro CallIfEqual,dest // EQUAL
call_if 1,dest
.endmacro

.macro CallIfGreaterThan,dest // GREATER THAN
call_if 2,dest
.endmacro

.macro CallIfLessThanOrEqual,dest // LESS THAN OR EQUAL
call_if 3,dest
.endmacro

.macro CallIfGreaterThanOrEqual,dest // GREATER THAN OR EQUAL
call_if 4,dest
.endmacro

.macro CallIfNotEqual,dest // NOT EQUAL
call_if 5,dest
.endmacro

.macro JumpIfDefeated,trainer,dest
checktrainerflag trainer
goto_if 1,dest
.endmacro

.macro JumpIfNotDefeated,trainer,dest
checktrainerflag trainer
goto_if 0,dest
.endmacro

.macro CallIfDefeated,trainer,dest
checktrainerflag trainer
call_if 1,dest
.endmacro

.macro CallIfNotDefeated,trainer,dest
checktrainerflag trainer
call_if 0,dest
.endmacro

.macro SetItemVars,item,quantity
.if item < 0x4000
setvar VAR_SPECIAL_x8004,item
.else
copyvar VAR_SPECIAL_x8004,item
.endif
.if quantity < 0x4000
setvar VAR_SPECIAL_x8005,quantity
.else
copyvar VAR_SPECIAL_x8005,quantity
.endif
.endmacro

.macro JumpIfNoItemSpace,item,quantity,target
item_vars item,quantity
hasspaceforitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
compare VAR_SPECIAL_RESULT,0
goto_if_eq target
.endmacro

.macro GiveItemNoCheck,item,quantity
item_vars item,quantity
callstd std_give_item_verbose // std_give_item_verbose
.endmacro

.macro TakeItemNoCheck,item,quantity
item_vars item,quantity
takeitem VAR_SPECIAL_x8004,VAR_SPECIAL_x8005,VAR_SPECIAL_RESULT
.endmacro

//.macro Switch,var
//copyvar VAR_SPECIAL_x8008,var
//.endmacro

//.macro Case,value,target
//compare VAR_SPECIAL_x8008,value
//goto_if_eq target
//.endmacro

.macro PhoneCall,who,b,c
setvar VAR_SPECIAL_x8004,who
setvar VAR_SPECIAL_x8005,b
setvar VAR_SPECIAL_x8006,c
callstd std_phone_call
.endmacro

.macro SimpleNPCMessage,msgid
play_se 1500 // SEQ_SE_DP_SELECT
lockall
faceplayer
npc_msg msgid
wait_button_or_walk_away
closemsg
releaseall
.endmacro

// Adapted DSPRE Nomenclature
LESS                equ 0
EQUAL               equ 1
GREATER             equ 2
LESS_EQUAL          equ 3
GREATER_EQUAL       equ 4
DIFFERENT           equ 5

Camera              equ 241
Apricorn            equ 252
Following           equ 253
Player              equ 255

Up                  equ 0
Down                equ 1
Left                equ 2
Right               equ 3
