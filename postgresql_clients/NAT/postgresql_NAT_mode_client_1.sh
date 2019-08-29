#!/bin/sh 

# This is pgbench benchmark which is postgresql client which runs the benchmark on NAT mode

echo "****** This container runs pgbench which benchmark postgresql server on NAT mode ******"

# Get the IP address of the client machine
ip_client=`hostname -I | awk '{print $1}' | cut -f2 -d:`

# Create the container using postgresql alpine image in NAT mode
docker run -tid --name pgbench_NAT_mode_container_client -e POSTGRES_PASSWORD='' -p ${ip_client}:5432:5432 postgres:alpine

# Initialize the database "template1"
docker exec -i pgbench_NAT_mode_container_client bash <<'EOF' 
pgbench --initialize --scale=10 template1 --host=192.168.122.167 --port=5432 --username=postgres

EOF



