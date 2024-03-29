#! /bin/bash

# This is the server for the iperf3 test in weave mode
echo "******** This is the iperf3 server in the weave mode case **********"

# Get the IP address of the server (the VM)
ipserver=`hostname -I | awk '{print $1}' | cut -f2 -d:`

echo "The IP address of the server is: " $ipserver

# Install weave in the server 
wget -O /usr/local/bin/weave https://github.com/weaveworks/weave/releases/download/latest_release/weave
chmod a+x /usr/local/bin/weave

# Launch weave
weave launch

# Create container on the server and then attach it to the weave
docker run -itd --name iperf3_weave_container_server ubuntu:16.04
weave attach iperf3_weave_container_server | awk '{print $1}' > iperf3_weave_container_ip.txt
