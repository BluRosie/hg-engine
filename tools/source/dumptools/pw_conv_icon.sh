#!/bin/bash

INPUT_SPRITE="$1"
OUTPUT_SPRITE="$2"

if [ -z "$INPUT_SPRITE" ] || [ -z "$OUTPUT_SPRITE" ]; then
    echo "Usage: $0 input.png output.png"
    exit 1
fi

FRAME1_TMP="tmp_party_f1.png"
FRAME2_TMP="tmp_party_f2.png"
PALETTE_TMP="tmp_party_pal.png"

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

# Party icons are stacked vertically, so each frame is half the total height
HALF_HEIGHT=$((HEIGHT / 2))

# 3. Process Frame 1 (Top Half)
# -fuzz 5% handles minor color variants in the teal background
# -fill "#FFFFFF" -opaque "#6aa084" converts the teal to white BEFORE grayscaling
Y_OFFSET_F1=$((HALF_HEIGHT - 24))
convert "$INPUT_SPRITE" -crop "${WIDTH}x24+0+${Y_OFFSET_F1}" +repage \
    -fuzz 5% -fill "#FFFFFF" -opaque "#609880" \
    -background "#FFFFFF" -alpha remove -alpha off \
    -modulate 100,150,100 \
    -level 5%,95% \
    -colorspace gray \
    +dither -remap "$PALETTE_TMP" \
    "$FRAME1_TMP"

# 4. Process Frame 2 (Bottom Half)
Y_OFFSET_F2=$((HEIGHT - 24))
convert "$INPUT_SPRITE" -crop "${WIDTH}x24+0+${Y_OFFSET_F2}" +repage \
    -fuzz 5% -fill "#FFFFFF" -opaque "#609880" \
    -background "#FFFFFF" -alpha remove -alpha off \
    -modulate 100,150,100 \
    -level 5%,95% \
    -colorspace gray \
    +dither -remap "$PALETTE_TMP" \
    "$FRAME2_TMP"

# 5. Vertically append the frames into a true 32x48 sheet layout
convert "$FRAME1_TMP" "$FRAME2_TMP" -append "$OUTPUT_SPRITE"

# Clean up temp files
rm -f "$FRAME1_TMP" "$FRAME2_TMP" "$PALETTE_TMP"

echo "Party icon Pokéwalker conversion complete: $OUTPUT_SPRITE"
