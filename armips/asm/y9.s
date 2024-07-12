.nds

COMPRESSED equ 0x01000000
UNCOMPRESSED equ 0x00000000

.open "base/overarm9.bin", 0
                  //       id, memaddress,                                   memsize,    bsssize,  initstart,    initend, fid, filesize | compressed
/* overlay   0 */ //.word   0, 0x021E5900, filesize("base/overlay/overlay_0000.bin"), 0x00001380, 0x022163F8, 0x022163FC,   0, UNCOMPRESSED
/* overlay   1 */ //.word   1, 0x021E5900, filesize("base/overlay/overlay_0001.bin"), 0x0003C020, 0x02209810, 0x02209814,   1, UNCOMPRESSED
/* overlay   2 */ //.word   2, 0x02245B80, filesize("base/overlay/overlay_0002.bin"), 0x00000000, 0x02253D7C, 0x02253D80,   2, UNCOMPRESSED
/* overlay   3 */ //.word   3, 0x02253E20, filesize("base/overlay/overlay_0003.bin"), 0x00000020, 0x02259818, 0x0225981C,   3, UNCOMPRESSED
/* overlay   4 */ //.word   4, 0x02253E20, filesize("base/overlay/overlay_0004.bin"), 0x00000000, 0x02257B64, 0x02257B68,   4, UNCOMPRESSED
/* overlay   5 */ //.word   5, 0x0221BA00, filesize("base/overlay/overlay_0005.bin"), 0x00000000, 0x0221F274, 0x0221F278,   5, UNCOMPRESSED
/* overlay   6 */ //.word   6, 0x0221BA00, filesize("base/overlay/overlay_0006.bin"), 0x00000000, 0x0221BE18, 0x0221BE1C,   6, UNCOMPRESSED
/* overlay   7 */ //.word   7, 0x0221BE20, filesize("base/overlay/overlay_0007.bin"), 0x00000000, 0x0223783C, 0x02237840,   7, UNCOMPRESSED
/* overlay   8 */ //.word   8, 0x0221BE20, filesize("base/overlay/overlay_0008.bin"), 0x00000000, 0x02225F3C, 0x02225F40,   8, UNCOMPRESSED
/* overlay   9 */ //.word   9, 0x0221BE20, filesize("base/overlay/overlay_0009.bin"), 0x00000000, 0x0221BE20, 0x0221BE24,   9, UNCOMPRESSED
/* overlay  10 */ //.word  10, 0x0221BE20, filesize("base/overlay/overlay_0010.bin"), 0x00000000, 0x0222B268, 0x0222B26C,  10, UNCOMPRESSED
/* overlay  11 */ //.word  11, 0x021E5900, filesize("base/overlay/overlay_0011.bin"), 0x00000000, 0x021E5900, 0x021E5904,  11, UNCOMPRESSED
/* overlay  12 */ //.word  12, 0x022378C0, filesize("base/overlay/overlay_0012.bin"), 0x00000000, 0x0226EC08, 0x0226EC10,  12, UNCOMPRESSED
/* overlay  13 */ //.word  13, 0x0221BA00, filesize("base/overlay/overlay_0013.bin"), 0x000081E0, 0x02245964, 0x02245968,  13, UNCOMPRESSED
/* overlay  14 */ //.word  14, 0x021E5900, filesize("base/overlay/overlay_0014.bin"), 0x00000000, 0x021F9360, 0x021F9364,  14, UNCOMPRESSED
/* overlay  15 */ //.word  15, 0x021F9380, filesize("base/overlay/overlay_0015.bin"), 0x00000020, 0x022012F8, 0x022012FC,  15, UNCOMPRESSED
/* overlay  16 */ //.word  16, 0x022014A0, filesize("base/overlay/overlay_0016.bin"), 0x00000000, 0x02201B88, 0x02201B8C,  16, UNCOMPRESSED
/* overlay  17 */ //.word  17, 0x02201BC0, filesize("base/overlay/overlay_0017.bin"), 0x00000000, 0x02203FC4, 0x02203FC8,  17, UNCOMPRESSED
/* overlay  18 */ //.word  18, 0x021E5900, filesize("base/overlay/overlay_0018.bin"), 0x00000000, 0x021FBE58, 0x021FBE5C,  18, UNCOMPRESSED
/* overlay  19 */ //.word  19, 0x022598C0, filesize("base/overlay/overlay_0019.bin"), 0x00000000, 0x0225A13C, 0x0225A140,  19, UNCOMPRESSED
/* overlay  20 */ //.word  20, 0x022598C0, filesize("base/overlay/overlay_0020.bin"), 0x00000000, 0x02259CD4, 0x02259CD8,  20, UNCOMPRESSED
/* overlay  21 */ //.word  21, 0x022598C0, filesize("base/overlay/overlay_0021.bin"), 0x00000000, 0x02259A0C, 0x02259A10,  21, UNCOMPRESSED
/* overlay  22 */ //.word  22, 0x022598C0, filesize("base/overlay/overlay_0022.bin"), 0x00000000, 0x02259B7C, 0x02259B80,  22, UNCOMPRESSED
/* overlay  23 */ //.word  23, 0x022598C0, filesize("base/overlay/overlay_0023.bin"), 0x00000000, 0x02259D7C, 0x02259D80,  23, UNCOMPRESSED
/* overlay  24 */ //.word  24, 0x022598C0, filesize("base/overlay/overlay_0024.bin"), 0x00000000, 0x02259F3C, 0x02259F40,  24, UNCOMPRESSED
/* overlay  25 */ //.word  25, 0x022598C0, filesize("base/overlay/overlay_0025.bin"), 0x00000000, 0x02259F1C, 0x02259F20,  25, UNCOMPRESSED
/* overlay  26 */ //.word  26, 0x022598C0, filesize("base/overlay/overlay_0026.bin"), 0x00000000, 0x02259DC0, 0x02259DC4,  26, UNCOMPRESSED
/* overlay  27 */ //.word  27, 0x02259F80, filesize("base/overlay/overlay_0027.bin"), 0x00000000, 0x0225D46C, 0x0225D470,  27, UNCOMPRESSED
/* overlay  28 */ //.word  28, 0x0225D520, filesize("base/overlay/overlay_0028.bin"), 0x00000000, 0x0225EB8C, 0x0225EB90,  28, UNCOMPRESSED
/* overlay  29 */ //.word  29, 0x0225D520, filesize("base/overlay/overlay_0029.bin"), 0x00000000, 0x0225E304, 0x0225E308,  29, UNCOMPRESSED
/* overlay  30 */ //.word  30, 0x0225D520, filesize("base/overlay/overlay_0030.bin"), 0x00000000, 0x0225DC80, 0x0225DC84,  30, UNCOMPRESSED
/* overlay  31 */ //.word  31, 0x0225D520, filesize("base/overlay/overlay_0031.bin"), 0x00000000, 0x0225EF24, 0x0225EF28,  31, UNCOMPRESSED
/* overlay  32 */ //.word  32, 0x0225D520, filesize("base/overlay/overlay_0032.bin"), 0x00000000, 0x0225E2DC, 0x0225E2E0,  32, UNCOMPRESSED
/* overlay  33 */ //.word  33, 0x0225D520, filesize("base/overlay/overlay_0033.bin"), 0x00000000, 0x0225DABC, 0x0225DAC0,  33, UNCOMPRESSED
/* overlay  34 */ //.word  34, 0x0225D520, filesize("base/overlay/overlay_0034.bin"), 0x00000000, 0x0225E750, 0x0225E754,  34, UNCOMPRESSED
/* overlay  35 */ //.word  35, 0x02259D80, filesize("base/overlay/overlay_0035.bin"), 0x00000000, 0x02259DBC, 0x02259DC0,  35, UNCOMPRESSED
/* overlay  36 */ //.word  36, 0x021E5900, filesize("base/overlay/overlay_0036.bin"), 0x00000000, 0x021E5C44, 0x021E5C48,  36, UNCOMPRESSED
/* overlay  37 */ //.word  37, 0x021E5900, filesize("base/overlay/overlay_0037.bin"), 0x00000000, 0x021E7D08, 0x021E7D0C,  37, UNCOMPRESSED
/* overlay  38 */ //.word  38, 0x0221BA00, filesize("base/overlay/overlay_0038.bin"), 0x00001040, 0x02225024, 0x02225028,  38, UNCOMPRESSED
/* overlay  39 */ //.word  39, 0x02227060, filesize("base/overlay/overlay_0039.bin"), 0x00000B60, 0x0222AA0C, 0x0222AA10,  39, UNCOMPRESSED
/* overlay  40 */ //.word  40, 0x0222B6E0, filesize("base/overlay/overlay_0040.bin"), 0x00000000, 0x02245CB8, 0x02245CBC,  40, UNCOMPRESSED
/* overlay  41 */ //.word  41, 0x02245EA0, filesize("base/overlay/overlay_0041.bin"), 0x00000000, 0x0224C098, 0x0224C09C,  41, UNCOMPRESSED
/* overlay  42 */ //.word  42, 0x02227060, filesize("base/overlay/overlay_0042.bin"), 0x00000000, 0x02229ED8, 0x02229EDC,  42, UNCOMPRESSED
/* overlay  43 */ //.word  43, 0x02229EE0, filesize("base/overlay/overlay_0043.bin"), 0x00000000, 0x0222F0D8, 0x0222F0DC,  43, UNCOMPRESSED
/* overlay  44 */ //.word  44, 0x02229EE0, filesize("base/overlay/overlay_0044.bin"), 0x00000020, 0x02236650, 0x02236654,  44, UNCOMPRESSED
/* overlay  45 */ //.word  45, 0x02229EE0, filesize("base/overlay/overlay_0045.bin"), 0x00001040, 0x02254E18, 0x02254E1C,  45, UNCOMPRESSED
/* overlay  46 */ //.word  46, 0x02258800, filesize("base/overlay/overlay_0046.bin"), 0x00000000, 0x02259630, 0x02259634,  46, UNCOMPRESSED
/* overlay  47 */ //.word  47, 0x02258800, filesize("base/overlay/overlay_0047.bin"), 0x00000000, 0x02259F88, 0x02259F8C,  47, UNCOMPRESSED
/* overlay  48 */ //.word  48, 0x02258800, filesize("base/overlay/overlay_0048.bin"), 0x00000000, 0x0225B570, 0x0225B574,  48, UNCOMPRESSED
/* overlay  49 */ //.word  49, 0x02258800, filesize("base/overlay/overlay_0049.bin"), 0x00000000, 0x0226A918, 0x0226A91C,  49, UNCOMPRESSED
/* overlay  50 */ //.word  50, 0x021E5900, filesize("base/overlay/overlay_0050.bin"), 0x00000000, 0x021E5AAC, 0x021E5AB0,  50, UNCOMPRESSED
/* overlay  51 */ //.word  51, 0x021E5AC0, filesize("base/overlay/overlay_0051.bin"), 0x00000000, 0x021E809C, 0x021E80A0,  51, UNCOMPRESSED
/* overlay  52 */ //.word  52, 0x021E80C0, filesize("base/overlay/overlay_0052.bin"), 0x00000000, 0x021E96A0, 0x021E96A4,  52, UNCOMPRESSED
/* overlay  53 */ //.word  53, 0x021E5900, filesize("base/overlay/overlay_0053.bin"), 0x00000000, 0x021E8888, 0x021E888C,  53, UNCOMPRESSED
/* overlay  54 */ //.word  54, 0x021E5900, filesize("base/overlay/overlay_0054.bin"), 0x00000000, 0x021E7014, 0x021E7018,  54, UNCOMPRESSED
/* overlay  55 */ //.word  55, 0x021E5900, filesize("base/overlay/overlay_0055.bin"), 0x00000000, 0x021E5C14, 0x021E5C18,  55, UNCOMPRESSED
/* overlay  56 */ //.word  56, 0x021E5C20, filesize("base/overlay/overlay_0056.bin"), 0x00000000, 0x021E6F0C, 0x021E6F10,  56, UNCOMPRESSED
/* overlay  57 */ //.word  57, 0x022378C0, filesize("base/overlay/overlay_0057.bin"), 0x00000000, 0x0223BF28, 0x0223BF30,  57, UNCOMPRESSED
/* overlay  58 */ //.word  58, 0x022378C0, filesize("base/overlay/overlay_0058.bin"), 0x00000000, 0x02237D3C, 0x02237D40,  58, UNCOMPRESSED
/* overlay  59 */ //.word  59, 0x02237D40, filesize("base/overlay/overlay_0059.bin"), 0x00000000, 0x0223CB64, 0x0223CB68,  59, UNCOMPRESSED
/* overlay  60 */ //.word  60, 0x021E5900, filesize("base/overlay/overlay_0060.bin"), 0x00000000, 0x021EB840, 0x021EB844,  60, UNCOMPRESSED
/* overlay  61 */ //.word  61, 0x021E5900, filesize("base/overlay/overlay_0061.bin"), 0x00000000, 0x021E74BC, 0x021E74C0,  61, UNCOMPRESSED
/* overlay  62 */ //.word  62, 0x021E5900, filesize("base/overlay/overlay_0062.bin"), 0x00000020, 0x021E68DC, 0x021E68E0,  62, UNCOMPRESSED
/* overlay  63 */ //.word  63, 0x0221BE20, filesize("base/overlay/overlay_0063.bin"), 0x00000020, 0x022203AC, 0x022203B0,  63, UNCOMPRESSED
/* overlay  64 */ //.word  64, 0x021E5900, filesize("base/overlay/overlay_0064.bin"), 0x00000000, 0x021E7470, 0x021E7474,  64, UNCOMPRESSED
/* overlay  65 */ //.word  65, 0x0221BE20, filesize("base/overlay/overlay_0065.bin"), 0x00000000, 0x02220194, 0x02220198,  65, UNCOMPRESSED
/* overlay  66 */ //.word  66, 0x021E5900, filesize("base/overlay/overlay_0066.bin"), 0x00000000, 0x021E5900, 0x021E5904,  66, UNCOMPRESSED
/* overlay  67 */ //.word  67, 0x021E5900, filesize("base/overlay/overlay_0067.bin"), 0x00000000, 0x021E7138, 0x021E713C,  67, UNCOMPRESSED
/* overlay  68 */ //.word  68, 0x021E5900, filesize("base/overlay/overlay_0068.bin"), 0x00000000, 0x021E80E4, 0x021E80E8,  68, UNCOMPRESSED
/* overlay  69 */ //.word  69, 0x021E5900, filesize("base/overlay/overlay_0069.bin"), 0x00000000, 0x021E77E0, 0x021E77E4,  69, UNCOMPRESSED
/* overlay  70 */ //.word  70, 0x022378C0, filesize("base/overlay/overlay_0070.bin"), 0x00000160, 0x02246090, 0x02246094,  70, UNCOMPRESSED
/* overlay  71 */ //.word  71, 0x02246960, filesize("base/overlay/overlay_0071.bin"), 0x000000A0, 0x0224C004, 0x0224C008,  71, UNCOMPRESSED
/* overlay  72 */ //.word  72, 0x022378C0, filesize("base/overlay/overlay_0072.bin"), 0x00000120, 0x0223B4D4, 0x0223B4D8,  72, UNCOMPRESSED
/* overlay  73 */ //.word  73, 0x021E5900, filesize("base/overlay/overlay_0073.bin"), 0x00000020, 0x021EA7BC, 0x021EA7C0,  73, UNCOMPRESSED
/* overlay  74 */ //.word  74, 0x02227060, filesize("base/overlay/overlay_0074.bin"), 0x00001980, 0x0223BBB0, 0x0223BBB4,  74, UNCOMPRESSED
/* overlay  75 */ //.word  75, 0x02246960, filesize("base/overlay/overlay_0075.bin"), 0x00000020, 0x02249B04, 0x02249B08,  75, UNCOMPRESSED
/* overlay  76 */ //.word  76, 0x021E5900, filesize("base/overlay/overlay_0076.bin"), 0x00000000, 0x021E8794, 0x021E8798,  76, UNCOMPRESSED
/* overlay  77 */ //.word  77, 0x021E5900, filesize("base/overlay/overlay_0077.bin"), 0x00000000, 0x021E5900, 0x021E5904,  77, UNCOMPRESSED
/* overlay  78 */ //.word  78, 0x021E5900, filesize("base/overlay/overlay_0078.bin"), 0x00000000, 0x021E691C, 0x021E6920,  78, UNCOMPRESSED
/* overlay  79 */ //.word  79, 0x02229EE0, filesize("base/overlay/overlay_0079.bin"), 0x00000000, 0x02229EE0, 0x02229EE4,  79, UNCOMPRESSED
/* overlay  80 */ //.word  80, 0x02229EE0, filesize("base/overlay/overlay_0080.bin"), 0x00000020, 0x0223DC0C, 0x0223DC10,  80, UNCOMPRESSED
/* overlay  81 */ //.word  81, 0x0223DD60, filesize("base/overlay/overlay_0081.bin"), 0x00000000, 0x02243850, 0x02243854,  81, UNCOMPRESSED
/* overlay  82 */ //.word  82, 0x0223DD60, filesize("base/overlay/overlay_0082.bin"), 0x00000000, 0x0223FF20, 0x0223FF24,  82, UNCOMPRESSED
/* overlay  83 */ //.word  83, 0x0223DD60, filesize("base/overlay/overlay_0083.bin"), 0x00000000, 0x02248648, 0x0224864C,  83, UNCOMPRESSED
/* overlay  84 */ //.word  84, 0x0223DD60, filesize("base/overlay/overlay_0084.bin"), 0x00000020, 0x0223FA08, 0x0223FA0C,  84, UNCOMPRESSED
/* overlay  85 */ //.word  85, 0x021E5900, filesize("base/overlay/overlay_0085.bin"), 0x00000000, 0x021EAA60, 0x021EAA64,  85, UNCOMPRESSED
/* overlay  86 */ //.word  86, 0x021E5900, filesize("base/overlay/overlay_0086.bin"), 0x00000000, 0x021E8398, 0x021E839C,  86, UNCOMPRESSED
/* overlay  87 */ //.word  87, 0x021E5900, filesize("base/overlay/overlay_0087.bin"), 0x00000000, 0x021E84AC, 0x021E84B0,  87, UNCOMPRESSED
/* overlay  88 */ //.word  88, 0x02258800, filesize("base/overlay/overlay_0088.bin"), 0x00000000, 0x02259A4C, 0x02259A50,  88, UNCOMPRESSED
/* overlay  89 */ //.word  89, 0x02258800, filesize("base/overlay/overlay_0089.bin"), 0x00000000, 0x0225D664, 0x0225D668,  89, UNCOMPRESSED
/* overlay  90 */ //.word  90, 0x02258800, filesize("base/overlay/overlay_0090.bin"), 0x00000000, 0x0225C538, 0x0225C53C,  90, UNCOMPRESSED
/* overlay  91 */ //.word  91, 0x0225C540, filesize("base/overlay/overlay_0091.bin"), 0x00000040, 0x022627B4, 0x022627B8,  91, UNCOMPRESSED
/* overlay  92 */ //.word  92, 0x0225C540, filesize("base/overlay/overlay_0092.bin"), 0x00000000, 0x02264008, 0x0226400C,  92, UNCOMPRESSED
/* overlay  93 */ //.word  93, 0x0225C540, filesize("base/overlay/overlay_0093.bin"), 0x00000000, 0x02263134, 0x02263138,  93, UNCOMPRESSED
/* overlay  94 */ //.word  94, 0x021E5900, filesize("base/overlay/overlay_0094.bin"), 0x00000000, 0x021E5D18, 0x021E5D1C,  94, UNCOMPRESSED
/* overlay  95 */ //.word  95, 0x021E5900, filesize("base/overlay/overlay_0095.bin"), 0x00000000, 0x021E78B4, 0x021E78B8,  95, UNCOMPRESSED
/* overlay  96 */ //.word  96, 0x021E5900, filesize("base/overlay/overlay_0096.bin"), 0x00000920, 0x0221D9F0, 0x0221D9F4,  96, UNCOMPRESSED
/* overlay  97 */ //.word  97, 0x0221E5C0, filesize("base/overlay/overlay_0097.bin"), 0x00000000, 0x0221FD74, 0x0221FD78,  97, UNCOMPRESSED
/* overlay  98 */ //.word  98, 0x0221E5C0, filesize("base/overlay/overlay_0098.bin"), 0x00000000, 0x0221F270, 0x0221F274,  98, UNCOMPRESSED
/* overlay  99 */ //.word  99, 0x021E5900, filesize("base/overlay/overlay_0099.bin"), 0x00000000, 0x021EA5A4, 0x021EA5A8,  99, UNCOMPRESSED
/* overlay 100 */ //.word 100, 0x021E5900, filesize("base/overlay/overlay_0100.bin"), 0x00000000, 0x021E7714, 0x021E7718, 100, UNCOMPRESSED
/* overlay 101 */ //.word 101, 0x021E7740, filesize("base/overlay/overlay_0101.bin"), 0x00000000, 0x021FB2AC, 0x021FB2B0, 101, UNCOMPRESSED
/* overlay 102 */ //.word 102, 0x021E7740, filesize("base/overlay/overlay_0102.bin"), 0x00000000, 0x021EC930, 0x021EC934, 102, UNCOMPRESSED
/* overlay 103 */ //.word 103, 0x021EC940, filesize("base/overlay/overlay_0103.bin"), 0x00000000, 0x021EF060, 0x021EF064, 103, UNCOMPRESSED
/* overlay 104 */ //.word 104, 0x021E5900, filesize("base/overlay/overlay_0104.bin"), 0x00000000, 0x021E6048, 0x021E604C, 104, UNCOMPRESSED
/* overlay 105 */ //.word 105, 0x021E5900, filesize("base/overlay/overlay_0105.bin"), 0x00000000, 0x021E5E7C, 0x021E5E80, 105, UNCOMPRESSED
/* overlay 106 */ //.word 106, 0x021E5900, filesize("base/overlay/overlay_0106.bin"), 0x00000000, 0x021E8634, 0x021E8638, 106, UNCOMPRESSED
/* overlay 107 */ //.word 107, 0x021E5900, filesize("base/overlay/overlay_0107.bin"), 0x00000000, 0x021E5900, 0x021E5904, 107, UNCOMPRESSED
/* overlay 108 */ //.word 108, 0x021E5900, filesize("base/overlay/overlay_0108.bin"), 0x00000000, 0x021EAD50, 0x021EAD54, 108, UNCOMPRESSED
/* overlay 109 */ //.word 109, 0x021E5900, filesize("base/overlay/overlay_0109.bin"), 0x00000000, 0x021E7B20, 0x021E7B24, 109, UNCOMPRESSED
/* overlay 110 */ //.word 110, 0x021E5900, filesize("base/overlay/overlay_0110.bin"), 0x00000000, 0x021E6FF4, 0x021E6FF8, 110, UNCOMPRESSED
/* overlay 111 */ //.word 111, 0x021E5900, filesize("base/overlay/overlay_0111.bin"), 0x00000000, 0x021E6D30, 0x021E6D34, 111, UNCOMPRESSED
/* overlay 112 */ //.word 112, 0x021E5900, filesize("base/overlay/overlay_0112.bin"), 0x000002C0, 0x021FF4E8, 0x021FF4EC, 112, UNCOMPRESSED
/* overlay 113 */ //.word 113, 0x021E5900, filesize("base/overlay/overlay_0113.bin"), 0x00000000, 0x021E6D70, 0x021E6D74, 113, UNCOMPRESSED
/* overlay 114 */ //.word 114, 0x0225F020, filesize("base/overlay/overlay_0114.bin"), 0x00000000, 0x0225F4F8, 0x0225F4FC, 114, UNCOMPRESSED
/* overlay 115 */ //.word 115, 0x0225F020, filesize("base/overlay/overlay_0115.bin"), 0x00000000, 0x022604F0, 0x022604F4, 115, UNCOMPRESSED
/* overlay 116 */ //.word 116, 0x0225F020, filesize("base/overlay/overlay_0116.bin"), 0x00000000, 0x0225F46C, 0x0225F470, 116, UNCOMPRESSED
/* overlay 117 */ //.word 117, 0x0225F020, filesize("base/overlay/overlay_0117.bin"), 0x00000000, 0x0225FBB4, 0x0225FBB8, 117, UNCOMPRESSED
/* overlay 118 */ //.word 118, 0x0225F020, filesize("base/overlay/overlay_0118.bin"), 0x00000000, 0x0225F2A8, 0x0225F2AC, 118, UNCOMPRESSED
/* overlay 119 */ //.word 119, 0x0225F020, filesize("base/overlay/overlay_0119.bin"), 0x00000000, 0x0226072C, 0x02260730, 119, UNCOMPRESSED
/* overlay 120 */ //.word 120, 0x0225F020, filesize("base/overlay/overlay_0120.bin"), 0x00000000, 0x02260344, 0x02260348, 120, UNCOMPRESSED
/* overlay 121 */ //.word 121, 0x021E5900, filesize("base/overlay/overlay_0121.bin"), 0x00000000, 0x021E7194, 0x021E7198, 121, UNCOMPRESSED
/* overlay 122 */ //.word 122, 0x021E5900, filesize("base/overlay/overlay_0122.bin"), 0x00000000, 0x021E9B84, 0x021E9B88, 122, UNCOMPRESSED
/* overlay 123 */ //.word 123, 0x0225F020, filesize("base/overlay/overlay_0123.bin"), 0x00000020, 0x02260BDC, 0x02260BF4, 123, UNCOMPRESSED
/* overlay 124 */ //.word 124, 0x02260C20, filesize("base/overlay/overlay_0124.bin"), 0x00000000, 0x02260D70, 0x02260D74, 124, UNCOMPRESSED
/* overlay 125 */ //.word 125, 0x02260C20, filesize("base/overlay/overlay_0125.bin"), 0x00000000, 0x02260C20, 0x02260C24, 125, UNCOMPRESSED
/* overlay 126 */ //.word 126, 0x02260C20, filesize("base/overlay/overlay_0126.bin"), 0x00000000, 0x02260C20, 0x02260C24, 126, UNCOMPRESSED
/* overlay 127 */ //.word 127, 0x02260C20, filesize("base/overlay/overlay_0127.bin"), 0x00000000, 0x02260C20, 0x02260C24, 127, UNCOMPRESSED
/* overlay 128 */ //.word 128, 0x02260C20, filesize("base/overlay/overlay_0128.bin"), 0x00000000, 0x02260C20, 0x02260C24, 128, UNCOMPRESSED

