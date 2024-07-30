.nds
.thumb

// Aurora Crystal specific change
// Changes the cry when you start the game from Ho-oh to Suicune
// This file is still compressed but luckily the byte we need is exposed

.open "base/overlay/overlay_0060.bin", 0x021E5900

.org 0x021E5A6B
.byte 249

.close
