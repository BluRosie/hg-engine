:; if [ -z 0 ]; then
  @echo off
  goto :WINDOWS
fi

volume="hg-engine-work-$(printf '%s' "$PWD" | cksum | cut -d ' ' -f 1)"
docker run \
  --cap-drop ALL \
  --interactive \
  --mount type=bind,source="$(pwd)",destination=/src \
  --mount type=volume,source="$volume",destination=/hg-engine \
  --rm \
  --security-opt no-new-privileges \
  --tty \
  hg-engine sh -c "rsync --archive --delete --include=/rom.nds --include=/test.sav --exclude=.git --filter=\":- .gitignore\" /src/ /hg-engine/ && make --jobs=\$(nproc) && cp test.nds /src/"
exit

:WINDOWS

for /f "usebackq tokens=*" %%i in (`cd`) do docker run ^
  --cap-drop ALL ^
  --interactive ^
  --mount type=bind,source="%%i",destination=/hg-engine ^
  --rm ^
  --security-opt no-new-privileges ^
  --tty ^
  hg-engine
