#!/bin/bash 

set -e

i=0

export PULL=${PULL:-true}

for d in */
do
  pushd $d > /dev/null
  if [ -f ./test.sh ];
  then
    echo  -e "Running $d Tests \n" 
    ./test.sh && ((i++))  
    echo -e "\n\n" 
  fi
  popd > /dev/null
done;

exit $i
