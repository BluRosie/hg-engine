.nds
.thumb

// Aurora Crystal specific changes
// Adjust encounter rates

// These work by generating a number 0-99, then doing a load of >= checks
// The last one is == 99 so this has to be changed

.open "base/overlay/overlay_0002.bin", 0x02245B80

// Walking Encounters
// Change rates to 10/10/10/10/10/10/10/10/5/5/5/5

.org 0x022476A0

// 10%
.byte 10
.skip 9

// 10%
.byte 20
.skip 7
.byte 20
.skip 3

// 10%
.byte 30
.skip 7
.byte 30
.skip 3

// 10%
.byte 40
.skip 7
.byte 40
.skip 3

// 10%
.byte 50
.skip 7
.byte 50
.skip 3

// 10%
.byte 60
.skip 7
.byte 60
.skip 3

// 10%
.byte 70
.skip 7
.byte 70
.skip 3

// 10%
.byte 80
.skip 7
.byte 80
.skip 3

// 5%
.byte 85
.skip 7
.byte 85
.skip 3

// 5%
.byte 90
.skip 7

// 5%
// then values 95 - 99 activate last slot
.byte 95

// Changes instruction from i == 98 to i >= 98
.skip 2
.byte 0xD2

// Surfing Encounters
// Change rates to 40/20/20/10/10

.org 0x02247734

// 40%
.byte 40
.skip 9

// 20%
.byte 60
.skip 7
.byte 60
.skip 3

// 20%
.byte 80
.skip 7
.byte 80
.skip 3

// 10%
// then values 90 - 99 activate last slot
.byte 90

// Fishing Encounters
// Change rates to 40/20/20/10/10

.org 0x02247778

// 40%
.byte 40
.skip 7

// 20%
.byte 60
.skip 7

// 20%
.byte 80
.skip 7

// 10%
// then values 90 - 99 activate last slot
.byte 90

// Rock Smash encounters
// Change rates to 70/30

.org 0x022477B0

// 70%
// then values 70 - 99 activate last slot
.byte 70

// Headbutt encounters
// Change rates to 20/20/20/20/10/10

.org 0x022477D4

// 20%
.byte 20
.skip 7

// 20%
.byte 40
.skip 7

// 20%
.byte 60
.skip 7

// 10%
.byte 80
.skip 7

// 10%
// then values 90 - 99 activate last slot
.byte 90

.close