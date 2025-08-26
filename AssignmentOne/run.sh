#!/bin/sh
docker compose build --no-cache
docker compose run --rm --service-ports ros2 bash
