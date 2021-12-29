mkdir a180
tools\narchive extract filesys\data\a\1\8\0 -o a180 -nf
tools\armips data\spriteoffsets.s
tools\narchive create filesys\data\a\1\8\0 a180 -nf
rmdir /q /s a180
