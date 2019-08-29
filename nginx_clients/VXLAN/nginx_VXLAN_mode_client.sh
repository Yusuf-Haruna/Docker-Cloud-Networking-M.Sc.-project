#! /bin/sh

# This is the client of nginx server test in Default overlay (VXLAN) mode
echo "******* This is the nginx client in Default overlay (VXLAN) mode case *******"

# Joining the swarm
docker swarm join --token SWMTKN-1-38b7lbe6578b9oxvhoz64lyfqjon8qst36d5br3ymuwunj86wy-agbk1td4401e590u5phq03uji 192.168.122.167:2377


# Create the container and connect it to the overlay network created in the master
docker run -itd --name wrk_benchmark_VXLAN_mode_container_client --network my_overlay_network ubuntu:16.04

# Install wrk benchmark in the container  
docker exec -i wrk_benchmark_VXLAN_mode_container_client bash <<EOF 
apt-get update
apt-get install -y build-essential libssl-dev git zlib1g-dev
git clone https://github.com/giltene/wrk2.git
cd wrk2
make
cp wrk /usr/local/bin
EOF





