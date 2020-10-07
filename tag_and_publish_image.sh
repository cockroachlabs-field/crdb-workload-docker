#!/bin/bash

. ./include.sh

docker tag $dockerhub_id/$image_name:latest $dockerhub_id/$image_name:$tag
docker push $dockerhub_id/$image_name:$tag

