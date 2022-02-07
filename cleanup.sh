#!/usr/bin/env bash
docker rm $(docker ps -a -q) -f
docker image rm $(docker images -a -q) -f
