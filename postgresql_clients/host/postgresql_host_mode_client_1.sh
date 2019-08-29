#!/bin/sh 

# This is pgbench benchmark which is postgresql client that runs the benchmark on host mode
echo "********** This container runs pgbench which benchmark postgresql server on host mode ******"

# Create the container using postgresql alpine image
docker run -tid --name pgbench_host_mode_container_client -e POSTGRES_PASSWORD='' --network host postgres:alpine

# Initialize the database "template1"
docker exec -i pgbench_host_mode_container_client bash <<'EOF' 
pgbench --initialize --scale=10 template1 --host=192.168.122.167 --port=5432 --username=postgres

EOF


