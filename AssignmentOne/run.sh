#!/bin/sh
export DISPLAY=:0
xhost + localhost
docker compose run --rm --service-ports ros2 bash
