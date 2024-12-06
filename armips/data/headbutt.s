.include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/species.inc"

.nds
.thumb

// headbutt trees
// headbuttheader header, numberOfNormalTrees, numberOfSpecialTrees
// treecoords requires 6 pairs of x/y coordinates per tree.  fill the remaining pairs with -1's

headbuttheader   0,   0,   0   // EVERYWHERE 
.close

headbuttheader   1,   0,   0   // NOTHING
.close

headbuttheader   2,   0,   0   // Union Room
.close

headbuttheader   3,   0,   0   // UG 
.close

headbuttheader   4,   0,   0   // DIRECT2 
.close

headbuttheader   5,   0,   0   // DIRECT4
.close

headbuttheader   6,   0,   0   // Bellchime Trail
.close

headbuttheader   7,   0,   0   // Burned Tower (1F)
.close

headbuttheader   8,   0,   0   // Ruins Of Alph (Inside)
.close

headbuttheader   9,  20,   0   // Route 1
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_WURMPLE, 2, 3
    headbuttencounter SPECIES_WURMPLE, 2, 3
    headbuttencounter SPECIES_WURMPLE, 2, 3
    headbuttencounter SPECIES_HOOTHOOT, 5, 6
    headbuttencounter SPECIES_SPINARAK, 5, 6
    headbuttencounter SPECIES_SPINARAK, 5, 6
    headbuttencounter SPECIES_WURMPLE, 5, 6
    headbuttencounter SPECIES_WURMPLE, 5, 6
    headbuttencounter SPECIES_WURMPLE, 5, 6
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1033, 300, 1033, 301, 1034, 300, 1034, 301, -1, -1, -1, -1
    treecoords 1034, 307, 1034, 308, 1035, 308, -1, -1, -1, -1, -1, -1
    treecoords 1037, 306, 1037, 305, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1028, 312, 1028, 311, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1040, 314, 1041, 314, 1040, 312, 1041, 312, -1, -1, -1, -1
    treecoords 1048, 291, 1049, 291, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1050, 302, 1050, 303, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1049, 315, 1049, 316, 1050, 316, -1, -1, -1, -1, -1, -1
    treecoords 1046, 345, 1047, 345, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 340, 1027, 341, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1036, 335, 1037, 334, 1037, 335, -1, -1, -1, -1, -1, -1
    treecoords 1028, 327, 1029, 327, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1030, 345, 1031, 345, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 330, 1052, 331, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 339, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 322, 1027, 323, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1049, 305, 1049, 306, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1040, 329, 1041, 329, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1037, 349, 1037, 348, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1029, 292, 1029, 293, 1028, 293, -1, -1, -1, -1, -1, -1
.close

headbuttheader  10,  15,   0   // Route 2
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1044, 197, 1045, 197, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 194, 1027, 195, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1032, 203, 1032, 202, 1032, 201, 1033, 201, 1033, 203, -1, -1
    treecoords 1028, 207, 1029, 207, 1028, 209, 1029, 209, -1, -1, -1, -1
    treecoords 1032, 207, 1033, 207, 1032, 209, 1033, 209, -1, -1, -1, -1
    treecoords 1034, 221, 1035, 221, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1040, 221, 1041, 221, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1042, 211, 1042, 212, 1042, 213, 1043, 211, 1043, 212, 1043, 213
    treecoords 1052, 221, 1053, 221, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 210, 1054, 211, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 196, 1054, 197, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1047, 194, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1043, 204, 1043, 205, 1042, 204, 1042, 205, -1, -1, -1, -1
    treecoords 1027, 200, 1027, 201, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1042, 195, 1042, 194, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  11,   4,   0   // Route 3
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 6, 7
    headbuttencounter SPECIES_PINECO, 6, 7
    headbuttencounter SPECIES_PINECO, 6, 7
    headbuttencounter SPECIES_WURMPLE, 6, 7
    headbuttencounter SPECIES_WURMPLE, 6, 7
    headbuttencounter SPECIES_WURMPLE, 6, 7
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_WURMPLE, 9, 10
    headbuttencounter SPECIES_WURMPLE, 9, 10
    headbuttencounter SPECIES_WURMPLE, 9, 10
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1096, 98, 1096, 99, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1105, 104, 1105, 103, 1104, 104, 1104, 103, -1, -1, -1, -1
    treecoords 1121, 117, 1122, 117, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1113, 110, 1113, 109, 1114, 109, 1114, 110, -1, -1, -1, -1
.close

headbuttheader  12,   9,   0   // Route 4
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 6, 7
    headbuttencounter SPECIES_PINECO, 6, 7
    headbuttencounter SPECIES_PINECO, 6, 7
    headbuttencounter SPECIES_WURMPLE, 6, 7
    headbuttencounter SPECIES_WURMPLE, 6, 7
    headbuttencounter SPECIES_WURMPLE, 6, 7
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_WURMPLE, 9, 10
    headbuttencounter SPECIES_WURMPLE, 9, 10
    headbuttencounter SPECIES_WURMPLE, 9, 10
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1234, 115, 1234, 114, 1235, 115, 1235, 114, -1, -1, -1, -1
    treecoords 1244, 120, 1245, 120, 1245, 121, 1245, 122, 1244, 122, -1, -1
    treecoords 1264, 112, 1265, 112, 1264, 114, 1265, 114, -1, -1, -1, -1
    treecoords 1270, 110, 1271, 110, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1266, 124, 1267, 124, 1267, 123, -1, -1, -1, -1, -1, -1
    treecoords 1264, 120, 1264, 119, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1255, 126, 1255, 125, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1242, 124, 1243, 124, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1256, 112, 1257, 112, 1256, 113, 1256, 114, 1257, 114, -1, -1
.close

headbuttheader  13,   4,   0   // Route 5
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 11, 13
    headbuttencounter SPECIES_PINECO, 11, 13
    headbuttencounter SPECIES_PINECO, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1310, 185, 1310, 184, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1296, 164, 1296, 163, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1303, 161, 1303, 162, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1304, 189, 1305, 189, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  14,   6,   0   // Route 6
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 11, 13
    headbuttencounter SPECIES_PINECO, 11, 13
    headbuttencounter SPECIES_PINECO, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1308, 285, 1308, 284, 1308, 283, 1309, 283, -1, -1, -1, -1
    treecoords 1288, 283, 1289, 283, 1289, 284, 1289, 285, -1, -1, -1, -1
    treecoords 1287, 272, 1287, 273, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1308, 259, 1309, 259, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1294, 259, 1295, 259, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1285, 260, 1285, 261, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  15,   8,   0   // Route 7
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 15, 17
    headbuttencounter SPECIES_HERACROSS, 15, 17
    headbuttencounter SPECIES_HERACROSS, 15, 17
    headbuttencounter SPECIES_COMBEE, 15, 17
    headbuttencounter SPECIES_COMBEE, 15, 17
    headbuttencounter SPECIES_COMBEE, 15, 17
    headbuttencounter SPECIES_SPEAROW, 18, 20
    headbuttencounter SPECIES_SPEAROW, 18, 20
    headbuttencounter SPECIES_SPEAROW, 18, 20
    headbuttencounter SPECIES_COMBEE, 18, 20
    headbuttencounter SPECIES_COMBEE, 18, 20
    headbuttencounter SPECIES_COMBEE, 18, 20
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1272, 237, 1273, 237, 1272, 236, -1, -1, -1, -1, -1, -1
    treecoords 1262, 228, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1257, 233, 1258, 233, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1253, 237, 1254, 237, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1259, 250, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1266, 251, 1267, 251, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1272, 249, 1272, 248, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1250, 243, 1251, 243, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  16,   5,   0   // Route 8
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 16, 17
    headbuttencounter SPECIES_PINECO, 16, 17
    headbuttencounter SPECIES_PINECO, 16, 17
    headbuttencounter SPECIES_COMBEE, 16, 17
    headbuttencounter SPECIES_COMBEE, 16, 17
    headbuttencounter SPECIES_COMBEE, 16, 17
    headbuttencounter SPECIES_HOOTHOOT, 18, 19
    headbuttencounter SPECIES_HOOTHOOT, 18, 19
    headbuttencounter SPECIES_HOOTHOOT, 18, 19
    headbuttencounter SPECIES_COMBEE, 18, 19
    headbuttencounter SPECIES_COMBEE, 18, 19
    headbuttencounter SPECIES_COMBEE, 18, 19
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1376, 231, 1376, 232, 1377, 232, -1, -1, -1, -1, -1, -1
    treecoords 1401, 234, 1401, 233, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1397, 242, 1397, 241, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1393, 233, 1392, 233, 1392, 234, -1, -1, -1, -1, -1, -1
    treecoords 1392, 244, 1392, 243, 1393, 244, -1, -1, -1, -1, -1, -1
.close

headbuttheader  17,   0,   0   // Route 9
.close

headbuttheader  18,   0,   0   // Route 10
.close

headbuttheader  19,  11,   0   // Route 11
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 13, 14
    headbuttencounter SPECIES_HERACROSS, 13, 14
    headbuttencounter SPECIES_HERACROSS, 13, 14
    headbuttencounter SPECIES_COMBEE, 13, 14
    headbuttencounter SPECIES_COMBEE, 13, 14
    headbuttencounter SPECIES_COMBEE, 13, 14
    headbuttencounter SPECIES_SPEAROW, 15, 16
    headbuttencounter SPECIES_SPEAROW, 15, 16
    headbuttencounter SPECIES_SPEAROW, 15, 16
    headbuttencounter SPECIES_COMBEE, 15, 16
    headbuttencounter SPECIES_COMBEE, 15, 16
    headbuttencounter SPECIES_COMBEE, 15, 16
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1392, 291, 1393, 291, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1378, 291, 1379, 291, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1380, 291, 1381, 291, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1382, 291, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1364, 291, 1365, 291, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1370, 311, 1371, 311, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1372, 311, 1373, 311, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1374, 311, 1375, 311, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1376, 311, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1379, 311, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1382, 311, 1383, 311, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  20,  10,   0   // Route 12
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 22, 23
    headbuttencounter SPECIES_SPINARAK, 22, 23
    headbuttencounter SPECIES_SPINARAK, 22, 23
    headbuttencounter SPECIES_WURMPLE, 22, 23
    headbuttencounter SPECIES_WURMPLE, 22, 23
    headbuttencounter SPECIES_WURMPLE, 22, 23
    headbuttencounter SPECIES_HOOTHOOT, 24, 25
    headbuttencounter SPECIES_TANGELA, 24, 25
    headbuttencounter SPECIES_HOOTHOOT, 24, 25
    headbuttencounter SPECIES_WURMPLE, 24, 25
    headbuttencounter SPECIES_WURMPLE, 24, 25
    headbuttencounter SPECIES_WURMPLE, 24, 25
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1417, 281, 1417, 280, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1417, 299, 1417, 298, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1409, 334, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1409, 348, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1414, 337, 1415, 337, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1414, 347, 1415, 347, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1417, 311, 1417, 310, 1417, 309, 1416, 309, -1, -1, -1, -1
    treecoords 1417, 325, 1417, 324, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1417, 327, 1417, 326, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1417, 287, 1417, 286, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  21,  15,   0   // Route 13
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 22, 23
    headbuttencounter SPECIES_SPINARAK, 22, 23
    headbuttencounter SPECIES_SPINARAK, 22, 23
    headbuttencounter SPECIES_WURMPLE, 22, 23
    headbuttencounter SPECIES_WURMPLE, 22, 23
    headbuttencounter SPECIES_WURMPLE, 22, 23
    headbuttencounter SPECIES_HOOTHOOT, 24, 25
    headbuttencounter SPECIES_TANGELA, 24, 25
    headbuttencounter SPECIES_HOOTHOOT, 24, 25
    headbuttencounter SPECIES_WURMPLE, 24, 25
    headbuttencounter SPECIES_WURMPLE, 24, 25
    headbuttencounter SPECIES_WURMPLE, 24, 25
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1346, 367, 1347, 367, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1384, 367, 1385, 367, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1366, 367, 1367, 367, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1353, 381, 1353, 380, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1365, 376, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1372, 376, 1373, 376, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1387, 376, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1402, 367, 1403, 367, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1429, 366, 1428, 367, 1428, 366, -1, -1, -1, -1, -1, -1
    treecoords 1429, 360, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1414, 367, 1415, 367, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1414, 373, 1415, 373, 1414, 372, -1, -1, -1, -1, -1, -1
    treecoords 1420, 363, 1421, 363, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1428, 373, 1429, 373, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1376, 367, 1377, 367, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  22,   3,   0   // Route 14
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 26, 27
    headbuttencounter SPECIES_SPINARAK, 26, 27
    headbuttencounter SPECIES_SPINARAK, 26, 27
    headbuttencounter SPECIES_WURMPLE, 26, 27
    headbuttencounter SPECIES_WURMPLE, 26, 27
    headbuttencounter SPECIES_WURMPLE, 26, 27
    headbuttencounter SPECIES_HOOTHOOT, 29, 30
    headbuttencounter SPECIES_TANGELA, 29, 30
    headbuttencounter SPECIES_HOOTHOOT, 29, 30
    headbuttencounter SPECIES_WURMPLE, 29, 30
    headbuttencounter SPECIES_WURMPLE, 29, 30
    headbuttencounter SPECIES_WURMPLE, 29, 30
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1353, 424, 1353, 425, 1353, 426, 1352, 424, -1, -1, -1, -1
    treecoords 1352, 406, 1353, 406, 1353, 405, 1353, 404, 1352, 404, -1, -1
    treecoords 1352, 388, 1353, 388, 1353, 389, 1353, 390, 1352, 390, -1, -1
.close

headbuttheader  23,  19,   0   // Route 15
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 21, 23
    headbuttencounter SPECIES_SPINARAK, 21, 23
    headbuttencounter SPECIES_SPINARAK, 21, 23
    headbuttencounter SPECIES_WURMPLE, 21, 23
    headbuttencounter SPECIES_WURMPLE, 21, 23
    headbuttencounter SPECIES_WURMPLE, 21, 23
    headbuttencounter SPECIES_HOOTHOOT, 24, 26
    headbuttencounter SPECIES_TANGELA, 24, 26
    headbuttencounter SPECIES_HOOTHOOT, 24, 26
    headbuttencounter SPECIES_WURMPLE, 24, 26
    headbuttencounter SPECIES_WURMPLE, 24, 26
    headbuttencounter SPECIES_WURMPLE, 24, 26
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1248, 419, 1249, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1262, 419, 1263, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1274, 426, 1275, 426, 1274, 427, 1274, 428, -1, -1, -1, -1
    treecoords 1280, 430, 1281, 430, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1282, 419, 1283, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1296, 426, 1297, 426, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1300, 419, 1301, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1316, 419, 1317, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1316, 426, 1317, 426, 1316, 427, 1316, 428, 1317, 428, 1317, 427
    treecoords 1329, 429, 1329, 428, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1328, 419, 1329, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1338, 419, 1339, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1342, 425, 1342, 424, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1309, 426, 1310, 426, 1309, 428, 1310, 428, -1, -1, -1, -1
    treecoords 1338, 429, 1339, 429, 1339, 428, -1, -1, -1, -1, -1, -1
    treecoords 1286, 426, 1287, 426, 1287, 428, 1287, 427, -1, -1, -1, -1
    treecoords 1272, 419, 1273, 419, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1252, 425, 1253, 425, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1290, 419, 1291, 419, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  24,   2,   0   // Route 16
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 26, 27
    headbuttencounter SPECIES_HERACROSS, 26, 27
    headbuttencounter SPECIES_HERACROSS, 26, 27
    headbuttencounter SPECIES_COMBEE, 26, 27
    headbuttencounter SPECIES_COMBEE, 26, 27
    headbuttencounter SPECIES_COMBEE, 26, 27
    headbuttencounter SPECIES_SPEAROW, 29, 30
    headbuttencounter SPECIES_SPEAROW, 29, 30
    headbuttencounter SPECIES_SPEAROW, 29, 30
    headbuttencounter SPECIES_COMBEE, 29, 30
    headbuttencounter SPECIES_COMBEE, 29, 30
    headbuttencounter SPECIES_COMBEE, 29, 30
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1141, 283, 1142, 283, 1141, 284, 1141, 285, -1, -1, -1, -1
    treecoords 1149, 279, 1150, 279, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  25,   0,   0   // Route 17
