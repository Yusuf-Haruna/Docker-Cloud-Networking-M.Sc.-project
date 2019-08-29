#!/bin/bash

docker rm -f iperf3_VXLAN_container_client
#docker network rm my_overlay_network
docker swarm leave -f

