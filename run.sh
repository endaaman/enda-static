#!/bin/bash

running_container_id=`echo $(docker ps -qa --no-trunc -f 'ancestor=enda-static' -f 'status=running') | sed -e "s/[\r\n]\+/ /g"`

docker build -t enda-static .
docker run -d \
  -e VIRTUAL_HOST=static.enda.local,static.endaaman.me \
  -v /var/uploaded/enda:/var/uploaded/enda \
  enda-static

if [ -n "$running_container_id" ]; then
  echo 'Stopping/removing old container...'
  docker stop $running_container_id
  docker rm $running_container_id
  echo 'Done!'
fi
