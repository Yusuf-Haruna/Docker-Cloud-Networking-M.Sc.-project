#!/bin/bash

docker rm -f pgbench_VXLAN_mode_container_client
docker swarm leave -f
