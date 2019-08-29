#! /bin/sh

# This is the client of nginx server test in host mode
echo "********** This is the nginx test with wrk benchmark in host mode case *********"

# Create the container
docker run -tid --name wrk_benchmark_host_mode_container_client --network host ubuntu:16.04

# Install wrk benchmark in the container  
docker exec -i wrk_benchmark_host_mode_container_client bash <<EOF 
apt-get update
apt-get install -y build-essential libssl-dev git zlib1g-dev
git clone https://github.com/giltene/wrk2.git
cd wrk2
make
cp wrk /usr/local/bin

EOF

#<<'END_COMMENT'

#END_COMMENT


#<<'END_COMMENT'

#END_COMMENT



