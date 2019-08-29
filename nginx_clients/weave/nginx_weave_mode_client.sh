#! /bin/sh

# This is the client of nginx server test in weave mode
echo "********* This is the nginx server client in weave mode case *********"

# Install weave in the client machine
wget -O /usr/local/bin/weave https://github.com/weaveworks/weave/releases/download/latest_release/weave
chmod a+x /usr/local/bin/weave

# Launch weave using the IP address of the server machine
weave launch 192.168.122.167

# Create container on the client and then attach it to the weave
docker run -itd --name wrk_benchmark_weave_mode_container_client ubuntu:16.04
weave attach wrk_benchmark_weave_mode_container_client

# Install wrk benchmark in the container  
docker exec -i wrk_benchmark_weave_mode_container_client bash <<EOF 
apt-get update
apt-get install -y build-essential libssl-dev git zlib1g-dev
git clone https://github.com/giltene/wrk2.git
cd wrk2
make
cp wrk /usr/local/bin
EOF






