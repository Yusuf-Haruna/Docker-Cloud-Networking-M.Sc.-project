#! /bin/sh

# This is the client of iperf3 test in weave mode
echo "********* This is the iperf3 client in weave mode case *********"

# Install weave in the client machine
wget -O /usr/local/bin/weave https://github.com/weaveworks/weave/releases/download/latest_release/weave
chmod a+x /usr/local/bin/weave

# Launch weave using the IP address of the server machine
weave launch 192.168.122.167

# Create container on the client and then attach it to the weave
docker run -itd --name iperf3_weave_container_client ubuntu:16.04
weave attach iperf3_weave_container_client

# Install iperf3 in the container
docker exec -i iperf3_weave_container_client bash << 'EOF'
apt-get update
apt-get install iperf3 -y

EOF




