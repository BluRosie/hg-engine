#!/bin/bash

INPUT_SPRITE="$1"
OUTPUT_SPRITE="$2"

if [ -z "$INPUT_SPRITE" ] || [ -z "$OUTPUT_SPRITE" ]; then
    echo "Usage: $0 input.png output.png"
    exit 1
fi

FRAME1_TMP="tmp_f1.png"
FRAME2_TMP="tmp_f2.png"
PALETTE_TMP="tmp_pal.png"

# 1. Create a physical 4-color palette file
convert -size 1x1 xc:#FFFFFF xc:#C0C0C0 xc:#808080 xc:#000000 +append "$PALETTE_TMP"

# 2. Get the dimensions dynamically from the input sheet
WIDTH=$(identify -format "%w" "$INPUT_SPRITE" 2>/dev/null)
HEIGHT=$(identify -format "%h" "$INPUT_SPRITE" 2>/dev/null)

if [ -z "$WIDTH" ]; then
    echo "Error: ImageMagick cannot read the dimensions of $INPUT_SPRITE."
    rm -f "$PALETTE_TMP"
    exit 1
fi

HALF_WIDTH=$((WIDTH / 2))

# 3. Process Frame 1 (Left Side)
# We flatten transparency to white, extract a raw 1:1 crop, and force a 64x48 canvas extent centered on the sprite
convert "$INPUT_SPRITE" -crop "${HALF_WIDTH}x${HEIGHT}+0+0" +repage \
    -background "#FFFFFF" -alpha remove -alpha off \
    -gravity center -extent 64x48 \
    -colorspace gray \
    +dither -remap "$PALETTE_TMP" \
    "$FRAME1_TMP"

# 4. Process Frame 2 (Right Side)
convert "$INPUT_SPRITE" -crop "${HALF_WIDTH}x${HEIGHT}+${HALF_WIDTH}+0" +repage \
    -background "#FFFFFF" -alpha remove -alpha off \
    -gravity center -extent 64x48 \
    -colorspace gray \
    +dither -remap "$PALETTE_TMP" \
    "$FRAME2_TMP"

# 5. Vertically append the frames into a true 64x96 sheet layout
convert "$FRAME1_TMP" "$FRAME2_TMP" -append "$OUTPUT_SPRITE"

# Clean up temp files
rm -f "$FRAME1_TMP" "$FRAME2_TMP" "$PALETTE_TMP"

echo "1:1 Native crop Pokéwalker sprite saved to $OUTPUT_SPRITE"
