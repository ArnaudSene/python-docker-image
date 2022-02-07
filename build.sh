#!/usr/bin/env bash
docker compose rm -s -f python-service
docker compose up -d --force-recreate --build

