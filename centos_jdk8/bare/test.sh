#!/bin/bash 

set -e 

docker pull registry.centos.org/che-stacks/centos-jdk8:latest || exit 1

i=0
time dgoss run registry.centos.org/che-stacks/centos-jdk8:latest || ((i++))

exit $i