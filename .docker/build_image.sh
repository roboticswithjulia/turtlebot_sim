#!/usr/bin/env bash

echo -e "Building kobuki_simulator:lastest image"

DOCKER_BUILDKIT=1 \
docker build --pull --rm -f ./.docker/Dockerfile \
--build-arg BUILDKIT_INLINE_CACHE=1 \
--target bash \
--tag kobuki_simulator:latest .
