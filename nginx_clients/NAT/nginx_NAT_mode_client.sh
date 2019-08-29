#! /bin/sh

# This is the client of nginx server test in NAT mode
echo "********** This is the nginx test with wrk benchmark in NAT mode case *********"

# Get the IP address of the client machine
ip_client=`hostname -I | awk '{print $1}' | cut -f2 -d:`

# Create the container 
docker run -tid --name wrk_benchmark_NAT_mode_container_client -p ${ip_client}:80:80 ubuntu:16.04

# Install wrk benchmark in the container  
docker exec -i wrk_benchmark_NAT_mode_container_client bash <<EOF 
apt-get update
apt-get install -y build-essential libssl-dev git zlib1g-dev
git clone https://github.com/giltene/wrk2.git
cd wrk2
make
cp wrk /usr/local/bin
EOF





