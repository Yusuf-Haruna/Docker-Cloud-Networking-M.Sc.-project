#!/bin/bash

docker rm -f memtier_benchmark_VXLAN_mode_container_client
#docker network rm my_overlay_network
docker swarm leave -f