.close

headbuttheader  26,   3,   0   // Route 18
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 26, 27
    headbuttencounter SPECIES_SPINARAK, 26, 27
    headbuttencounter SPECIES_SPINARAK, 26, 27
    headbuttencounter SPECIES_WURMPLE, 26, 27
    headbuttencounter SPECIES_WURMPLE, 26, 27
    headbuttencounter SPECIES_WURMPLE, 26, 27
    headbuttencounter SPECIES_HOOTHOOT, 29, 30
    headbuttencounter SPECIES_TANGELA, 29, 30
    headbuttencounter SPECIES_HOOTHOOT, 29, 30
    headbuttencounter SPECIES_WURMPLE, 29, 30
    headbuttencounter SPECIES_WURMPLE, 29, 30
    headbuttencounter SPECIES_WURMPLE, 29, 30
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1170, 435, 1170, 434, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1178, 429, 1179, 429, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1172, 429, 1173, 429, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  27,   7,   0   // Route 22
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 986, 269, 986, 270, 985, 269, 985, 270, -1, -1, -1, -1
    treecoords 986, 278, 986, 277, 985, 278, 985, 277, -1, -1, -1, -1
    treecoords 975, 269, 976, 269, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 978, 279, 978, 278, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 973, 272, 973, 273, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 973, 281, 973, 280, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 978, 273, 978, 272, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  28,   0,   0   // Route 24
.close

headbuttheader  29,  11,   4   // Route 25
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 10, 11
    headbuttencounter SPECIES_PINECO, 10, 11
    headbuttencounter SPECIES_PINECO, 10, 11
    headbuttencounter SPECIES_COMBEE, 10, 11
    headbuttencounter SPECIES_COMBEE, 10, 11
    headbuttencounter SPECIES_COMBEE, 10, 11
    headbuttencounter SPECIES_HOOTHOOT, 13, 14
    headbuttencounter SPECIES_HOOTHOOT, 13, 14
    headbuttencounter SPECIES_HOOTHOOT, 13, 14
    headbuttencounter SPECIES_COMBEE, 13, 14
    headbuttencounter SPECIES_COMBEE, 13, 14
    headbuttencounter SPECIES_COMBEE, 13, 14
    // special slots
    headbuttencounter SPECIES_COMBEE, 10, 14
    headbuttencounter SPECIES_COMBEE, 10, 14
    headbuttencounter SPECIES_SLAKOTH, 10, 14
    headbuttencounter SPECIES_SLAKOTH, 10, 14
    headbuttencounter SPECIES_SLAKOTH, 10, 14
    headbuttencounter SPECIES_SLAKOTH, 15, 18
    // normal trees
    treecoords 1388, 47, 1388, 48, 1388, 49, 1387, 47, -1, -1, -1, -1
    treecoords 1385, 43, 1386, 43, 1385, 42, 1385, 41, 1386, 41, -1, -1
    treecoords 1371, 37, 1372, 37, 1371, 36, -1, -1, -1, -1, -1, -1
    treecoords 1368, 43, 1369, 43, 1368, 41, 1369, 41, 1369, 42, 1368, 42
    treecoords 1353, 45, 1354, 45, 1354, 44, 1353, 43, 1354, 43, -1, -1
    treecoords 1363, 45, 1364, 45, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1370, 47, 1370, 46, 1371, 47, 1371, 46, -1, -1, -1, -1
    treecoords 1371, 41, 1372, 41, 1371, 40, 1371, 39, 1372, 39, -1, -1
    treecoords 1358, 49, 1358, 48, 1359, 49, 1359, 48, -1, -1, -1, -1
    treecoords 1377, 41, 1377, 40, 1378, 41, -1, -1, -1, -1, -1, -1
    treecoords 1379, 47, 1379, 48, 1379, 49, 1380, 47, -1, -1, -1, -1
    // special trees
    treecoords 1315, 41, 1316, 41, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1317, 41, 1318, 41, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1319, 41, 1320, 41, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1321, 41, 1322, 41, 1322, 40, -1, -1, -1, -1, -1, -1
.close

headbuttheader  30,  17,   0   // Route 26
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 28, 29
    headbuttencounter SPECIES_PINECO, 28, 29
    headbuttencounter SPECIES_PINECO, 28, 29
    headbuttencounter SPECIES_EXEGGCUTE, 28, 29
    headbuttencounter SPECIES_EXEGGCUTE, 28, 29
    headbuttencounter SPECIES_EXEGGCUTE, 28, 29
    headbuttencounter SPECIES_HOOTHOOT, 31, 32
    headbuttencounter SPECIES_SPINARAK, 31, 32
    headbuttencounter SPECIES_SPINARAK, 31, 32
    headbuttencounter SPECIES_EXEGGCUTE, 31, 32
    headbuttencounter SPECIES_EXEGGCUTE, 31, 32
    headbuttencounter SPECIES_EXEGGCUTE, 31, 32
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 926, 347, 926, 346, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 926, 357, 926, 356, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 926, 364, 926, 365, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 921, 362, 921, 361, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 924, 321, 924, 320, 924, 319, 925, 319, -1, -1, -1, -1
    treecoords 905, 390, 906, 390, 906, 389, -1, -1, -1, -1, -1, -1
    treecoords 922, 387, 923, 387, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 920, 381, 920, 380, 919, 380, -1, -1, -1, -1, -1, -1
    treecoords 913, 383, 914, 383, 913, 381, 914, 381, -1, -1, -1, -1
    treecoords 918, 372, 919, 372, 919, 371, -1, -1, -1, -1, -1, -1
    treecoords 912, 374, 913, 374, 913, 373, -1, -1, -1, -1, -1, -1
    treecoords 918, 354, 919, 354, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 912, 354, 913, 354, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 914, 362, 914, 361, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 919, 326, 920, 326, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 917, 333, 918, 333, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 925, 333, 926, 333, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  31,  17,   0   // Route 27
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 28, 29
    headbuttencounter SPECIES_PINECO, 28, 29
    headbuttencounter SPECIES_PINECO, 28, 29
    headbuttencounter SPECIES_EXEGGCUTE, 28, 29
    headbuttencounter SPECIES_EXEGGCUTE, 28, 29
    headbuttencounter SPECIES_EXEGGCUTE, 28, 29
    headbuttencounter SPECIES_HOOTHOOT, 31, 32
    headbuttencounter SPECIES_SPINARAK, 31, 32
    headbuttencounter SPECIES_SPINARAK, 31, 32
    headbuttencounter SPECIES_EXEGGCUTE, 31, 32
    headbuttencounter SPECIES_EXEGGCUTE, 31, 32
    headbuttencounter SPECIES_EXEGGCUTE, 31, 32
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 788, 394, 789, 394, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 782, 392, 782, 391, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 782, 398, 783, 398, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 765, 402, 765, 401, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 756, 402, 756, 401, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 748, 406, 749, 406, 748, 408, 749, 408, -1, -1, -1, -1
    treecoords 744, 400, 745, 400, 744, 399, -1, -1, -1, -1, -1, -1
    treecoords 736, 407, 737, 407, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 708, 403, 709, 403, 709, 404, 709, 405, -1, -1, -1, -1
    treecoords 775, 397, 775, 396, 774, 397, 774, 396, -1, -1, -1, -1
    treecoords 790, 404, 791, 404, 790, 406, 791, 406, -1, -1, -1, -1
    treecoords 784, 410, 784, 409, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 760, 408, 761, 408, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 720, 391, 721, 391, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 720, 409, 720, 408, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 729, 404, 729, 403, 728, 403, -1, -1, -1, -1, -1, -1
    treecoords 754, 408, 755, 408, 754, 406, 755, 406, -1, -1, -1, -1
.close

headbuttheader  32,  15,   0   // Route 28
    // normal slots
    headbuttencounter SPECIES_HERACROSS, 39, 40
    headbuttencounter SPECIES_AIPOM, 39, 40
    headbuttencounter SPECIES_AIPOM, 39, 40
    headbuttencounter SPECIES_NATU, 39, 40
    headbuttencounter SPECIES_NATU, 39, 40
    headbuttencounter SPECIES_NATU, 39, 40
    headbuttencounter SPECIES_HERACROSS, 41, 43
    headbuttencounter SPECIES_AIPOM, 41, 43
    headbuttencounter SPECIES_AIPOM, 41, 43
    headbuttencounter SPECIES_NATU, 41, 43
    headbuttencounter SPECIES_NATU, 41, 43
    headbuttencounter SPECIES_NATU, 41, 43
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 834, 264, 834, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 839, 265, 839, 264, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 843, 277, 844, 277, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 886, 276, 886, 275, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 882, 264, 883, 264, 883, 263, -1, -1, -1, -1, -1, -1
    treecoords 876, 270, 877, 270, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 875, 262, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 865, 261, 866, 261, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 857, 273, 857, 274, 856, 274, -1, -1, -1, -1, -1, -1
    treecoords 866, 278, 866, 277, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 862, 280, 863, 282, 863, 281, 863, 280, -1, -1, -1, -1
    treecoords 851, 281, 852, 281, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 843, 270, 843, 269, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 833, 275, 834, 275, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 848, 272, 849, 272, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  33,  35,   0   // Route 29
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 588, 396, 588, 397, 589, 397, -1, -1, -1, -1, -1, -1
    treecoords 612, 395, 612, 396, 613, 395, 613, 396, -1, -1, -1, -1
    treecoords 616, 393, 617, 393, 616, 392, -1, -1, -1, -1, -1, -1
    treecoords 630, 395, 631, 395, 630, 394, -1, -1, -1, -1, -1, -1
    treecoords 648, 397, 649, 397, 648, 396, -1, -1, -1, -1, -1, -1
    treecoords 640, 397, 640, 396, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 652, 411, 653, 411, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 640, 410, 641, 410, 641, 409, -1, -1, -1, -1, -1, -1
    treecoords 605, 406, 605, 405, 604, 405, -1, -1, -1, -1, -1, -1
    treecoords 580, 393, 581, 393, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 580, 403, 581, 403, 581, 405, 581, 404, -1, -1, -1, -1
    treecoords 588, 407, 589, 407, 588, 408, 588, 409, -1, -1, -1, -1
    treecoords 594, 389, 595, 389, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 604, 389, 605, 389, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 606, 399, 607, 399, 606, 400, 606, 401, 607, 401, -1, -1
    treecoords 658, 386, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 617, 407, 618, 407, 618, 406, 618, 405, 617, 405, -1, -1
    treecoords 622, 403, 623, 403, 623, 402, -1, -1, -1, -1, -1, -1
    treecoords 618, 413, 619, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 628, 413, 629, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 638, 413, 639, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 638, 389, 639, 389, 639, 388, -1, -1, -1, -1, -1, -1
    treecoords 640, 401, 641, 401, 640, 400, -1, -1, -1, -1, -1, -1
    treecoords 584, 413, 585, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 582, 393, 583, 393, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 668, 395, 669, 395, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 664, 407, 665, 407, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 654, 397, 655, 397, 655, 396, -1, -1, -1, -1, -1, -1
    treecoords 658, 395, 659, 395, 659, 394, -1, -1, -1, -1, -1, -1
    treecoords 632, 401, 633, 401, 632, 399, 633, 399, -1, -1, -1, -1
    treecoords 596, 405, 597, 405, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 606, 411, 607, 411, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 622, 389, 623, 389, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 658, 407, 659, 407, 658, 408, -1, -1, -1, -1, -1, -1
    treecoords 646, 385, 647, 385, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  34,  30,   0   // Route 30
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 546, 297, 547, 297, 547, 296, -1, -1, -1, -1, -1, -1
    treecoords 571, 302, 572, 302, 571, 301, -1, -1, -1, -1, -1, -1
    treecoords 559, 294, 560, 294, 560, 293, -1, -1, -1, -1, -1, -1
    treecoords 557, 310, 558, 310, 558, 309, -1, -1, -1, -1, -1, -1
    treecoords 554, 305, 554, 304, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 566, 375, 566, 374, 567, 375, -1, -1, -1, -1, -1, -1
    treecoords 560, 377, 561, 377, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 566, 363, 567, 363, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 546, 367, 546, 366, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 558, 352, 558, 351, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 565, 345, 565, 344, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 546, 347, 546, 346, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 559, 328, 560, 328, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 569, 321, 570, 321, 569, 322, 569, 323, -1, -1, -1, -1
    treecoords 547, 321, 547, 320, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 561, 318, 561, 317, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 551, 346, 551, 345, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 568, 356, 568, 357, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 568, 354, 568, 355, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 574, 378, 574, 379, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 566, 312, 566, 311, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 565, 382, 565, 383, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 551, 352, 551, 351, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 546, 311, 547, 311, 547, 312, 547, 313, -1, -1, -1, -1
    treecoords 554, 377, 555, 377, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 561, 298, 561, 297, 561, 296, 560, 297, 560, 296, -1, -1
    treecoords 549, 291, 549, 290, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 562, 367, 562, 366, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 569, 333, 569, 332, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 569, 308, 570, 308, 570, 309, 570, 310, 569, 310, -1, -1
.close

