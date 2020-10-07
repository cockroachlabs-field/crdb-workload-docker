# Scripts / config for building a Docker image containing only the workload binary

The need for this arose while we were running some TPC-C tests in K8s, but needed the newer
version of `workload`, newer than what's bundled into the `cockroach` binary.


## Files

1. `Dockerfile`: Defines the container image; based on registry.access.redhat.com/ubi8/ubi
1. `include.sh`: Edit this file as required to suit your setup
1. `build_docker_image.sh`: Create the Docker container image. This script and the next two rely on values defined in `include.sh`.
1. `tag_and_publish_image.sh`: Tag the image and publish it to Docker Hub.
1. `run_workload_in_docker.sh`: Run `workload` TPC-C data generation task in the container, against your local CRDB instance.


## References

* https://k8s.vmware.com/kubernetes-up-and-running/
* https://stackoverflow.com/questions/43308319/how-can-i-run-bash-in-a-new-container-of-a-docker-image
* https://stackoverflow.com/questions/31249112/allow-docker-container-to-connect-to-a-local-host-postgres-database
* https://stackoverflow.com/questions/41694329/docker-run-override-entrypoint-with-shell-script-which-accepts-arguments
* https://docs.docker.com/get-started/part3/

## Caveats

I'm a Docker novice, so your mileage may vary.

