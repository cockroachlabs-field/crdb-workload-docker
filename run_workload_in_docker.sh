#!/bin/bash

. ./include.sh

# NOTE: these two entities, along with tag, are defined in include.sh
img="$dockerhub_id/$image_name"

# For running against a CRDB install on your own laptop (a Mac)
host="host.docker.internal"
port="26257"
user="root"
passwd=""
n_warehouses=5

docker pull $img:$tag
docker run -it --entrypoint /cockroach/workload $img:$tag init tpcc postgresql://$user:$passwd@$host:$port?sslmode=disable --warehouses $n_warehouses

