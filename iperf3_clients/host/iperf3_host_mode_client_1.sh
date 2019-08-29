#! /bin/sh

# This is the client of iperf3 test in host mode
echo "********** This is the iperf3 client in host mode case *********"

# Create the container
docker run -tid --name iperf3_host_mode_container_client --network host ubuntu:16.04

# Install iperf3 in the container  
docker exec -i iperf3_host_mode_container_client bash <<EOF 
apt-get update
apt-get install iperf3 -y

EOF






