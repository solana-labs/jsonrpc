#!/bin/bash -e

subdirs=(core server-utils http tcp pubsub macros ws)
CRATES_IO_TOKEN=${1}

for i in ${subdirs[@]}; do
  cd ${i}
  cargo package
  cargo publish --token "$CRATES_IO_TOKEN"
  cd ..
done

exit 0