.org 129 * 0x20 // new overlays

// arm9 expansion overlay
.word 129, 0x023D8000, filesize("base/overlay/overlay_0129.bin"), 0x00000000, 0x00000000, 0x00000000, 129, UNCOMPRESSED // arm9 expansion
.word 130, 0x023C4000, filesize("base/overlay/overlay_0130.bin"), 0x00000000, 0x00000000, 0x00000000, 130, UNCOMPRESSED // battle overlay
.word 131, 0x023C8000, filesize("base/overlay/overlay_0131.bin"), 0x00000000, 0x00000000, 0x00000000, 131, UNCOMPRESSED // field overlay
.word 132, 0x021FBE60, filesize("base/overlay/overlay_0132.bin"), 0x00000000, 0x00000000, 0x00000000, 132, UNCOMPRESSED // pokedex overlay - located after the dex overlay in overlay 0's place
.word 133, 0x023C0400, filesize("base/overlay/overlay_0133.bin"), 0x00000000, 0x00000000, 0x00000000, 133, UNCOMPRESSED // getmonevolution overlay
.word 134, 0x021FBE60, filesize("base/overlay/overlay_0134.bin"), 0x00000000, 0x00000000, 0x00000000, 134, UNCOMPRESSED // getmonevolution overlay for battles
.word 135, 0x023C0400, filesize("base/overlay/overlay_0135.bin"), 0x00000000, 0x00000000, 0x00000000, 135, UNCOMPRESSED // MoveHitDefenderAbilityCheck specific overlay
.word 136, 0x023C0400, filesize("base/overlay/overlay_0136.bin"), 0x00000000, 0x00000000, 0x00000000, 136, UNCOMPRESSED // SwitchInAbilityCheck specific overlay
.word 137, 0x023C0400, filesize("base/overlay/overlay_0137.bin"), 0x00000000, 0x00000000, 0x00000000, 137, UNCOMPRESSED // statbuffchange specific overlay
.word 138, 0x023C0400, filesize("base/overlay/overlay_0138.bin"), 0x00000000, 0x00000000, 0x00000000, 138, UNCOMPRESSED // CalcBaseDamage specific overlay
.word 139, 0x023C2400, filesize("base/overlay/overlay_0139.bin"), 0x00000000, 0x00000000, 0x00000000, 139, UNCOMPRESSED // BattleFormChangeCheck specific overlay
.word 140, 0x023C0400, filesize("base/overlay/overlay_0140.bin"), 0x00000000, 0x00000000, 0x00000000, 140, UNCOMPRESSED // CheckDefenderItemEffectOnHit specific overlay
.word 141, 0x023C0400, filesize("base/overlay/overlay_0141.bin"), 0x00000000, 0x00000000, 0x00000000, 141, UNCOMPRESSED // ServerFieldConditionCheck specific overlay

.close
