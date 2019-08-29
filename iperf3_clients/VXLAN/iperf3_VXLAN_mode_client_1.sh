#! /bin/sh

# This is the client of iperf3 test in Default overlay (VXLAN) mode
echo "******* This is the iperf3 client in Default overlay (VXLAN) mode case *******"

# Joining the swarm
docker swarm join --token SWMTKN-1-4n2qrqnb17c95luoli4ncarwev1zhgkcvbosfpk8oy7gnnwb60-2jhfk3zwvv89a4wbfybto2qvk 192.168.122.167:2377

# Create the container and connect it to the overlay network created in the master
docker run -itd --name iperf3_VXLAN_container_client --network my_overlay_network ubuntu:16.04

# Install iperf3 in the container
docker exec -i iperf3_VXLAN_container_client bash << 'EOF'
apt-get update
apt-get install iperf3 -y

EOF


