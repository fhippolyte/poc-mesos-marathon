#!/bin/sh

echo "Remove old containers..."
docker rm -vf $(docker ps -a -q -f status=exited)
