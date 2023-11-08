:; if [ -z 0 ]; then
  @echo off
  goto :WINDOWS
fi

docker run -it --rm --mount type=bind,source="$(pwd)",destination=/hg-engine hg-engine /bin/bash
exit

:WINDOWS

for /f "usebackq tokens=*" %%i in (`cd`) do docker run -it --rm --mount type=bind,source="%%i",destination=/hg-engine hg-engine /bin/bash

