mkdir a020
copy "rawdata\first files from a020\*" "a020\*"
tools\geniconnarc.exe graphics\icongfx a020 699
tools\narchive create filesys\data\a\0\2\0 a020 -nf
rmdir /q /s a020
tools\armips data\iconpalettetable.s
