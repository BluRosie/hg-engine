./tools/source/dumptools/dumprom.sh rom.nds
rm -rf a058
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/5/8 -o a058
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
rm -rf a006
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/0/6 -o a006
for file in $(seq -w 01 5 $(printf "%02d" $(expr $(ls a006 | wc -l) - 1))); do
	mv a006/6_$file a006/$file.NCLR
done
for file in $(seq -w 00 5 $(printf "%02d" $(expr $(ls a006 | wc -l) - 1))); do
	mv a006/6_$file a006/$file.NCGR
	./tools/nitrogfx a006/$file.NCGR data/graphics/trainer_back_gfx/$(printf "%02d" $(expr $file / 5)).png -width 10 -palette a006/$(printf "%02d" $(expr $file + 1)).NCLR
done
for file in $(seq -w 02 5 $(printf "%02d" $(expr $(ls a006 | wc -l) - 1))); do
	mv a006/6_$file a006/$file.NCER
	./tools/nitrogfx a006/$file.NCER data/graphics/trainer_back_gfx/$(printf "%02d" $(expr $file / 5))_cell.json
done
for file in $(seq -w 03 5 $(printf "%02d" $(expr $(ls a006 | wc -l) - 1))); do
	mv a006/6_$file a006/$file.NANR
	./tools/nitrogfx a006/$file.NANR data/graphics/trainer_back_gfx/$(printf "%02d" $(expr $file / 5))_anim.json
done
for file in $(seq -w 04 5 $(printf "%02d" $(expr $(ls a006 | wc -l) - 1))); do
	mv a006/6_$file a006/$file.NCGR
	./tools/nitrogfx a006/$file.NCGR data/graphics/trainer_back_gfx/$(printf "%02d" $(expr $file / 5))_enc.png -width 20 -encodebacktofront -palette a006/$(printf "%02d" $(expr $file - 3)).NCLR
done
rm -rf a006
