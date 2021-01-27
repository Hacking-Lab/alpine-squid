#!/bin/bash
docker build --no-cache -t hackinglab/alpine-squid:3.2.0 -t hackinglab/alpine-squid:3.2 -t hackinglab/alpine-squid:latest -f Dockerfile .

