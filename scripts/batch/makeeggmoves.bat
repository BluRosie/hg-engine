mkdir kowaza
tools\armips data\eggmoves.s
tools\narchive create filesys\data\kowaza.narc kowaza -nf
copy filesys\data\kowaza.narc filesys\data\a\2\2\9
rmdir /q /s kowaza