headbuttheader  35,  15,   0   // Route 31
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_EXEGGCUTE, 3, 4
    headbuttencounter SPECIES_EXEGGCUTE, 3, 4
    headbuttencounter SPECIES_EXEGGCUTE, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 5, 6
    headbuttencounter SPECIES_SPINARAK, 5, 6
    headbuttencounter SPECIES_SPINARAK, 5, 6
    headbuttencounter SPECIES_EXEGGCUTE, 5, 6
    headbuttencounter SPECIES_EXEGGCUTE, 5, 6
    headbuttencounter SPECIES_EXEGGCUTE, 5, 6
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 566, 281, 567, 281, 566, 283, 566, 282, -1, -1, -1, -1
    treecoords 558, 267, 559, 267, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 542, 283, 543, 283, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 544, 259, 545, 259, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 518, 265, 519, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 519, 276, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 534, 275, 534, 276, 535, 276, 535, 275, 535, 274, 534, 274
    treecoords 553, 279, 554, 279, 553, 278, -1, -1, -1, -1, -1, -1
    treecoords 549, 283, 549, 282, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 559, 281, 560, 281, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 568, 277, 568, 276, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 548, 271, 549, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 528, 281, 529, 281, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 528, 265, 529, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 536, 281, 537, 281, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  36,  35,   0   // Route 32
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_PINECO, 4, 5
    headbuttencounter SPECIES_PINECO, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_HOOTHOOT, 6, 7
    headbuttencounter SPECIES_HOOTHOOT, 6, 7
    headbuttencounter SPECIES_HOOTHOOT, 6, 7
    headbuttencounter SPECIES_EXEGGCUTE, 6, 7
    headbuttencounter SPECIES_EXEGGCUTE, 6, 7
    headbuttencounter SPECIES_EXEGGCUTE, 6, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 458, 289, 459, 289, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 478, 291, 478, 290, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 464, 299, 465, 299, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 472, 302, 473, 302, 473, 303, 473, 304, -1, -1, -1, -1
    treecoords 478, 315, 478, 314, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 474, 327, 475, 327, 474, 329, 474, 328, -1, -1, -1, -1
    treecoords 463, 318, 464, 318, 463, 320, 464, 320, 463, 319, -1, -1
    treecoords 464, 327, 465, 327, 465, 329, 465, 328, -1, -1, -1, -1
    treecoords 460, 331, 461, 331, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 460, 311, 461, 311, 461, 313, 461, 312, -1, -1, -1, -1
    treecoords 454, 335, 455, 335, 455, 334, -1, -1, -1, -1, -1, -1
    treecoords 453, 353, 453, 352, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 453, 351, 453, 350, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 450, 359, 451, 359, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 453, 375, 454, 375, 453, 377, 453, 376, -1, -1, -1, -1
    treecoords 456, 383, 456, 382, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 449, 387, 449, 386, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 465, 398, 466, 398, 466, 397, -1, -1, -1, -1, -1, -1
    treecoords 470, 402, 471, 402, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 472, 409, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 476, 439, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 469, 430, 469, 429, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 471, 440, 472, 440, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 471, 421, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 462, 406, 463, 406, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 455, 417, 455, 416, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 450, 403, 451, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 472, 394, 472, 393, 472, 392, -1, -1, -1, -1, -1, -1
    treecoords 458, 307, 459, 307, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 449, 377, 449, 376, 449, 375, -1, -1, -1, -1, -1, -1
    treecoords 461, 323, 461, 322, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 478, 316, 478, 317, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 478, 319, 478, 318, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 461, 419, 462, 419, 462, 420, 462, 421, -1, -1, -1, -1
    treecoords 455, 406, 455, 407, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  37,   4,   0   // Route 33
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 3, 5
    headbuttencounter SPECIES_HERACROSS, 3, 5
    headbuttencounter SPECIES_HERACROSS, 3, 5
    headbuttencounter SPECIES_AIPOM, 3, 5
    headbuttencounter SPECIES_AIPOM, 3, 5
    headbuttencounter SPECIES_AIPOM, 3, 5
    headbuttencounter SPECIES_SPEAROW, 6, 8
    headbuttencounter SPECIES_SPEAROW, 6, 8
    headbuttencounter SPECIES_SPEAROW, 6, 8
    headbuttencounter SPECIES_AIPOM, 6, 8
    headbuttencounter SPECIES_AIPOM, 6, 8
    headbuttencounter SPECIES_AIPOM, 6, 8
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 450, 473, 451, 473, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 460, 477, 461, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 453, 465, 453, 464, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 472, 477, 473, 477, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  38,  15,   1   // Route 34
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 9, 10
    headbuttencounter SPECIES_PINECO, 9, 10
    headbuttencounter SPECIES_PINECO, 9, 10
    headbuttencounter SPECIES_EXEGGCUTE, 9, 10
    headbuttencounter SPECIES_EXEGGCUTE, 9, 10
    headbuttencounter SPECIES_EXEGGCUTE, 9, 10
    headbuttencounter SPECIES_HOOTHOOT, 11, 12
    headbuttencounter SPECIES_SPINARAK, 11, 12
    headbuttencounter SPECIES_SPINARAK, 11, 12
    headbuttencounter SPECIES_EXEGGCUTE, 11, 12
    headbuttencounter SPECIES_EXEGGCUTE, 11, 12
    headbuttencounter SPECIES_EXEGGCUTE, 11, 12
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 355, 405, 355, 404, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 355, 403, 355, 402, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 355, 401, 355, 400, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 372, 395, 373, 395, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 365, 443, 365, 442, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 382, 441, 382, 440, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 382, 425, 382, 424, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 378, 417, 379, 417, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 370, 413, 370, 412, 370, 411, -1, -1, -1, -1, -1, -1
    treecoords 364, 401, 364, 400, 364, 399, 365, 399, -1, -1, -1, -1
    treecoords 374, 391, 374, 390, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 372, 471, 373, 471, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 361, 473, 361, 472, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 368, 477, 369, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 366, 465, 367, 465, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  39,  14,   0   // Route 35
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 10, 11
    headbuttencounter SPECIES_PINECO, 10, 11
    headbuttencounter SPECIES_PINECO, 10, 11
    headbuttencounter SPECIES_EXEGGCUTE, 10, 11
    headbuttencounter SPECIES_EXEGGCUTE, 10, 11
    headbuttencounter SPECIES_EXEGGCUTE, 10, 11
    headbuttencounter SPECIES_HOOTHOOT, 13, 14
    headbuttencounter SPECIES_SPINARAK, 13, 14
    headbuttencounter SPECIES_SPINARAK, 13, 14
    headbuttencounter SPECIES_EXEGGCUTE, 13, 14
    headbuttencounter SPECIES_EXEGGCUTE, 13, 14
    headbuttencounter SPECIES_EXEGGCUTE, 13, 14
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 377, 258, 377, 259, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 378, 266, 379, 266, 379, 264, 379, 263, 379, 262, 378, 262
    treecoords 370, 282, 371, 282, 370, 281, 370, 280, 371, 280, -1, -1
    treecoords 374, 276, 375, 276, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 355, 276, 355, 277, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 356, 295, 357, 295, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 377, 319, 377, 318, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 355, 315, 355, 314, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 378, 313, 379, 313, 378, 311, 379, 311, -1, -1, -1, -1
    treecoords 366, 317, 366, 316, 366, 315, 367, 315, -1, -1, -1, -1
    treecoords 359, 301, 359, 300, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 359, 269, 359, 268, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 355, 287, 355, 286, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 368, 265, 369, 265, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  40,  26,   0   // Route 36
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_PINECO, 4, 5
    headbuttencounter SPECIES_PINECO, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_HOOTHOOT, 6, 7
    headbuttencounter SPECIES_SPINARAK, 6, 7
    headbuttencounter SPECIES_SPINARAK, 6, 7
    headbuttencounter SPECIES_EXEGGCUTE, 6, 7
    headbuttencounter SPECIES_EXEGGCUTE, 6, 7
    headbuttencounter SPECIES_EXEGGCUTE, 6, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 380, 231, 381, 231, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 376, 241, 377, 241, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 377, 253, 377, 252, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 398, 245, 398, 244, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 403, 234, 404, 234, 404, 233, 404, 232, 403, 232, 403, 233
    treecoords 392, 232, 392, 231, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 414, 245, 414, 244, 414, 243, 413, 243, -1, -1, -1, -1
    treecoords 391, 251, 392, 251, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 384, 245, 384, 244, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 405, 253, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 422, 249, 423, 249, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 428, 241, 429, 241, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 402, 227, 403, 227, 402, 226, -1, -1, -1, -1, -1, -1
    treecoords 444, 249, 445, 249, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 444, 241, 445, 241, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 436, 241, 437, 241, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 421, 243, 421, 242, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 414, 251, 415, 251, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 387, 243, 388, 243, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 377, 249, 377, 248, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 394, 238, 395, 238, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 399, 251, 400, 251, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 405, 247, 406, 247, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 410, 241, 411, 241, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 394, 228, 395, 228, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 434, 252, 434, 251, 435, 251, -1, -1, -1, -1, -1, -1
.close

headbuttheader  41,  13,   0   // Route 37
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 12, 14
    headbuttencounter SPECIES_PINECO, 12, 14
    headbuttencounter SPECIES_PINECO, 12, 14
    headbuttencounter SPECIES_EXEGGCUTE, 12, 14
    headbuttencounter SPECIES_EXEGGCUTE, 12, 14
    headbuttencounter SPECIES_EXEGGCUTE, 12, 14
    headbuttencounter SPECIES_HOOTHOOT, 15, 17
    headbuttencounter SPECIES_SPINARAK, 15, 17
    headbuttencounter SPECIES_SPINARAK, 15, 17
    headbuttencounter SPECIES_EXEGGCUTE, 15, 17
    headbuttencounter SPECIES_EXEGGCUTE, 15, 17
    headbuttencounter SPECIES_EXEGGCUTE, 15, 17
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 390, 210, 390, 209, 390, 208, 391, 208, 391, 209, 391, 210
    treecoords 396, 217, 397, 217, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 408, 215, 408, 214, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 401, 207, 401, 206, 401, 205, 400, 205, -1, -1, -1, -1
    treecoords 400, 217, 401, 217, 401, 216, -1, -1, -1, -1, -1, -1
    treecoords 386, 213, 387, 213, 387, 214, 387, 215, -1, -1, -1, -1
    treecoords 385, 201, 385, 200, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 396, 201, 396, 200, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 400, 193, 401, 193, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 406, 199, 407, 199, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 388, 195, 389, 195, 389, 194, -1, -1, -1, -1, -1, -1
    treecoords 408, 207, 408, 206, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 404, 221, 405, 221, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  42,  13,   1   // Route 38
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 13, 14
    headbuttencounter SPECIES_PINECO, 13, 14
    headbuttencounter SPECIES_PINECO, 13, 14
    headbuttencounter SPECIES_EXEGGCUTE, 13, 14
    headbuttencounter SPECIES_EXEGGCUTE, 13, 14
    headbuttencounter SPECIES_EXEGGCUTE, 13, 14
    headbuttencounter SPECIES_HOOTHOOT, 15, 16
    headbuttencounter SPECIES_SPINARAK, 15, 16
    headbuttencounter SPECIES_SPINARAK, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    // special slots
    headbuttencounter SPECIES_EXEGGCUTE, 18, 25
    headbuttencounter SPECIES_EXEGGCUTE, 18, 25
    headbuttencounter SPECIES_BURMY, 18, 20
    headbuttencounter SPECIES_BURMY, 18, 20
    headbuttencounter SPECIES_BURMY, 18, 20
    headbuttencounter SPECIES_BURMY, 21, 25
    // normal trees
    treecoords 348, 164, 349, 164, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 340, 165, 341, 165, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 332, 161, 333, 161, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 322, 161, 323, 161, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 324, 163, 325, 163, 324, 164, 324, 165, -1, -1, -1, -1
    treecoords 330, 167, 331, 167, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 342, 178, 343, 178, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 336, 181, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 313, 174, 313, 173, 312, 174, 312, 173, -1, -1, -1, -1
    treecoords 307, 164, 308, 164, 307, 162, 308, 162, -1, -1, -1, -1
    treecoords 303, 170, 303, 169, 303, 168, 304, 168, -1, -1, -1, -1
    treecoords 305, 174, 306, 174, 306, 173, -1, -1, -1, -1, -1, -1
    treecoords 315, 164, 316, 164, 315, 162, 316, 162, -1, -1, -1, -1
    // special trees
    treecoords 302, 189, 302, 190, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  43,   3,   0   // Route 39
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 14, 15
    headbuttencounter SPECIES_PINECO, 14, 15
    headbuttencounter SPECIES_PINECO, 14, 15
    headbuttencounter SPECIES_EXEGGCUTE, 14, 15
    headbuttencounter SPECIES_EXEGGCUTE, 14, 15
    headbuttencounter SPECIES_EXEGGCUTE, 14, 15
    headbuttencounter SPECIES_HOOTHOOT, 16, 17
    headbuttencounter SPECIES_SPINARAK, 16, 17
    headbuttencounter SPECIES_SPINARAK, 16, 17
    headbuttencounter SPECIES_EXEGGCUTE, 16, 17
    headbuttencounter SPECIES_EXEGGCUTE, 16, 17
    headbuttencounter SPECIES_EXEGGCUTE, 16, 17
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 269, 183, 270, 183, 270, 182, 270, 181, 269, 181, -1, -1
    treecoords 284, 193, 285, 193, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 274, 216, 275, 216, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  44,  10,   0   // Route 42
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 13, 14
    headbuttencounter SPECIES_HERACROSS, 13, 14
    headbuttencounter SPECIES_HERACROSS, 13, 14
    headbuttencounter SPECIES_AIPOM, 13, 14
    headbuttencounter SPECIES_AIPOM, 13, 14
    headbuttencounter SPECIES_AIPOM, 13, 14
    headbuttencounter SPECIES_SPEAROW, 15, 16
    headbuttencounter SPECIES_SPEAROW, 15, 16
    headbuttencounter SPECIES_SPEAROW, 15, 16
    headbuttencounter SPECIES_AIPOM, 15, 16
    headbuttencounter SPECIES_AIPOM, 15, 16
    headbuttencounter SPECIES_AIPOM, 15, 16
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 424, 173, 425, 173, 425, 172, -1, -1, -1, -1, -1, -1
    treecoords 426, 187, 427, 187, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 448, 184, 449, 184, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 470, 186, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 461, 186, 461, 185, 460, 185, -1, -1, -1, -1, -1, -1
    treecoords 442, 182, 443, 182, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 432, 181, 433, 181, 432, 182, -1, -1, -1, -1, -1, -1
    treecoords 436, 177, 437, 177, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 458, 181, 458, 180, 458, 179, 459, 179, 459, 180, 459, 181
    treecoords 469, 179, 470, 179, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  45,  17,   0   // Route 43
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 15, 16
    headbuttencounter SPECIES_PINECO, 15, 16
    headbuttencounter SPECIES_PINECO, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_HOOTHOOT, 17, 18
    headbuttencounter SPECIES_VENONAT, 17, 18
    headbuttencounter SPECIES_HOOTHOOT, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 516, 99, 516, 98, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 522, 107, 523, 107, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 516, 127, 517, 127, 516, 126, 517, 126, -1, -1, -1, -1
    treecoords 528, 133, 529, 133, 528, 134, 528, 135, -1, -1, -1, -1
    treecoords 537, 103, 538, 103, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 526, 103, 527, 103, 527, 102, -1, -1, -1, -1, -1, -1
    treecoords 530, 111, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 535, 125, 535, 124, 536, 125, 536, 124, -1, -1, -1, -1
    treecoords 528, 153, 529, 153, 528, 155, -1, -1, -1, -1, -1, -1
    treecoords 534, 151, 535, 151, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 530, 129, 530, 128, 531, 129, 531, 128, -1, -1, -1, -1
    treecoords 512, 123, 513, 123, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 514, 105, 515, 105, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 517, 115, 517, 114, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 518, 101, 519, 101, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 539, 113, 540, 113, 539, 112, -1, -1, -1, -1, -1, -1
    treecoords 527, 122, 527, 121, 526, 122, 526, 121, -1, -1, -1, -1
