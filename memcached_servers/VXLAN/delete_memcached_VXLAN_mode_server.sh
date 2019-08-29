#! /bin/bash

docker rm -f memcached_VXLAN_container_server
docker network rm my_overlay_network
docker swarm leave -f
