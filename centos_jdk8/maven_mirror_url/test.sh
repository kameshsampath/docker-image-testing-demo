#!/bin/bash 

set -e 

# enable it once related image is pushed to docker registry registry.centos.org
# if you have built the image locally and testing then its better not to pull 
# docker pull registry.centos.org/che-stacks/centos-jdk8:latest || exit 1

i=0
time dgoss run -e MAVEN_MIRROR_URL="http://example.com" registry.centos.org/che-stacks/centos-jdk8 || ((i++))

exit $i