#! /bin/bash

docker rm -f postgresql_VXLAN_mode_container_server
docker network rm my_overlay_network
docker swarm leave -f
rm postgresql_VXLAN_token.txt
