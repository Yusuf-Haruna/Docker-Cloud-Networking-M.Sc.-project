#! /bin/sh

# This is the client of memcached server test in Default overlay (VXLAN) mode
echo "******* This is the memcached client in Default overlay (VXLAN) mode case *******"

# Joining the swarm
docker swarm join --token SWMTKN-1-0uff2cawyyifqr0s7q656w3if89swf0cc21i1936zakw0ix4bi-coo1vw802tqzqlmqj9i1e8b24 192.168.122.167:2377

# Create the container and connect it to the overlay network created in the master
docker run -itd --name memtier_benchmark_VXLAN_mode_container_client --network my_overlay_network ubuntu:16.04

# Install memtier_benchmark in the container  
docker exec -i memtier_benchmark_VXLAN_mode_container_client bash <<EOF 
apt-get update
apt-get install -yy build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev git libboost-all-dev cmake flex
git clone https://github.com/RedisLabs/memtier_benchmark.git
cd memtier_benchmark/
autoreconf -ivf && ./configure && make && make install

EOF


