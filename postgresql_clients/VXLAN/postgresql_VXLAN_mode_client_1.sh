#!/bin/sh 

# This is pgbench benchmark which is postgresql client that runs the benchmark on Default overlay (VXLAN) mode
echo "******* This container runs pgbench which benchmark postgresql server on Default overlay (VXLAN) mode ******"

# Joining the swarm
docker swarm join --token SWMTKN-1-5x8x7z0jj7vyuw7ep0eoduy0qdkk7r8e2tf6kwcvxgvv8ivd67-4lqllm9fb25vnzp0k8psoq12p 192.168.122.167:2377

# Create the container using postgresql alpine image and connect it to the overlay network created in the master
docker run -tid --name pgbench_VXLAN_mode_container_client -e POSTGRES_PASSWORD='' --network my_overlay_network postgres:alpine

# Initialize the database "template1"
docker exec -i pgbench_VXLAN_mode_container_client bash <<'EOF' 
pgbench --initialize --scale=10 template1 --host=10.0.0.2 --port=5432 --username=postgres

EOF


