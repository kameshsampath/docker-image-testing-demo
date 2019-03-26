#!/bin/bash 

set -e

i=0

export PULL=${PULL:-true}

for d in */
do
  pushd $d > /dev/null
  [[ -f ./test.sh ]] &&  echo "Running $d Tests " && ./test.sh  
  popd > /dev/null
done;

exit $i
