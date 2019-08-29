#! /bin/sh

# This is the client of memcached server test in NAT mode
echo "********** This is the memcached test with memtier_benchmark in NAT mode case *********"

# Get the IP address of the client machine
ip_client=`hostname -I | awk '{print $1}' | cut -f2 -d:`

# Create the container 
docker run -tid --name memtier_benchmark_NAT_mode_container_client -p ${ip_client}:11211:11211 ubuntu:16.04

# Install memtier_benchmark in the container  
docker exec -i memtier_benchmark_NAT_mode_container_client bash <<EOF 
apt-get update
apt-get install -yy build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev git libboost-all-dev cmake flex
git clone https://github.com/RedisLabs/memtier_benchmark.git
cd memtier_benchmark/
autoreconf -ivf && ./configure && make && make install

EOF


