#! /bin/sh

# This is the client of memcached server test in host mode
echo "********** This is the memcached test with memtier_benchmark in host mode case *********"

# Create the container
docker run -tid --name memtier_benchmark_host_mode_container_client --network host ubuntu:16.04

# Install memtier_benchmark in the container  
docker exec -i memtier_benchmark_host_mode_container_client bash <<EOF 
apt-get update
apt-get install -yy build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev git libboost-all-dev cmake flex
git clone https://github.com/RedisLabs/memtier_benchmark.git
cd memtier_benchmark/
autoreconf -ivf && ./configure && make && make install

EOF







