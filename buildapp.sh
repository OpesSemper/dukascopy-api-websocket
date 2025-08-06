#! /bin/bash

IMAGE_REPO=sgp.vultrcr.com/opessemper

docker build -t $(echo $IMAGE_REPO)/ducascopyapi:$(TZ="Asia/Bangkok" date +'%Y%m%d%H%M') -t $(echo $IMAGE_REPO)/ducascopyapi:latest .

docker push $(echo $IMAGE_REPO)/ducascopyapi:$(TZ="Asia/Bangkok" date +'%Y%m%d%H%M') && docker push $(echo $IMAGE_REPO)/ducascopyapi:latest