.close

headbuttheader  46,  14,   0   // Route 44
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 21, 22
    headbuttencounter SPECIES_HERACROSS, 21, 22
    headbuttencounter SPECIES_HERACROSS, 21, 22
    headbuttencounter SPECIES_AIPOM, 21, 22
    headbuttencounter SPECIES_AIPOM, 21, 22
    headbuttencounter SPECIES_AIPOM, 21, 22
    headbuttencounter SPECIES_SPEAROW, 23, 24
    headbuttencounter SPECIES_SPEAROW, 23, 24
    headbuttencounter SPECIES_SPEAROW, 23, 24
    headbuttencounter SPECIES_AIPOM, 23, 24
    headbuttencounter SPECIES_AIPOM, 23, 24
    headbuttencounter SPECIES_AIPOM, 23, 24
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 623, 171, 624, 171, 624, 172, 624, 173, 623, 173, -1, -1
    treecoords 614, 178, 615, 178, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 606, 172, 607, 172, 607, 171, 606, 171, -1, -1, -1, -1
    treecoords 608, 164, 608, 163, 608, 162, -1, -1, -1, -1, -1, -1
    treecoords 604, 184, 604, 183, 603, 184, -1, -1, -1, -1, -1, -1
    treecoords 591, 184, 592, 184, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 585, 176, 586, 176, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 589, 172, 590, 172, 589, 170, 590, 170, -1, -1, -1, -1
    treecoords 586, 166, 586, 164, 585, 164, 586, 165, -1, -1, -1, -1
    treecoords 565, 170, 566, 170, 565, 171, -1, -1, -1, -1, -1, -1
    treecoords 550, 174, 551, 174, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 557, 168, 558, 168, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 597, 176, 598, 176, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 567, 164, 568, 164, 568, 163, 568, 162, -1, -1, -1, -1
.close

headbuttheader  47,   3,   0   // Route 45
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 23, 24
    headbuttencounter SPECIES_HERACROSS, 23, 24
    headbuttencounter SPECIES_HERACROSS, 23, 25
    headbuttencounter SPECIES_AIPOM, 23, 24
    headbuttencounter SPECIES_AIPOM, 23, 24
    headbuttencounter SPECIES_AIPOM, 23, 24
    headbuttencounter SPECIES_SPEAROW, 26, 27
    headbuttencounter SPECIES_SPEAROW, 26, 27
    headbuttencounter SPECIES_SPEAROW, 26, 27
    headbuttencounter SPECIES_AIPOM, 26, 27
    headbuttencounter SPECIES_AIPOM, 26, 27
    headbuttencounter SPECIES_AIPOM, 26, 27
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 648, 341, 649, 341, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 662, 341, 662, 340, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 657, 331, 657, 330, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  48,  10,   0   // Route 46
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 2, 3
    headbuttencounter SPECIES_HERACROSS, 2, 3
    headbuttencounter SPECIES_HERACROSS, 2, 3
    headbuttencounter SPECIES_AIPOM, 2, 3
    headbuttencounter SPECIES_AIPOM, 2, 3
    headbuttencounter SPECIES_AIPOM, 2, 3
    headbuttencounter SPECIES_SPEAROW, 4, 5
    headbuttencounter SPECIES_SPEAROW, 4, 5
    headbuttencounter SPECIES_SPEAROW, 4, 5
    headbuttencounter SPECIES_AIPOM, 4, 5
    headbuttencounter SPECIES_AIPOM, 4, 5
    headbuttencounter SPECIES_AIPOM, 4, 5
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 614, 331, 614, 330, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 628, 351, 628, 352, 629, 352, -1, -1, -1, -1, -1, -1
    treecoords 610, 351, 610, 350, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 615, 376, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 630, 377, 630, 376, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 623, 380, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 611, 361, 611, 360, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 623, 335, 624, 335, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 626, 331, 626, 330, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 611, 368, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  49,  17,   0   // Pallet Town
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_WURMPLE, 2, 3
    headbuttencounter SPECIES_WURMPLE, 2, 3
    headbuttencounter SPECIES_WURMPLE, 2, 3
    headbuttencounter SPECIES_HOOTHOOT, 5, 6
    headbuttencounter SPECIES_SPINARAK, 5, 6
    headbuttencounter SPECIES_SPINARAK, 5, 6
    headbuttencounter SPECIES_WURMPLE, 5, 6
    headbuttencounter SPECIES_WURMPLE, 5, 6
    headbuttencounter SPECIES_WURMPLE, 5, 6
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1028, 355, 1029, 355, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1030, 355, 1031, 355, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1034, 355, 1035, 355, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1048, 355, 1049, 355, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1030, 377, 1031, 377, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 375, 1027, 374, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 369, 1027, 368, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 365, 1027, 364, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1027, 363, 1027, 362, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1050, 355, 1051, 355, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1048, 381, 1049, 381, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1050, 381, 1051, 381, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 377, 1052, 376, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 371, 1052, 370, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 367, 1052, 366, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 365, 1052, 364, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 361, 1052, 369, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  50,  21,   0   // Viridian City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1032, 271, 1033, 271, 1033, 273, -1, -1, -1, -1, -1, -1
    treecoords 1033, 274, 1033, 275, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1028, 271, 1029, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1014, 271, 1015, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1013, 270, 1013, 269, 1012, 269, -1, -1, -1, -1, -1, -1
    treecoords 1044, 271, 1045, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 270, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 269, 1054, 268, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 267, 1053, 267, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1022, 271, 1023, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1050, 263, 1050, 262, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1050, 261, 1050, 260, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1050, 251, 1050, 250, 1050, 249, 1051, 249, -1, -1, -1, -1
    treecoords 1054, 248, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 243, 1054, 242, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 247, 1054, 246, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 239, 1054, 238, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1052, 231, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1048, 231, 1049, 231, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1044, 231, 1045, 231, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1040, 231, 1041, 231, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  51,  21,   2   // Pewter City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 5
    headbuttencounter SPECIES_PINECO, 3, 5
    headbuttencounter SPECIES_PINECO, 3, 5
    headbuttencounter SPECIES_WURMPLE, 3, 5
    headbuttencounter SPECIES_WURMPLE, 3, 5
    headbuttencounter SPECIES_WURMPLE, 3, 5
    headbuttencounter SPECIES_HOOTHOOT, 7, 9
    headbuttencounter SPECIES_HOOTHOOT, 7, 9
    headbuttencounter SPECIES_HOOTHOOT, 7, 9
    headbuttencounter SPECIES_WURMPLE, 7, 9
    headbuttencounter SPECIES_WURMPLE, 7, 9
    headbuttencounter SPECIES_WURMPLE, 7, 9
    // special slots
    headbuttencounter SPECIES_WURMPLE, 5, 9
    headbuttencounter SPECIES_WURMPLE, 5, 9
    headbuttencounter SPECIES_STARLY, 5, 9
    headbuttencounter SPECIES_STARLY, 5, 9
    headbuttencounter SPECIES_STARLY, 5, 9
    headbuttencounter SPECIES_STARLY, 8, 12
    // normal trees
    treecoords 1052, 117, 1053, 117, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1060, 117, 1061, 117, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1070, 117, 1071, 117, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1040, 111, 1041, 111, 1040, 109, 1041, 109, -1, -1, -1, -1
    treecoords 1042, 111, 1043, 111, 1043, 110, 1043, 109, 1042, 109, -1, -1
    treecoords 1042, 99, 1043, 99, 1043, 101, -1, -1, -1, -1, -1, -1
    treecoords 1044, 101, 1045, 101, 1044, 99, 1045, 99, -1, -1, -1, -1
    treecoords 1052, 101, 1053, 101, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1043, 93, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1051, 93, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1061, 87, 1062, 87, 1061, 85, 1062, 85, -1, -1, -1, -1
    treecoords 1065, 87, 1066, 87, 1065, 85, 1066, 85, -1, -1, -1, -1
    treecoords 1065, 81, 1065, 80, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1066, 73, 1067, 73, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1062, 73, 1063, 73, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1060, 77, 1061, 77, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1029, 75, 1030, 75, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1031, 75, 1032, 75, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1030, 85, 1030, 84, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1030, 81, 1030, 80, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1030, 79, 1030, 78, 1030, 77, 1031, 77, -1, -1, -1, -1
    // special trees
    treecoords 1037, 119, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1037, 120, 1037, 121, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  52,  11,   0   // Cerulean City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 11, 13
    headbuttencounter SPECIES_PINECO, 11, 13
    headbuttencounter SPECIES_PINECO, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1295, 158, 1295, 157, 1296, 158, 1296, 157, -1, -1, -1, -1
    treecoords 1303, 158, 1304, 158, 1303, 157, 1304, 157, -1, -1, -1, -1
    treecoords 1303, 156, 1304, 156, 1303, 155, 1304, 155, 1303, 154, 1304, 154
    treecoords 1322, 134, 1323, 134, 1323, 133, -1, -1, -1, -1, -1, -1
    treecoords 1323, 128, 1323, 127, 1322, 128, 1322, 127, -1, -1, -1, -1
    treecoords 1323, 126, 1323, 125, 1322, 126, 1322, 125, -1, -1, -1, -1
    treecoords 1323, 120, 1323, 119, 1323, 118, 1322, 118, -1, -1, -1, -1
    treecoords 1330, 112, 1331, 112, 1330, 111, -1, -1, -1, -1, -1, -1
    treecoords 1332, 112, 1333, 112, 1333, 111, -1, -1, -1, -1, -1, -1
    treecoords 1333, 110, 1333, 109, 1333, 108, 1332, 108, -1, -1, -1, -1
    treecoords 1330, 105, 1331, 105, 1330, 104, -1, -1, -1, -1, -1, -1
.close

headbuttheader  53,   0,   0   // Lavender Town
.close

headbuttheader  54,  10,   0   // Vermilion City
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 11, 13
    headbuttencounter SPECIES_HERACROSS, 11, 13
    headbuttencounter SPECIES_HERACROSS, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_COMBEE, 11, 13
    headbuttencounter SPECIES_SPEAROW, 14, 16
    headbuttencounter SPECIES_SPEAROW, 14, 16
    headbuttencounter SPECIES_SPEAROW, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    headbuttencounter SPECIES_COMBEE, 14, 16
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1341, 313, 1342, 313, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1340, 315, 1340, 314, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1340, 325, 1341, 325, 1341, 324, -1, -1, -1, -1, -1, -1
    treecoords 1341, 323, 1341, 322, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1338, 325, 1339, 325, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1336, 325, 1337, 325, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1336, 329, 1337, 329, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1338, 328, 1338, 327, 1339, 327, -1, -1, -1, -1, -1, -1
    treecoords 1340, 327, 1341, 327, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1342, 327, 1343, 327, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  55,  32,   0   // Celadon City
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 15, 17
    headbuttencounter SPECIES_HERACROSS, 15, 17
    headbuttencounter SPECIES_HERACROSS, 15, 17
    headbuttencounter SPECIES_COMBEE, 15, 17
    headbuttencounter SPECIES_COMBEE, 15, 17
    headbuttencounter SPECIES_COMBEE, 15, 17
    headbuttencounter SPECIES_SPEAROW, 18, 20
    headbuttencounter SPECIES_SPEAROW, 18, 20
    headbuttencounter SPECIES_SPEAROW, 18, 20
    headbuttencounter SPECIES_COMBEE, 18, 20
    headbuttencounter SPECIES_COMBEE, 18, 20
    headbuttencounter SPECIES_COMBEE, 18, 20
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1198, 225, 1199, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1200, 225, 1201, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1204, 225, 1205, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1210, 225, 1211, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1216, 225, 1217, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1220, 225, 1221, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1222, 225, 1223, 225, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1234, 229, 1235, 229, 1234, 227, 1235, 227, -1, -1, -1, -1
    treecoords 1240, 237, 1241, 237, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1188, 255, 1189, 255, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1190, 255, 1191, 255, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 249, 1193, 248, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 247, 1193, 246, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 243, 1193, 242, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 269, 1193, 268, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1198, 273, 1199, 273, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1202, 273, 1203, 273, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1210, 273, 1211, 273, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1215, 271, 1216, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1223, 271, 1224, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1219, 267, 1220, 267, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1221, 267, 1222, 267, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1230, 271, 1231, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1232, 271, 1233, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1234, 271, 1235, 271, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1237, 269, 1237, 268, 1237, 267, 1236, 267, -1, -1, -1, -1
    treecoords 1240, 267, 1240, 266, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1240, 265, 1240, 264, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1240, 263, 1240, 262, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1237, 257, 1237, 256, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1238, 253, 1239, 253, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1240, 255, 1240, 254, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  56,  18,   0   // Fuchsia City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 21, 23
    headbuttencounter SPECIES_SPINARAK, 21, 23
    headbuttencounter SPECIES_SPINARAK, 21, 23
    headbuttencounter SPECIES_WURMPLE, 21, 23
    headbuttencounter SPECIES_WURMPLE, 21, 23
    headbuttencounter SPECIES_WURMPLE, 21, 23
    headbuttencounter SPECIES_HOOTHOOT, 26, 34
    headbuttencounter SPECIES_TANGELA, 26, 34
    headbuttencounter SPECIES_HOOTHOOT, 26, 34
    headbuttencounter SPECIES_WURMPLE, 26, 34
    headbuttencounter SPECIES_WURMPLE, 26, 34
    headbuttencounter SPECIES_WURMPLE, 26, 34
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1193, 417, 1193, 416, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 415, 1193, 414, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 409, 1193, 408, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1193, 407, 1193, 406, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1195, 403, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1198, 403, 1199, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1200, 403, 1201, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1204, 403, 1205, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1208, 403, 1209, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1210, 403, 1211, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1220, 403, 1221, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1226, 403, 1227, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1228, 403, 1229, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1230, 403, 1231, 403, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1234, 403, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1236, 405, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1236, 413, 1236, 412, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1236, 409, 1236, 408, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  57,   0,   0   // Cinnabar Island
.close

headbuttheader  58,   0,   0   // Indigo Plateau
.close

headbuttheader  59,   0,   0   // Saffron City
.close

