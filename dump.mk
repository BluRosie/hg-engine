.PHONY: dumprom dump_prepare dump_learnsets dump_narc_data dump_armips_data dump_trainernames dump_clean_work dump_reset check_dump_rom

DUMP_SCRIPT_LOCATION := tools/source/dumptools
DUMP_WORKDIRS := $(BUILD_NARC) $(BUILD)/a028
DUMP_MODE ?= c

define DUMP_FOLDER_CREATE
$1:
	mkdir -p $1
endef
$(foreach folder,$(DUMP_WORKDIRS),$(eval $(call DUMP_FOLDER_CREATE,$(folder))))

check_dump_rom:
	@test -n "$(strip $(DUMP_ROM))" || { echo "DUMP_ROM is required. Usage: make dumprom DUMP_ROM=path/to/test.nds" >&2; exit 1; }

dump_prepare: check_dump_rom $(VENV_ACTIVATE) $(TOOLS) | $(DUMP_WORKDIRS)
	chmod +x $(DUMP_SCRIPT_LOCATION)/*.sh
	./$(DUMP_SCRIPT_LOCATION)/dumprom.sh "$(DUMP_ROM)"
	$(NARCHIVE) extract $(FILESYS)/a/0/2/8 -o $(BUILD)/a028/ -nf

dump_learnsets: dump_prepare
# mondata is needed by migrate_learnsets.py
	cp $(MONDATA_TARGET) $(BUILD_NARC)/mondata
	$(NARCHIVE) extract $(BUILD_NARC)/mondata -o $(MONDATA_DIR)
	rm -f $(BUILD_NARC)/mondata
# learnsets are needed by migrate_learnsets.py
	cp $(LEVELUPLEARNSET_TARGET) $(BUILD_NARC)/learnset
	$(NARCHIVE) extract $(BUILD_NARC)/learnset -o $(LEVELUPLEARNSET_DIR)
# kowaza is needed by migrate_learnsets.py
	cp $(EGGLEARNSET_TARGET) $(BUILD_NARC)/kowaza
	$(NARCHIVE) extract $(BUILD_NARC)/kowaza -o $(BUILD)/kowaza
	$(PYTHON) $(DUMP_SCRIPT_LOCATION)/migrate_learnsets.py

dump_trainernames: dump_prepare
	$(NARCHIVE) extract $(MSGDATA_TARGET) -o $(MSGDATA_DIR) -nf
	$(MSGENC) -d -c $(CHARMAP) $(MSGDATA_DIR)/7_729 $(BUILD)/trainernames.txt

dump_narc_data: dump_prepare
	$(PYTHON) $(DUMP_SCRIPT_LOCATION)/dump_narcs.py "$(DUMP_ROM)" "$(DUMP_MODE)"

dump_armips_data: dump_trainernames
	$(PYTHON) $(DUMP_SCRIPT_LOCATION)/dump_narcs.py "$(DUMP_ROM)" armips

dump_clean_work:
	rm -rf $(BUILD)

dump_reset:
	rm -rf $(BUILD) $(BASE)

# Dumps data from an explicit ROM into maintained source form.
# Default mode is C output in dumped_c/; pass DUMP_MODE=armips for dumped_armips/.
dumprom: check_dump_rom
	$(MAKE) dump_reset
	$(MAKE) dump_prepare DUMP_ROM="$(DUMP_ROM)"
	$(MAKE) dump_learnsets DUMP_ROM="$(DUMP_ROM)"
	@if [ "$(DUMP_MODE)" = "armips" ]; then \
		$(MAKE) dump_armips_data DUMP_ROM="$(DUMP_ROM)"; \
	else \
		$(MAKE) dump_narc_data DUMP_ROM="$(DUMP_ROM)" DUMP_MODE="$(DUMP_MODE)"; \
	fi
	$(MAKE) dump_clean_work
	@echo "Done. See output in dumped_$(DUMP_MODE)/, learnsets are already in data/learnsets/learnsets.json."
