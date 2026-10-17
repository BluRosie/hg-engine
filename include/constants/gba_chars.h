#ifndef CONSTANTS_GBA_GBA_CHARS
#define CONSTANTS_GBA_GBA_CHARS

// taken from pokeemerald

#define POKEMON_NAME_EXTENDED_LENGTH_CONTROL_CHAR 0xFE

#define GBA_CHAR_SPACE             0x00
#define GBA_CHAR_A_GRAVE           0x01
#define GBA_CHAR_A_ACUTE           0x02
#define GBA_CHAR_A_CIRCUMFLEX      0x03
#define GBA_CHAR_C_CEDILLA         0x04
#define GBA_CHAR_E_GRAVE           0x05
#define GBA_CHAR_E_ACUTE           0x06
#define GBA_CHAR_E_CIRCUMFLEX      0x07
#define GBA_CHAR_E_DIAERESIS       0x08
#define GBA_CHAR_I_GRAVE           0x09
// #define GBA_CHAR_I_ACUTE         0x0A // Is 0x5A instead
#define GBA_CHAR_I_CIRCUMFLEX      0x0B
#define GBA_CHAR_I_DIAERESIS       0x0C
#define GBA_CHAR_O_GRAVE           0x0D
#define GBA_CHAR_O_ACUTE           0x0E
#define GBA_CHAR_O_CIRCUMFLEX      0x0F
#define GBA_CHAR_OE                0x10
#define GBA_CHAR_U_GRAVE           0x11
#define GBA_CHAR_U_ACUTE           0x12
#define GBA_CHAR_U_CIRCUMFLEX      0x13
#define GBA_CHAR_N_TILDE           0x14
#define GBA_CHAR_ESZETT            0x15
#define GBA_CHAR_a_GRAVE           0x16
#define GBA_CHAR_a_ACUTE           0x17
// #define GBA_CHAR_a_CIRCUMFLEX    0x18 // Is 0x68 instead
#define GBA_CHAR_c_CEDILLA         0x19
#define GBA_CHAR_e_GRAVE           0x1A
#define GBA_CHAR_e_ACUTE           0x1B
#define GBA_CHAR_e_CIRCUMFLEX      0x1C
#define GBA_CHAR_e_DIAERESIS       0x1D
#define GBA_CHAR_i_GRAVE           0x1E
// #define GBA_CHAR_i_ACUTE         0x1F // Is 0x6F instead
#define GBA_CHAR_i_CIRCUMFLEX      0x20
#define GBA_CHAR_i_DIAERESIS       0x21
#define GBA_CHAR_o_GRAVE           0x22
#define GBA_CHAR_o_ACUTE           0x23
#define GBA_CHAR_o_CIRCUMFLEX      0x24
#define GBA_CHAR_oe                0x25
#define GBA_CHAR_u_GRAVE           0x26
#define GBA_CHAR_u_ACUTE           0x27
#define GBA_CHAR_u_CIRCUMFLEX      0x28
#define GBA_CHAR_n_TILDE           0x29
#define GBA_CHAR_MASCULINE_ORDINAL 0x2A
#define GBA_CHAR_FEMININE_ORDINAL  0x2B
#define GBA_CHAR_SUPER_ER          0x2C
#define GBA_CHAR_AMPERSAND         0x2D
#define GBA_CHAR_PLUS              0x2E
//
#define GBA_CHAR_LV                0x34
#define GBA_CHAR_EQUALS            0x35
#define GBA_CHAR_SEMICOLON         0x36
#define GBA_CHAR_BARD_WORD_DELIMIT 0x37 // Empty space to separate words in Bard's song
#define GBA_CHAR_INV_QUESTION_MARK 0x51
#define GBA_CHAR_INV_EXCL_MARK     0x52
#define GBA_CHAR_PK                0x53
#define GBA_CHAR_MN                0x54
#define GBA_CHAR_PO                0x55
#define GBA_CHAR_KE                0x56
#define GBA_CHAR_BLOCK_1           0x57 // Each of these 3
#define GBA_CHAR_BLOCK_2           0x58 // GBA_CHARs contains 1/3
#define GBA_CHAR_BLOCK_3           0x59 // of the word BLOCK
#define GBA_CHAR_I_ACUTE           0x5A
#define GBA_CHAR_PERCENT           0x5B
#define GBA_CHAR_LEFT_PAREN        0x5C
#define GBA_CHAR_RIGHT_PAREN       0x5D
//
#define GBA_CHAR_a_CIRCUMFLEX      0x68
//
#define GBA_CHAR_i_ACUTE           0x6F
//
#define GBA_CHAR_SPACER            0x77 // Empty space
//
#define GBA_CHAR_UP_ARROW          0x79
#define GBA_CHAR_DOWN_ARROW        0x7A
#define GBA_CHAR_LEFT_ARROW        0x7B
#define GBA_CHAR_RIGHT_ARROW       0x7C
//
#define GBA_CHAR_SUPER_E           0x84
#define GBA_CHAR_LESS_THAN         0x85
#define GBA_CHAR_GREATER_THAN      0x86
//
#define GBA_CHAR_SUPER_RE          0xA0
#define GBA_CHAR_0                 0xA1
#define GBA_CHAR_1                 0xA2
#define GBA_CHAR_2                 0xA3
#define GBA_CHAR_3                 0xA4
#define GBA_CHAR_4                 0xA5
#define GBA_CHAR_5                 0xA6
#define GBA_CHAR_6                 0xA7
#define GBA_CHAR_7                 0xA8
#define GBA_CHAR_8                 0xA9
#define GBA_CHAR_9                 0xAA
#define GBA_CHAR_EXCL_MARK         0xAB
#define GBA_CHAR_QUESTION_MARK     0xAC
#define GBA_CHAR_PERIOD            0xAD
#define GBA_CHAR_HYPHEN            0xAE
#define GBA_CHAR_BULLET            0xAF
#define GBA_CHAR_ELLIPSIS          0xB0
#define GBA_CHAR_DBL_QUOTE_LEFT    0xB1
#define GBA_CHAR_DBL_QUOTE_RIGHT   0xB2
#define GBA_CHAR_SGL_QUOTE_LEFT    0xB3
#define GBA_CHAR_SGL_QUOTE_RIGHT   0xB4
#define GBA_CHAR_MALE              0xB5
#define GBA_CHAR_FEMALE            0xB6
#define GBA_CHAR_CURRENCY          0xB7
#define GBA_CHAR_COMMA             0xB8
#define GBA_CHAR_MULT_SIGN         0xB9
#define GBA_CHAR_SLASH             0xBA
#define GBA_CHAR_A                 0xBB
#define GBA_CHAR_B                 0xBC
#define GBA_CHAR_C                 0xBD
#define GBA_CHAR_D                 0xBE
#define GBA_CHAR_E                 0xBF
#define GBA_CHAR_F                 0xC0
#define GBA_CHAR_G                 0xC1
#define GBA_CHAR_H                 0xC2
#define GBA_CHAR_I                 0xC3
#define GBA_CHAR_J                 0xC4
#define GBA_CHAR_K                 0xC5
#define GBA_CHAR_L                 0xC6
#define GBA_CHAR_M                 0xC7
#define GBA_CHAR_N                 0xC8
#define GBA_CHAR_O                 0xC9
#define GBA_CHAR_P                 0xCA
#define GBA_CHAR_Q                 0xCB
#define GBA_CHAR_R                 0xCC
#define GBA_CHAR_S                 0xCD
#define GBA_CHAR_T                 0xCE
#define GBA_CHAR_U                 0xCF
#define GBA_CHAR_V                 0xD0
#define GBA_CHAR_W                 0xD1
#define GBA_CHAR_X                 0xD2
#define GBA_CHAR_Y                 0xD3
#define GBA_CHAR_Z                 0xD4
#define GBA_CHAR_a                 0xD5
#define GBA_CHAR_b                 0xD6
#define GBA_CHAR_c                 0xD7
#define GBA_CHAR_d                 0xD8
#define GBA_CHAR_e                 0xD9
#define GBA_CHAR_f                 0xDA
#define GBA_CHAR_g                 0xDB
#define GBA_CHAR_h                 0xDC
#define GBA_CHAR_i                 0xDD
#define GBA_CHAR_j                 0xDE
#define GBA_CHAR_k                 0xDF
#define GBA_CHAR_l                 0xE0
#define GBA_CHAR_m                 0xE1
#define GBA_CHAR_n                 0xE2
#define GBA_CHAR_o                 0xE3
#define GBA_CHAR_p                 0xE4
#define GBA_CHAR_q                 0xE5
#define GBA_CHAR_r                 0xE6
#define GBA_CHAR_s                 0xE7
#define GBA_CHAR_t                 0xE8
#define GBA_CHAR_u                 0xE9
#define GBA_CHAR_v                 0xEA
#define GBA_CHAR_w                 0xEB
#define GBA_CHAR_x                 0xEC
#define GBA_CHAR_y                 0xED
#define GBA_CHAR_z                 0xEE
#define GBA_CHAR_BLACK_TRIANGLE    0xEF
#define GBA_CHAR_COLON             0xF0
#define GBA_CHAR_A_DIAERESIS       0xF1
#define GBA_CHAR_O_DIAERESIS       0xF2
#define GBA_CHAR_U_DIAERESIS       0xF3
#define GBA_CHAR_a_DIAERESIS       0xF4
#define GBA_CHAR_o_DIAERESIS       0xF5
#define GBA_CHAR_u_DIAERESIS       0xF6
#define GBA_CHAR_DYNAMIC           0xF7
#define GBA_CHAR_KEYPAD_ICON       0xF8
#define GBA_CHAR_EXTRA_SYMBOL      0xF9
#define GBA_CHAR_PROMPT_SCROLL     0xFA // waits for button press and scrolls dialog
#define GBA_CHAR_PROMPT_CLEAR      0xFB // waits for button press and clears dialog
#define EXT_CTRL_CODE_BEGIN        0xFC // extended control code
#define PLACEHOLDER_BEGIN          0xFD // string placeholder
#define GBA_CHAR_NEWLINE           0xFE
#define GBA_CHAR_EOS               0xFF // end of string

#endif // CONSTANTS_GBA_GBA_CHARS
