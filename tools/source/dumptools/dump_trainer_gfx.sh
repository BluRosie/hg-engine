./tools/source/dumptools/dumprom.sh rom.nds
rm -rf a058
python3 tools/narcpy.py extract base/root/a/0/5/8 -o a058
for file in $(seq -w 001 5 $(printf "%03d" $(expr $(ls a058 | wc -l) - 1))); do
	mv a058/8_$file a058/$file.NCLR
done
for file in $(seq -w 000 5 $(printf "%03d" $(expr $(ls a058 | wc -l) - 1))); do
	mv a058/8_$file a058/$file.NCGR
	./tools/nitrogfx a058/$file.NCGR data/graphics/trainer_gfx/$(printf "%03d" $(expr $file / 5)).png -width 10 -palette a058/$(printf "%03d" $(expr $file + 1)).NCLR
done
for file in $(seq -w 002 5 $(printf "%03d" $(expr $(ls a058 | wc -l) - 1))); do
	mv a058/8_$file a058/$file.NCER
	./tools/nitrogfx a058/$file.NCER data/graphics/trainer_gfx/$(printf "%03d" $(expr $file / 5))_cell.json
done
for file in $(seq -w 003 5 $(printf "%03d" $(expr $(ls a058 | wc -l) - 1))); do
	mv a058/8_$file a058/$file.NANR
	./tools/nitrogfx a058/$file.NANR data/graphics/trainer_gfx/$(printf "%03d" $(expr $file / 5))_anim.json
done
for file in $(seq -w 004 5 $(printf "%03d" $(expr $(ls a058 | wc -l) - 1))); do
	mv a058/8_$file a058/$file.NCGR
	./tools/nitrogfx a058/$file.NCGR data/graphics/trainer_gfx/$(printf "%03d" $(expr $file / 5))_enc.png -width 20 -encodebacktofront -palette a058/$(printf "%03d" $(expr $file - 3)).NCLR
done
rm -rf a058
