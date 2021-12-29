tools\narchive extract filesys\data\a\0\2\7 -o a027 -nf
tools\msgenc.exe -e -c charmap.txt data/text/237.txt a027/7_237
tools\msgenc.exe -e -c charmap.txt data/text/803.txt a027/7_803
tools\msgenc.exe -e -c charmap.txt data/text/811.txt a027/7_811
tools\msgenc.exe -e -c charmap.txt data/text/812.txt a027/7_812
tools\msgenc.exe -e -c charmap.txt data/text/813.txt a027/7_813
tools\msgenc.exe -e -c charmap.txt data/text/814.txt a027/7_814
tools\msgenc.exe -e -c charmap.txt data/text/815.txt a027/7_815
tools\msgenc.exe -e -c charmap.txt data/text/816.txt a027/7_816
tools\narchive create filesys\data\a\0\2\7 a027 -nf
rmdir /q /s a027