headbuttheader  60,  11,   0   // New Bark Town
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 698, 403, 698, 404, 698, 405, 699, 403, -1, -1, -1, -1
    treecoords 698, 406, 698, 407, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 698, 411, 698, 412, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 692, 413, 693, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 690, 413, 691, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 686, 413, 687, 413, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 680, 411, 681, 411, 681, 412, -1, -1, -1, -1, -1, -1
    treecoords 678, 411, 679, 411, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 674, 407, 675, 407, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 692, 390, 692, 391, 693, 391, -1, -1, -1, -1, -1, -1
    treecoords 676, 395, 677, 395, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  61,   0,   0   // Elms Lab (1F)
.close

headbuttheader  62,   0,   0   // Elms Lab (2F)
.close

headbuttheader  63,   0,   0   // Moms House (1F)
.close

headbuttheader  64,   0,   0   // Moms House (2F)
.close

headbuttheader  65,   0,   0   // New Bark Town House
.close

headbuttheader  66,   0,   0   // Ethan / Lyras House (1F)
.close

headbuttheader  67,   7,   4   // Cherrygrove City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_PINECO, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_EXEGGCUTE, 2, 3
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_SPINARAK, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    headbuttencounter SPECIES_EXEGGCUTE, 4, 5
    // special slots
    headbuttencounter SPECIES_EXEGGCUTE, 18, 20
    headbuttencounter SPECIES_EXEGGCUTE, 18, 20
    headbuttencounter SPECIES_TAILLOW, 18, 20
    headbuttencounter SPECIES_TAILLOW, 18, 20
    headbuttencounter SPECIES_TAILLOW, 18, 20
    headbuttencounter SPECIES_TAILLOW, 21, 25
    // normal trees
    treecoords 570, 408, 570, 409, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 564, 411, 565, 411, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 562, 411, 563, 411, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 552, 407, 553, 407, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 548, 407, 549, 407, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 560, 391, 561, 391, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 552, 390, 552, 391, 553, 391, -1, -1, -1, -1, -1, -1
    // special trees
    treecoords 522, 387, 523, 387, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 524, 387, 525, 387, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 521, 389, 521, 388, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 526, 389, 526, 388, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  68,   0,   0   // Cherrygrove City Pokémart
.close

headbuttheader  69,   0,   0   // Cherrygrove City Pokémon Centre
.close

headbuttheader  70,   0,   0   // Cherrygrove City House
.close

headbuttheader  71,   0,   0   // Cherrygrove City House
.close

headbuttheader  72,   0,   0   // Cherrygrove City House
.close

headbuttheader  73,  27,   0   // Violet City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 2, 3
    headbuttencounter SPECIES_PINECO, 10, 10
    headbuttencounter SPECIES_PINECO, 10, 10
    headbuttencounter SPECIES_EXEGGCUTE, 10, 10
    headbuttencounter SPECIES_EXEGGCUTE, 10, 10
    headbuttencounter SPECIES_EXEGGCUTE, 10, 10
    headbuttencounter SPECIES_HOOTHOOT, 4, 5
    headbuttencounter SPECIES_HOOTHOOT, 10, 10
    headbuttencounter SPECIES_HOOTHOOT, 10, 10
    headbuttencounter SPECIES_EXEGGCUTE, 10, 10
    headbuttencounter SPECIES_EXEGGCUTE, 10, 10
    headbuttencounter SPECIES_EXEGGCUTE, 10, 10
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 510, 276, 510, 277, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 506, 265, 507, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 504, 265, 505, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 500, 279, 501, 279, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 496, 279, 496, 280, 496, 281, 497, 279, -1, -1, -1, -1
    treecoords 490, 283, 491, 283, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 481, 281, 481, 280, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 487, 273, 487, 272, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 484, 265, 485, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 470, 272, 470, 273, 471, 273, -1, -1, -1, -1, -1, -1
    treecoords 468, 279, 469, 279, 469, 280, 469, 281, -1, -1, -1, -1
    treecoords 465, 274, 465, 275, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 465, 272, 465, 273, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 462, 265, 463, 265, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 460, 261, 461, 261, 461, 262, 461, 263, -1, -1, -1, -1
    treecoords 468, 250, 468, 251, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 468, 246, 468, 247, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 466, 243, 467, 243, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 504, 235, 505, 235, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 506, 236, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 506, 237, 506, 238, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 506, 239, 506, 240, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 457, 230, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 457, 228, 457, 229, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 458, 227, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 459, 227, 460, 227, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 461, 227, 462, 227, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  74,  15,   0   // Azalea Town
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 3, 5
    headbuttencounter SPECIES_HERACROSS, 3, 5
    headbuttencounter SPECIES_HERACROSS, 3, 5
    headbuttencounter SPECIES_AIPOM, 3, 5
    headbuttencounter SPECIES_AIPOM, 3, 5
    headbuttencounter SPECIES_AIPOM, 3, 5
    headbuttencounter SPECIES_SPEAROW, 6, 8
    headbuttencounter SPECIES_SPEAROW, 6, 8
    headbuttencounter SPECIES_SPEAROW, 6, 8
    headbuttencounter SPECIES_AIPOM, 6, 8
    headbuttencounter SPECIES_AIPOM, 6, 8
    headbuttencounter SPECIES_AIPOM, 6, 8
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 426, 465, 427, 465, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 424, 459, 425, 459, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 414, 455, 415, 455, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 406, 455, 407, 455, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 396, 449, 397, 449, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 393, 452, 393, 453, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 394, 467, 395, 467, 395, 468, 395, 469, -1, -1, -1, -1
    treecoords 395, 470, 395, 471, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 395, 472, 395, 473, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 398, 477, 399, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 400, 477, 401, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 402, 477, 403, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 404, 477, 405, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 410, 477, 411, 477, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 412, 477, 413, 477, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  75,   0,   0   // Cianwood City
.close

headbuttheader  76,   0,   0   // Goldenrod City
.close

headbuttheader  77,   0,   0   // Olivine City
.close

headbuttheader  78,  18,   0   // Ecruteak City
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 12, 14
    headbuttencounter SPECIES_PINECO, 12, 14
    headbuttencounter SPECIES_PINECO, 12, 14
    headbuttencounter SPECIES_EXEGGCUTE, 12, 14
    headbuttencounter SPECIES_EXEGGCUTE, 12, 14
    headbuttencounter SPECIES_EXEGGCUTE, 12, 14
    headbuttencounter SPECIES_HOOTHOOT, 15, 17
    headbuttencounter SPECIES_SPINARAK, 15, 17
    headbuttencounter SPECIES_SPINARAK, 15, 17
    headbuttencounter SPECIES_EXEGGCUTE, 15, 17
    headbuttencounter SPECIES_EXEGGCUTE, 15, 17
    headbuttencounter SPECIES_EXEGGCUTE, 15, 17
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 414, 166, 414, 167, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 414, 182, 414, 183, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 414, 184, 414, 185, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 410, 189, 411, 189, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 404, 182, 404, 183, 405, 183, -1, -1, -1, -1, -1, -1
    treecoords 400, 189, 401, 189, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 388, 164, 389, 164, 389, 163, -1, -1, -1, -1, -1, -1
    treecoords 380, 189, 381, 189, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 374, 189, 375, 189, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 369, 186, 369, 187, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 369, 182, 369, 183, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 369, 176, 369, 177, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 369, 174, 369, 175, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 364, 169, 365, 169, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 360, 163, 361, 163, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 362, 163, 363, 163, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 369, 158, 369, 159, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 378, 173, 379, 173, 379, 172, -1, -1, -1, -1, -1, -1
.close

headbuttheader  79,   0,   0   // Ecruteak City Pokémart
.close

headbuttheader  80,   0,   0   // Ecruteak City Gym
.close

headbuttheader  81,   0,   0   // Ecruteak Pokémon Centre
.close

headbuttheader  82,   0,   0   // Jubilife City ? (Unused)
.close

headbuttheader  83,   0,   0   // Barrier Station to Bell Tower
.close

headbuttheader  84,   0,   0   // Ecruteak City House
.close

headbuttheader  85,   0,   0   // Ecruteak City House
.close

headbuttheader  86,   0,   0   // Ecruteak Dance Theatre
.close

headbuttheader  87,   0,   0   // Mahogany Town
.close

headbuttheader  88,  22,   0   // Lake of Rage
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_PINECO, 14, 16
    headbuttencounter SPECIES_PINECO, 14, 16
    headbuttencounter SPECIES_EXEGGCUTE, 14, 16
    headbuttencounter SPECIES_EXEGGCUTE, 14, 16
    headbuttencounter SPECIES_EXEGGCUTE, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 17, 19
    headbuttencounter SPECIES_VENONAT, 17, 19
    headbuttencounter SPECIES_HOOTHOOT, 17, 19
    headbuttencounter SPECIES_EXEGGCUTE, 17, 19
    headbuttencounter SPECIES_EXEGGCUTE, 17, 19
    headbuttencounter SPECIES_EXEGGCUTE, 17, 19
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 552, 52, 552, 53, 553, 53, -1, -1, -1, -1, -1, -1
    treecoords 552, 62, 553, 62, 553, 61, -1, -1, -1, -1, -1, -1
    treecoords 556, 63, 556, 62, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 556, 61, 556, 60, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 546, 68, 547, 68, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 548, 68, 549, 68, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 543, 80, 543, 79, 544, 79, -1, -1, -1, -1, -1, -1
    treecoords 523, 89, 523, 88, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 512, 91, 513, 91, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 508, 91, 509, 91, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 506, 91, 507, 91, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 500, 85, 501, 85, 501, 84, 500, 83, 501, 83, -1, -1
    treecoords 494, 81, 495, 81, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 488, 75, 489, 75, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 487, 74, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 487, 73, 487, 72, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 488, 71, 489, 71, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 504, 33, 505, 33, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 506, 33, 507, 33, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 538, 35, 539, 35, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 540, 35, 541, 35, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 542, 35, 543, 35, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  89,   0,   0   // Blackthorn City
.close

headbuttheader  90,   5,   0   // Mt. Silver 
    // normal slots
    headbuttencounter SPECIES_HERACROSS, 39, 40
    headbuttencounter SPECIES_AIPOM, 39, 40
    headbuttencounter SPECIES_AIPOM, 39, 40
    headbuttencounter SPECIES_NATU, 39, 40
    headbuttencounter SPECIES_NATU, 39, 40
    headbuttencounter SPECIES_NATU, 39, 40
    headbuttencounter SPECIES_HERACROSS, 41, 43
    headbuttencounter SPECIES_AIPOM, 41, 43
    headbuttencounter SPECIES_AIPOM, 41, 43
    headbuttencounter SPECIES_NATU, 41, 43
    headbuttencounter SPECIES_NATU, 41, 43
    headbuttencounter SPECIES_NATU, 41, 43
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 803, 277, 804, 277, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 805, 277, 806, 277, 806, 276, -1, -1, -1, -1, -1, -1
    treecoords 811, 275, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 812, 275, 813, 275, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 816, 262, 816, 261, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  91,   0,   0   // Route 19
.close

headbuttheader  92,   0,   0   // Route 20
.close

headbuttheader  93,   3,   0   // Route 21
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 24, 26
    headbuttencounter SPECIES_SPINARAK, 24, 26
    headbuttencounter SPECIES_SPINARAK, 24, 26
    headbuttencounter SPECIES_WURMPLE, 24, 26
    headbuttencounter SPECIES_WURMPLE, 24, 26
    headbuttencounter SPECIES_WURMPLE, 24, 26
    headbuttencounter SPECIES_HOOTHOOT, 27, 30
    headbuttencounter SPECIES_TANGELA, 27, 30
    headbuttencounter SPECIES_HOOTHOOT, 27, 30
    headbuttencounter SPECIES_WURMPLE, 27, 30
    headbuttencounter SPECIES_WURMPLE, 27, 30
    headbuttencounter SPECIES_WURMPLE, 27, 30
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1046, 393, 1046, 392, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1046, 391, 1046, 390, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1046, 389, 1046, 388, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  94,   0,   0   // Route 40
.close

headbuttheader  95,   0,   0   // Route 41
.close

headbuttheader  96,  22,   5   // National Park
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 10, 12
    headbuttencounter SPECIES_PINECO, 10, 12
    headbuttencounter SPECIES_PINECO, 10, 12
    headbuttencounter SPECIES_EXEGGCUTE, 10, 12
    headbuttencounter SPECIES_EXEGGCUTE, 10, 12
    headbuttencounter SPECIES_EXEGGCUTE, 10, 12
    headbuttencounter SPECIES_HOOTHOOT, 13, 15
    headbuttencounter SPECIES_SPINARAK, 13, 15
    headbuttencounter SPECIES_SPINARAK, 13, 15
    headbuttencounter SPECIES_EXEGGCUTE, 13, 15
    headbuttencounter SPECIES_EXEGGCUTE, 13, 15
    headbuttencounter SPECIES_EXEGGCUTE, 13, 15
    // special slots
    headbuttencounter SPECIES_EXEGGCUTE, 18, 20
    headbuttencounter SPECIES_EXEGGCUTE, 18, 20
    headbuttencounter SPECIES_CHERUBI, 18, 20
    headbuttencounter SPECIES_CHERUBI, 18, 20
    headbuttencounter SPECIES_CHERUBI, 18, 20
    headbuttencounter SPECIES_CHERUBI, 21, 25
    // normal trees
    treecoords 34, 63, 35, 63, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 32, 61, 33, 61, 33, 62, -1, -1, -1, -1, -1, -1
    treecoords 27, 56, 27, 55, 26, 55, 26, 56, 26, 57, -1, -1
    treecoords 23, 55, 23, 54, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 23, 49, 23, 48, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 23, 47, 23, 46, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 23, 43, 23, 42, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 23, 35, 23, 34, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 23, 33, 23, 32, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 27, 23, 27, 22, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 30, 21, 31, 21, 31, 20, -1, -1, -1, -1, -1, -1
    treecoords 36, 15, 37, 15, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 13, 41, 13, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 46, 13, 47, 13, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 48, 13, 49, 13, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 54, 13, 55, 13, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 56, 13, 57, 13, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 60, 13, 61, 13, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 64, 15, 65, 15, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 68, 16, 68, 17, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 68, 18, 68, 19, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 25, 77, 25, -1, -1, -1, -1, -1, -1, -1, -1
    // special trees
    treecoords 80, 15, 81, 15, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 80, 21, 81, 21, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 82, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 82, 19, 82, 18, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 82, 17, 82, 16, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader  97,   0,   0   // Route 31 & Violet City Gate
.close

headbuttheader  98,   0,   0   // Route 32 & Ruins Of Alph Gate
.close

headbuttheader  99,   0,   0   // Union Cave 1F
.close

headbuttheader 100,   0,   0   // Azalea Town & Ilex Forest Gate
.close

headbuttheader 101,   0,   0   // Goldenrod City & Route 35 Gate
.close

headbuttheader 102,   0,   0   // Route 35 & National Park Gate
.close

headbuttheader 103,   0,   0   // Ruins Of Alph & Route 36 Gate
.close

headbuttheader 104,   0,   0   // National Park & Route 36 Gate
.close

headbuttheader 105,   0,   0   // Jubilife City ? (Unused)
.close

headbuttheader 106,   0,   0   // Digletts Cave
.close

