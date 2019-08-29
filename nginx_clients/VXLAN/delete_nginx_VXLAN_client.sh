#!/bin/bash

docker rm -f wrk_benchmark_VXLAN_mode_container_client
docker swarm leave -f
