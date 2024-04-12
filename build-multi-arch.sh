#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-squid:latest . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-squid:$1 . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-squid:$1.0 . --push