headbuttheader 107,   0,   0   // Mt. Moon
.close

headbuttheader 108,   0,   0   // Rock Tunnel (1F)
.close

headbuttheader 109,   0,   0   // Pal Park
.close

headbuttheader 110,   0,   0   // Sprout Tower (1F)
.close

headbuttheader 111,   0,   0   // Bell Tower (1F)
.close

headbuttheader 112,   0,   0   // Radio Tower (1F)
.close

headbuttheader 113,   0,   0   // Ruins Of Alph (Outside)
.close

headbuttheader 114,   0,   0   // Slowpoke Well Entrance
.close

headbuttheader 115,   0,   0   // Olivine Lighthouse (1F)
.close

headbuttheader 116,   0,   0   // Mahogany Town Souvenir Shop
.close

headbuttheader 117,  56,   0   // Ilex Forest
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 5
    headbuttencounter SPECIES_CATERPIE, 3, 5
    headbuttencounter SPECIES_CATERPIE, 3, 5
    headbuttencounter SPECIES_HOOTHOOT, 3, 5
    headbuttencounter SPECIES_METAPOD, 3, 5
    headbuttencounter SPECIES_METAPOD, 3, 5
    headbuttencounter SPECIES_HOOTHOOT, 6, 8
    headbuttencounter SPECIES_PINECO, 6, 8
    headbuttencounter SPECIES_PINECO, 6, 8
    headbuttencounter SPECIES_NOCTOWL, 6, 8
    headbuttencounter SPECIES_BUTTERFREE, 6, 8
    headbuttencounter SPECIES_BUTTERFREE, 6, 8
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 9, 81, 9, 80, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 79, 9, 78, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 77, 9, 76, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 71, 9, 70, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 69, 9, 68, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 67, 9, 66, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 10, 63, 11, 63, 10, 61, 11, 61, -1, -1, -1, -1
    treecoords 12, 63, 13, 63, 12, 61, 13, 61, -1, -1, -1, -1
    treecoords 12, 75, 13, 75, 12, 74, -1, -1, -1, -1, -1, -1
    treecoords 16, 71, 17, 71, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 18, 71, 19, 71, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 22, 71, 23, 71, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 21, 67, 22, 67, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 37, 73, 37, 72, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 42, 71, 43, 71, 42, 69, 43, 69, -1, -1, -1, -1
    treecoords 28, 51, 29, 51, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 33, 61, 33, 60, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 33, 59, 33, 58, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 33, 55, 33, 54, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 42, 63, 43, 63, 42, 62, -1, -1, -1, -1, -1, -1
    treecoords 40, 59, 40, 58, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 55, 40, 54, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 50, 55, 51, 55, 50, 54, 51, 54, -1, -1, -1, -1
    treecoords 46, 49, 47, 49, 47, 48, -1, -1, -1, -1, -1, -1
    treecoords 48, 47, 49, 47, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 50, 9, 51, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 10, 43, 11, 43, 11, 42, -1, -1, -1, -1, -1, -1
    treecoords 12, 39, 13, 39, 13, 38, -1, -1, -1, -1, -1, -1
    treecoords 22, 33, 23, 33, 23, 32, 23, 31, 22, 31, -1, -1
    treecoords 28, 33, 29, 33, 29, 34, 29, 35, -1, -1, -1, -1
    treecoords 30, 25, 31, 25, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 34, 29, 35, 29, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 36, 29, 37, 29, 37, 28, 37, 27, 36, 27, -1, -1
    treecoords 32, 19, 33, 19, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 34, 19, 35, 19, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 25, 40, 24, 40, 23, 41, 23, -1, -1, -1, -1
    treecoords 50, 25, 51, 25, 51, 26, 51, 27, -1, -1, -1, -1
    treecoords 54, 31, 54, 30, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 42, 39, 43, 39, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 48, 21, 49, 21, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 16, 41, 16, 40, 15, 41, 15, 40, 14, 41, 14
    treecoords 32, 9, 33, 9, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 36, 9, 37, 9, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 38, 9, 39, 9, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 24, 19, 25, 19, 24, 17, 25, 17, -1, -1, -1, -1
    treecoords 20, 21, 21, 21, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 16, 21, 17, 21, 16, 20, -1, -1, -1, -1, -1, -1
    treecoords 9, 25, 9, 24, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 9, 23, 9, 22, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 34, 35, 35, 35, 34, 33, 35, 33, -1, -1, -1, -1
    treecoords 36, 35, 37, 35, 36, 33, 37, 33, -1, -1, -1, -1
    treecoords 38, 39, 38, 38, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 38, 37, 38, 36, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 50, 47, 51, 47, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 52, 47, 53, 47, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 46, 35, 47, 35, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader 118,   0,   0   // Goldenrod Tunnel
.close

headbuttheader 119,   0,   0   // Mt. Mortar (1F)
.close

headbuttheader 120,   0,   0   // Ice Path (1F)
.close

headbuttheader 121,   0,   0   // Whirl Islands
.close

headbuttheader 122,   0,   0   // Mt. Silver Cave
.close

headbuttheader 123,   0,   0   // Dark Cave (Route 45 entrance)
.close

headbuttheader 124,   0,   0   // Victory Road (1F)
.close

headbuttheader 125,   0,   0   // Dragons Den Entrance
.close

headbuttheader 126,   0,   0   // Tohjo Falls
.close

headbuttheader 127,   0,   0   // Route 30 House
.close

headbuttheader 128,   0,   0   // Ecruteak City ? (Union Room ?)
.close

headbuttheader 129,   0,   0   // Ecruteak City ? (Union Room ?) 
.close

headbuttheader 130,   0,   0   // Ecruteak City ? (Union Room ?)
.close

headbuttheader 131,   0,   0   // Ecruteak City Pokémon Centre (Lower) 
.close

headbuttheader 132,   0,   0   // Ecruteak City & Route 42 Gate
.close

headbuttheader 133,   0,   0   // Mahogany Town House
.close

headbuttheader 134,   0,   0   // Route 29 & Route 46 Gate
.close

headbuttheader 135,   0,   0   // Violet City Gym
.close

headbuttheader 136,   0,   0   // Azalea Gym (Entrance)
.close

headbuttheader 137,   0,   0   // Goldenrod City Gym
.close

headbuttheader 138,   0,   0   // Olivine City Gym
.close

headbuttheader 139,   0,   0   // Cianwood City Gym
.close

headbuttheader 140,   0,   0   // Mahogany City Gym (3rd Room)
.close

headbuttheader 141,   0,   0   // Blackthorn City Gym
.close

headbuttheader 142,   0,   0   // Route 43 Gate
.close

headbuttheader 143,   0,   0   // Mr Pokémons House
.close

headbuttheader 144,   0,   0   // Cherrygrove City Pokémon Centre (Lower)
.close

headbuttheader 145,   0,   0   // Cerulean Cave (1F)
.close

headbuttheader 146,   0,   0   // Seafoam Islands (1F)
.close

headbuttheader 147,  24,   0   // Viridian Forest
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_SEEDOT, 3, 4
    headbuttencounter SPECIES_SEEDOT, 3, 4
    headbuttencounter SPECIES_SPINARAK, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_SHROOMISH, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 5, 7
    headbuttencounter SPECIES_SEEDOT, 5, 7
    headbuttencounter SPECIES_SEEDOT, 5, 7
    headbuttencounter SPECIES_ARIADOS, 5, 7
    headbuttencounter SPECIES_NOCTOWL, 5, 7
    headbuttencounter SPECIES_SHROOMISH, 5, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 51, 73, 52, 73, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 49, 67, 50, 67, 50, 66, -1, -1, -1, -1, -1, -1
    treecoords 44, 62, 44, 61, 44, 60, 43, 60, 43, 61, 43, 62
    treecoords 40, 57, 41, 57, 41, 56, -1, -1, -1, -1, -1, -1
    treecoords 39, 58, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 39, 63, 39, 62, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 36, 65, 37, 65, 36, 64, -1, -1, -1, -1, -1, -1
    treecoords 26, 65, 27, 65, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 24, 65, 25, 65, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 22, 63, 22, 62, 22, 61, 23, 61, -1, -1, -1, -1
    treecoords 24, 53, 24, 52, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 10, 69, 10, 68, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 48, 40, 47, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 46, 40, 45, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 44, 40, 43, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 40, 40, 40, 39, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 45, 40, 45, 39, 45, 38, 46, 40, 46, 39, 46, 38
    treecoords 45, 46, 45, 45, 46, 46, 46, 45, -1, -1, -1, -1
    treecoords 37, 28, 38, 28, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 29, 27, 29, 26, 28, 27, 28, 26, -1, -1, -1, -1
    treecoords 23, 27, 23, 26, 22, 27, 22, 26, -1, -1, -1, -1
    treecoords 23, 25, 23, 24, 22, 25, 22, 24, -1, -1, -1, -1
    treecoords 23, 23, 23, 22, 22, 23, 22, 22, -1, -1, -1, -1
    treecoords 17, 23, 17, 22, 16, 23, 16, 22, -1, -1, -1, -1
.close

headbuttheader 148,   0,   0   // Power Plant ? (Unused)
.close

headbuttheader 149,   0,   0   // Route 36 & Violet City Inbetween
.close

headbuttheader 150,   0,   0   // Route 35 & Pokéathlon Dome Inbetween
.close

headbuttheader 151,  10,   4   // Route 47
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 15, 16
    headbuttencounter SPECIES_PINECO, 15, 16
    headbuttencounter SPECIES_PINECO, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_HOOTHOOT, 17, 18
    headbuttencounter SPECIES_SPINARAK, 17, 18
    headbuttencounter SPECIES_SPINARAK, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    // special slots
    headbuttencounter SPECIES_METAPOD, 25, 28
    headbuttencounter SPECIES_BUTTERFREE, 25, 28
    headbuttencounter SPECIES_BUTTERFREE, 25, 28
    headbuttencounter SPECIES_HERACROSS, 25, 28
    headbuttencounter SPECIES_HERACROSS, 25, 28
    headbuttencounter SPECIES_HERACROSS, 27, 30
    // normal trees
    treecoords 108, 383, 109, 383, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 100, 361, 100, 360, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 106, 373, 106, 372, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 121, 366, 121, 367, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 106, 383, 107, 383, 106, 382, -1, -1, -1, -1, -1, -1
    treecoords 106, 379, 106, 378, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 104, 365, 105, 365, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 102, 365, 103, 365, 102, 364, -1, -1, -1, -1, -1, -1
    treecoords 100, 359, 100, 358, 100, 357, 101, 357, -1, -1, -1, -1
    treecoords 104, 355, 104, 354, -1, -1, -1, -1, -1, -1, -1, -1
    // special trees
    treecoords 82, 361, 82, 360, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 82, 363, 82, 362, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 121, 365, 121, 364, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 132, 363, 133, 363, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader 152,   6,   0   // Route 48
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 15, 16
    headbuttencounter SPECIES_PINECO, 15, 16
    headbuttencounter SPECIES_PINECO, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_EXEGGCUTE, 15, 16
    headbuttencounter SPECIES_HOOTHOOT, 17, 18
    headbuttencounter SPECIES_SPINARAK, 17, 18
    headbuttencounter SPECIES_SPINARAK, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    headbuttencounter SPECIES_EXEGGCUTE, 17, 18
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 82, 325, 82, 324, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 75, 335, 76, 335, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 82, 339, 82, 338, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 106, 335, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 106, 347, 106, 346, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 82, 335, 82, 334, 82, 333, -1, -1, -1, -1, -1, -1
.close

headbuttheader 153,   0,   0   // Union Cave (B1F)
.close

headbuttheader 154,   0,   0   // Union Cave (B2F)
.close

headbuttheader 155,   0,   0   // Sprout Tower (2F)
.close

headbuttheader 156,   0,   0   // Sprout Tower (3F)
.close

headbuttheader 157,   0,   0   // Violet City Pokémart
.close

headbuttheader 158,   0,   0   // Violet City Pokémon Centre
.close

headbuttheader 159,   0,   0   // Violet City Pokémon School
.close

headbuttheader 160,   0,   0   // Violet City House
.close

headbuttheader 161,   0,   0   // Jubilife City (Unused)
.close

headbuttheader 162,   0,   0   // Violet City House
.close

headbuttheader 163,   0,   0   // Azalea Town Charcoal Kiln
.close

headbuttheader 164,   0,   0   // Azalea Town Kurts House
.close

headbuttheader 165,   0,   0   // Azalea Town Pokémart
.close

headbuttheader 166,   0,   0   // Azalea Town Pokémon Centre
.close

headbuttheader 167,   0,   0   // Violet City Pokémon Centre (Lower)
.close

headbuttheader 168,   0,   0   // Azalea Town Pokémon Centre (Lower)
.close

headbuttheader 169,   0,   0   // Route 32 Pokémon Centre
.close

headbuttheader 170,   0,   0   // Route 32 Pokémon Centre (Lower)
.close

headbuttheader 171,   0,   0   // Ilex Forest & Route 34 Gate
.close

headbuttheader 172,   0,   0   // Ecruteak & Route 38 Gate
.close

headbuttheader 173,   0,   0   // Safari Zone Gate (Inside)
.close

headbuttheader 174,  17,   0   // Safari Zone Gate (Outside)
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 14, 16
    headbuttencounter SPECIES_PINECO, 14, 16
    headbuttencounter SPECIES_PINECO, 14, 16
    headbuttencounter SPECIES_EXEGGCUTE, 14, 16
    headbuttencounter SPECIES_EXEGGCUTE, 14, 16
    headbuttencounter SPECIES_EXEGGCUTE, 14, 16
    headbuttencounter SPECIES_HOOTHOOT, 17, 19
    headbuttencounter SPECIES_SPINARAK, 17, 19
    headbuttencounter SPECIES_SPINARAK, 17, 19
    headbuttencounter SPECIES_EXEGGCUTE, 17, 19
    headbuttencounter SPECIES_EXEGGCUTE, 17, 19
    headbuttencounter SPECIES_EXEGGCUTE, 17, 19
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 77, 317, 78, 317, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 313, 76, 312, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 311, 76, 310, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 307, 76, 306, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 303, 76, 302, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 301, 76, 300, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 76, 297, 76, 296, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 77, 293, 78, 293, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 79, 293, 80, 293, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 97, 293, 98, 293, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 99, 293, 100, 293, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 99, 317, 100, 317, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 101, 315, 101, 314, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 101, 309, 101, 308, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 101, 307, 101, 306, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 101, 305, 101, 304, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 101, 299, 101, 298, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader 175,   0,   0   // Jubilife City ? (Unused)
.close

headbuttheader 176,   0,   0   // Dark Cave (Route 31 entrance)
.close

headbuttheader 177,   0,   0   // Slowpoke Well (1F)
.close

headbuttheader 178,   0,   0   // Victory Road (2F)
.close

headbuttheader 179,   0,   0   // Victory Road (3F)
.close

headbuttheader 180,   0,   0   // Azalea Town Gym
.close

headbuttheader 181,   0,   0   // Slowpoke Well (B1F)
.close

