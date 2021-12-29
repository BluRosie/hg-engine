tools\narchive extract filesys\data\a\0\8\1 -o a081 -nf
for /l %%F in (297, 1, 999) do (
 if exist "a081\1_1000" (
  if exist "graphics\overworlds\0%%F.png" tools\pngtobtx0 graphics\overworlds\0%%F.png a081\1_0%%F
 ) else (
  if exist "graphics\overworlds\0%%F.png" tools\pngtobtx0 graphics\overworlds\0%%F.png a081\1_%%F
 )
)
for /l %%F in (1000, 1, 1500) do (
 if exist "a081\1_1000" (
  if exist "graphics\overworlds\%%F.png" tools\pngtobtx0 graphics\overworlds\%%F.png a081\1_%%F
 ) else (
  if exist "graphics\overworlds\%%F.png" tools\pngtobtx0 graphics\overworlds\%%F.png a081\b1_%%F 
 )
)
tools\narchive create filesys\data\a\0\8\1 a081 -nf
rmdir /q /s a081
mkdir a141
tools\armips data\monoverworlds.s
tools\narchive create filesys\data\a\1\4\1 a141 -nf
rmdir /q /s a141