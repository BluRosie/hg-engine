POKEGRA_DIR := data/graphics
POKEGRA_SPRITES_DIR := $(POKEGRA_DIR)/sprites
POKEGRA_BUILD_DIR := build/pokemonpic
POKEGRA_NARC := build/pokegra.narc

POKEGRA_GFX_FLAGS_SPRITE := -scanfronttoback -handleempty
POKEGRA_GFX_FLAGS_PAL := -bitdepth 8 -nopad -comp 10

POKEGRA_PIC_FILES := $(find $(POKEGRA_SPRITES_DIR) -name '*.png')

$(POKEGRA_NARC): $(POKEGRA_PIC_FILES)
	mkdir -p $(POKEGRA_BUILD_DIR)
	for a in $$(seq -w 0000 $$(printf "%04d" $$(expr $$(ls $(POKEGRA_SPRITES_DIR) | wc -l) - 1))); do \
		$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/female/back.png $(POKEGRA_BUILD_DIR)/$$a-00.NCGR $(POKEGRA_GFX_FLAGS_SPRITE); \
		$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/male/back.png $(POKEGRA_BUILD_DIR)/$$a-01.NCGR $(POKEGRA_GFX_FLAGS_SPRITE); \
		$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/female/front.png $(POKEGRA_BUILD_DIR)/$$a-02.NCGR $(POKEGRA_GFX_FLAGS_SPRITE); \
		$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/male/front.png $(POKEGRA_BUILD_DIR)/$$a-03.NCGR $(POKEGRA_GFX_FLAGS_SPRITE); \
		if test -s $(POKEGRA_SPRITES_DIR)/$$a/male/front.png; then \
			$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/male/front.png $(POKEGRA_BUILD_DIR)/$$a-04.NCLR $(POKEGRA_GFX_FLAGS_PAL); \
			$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/male/back.png $(POKEGRA_BUILD_DIR)/$$a-05.NCLR $(POKEGRA_GFX_FLAGS_PAL); \
		elif test -s $(POKEGRA_SPRITES_DIR)/$$a/female/front.png; then \
			$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/female/front.png $(POKEGRA_BUILD_DIR)/$$a-04.NCLR $(POKEGRA_GFX_FLAGS_PAL); \
			$(GFX) $(POKEGRA_SPRITES_DIR)/$$a/female/back.png $(POKEGRA_BUILD_DIR)/$$a-05.NCLR $(POKEGRA_GFX_FLAGS_PAL); \
		fi \
	done
	$(PYTHON) $(NARCHIVE) create $(POKEGRA_NARC)

NARC_FILES += $(POKEGRA_NARC)
