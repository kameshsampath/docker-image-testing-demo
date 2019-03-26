#!/bin/bash 

set -eu 

export _CURR_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [ "$PULL" = "true" ];
then
 docker pull quay.io/quarkus/centos-quarkus-maven:graalvm-1.0.0-rc13 || exit 1
fi

i=0
time dgoss run -e MAVEN_MIRROR_URL="http://example.com" quay.io/quarkus/centos-quarkus-maven:graalvm-1.0.0-rc13 || ((i++))

exit $i