#! /bin/sh

# This is the client of memcached server test in weave mode
echo "********* This is the memcached server client in weave mode case *********"

# Install weave in the client machine
wget -O /usr/local/bin/weave https://github.com/weaveworks/weave/releases/download/latest_release/weave
chmod a+x /usr/local/bin/weave

# Launch weave using the IP address of the server machine
weave launch 192.168.122.167

# Create container on the client and then attach it to the weave
docker run -itd --name memtier_benchmark_weave_mode_container_client ubuntu:16.04
weave attach memtier_benchmark_weave_mode_container_client

# Install memtier_benchmark in the container
docker exec -i memtier_benchmark_weave_mode_container_client bash << 'EOF'
apt-get update
apt-get install -yy build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev git libboost-all-dev cmake flex
git clone https://github.com/RedisLabs/memtier_benchmark.git
cd memtier_benchmark/
autoreconf -ivf && ./configure && make && make install

EOF


