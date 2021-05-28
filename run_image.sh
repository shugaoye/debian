#!/bin/sh

USER_ID=`id -u`
USERNAME=`id -un`
GROUP_ID=`id -g`
GROUPNAME=`id -gn`

if [ -n "$1" ]; then
        IMAGE=$1
else
        IMAGE=shugaoye/debian:latest
fi

vol1="$(cd ..; pwd)"
# Running from the current folder and set the parent folder as a volume
docker run -ti --rm -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ${vol1}:/home/${USERNAME} \
  -p 8081:8081 \
  -e USER_ID=${USER_ID} -e GROUP_ID=${GROUP_ID} \
  -e USERNAME=${USERNAME} -e GROUPNAME=${GROUPNAME} \
  ${IMAGE} /bin/bash
