#! /bin/bash

echo $DOCKER_REPO_PWD | docker login https://sgp.vultrcr.com/opessemper --username 1538f0c3-86e1-45fd-9ac5-300882c8e1c4 --password-stdin

# Create entrypoint from template
envsubst < entrypoint.sh.template > entrypoint.sh

IMAGE_REPO=sgp.vultrcr.com/opessemper

docker build -t $(echo $IMAGE_REPO)/ducascopyapi:$(TZ="Asia/Bangkok" date +'%Y%m%d%H%M') -t $(echo $IMAGE_REPO)/ducascopyapi:latest .

docker push $(echo $IMAGE_REPO)/ducascopyapi:$(TZ="Asia/Bangkok" date +'%Y%m%d%H%M') && docker push $(echo $IMAGE_REPO)/ducascopyapi:latest

# Clear
docker logout https://sgp.vultrcr.com/opessemper
rm -f ./entrypoint.sh