headbuttheader 182,   0,   0   // Goldenrod City Bike Store
.close

headbuttheader 183,   0,   0   // Goldenrod City Game Corner (JAP)
.close

headbuttheader 184,   0,   0   // Goldenrod City Flower Shop
.close

headbuttheader 185,   0,   0   // Goldenrod City Pokémon Centre
.close

headbuttheader 186,   0,   0   // Goldenrod Radio Tower (2F)
.close

headbuttheader 187,   0,   0   // Goldenrod Radio Tower (3F)
.close

headbuttheader 188,   0,   0   // Goldenrod Radio Tower (4F)
.close

headbuttheader 189,   0,   0   // Goldenrod Radio Tower (5F)
.close

headbuttheader 190,   0,   0   // Goldenrod Radio Tower Observation Deck
.close

headbuttheader 191,   0,   0   // Goldenrod Department Store (1F)
.close

headbuttheader 192,   0,   0   // Goldenrod Department Store (2F)
.close

headbuttheader 193,   0,   0   // Goldenrod Department Store (3F)
.close

headbuttheader 194,   0,   0   // Goldenrod Department Store (4F)
.close

headbuttheader 195,   0,   0   // Goldenrod Department Store (5F)
.close

headbuttheader 196,   0,   0   // Goldenrod Department Store (6F)
.close

headbuttheader 197,   0,   0   // Goldenrod City Magnet Train Station
.close

headbuttheader 198,   0,   0   // Goldenrod City Magnet Train Station
.close

headbuttheader 199,   0,   0   // Goldenrod Tunnel   
.close

headbuttheader 200,   0,   0   // Goldenrod Department Store Basement 
.close

headbuttheader 201,   0,   0   // Goldenrod Tunnel (B2F)
.close

headbuttheader 202,   0,   0   // Goldenrod Tunnel Warehouse
.close

headbuttheader 203,   0,   0   // Goldenrod City House
.close

headbuttheader 204,   0,   0   // Goldenrod City House
.close

headbuttheader 205,   0,   0   // Goldenrod City House
.close

headbuttheader 206,   0,   0   // Goldenrod City Name Rater
.close

headbuttheader 207,   0,   0   // Global Terminal
.close

headbuttheader 208,   0,   0   // Goldenrod City House (1F)
.close

headbuttheader 209,   0,   0   // Goldenrod City House (2F)
.close

headbuttheader 210,   0,   0   // Goldenrod City House (3F)
.close

headbuttheader 211,   0,   0   // Goldenrod City House (4F)
.close

headbuttheader 212,   0,   0   // Goldenrod City House (5F)
.close

headbuttheader 213,   0,   0   // Goldenrod City House (6F)
.close

headbuttheader 214,   0,   0   // Moomoo Farm House
.close

headbuttheader 215,   0,   0   // Moomoo Farm Barn
.close

headbuttheader 216,   0,   0   // Barrier Station to Bell Tower & Bellchime Trail Path
.close

headbuttheader 217,   0,   0   // Burned Tower B1F
.close

headbuttheader 218,   0,   0   // Ruins of Alph (Inside)
.close

headbuttheader 219,   0,   0   // Goldenrod City Pokémon Centre (Lower)
.close

headbuttheader 220,   0,   0   // Glitter Lighthouse (2F)
.close

headbuttheader 221,   0,   0   // Glitter Lighthouse Exterior
.close

headbuttheader 222,   0,   0   // Glitter Lighthouse (3F)
.close

headbuttheader 223,   0,   0   // Glitter Lighthouse (4F)
.close

headbuttheader 224,   0,   0   // Glitter Lighthouse (5F)
.close

headbuttheader 225,   0,   0   // Glitter Lighthouse Light Room
.close

headbuttheader 226,   0,   0   // Olivine City Pokémon Centre
.close

headbuttheader 227,   0,   0   // Olivine City Pokémart
.close

headbuttheader 228,   0,   0   // Olivine City House
.close

headbuttheader 229,   0,   0   // Olivine City House
.close

headbuttheader 230,   0,   0   // Olivine City House
.close

headbuttheader 231,   0,   0   // Olivine City Café
.close

headbuttheader 232,   0,   0   // Cianwood City House
.close

headbuttheader 233,   0,   0   // Cianwood City Pharmacy
.close

headbuttheader 234,   0,   0   // Cianwood City House
.close

headbuttheader 235,   0,   0   // Cianwood City House
.close

headbuttheader 236,   0,   0   // Cianwood City Pokémon Centre
.close

headbuttheader 237,   0,   0   // (Ice Path B1F)
.close

headbuttheader 238,   0,   0   // Ice Path (B2F)
.close

headbuttheader 239,   0,   0   // Ice Path (B3F)
.close

headbuttheader 240,   0,   0   // Olivine City House
.close

headbuttheader 241,   0,   0   // Cianwood City Pokémon Centre (Lower)
.close

headbuttheader 242,   0,   0   // Whirl Islands (B1F)
.close

headbuttheader 243,   0,   0   // Whirl Islands (B2F)
.close

headbuttheader 244,   0,   0   // Whirl Islands (B3F)
.close

headbuttheader 245,   0,   0   // Route 43 Gate
.close

headbuttheader 246,   0,   0   // Mahogany Town Pokémon Centre
.close

headbuttheader 247,   0,   0   // Team Rocket HQ (B1F)
.close

headbuttheader 248,   0,   0   // Team Rocket HQ (B2F)
.close

headbuttheader 249,   0,   0   // Team Rocket HQ (B3F)
.close

headbuttheader 250,   0,   0   // Mt. Mortar (1F)
.close

headbuttheader 251,   0,   0   // Mt. Mortar (2F)
.close

headbuttheader 252,   0,   0   // Mt. Mortar (1F)
.close

headbuttheader 253,   0,   0   // Dragons Den (Main)
.close

headbuttheader 254,   0,   0   // Fight Area
.close

headbuttheader 255,   0,   0   // Fight Area
.close

headbuttheader 256,   0,   0   // Fight Area
.close

headbuttheader 257,   0,   0   // Fight Area
.close

headbuttheader 258,   0,   0   // Fight Area
.close

headbuttheader 259,   0,   0   // Fight Area
.close

headbuttheader 260,   0,   0   // Fight Area
.close

headbuttheader 261,   0,   0   // Fight Area
.close

headbuttheader 262,   0,   0   // Fight Area
.close

headbuttheader 263,   0,   0   // Battle Park
.close

headbuttheader 264,   0,   0   // Battle Park
.close

headbuttheader 265,   0,   0   // Battle Tower
.close

headbuttheader 266,   0,   0   // Battle Tower
.close

headbuttheader 267,   0,   0   // Battle Tower
.close

headbuttheader 268,   0,   0   // Battle Tower
.close

headbuttheader 269,   0,   0   // Battle Tower
.close

headbuttheader 270,   0,   0   // Battle Tower
.close

headbuttheader 271,   0,   0   // Battle Tower
.close

headbuttheader 272,   0,   0   // Battle Frontier
.close

headbuttheader 273,   0,   0   // Battle Frontier
.close

headbuttheader 274,   0,   0   // Battle Tower
.close

headbuttheader 275,   0,   0   // Battle Factory
.close

headbuttheader 276,   0,   0   // Battle Hall
.close

headbuttheader 277,   0,   0   // Battle Castle
.close

headbuttheader 278,   0,   0   // Battle Arcade
.close

headbuttheader 279,   0,   0   // Cliff Edge Gate
.close

headbuttheader 280,   0,   0   // Pokéathlon Dome (Outside)
.close

headbuttheader 281,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 282,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 283,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 284,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 285,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 286,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 287,   0,   0   // Pokéathlon Dome (Inside)
.close

headbuttheader 288,   0,   0   // Dragons Den (Shrine)
.close

headbuttheader 289,   0,   0   // Blackthorn City House
.close

headbuttheader 290,   0,   0   // Blackthorn City House
.close

headbuttheader 291,   0,   0   // Blackthorn City House
.close

headbuttheader 292,   0,   0   // Blackthorn City Pokémart
.close

headbuttheader 293,   0,   0   // Blackthorn City Pokémon Centre
.close

headbuttheader 294,   0,   0   // Lake of Rage House
.close

headbuttheader 295,   0,   0   // Lake of Rage House
.close

headbuttheader 296,   0,   0   // Route 26 House
.close

headbuttheader 297,   0,   0   // Route 26 Week Siblings House
.close

headbuttheader 298,   0,   0   // Tohjo Falls Hidden Room
.close

headbuttheader 299,   0,   0   // Pokémon League Reception Gate
.close

headbuttheader 300,   0,   0   // Pokémon League
.close

headbuttheader 301,   0,   0   // Pokémon League (Wills Room)
.close

headbuttheader 302,   0,   0   // Pokémon League (Kogas Room)
.close

headbuttheader 303,   0,   0   // Pokémon League (Brunos Room)
.close

headbuttheader 304,   0,   0   // Pokémon League (Karens Room)
.close

headbuttheader 305,   0,   0   // Pokémon League (Lances Room)
.close

headbuttheader 306,   0,   0   // Pokémon League (Hall of Fame)
.close

headbuttheader 307,   0,   0   // S.S Aqua
.close

headbuttheader 308,   0,   0   // S.S Aqua
.close

headbuttheader 309,   0,   0   // S.S Aqua
.close

headbuttheader 310,   0,   0   // S.S Aqua
.close

headbuttheader 311,   0,   0   // S.S Aqua
.close

headbuttheader 312,   0,   0   // Ruins of Alph (Entrance) 
.close

headbuttheader 313,   0,   0   // Ruins of Alph (Chamber 1)
.close

headbuttheader 314,   0,   0   // Ruins of Alph (Entrance) 
.close

headbuttheader 315,   0,   0   // Ruins of Alph (Underground Hall)
.close

headbuttheader 316,   0,   0   // Ruins of Alph (Entrance) 
.close

headbuttheader 317,   0,   0   // Ruins of Alph (Chamber 3)
.close

headbuttheader 318,   0,   0   // Ruins of Alph (Entrance) 
.close

headbuttheader 319,   0,   0   // Ruins of Alph (Chamber 4)
.close

headbuttheader 320,   0,   0   // Ruins of Alph (Chamber 2) 
.close

headbuttheader 321,   0,   0   // Ruins of Alph Research Center
.close

headbuttheader 322,   0,   0   // Route 27 House
.close

headbuttheader 323,   0,   0   // Ruins of Alph (Hall Entrance)
.close

headbuttheader 324,   0,   0   // Ruins of Alph (Entrance 2)
.close

headbuttheader 325,   0,   0   // Ruins of Alph (Entrance 2)
.close

headbuttheader 326,   0,   0   // Ruins of Alph (Entrance 2)
.close

headbuttheader 327,   0,   0   // Ruins of Alph (Entrance 2)
.close

headbuttheader 328,   0,   0   // S.S Aqua
.close

headbuttheader 329,   0,   0   // S.S Aqua
.close

headbuttheader 330,   0,   0   // Olivine Port
.close

headbuttheader 331,   0,   0   // Pokémon Daycare
.close

headbuttheader 332,   0,   0   // Bell Tower (2F)
.close

headbuttheader 333,   0,   0   // Bell Tower (3F)
.close

headbuttheader 334,   0,   0   // Bell Tower (4F)
.close

headbuttheader 335,   0,   0   // Bell Tower (5F)
.close

headbuttheader 336,   0,   0   // Bell Tower (6F)
.close

headbuttheader 337,   0,   0   // Bell Tower (7F)
.close

headbuttheader 338,   0,   0   // Bell Tower (8F)
.close

headbuttheader 339,   0,   0   // Bell Tower (9F)
.close

headbuttheader 340,   0,   0   // Bell Tower Roof
.close

headbuttheader 341,   0,   0   // Bell Tower (10F)
.close

headbuttheader 342,   0,   0   // Cliff Cave
.close

headbuttheader 343,   0,   0   // Safari Zone
.close

headbuttheader 344,   0,   0   // Safari Zone
.close

headbuttheader 345,   0,   0   // Safari Zone
.close

headbuttheader 346,   0,   0   // Safari Zone
.close

headbuttheader 347,   0,   0   // Safari Zone
.close

headbuttheader 348,   0,   0   // Safari Zone
.close

headbuttheader 349,   0,   0   // Safari Zone
.close

headbuttheader 350,   0,   0   // Safari Zone
.close

headbuttheader 351,   0,   0   // Safari Zone
.close

headbuttheader 352,   0,   0   // Safari Zone
.close

headbuttheader 353,   0,   0   // Safari Zone
.close

headbuttheader 354,   0,   0   // Safari Zone
.close

headbuttheader 355,   0,   0   // Safari Zone
.close

headbuttheader 356,   0,   0   // Safari Zone
.close

headbuttheader 357,   0,   0   // Safari Zone
.close

headbuttheader 358,   0,   0   // Vermilion City Pokémon Centre
.close

headbuttheader 359,   0,   0   // Vermilion City Pokémon Centre (Lower)
.close

headbuttheader 360,   0,   0   // Vermilion City Pokémart
.close

headbuttheader 361,   0,   0   // Vermilion City Pokémon Centre
.close

headbuttheader 362,   0,   0   // Vermilion City Pokémon Fan Club
.close

headbuttheader 363,   0,   0   // Vermilion City House
.close

headbuttheader 364,   0,   0   // Vermilion City House
.close

headbuttheader 365,   0,   0   // Vermilion City Gym
.close

headbuttheader 366,   0,   0   // Route 40 & Frontier Access Gate
.close

headbuttheader 367,   0,   0   // Olivine City Pokémon Center (Lower)
.close

headbuttheader 368,   0,   0   // Mahogany Town Pokémon Center (Lower)
.close

headbuttheader 369,   0,   0   // Blackthorn Town Pokémon Center (Lower)
.close

headbuttheader 370,   0,   0   // Celadon City Department Store (1F)
.close

headbuttheader 371,   0,   0   // Celadon City Department Store (2F)
.close

headbuttheader 372,   0,   0   // Celadon City Department Store (3F)
.close

headbuttheader 373,   0,   0   // Celadon City Department Store (4F)
.close

headbuttheader 374,   0,   0   // Celadon City Department Store (5F)
.close

headbuttheader 375,   0,   0   // Celadon City Department Store (6F)
.close

headbuttheader 376,   0,   0   // Celadon Condominiums (1F)
.close

headbuttheader 377,   0,   0   // Celadon Condominiums (2F)
.close

headbuttheader 378,   0,   0   // Celadon Condominiums (3F)
.close

headbuttheader 379,   0,   0   // Celadon Condominiums (4F)
.close

headbuttheader 380,   0,   0   // Celadon Condominiums (5F)
.close

headbuttheader 381,   0,   0   // Celadon Game Corner (Main, JP)
.close

headbuttheader 382,   0,   0   // Celadon Game Corner (Prize Building, JP)
.close

headbuttheader 383,   0,   0   // Celadon City House
.close

headbuttheader 384,   0,   0   // Ethan / Lyras House (2F)
.close

