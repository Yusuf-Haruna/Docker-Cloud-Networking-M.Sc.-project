#! /bin/sh

# This is the client of iperf3 test in NAT mode
echo "********** This is the iperf3 client in NAT mode case *********"

# Create the container
docker run -tid --name iperf3_NAT_mode_container_client ubuntu:16.04

# Install iperf3 in the container  
docker exec -i iperf3_NAT_mode_container_client /bin/bash << 'EOF'
apt-get update 
apt-get install iperf3 -y
EOF


