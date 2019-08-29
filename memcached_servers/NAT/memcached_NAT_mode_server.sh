#! /bin/bash

# This is the server for the memcached test in NAT mode
echo "********* This is the memcached server in the NAT mode case **********"

# Get the IP address of the server (the VM)
ipserver=`hostname -I | awk '{print $1}' | cut -f2 -d:`

echo "the IP address of the server is: " $ipserver

# Create the container in NAT mode
docker run -tid --name memcached_NAT_mode_container_server -p ${ipserver}:11211:11211 ubuntu:16.04

# Install memcached in the conatiner
docker exec -i memcached_NAT_mode_container_server /bin/bash << 'EOF'
apt-get update
apt-get install memcached -y


EOF

parallel ::: "./memcached_NAT.sh" "./sar_NAT_memcached.sh"
