#! /bin/bash

# Install iperf3 in the container
docker exec -i iperf3_weave_container_server /bin/bash << 'EOF'
apt-get update 
apt-get install iperf3 -y
apt-get install parallel -y

EOF

parallel ::: "./iperf3_weave.sh" "./sar_weave.sh"










