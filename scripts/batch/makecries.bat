cd sound
mkdir swav
mkdir swar
for /l %%F in (1, 1, 9) do (
 if exist "00%%F.wav" (
  wav2swav 00%%F.wav -c -o swav\00%%F.swav
  swav2swar swav\00%%F.swav swar\00%%F.swar ))
for /l %%F in (10, 1, 99) do (
 if exist "0%%F.wav" (
  wav2swav 0%%F.wav -c -o swav\0%%F.swav
  swav2swar swav\0%%F.swav swar\0%%F.swar ))
for /l %%F in (100, 1, 699) do (
 if exist "%%F.wav" (
 wav2swav %%F.wav -c -o swav\%%F.swav
 swav2swar swav\%%F.swav swar\%%F.swar))
cd ..\
tools\armips asm\cries.s
copy rawdata\gs_sound_data.sdat "filesys\data\data\sound\gs_sound_data.sdat"