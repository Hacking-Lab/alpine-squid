docker build --no-cache -t hackinglab/alpine-squid:3.2.0 -t hackinglab/alpine-squid:3.2 -t hackinglab/alpine-squid:latest -f Dockerfile .

docker push hackinglab/alpine-squid
docker push hackinglab/alpine-squid:3.2
docker push hackinglab/alpine-squid:3.2.0
