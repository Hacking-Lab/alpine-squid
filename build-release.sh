#!/bin/bash
docker build --no-cache -t hackinglab/alpine-squid:$1.0 -t hackinglab/alpine-squid:$1 -t hackinglab/alpine-squid:latest -f Dockerfile .

docker push hackinglab/alpine-squid
docker push hackinglab/alpine-squid:$1
docker push hackinglab/alpine-squid:$1.0