headbuttheader 385,   0,   0   // Cianwood City House
.close

headbuttheader 386,   0,   0   // Vermilion Port
.close

headbuttheader 387,   0,   0   // Vermilion Port
.close

headbuttheader 388,   0,   0   // Route 10
.close

headbuttheader 389,   0,   0   // Route 6 & Saffron City Gate
.close

headbuttheader 390,   0,   0   // Route 8 & Saffron City Gate
.close

headbuttheader 391,   0,   0   // Route 5 & Saffron City Gate
.close

headbuttheader 392,   0,   0   // Route 15 & Fushsia City Gate
.close

headbuttheader 393,   0,   0   // Celadon City Pokémon Centre
.close

headbuttheader 394,   0,   0   // Celadon City Pokémon Centre (Lower)
.close

headbuttheader 395,   0,   0   // Celadon City Gym
.close

headbuttheader 396,   0,   0   // Mahogany Town Gym (2nd Room)
.close

headbuttheader 397,   0,   0   // Mahogany Town Gym (1st Room)
.close

headbuttheader 398,   0,   0   // Saffron City Fighting Dojo
.close

headbuttheader 399,   0,   0   // Saffron City House
.close

headbuttheader 400,   0,   0   // Saffron City Magnet Train Station
.close

headbuttheader 401,   0,   0   // Saffron City Magnet Train Station
.close

headbuttheader 402,   0,   0   // Saffron City Magnet Train Station (?)
.close

headbuttheader 403,   0,   0   // ROTOMs Room
.close

headbuttheader 404,   0,   0   // Saffron City House
.close

headbuttheader 405,   0,   0   // Saffron City House
.close

headbuttheader 406,   0,   0   // Saffron City House
.close

headbuttheader 407,   0,   0   // Saffron City Pokémon Center
.close

headbuttheader 408,   0,   0   // Saffron City Pokémon Center (Lower)
.close

headbuttheader 409,   0,   0   // Saffron City Pokémart
.close

headbuttheader 410,   0,   0   // Saffron City Gym
.close

headbuttheader 411,   0,   0   // Frontier Access
.close

headbuttheader 412,   0,   0   // Global Terminal (2F)
.close

headbuttheader 413,   0,   0   // Global Terminal (3F)
.close

headbuttheader 414,  13,   0   // Route 2
    // normal slots
    headbuttencounter SPECIES_HOOTHOOT, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_PINECO, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_WURMPLE, 3, 4
    headbuttencounter SPECIES_HOOTHOOT, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_SPINARAK, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    headbuttencounter SPECIES_WURMPLE, 5, 7
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1032, 138, 1032, 137, 1033, 137, 1033, 138, 1033, 139, -1, -1
    treecoords 1054, 162, 1054, 163, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1043, 137, 1043, 139, 1044, 138, 1044, 139, -1, -1, -1, -1
    treecoords 1040, 141, 1041, 141, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1045, 158, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1047, 179, 1047, 178, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 157, 1054, 156, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 139, 1054, 138, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 130, 1054, 131, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 183, 1054, 182, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1045, 164, 1045, 165, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1054, 167, 1054, 166, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1047, 174, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader 415,   0,   0   // Route 16 House
.close

headbuttheader 416,   0,   0   // Route 20 (Unused?)
.close

headbuttheader 417,   0,   0   // Route 2
.close

headbuttheader 418,   0,   0   // Route 2 & Pewter City Gate
.close

headbuttheader 419,   0,   0   // Route 2 & Viridian City Gate
.close

headbuttheader 420,   0,   0   // Route 2 Gate
.close

headbuttheader 421,   0,   0   // Route 16 Gate
.close

headbuttheader 422,   5,   0   // Route 16
    // normal slots
    headbuttencounter SPECIES_SPEAROW, 26, 27
    headbuttencounter SPECIES_HERACROSS, 26, 27
    headbuttencounter SPECIES_HERACROSS, 26, 27
    headbuttencounter SPECIES_COMBEE, 26, 27
    headbuttencounter SPECIES_COMBEE, 26, 27
    headbuttencounter SPECIES_COMBEE, 26, 27
    headbuttencounter SPECIES_SPEAROW, 29, 30
    headbuttencounter SPECIES_SPEAROW, 29, 30
    headbuttencounter SPECIES_SPEAROW, 29, 30
    headbuttencounter SPECIES_COMBEE, 29, 30
    headbuttencounter SPECIES_COMBEE, 29, 30
    headbuttencounter SPECIES_COMBEE, 29, 30
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 1162, 263, 1163, 263, 1162, 262, -1, -1, -1, -1, -1, -1
    treecoords 1167, 261, 1167, 260, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1163, 280, 1164, 280, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1174, 277, 1174, 276, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 1178, 261, 1179, 261, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader 423,   0,   0   // Route 18 Gate
.close

headbuttheader 424,   0,   0   // Route 19 & Fushsia City Gate
.close

headbuttheader 425,   0,   0   // Route 11 & Route 12 Gate
.close

headbuttheader 426,   0,   0   // Cerulean City Pokémart
.close

headbuttheader 427,   0,   0   // Cerulean City Gym
.close

headbuttheader 428,   0,   0   // Cerulean City Pokémon Centre
.close

headbuttheader 429,   0,   0   // Cerulean City House
.close

headbuttheader 430,   0,   0   // Cerulean City House
.close

headbuttheader 431,   0,   0   // Cerulean City House
.close

headbuttheader 432,   0,   0   // Cerulean City Bike Shop
.close

headbuttheader 433,   0,   0   // Lavender Town Pokémart
.close

headbuttheader 434,   0,   0   // Lavender Town Pokémon Centre
.close

headbuttheader 435,   0,   0   // Lavender Town House
.close

headbuttheader 436,   0,   0   // Lavender Town House
.close

headbuttheader 437,   0,   0   // Lavender Town Name Rater
.close

headbuttheader 438,   0,   0   // House of Memories
.close

headbuttheader 439,   0,   0   // Lavender Town Radio Tower
.close

headbuttheader 440,   0,   0   // Sea Cottage
.close

headbuttheader 441,   0,   0   // Goldenrod City Elevator
.close

headbuttheader 442,   0,   0   // Celadon City Elevator
.close

headbuttheader 443,   0,   0   // Celadon City Elevator
.close

headbuttheader 444,   0,   0   // Celadon City Elevator
.close

headbuttheader 445,   0,   0   // Saffron City Elevator
.close

headbuttheader 446,   0,   0   // Lighthouse Elevator
.close

headbuttheader 447,   0,   0   // Radio Tower Elevator
.close

headbuttheader 448,   0,   0   // Mt. Moon Entrance
.close

headbuttheader 449,   0,   0   // Mt. Moon Square
.close

headbuttheader 450,   0,   0   // Cerulean Cave (2F)
.close

headbuttheader 451,   0,   0   // Cerulean Cave (B1F)
.close

headbuttheader 452,   0,   0   // Rock Tunnel (B1F)
.close

headbuttheader 453,   0,   0   // Seafoam Islands (B1F)
.close

headbuttheader 454,   0,   0   // Seafoam Islands (B2F)
.close

headbuttheader 455,   0,   0   // Seafoam Islands (B3F)
.close

headbuttheader 456,   0,   0   // Seafoam Islands (B4F)
.close

headbuttheader 457,   0,   0   // Cinnabar Gym
.close

headbuttheader 458,   0,   0   // Cinnabar Gym (?)
.close

headbuttheader 459,   0,   0   // Mt. Silver Cave (Upper Mountainside)
.close

headbuttheader 460,   3,   0   // Mt. Silver Cave (Lower Mountainside)
    // normal slots
    headbuttencounter SPECIES_HERACROSS, 42, 44
    headbuttencounter SPECIES_AIPOM, 42, 44
    headbuttencounter SPECIES_AIPOM, 42, 44
    headbuttencounter SPECIES_NATU, 42, 44
    headbuttencounter SPECIES_NATU, 42, 44
    headbuttencounter SPECIES_NATU, 42, 44
    headbuttencounter SPECIES_HERACROSS, 45, 48
    headbuttencounter SPECIES_AIPOM, 45, 48
    headbuttencounter SPECIES_AIPOM, 45, 48
    headbuttencounter SPECIES_NATU, 45, 48
    headbuttencounter SPECIES_NATU, 45, 48
    headbuttencounter SPECIES_NATU, 45, 48
    // special slots
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    headbuttencounter SPECIES_NONE, 0, 0
    // normal trees
    treecoords 23, 32, 24, 32, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 15, 47, 16, 47, -1, -1, -1, -1, -1, -1, -1, -1
    treecoords 15, 13, 16, 13, -1, -1, -1, -1, -1, -1, -1, -1
.close

headbuttheader 461,   0,   0   // Mt. Silver Cave (Expert Belt Chamber)
.close

headbuttheader 462,   0,   0   // Mt. Silver Cave (Moltres Chamber)
.close

headbuttheader 463,   0,   0   // Mt. Silver Cave (2F)
.close

headbuttheader 464,   0,   0   // Mt. Silver Cave (3F)
.close

headbuttheader 465,   0,   0   // Mt. Silver Cave (Summit)
.close

headbuttheader 466,   0,   0   // Route 10 Pokémon Centre
.close

headbuttheader 467,   0,   0   // Power Plant
.close

headbuttheader 468,   0,   0   // Underground Path
.close

headbuttheader 469,   0,   0   // Route 5 Underground Path Entrance
.close

headbuttheader 470,   0,   0   // Route 6 Underground Path Entrance
.close

headbuttheader 471,   0,   0   // Pewter Museum of Science
.close

headbuttheader 472,   0,   0   // Pewter City House
.close

headbuttheader 473,   0,   0   // Pewter City Gym
.close

headbuttheader 474,   0,   0   // Pewter City Pokémart
.close

headbuttheader 475,   0,   0   // Pewter City Pokémon Centre
.close

headbuttheader 476,   0,   0   // Pewter City Pokémon Centre (Lower)
.close

headbuttheader 477,   0,   0   // Pewter City House
.close

headbuttheader 478,   0,   0   // Fushsia City Pokémart
.close

headbuttheader 479,   0,   0   // Pal Park (Inside)
.close

headbuttheader 480,   0,   0   // Fushsia City Gym
.close

headbuttheader 481,   0,   0   // Fushsia City House
.close

headbuttheader 482,   0,   0   // Fushsia City Pokémon Centre
.close

headbuttheader 483,   0,   0   // Fushsia City House
.close

headbuttheader 484,   0,   0   // Route 10 Pokémon Centre (Lower)
.close

headbuttheader 485,   0,   0   // Fuchsia City Pokémon Centre (Lower)
.close

headbuttheader 486,   0,   0   // Whirl Islands (Lugias Room)
.close

headbuttheader 487,   0,   0   // National Park (Bug Catching Contest?)
.close

headbuttheader 488,   0,   0   // National Park (Bug Catching Contest National Dex?)
.close

headbuttheader 489,   0,   0   // Power Plant
.close

headbuttheader 490,   0,   0   // Ruins of Alph (Underground Hall)
.close

headbuttheader 491,   0,   0   // Ruins of Alph (Hall Entrance)
.close

headbuttheader 492,   0,   0   // Ruins of Alph (Underground Hall)
.close

headbuttheader 493,   0,   0   // Route 7 & Saffron City Gate
.close

headbuttheader 494,   0,   0   // Lavender Town Pokémon Centre (Lower)
.close

headbuttheader 495,   0,   0   // Cerulean City Pokémon Centre (Lower)
.close

headbuttheader 496,   0,   0   // Viridian City Gym
.close

headbuttheader 497,   0,   0   // Viridian City House
.close

headbuttheader 498,   0,   0   // Viridian City Trainer House
.close

headbuttheader 499,   0,   0   // Viridian City Trainer House 2F
.close

headbuttheader 500,   0,   0   // Viridian City Pokémart
.close

headbuttheader 501,   0,   0   // Viridian City Pokémon Centre 
.close

headbuttheader 502,   0,   0   // Viridian City Pokémon Centre (Lower)
.close

headbuttheader 503,   0,   0   // Pallet Town Reds House 1F
.close

headbuttheader 504,   0,   0   // Pallet Town Blues House 1F
.close

headbuttheader 505,   0,   0   // Oaks Lab
.close

headbuttheader 506,   0,   0   // Pallet Town Reds House 2F
.close

headbuttheader 507,   0,   0   // Pallet Town Blues House 2F
.close

headbuttheader 508,   0,   0   // Cinnabar Island Pokémon Centre
.close

headbuttheader 509,   0,   0   // Cinnabar Island Pokémon Centre (Lower)
.close

headbuttheader 510,   0,   0   // Route 28 House
.close

headbuttheader 511,   0,   0   // Route 3 Pokémon Centre
.close

headbuttheader 512,   0,   0   // Route 3 Pokémon Centre (Lower)
.close

headbuttheader 513,   0,   0   // Mt. Moon Square
.close

headbuttheader 514,   0,   0   // Mt. Silver Pokémon Centre
.close

headbuttheader 515,   0,   0   // Mt. Silver Pokémon Centre (Lower)
.close

headbuttheader 516,   0,   0   // HIROBA
.close

headbuttheader 517,   0,   0   // Route 5 House
.close

headbuttheader 518,   0,   0   // Mt. Moon Square House
.close

headbuttheader 519,   0,   0   // Goldenrod City Magnet Train Station
.close

headbuttheader 520,   0,   0   // Saffron City Magnet Train Station
.close

headbuttheader 521,   0,   0   // Sinjoh Ruins (Outside)
.close

headbuttheader 522,   0,   0   // Sinjoh Ruins (Mystri Stage)
.close

headbuttheader 523,   0,   0   // Sinjoh Ruins Cabin
.close

headbuttheader 524,   0,   0   // Embedded Tower (Groudon)
.close

headbuttheader 525,   0,   0   // Embedded Tower (Kyogre)
.close

headbuttheader 526,   0,   0   // Embedded Tower (Rayquaza)
.close

headbuttheader 527,   0,   0   // Route 1 & Viridian City Gate
.close

headbuttheader 528,   0,   0   // Frontier Access Pokémon Center
.close

headbuttheader 529,   0,   0   // Frontier Access Pokémon Center (Lower)
.close

headbuttheader 530,   0,   0   // Frontier Access Pokémart
.close

headbuttheader 531,   0,   0   // Frontier Access House
.close

headbuttheader 532,   0,   0   // Underground Path
.close

headbuttheader 533,   0,   0   // Route 12 House
.close

headbuttheader 534,   0,   0   // Safari Zone Gate Pokémon Center
.close

headbuttheader 535,   0,   0   // Safari Zone Gate Pokémon Centre (Lower)
.close

headbuttheader 536,   0,   0   // Goldenrod City Game Corner
.close

headbuttheader 537,   0,   0   // Celadon City Game Corner
.close

headbuttheader 538,   0,   0   // Mystery Zone
.close

headbuttheader 539,   0,   0   // Pokémon League Pokémon Centre (Lower)
.close
