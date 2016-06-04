#!/bin/sh

echo "Remove containers..."
docker rm -vf $(docker ps -a -q)
echo

echo "Remove images..."
docker rmi $(docker images -a -q)
echo


echo
echo "Remove temp files"
rm -rf /tmp/mesos

