#!/bin/bash

. ./include.sh

# This URL is defined in: cockroach/pkg/cmd/roachprod/install/staging.go
wget https://edge-binaries.cockroachdb.com/cockroach/workload.LATEST -O workload
docker build -t $dockerhub_id/$image_name .

