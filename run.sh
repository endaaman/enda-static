#!/bin/bash

running_container_id=`echo $(docker ps -qa --no-trunc -f 'ancestor=enda-static' -f "status=running") | sed -e "s/[\r\n]\+/ /g"`

docker build -t enda-static .
docker run -d \
  -e VIRTUAL_HOST=static.enda.local,static.endaaman.me \
  -v /var/uploaded/enda:/var/uploaded/enda \
  enda-static

if [ -n "$running_container_id" ]; then
  echo 'killing old running container'
  docker kill -s QUIT $running_container_id
else
  echo 'There is no old container'
fi
